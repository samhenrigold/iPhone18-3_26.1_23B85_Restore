@interface BRCAccountSession
+ (BOOL)_checkIntegrity:(id)integrity serverTruth:(BOOL)truth session:(id)session skipControlFiles:(BOOL)files dbCreationDate:(id *)date deviceIDChanged:(BOOL *)changed error:(id *)error;
+ (BOOL)_openConnection:(id)connection databaseName:(id)name baseURL:(id)l readonly:(BOOL)readonly error:(id *)error;
+ (BOOL)_openConnection:(id)connection serverTruth:(BOOL)truth databaseName:(id)name baseURL:(id)l initialVersion:(unsigned int *)version lastCurrentVersion:(unsigned int *)currentVersion error:(id *)error;
+ (BOOL)_registerStaticDBFunctions:(id)functions error:(id *)error;
+ (BOOL)_validateDatabase:(id)database baseURL:(id)l session:(id)session serverTruth:(BOOL)truth initialVersion:(unsigned int)version lastCurrentVersion:(unsigned int)currentVersion error:(id *)error;
+ (BOOL)openAndValidateDatabase:(id)database serverTruth:(BOOL)truth session:(id)session baseURL:(id)l skipControlFiles:(BOOL)files initialVersion:(unsigned int *)version lastCurrentVersion:(unsigned int *)currentVersion dbCreationDate:(id *)self0 deviceIDChanged:(BOOL *)self1 error:(id *)self2;
+ (BOOL)upgradeOfflineDB:(id)b serverTruth:(BOOL)truth session:(id)session error:(id *)error;
+ (id)sessionForBackingUpDatabasesAtURL:(id)l;
+ (id)sessionForCheckingInconsistencies;
+ (id)sessionForDumpingDatabasesAtURL:(id)l;
+ (id)sessionForDumpingDatabasesAtURL:(id)l with:(id)with;
+ (id)sessionForSendingTelemetryAtURL:(id)l;
+ (void)_registerLastBootIfNeeded:(id)needed table:(id)table skipControlFiles:(BOOL)files dbCreationDate:(id *)date deviceIDChanged:(BOOL *)changed;
- (BOOL)_addOrImportDomainIfNeededWithError:(id *)error domainAdded:(BOOL *)added domainImported:(BOOL *)imported;
- (BOOL)_createAppLibrary:(id)library;
- (BOOL)_createClientZone:(id)zone;
- (BOOL)_decorateUserInfoForFPFSDomain:(id)domain panicOnDomainIDMismatch:(BOOL)mismatch withError:(id *)error;
- (BOOL)_deleteClientZone:(id)zone;
- (BOOL)_dumpClientZone:(id)zone toContext:(id)context includeAllItems:(BOOL)items error:(id *)error;
- (BOOL)_dumpClientZoneStatus:(id)status toContext:(id)context error:(id *)error;
- (BOOL)_finishClientTruthConnectionSetupWithError:(id *)error;
- (BOOL)_finishServerTruthConnectionSetupWithError:(id *)error;
- (BOOL)_isCZMAccountBasedOnCloudDocsPlistState;
- (BOOL)_openConnection:(id)connection databaseName:(id)name readonly:(BOOL)readonly error:(id *)error;
- (BOOL)_recursivelyPrepareFolderForLogOutAtURL:(id)l pruneEmptyFolders:(BOOL)folders pruneEmptyTopLevelFolder:(BOOL)folder maxDepth:(unint64_t)depth;
- (BOOL)_registerDynamicDBFunctions:(id)functions error:(id *)error;
- (BOOL)_setupBackupDetector:(backup_detector *)detector error:(id *)error;
- (BOOL)_setupConnection:(id)connection readonly:(BOOL)readonly forChecker:(BOOL)checker error:(id *)error;
- (BOOL)_shouldPrivateAppLibraryBeCZMMoved:(id)moved;
- (BOOL)_shouldTriggerTapToRadar:(int64_t)radar daysSinceLastMigrationProgress:(int64_t)progress;
- (BOOL)_stepBackupDetector:(backup_detector *)detector newState:(backup_detector *)state error:(id *)error;
- (BOOL)_updateDomain:(id)domain withUserInfo:(id)info error:(id *)error;
- (BOOL)backupDatabaseToURL:(id)l includeServer:(BOOL)server doNotObfuscate:(BOOL)obfuscate error:(id *)error;
- (BOOL)createServerZone:(id)zone;
- (BOOL)deleteServerZone:(id)zone;
- (BOOL)dumpDatabaseToFileHandle:(id)handle zoneName:(id)name includeAllItems:(BOOL)items verbose:(BOOL)verbose tracker:(id)tracker error:(id *)error;
- (BOOL)dumpFPFSMigrationStatusToFileHandle:(id)handle tracker:(id)tracker includeNonMigratedItems:(BOOL)items error:(id *)error;
- (BOOL)dumpFileCoordinationInfoToFileHandle:(id)handle error:(id *)error;
- (BOOL)dumpItemsToHandle:(id)handle itemType:(id)type tracker:(id)tracker error:(id *)error;
- (BOOL)dumpItemsURLsToHandle:(id)handle itemRowIDs:(id)ds error:(id *)error;
- (BOOL)dumpStatusToFileHandle:(id)handle zoneName:(id)name tracker:(id)tracker error:(id *)error;
- (BOOL)enumerateItemsWithType:(id)type itemRowIDs:(id)ds db:(id)db withBlock:(id)block;
- (BOOL)enumerateSharedToMeItemsWithBlock:(id)block error:(id *)error;
- (BOOL)fpfsMigrationStatusTTRTriggered;
- (BOOL)globalID:(id)d isStrictChildOfGlobalID:(id)iD;
- (BOOL)hasOptimizeStorageEnabled;
- (BOOL)initializeOfflineDatabaseWhileUpgrading:(BOOL)upgrading loadClientState:(BOOL)state forDBDump:(BOOL)dump error:(id *)error;
- (BOOL)isConsolidatedAccount;
- (BOOL)isGreedy;
- (BOOL)isMigratingToFPFS;
- (BOOL)openAndValidateDatabase:(id)database serverTruth:(BOOL)truth initialVersion:(unsigned int *)version lastCurrentVersion:(unsigned int *)currentVersion deviceIDChanged:(BOOL *)changed error:(id *)error;
- (BOOL)openDBForNewDomain:(BOOL)domain deviceIDChanged:(BOOL *)changed withError:(id *)error;
- (BOOL)openWithError:(id *)error pushWorkloop:(id)workloop;
- (BOOL)printShareRequests:(id)requests isPending:(BOOL)pending asJSON:(BOOL)n error:(id *)error;
- (BOOL)registerClient:(id)client;
- (BOOL)reimportFPFSDomainWithError:(id *)error;
- (BOOL)runDatabaseFixup:(unint64_t)fixup error:(id *)error;
- (BOOL)runDatabaseFixups;
- (BOOL)runDatabaseFixupsForDB:(id)b serverTruth:(BOOL)truth;
- (BOOL)saveClientZoneToDB:(id)b;
- (BRCAccountSession)init;
- (BRCAccountSession)initWithACAccountID:(id)d dbAccountDSID:(id)iD salt:(id)salt accountHandler:(id)handler;
- (BRCAccountWaitOperation)accountWaitOperation;
- (BRCApplyScheduler)applyScheduler;
- (BRCClientDatabaseFacade)clientExpensiveReadDatabaseFacade;
- (BRCClientDatabaseFacade)clientReadDatabaseFacade;
- (BRCContainerScheduler)containerScheduler;
- (BRCFSImporter)fsImporter;
- (BRCNotificationManager)notificationManager;
- (BRCPQLConnection)expensiveReadOnlyDB;
- (BRCPQLConnection)readOnlyDB;
- (BRCStageRegistry)stageRegistry;
- (NSString)cacheDirPath;
- (NSString)description;
- (NSString)sessionDirPath;
- (id)__getOrCreateAppLibrary:(id)library rowID:(id)d alreadyExists:(BOOL *)exists withClientZone:(id)zone createCZMMoved:(BOOL)moved;
- (id)__getOrCreateClientZone:(id)zone withServerZone:(id)serverZone alreadyExists:(BOOL *)exists;
- (id)__getOrCreateServerZone:(id)zone;
- (id)_appLibrariesEnumerator:(id)enumerator;
- (id)_appLibrariesEnumerator:(id)enumerator version:(int)version;
- (id)_appLibrariesMatchingSearchString:(id)string;
- (id)_appLibraryByName:(id)name db:(id)db;
- (id)_clientZonesMatchingSearchString:(id)string;
- (id)_computePathOfItemWithName:(id)name appLibrary:(id)library parentClientZoneRowID:(id)d parentID:(id)iD type:(char)type needsLocalName:(BOOL)localName db:(id)db;
- (id)_createAppTelemetryFPFSMigrationInvestigation:(unsigned int)investigation;
- (id)_createRecoveryExecutedErrorForImportError:(id)error;
- (id)_getFPFSMigrationStatus:(id)status withError:(id *)error;
- (id)_getOrCreateAppLibraryAndPrivateZonesIfNecessary:(id)necessary creationFlags:(unsigned int *)flags;
- (id)_getPartiallySaltedItemWithAppLibrary:(id)library;
- (id)_old_privateAppLibraryByZoneName:(id)name db:(id)db;
- (id)_postImportAnalysisForProviderDomainID:(id)d withLostItemCount:(unint64_t)count withMigrationID:(id)iD;
- (id)_privateClientZoneByID:(id)d db:(id)db;
- (id)_privateClientZoneByName:(id)name db:(id)db;
- (id)_privateClientZonesEnumerator;
- (id)_privateServerZoneByName:(id)name db:(id)db;
- (id)_privateServerZonesEnumerator:(id)enumerator;
- (id)_reserveRowIDForLibrary:(id)library;
- (id)_sharedClientZonesEnumerator;
- (id)_sharedServerZoneByName:(id)name ownerName:(id)ownerName db:(id)db;
- (id)_sharedServerZonesEnumerator:(id)enumerator;
- (id)_triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted:(int64_t)started daysSinceLastMigrationProgress:(int64_t)progress importError:(id)error;
- (id)_unloadClientZones;
- (id)accountStatisticsWithDB:(id)b;
- (id)appLibraries;
- (id)appLibrariesMatchingSearchString:(id)string error:(id *)error;
- (id)appLibraryByID:(id)d;
- (id)appLibraryByMangledID:(id)d;
- (id)appLibraryByRowID:(id)d;
- (id)cachedCurrentUserRecordName;
- (id)cachedCurrentUserRecordNameIfExists;
- (id)clientZoneByMangledID:(id)d;
- (id)clientZones;
- (id)clientZonesMatchingSearchString:(id)string error:(id *)error;
- (id)fallbackAppLibraryForClientZone:(id)zone extension:(id)extension;
- (id)fetchAccountWaitOperationWithAccountReady:(BOOL *)ready;
- (id)fixObfuscatedMangledID:(id)d;
- (id)fpfsMigrationEndTime;
- (id)fpfsMigrationItemsNotMigratedDictionary;
- (id)fpfsMigrationStartTime;
- (id)fpfsMigrationUUID;
- (id)getClientDBFacadeFromDB:(id)b;
- (id)getFPFSNonMigratedItemsWithDB:(id)b;
- (id)getMiscOperations;
- (id)getOrCreateAppLibraryAndPrivateZonesIfNecessary:(id)necessary appLibraryExists:(BOOL *)exists;
- (id)getOrCreateSharedZones:(id)zones shareAcceptOp:(id)op;
- (id)getOrReserveLibraryRowIDForLibrary:(id)library;
- (id)groupContainerStagePathForCurrentPersonaFromStageType:(signed __int16)type;
- (id)itemsNeedingIndexingEnumeratorFromNotifRank:(unint64_t)rank batchSize:(unint64_t)size db:(id)db;
- (id)newAppLibraryFromPQLResultSet:(id)set version:(int)version;
- (id)newConnection:(id)connection;
- (id)newConnectionWithLabel:(id)label readonly:(BOOL)readonly error:(id *)error;
- (id)newLocalItemFromPQLResultSet:(id)set db:(id)db error:(id *)error;
- (id)newPrivateClientZoneFromPQLResultSet:(id)set error:(id *)error;
- (id)newPrivateServerZoneFromPQLResultSet:(id)set error:(id *)error;
- (id)newServerItemFromPQLResultSet:(id)set error:(id *)error;
- (id)newSharedClientZoneFromPQLResultSet:(id)set error:(id *)error;
- (id)newSharedServerZoneFromPQLResultSet:(id)set error:(id *)error;
- (id)privateClientZoneByID:(id)d;
- (id)privateServerZoneByID:(id)d;
- (id)serverZoneByCKZoneID:(id)d;
- (id)serverZoneByMangledID:(id)d;
- (id)serverZoneByName:(id)name ownerName:(id)ownerName;
- (id)serverZoneByRowID:(id)d;
- (id)sharedClientZoneByMangledID:(id)d;
- (id)sharedServerZoneByMangledID:(id)d;
- (id)sharedServerZoneRowIDsByOwnerNamePrefix:(id)prefix;
- (id)singleAppLibraryMatchingSearchString:(id)string error:(id *)error;
- (id)singleClientZoneMatchingSearchString:(id)string error:(id *)error;
- (id)trashedItemsEnumeratorFromNotifRank:(unint64_t)rank batchSize:(unint64_t)size db:(id)db;
- (int)_resolveDeviceID;
- (int)fpfsMigrationMigratedTypes;
- (int)fpfsMigrationNonMigratedTypes;
- (int64_t)_getAndUpdateDaysSinceLastMigrationProgress:(int64_t)progress itemsNotMigrated:(int64_t)migrated reconciledItems:(int64_t)items;
- (int64_t)fpfsMigrationBouncedItemCount;
- (int64_t)fpfsMigrationBouncedMatrix;
- (int64_t)fpfsMigrationNewItemsInDB;
- (int64_t)fpfsMigrationNonMigratedItems;
- (int64_t)lastBootHistoryTime;
- (unint64_t)_recoverAndReportBoosting;
- (unint64_t)_recoverAndReportBouncedDocumentsDirectories;
- (unint64_t)_recoverAndReportBrokenShareOptions;
- (unint64_t)_recoverAndReportDanglingLostZombieDirectories;
- (unint64_t)_reportBasehashSalting;
- (unint64_t)fpfsMigrationCleanupLastRowID;
- (unint64_t)fpfsMigrationInvestigatedItemsCount;
- (unsigned)fpfsMigrationState;
- (void)__registerServerZone:(id)zone clientZone:(id)clientZone appLibrary:(id)library isShared:(BOOL)shared;
- (void)_assertQOS:(unsigned int)s;
- (void)_cleanupMigrationClientState;
- (void)_cleanupOldCiconiaLocations;
- (void)_clearLegacyConflictVersionsAsync;
- (void)_clearNeedsUpgradeErrorsWithBrVersion:(id)version;
- (void)_cloudDocsAppsListDidChange:(id)change;
- (void)_createAccountSupportPathIfNeeded:(id)needed protectParent:(BOOL)parent;
- (void)_createGroupContainerStageOfType:(signed __int16)type;
- (void)_dumpClientZoneBlockedState:(id)state toContext:(id)context;
- (void)_dumpSpecialSyncContextsToContext:(id)context;
- (void)_enumerateAppLibraryRowIDs:(id)ds usingBlock:(id)block;
- (void)_fixImportStatusErrorIfPossible:(id)possible;
- (void)_fixupItemsAtStartup;
- (void)_handleTrashedItemsMigration;
- (void)_handleUnloadedZones:(id)zones;
- (void)_initalizeItemFetcher;
- (void)_invalidateAccountStatus;
- (void)_loadClientStateFromClientDB;
- (void)_loadClientZonesFromDisk;
- (void)_mutexZonesLock;
- (void)_pcsChainAllItemsWithSystemTask:(id)task;
- (void)_populateFPFSImportStatusTelemetryEventForEvent:(id)event withFPImportReport:(id)report itemsNotMigrated:(int64_t)migrated;
- (void)_populateNonMigratedItemEventForLocalDataWithEvent:(id)event fileIDData:(id)data diagnosticDescriptor:(id)descriptor migrationStart:(id)start;
- (void)_recoverAndReportDanglingLostZombieDirectories;
- (void)_recoverAndReportStateIntegrityWithCompletion:(id)completion recoveryTask:(id)task;
- (void)_recoverContentPolicyIfNecessaryForItemID:(id)d appLibrary:(id)library isAppLibraryRoot:(BOOL)root isDocumentsFolder:(BOOL)folder completion:(id)completion;
- (void)_refreshRootsCache;
- (void)_registerBackgroundXPCActivities;
- (void)_registerObfuscationFunction:(id)function;
- (void)_reportBasehashSalting;
- (void)_reportForFPFSImportStatusTelemetryEventIfNeeded:(unsigned int)needed completionHandler:(id)handler;
- (void)_saltPartiallySaltedItemsWithSystemTask:(id)task;
- (void)_sendFPFSImportFinishedTelemetryEvent:(id)event;
- (void)_sendFPFSImportStartTelemetryEvent;
- (void)_sendFPFSImportStatusTelemetryEvent;
- (void)_sendItemsPendingReconciliation:(id)reconciliation event:(id)event;
- (void)_sendItemsPendingScanningDisk:(id)disk event:(id)event;
- (void)_sendItemsPendingScanningProvider:(id)provider event:(id)event;
- (void)_sendTelemetryEventForPendingItemsWithFPReport:(id)report migrationUUID:(id)d daysSinceImportStarted:(int64_t)started;
- (void)_sendTelemetryEventWithDiagnosticAttributes:(id)attributes event:(id)event;
- (void)_setDatabaseProfilingForDB:(id)b enabled:(BOOL)enabled verbose:(BOOL)verbose;
- (void)_setICloudDesktopEnabled:(BOOL)enabled forAccount:(id)account;
- (void)_setupThrottles;
- (void)_startWatcher;
- (void)_submitDBCorruptionTelemetryEventIfNeeded;
- (void)_submitDelayedTelemetryEventIfNeeded:(id)needed wait:(double)wait withBlock:(id)block;
- (void)_submitReimportDomainFailedTelemetryEventIfNeeded;
- (void)_submitSessionOpenFailedTelemetryEventIfNeeded;
- (void)_unlinkContainersWithRootURL:(id)l containers:(id)containers;
- (void)_updateFPFSMigrationBouncedItemType:(char)type withExistingItemType:(char)itemType;
- (void)_updateFPFSMigrationItemTypes:(char)types withStateKey:(id)key isPackage:(BOOL)package;
- (void)_validatePersona;
- (void)accountStartedSchedulingCZM;
- (void)addOfflineAppLibrary:(id)library;
- (void)addOfflineClientZone:(id)zone;
- (void)addOfflineServerZone:(id)zone;
- (void)applyScheduler;
- (void)bumpNotificationRankOnItemGlobalID:(id)d;
- (void)cacheDirPath;
- (void)cachedCurrentUserRecordName;
- (void)captureDBCorruptionInfoWithDescription:(id)description error:(id)error;
- (void)captureSessionOpenFailedInfoWithError:(id)error;
- (void)close;
- (void)closeAndResetLocalStateWithDescription:(id)description error:(id)error;
- (void)closeDBs;
- (void)closeXPCClientsSync;
- (void)cloudDocsAppsListDidChange:(id)change;
- (void)containerScheduler;
- (void)dbBecameCorruptedWithDescription:(id)description error:(id)error;
- (void)dealloc;
- (void)destroyLocalData;
- (void)destroySharedClientZone:(id)zone;
- (void)dumpMiscOperationsToContext:(id)context;
- (void)dumpXPCClientsToContext:(id)context;
- (void)enableDatabaseProfilingForDB:(id)b;
- (void)enumerateAppLibraries:(id)libraries;
- (void)enumerateClientZones:(id)zones;
- (void)enumerateContainersWithDBFacade:(id)facade handler:(id)handler;
- (void)enumeratePrivateClientZones:(id)zones;
- (void)enumeratePrivateServerZones:(id)zones;
- (void)enumerateServerZones:(id)zones;
- (void)enumerateSharedClientZones:(id)zones;
- (void)fetchUserRecordIDWithCompletionHandler:(id)handler;
- (void)fixFileProviderDomainDecorations;
- (void)fpfsMigrationStatusTTRWasTriggered;
- (void)fsImporter;
- (void)initializeDatabaseFacades;
- (void)invalidateExtensionXPCClient;
- (void)markAccountMigrationComplete;
- (void)markMigrationToFPFSCleanupComplete;
- (void)markMigrationToFPFSComplete;
- (void)notificationManager;
- (void)openForDumpingWithAccountDSID:(id)d;
- (void)openForSendingTelemetry;
- (void)performAsyncOnClientReadDatabaseWorkloop:(id)workloop;
- (void)performAsyncOnClientReadWriteDatabaseWorkloop:(id)workloop;
- (void)performAsyncOnServerReadWriteDatabaseWorkloop:(id)workloop;
- (void)performBlock:(id)block whileRemovingPrivateClientZone:(id)zone;
- (void)performSyncOnClientReadDatabaseWorkloop:(id)workloop;
- (void)performSyncOnClientReadWriteDatabaseSerialQueue:(id)queue;
- (void)performSyncOnClientReadWriteDatabaseWorkloop:(id)workloop;
- (void)performSyncOnServerReadWriteDatabaseSerialQueue:(id)queue;
- (void)preventDatabaseFromBeingReused;
- (void)recomputeAppSyncBlockStateForPrivateClientZone:(id)zone;
- (void)recoverAndReportContentPolicyWithCompletion:(id)completion;
- (void)resumeIfNecessary;
- (void)scheduleZoneMovesToCloudDocs:(id)docs;
- (void)sendFileStatsTelemetryWithDescriptors:(id)descriptors perItemSendTelemetryBlock:(id)block;
- (void)sendNonMigratedItemTelemetryWithfileIDs:(id)ds;
- (void)sessionDirPath;
- (void)setFPFSMigrationState:(unsigned int)state;
- (void)setOptimizeStorageEnabled:(BOOL)enabled forKey:(id)key synchronous:(BOOL)synchronous;
- (void)setupDatabase;
- (void)stageRegistry;
- (void)stopDBWatcher;
- (void)triggerFPFSImportFinishedTelemetryEventIfNeeded;
- (void)unregisterClient:(id)client;
- (void)updateFPFSMigrationCleanupLastRowID:(unint64_t)d lostItemCount:(unint64_t)count childLostItemCount:(unint64_t)itemCount busyDateLostItemCount:(unint64_t)lostItemCount ignoredFromSyncLostItemCount:(unint64_t)syncLostItemCount investigatedItemsCount:(unint64_t)itemsCount notMigratedItems:(id)items;
- (void)updateFPFSMigrationNewItemsInDB;
- (void)waitForUploadsToCompleteInSyncBubbleWithReply:(id)reply;
@end

@implementation BRCAccountSession

- (BRCNotificationManager)notificationManager
{
  notificationManager = self->_notificationManager;
  if (notificationManager)
  {
  }

  else
  {
    [BRCAccountSession notificationManager];
    notificationManager = v5;
  }

  return notificationManager;
}

- (void)_mutexZonesLock
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: BRCurrentPersonaMatchesID(self.personaIdentifier)%@", v5, v6, v7, v8);
  }
}

- (id)cachedCurrentUserRecordName
{
  cachedCurrentUserRecordNameIfExists = [(BRCAccountSession *)self cachedCurrentUserRecordNameIfExists];
  if (!cachedCurrentUserRecordNameIfExists)
  {
    [BRCAccountSession cachedCurrentUserRecordName];
  }

  return cachedCurrentUserRecordNameIfExists;
}

- (id)cachedCurrentUserRecordNameIfExists
{
  v2 = self->_clientState;
  objc_sync_enter(@"currentUserRecordID");
  v3 = [(BRCClientState *)v2 objectForKeyedSubscript:@"currentUserRecordID"];
  recordName = [v3 recordName];

  objc_sync_exit(@"currentUserRecordID");

  return recordName;
}

- (BRCContainerScheduler)containerScheduler
{
  containerScheduler = self->_containerScheduler;
  if (containerScheduler)
  {
  }

  else
  {
    [BRCAccountSession containerScheduler];
    containerScheduler = v5;
  }

  return containerScheduler;
}

- (BRCApplyScheduler)applyScheduler
{
  applyScheduler = self->_applyScheduler;
  if (applyScheduler)
  {
  }

  else
  {
    [BRCAccountSession applyScheduler];
    applyScheduler = v5;
  }

  return applyScheduler;
}

- (BRCPQLConnection)readOnlyDB
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_readOnlyDB;
  if (v3)
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v17 = 0;
    v4 = [(BRCAccountSession *)selfCopy newConnectionWithLabel:@"readonly-interactive-db" readonly:1 error:&v17];
    v6 = v17;
    if (v4)
    {
      readOnlyWorkloop = [(BRCAccountSession *)selfCopy readOnlyWorkloop];
      [(BRCPQLConnection *)v4 useSerialQueueWithTarget:readOnlyWorkloop];

      objc_storeStrong(&selfCopy->_readOnlyDB, v4);
      v8 = [BRCClientDatabaseFacade alloc];
      readOnlyDB = selfCopy->_readOnlyDB;
      readOnlyWorkloop2 = [(BRCAccountSession *)selfCopy readOnlyWorkloop];
      v11 = [(BRCClientDatabaseFacade *)v8 initWithDB:readOnlyDB workloop:readOnlyWorkloop2];
      clientReadDatabaseFacade = selfCopy->_clientReadDatabaseFacade;
      selfCopy->_clientReadDatabaseFacade = v11;

      clientDB = v4;
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) readOnlyDB];
      }

      clientDB = selfCopy->_clientDB;
    }

    v5 = clientDB;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (BRCStageRegistry)stageRegistry
{
  stageRegistry = self->_stageRegistry;
  if (stageRegistry)
  {
  }

  else
  {
    [BRCAccountSession stageRegistry];
    stageRegistry = v5;
  }

  return stageRegistry;
}

- (BOOL)hasOptimizeStorageEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = *MEMORY[0x277CFADC8];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];
  isEnterprisePersona = [currentPersona isEnterprisePersona];

  if (isEnterprisePersona)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = *MEMORY[0x277CFADC0];
    accountDSID = [(BRCAccountFacade *)self->_accountFacade accountDSID];
    v11 = [v8 stringWithFormat:@"%@-%@", v9, accountDSID];

    v4 = v11;
  }

  v12 = [standardUserDefaults objectForKey:v4];
  if (!v12)
  {
    [(BRCAccountSession *)self setOptimizeStorageEnabled:1 forKey:v4 synchronous:0];
    v12 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v12 BOOLValue];

  return bOOLValue;
}

- (BOOL)isGreedy
{
  hasOptimizeStorageEnabled = [(BRCAccountSession *)self hasOptimizeStorageEnabled];
  if (!hasOptimizeStorageEnabled)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession isGreedy];
    }
  }

  return !hasOptimizeStorageEnabled;
}

- (BRCAccountWaitOperation)accountWaitOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_accountIsReady)
  {
    v3 = 0;
  }

  else
  {
    accountWaitOperation = selfCopy->_accountWaitOperation;
    if (!accountWaitOperation)
    {
      syncContextProvider = [(BRCAccountSession *)selfCopy syncContextProvider];
      defaultSyncContext = [syncContextProvider defaultSyncContext];
      ckContainer = [defaultSyncContext ckContainer];

      v8 = [[BRCAccountWaitOperation alloc] initWithCKContainer:ckContainer];
      v9 = selfCopy->_accountWaitOperation;
      selfCopy->_accountWaitOperation = v8;

      objc_initWeak(&location, selfCopy);
      throttleProvider = [(BRCAccountSession *)selfCopy throttleProvider];
      syncClientZoneErrorThrottle = [throttleProvider syncClientZoneErrorThrottle];
      [(_BRCOperation *)selfCopy->_accountWaitOperation setOperationFailureThrottle:syncClientZoneErrorThrottle];

      operationFailureThrottle = [(_BRCOperation *)selfCopy->_accountWaitOperation operationFailureThrottle];

      if (!operationFailureThrottle)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [BRCAccountSession accountWaitOperation];
        }
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __41__BRCAccountSession_accountWaitOperation__block_invoke;
      v21 = &unk_278503970;
      objc_copyWeak(&v22, &location);
      [(_BRCOperation *)selfCopy->_accountWaitOperation setFinishBlock:&v18];
      privateCloudDatabase = [ckContainer privateCloudDatabase];
      operationQueue = [privateCloudDatabase operationQueue];
      [operationQueue addOperation:selfCopy->_accountWaitOperation];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);

      accountWaitOperation = selfCopy->_accountWaitOperation;
    }

    v3 = accountWaitOperation;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addOfflineServerZone:(id)zone
{
  zoneCopy = zone;
  brc_mutex_lock(&self->_zonesLock.pthread);
  if (!self->_serverZonesByZoneRowID)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
    self->_serverZonesByZoneRowID = v4;
  }

  v6 = zoneCopy;
  if (!self->_sharedServerZonesByMangledID)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedServerZonesByMangledID = self->_sharedServerZonesByMangledID;
    self->_sharedServerZonesByMangledID = v7;

    v6 = zoneCopy;
  }

  if (!self->_privateServerZonesByID)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    privateServerZonesByID = self->_privateServerZonesByID;
    self->_privateServerZonesByID = v9;

    v6 = zoneCopy;
  }

  [v6 setSession:self];
  v11 = self->_serverZonesByZoneRowID;
  dbRowID = [zoneCopy dbRowID];
  [(NSMutableDictionary *)v11 setObject:zoneCopy forKeyedSubscript:dbRowID];

  if ([zoneCopy isSharedZone])
  {
    v13 = self->_sharedServerZonesByMangledID;
    asSharedZone = [zoneCopy asSharedZone];
    mangledID = [asSharedZone mangledID];
    [(NSMutableDictionary *)v13 setObject:zoneCopy forKeyedSubscript:mangledID];
  }

  else
  {
    v16 = self->_privateServerZonesByID;
    asSharedZone = [zoneCopy zoneName];
    [(NSMutableDictionary *)v16 setObject:zoneCopy forKeyedSubscript:asSharedZone];
  }

  brc_mutex_unlock(&self->_zonesLock.pthread);
}

- (void)addOfflineClientZone:(id)zone
{
  zoneCopy = zone;
  brc_mutex_lock(&self->_zonesLock.pthread);
  if (!self->_privateClientZonesByID)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    privateClientZonesByID = self->_privateClientZonesByID;
    self->_privateClientZonesByID = v4;
  }

  if (!self->_sharedClientZonesByMangledID)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sharedClientZonesByMangledID = self->_sharedClientZonesByMangledID;
    self->_sharedClientZonesByMangledID = v6;
  }

  [zoneCopy setSession:self];
  serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
  dbRowID = [zoneCopy dbRowID];
  v10 = [(NSMutableDictionary *)serverZonesByZoneRowID objectForKeyedSubscript:dbRowID];

  if (v10)
  {
    [zoneCopy associateWithServerZone:v10 offline:1];
  }

  if ([zoneCopy isSharedZone])
  {
    v11 = self->_sharedClientZonesByMangledID;
    [zoneCopy mangledID];
  }

  else
  {
    v11 = self->_privateClientZonesByID;
    [zoneCopy zoneName];
  }
  v12 = ;
  [(NSMutableDictionary *)v11 setObject:zoneCopy forKeyedSubscript:v12];

  brc_mutex_unlock(&self->_zonesLock.pthread);
}

- (void)addOfflineAppLibrary:(id)library
{
  libraryCopy = library;
  brc_mutex_lock(&self->_zonesLock.pthread);
  appLibrariesByRowID = self->_appLibrariesByRowID;
  if (!appLibrariesByRowID)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_appLibrariesByRowID;
    self->_appLibrariesByRowID = v6;

    appLibrariesByRowID = self->_appLibrariesByRowID;
  }

  dbRowID = [libraryCopy dbRowID];
  [(NSMutableDictionary *)appLibrariesByRowID setObject:libraryCopy forKeyedSubscript:dbRowID];

  brc_mutex_unlock(&self->_zonesLock.pthread);
}

- (BRCPQLConnection)expensiveReadOnlyDB
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_expensiveReadOnlyDB;
  if (v3)
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v17 = 0;
    v4 = [(BRCAccountSession *)selfCopy newConnectionWithLabel:@"readonly-expensive-db" readonly:1 error:&v17];
    v6 = v17;
    if (v4)
    {
      readOnlyWorkloop = [(BRCAccountSession *)selfCopy readOnlyWorkloop];
      [(BRCPQLConnection *)v4 useSerialQueueWithTarget:readOnlyWorkloop];

      objc_storeStrong(&selfCopy->_expensiveReadOnlyDB, v4);
      v8 = [BRCClientDatabaseFacade alloc];
      expensiveReadOnlyDB = selfCopy->_expensiveReadOnlyDB;
      readOnlyWorkloop2 = [(BRCAccountSession *)selfCopy readOnlyWorkloop];
      v11 = [(BRCClientDatabaseFacade *)v8 initWithDB:expensiveReadOnlyDB workloop:readOnlyWorkloop2];
      clientExpensiveReadDatabaseFacade = selfCopy->_clientExpensiveReadDatabaseFacade;
      selfCopy->_clientExpensiveReadDatabaseFacade = v11;

      clientDB = v4;
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) expensiveReadOnlyDB];
      }

      clientDB = selfCopy->_clientDB;
    }

    v5 = clientDB;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)dbBecameCorruptedWithDescription:(id)description error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  errorCopy = error;
  [(BRCAccountSession *)self invalidateExtensionXPCClient];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_dbCorruptionQueue)
  {
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("db-corrupting-handler-queue", v12);

    dbCorruptionQueue = selfCopy->_dbCorruptionQueue;
    selfCopy->_dbCorruptionQueue = v13;

    [(BRCAccountSession *)selfCopy captureDBCorruptionInfoWithDescription:descriptionCopy error:errorCopy];
    objc_sync_exit(selfCopy);

    fileUnlinker = [(BRCAccountSession *)selfCopy fileUnlinker];
    path = [(NSURL *)selfCopy->_dbURL path];
    [fileUnlinker renameAndUnlinkInBackgroundItemAtPath:path];

    fileUnlinker2 = [(BRCAccountSession *)selfCopy fileUnlinker];
    sessionDirPath = [(BRCAccountSession *)selfCopy sessionDirPath];
    [fileUnlinker2 renameAndUnlinkInBackgroundItemAtPath:sessionDirPath];

    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"db was corrupted with description - '%@' and due to - %@", descriptionCopy, errorCopy];
    objc_claimAutoreleasedReturnValue();
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = brc_append_system_info_to_message();
      *buf = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v19;
      _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", buf, 0x16u);
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCAccountSession(BRCDatabaseManager) dbBecameCorruptedWithDescription:error:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseManager.m", 284, uTF8String);
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Corrupting handling is already in-flight%@", buf, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (id)newConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5 = [BRCPQLConnection alloc];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__BRCAccountSession_BRCDatabaseManager__newConnection___block_invoke;
  v11 = &unk_2784FF828;
  objc_copyWeak(&v12, &location);
  v6 = [(BRCPQLConnection *)v5 initWithLabel:connectionCopy dbCorruptionHandler:&v8];
  [(BRCPQLConnection *)v6 setAssertionPersonaIdentifier:self->_personaIdentifier, v8, v9, v10, v11];
  [(BRCPQLConnection *)v6 setStatementCacheMaxCount:10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __55__BRCAccountSession_BRCDatabaseManager__newConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dbBecameCorruptedWithDescription:@"Invoked from DB Corruption Handler" error:v4];
}

+ (id)sessionForBackingUpDatabasesAtURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(BRCAccountSession);
  dbURL = v4->_dbURL;
  v4->_dbURL = lCopy;

  return v4;
}

+ (id)sessionForDumpingDatabasesAtURL:(id)l with:(id)with
{
  lCopy = l;
  withCopy = with;
  v7 = objc_alloc_init(BRCAccountSession);
  [(BRCAccountSession *)v7 setupDatabase];
  dbURL = v7->_dbURL;
  v7->_dbURL = lCopy;
  v9 = lCopy;

  serverDB = v7->_serverDB;
  serverTruthWorkloop = [(BRCAccountSession *)v7 serverTruthWorkloop];
  [(BRCPQLConnection *)serverDB useSerialQueueWithTarget:serverTruthWorkloop];

  clientDB = v7->_clientDB;
  clientTruthWorkloop = [(BRCAccountSession *)v7 clientTruthWorkloop];
  [(BRCPQLConnection *)clientDB useSerialQueueWithTarget:clientTruthWorkloop];

  [(BRCAccountSession *)v7 openForDumpingWithAccountDSID:withCopy];
  [(BRCAccountSession *)v7 initializeDatabaseFacades];

  return v7;
}

+ (id)sessionForDumpingDatabasesAtURL:(id)l
{
  lCopy = l;
  v4 = [objc_opt_class() sessionForDumpingDatabasesAtURL:lCopy with:0];

  return v4;
}

+ (id)sessionForSendingTelemetryAtURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(BRCAccountSession);
  [(BRCAccountSession *)v4 setupDatabase];
  dbURL = v4->_dbURL;
  v4->_dbURL = lCopy;
  v6 = lCopy;

  serverDB = v4->_serverDB;
  serverTruthWorkloop = [(BRCAccountSession *)v4 serverTruthWorkloop];
  [(BRCPQLConnection *)serverDB useSerialQueueWithTarget:serverTruthWorkloop];

  clientDB = v4->_clientDB;
  clientTruthWorkloop = [(BRCAccountSession *)v4 clientTruthWorkloop];
  [(BRCPQLConnection *)clientDB useSerialQueueWithTarget:clientTruthWorkloop];

  [(BRCAccountSession *)v4 openForSendingTelemetry];
  [(BRCAccountSession *)v4 initializeDatabaseFacades];
  v11 = +[BRCDaemon daemon];
  v12 = objc_opt_class();

  [v11 setContainerClass:v12];

  return v4;
}

+ (id)sessionForCheckingInconsistencies
{
  v2 = objc_alloc_init(BRCAccountSession);
  serverDB = v2->_serverDB;
  serverTruthWorkloop = [(BRCAccountSession *)v2 serverTruthWorkloop];
  [(BRCPQLConnection *)serverDB useSerialQueueWithTarget:serverTruthWorkloop];

  clientDB = v2->_clientDB;
  clientTruthWorkloop = [(BRCAccountSession *)v2 clientTruthWorkloop];
  [(BRCPQLConnection *)clientDB useSerialQueueWithTarget:clientTruthWorkloop];

  return v2;
}

- (void)setupDatabase
{
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = [(BRCAccountSession *)self newConnection:@"serverTruth"];
  serverDB = self->_serverDB;
  self->_serverDB = v3;

  v5 = [(BRCAccountSession *)self newConnection:@"clientTruth"];
  clientDB = self->_clientDB;
  self->_clientDB = v5;

  -[BRCPQLConnection setStatementCacheMaxCount:](self->_serverDB, "setStatementCacheMaxCount:", [v7 statementCacheMaxCountForServerTruth]);
  -[BRCPQLConnection setStatementCacheMaxCount:](self->_clientDB, "setStatementCacheMaxCount:", [v7 statementCacheMaxCountForClientTruth]);
}

- (void)initializeDatabaseFacades
{
  v3 = [[BRCReadWriteServerDatabaseFacade alloc] initWithDB:self->_serverDB workloop:self->_serverTruthWorkloop];
  serverReadWriteDatabaseFacade = self->_serverReadWriteDatabaseFacade;
  self->_serverReadWriteDatabaseFacade = v3;

  self->_clientReadWriteDatabaseFacade = [[BRCReadWriteClientDatabaseFacade alloc] initWithDB:self->_clientDB workloop:self->_clientTruthWorkloop];

  MEMORY[0x2821F96F8]();
}

- (void)_startWatcher
{
  v3 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"client.db"];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  v5 = open(fileSystemRepresentation, 33028);
  if ((v5 & 0x80000000) != 0)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"can't open the client db we've just created %{errno}d", *__error()];
    objc_claimAutoreleasedReturnValue();
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession(BRCDatabaseManager) _startWatcher];
    }

    brc_append_system_info_to_message();
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCAccountSession(BRCDatabaseManager) _startWatcher]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseManager.m", 399, uTF8String);
  }

  v6 = v5;
  v7 = dispatch_source_create(MEMORY[0x277D85D48], v5, 1uLL, self->_dbWatcherQueue);
  dbWatcher = self->_dbWatcher;
  self->_dbWatcher = v7;

  v9 = self->_dbWatcher;
  v10 = MEMORY[0x277CFB010];
  if (*MEMORY[0x277CFB010])
  {
    v11 = (*MEMORY[0x277CFB010])(&__block_literal_global_7);
  }

  else
  {
    v11 = &__block_literal_global_7;
  }

  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v11);
  dispatch_source_set_event_handler(v9, v12);

  v13 = self->_dbWatcher;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__BRCAccountSession_BRCDatabaseManager___startWatcher__block_invoke_44;
  v21[3] = &__block_descriptor_36_e5_v8__0l;
  v22 = v6;
  v14 = v13;
  v15 = v21;
  v16 = v15;
  if (*v10)
  {
    v17 = (*v10)(v15);

    v16 = v17;
  }

  dispatch_source_set_cancel_handler(v14, v16);

  dispatch_resume(self->_dbWatcher);
}

void __54__BRCAccountSession_BRCDatabaseManager___startWatcher__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] someone ripped the database from under our feet%@", &v2, 0xCu);
  }

  exit(0);
}

- (void)stopDBWatcher
{
  dbWatcherQueue = self->_dbWatcherQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BRCAccountSession_BRCDatabaseManager__stopDBWatcher__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(dbWatcherQueue, block);
}

void __54__BRCAccountSession_BRCDatabaseManager__stopDBWatcher__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }
}

- (BOOL)_openConnection:(id)connection databaseName:(id)name readonly:(BOOL)readonly error:(id *)error
{
  readonlyCopy = readonly;
  connectionCopy = connection;
  nameCopy = name;
  LODWORD(readonlyCopy) = [objc_opt_class() _openConnection:connectionCopy databaseName:nameCopy baseURL:self->_dbURL readonly:readonlyCopy error:error];

  if (readonlyCopy)
  {
    v12 = [(BRCAccountSession *)self _registerDynamicDBFunctions:connectionCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_openConnection:(id)connection databaseName:(id)name baseURL:(id)l readonly:(BOOL)readonly error:(id *)error
{
  readonlyCopy = readonly;
  connectionCopy = connection;
  nameCopy = name;
  if (readonlyCopy)
  {
    v13 = 3145729;
  }

  else
  {
    v13 = 3145734;
  }

  v14 = [l URLByAppendingPathComponent:nameCopy];
  v15 = [connectionCopy openAtURL:v14 withFlags:v13 error:error];

  if (!v15)
  {
    goto LABEL_9;
  }

  if (!readonlyCopy)
  {
    [connectionCopy setSynchronousMode:{objc_msgSend(nameCopy, "isEqualToString:", @"checker.db"}];
  }

  if ([BRCAccountSession _registerStaticDBFunctions:connectionCopy error:error])
  {
    v16 = [BRCUserDefaults defaultsForMangledID:0];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v16, "sqliteCacheSize")];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v16, "sqliteCacheSpill")];
    v19 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v17 length:{"UTF8String"), objc_msgSend(v17, "length")}];
    [connectionCopy execute:{@"PRAGMA cache_size = %@", v19}];

    v20 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v18 length:{"UTF8String"), objc_msgSend(v18, "length")}];
    [connectionCopy execute:{@"PRAGMA cache_spill = %@", v20}];

    v21 = 1;
  }

  else
  {
LABEL_9:
    v21 = 0;
  }

  return v21;
}

+ (BOOL)_registerStaticDBFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke;
  v9[3] = &unk_2784FF870;
  v6 = functionsCopy;
  v10 = v6;
  if ([v6 registerFunction:@"migration_is_parented_or_equal_to_old_doc_id" nArgs:2 handler:v9 error:error] && objc_msgSend(v6, "registerFunction:nArgs:handler:error:", @"document_is_evictable", 1, &__block_literal_global_79, error) && objc_msgSend(v6, "registerFunction:nArgs:handler:error:", @"document_is_indexable", 1, &__block_literal_global_84, error))
  {
    v7 = [v6 registerFunction:@"ckinfo_etags_are_equal" nArgs:2 handler:&__block_literal_global_89];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v7 = pql_sqlite3_value_object();
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke_cold_2();
    }

    sqlite3_result_null(a2);
    goto LABEL_23;
  }

  v22 = a2;
  v8 = [MEMORY[0x277CBEA90] newFromSqliteValue:a4[1]];
  v9 = -1000;
  while (1)
  {
    v10 = objc_autoreleasePoolPush();
    if (!v8)
    {
      goto LABEL_18;
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    if ([v11 isEqualToString:@"root"])
    {
      v19 = 0;
LABEL_16:
      sqlite3_result_int(v22, v19);

      objc_autoreleasePoolPop(v10);
      goto LABEL_22;
    }

    if ([v11 isEqualToString:@"documents"])
    {
      v19 = 1;
      goto LABEL_16;
    }

    v12 = *(a1 + 32);
    v13 = [v7 dbRowID];
    v14 = [v12 fetch:{@"SELECT item_parent_id FROM client_items WHERE zone_rowid = %@ AND item_id = %@", v13, v8}];

    if (([v14 next] & 1) == 0)
    {
      break;
    }

    v15 = [v14 dataAtIndex:0];

    objc_autoreleasePoolPop(v10);
    v8 = v15;
    if (__CFADD__(v9++, 1))
    {
      goto LABEL_19;
    }
  }

LABEL_18:
  objc_autoreleasePoolPop(v10);
  v15 = v8;
LABEL_19:
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke_cold_1();
  }

  sqlite3_result_null(v22);
  v8 = v15;
LABEL_22:

LABEL_23:
}

void __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke_77(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v5 = sqlite3_value_int64(*a4) & 1;

  sqlite3_result_int(a2, v5);
}

void __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke_2(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v5 = (sqlite3_value_int64(*a4) >> 1) & 1;

  sqlite3_result_int(a2, v5);
}

void __74__BRCAccountSession_BRCDatabaseManager___registerStaticDBFunctions_error___block_invoke_3(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v11 = [BRFieldCKInfo newFromSqliteValue:*a4];
  v7 = [BRFieldCKInfo newFromSqliteValue:a4[1]];
  v8 = [v11 etag];
  if (v8 || ([v7 etag], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = [v11 etag];
    v10 = [v7 etag];
    sqlite3_result_int(a2, [v9 isEqualToString:v10]);

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sqlite3_result_int(a2, 1);
  }

LABEL_7:
}

- (BOOL)_registerDynamicDBFunctions:(id)functions error:(id *)error
{
  functionsCopy = functions;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke;
  v16[3] = &unk_2784FF898;
  objc_copyWeak(&v17, &location);
  v7 = MEMORY[0x22AA4A310](v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke_91;
  v14[3] = &unk_2784FF898;
  objc_copyWeak(&v15, &location);
  v8 = MEMORY[0x22AA4A310](v14);
  if ([functionsCopy registerFunction:@"trigger_notification" nArgs:1 handler:v7 error:error] && objc_msgSend(functionsCopy, "registerFunction:nArgs:handler:error:", @"bump_notifs_rank", 0, v8, error))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke_2;
    v11[3] = &unk_2784FF8C0;
    v12 = v7;
    v13 = v8;
    v9 = [functionsCopy registerFunction:@"bump_notifs_rank_and_trigger_notifs" nArgs:1 handler:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v9;
}

void __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_value **a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = sqlite3_value_int64(*a4);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke_cold_1(v7, v6, v8);
  }

  v9 = [WeakRetained notificationManager];
  [v9 queueUpdateForItemAtRowID:v6];
}

void __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke_91(uint64_t a1, sqlite3_context *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:WeakRetained];
  v4 = [v3 allocateNotifRank];

  sqlite3_result_int64(a2, v4);
}

uint64_t __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_setupConnection:(id)connection readonly:(BOOL)readonly forChecker:(BOOL)checker error:(id *)error
{
  checkerCopy = checker;
  readonlyCopy = readonly;
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (checkerCopy)
  {
    v8 = &unk_2837B0BB0;
  }

  else
  {
    v8 = &unk_2837B0BC8;
  }

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
    v13 = 0x277CCA000uLL;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [*(v13 + 3240) stringWithFormat:@"%@.db", v15];
        if (v11)
        {
          v17 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:v16];
          [v17 path];
          v19 = v18 = v13;
          v20 = [connectionCopy attachDBAtPath:v19 as:v15 error:error];

          v13 = v18;
          if ((v20 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (![(BRCAccountSession *)self _openConnection:connectionCopy databaseName:v16 readonly:readonlyCopy error:error])
        {
LABEL_16:

          v11 = 0;
          goto LABEL_18;
        }

        v11 = 1;
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (id)newConnectionWithLabel:(id)label readonly:(BOOL)readonly error:(id *)error
{
  readonlyCopy = readonly;
  labelCopy = label;
  v9 = [(BRCAccountSession *)self newConnection:labelCopy];
  v10 = [labelCopy isEqualToString:@"checker"];

  if ([(BRCAccountSession *)self _setupConnection:v9 readonly:readonlyCopy forChecker:v10 error:error])
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

- (BOOL)_setupBackupDetector:(backup_detector *)detector error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"control-odd"];
  v8 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"control-even"];
  v22 = 0;
  detector->var2 = 0;
  if (create_control_file([v7 fileSystemRepresentation], &v22, 1))
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v20 = "(passed to caller)";
        *buf = 136315906;
        v24 = "[BRCAccountSession(BRCDatabaseManager) _setupBackupDetector:error:]";
        v25 = 2080;
        if (!error)
        {
          v20 = "(ignored by caller)";
        }

        v26 = v20;
        v27 = 2112;
        v28 = br_errorFromErrno;
        v29 = 2112;
        v30 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      goto LABEL_6;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  detector->var0 = v22;
  if (!create_control_file([v8 fileSystemRepresentation], &v22, 1))
  {
    detector->var1 = v22;
    br_errorFromErrno = brc_bread_crumbs();
    v12 = 1;
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      var0 = detector->var0;
      var1 = detector->var1;
      var2 = detector->var2;
      *buf = 134218754;
      v24 = var0;
      v25 = 2048;
      v26 = var1;
      v27 = 2048;
      v28 = var2;
      v29 = 2112;
      v30 = br_errorFromErrno;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] database backup detector initialized {old:%llu; new:%llu; c:%llu}%@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
  if (br_errorFromErrno)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      v21 = "(passed to caller)";
      *buf = 136315906;
      v24 = "[BRCAccountSession(BRCDatabaseManager) _setupBackupDetector:error:]";
      v25 = 2080;
      if (!error)
      {
        v21 = "(ignored by caller)";
      }

      v26 = v21;
      v27 = 2112;
      v28 = br_errorFromErrno;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (!error)
  {
    goto LABEL_13;
  }

LABEL_6:
  br_errorFromErrno = br_errorFromErrno;
  v12 = 0;
  v13 = *error;
  *error = br_errorFromErrno;
LABEL_7:

LABEL_14:
  return v12;
}

- (BOOL)_stepBackupDetector:(backup_detector *)detector newState:(backup_detector *)state error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"control-odd"];
  v10 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"control-even"];
  v11 = v10;
  memset(&v45, 0, sizeof(v45));
  if (detector->var2)
  {
    v10 = v9;
  }

  fileSystemRepresentation = [v10 fileSystemRepresentation];
  if (lstat(fileSystemRepresentation, &v45))
  {
    v13 = *__error();
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      *buf = 136315650;
      st_ino = fileSystemRepresentation;
      v48 = 1024;
      *v49 = v13;
      *&v49[4] = 2112;
      *&v49[6] = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] failed stating '%s' %{errno}d%@", buf, 0x1Cu);
    }

    *__error() = v13;
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v36 = "(passed to caller)";
        *buf = 136315906;
        st_ino = "[BRCAccountSession(BRCDatabaseManager) _stepBackupDetector:newState:error:]";
        v48 = 2080;
        if (!error)
        {
          v36 = "(ignored by caller)";
        }

        *v49 = v36;
        *&v49[8] = 2112;
        *&v49[10] = br_errorFromErrno;
        v50 = 2112;
        v51 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  if (v45.st_ino != detector->var1)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      var1 = detector->var1;
      *buf = 134218754;
      st_ino = v45.st_ino;
      v48 = 2048;
      *v49 = var1;
      *&v49[8] = 2080;
      *&v49[10] = fileSystemRepresentation;
      v50 = 2112;
      v51 = v25;
      _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] backup detected: ino %llu instead of %llu at '%s'\n%@", buf, 0x2Au);
    }

    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:70];
    if (!br_errorFromErrno)
    {
LABEL_32:
      if (error)
      {
LABEL_10:
        v19 = br_errorFromErrno;
        v20 = 0;
        *error = br_errorFromErrno;
        goto LABEL_41;
      }

LABEL_33:
      v20 = 0;
      goto LABEL_41;
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (!os_log_type_enabled(v29, 0x90u))
    {
LABEL_31:

      goto LABEL_32;
    }

    v30 = "(passed to caller)";
    *buf = 136315906;
    st_ino = "[BRCAccountSession(BRCDatabaseManager) _stepBackupDetector:newState:error:]";
    v48 = 2080;
    if (!error)
    {
      v30 = "(ignored by caller)";
    }

LABEL_48:
    *v49 = v30;
    *&v49[8] = 2112;
    *&v49[10] = br_errorFromErrno;
    v50 = 2112;
    v51 = v28;
    _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    goto LABEL_31;
  }

  if (detector->var2)
  {
    v21 = v11;
  }

  else
  {
    v21 = v9;
  }

  fileSystemRepresentation2 = [v21 fileSystemRepresentation];
  if (!lstat(fileSystemRepresentation2, &v45))
  {
    if (v45.st_ino != detector->var0)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        var0 = detector->var0;
        *buf = 136315906;
        st_ino = fileSystemRepresentation2;
        v48 = 2048;
        *v49 = v45.st_ino;
        *&v49[8] = 2048;
        *&v49[10] = var0;
        v50 = 2112;
        v51 = v31;
        _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] mismatch on new control file '%s': %llu != %llu\n%@", buf, 0x2Au);
      }

      goto LABEL_37;
    }

    if (!create_control_file(fileSystemRepresentation2, &v45.st_ino, 1))
    {
      v37 = v45.st_ino;
      state->var0 = detector->var1;
      state->var1 = v37;
      state->var2 = detector->var2 + 1;
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(BRCDatabaseManager) _stepBackupDetector:newState:error:];
  }

  if (create_control_file(fileSystemRepresentation2, &v45.st_ino, 1))
  {
LABEL_29:
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (!br_errorFromErrno)
    {
      goto LABEL_32;
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (!os_log_type_enabled(v29, 0x90u))
    {
      goto LABEL_31;
    }

    v30 = "(passed to caller)";
    *buf = 136315906;
    st_ino = "[BRCAccountSession(BRCDatabaseManager) _stepBackupDetector:newState:error:]";
    v48 = 2080;
    if (!error)
    {
      v30 = "(ignored by caller)";
    }

    goto LABEL_48;
  }

LABEL_37:
  var2 = detector->var2;
  *&state->var0 = *&detector->var0;
  state->var2 = var2;
  state->var0 = v45.st_ino;
LABEL_38:
  br_errorFromErrno = brc_bread_crumbs();
  v34 = brc_default_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v38 = detector->var0;
    v39 = detector->var1;
    v40 = state->var0;
    v41 = state->var1;
    v42 = detector->var2;
    v43 = state->var2;
    *buf = 134219522;
    st_ino = v38;
    v48 = 2048;
    *v49 = v40;
    *&v49[8] = 2048;
    *&v49[10] = v39;
    v50 = 2048;
    v51 = v41;
    v52 = 2048;
    v53 = v42;
    v54 = 2048;
    v55 = v43;
    v56 = 2112;
    v57 = br_errorFromErrno;
    _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] database backup detector updated {old:%llu -> %llu; new:%llu -> %llu; c:%llu -> %llu}%@", buf, 0x48u);
  }

  v20 = 1;
LABEL_41:

  return v20;
}

- (void)preventDatabaseFromBeingReused
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"control-odd"];
  v4 = [(NSURL *)self->_dbURL URLByAppendingPathComponent:@"control-even"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v6 = [defaultManager removeItemAtURL:v3 error:&v15];
  v7 = v15;
  if ((v6 & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v3;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] can't remove %@: %@%@", buf, 0x20u);
    }
  }

  v14 = v7;
  v10 = [defaultManager removeItemAtURL:v4 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v4;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] can't remove %@: %@%@", buf, 0x20u);
    }
  }
}

- (id)fixObfuscatedMangledID:(id)d
{
  dCopy = d;
  if (!self->_forDBDump)
  {
    goto LABEL_6;
  }

  if (fixObfuscatedMangledID__onceToken != -1)
  {
    [BRCAccountSession(BRCDatabaseManager) fixObfuscatedMangledID:];
  }

  v5 = [dCopy length];
  v7 = [fixObfuscatedMangledID____regex rangeOfFirstMatchInString:dCopy options:0 range:{0, v5}];
  if (v7 || v6 != v5)
  {
    v8 = [dCopy substringWithRange:{v7, v6}];
  }

  else
  {
LABEL_6:
    v8 = dCopy;
  }

  v9 = v8;

  return v9;
}

uint64_t __64__BRCAccountSession_BRCDatabaseManager__fixObfuscatedMangledID___block_invoke()
{
  fixObfuscatedMangledID____regex = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"[a-zA-Z0-9\\-]+\\.[a-zA-Z0-9\\-\\.]+" options:0 error:0];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)saveClientZoneToDB:(id)b
{
  bCopy = b;
  dbRowID = [bCopy dbRowID];

  if (!dbRowID)
  {
    [BRCAccountSession(BRCDatabaseManager) saveClientZoneToDB:];
  }

  clientDB = self->_clientDB;
  plist = [bCopy plist];
  dbRowID2 = [bCopy dbRowID];
  v9 = [(BRCPQLConnection *)clientDB execute:@"UPDATE client_zones SET zone_plist = %@ WHERE rowid = %@", plist, dbRowID2];

  if (v9)
  {
    [bCopy setNeedsSave:0];
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession(BRCDatabaseManager) saveClientZoneToDB:];
    }
  }

  return v9;
}

- (BOOL)createServerZone:(id)zone
{
  v40 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  serverDB = self->_serverDB;
  ownerName = [zoneCopy ownerName];
  zoneName = [zoneCopy zoneName];
  plist = [zoneCopy plist];
  LOBYTE(serverDB) = [(BRCPQLConnection *)serverDB execute:@"INSERT OR IGNORE INTO server_zones (zone_owner, zone_name, zone_plist) VALUES (%@, %@, %@)", ownerName, zoneName, plist];

  if (serverDB)
  {
    if ([(BRCPQLConnection *)self->_serverDB changes]< 1)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        [BRCAccountSession(BRCDatabaseManager) createServerZone:];
      }

      v19 = self->_serverDB;
      ownerName2 = [zoneCopy ownerName];
      zoneName2 = [zoneCopy zoneName];
      v10 = [(PQLConnection *)v19 numberWithSQL:@"SELECT rowid from server_zones WHERE zone_owner = %@ and zone_name = %@", ownerName2, zoneName2];

      if (!v10)
      {
        [BRCAccountSession(BRCDatabaseManager) createServerZone:];
      }

      dbRowID = [zoneCopy dbRowID];

      if (dbRowID)
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          dbRowID2 = [zoneCopy dbRowID];
          *buf = 138412802;
          v35 = dbRowID2;
          v36 = 2112;
          v37 = v10;
          v38 = 2112;
          v39 = v23;
          _os_log_fault_impl(&dword_223E7A000, v24, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: got a new rowid for already existing zone (sct.dbRowID=%@ rowID=%@)%@", buf, 0x20u);
        }
      }

      else
      {
        [zoneCopy setDbRowID:v10];
      }

      v27 = self->_serverDB;
      plist2 = [zoneCopy plist];
      LOBYTE(v27) = [(BRCPQLConnection *)v27 execute:@"UPDATE server_zones SET zone_plist = %@ WHERE rowid = %@", plist2, v10];

      if (v27)
      {
        goto LABEL_26;
      }

      v11 = brc_bread_crumbs();
      dbRowID5 = brc_default_log();
      if (os_log_type_enabled(dbRowID5, OS_LOG_TYPE_FAULT))
      {
        lastError = [(BRCPQLConnection *)self->_serverDB lastError];
        *buf = 138412802;
        v35 = zoneCopy;
        v36 = 2112;
        v37 = lastError;
        v38 = 2112;
        v39 = v11;
        _os_log_fault_impl(&dword_223E7A000, dbRowID5, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to update plist for zone %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      dbRowID3 = [zoneCopy dbRowID];

      if (!dbRowID3)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BRCPQLConnection lastInsertedRowID](self->_serverDB, "lastInsertedRowID")}];
        [zoneCopy setDbRowID:v25];

        dbRowID4 = [zoneCopy dbRowID];

        if (dbRowID4)
        {
LABEL_27:
          serverReadWriteDatabaseFacade = [(BRCAccountSession *)self serverReadWriteDatabaseFacade];
          ownerName3 = [zoneCopy ownerName];
          v29 = [serverReadWriteDatabaseFacade getOrCreateUserKeyForOwnerName:ownerName3];
          v16 = v29 != 0;

          goto LABEL_28;
        }

        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [BRCAccountSession(BRCDatabaseManager) createServerZone:];
        }

        goto LABEL_25;
      }

      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      dbRowID5 = [zoneCopy dbRowID];
      lastInsertedRowID = [(BRCPQLConnection *)self->_serverDB lastInsertedRowID];
      *buf = 138412802;
      v35 = dbRowID5;
      v36 = 2048;
      v37 = lastInsertedRowID;
      v38 = 2112;
      v39 = v10;
      _os_log_fault_impl(&dword_223E7A000, v11, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: sct.dbRowID is %@ lastInsertedRow is %lld%@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  serverReadWriteDatabaseFacade = brc_bread_crumbs();
  ownerName3 = brc_default_log();
  if (os_log_type_enabled(ownerName3, 0x90u))
  {
    lastError2 = [(BRCPQLConnection *)self->_serverDB lastError];
    *buf = 138412802;
    v35 = zoneCopy;
    v36 = 2112;
    v37 = lastError2;
    v38 = 2112;
    v39 = serverReadWriteDatabaseFacade;
    _os_log_error_impl(&dword_223E7A000, ownerName3, 0x90u, "[ERROR] Failed to create server zone %@:  %@%@", buf, 0x20u);
  }

  v16 = 0;
LABEL_28:

  return v16;
}

- (BOOL)deleteServerZone:(id)zone
{
  serverDB = self->_serverDB;
  dbRowID = [zone dbRowID];
  LOBYTE(serverDB) = [(BRCPQLConnection *)serverDB execute:@"DELETE FROM server_zones WHERE rowid = %@", dbRowID];

  return serverDB;
}

- (void)_enumerateAppLibraryRowIDs:(id)ds usingBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v6 = [dsCopy fetch:{@"SELECT container_id, rowid FROM rowid_reservations"}];
  if ([v6 next])
  {
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v6 stringAtIndex:0];
      v9 = [v6 numberAtIndex:1];
      blockCopy[2](blockCopy, v8, v9);

      objc_autoreleasePoolPop(v7);
    }

    while (([v6 next] & 1) != 0);
  }

  [v6 close];
}

- (id)_reserveRowIDForLibrary:(id)library
{
  v16 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  [(BRCPQLConnection *)self->_serverDB assertOnQueue];
  if ([(BRCPQLConnection *)self->_serverDB execute:@"INSERT INTO rowid_reservations (container_id) VALUES (%@)", libraryCopy])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BRCPQLConnection lastInsertedRowID](self->_serverDB, "lastInsertedRowID")}];
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession(BRCDatabaseManager) _reserveRowIDForLibrary:];
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      lastError = [(BRCPQLConnection *)self->_serverDB lastError];
      *buf = 138412802;
      v11 = libraryCopy;
      v12 = 2112;
      v13 = lastError;
      v14 = 2112;
      v15 = v6;
      _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: couldn't allocate a rowid. libraryID %@ error %@%@", buf, 0x20u);
    }

    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (id)newAppLibraryFromPQLResultSet:(id)set version:(int)version
{
  setCopy = set;
  v22 = [setCopy numberAtIndex:0];
  intValue = 1;
  v8 = [setCopy stringAtIndex:1];
  v9 = [(BRCAccountSession *)self fixObfuscatedMangledID:v8];

  v10 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:v9];
  v11 = _BRCClassesForContainerState(v10);
  v12 = [setCopy unarchivedObjectOfClasses:v11 atIndex:2];

  v13 = [setCopy numberAtIndex:3];
  if (version < 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = [setCopy objectOfClass:objc_opt_class() atIndex:4];
    v15 = [setCopy numberAtIndex:5];
    intValue = [v15 intValue];
  }

  v16 = [BRCAppLibrary alloc];
  v17 = [setCopy db];
  LODWORD(v21) = intValue;
  BYTE2(v20) = 0;
  LOWORD(v20) = 0;
  v18 = [BRCAppLibrary initWithMangledID:v16 dbRowID:"initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:" zoneRowID:v10 db:v22 plist:v13 session:v17 initialCreation:v12 createdRootOnDisk:self createdCZMMoved:v20 rootFileID:0 childBasehashSalt:v14 saltingState:v21];

  return v18;
}

- (BOOL)_createAppLibrary:(id)library
{
  libraryCopy = library;
  dbRowID = [libraryCopy dbRowID];

  if (!dbRowID)
  {
    [BRCAccountSession(BRCDatabaseManager) _createAppLibrary:];
  }

  zoneRowID = [libraryCopy zoneRowID];

  if (!zoneRowID)
  {
    [BRCAccountSession(BRCDatabaseManager) _createAppLibrary:];
  }

  v7 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v7 supportsEnhancedDrivePrivacy];

  clientDB = self->_clientDB;
  dbRowID2 = [libraryCopy dbRowID];
  appLibraryID = [libraryCopy appLibraryID];
  plist = [libraryCopy plist];
  zoneRowID2 = [libraryCopy zoneRowID];
  v14 = zoneRowID2;
  if (supportsEnhancedDrivePrivacy)
  {
    childBasehashSalt = [libraryCopy childBasehashSalt];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(libraryCopy, "saltingState")}];
    v17 = [(BRCPQLConnection *)clientDB execute:@"INSERT OR REPLACE INTO app_libraries (rowid, app_library_name, app_library_plist, zone_rowid, child_basehash_salt, salting_state)  VALUES (%@, %@, %@, %@, %@, %@)", dbRowID2, appLibraryID, plist, v14, childBasehashSalt, v16];
  }

  else
  {
    v17 = [(BRCPQLConnection *)clientDB execute:@"INSERT OR REPLACE INTO app_libraries (rowid, app_library_name, app_library_plist, zone_rowid)  VALUES (%@, %@, %@, %@)", dbRowID2, appLibraryID, plist, zoneRowID2];
  }

  return v17;
}

- (id)_appLibrariesEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v5 supportsEnhancedDrivePrivacy];

  if (supportsEnhancedDrivePrivacy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  if (self->_forDBDump)
  {
    userVersion = [enumeratorCopy userVersion];
    unsignedLongValue = [userVersion unsignedLongValue];

    if (unsignedLongValue >= 0x7544)
    {
      v7 = v7;
    }

    else
    {
      v7 = 2;
    }
  }

  v10 = [(BRCAccountSession *)self _appLibrariesEnumerator:enumeratorCopy version:v7];

  return v10;
}

- (id)_appLibrariesEnumerator:(id)enumerator version:(int)version
{
  if (version <= 2)
  {
    v7 = @"SELECT rowid, app_library_name, app_library_plist, zone_rowid FROM app_libraries";
  }

  else
  {
    v7 = @"SELECT rowid, app_library_name, app_library_plist, zone_rowid, child_basehash_salt, salting_state FROM app_libraries";
  }

  v8 = [enumerator fetch:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__BRCAccountSession_BRCDatabaseManager___appLibrariesEnumerator_version___block_invoke;
  v11[3] = &unk_2784FF8E8;
  v11[4] = self;
  versionCopy = version;
  v9 = [v8 enumerateObjects:v11];

  return v9;
}

id __73__BRCAccountSession_BRCDatabaseManager___appLibrariesEnumerator_version___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newAppLibraryFromPQLResultSet:a2 version:*(a1 + 40)];

  return v2;
}

- (id)_appLibraryByName:(id)name db:(id)db
{
  dbCopy = db;
  nameCopy = name;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v8 supportsEnhancedDrivePrivacy];

  if (supportsEnhancedDrivePrivacy)
  {
    v10 = @"SELECT rowid, app_library_name, app_library_plist, zone_rowid, child_basehash_salt, salting_state FROM app_libraries WHERE app_library_name = %@";
  }

  else
  {
    v10 = @"SELECT rowid, app_library_name, app_library_plist, zone_rowid FROM app_libraries WHERE app_library_name = %@";
  }

  v11 = [dbCopy fetch:{v10, nameCopy}];

  v12 = 0;
  if ([v11 next])
  {
    if (supportsEnhancedDrivePrivacy)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v12 = [(BRCAccountSession *)self newAppLibraryFromPQLResultSet:v11 version:v13];
  }

  return v12;
}

- (BOOL)_createClientZone:(id)zone
{
  zoneCopy = zone;
  dbRowID = [zoneCopy dbRowID];

  if (!dbRowID)
  {
    [BRCAccountSession(BRCDatabaseManager) _createClientZone:];
  }

  mangledID = [zoneCopy mangledID];
  ownerName = [mangledID ownerName];
  v8 = ownerName;
  v9 = *MEMORY[0x277CBBF28];
  if (ownerName)
  {
    v9 = ownerName;
  }

  v10 = v9;

  clientDB = self->_clientDB;
  dbRowID2 = [zoneCopy dbRowID];
  zoneName = [zoneCopy zoneName];
  plist = [zoneCopy plist];

  v15 = [(BRCPQLConnection *)clientDB execute:@"INSERT OR REPLACE INTO client_zones (rowid, zone_owner, zone_name, zone_plist) VALUES (%@, %@, %@, %@)", dbRowID2, v10, zoneName, plist];
  return v15;
}

- (BOOL)_deleteClientZone:(id)zone
{
  clientDB = self->_clientDB;
  dbRowID = [zone dbRowID];
  LOBYTE(clientDB) = [(BRCPQLConnection *)clientDB execute:@"DELETE FROM client_zones where rowid = %@", dbRowID];

  return clientDB;
}

- (id)newSharedClientZoneFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v6 = [setCopy numberAtIndex:0];
  v7 = [setCopy stringAtIndex:1];
  v8 = [setCopy stringAtIndex:2];
  v9 = [(BRCAccountSession *)self fixObfuscatedMangledID:v8];

  v10 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v9 ownerName:v7];
  v11 = _BRCClassesForContainerState(v10);
  v12 = [setCopy unarchivedObjectOfClasses:v11 atIndex:3];

  if (!v12)
  {
    [BRCAccountSession(BRCDatabaseManager) newSharedClientZoneFromPQLResultSet:error:];
  }

  v13 = [(BRCClientZone *)[BRCSharedClientZone alloc] initWithMangledID:v10 dbRowID:v6 plist:v12 session:self initialCreation:0];

  return v13;
}

- (id)_sharedClientZonesEnumerator
{
  clientDB = [(BRCAccountSession *)self clientDB];
  v4 = [clientDB fetch:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM client_zones WHERE zone_owner != %@", *MEMORY[0x277CBBF28]}];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__BRCAccountSession_BRCDatabaseManager___sharedClientZonesEnumerator__block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __69__BRCAccountSession_BRCDatabaseManager___sharedClientZonesEnumerator__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newSharedClientZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)newSharedServerZoneFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v6 = [setCopy numberAtIndex:0];
  v7 = [setCopy stringAtIndex:1];
  v8 = [setCopy stringAtIndex:2];
  v9 = [(BRCAccountSession *)self fixObfuscatedMangledID:v8];

  v10 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v9 ownerName:v7];
  v11 = _BRCClassesForContainerState(v10);
  v12 = [setCopy unarchivedObjectOfClasses:v11 atIndex:3];

  if (!v12)
  {
    [BRCAccountSession(BRCDatabaseManager) newSharedServerZoneFromPQLResultSet:error:];
  }

  v13 = [[BRCSharedServerZone alloc] initWithMangledID:v10 dbRowID:v6 plist:v12 session:self];

  return v13;
}

- (id)_sharedServerZonesEnumerator:(id)enumerator
{
  v4 = [enumerator fetch:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM server_zones WHERE zone_owner != %@", *MEMORY[0x277CBBF28]}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__BRCAccountSession_BRCDatabaseManager___sharedServerZonesEnumerator___block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __70__BRCAccountSession_BRCDatabaseManager___sharedServerZonesEnumerator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newSharedServerZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)_sharedServerZoneByName:(id)name ownerName:(id)ownerName db:(id)db
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__BRCAccountSession_BRCDatabaseManager___sharedServerZoneByName_ownerName_db___block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [db fetchObject:v7 sql:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM server_zones WHERE zone_owner = %@ AND zone_name = %@", ownerName, name}];

  return v5;
}

id __78__BRCAccountSession_BRCDatabaseManager___sharedServerZoneByName_ownerName_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newSharedServerZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)newPrivateClientZoneFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v6 = [setCopy numberAtIndex:0];
  v7 = [setCopy stringAtIndex:2];
  v8 = [(BRCAccountSession *)self fixObfuscatedMangledID:v7];

  v9 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v8 ownerName:0];
  v10 = _BRCClassesForContainerState(v9);
  v11 = [setCopy unarchivedObjectOfClasses:v10 atIndex:3];

  if (!v11)
  {
    [BRCAccountSession(BRCDatabaseManager) newPrivateClientZoneFromPQLResultSet:error:];
  }

  v12 = [[BRCPrivateClientZone alloc] initWithMangledID:v9 dbRowID:v6 plist:v11 session:self initialCreation:0];

  return v12;
}

- (id)_privateClientZonesEnumerator
{
  clientDB = [(BRCAccountSession *)self clientDB];
  v4 = [clientDB fetch:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM client_zones WHERE zone_owner = %@", *MEMORY[0x277CBBF28]}];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__BRCAccountSession_BRCDatabaseManager___privateClientZonesEnumerator__block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __70__BRCAccountSession_BRCDatabaseManager___privateClientZonesEnumerator__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newPrivateClientZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)_privateClientZoneByName:(id)name db:(id)db
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__BRCAccountSession_BRCDatabaseManager___privateClientZoneByName_db___block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [db fetchObject:v6 sql:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM client_zones WHERE zone_owner = %@ AND zone_name = %@ AND zone_plist IS NOT NULL", *MEMORY[0x277CBBF28], name}];

  return v4;
}

id __69__BRCAccountSession_BRCDatabaseManager___privateClientZoneByName_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newPrivateClientZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)_privateClientZoneByID:(id)d db:(id)db
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__BRCAccountSession_BRCDatabaseManager___privateClientZoneByID_db___block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [db fetchObject:v6 sql:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM client_zones WHERE zone_owner = %@ AND rowid = %@", *MEMORY[0x277CBBF28], d}];

  return v4;
}

id __67__BRCAccountSession_BRCDatabaseManager___privateClientZoneByID_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newPrivateClientZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)newPrivateServerZoneFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v6 = [setCopy numberAtIndex:0];
  v7 = [setCopy stringAtIndex:2];
  v8 = [(BRCAccountSession *)self fixObfuscatedMangledID:v7];

  v9 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v8 ownerName:0];
  v10 = _BRCClassesForContainerState(v9);
  v11 = [setCopy unarchivedObjectOfClasses:v10 atIndex:3];

  if (!v11)
  {
    [BRCAccountSession(BRCDatabaseManager) newPrivateServerZoneFromPQLResultSet:error:];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [BRCAccountSession(BRCDatabaseManager) newPrivateServerZoneFromPQLResultSet:error:];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [(BRCServerZone *)[BRCPrivateServerZone alloc] initWithMangledID:v9 dbRowID:v6 plist:v11 session:self];

  return v12;
}

- (id)_privateServerZoneByName:(id)name db:(id)db
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__BRCAccountSession_BRCDatabaseManager___privateServerZoneByName_db___block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [db fetchObject:v6 sql:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM server_zones WHERE zone_owner = %@ AND zone_name = %@", *MEMORY[0x277CBBF28], name}];

  return v4;
}

id __69__BRCAccountSession_BRCDatabaseManager___privateServerZoneByName_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newPrivateServerZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)_privateServerZonesEnumerator:(id)enumerator
{
  v4 = [enumerator fetch:{@"SELECT rowid, zone_owner, zone_name, zone_plist FROM server_zones WHERE zone_owner = %@", *MEMORY[0x277CBBF28]}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BRCAccountSession_BRCDatabaseManager___privateServerZonesEnumerator___block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __71__BRCAccountSession_BRCDatabaseManager___privateServerZonesEnumerator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newPrivateServerZoneFromPQLResultSet:a2 error:a3];

  return v3;
}

- (id)itemsNeedingIndexingEnumeratorFromNotifRank:(unint64_t)rank batchSize:(unint64_t)size db:(id)db
{
  dbCopy = db;
  v9 = [dbCopy fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items AS li   WHERE li.item_notifs_rank >= %lld     AND li.item_type != 3   ORDER BY li.item_notifs_rank ASC LIMIT %lld", rank, size}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__BRCAccountSession_BRCDatabaseManager__itemsNeedingIndexingEnumeratorFromNotifRank_batchSize_db___block_invoke;
  v13[3] = &unk_2784FF938;
  v13[4] = self;
  v14 = dbCopy;
  v10 = dbCopy;
  v11 = [v9 enumerateObjects:v13];

  return v11;
}

id __98__BRCAccountSession_BRCDatabaseManager__itemsNeedingIndexingEnumeratorFromNotifRank_batchSize_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 db:*(a1 + 40) error:a3];

  return v3;
}

- (void)_clearNeedsUpgradeErrorsWithBrVersion:(id)version
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(BRCDatabaseManager) _clearNeedsUpgradeErrorsWithBrVersion:];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _privateClientZonesEnumerator = [(BRCAccountSession *)self _privateClientZonesEnumerator];
  v7 = [_privateClientZonesEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(_privateClientZonesEnumerator);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if (([v11 state] & 0x200000) != 0)
        {
          [v11 _forDBUpgrade_setStateBits:16 clearStateBits:0x200000];
          [(BRCAccountSession *)self saveClientZoneToDB:v11];
        }
      }

      v8 = [_privateClientZonesEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  _sharedClientZonesEnumerator = [(BRCAccountSession *)self _sharedClientZonesEnumerator];
  v13 = [_sharedClientZonesEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(_sharedClientZonesEnumerator);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        if (([v17 state] & 0x200000) != 0)
        {
          [v17 _forDBUpgrade_setStateBits:16 clearStateBits:0x200000];
          [(BRCAccountSession *)self saveClientZoneToDB:v17];
        }
      }

      v14 = [_sharedClientZonesEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  clientDB = [(BRCAccountSession *)self clientDB];
  [clientDB execute:@"UPDATE client_items SET item_min_supported_os_rowid = NULL  WHERE item_localsyncupstate = 4 AND item_localsyncupstate != 0"];
}

+ (void)_registerLastBootIfNeeded:(id)needed table:(id)table skipControlFiles:(BOOL)files dbCreationDate:(id *)date deviceIDChanged:(BOOL *)changed
{
  filesCopy = files;
  neededCopy = needed;
  tableCopy = table;
  v12 = OSVersion();
  v13 = BRVersion();
  userVersion = [neededCopy userVersion];
  v14 = MEMORY[0x277CBEBC0];
  br_currentSupportDir = [MEMORY[0x277CCACA8] br_currentSupportDir];
  v16 = [br_currentSupportDir stringByAppendingPathComponent:@"device-tracking"];
  v17 = [v14 fileURLWithPath:v16 isDirectory:0];

  v37 = 0;
  dateCopy = date;
  if (file_id_from_control_file([v17 fileSystemRepresentation], &v37, filesCopy) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", v37), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[BRCAccountSession(BRCDatabaseManager) _registerLastBootIfNeeded:table:skipControlFiles:dbCreationDate:deviceIDChanged:];
    }

    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = 1;
  }

  v22 = [neededCopy fetch:{@"SELECT os, br, bird_schema, db_schema, device_id FROM %@ ORDER BY rowid DESC LIMIT 1", tableCopy}];
  if (![v22 next])
  {
    [v22 close];
LABEL_24:
    [neededCopy execute:{@"INSERT INTO %@ (date, os, br, bird_schema, db_schema, device_id) VALUES (%lu, %@, %@, %u, %@, %@)", tableCopy, time(0), v12, v13, 34000, userVersion, v21}];
    goto LABEL_25;
  }

  v23 = 1;
  v33 = [v22 stringAtIndex:1];
  v24 = [v22 stringAtIndex:0];
  if ([v12 isEqualToString:v24] && objc_msgSend(v13, "isEqualToString:", v33) && objc_msgSend(v22, "unsignedIntAtIndex:", 2) == 34000)
  {
    v32 = [v22 numberAtIndex:3];
    v25 = [userVersion br_isEqualToNumber:?];
    if ((v20 & v25) == 1)
    {
      v31 = [v22 numberAtIndex:4];
      LOBYTE(v25) = [v21 br_isEqualToNumber:v31];
    }

    v23 = v25 ^ 1;
  }

  if (changed)
  {
    v26 = [v22 numberAtIndex:4];
    if (v26)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0;
    }

    if (v27 == 1)
    {
      v28 = [v21 br_isEqualToNumber:v26] ^ 1;
    }

    else
    {
      v28 = 0;
    }

    *changed = v28;
  }

  [v22 close];
  if (v23)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (dateCopy)
  {
    v29 = [neededCopy numberWithSQL:{@"SELECT date FROM %@ ORDER BY rowid ASC LIMIT 1", tableCopy}];
    v30 = v29;
    if (v29)
    {
      *dateCopy = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v29, "intValue")}];
    }
  }
}

- (int64_t)lastBootHistoryTime
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(PQLConnection *)self->_clientDB numberWithSQL:@"SELECT date FROM boot_history ORDER BY rowid DESC LIMIT 1"];
  longValue = [v3 longValue];

  return longValue;
}

+ (BOOL)_checkIntegrity:(id)integrity serverTruth:(BOOL)truth session:(id)session skipControlFiles:(BOOL)files dbCreationDate:(id *)date deviceIDChanged:(BOOL *)changed error:(id *)error
{
  filesCopy = files;
  truthCopy = truth;
  v58 = *MEMORY[0x277D85DE8];
  integrityCopy = integrity;
  sessionCopy = session;
  v50 = 0uLL;
  v51 = 0;
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[BRCAccountSession(BRCDatabaseManager) _checkIntegrity:serverTruth:session:skipControlFiles:dbCreationDate:deviceIDChanged:error:];
  }

  if (truthCopy)
  {
    v19 = [integrityCopy numberWithSQL:@"SELECT count(*) FROM server_state"];
    if ([v19 br_isEqualToNumber:&unk_2837AFFF8])
    {
      v20 = [MEMORY[0x277D82C10] nameWithString:@"server_boot_history"];
      [self _registerLastBootIfNeeded:integrityCopy table:v20 skipControlFiles:filesCopy dbCreationDate:date deviceIDChanged:changed];

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_44:
      v30 = 1;
      goto LABEL_47;
    }

    v26 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:@"missing entry in the server_state table"];
    if (v26)
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, 0x90u))
      {
        v43 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "+[BRCAccountSession(BRCDatabaseManager) _checkIntegrity:serverTruth:session:skipControlFiles:dbCreationDate:deviceIDChanged:error:]";
        *&buf[12] = 2080;
        if (!error)
        {
          v43 = "(ignored by caller)";
        }

        *&buf[14] = v43;
        *&buf[22] = 2112;
        v53 = v26;
        v54 = 2112;
        v55 = v27;
        _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v29 = v26;
      *error = v26;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v30 = 0;
    goto LABEL_47;
  }

  if (sessionCopy)
  {
    v25 = [integrityCopy fetch:{@"SELECT old, new, counter, os, br FROM backup_detector"}];
    if ([v25 next])
    {
      *&v50 = [v25 unsignedLongLongAtIndex:0];
      *(&v50 + 1) = [v25 unsignedLongLongAtIndex:1];
      v51 = [v25 unsignedLongLongAtIndex:2];
      v49 = [v25 stringAtIndex:3];
      v23 = [v25 stringAtIndex:4];
    }

    else
    {
      v23 = 0;
      v49 = 0;
    }

    [v25 close];
    if (!filesCopy)
    {
      *buf = v50;
      *&buf[16] = v51;
      if (![sessionCopy _stepBackupDetector:buf newState:&v50 error:error])
      {
        v19 = 0;
        v21 = 0;
        v22 = 0;
LABEL_46:
        v30 = 0;
        v24 = v49;
        goto LABEL_47;
      }
    }

    errorCopy2 = error;
  }

  else
  {
    errorCopy2 = error;
    v23 = 0;
    v49 = 0;
    v25 = 0;
  }

  v48 = OSVersion();
  v21 = BRVersion();
  if (([v23 isEqualToString:v21] & 1) == 0)
  {
    [sessionCopy _clearNeedsUpgradeErrorsWithBrVersion:v21];
  }

  if (sessionCopy && ([integrityCopy execute:{@"UPDATE backup_detector set old = %llu, new = %llu, counter = %llu, br = %@", v50, v51, v21}] & 1) == 0)
  {
    lastError = [integrityCopy lastError];
    if (lastError)
    {
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, 0x90u))
      {
        v45 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "+[BRCAccountSession(BRCDatabaseManager) _checkIntegrity:serverTruth:session:skipControlFiles:dbCreationDate:deviceIDChanged:error:]";
        *&buf[12] = 2080;
        if (!errorCopy2)
        {
          v45 = "(ignored by caller)";
        }

        *&buf[14] = v45;
        *&buf[22] = 2112;
        v53 = lastError;
        v54 = 2112;
        v55 = v37;
        _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (errorCopy2)
    {
      v39 = lastError;
      *errorCopy2 = lastError;
    }

    v19 = 0;
    v30 = 0;
    v22 = v48;
    v24 = v49;
    goto LABEL_47;
  }

  v19 = [integrityCopy numberWithSQL:@"SELECT count(*) FROM client_state"];
  if (([v19 br_isEqualToNumber:&unk_2837AFFF8] & 1) == 0)
  {
    v32 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:@"missing entry in the client_state table"];
    v22 = v48;
    if (v32)
    {
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, 0x90u))
      {
        v44 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "+[BRCAccountSession(BRCDatabaseManager) _checkIntegrity:serverTruth:session:skipControlFiles:dbCreationDate:deviceIDChanged:error:]";
        *&buf[12] = 2080;
        if (!errorCopy2)
        {
          v44 = "(ignored by caller)";
        }

        *&buf[14] = v44;
        *&buf[22] = 2112;
        v53 = v32;
        v54 = 2112;
        v55 = v33;
        _os_log_error_impl(&dword_223E7A000, v34, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (errorCopy2)
    {
      v35 = v32;
      *errorCopy2 = v32;
    }

    goto LABEL_46;
  }

  v47 = sessionCopy;
  v31 = [MEMORY[0x277D82C10] nameWithString:@"boot_history"];
  [self _registerLastBootIfNeeded:integrityCopy table:v31 skipControlFiles:filesCopy dbCreationDate:date deviceIDChanged:changed];

  v22 = v48;
  v24 = v49;
  if (![v49 isEqualToString:v48] || (objc_msgSend(v23, "isEqualToString:", v21) & 1) == 0)
  {
    v40 = brc_bread_crumbs();
    v41 = brc_default_log();
    sessionCopy = v47;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v49;
      *&buf[22] = 2112;
      v53 = v21;
      v54 = 2112;
      v55 = v48;
      v56 = 2112;
      v57 = v40;
      _os_log_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEFAULT, "[NOTICE] CloudDocs was upgraded from [%@ on %@] to [%@ on %@]%@", buf, 0x34u);
    }

    if (v47)
    {
      [integrityCopy execute:{@"UPDATE backup_detector SET os = %@", v48}];
    }

    goto LABEL_44;
  }

  v30 = 1;
  sessionCopy = v47;
LABEL_47:

  return v30;
}

- (void)_loadClientStateFromClientDB
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(BRCDatabaseManager) _loadClientStateFromClientDB];
  }

  clientReadWriteDatabaseFacade = self->_clientReadWriteDatabaseFacade;
  v14 = 0;
  v15 = 0;
  [(BRCClientDatabaseFacade *)clientReadWriteDatabaseFacade clientStateData:&v15 clientStateDictionary:&v14 silent:0];
  v6 = v15;
  v7 = v14;
  v8 = [BRCClientState alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__BRCAccountSession_BRCDatabaseManager___loadClientStateFromClientDB__block_invoke;
  v13[3] = &unk_2784FF450;
  v13[4] = self;
  v9 = [(BRCClientState *)v8 initWithDictionary:v7 clientStateData:v6 scheduleFlushBlock:v13];
  clientState = self->_clientState;
  self->_clientState = v9;

  if (v7)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession(BRCDatabaseManager) _loadClientStateFromClientDB];
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      [BRCAccountSession(BRCDatabaseManager) _loadClientStateFromClientDB];
    }
  }
}

- (BOOL)_finishClientTruthConnectionSetupWithError:(id *)error
{
  v4 = self->_clientDB;
  [(BRCAccountSession *)self _loadClientStateFromClientDB];
  v5 = [(PQLConnection *)v4 stringWithSQL:@"SELECT uuid FROM backup_detector"];
  databaseID = self->_databaseID;
  self->_databaseID = v5;

  if (!self->_databaseID)
  {
    [BRCAccountSession(BRCDatabaseManager) _finishClientTruthConnectionSetupWithError:];
  }

  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke;
  v20[3] = &unk_2784FF9B0;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  [(BRCPQLConnection *)v4 setPreFlushHook:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2;
  v18[3] = &unk_2784FF9F8;
  objc_copyWeak(&v19, &location);
  [(BRCPQLConnection *)v4 setPostFlushHook:v18];
  autoRollbackHandler = [(BRCPQLConnection *)v4 autoRollbackHandler];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_277;
  v15 = &unk_2784FFA20;
  objc_copyWeak(&v17, &location);
  v8 = autoRollbackHandler;
  v16 = v8;
  [(BRCPQLConnection *)v4 setAutoRollbackHandler:&v12];
  [(BRCPQLConnection *)v4 execute:@"CREATE TEMP TRIGGER child_item_count_notifs  AFTER UPDATE OF visible_child_count ON main.client_items  BEGIN  UPDATE client_items SET item_notifs_rank = bump_notifs_rank_and_trigger_notifs(old.rowid)   WHERE old.visible_child_count != new.visible_child_count     AND rowid = old.rowid     AND item_type = 0 ; END", v12, v13, v14, v15];
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  [v9 dbBatchDelay];
  -[BRCPQLConnection usePacedBatchingOnTargetQueue:withInterval:changeCount:](v4, "usePacedBatchingOnTargetQueue:withInterval:changeCount:", self->_clientTruthWorkloop, [v9 dbBatchSize], v10);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return 1;
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_1();
  }

  if (([WeakRetained isCancelled] & 1) == 0)
  {
    memset(v27, 0, sizeof(v27));
    __brc_create_section(0, "[BRCAccountSession(BRCDatabaseManager) _finishClientTruthConnectionSetupWithError:]_block_invoke", 1350, 0, v27);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_2();
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_265;
    v25[3] = &unk_2784FF960;
    objc_copyWeak(&v26, (a1 + 40));
    [WeakRetained enumerateServerZones:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_267;
    v23[3] = &unk_2784FF988;
    objc_copyWeak(&v24, (a1 + 40));
    [WeakRetained enumerateAppLibraries:v23];
    v7 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:WeakRetained];
    v8 = [v7 getAndClearIsNotifRankChanged];

    if (v8)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] We have changes in the notification rank, need to make this flush as checkpoint%@", buf, 0xCu);
      }

      [v3 br_makeNextFlushCheckpoint];
    }

    v11 = WeakRetained[29];
    v12 = [v11 dataPendingSave];
    if (v12)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v11;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] Saving client state data: %@%@", buf, 0x16u);
      }

      v15 = [WeakRetained clientReadWriteDatabaseFacade];
      v16 = [v15 updateClientStateData:v12];

      if ((v16 & 1) == 0)
      {
        if ([*(a1 + 32) isDataSeparated])
        {
          v17 = brc_bread_crumbs();
          v18 = brc_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_4();
          }

          exit(0);
        }

        abc_report_panic_with_signature();
        [MEMORY[0x277CCACA8] stringWithFormat:@"unable to flush client state, crash to maintain consistency"];
        objc_claimAutoreleasedReturnValue();
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          v21 = brc_append_system_info_to_message();
          __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_3(v21, v19, buf, v20);
        }

        brc_append_system_info_to_message();
        v22 = [objc_claimAutoreleasedReturnValue() UTF8String];
        __assert_rtn("[BRCAccountSession(BRCDatabaseManager) _finishClientTruthConnectionSetupWithError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseManager.m", 1385, v22);
      }
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    __brc_leave_section(v27);
  }
}

uint64_t __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_265(uint64_t a1, void *a2)
{
  v3 = [a2 clientZone];
  if ([v3 needsSave])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained saveClientZoneToDB:v3];

    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_265_cold_1();
    }
  }

  return 1;
}

uint64_t __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_267(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 needsSave])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained clientReadWriteDatabaseFacade];
    [v5 saveAppLibrary:v3];

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_267_cold_1();
    }
  }

  return 1;
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_cold_1();
  }

  if (([WeakRetained isCancelled] & 1) == 0)
  {
    memset(v11, 0, sizeof(v11));
    __brc_create_section(0, "[BRCAccountSession(BRCDatabaseManager) _finishClientTruthConnectionSetupWithError:]_block_invoke", 1397, 0, v11);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_cold_2();
    }

    v7 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:WeakRetained];
    v8 = [v7 nextNotifRank];

    v9 = [WeakRetained notificationManager];
    [v9 flushUpdatesWithRank:v8];

    [WeakRetained enumerateClientZones:&__block_literal_global_276];
    v10 = [WeakRetained recentsEnumerator];
    [v10 maxNotifRankWasFlushed];

    __brc_leave_section(v11);
  }
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_277(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v7 domain];
  if (v10 == *MEMORY[0x277D82C20])
  {
    v11 = [v7 code];

    if (v11 != 13)
    {
      goto LABEL_7;
    }

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_277_cold_1();
    }

    v10 = +[BRCDaemon daemon];
    [v10 restart];
  }

LABEL_7:
  if ([v7 brc_isDatabaseRemovalError])
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_277_cold_2();
    }

    v16 = +[BRCDaemon daemon];
    [v16 restart];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, 0x90u))
  {
    v21 = 138412802;
    v22 = WeakRetained;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v18;
    _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %@ - Got error: %@. Invalidating the extension...%@", &v21, 0x20u);
  }

  [WeakRetained invalidateExtensionXPCClient];
  v20 = [v9 sqliteErrorHandler];
  (v20)[2](v20, v9, v8, v7);

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_finishServerTruthConnectionSetupWithError:(id *)error
{
  serverDB = self->_serverDB;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__BRCAccountSession_BRCDatabaseManager___finishServerTruthConnectionSetupWithError___block_invoke;
  v5[3] = &unk_2784FFA48;
  v5[4] = self;
  return [(BRCPQLConnection *)serverDB performWithFlags:1 action:v5];
}

uint64_t __84__BRCAccountSession_BRCDatabaseManager___finishServerTruthConnectionSetupWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetch:@"SELECT state FROM server_state"];
  if (([v4 next] & 1) == 0)
  {
    v6 = [v3 lastError];
    if (v6)
    {
      v10 = v6;
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"there should always be one row in server_state: %@", v10];
      objc_claimAutoreleasedReturnValue();
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) _startWatcher];
      }

      brc_append_system_info_to_message();
      v13 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountSession(BRCDatabaseManager) _finishServerTruthConnectionSetupWithError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseManager.m", 1483, v13);
    }

    [v4 close];
    goto LABEL_6;
  }

  v5 = [v4 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
  [v4 close];
  if (!v5)
  {
LABEL_6:
    v5 = objc_alloc_init(BRCServerPersistedState);
    [(BRCServerPersistedState *)v5 saveToDB:v3];
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 240);
  *(v7 + 240) = v5;

  return 1;
}

- (BOOL)openAndValidateDatabase:(id)database serverTruth:(BOOL)truth initialVersion:(unsigned int *)version lastCurrentVersion:(unsigned int *)currentVersion deviceIDChanged:(BOOL *)changed error:(id *)error
{
  truthCopy = truth;
  dbCreationDate = database;
  v15 = objc_opt_class();
  dbURL = self->_dbURL;
  if (truthCopy)
  {
    LOBYTE(version) = [v15 openAndValidateDatabase:dbCreationDate serverTruth:1 session:self baseURL:dbURL skipControlFiles:0 initialVersion:version lastCurrentVersion:currentVersion dbCreationDate:0 deviceIDChanged:changed error:error];
    v17 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v21 = 0;
  LODWORD(version) = [v15 openAndValidateDatabase:dbCreationDate serverTruth:0 session:self baseURL:dbURL skipControlFiles:0 initialVersion:version lastCurrentVersion:currentVersion dbCreationDate:&v21 deviceIDChanged:changed error:error];

  v18 = v21;
  v17 = v18;
  if (version)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v17 = v18;
    dbCreationDate = self->_dbCreationDate;
    self->_dbCreationDate = v17;
    LOBYTE(version) = 1;
    goto LABEL_8;
  }

LABEL_9:

  return version;
}

+ (BOOL)openAndValidateDatabase:(id)database serverTruth:(BOOL)truth session:(id)session baseURL:(id)l skipControlFiles:(BOOL)files initialVersion:(unsigned int *)version lastCurrentVersion:(unsigned int *)currentVersion dbCreationDate:(id *)self0 deviceIDChanged:(BOOL *)self1 error:(id *)self2
{
  truthCopy = truth;
  v56 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  sessionCopy = session;
  lCopy = l;
  v21 = @"client.db";
  if (truthCopy)
  {
    v21 = @"server.db";
  }

  v22 = v21;
  v45 = 0;
  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    *&buf[22] = 2112;
    v53 = v23;
    _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Opening DB %@ in base URL: %@%@", buf, 0x20u);
  }

  if ([self _openConnection:databaseCopy serverTruth:truthCopy databaseName:v22 baseURL:lCopy initialVersion:&v45 + 4 lastCurrentVersion:&v45 error:error])
  {
    if (version)
    {
      *version = HIDWORD(v45);
    }

    if (currentVersion)
    {
      *currentVersion = v45;
    }

    if (HIDWORD(v45) >> 4 >= 0x753)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[BRCAccountSession(BRCDatabaseManager) openAndValidateDatabase:serverTruth:session:baseURL:skipControlFiles:initialVersion:lastCurrentVersion:dbCreationDate:deviceIDChanged:error:];
      }

      files = 1;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = __Block_byref_object_copy__1;
    v54 = __Block_byref_object_dispose__1;
    v55 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __181__BRCAccountSession_BRCDatabaseManager__openAndValidateDatabase_serverTruth_session_baseURL_skipControlFiles_initialVersion_lastCurrentVersion_dbCreationDate_deviceIDChanged_error___block_invoke;
    v33[3] = &unk_2784FFA70;
    v34 = databaseCopy;
    selfCopy = self;
    v35 = lCopy;
    v27 = sessionCopy;
    v43 = truthCopy;
    v41 = HIDWORD(v45);
    v42 = v45;
    v36 = v27;
    v37 = buf;
    filesCopy = files;
    dateCopy = date;
    changedCopy = changed;
    v28 = [v34 performWithFlags:10 action:v33];
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(*&buf[8] + 40);
      *v46 = 138412802;
      v47 = v22;
      v48 = 2112;
      v49 = v32;
      v50 = 2112;
      v51 = v29;
      _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Done with %@ DB: error: %@%@", v46, 0x20u);
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

uint64_t __181__BRCAccountSession_BRCDatabaseManager__openAndValidateDatabase_serverTruth_session_baseURL_skipControlFiles_initialVersion_lastCurrentVersion_dbCreationDate_deviceIDChanged_error___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) execute:@"PRAGMA recursive_triggers = true"] & 1) == 0)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __181__BRCAccountSession_BRCDatabaseManager__openAndValidateDatabase_serverTruth_session_baseURL_skipControlFiles_initialVersion_lastCurrentVersion_dbCreationDate_deviceIDChanged_error___block_invoke_cold_1();
    }
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 96);
  v8 = *(a1 + 88);
  v9 = *(a1 + 92);
  v10 = *(a1 + 48);
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  v12 = [v4 _validateDatabase:v5 baseURL:v6 session:v10 serverTruth:v7 initialVersion:v8 lastCurrentVersion:v9 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 96);
  v15 = *(a1 + 97);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  v19 = *(a1 + 48);
  v20 = *(*(a1 + 56) + 8);
  v28 = *(v20 + 40);
  v21 = [v16 _checkIntegrity:v13 serverTruth:v14 session:v19 skipControlFiles:v15 dbCreationDate:v17 deviceIDChanged:v18 error:&v28];
  objc_storeStrong((v20 + 40), v28);
  if (!v21)
  {
    return 0;
  }

  v22 = *(a1 + 48);
  if (!v22)
  {
    return 1;
  }

  v23 = *(a1 + 32);
  v24 = *(*(a1 + 56) + 8);
  v27 = *(v24 + 40);
  v25 = [v22 _registerDynamicDBFunctions:v23 error:&v27];
  objc_storeStrong((v24 + 40), v27);
  return v25;
}

+ (BOOL)_openConnection:(id)connection serverTruth:(BOOL)truth databaseName:(id)name baseURL:(id)l initialVersion:(unsigned int *)version lastCurrentVersion:(unsigned int *)currentVersion error:(id *)error
{
  errorCopy2 = error;
  v98 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  nameCopy = name;
  lCopy = l;
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
  }

  v93 = 0;
  v20 = [BRCAccountSession _openConnection:connectionCopy databaseName:nameCopy baseURL:lCopy readonly:0 error:&v93];
  v21 = v93;
  if (!v20)
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, 0x90u))
    {
      +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
    }

    if (error)
    {
      v33 = v21;
      v34 = 0;
      *error = v21;
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_68;
  }

  userVersion = [connectionCopy userVersion];
  unsignedIntValue = [userVersion unsignedIntValue];

  if (!unsignedIntValue)
  {
    v35 = 0;
    unsignedIntValue2 = 0;
    if (truth)
    {
LABEL_63:
      if (!version)
      {
LABEL_65:
        if (currentVersion)
        {
          *currentVersion = unsignedIntValue2;
        }

        v34 = 1;
LABEL_68:
        v52 = v21;
        goto LABEL_69;
      }

LABEL_64:
      *version = v35;
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  versionCopy = version;
  v24 = +[BRCEventsAnalytics sharedAnalytics];
  v25 = v24;
  if ((unsignedIntValue - 3000) > 0x3EA)
  {
    if (unsignedIntValue > 0x75)
    {
      if (unsignedIntValue < 0x84D1 || (unsignedIntValue - 34000) < 0x3E8)
      {

        goto LABEL_56;
      }

      truthCopy3 = truth;
      v76 = unsignedIntValue / 0x3E8uLL;
      v77 = brc_bread_crumbs();
      v78 = brc_default_log();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
      }

      [BRCDatabaseFromTheFutureException raise:@"DatabaseFromTheFuture" format:@"database has a major version from the future: %d (want at most %d)", v76, 34];
    }

    else
    {
      truthCopy3 = truth;
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
      }

      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"old-db-%d.%03d", 0, unsignedIntValue];
      [v25 registerAndSendNewContainerResetWithOutcome:v39];
    }
  }

  else
  {
    truthCopy3 = truth;
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    v28 = unsignedIntValue / 0x3E8u;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109634;
      *v95 = unsignedIntValue / 0x3E8u;
      v29 = unsignedIntValue % 0x3E8u;
      *&v95[4] = 1024;
      *&v95[6] = v29;
      *&v95[10] = 2112;
      *&v95[12] = v26;
      _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] Internal users only version %d.%03d has seen an ulterior change and needs to be reset%@", buf, 0x18u);
    }

    else
    {
      v29 = unsignedIntValue % 0x3E8u;
    }

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"internal-db-%d.%03d", v28, v29];
    [v25 registerAndSendNewContainerResetWithOutcome:v30];

    errorCopy2 = error;
  }

  v92 = 61;
  v40 = sqlite3_file_control([connectionCopy dbHandle], 0, 101, &v92);
  v41 = 0x2784FD000uLL;
  if (v40)
  {
    v42 = v40;
    v43 = brc_bread_crumbs();
    v44 = brc_default_log();
    if (os_log_type_enabled(v44, 0x90u))
    {
      v79 = sqlite3_errmsg([connectionCopy dbHandle]);
      *buf = 67109634;
      *v95 = v42;
      *&v95[4] = 2080;
      *&v95[6] = v79;
      *&v95[14] = 2112;
      *&v95[16] = v43;
      _os_log_error_impl(&dword_223E7A000, v44, 0x90u, "[ERROR] unable to truncate database: %d; %s%@", buf, 0x1Cu);
    }

    [connectionCopy brc_close];
    v45 = [connectionCopy url];
    v46 = unlink([v45 fileSystemRepresentation]);

    if (v46 < 0)
    {
      v47 = *__error();
      v48 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, 0x90u))
      {
        v82 = [connectionCopy url];
        *buf = 138412802;
        *v95 = v82;
        *&v95[8] = 1024;
        *&v95[10] = v47;
        *&v95[14] = 2112;
        *&v95[16] = v48;
        _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] can't unlink '%@' %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v47;
      v41 = 0x2784FD000;
    }
  }

  else
  {
    [connectionCopy brc_close];
  }

  v50 = *(v41 + 2368);
  v91 = v21;
  v51 = [v50 _openConnection:connectionCopy databaseName:nameCopy baseURL:lCopy readonly:0 error:&v91];
  v52 = v91;

  if ((v51 & 1) == 0)
  {
    v60 = brc_bread_crumbs();
    v61 = brc_default_log();
    if (os_log_type_enabled(v61, 0x90u))
    {
      +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
    }

    if (errorCopy2)
    {
      v62 = v52;
      *errorCopy2 = v52;
    }

    goto LABEL_51;
  }

  userVersion2 = [connectionCopy userVersion];
  unsignedIntValue = [userVersion2 unsignedIntValue];

  truth = truthCopy3;
  if (!unsignedIntValue)
  {
LABEL_55:
    v21 = v52;
LABEL_56:
    version = versionCopy;
    if (truth)
    {
      if (unsignedIntValue)
      {
        v70 = @"SELECT bird_schema FROM server_boot_history ORDER BY rowid DESC LIMIT 1";
LABEL_62:
        v74 = [connectionCopy numberWithSQL:v70];
        unsignedIntValue2 = [v74 unsignedIntValue];

        v35 = unsignedIntValue;
        goto LABEL_63;
      }

      goto LABEL_70;
    }

LABEL_59:
    v71 = [lCopy URLByAppendingPathComponent:@"server.db"];
    path = [v71 path];
    v73 = [connectionCopy attachDBAtPath:path as:@"server" error:errorCopy2];

    if ((v73 & 1) == 0)
    {
      abc_report_panic_with_signature();
      v84 = MEMORY[0x277CCACA8];
      lastError = [connectionCopy lastError];
      [v84 stringWithFormat:@"we should be able to attach the server db {%@}", lastError];
      objc_claimAutoreleasedReturnValue();

      v86 = brc_bread_crumbs();
      v87 = brc_default_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) _startWatcher];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("+[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseManager.m", 1611, uTF8String);
    }

    if (unsignedIntValue)
    {
      v70 = @"SELECT bird_schema FROM boot_history ORDER BY rowid DESC LIMIT 1";
      goto LABEL_62;
    }

LABEL_70:
    v35 = 0;
    unsignedIntValue2 = 0;
    if (!version)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v54 = +[BRCEventsAnalytics sharedAnalytics];
  v55 = v54;
  if ((unsignedIntValue - 3000) > 0x3EA)
  {
    if (unsignedIntValue <= 0x75)
    {
      v63 = brc_bread_crumbs();
      v64 = brc_default_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
      {
        +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
      }

      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"old-db-%d.%03d", 0, unsignedIntValue];
      [v55 registerAndSendNewContainerResetWithOutcome:v65];

      goto LABEL_45;
    }

    if (unsignedIntValue >= 0x84D1 && (unsignedIntValue - 34000) >= 0x3E8)
    {
      v80 = brc_bread_crumbs();
      v81 = brc_default_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
      {
        +[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:];
      }

      [BRCDatabaseFromTheFutureException raise:@"DatabaseFromTheFuture" format:@"database has a major version from the future: %d (want at most %d)", unsignedIntValue / 0x3E8uLL, 34];
      goto LABEL_45;
    }

    goto LABEL_55;
  }

  v56 = brc_bread_crumbs();
  v57 = brc_default_log();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109634;
    *v95 = unsignedIntValue / 0x3E8u;
    v58 = unsignedIntValue % 0x3E8u;
    *&v95[4] = 1024;
    *&v95[6] = unsignedIntValue % 0x3E8u;
    *&v95[10] = 2112;
    *&v95[12] = v56;
    _os_log_fault_impl(&dword_223E7A000, v57, OS_LOG_TYPE_FAULT, "[CRIT] Internal users only version %d.%03d has seen an ulterior change and needs to be reset%@", buf, 0x18u);
  }

  else
  {
    v58 = unsignedIntValue % 0x3E8u;
  }

  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"internal-db-%d.%03d", unsignedIntValue / 0x3E8u, v58];
  [v55 registerAndSendNewContainerResetWithOutcome:v59];

LABEL_45:
  v66 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:70 description:@"db is stale even after recreating"];
  if (v66)
  {
    v67 = brc_bread_crumbs();
    v68 = brc_default_log();
    if (os_log_type_enabled(v68, 0x90u))
    {
      v83 = "(passed to caller)";
      *buf = 136315906;
      *v95 = "+[BRCAccountSession(BRCDatabaseManager) _openConnection:serverTruth:databaseName:baseURL:initialVersion:lastCurrentVersion:error:]";
      *&v95[8] = 2080;
      if (!errorCopy2)
      {
        v83 = "(ignored by caller)";
      }

      *&v95[10] = v83;
      *&v95[18] = 2112;
      *&v95[20] = v66;
      v96 = 2112;
      v97 = v67;
      _os_log_error_impl(&dword_223E7A000, v68, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (errorCopy2)
  {
    v69 = v66;
    *errorCopy2 = v66;
  }

LABEL_51:
  v34 = 0;
LABEL_69:

  return v34;
}

+ (BOOL)_validateDatabase:(id)database baseURL:(id)l session:(id)session serverTruth:(BOOL)truth initialVersion:(unsigned int)version lastCurrentVersion:(unsigned int)currentVersion error:(id *)error
{
  truthCopy = truth;
  v83 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  lCopy = l;
  sessionCopy = session;
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[BRCAccountSession(BRCDatabaseManager) _validateDatabase:baseURL:session:serverTruth:initialVersion:lastCurrentVersion:error:];
  }

  v73 = os_transaction_create();
  v16 = off_28374EAC8;
  if (off_28374EAC8)
  {
    v17 = 1;
    v18 = internal_fixups;
    do
    {
      v19 = *v18;
      if (v19 > version)
      {
        break;
      }

      if (v19 == version)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v80 = currentVersion;
          *&v80[4] = 1024;
          *&v80[6] = version;
          *&v80[10] = 2112;
          *&v80[12] = v20;
          _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[NOTICE] doing an internal fixup from %d to %d%@", buf, 0x18u);
        }

        v78[0] = 0;
        v22 = objc_autoreleasePoolPush();
        v23 = (v16)(sessionCopy, databaseCopy, truthCopy, v78);
        objc_autoreleasePoolPop(v22);
        if ((v23 & 1) == 0)
        {
          v61 = brc_bread_crumbs();
          v62 = brc_default_log();
          if (os_log_type_enabled(v62, 0x90u))
          {
            *buf = 67109890;
            *v80 = currentVersion;
            *&v80[4] = 1024;
            *&v80[6] = version;
            *&v80[10] = 2112;
            *&v80[12] = v78[0];
            *&v80[20] = 2112;
            *&v80[22] = v61;
            _os_log_error_impl(&dword_223E7A000, v62, 0x90u, "[ERROR] can't internal fixup from version %d to %d: %@%@", buf, 0x22u);
          }

          v44 = databaseCopy;
          if (error)
          {
            *error = v78[0];
          }

          v63 = v78[0];
LABEL_82:

          v47 = 0;
LABEL_83:
          v45 = v73;
          v48 = lCopy;
          goto LABEL_84;
        }
      }

      v18 = &internal_fixups[4 * v17];
      v16 = *(v18 + 1);
      ++v17;
    }

    while (v16);
  }

  v24 = off_28374EAF8;
  if (off_28374EAF8)
  {
    v25 = 1;
    v26 = schema_fixups;
    do
    {
      v27 = *v26;
      if (*v26 > version)
      {
        break;
      }

      if (v27 > currentVersion)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v80 = currentVersion;
          *&v80[4] = 1024;
          *&v80[6] = v27;
          *&v80[10] = 2112;
          *&v80[12] = v28;
          _os_log_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEFAULT, "[NOTICE] fixuping database from version %d to %d%@", buf, 0x18u);
        }

        v78[0] = 0;
        v30 = objc_autoreleasePoolPush();
        v31 = (v24)(sessionCopy, databaseCopy, truthCopy, v78);
        objc_autoreleasePoolPop(v30);
        if ((v31 & 1) == 0)
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, 0x90u))
          {
            *buf = 67109890;
            *v80 = currentVersion;
            *&v80[4] = 1024;
            *&v80[6] = v27;
            *&v80[10] = 2112;
            *&v80[12] = v78[0];
            *&v80[20] = 2112;
            *&v80[22] = v64;
            _os_log_error_impl(&dword_223E7A000, v65, 0x90u, "[ERROR] can't fixup from version %d to %d: %@%@", buf, 0x22u);
          }

          if (error)
          {
LABEL_68:
            *error = v78[0];
          }

LABEL_69:

          v47 = 0;
          v44 = databaseCopy;
          goto LABEL_83;
        }
      }

      v26 = &schema_fixups[4 * v25];
      v24 = *(v26 + 1);
      ++v25;
    }

    while (v24);
  }

  v32 = off_28374EB78;
  if (off_28374EB78)
  {
    v33 = 0;
    v34 = range_fixups;
    do
    {
      v35 = *v34;
      v36 = v34[1];
      if (*v34 <= version && v36 >= version)
      {
        v38 = brc_bread_crumbs();
        v39 = brc_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110146;
          *v80 = v33;
          *&v80[4] = 1024;
          *&v80[6] = version;
          *&v80[10] = 1024;
          *&v80[12] = v35;
          *&v80[16] = 1024;
          *&v80[18] = v36;
          *&v80[22] = 2112;
          *&v80[24] = v38;
          _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEFAULT, "[NOTICE] running fixup %d on version %d which is in range [%d,%d]%@", buf, 0x24u);
        }

        v78[0] = 0;
        v40 = objc_autoreleasePoolPush();
        v41 = (v32)(sessionCopy, databaseCopy, truthCopy, v78);
        objc_autoreleasePoolPop(v40);
        if ((v41 & 1) == 0)
        {
          v49 = brc_bread_crumbs();
          v50 = brc_default_log();
          if (os_log_type_enabled(v50, 0x90u))
          {
            *buf = 67110402;
            *v80 = v33;
            *&v80[4] = 1024;
            *&v80[6] = version;
            *&v80[10] = 1024;
            *&v80[12] = v35;
            *&v80[16] = 1024;
            *&v80[18] = v36;
            *&v80[22] = 2112;
            *&v80[24] = v78[0];
            v81 = 2112;
            v82 = v49;
            _os_log_error_impl(&dword_223E7A000, v50, 0x90u, "[ERROR] can't fixup %d on %d which is in range [%d,%d] - %@%@", buf, 0x2Eu);
          }

          if (error)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        }
      }

      v34 = &range_fixups[4 * ++v33];
      v32 = *(v34 + 1);
    }

    while (v32);
  }

  if (version < 0x84D1)
  {
    v44 = databaseCopy;
    if (version == 34000)
    {
      v42 = brc_bread_crumbs();
      v43 = brc_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        +[BRCAccountSession(BRCDatabaseManager) _validateDatabase:baseURL:session:serverTruth:initialVersion:lastCurrentVersion:error:];
      }
    }

    else
    {
      v51 = off_28374DF38;
      if (off_28374DF38)
      {
        if (truthCopy)
        {
          v52 = "server";
        }

        else
        {
          v52 = "client";
        }

        v53 = 1;
        v54 = schema_upgrades;
        do
        {
          v55 = *v54;
          if (v55 > version)
          {
            v56 = brc_bread_crumbs();
            v57 = brc_default_log();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *v80 = v52;
              *&v80[8] = 1024;
              *&v80[10] = version;
              *&v80[14] = 1024;
              *&v80[16] = v55;
              *&v80[20] = 2112;
              *&v80[22] = v56;
              _os_log_impl(&dword_223E7A000, v57, OS_LOG_TYPE_DEFAULT, "[NOTICE] migrating %s database from version %d to %d%@", buf, 0x22u);
            }

            v77 = 0;
            v58 = objc_autoreleasePoolPush();
            v59 = (v51)(sessionCopy, databaseCopy, truthCopy, &v77);
            objc_autoreleasePoolPop(v58);
            if ((v59 & 1) == 0)
            {
              v66 = brc_bread_crumbs();
              v67 = brc_default_log();
              if (os_log_type_enabled(v67, 0x90u))
              {
                *buf = 67109890;
                *v80 = version;
                *&v80[4] = 1024;
                *&v80[6] = v55;
                *&v80[10] = 2112;
                *&v80[12] = v77;
                *&v80[20] = 2112;
                *&v80[22] = v66;
                _os_log_error_impl(&dword_223E7A000, v67, 0x90u, "[ERROR] can't migrate from version %d to %d: %@%@", buf, 0x22u);
              }

              goto LABEL_79;
            }

            if (([databaseCopy setUserVersion:v55] & 1) == 0)
            {
              lastError = [databaseCopy lastError];
              v69 = v77;
              v77 = lastError;

              v70 = brc_bread_crumbs();
              v71 = brc_default_log();
              if (os_log_type_enabled(v71, 0x90u))
              {
                *buf = 67109634;
                *v80 = v55;
                *&v80[4] = 2112;
                *&v80[6] = v77;
                *&v80[14] = 2112;
                *&v80[16] = v70;
                _os_log_error_impl(&dword_223E7A000, v71, 0x90u, "[ERROR] can't set user version to %u: %@%@", buf, 0x1Cu);
              }

LABEL_79:
              if (error)
              {
                *error = v77;
              }

              v63 = v77;
              goto LABEL_82;
            }

            userVersion = [databaseCopy userVersion];
            version = [userVersion unsignedIntValue];

            if (version != v55)
            {
              [BRCAccountSession(BRCDatabaseManager) _validateDatabase:v78 baseURL:(v78 + 4) session:? serverTruth:? initialVersion:? lastCurrentVersion:? error:?];
            }
          }

          v54 = &schema_upgrades[4 * v53];
          v51 = *(v54 + 1);
          ++v53;
        }

        while (v51);
        if (version == 34000)
        {
          goto LABEL_40;
        }
      }

      v42 = brc_bread_crumbs();
      v43 = brc_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        +[BRCAccountSession(BRCDatabaseManager) _validateDatabase:baseURL:session:serverTruth:initialVersion:lastCurrentVersion:error:];
      }
    }
  }

  else
  {
    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    v44 = databaseCopy;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v80 = version;
      *&v80[4] = 1024;
      *&v80[6] = 34000;
      *&v80[10] = 2112;
      *&v80[12] = v42;
      _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] your database comes from a compatible future (db at version %d, current is %d)%@", buf, 0x18u);
    }
  }

LABEL_40:
  v45 = v73;
  v46 = objc_opt_self();
  v47 = 1;
  v48 = lCopy;
LABEL_84:

  return v47;
}

+ (BOOL)upgradeOfflineDB:(id)b serverTruth:(BOOL)truth session:(id)session error:(id *)error
{
  truthCopy = truth;
  v39 = *MEMORY[0x277D85DE8];
  bCopy = b;
  sessionCopy = session;
  userVersion = [bCopy userVersion];
  unsignedIntValue = [userVersion unsignedIntValue];

  if (unsignedIntValue >= 34001)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v38 = unsignedIntValue;
      *&v38[4] = 1024;
      *&v38[6] = 34000;
      *&v38[10] = 2112;
      *&v38[12] = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] your database comes from a compatible future (db at version %d, current is %d)%@", buf, 0x18u);
    }

LABEL_9:
LABEL_10:
    v16 = 1;
    goto LABEL_11;
  }

  if (unsignedIntValue == 34000)
  {
    v13 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[BRCAccountSession(BRCDatabaseManager) _validateDatabase:baseURL:session:serverTruth:initialVersion:lastCurrentVersion:error:];
    }

    goto LABEL_9;
  }

  v18 = off_28374DF38;
  if (!off_28374DF38)
  {
    goto LABEL_10;
  }

  errorCopy = error;
  v19 = "client";
  if (truthCopy)
  {
    v19 = "server";
  }

  v35 = v19;
  v20 = 1;
  v21 = schema_upgrades;
  while (1)
  {
    v22 = *v21;
    if (v22 <= unsignedIntValue)
    {
      goto LABEL_22;
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *v38 = v35;
      *&v38[8] = 1024;
      *&v38[10] = unsignedIntValue;
      *&v38[14] = 1024;
      *&v38[16] = v22;
      *&v38[20] = 2112;
      *&v38[22] = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[NOTICE] migrating %s database from version %d to %d%@", buf, 0x22u);
    }

    v36 = 0;
    v25 = objc_autoreleasePoolPush();
    v26 = (v18)(sessionCopy, bCopy, truthCopy, &v36);
    objc_autoreleasePoolPop(v25);
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (([bCopy setUserVersion:v22] & 1) == 0)
    {
      lastError = [bCopy lastError];
      v31 = v36;
      v36 = lastError;

      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        *buf = 67109634;
        *v38 = v22;
        *&v38[4] = 2112;
        *&v38[6] = v36;
        *&v38[14] = 2112;
        *&v38[16] = v32;
        _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] can't set user version to %u: %@%@", buf, 0x1Cu);
      }

      goto LABEL_30;
    }

    userVersion2 = [bCopy userVersion];
    unsignedIntValue = [userVersion2 unsignedIntValue];

LABEL_22:
    v21 = &schema_upgrades[4 * v20];
    v18 = *(v21 + 1);
    ++v20;
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  v28 = brc_bread_crumbs();
  v29 = brc_default_log();
  if (os_log_type_enabled(v29, 0x90u))
  {
    *buf = 67109890;
    *v38 = unsignedIntValue;
    *&v38[4] = 1024;
    *&v38[6] = v22;
    *&v38[10] = 2112;
    *&v38[12] = v36;
    *&v38[20] = 2112;
    *&v38[22] = v28;
    _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] can't migrate from version %d to %d: %@%@", buf, 0x22u);
  }

LABEL_30:
  if (errorCopy)
  {
    *errorCopy = v36;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (BOOL)runDatabaseFixups
{
  v3 = [(BRCAccountSession *)self runDatabaseFixupsForDB:self->_clientDB serverTruth:0];
  if (v3)
  {
    serverDB = self->_serverDB;

    LOBYTE(v3) = [(BRCAccountSession *)self runDatabaseFixupsForDB:serverDB serverTruth:1];
  }

  return v3;
}

- (BOOL)runDatabaseFixupsForDB:(id)b serverTruth:(BOOL)truth
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__BRCAccountSession_BRCDatabaseManager__runDatabaseFixupsForDB_serverTruth___block_invoke;
  v5[3] = &unk_2784FF3B0;
  truthCopy = truth;
  v5[4] = self;
  return [b performWithFlags:27 action:v5];
}

BOOL __76__BRCAccountSession_BRCDatabaseManager__runDatabaseFixupsForDB_serverTruth___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 numberWithSQL:@"SELECT max(fixup_version) + 1 FROM completed_db_fixups"];
  v5 = [v4 unsignedIntValue];

  if (v5 >= 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v7 = v5;
    v8 = 10 - v5;
    while (1)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "client";
        if (*(a1 + 40))
        {
          v11 = "server";
        }

        *buf = 67109634;
        v21 = v7;
        v22 = 2080;
        v23 = v11;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[NOTICE] Running db fixup %d for %s db%@", buf, 0x1Cu);
      }

      v12 = objc_autoreleasePoolPush();
      v19 = 0;
      if (((db_fixups[v7])(*(a1 + 32), v3, *(a1 + 40), &v19) & 1) == 0)
      {
        break;
      }

      objc_autoreleasePoolPop(v12);
      if (([v3 execute:{@"INSERT INTO completed_db_fixups (fixup_version) VALUES (%u)", v7}] & 1) == 0)
      {
        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, 0x90u))
        {
          v18 = [v3 lastError];
          *buf = 67109634;
          v21 = v7;
          v22 = 2112;
          v23 = v18;
          v24 = 2112;
          v25 = v15;
          _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] failed registering completion of db fixup %d with error %@%@", buf, 0x1Cu);
        }

        goto LABEL_18;
      }

      v6 = ++v7 >= 0xA;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      *buf = 67109634;
      v21 = v7;
      v22 = 2112;
      v23 = v19;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] db fixup %d failed %@%@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_18:

  return v6;
}

- (BOOL)runDatabaseFixup:(unint64_t)fixup error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  serverDB = self->_serverDB;
  v39[0] = self->_clientDB;
  v39[1] = serverDB;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v40 count:16];
  if (v9)
  {
    v10 = *v22;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if (v11)
        {
          v13 = *(*(&v21 + 1) + 8 * i);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __64__BRCAccountSession_BRCDatabaseManager__runDatabaseFixup_error___block_invoke;
          v20[3] = &unk_2784FFA98;
          v20[4] = self;
          v20[5] = v13;
          v20[6] = &v25;
          v20[7] = fixup;
          v11 = [v13 performWithFlags:27 action:v20];
        }

        else
        {
          v11 = 0;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v40 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  v14 = v26[5];
  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      v19 = "(passed to caller)";
      *buf = 136315906;
      v32 = "[BRCAccountSession(BRCDatabaseManager) runDatabaseFixup:error:]";
      v33 = 2080;
      if (!error)
      {
        v19 = "(ignored by caller)";
      }

      v34 = v19;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  _Block_object_dispose(&v25, 8);
  return v11;
}

uint64_t __64__BRCAccountSession_BRCDatabaseManager__runDatabaseFixup_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = db_fixups[*(a1 + 56)]();
  if ((v2 & 1) == 0)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      v6 = *(a1 + 56);
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v8 = 134218498;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_223E7A000, v4, 0x90u, "[ERROR] db fixup %lu failed %@%@", &v8, 0x20u);
    }
  }

  return v2;
}

- (BOOL)reimportFPFSDomainWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CC6348];
  v17 = 0;
  v5 = [BRCImportUtil reimportItemsBelowItemWithIdentifier:v4 error:&v17];
  v6 = v17;
  v7 = +[BRCAutoBugCaptureReporter sharedABCReporter];
  [v7 captureLogsForOperationType:@"OpenAccountSession" ofSubtype:@"ReimportRootItem" forError:v6];

  if (v5)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      v10 = "[NOTICE] Signalled reimport of all FP items%@";
LABEL_7:
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v6 br_isFileProviderErrorCode:-1005])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      v10 = "[WARNING] RootContainerItem not found -> Trying to reimport from a domain that we just added. Skip the reimport...%@";
      goto LABEL_7;
    }

LABEL_8:

    v11 = 1;
    goto LABEL_9;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, 0x90u))
  {
    *buf = 138412802;
    v21 = v4;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v13;
    _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] Failed to signal reimport of %@ on startup %@%@", buf, 0x20u);
  }

  if (!error)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v15 = MEMORY[0x277CCA9B8];
  v16 = *MEMORY[0x277CFABD0];
  v18 = *MEMORY[0x277CCA7E8];
  v19 = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v15 br_errorWithDomain:v16 code:100 userInfo:v8 description:@"Failed to signal reimport of root container on startup"];
  *error = v11 = 0;
LABEL_9:

LABEL_10:
  return v11;
}

- (void)accountStartedSchedulingCZM
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  populateFPDomainExperimentID = [v3 populateFPDomainExperimentID];

  if (populateFPDomainExperimentID)
  {
    fpDomain = [(BRCAccountSession *)self fpDomain];
    userInfo = [fpDomain userInfo];
    v7 = *MEMORY[0x277CC6360];
    v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CC6360]];

    if (([&unk_2837B0010 br_isEqualToNumber:v14] & 1) == 0)
    {
      fpDomain2 = [(BRCAccountSession *)self fpDomain];
      userInfo2 = [fpDomain2 userInfo];
      v10 = [userInfo2 mutableCopy];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_opt_new();
      }

      v13 = v12;

      [v13 setObject:&unk_2837B0010 forKeyedSubscript:v7];
      [(BRCAccountSession *)self _updateDomain:self->_fpDomain withUserInfo:v13 error:0];
    }
  }
}

- (BOOL)_isCZMAccountBasedOnCloudDocsPlistState
{
  clientReadWriteDatabaseFacade = [(BRCAccountSession *)self clientReadWriteDatabaseFacade];
  v3 = [clientReadWriteDatabaseFacade fetchAppLibraryPlist:*MEMORY[0x277CFAD68]];

  v4 = [v3 objectForKeyedSubscript:@"state"];
  unsignedIntValue = [v4 unsignedIntValue];

  return (unsignedIntValue >> 21) & 1;
}

- (BOOL)_updateDomain:(id)domain withUserInfo:(id)info error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  [domainCopy setUserInfo:info];
  v9 = [MEMORY[0x277CFAE58] br_getProviderIDForDataSeparated:self->_isDataSeparated];
  v18 = 0;
  v10 = [MEMORY[0x277CC64A8] br_addDomain:domainCopy forProviderIdentifier:v9 error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] Domain update was successful%@", buf, 0xCu);
    }
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      [BRCAccountSession(BRCDatabaseManager) _updateDomain:withUserInfo:error:];
    }

    if (error)
    {
      v16 = v11;
      *error = v11;
    }
  }

  return v10;
}

- (BOOL)_decorateUserInfoForFPFSDomain:(id)domain panicOnDomainIDMismatch:(BOOL)mismatch withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  if (domainCopy)
  {
    v9 = domainCopy;
    userInfo = [domainCopy userInfo];
    v11 = [userInfo mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v18 = v13;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v41) = 0;
    if (self->_isDataSeparated)
    {
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
      br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];

      accountDescription = [br_accountForCurrentPersona accountDescription];
      displayName = [v9 displayName];
      v23 = [accountDescription isEqualToString:displayName];

      if ((v23 & 1) == 0)
      {
        *(*&buf[8] + 24) = 1;
        v24 = objc_alloc(MEMORY[0x277CC6498]);
        identifier = [v9 identifier];
        accountDescription2 = [br_accountForCurrentPersona accountDescription];
        v27 = [v24 initWithIdentifier:identifier displayName:accountDescription2];

        v9 = v27;
      }
    }

    clientTruthWorkloop = self->_clientTruthWorkloop;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __106__BRCAccountSession_BRCDatabaseManager___decorateUserInfoForFPFSDomain_panicOnDomainIDMismatch_withError___block_invoke;
    v35 = &unk_2784FFAC0;
    v29 = v18;
    v36 = v29;
    selfCopy = self;
    v38 = buf;
    mismatchCopy = mismatch;
    dispatch_async_and_wait(clientTruthWorkloop, &v32);
    v17 = *(*&buf[8] + 24) != 1 || [(BRCAccountSession *)self _updateDomain:v9 withUserInfo:v29 error:error, v32, v33, v34, v35];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"domain" value:0];
    if (v9)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        v31 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCAccountSession(BRCDatabaseManager) _decorateUserInfoForFPFSDomain:panicOnDomainIDMismatch:withError:]";
        *&buf[12] = 2080;
        if (!error)
        {
          v31 = "(ignored by caller)";
        }

        *&buf[14] = v31;
        *&buf[22] = 2112;
        v41 = v9;
        v42 = 2112;
        v43 = v14;
        _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v16 = v9;
      v17 = 0;
      *error = v9;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

void __106__BRCAccountSession_BRCDatabaseManager___decorateUserInfoForFPFSDomain_panicOnDomainIDMismatch_withError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFAC28];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CFAC28]];

  if ([*(a1 + 40) fpfsMigrationState] == 2)
  {
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = [*(a1 + 40) fpfsMigrationState];
    if ((v3 == 0) != (v4 == 1))
    {
      goto LABEL_11;
    }

    if (v4 != 1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = [*(a1 + 40) fpfsMigrationUUID];
LABEL_8:
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v2];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] Updating migration UUID %@%@", buf, 0x16u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_11:
  v8 = *MEMORY[0x277CFAC20];
  v9 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CFAC20]];
  if (([v9 isEqualToString:*(*(a1 + 40) + 88)] & 1) == 0)
  {
    if (v9 && (*(a1 + 56) & 1) != 0)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"The domain has a non nil database ID (%@) which is different than our database ID (%@) ", v9, *(*(a1 + 40) + 88)];
      objc_claimAutoreleasedReturnValue();
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession(BRCDatabaseManager) _startWatcher];
      }

      brc_append_system_info_to_message();
      v21 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountSession(BRCDatabaseManager) _decorateUserInfoForFPFSDomain:panicOnDomainIDMismatch:withError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCDatabaseManager.m", 2005, v21);
    }

    [*(a1 + 32) setObject:*(*(a1 + 40) + 88) forKeyedSubscript:v8];
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 40) + 88);
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] Updating domain databaseID to %@%@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v13 = [BRCUserDefaults defaultsForMangledID:0];
  v14 = [v13 populateFPDomainExperimentID];

  if (v14)
  {
    v15 = *MEMORY[0x277CC6360];
    v16 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CC6360]];
    if ([*(a1 + 40) _isCZMAccountBasedOnCloudDocsPlistState])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
    if (([v18 br_isEqualToNumber:v16] & 1) == 0)
    {
      [*(a1 + 32) setObject:v18 forKeyedSubscript:v15];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (BOOL)openDBForNewDomain:(BOOL)domain deviceIDChanged:(BOOL *)changed withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  if (!self->_offline)
  {
    [(BRCAccountSession *)self setupDatabase];
  }

  [(BRCPQLConnection *)self->_clientDB setCrashIfUsedAfterClose:0];
  [(BRCPQLConnection *)self->_serverDB setCrashIfUsedAfterClose:0];
  [(BRCAccountSession *)self initializeDatabaseFacades];
  v37 = 0;
  v36 = 0;
  if (!self->_offline && (![(BRCAccountSession *)self openAndValidateDatabase:self->_serverDB serverTruth:1 initialVersion:0 lastCurrentVersion:&v37 deviceIDChanged:0 error:error]|| ![(BRCAccountSession *)self openAndValidateDatabase:self->_clientDB serverTruth:0 initialVersion:0 lastCurrentVersion:&v37 + 4 deviceIDChanged:&v36 error:error]))
  {
    [(BRCPQLConnection *)self->_serverDB brc_close];
    serverDB = self->_serverDB;
    self->_serverDB = 0;

    v11 = 0;
    v12 = 0;
LABEL_24:
    [(BRCPQLConnection *)self->_clientDB brc_close];
    goto LABEL_25;
  }

  if (changed)
  {
    *changed = v36;
  }

  if (domain)
  {
    v9 = 0;
  }

  else
  {
    if (HIDWORD(v37))
    {
      v13 = v37 == 0;
    }

    else
    {
      v13 = 1;
    }

    v9 = v13;
  }

  [(BRCAccountSession *)self _startWatcher];
  [(BRCPQLConnection *)self->_serverDB useSerialQueueWithTarget:self->_serverTruthWorkloop];
  v14 = [(BRCAccountSession *)self _finishClientTruthConnectionSetupWithError:error];
  if (!v14 || ![(BRCAccountSession *)self _finishServerTruthConnectionSetupWithError:error])
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  dbLoadingBarrier = [(BRCAccountSession *)self dbLoadingBarrier];
  [dbLoadingBarrier signalBarrier];

  userInfo = [(NSFileProviderDomain *)self->_fpDomain userInfo];
  v17 = [userInfo mutableCopy];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_opt_new();
  }

  v11 = v19;

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CFAC20]];
  if (v12)
  {
    v27 = v9;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0 && ![(NSString *)self->_databaseID isEqualToString:v12])
  {
    v33 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, 0x90u))
    {
      databaseID = self->_databaseID;
      *buf = 138412802;
      v39 = v12;
      v40 = 2112;
      v41 = databaseID;
      v42 = 2112;
      v43 = v33;
      _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] DatabaseID mismatch %@ vs %@. Signalling reimport%@", buf, 0x20u);
    }

    v29 = [AppTelemetryTimeSeriesEvent newDatabaseIDMismatchEventWithFPDatabaseID:v12 cloudDocsDatabaseID:self->_databaseID];
    analyticsReporter = [(BRCAccountSession *)self analyticsReporter];
    [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v29];

    v31 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v31 captureLogsForOperationType:@"OpenAccountSession" ofSubtype:@"DatabaseMismatch" forError:0];

LABEL_38:
    if (![(BRCAccountSession *)self reimportFPFSDomainWithError:error])
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  if (v9)
  {
    goto LABEL_38;
  }

LABEL_39:
  if ([(BRCAccountSession *)self _decorateFPFSDomainUserInfoWithError:error])
  {
    [(BRCAccountSession *)self enableDatabaseProfilingForDB:self->_clientDB];
    [(BRCAccountSession *)self enableDatabaseProfilingForDB:self->_serverDB];
    v25 = 1;
    [(BRCPQLConnection *)self->_clientDB setCrashIfUsedAfterClose:1];
    [(BRCPQLConnection *)self->_serverDB setCrashIfUsedAfterClose:1];
    goto LABEL_26;
  }

LABEL_22:
  v20 = self->_serverDB;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __86__BRCAccountSession_BRCDatabaseManager__openDBForNewDomain_deviceIDChanged_withError___block_invoke;
  v35[3] = &unk_2784FFA48;
  v35[4] = self;
  [(BRCPQLConnection *)v20 performWithFlags:1 action:v35];
  v21 = self->_serverDB;
  self->_serverDB = 0;

  if (!v14)
  {
    goto LABEL_24;
  }

  clientDB = self->_clientDB;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __86__BRCAccountSession_BRCDatabaseManager__openDBForNewDomain_deviceIDChanged_withError___block_invoke_2;
  v34[3] = &unk_2784FFA48;
  v34[4] = self;
  [(BRCPQLConnection *)clientDB performWithFlags:1 action:v34];
LABEL_25:
  v23 = self->_clientDB;
  self->_clientDB = 0;

  v24 = self->_databaseID;
  self->_databaseID = 0;

  [(BRCAccountSession *)self stopDBWatcher];
  v25 = 0;
LABEL_26:

  return v25;
}

- (void)closeDBs
{
  v32 = *MEMORY[0x277D85DE8];
  clientReadDatabaseFacade = self->_clientReadDatabaseFacade;
  self->_clientReadDatabaseFacade = 0;

  clientReadWriteDatabaseFacade = self->_clientReadWriteDatabaseFacade;
  self->_clientReadWriteDatabaseFacade = 0;

  serverReadWriteDatabaseFacade = self->_serverReadWriteDatabaseFacade;
  self->_serverReadWriteDatabaseFacade = 0;

  clientExpensiveReadDatabaseFacade = self->_clientExpensiveReadDatabaseFacade;
  self->_clientExpensiveReadDatabaseFacade = 0;

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_clientDB)
  {
    [v7 addObject:?];
    clientDB = selfCopy->_clientDB;
    selfCopy->_clientDB = 0;
  }

  if (selfCopy->_serverDB)
  {
    [v7 addObject:?];
    serverDB = selfCopy->_serverDB;
    selfCopy->_serverDB = 0;
  }

  if (selfCopy->_readOnlyDB)
  {
    [v7 addObject:?];
    readOnlyDB = selfCopy->_readOnlyDB;
    selfCopy->_readOnlyDB = 0;
  }

  if (selfCopy->_expensiveReadOnlyDB)
  {
    [v7 addObject:?];
    expensiveReadOnlyDB = selfCopy->_expensiveReadOnlyDB;
    selfCopy->_expensiveReadOnlyDB = 0;
  }

  objc_sync_exit(selfCopy);
  v23 = selfCopy;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v14)
  {
    v15 = *v26;
    v16 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        serialQueue = [v18 serialQueue];
        v20 = serialQueue == 0;

        if (v20)
        {
          [(BRCAccountSession(BRCDatabaseManager) *)v29 closeDBs];
        }

        serialQueue2 = [v18 serialQueue];
        block[0] = v16;
        block[1] = 3221225472;
        block[2] = __49__BRCAccountSession_BRCDatabaseManager__closeDBs__block_invoke;
        block[3] = &unk_2784FF450;
        block[4] = v18;
        dispatch_sync(serialQueue2, block);
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v14);
  }

  [(BRCAccountSession *)v23 stopDBWatcher];
  clientState = v23->_clientState;
  v23->_clientState = 0;
}

- (BOOL)initializeOfflineDatabaseWhileUpgrading:(BOOL)upgrading loadClientState:(BOOL)state forDBDump:(BOOL)dump error:(id *)error
{
  upgradingCopy = upgrading;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  self->_offline = 1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  self->_forDBDump = dump;
  clientDB = [(BRCAccountSession *)self clientDB];
  serialQueue = [clientDB serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke;
  block[3] = &unk_2784FFB08;
  block[4] = self;
  block[5] = &v30;
  v23 = upgradingCopy;
  block[6] = &v24;
  dispatch_sync(serialQueue, block);

  v12 = v31;
  if (*(v31 + 24) == 1 && upgradingCopy)
  {
    serverDB = [(BRCAccountSession *)self serverDB];
    serialQueue2 = [serverDB serialQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke_352;
    v21[3] = &unk_2784FFB30;
    v21[4] = self;
    v21[5] = &v30;
    v21[6] = &v24;
    dispatch_sync(serialQueue2, v21);

    v12 = v31;
    if ((v31[3] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    clientDB2 = [(BRCAccountSession *)self clientDB];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke_2_353;
    v19[3] = &unk_2784FF3B0;
    v19[4] = self;
    stateCopy = state;
    v18 = [clientDB2 performWithFlags:1 action:v19];
    *(v31 + 24) = v18;

    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v31 + 24))
  {
    goto LABEL_8;
  }

LABEL_4:
  *(v12 + 24) = 0;
  if (error)
  {
LABEL_5:
    *error = v25[5];
  }

LABEL_6:
  v15 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v15;
}

void __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 clientDB];
  v4 = *(a1 + 56) == 0;
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  LOBYTE(v2) = [v2 _setupConnection:v3 readonly:v4 forChecker:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v2;

  v6 = *(a1 + 32);
  v7 = [v6 clientDB];
  [v6 disableDatabaseProfilingForDB:v7];

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 56) == 1)
  {
    v8 = [*(a1 + 32) clientDB];
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 48) + 8);
    v13 = *(v10 + 40);
    v11 = [BRCAccountSession upgradeOfflineDB:v8 serverTruth:0 session:v9 error:&v13];
    objc_storeStrong((v10 + 40), v13);
    *(*(*(a1 + 40) + 8) + 24) = v11;
  }

  v12 = [*(a1 + 32) clientDB];
  [v12 setSqliteErrorHandler:&__block_literal_global_351];
}

void __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Encountered an error %@ running stmt %@%@", &v9, 0x20u);
  }
}

void __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke_352(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    v3 = *(a1 + 32);
    v4 = [v3 serverDB];
    v5 = *(*(a1 + 48) + 8);
    obj = *(v5 + 40);
    LOBYTE(v3) = [v3 _openConnection:v4 databaseName:@"server.db" readonly:0 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  else
  {
    *(v2 + 24) = 0;
  }

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24))
  {
    v7 = [*(a1 + 32) serverDB];
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 48) + 8);
    v11 = *(v9 + 40);
    v10 = [BRCAccountSession upgradeOfflineDB:v7 serverTruth:1 session:v8 error:&v11];
    objc_storeStrong((v9 + 40), v11);
    *(*(*(a1 + 40) + 8) + 24) = v10;
  }

  else
  {
    *(v6 + 24) = 0;
  }
}

uint64_t __113__BRCAccountSession_BRCDatabaseManager__initializeOfflineDatabaseWhileUpgrading_loadClientState_forDBDump_error___block_invoke_2_353(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = [*(a1 + 32) _sharedServerZonesEnumerator:v3];
  v5 = [v4 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) addOfflineServerZone:*(*(&v56 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = [*(a1 + 32) _privateServerZonesEnumerator:v3];
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(a1 + 32) addOfflineServerZone:*(*(&v52 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v11);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = [*(a1 + 32) _sharedClientZonesEnumerator];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v48 + 1) + 8 * k);
        [*(a1 + 32) addOfflineClientZone:v20];
        v21 = [v20 dbRowID];
        [v14 setObject:v20 forKeyedSubscript:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v17);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = [*(a1 + 32) _privateClientZonesEnumerator];
  v23 = [v22 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v44 + 1) + 8 * m);
        [*(a1 + 32) addOfflineClientZone:v27];
        v28 = [v27 dbRowID];
        [v14 setObject:v27 forKeyedSubscript:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v24);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = v3;
  v29 = [*(a1 + 32) _appLibrariesEnumerator:v3];
  v30 = [v29 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v41;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v40 + 1) + 8 * n);
        [*(a1 + 32) addOfflineAppLibrary:v34];
        v35 = [v34 zoneRowID];
        v36 = [v14 objectForKeyedSubscript:v35];
        v37 = [v36 asPrivateClientZone];

        if (v37)
        {
          [v34 associateWithClientZone:v37];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v31);
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _loadClientStateFromClientDB];
  }

  return 1;
}

- (BOOL)dumpFileCoordinationInfoToFileHandle:(id)handle error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = dup([handle fileDescriptor]);
  v7 = fdopen(v6, "a");
  if (v7)
  {
    v8 = [[BRCDumpContext alloc] initWithFile:v7 db:self->_clientDB];
    [(BRCDumpContext *)v8 setDumpTrackedPendingDownloads:1];
    fclose(v7);
  }

  else
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v14 = "(passed to caller)";
        v15 = 136315906;
        v16 = "[BRCAccountSession(BRCDatabaseManager) dumpFileCoordinationInfoToFileHandle:error:]";
        v17 = 2080;
        if (!error)
        {
          v14 = "(ignored by caller)";
        }

        v18 = v14;
        v19 = 2112;
        v20 = br_errorFromErrno;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", &v15, 0x2Au);
      }
    }

    if (error)
    {
      v12 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }
  }

  return v7 != 0;
}

- (void)_registerObfuscationFunction:(id)function
{
  functionCopy = function;
  [functionCopy registerFunction:@"OBFUSCATE" nArgs:2 handler:&__block_literal_global_360];
  [functionCopy registerFunction:@"OBFUSCATE_APPLIBRARY" nArgs:2 handler:&__block_literal_global_368];
  [functionCopy registerFunction:@"OBFUSCATE_ALIAS_TARGET" nArgs:1 handler:&__block_literal_global_385];
  [functionCopy registerFunction:@"OBFUSCATE_ERROR" nArgs:1 handler:&__block_literal_global_390];
  [functionCopy registerFunction:@"OBFUSCATE_PATH" nArgs:2 handler:&__block_literal_global_395];
}

void __70__BRCAccountSession_BRCDatabaseManager___registerObfuscationFunction___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sqlite3_value_int(*a4);
  v8 = sqlite3_value_text(a4[1]);
  if (v8)
  {
    if (*v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      v11 = [v10 fp_obfuscatedFilename];
      v12 = [v9 stringWithFormat:@"%d - %@", v7, v11];

      sqlite3_result_text(a2, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_result_value(a2, a4[1]);
    }
  }

  else
  {
    sqlite3_result_null(a2);
  }

  objc_autoreleasePoolPop(v6);
}

void __70__BRCAccountSession_BRCDatabaseManager___registerObfuscationFunction___block_invoke_2(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sqlite3_value_int(*a4);
  v8 = sqlite3_value_text(a4[1]);
  if (v8)
  {
    v9 = v8;
    if (*v8)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      if ([v10 isEqualToString:@"com.apple.CloudDocs"])
      {
        v11 = strlen(v9);
        sqlite3_result_text(a2, v9, v11, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        v12 = [v10 fp_obfuscatedDotSeparatedComponents];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"{" withString:@"-"];

        v14 = [v13 stringByReplacingOccurrencesOfString:@"}" withString:@"-"];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d - %@", v7, v14];

        sqlite3_result_text(a2, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      sqlite3_result_value(a2, a4[1]);
    }
  }

  else
  {
    sqlite3_result_null(a2);
  }

  objc_autoreleasePoolPop(v6);
}

void __70__BRCAccountSession_BRCDatabaseManager___registerObfuscationFunction___block_invoke_3(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sqlite3_value_text(*a4);
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = [v8 br_obfuscateAliasTarget];
    sqlite3_result_text(a2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_result_null(a2);
  }

  objc_autoreleasePoolPop(v6);
}

void __70__BRCAccountSession_BRCDatabaseManager___registerObfuscationFunction___block_invoke_4(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCA9B8] newFromSqliteValue:*a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 brc_obfuscate];
    _brc_sqlite3_result_archived_value(a2, v9);
  }

  else
  {
    sqlite3_result_null(a2);
  }

  objc_autoreleasePoolPop(v6);
}

void __70__BRCAccountSession_BRCDatabaseManager___registerObfuscationFunction___block_invoke_5(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sqlite3_value_int(*a4);
  v8 = sqlite3_value_text(a4[1]);
  if (v8)
  {
    if (*v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      v11 = [v10 fp_obfuscatedPath];
      v12 = [v9 stringWithFormat:@"%d - %@", v7, v11];

      sqlite3_result_text(a2, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_result_value(a2, a4[1]);
    }
  }

  else
  {
    sqlite3_result_null(a2);
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)backupDatabaseToURL:(id)l includeServer:(BOOL)server doNotObfuscate:(BOOL)obfuscate error:(id *)error
{
  serverCopy = server;
  v59 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v54 = 0u;
  v55 = 0u;
  if (serverCopy)
  {
    v10 = &unk_2837B0BE0;
  }

  else
  {
    v10 = &unk_2837B0BF8;
  }

  v56 = 0uLL;
  v57 = 0uLL;
  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v54 objects:v58 count:16];
  errorCopy = error;
  if (v11)
  {
    v12 = v11;
    v47 = *v55;
    obfuscateCopy = obfuscate;
    v45 = serverCopy;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        v15 = [(BRCAccountSession *)self newConnection:@"backup"];
        v16 = lCopy;
        v17 = [lCopy URLByAppendingPathComponent:v14];
        sqliteErrorHandler = [v15 sqliteErrorHandler];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __96__BRCAccountSession_BRCDatabaseManager__backupDatabaseToURL_includeServer_doNotObfuscate_error___block_invoke;
        v52[3] = &unk_2784FFB58;
        v19 = sqliteErrorHandler;
        v53 = v19;
        [v15 setSqliteErrorHandler:v52];
        autoRollbackHandler = [v15 autoRollbackHandler];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __96__BRCAccountSession_BRCDatabaseManager__backupDatabaseToURL_includeServer_doNotObfuscate_error___block_invoke_405;
        v50[3] = &unk_2784FFB58;
        v21 = autoRollbackHandler;
        v51 = v21;
        [v15 setAutoRollbackHandler:v50];
        error = errorCopy;
        if (![(BRCAccountSession *)self _openConnection:v15 databaseName:v14 readonly:1 error:errorCopy])
        {
          goto LABEL_19;
        }

        if (([v15 backupToURL:v17 progress:0] & 1) == 0)
        {
          if (errorCopy)
          {
            *errorCopy = [v15 lastError];
          }

          [v15 brc_close];
LABEL_19:
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager removeItemAtURL:v16 error:0];

          lCopy = v16;
          goto LABEL_20;
        }

        [v15 brc_close];

        lCopy = v16;
      }

      v12 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      obfuscate = obfuscateCopy;
      serverCopy = v45;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (obfuscate)
  {
    shouldObfuscateFilenames = 0;
    if (!serverCopy)
    {
LABEL_27:
      v15 = [(BRCAccountSession *)self newConnection:@"privacy"];
      v24 = [objc_opt_class() _openConnection:v15 databaseName:@"client.db" baseURL:lCopy readonly:0 error:error];
      if (v24)
      {
        if (shouldObfuscateFilenames)
        {
          v35 = [BRCUserDefaults defaultsForMangledID:0];
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v35, "sqliteCacheSize")];
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v35, "sqliteCacheSpill")];
          v38 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v36 length:{"UTF8String"), objc_msgSend(v36, "length")}];
          [v15 execute:{@"PRAGMA cache_size = %@", v38}];

          v39 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v37 length:{"UTF8String"), objc_msgSend(v37, "length")}];
          [v15 execute:{@"PRAGMA cache_spill = %@", v39}];

          [(BRCAccountSession *)self _registerObfuscationFunction:v15];
          [v15 groupInTransaction:&__block_literal_global_441];
          [v15 groupInTransaction:&__block_literal_global_446];
          v40 = [v15 numberWithSQL:@"SELECT 1 FROM sqlite_master where type = 'table' AND name = 'client_pkg_items'"];
          bOOLValue = [v40 BOOLValue];

          if (bOOLValue)
          {
            [v15 groupInTransaction:&__block_literal_global_454];
          }

          [v15 groupInTransaction:&__block_literal_global_459];
          [v15 groupInTransaction:&__block_literal_global_464];
        }

        [v15 groupInTransaction:&__block_literal_global_469];
        [v15 flush];
        [v15 brc_close];
      }

      else
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager2 removeItemAtURL:lCopy error:0];
      }

      goto LABEL_21;
    }
  }

  else
  {
    shouldObfuscateFilenames = fp_shouldObfuscateFilenames();
    if (!serverCopy)
    {
      goto LABEL_27;
    }
  }

  v15 = [(BRCAccountSession *)self newConnection:@"privacy"];
  if ([objc_opt_class() _openConnection:v15 databaseName:@"server.db" baseURL:lCopy readonly:0 error:error])
  {
    if (shouldObfuscateFilenames)
    {
      v26 = [BRCUserDefaults defaultsForMangledID:0];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v26, "sqliteCacheSize")];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v26, "sqliteCacheSpill")];
      v29 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v27 length:{"UTF8String"), objc_msgSend(v27, "length")}];
      [v15 execute:{@"PRAGMA cache_size = %@", v29}];

      v30 = MEMORY[0x277D82C18];
      uTF8String = [v28 UTF8String];
      v32 = [v28 length];
      v33 = uTF8String;
      error = errorCopy;
      v34 = [v30 rawInjection:v33 length:v32];
      [v15 execute:{@"PRAGMA cache_spill = %@", v34}];

      [(BRCAccountSession *)self _registerObfuscationFunction:v15];
      [v15 groupInTransaction:&__block_literal_global_411];
      [v15 groupInTransaction:&__block_literal_global_416];
      [v15 groupInTransaction:&__block_literal_global_421];
      [v15 groupInTransaction:&__block_literal_global_426];
      [v15 groupInTransaction:&__block_literal_global_431];
    }

    [v15 groupInTransaction:&__block_literal_global_436];
    [v15 flush];
    [v15 brc_close];

    goto LABEL_27;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager3 removeItemAtURL:lCopy error:0];

LABEL_20:
  v24 = 0;
LABEL_21:

  return v24;
}

void __96__BRCAccountSession_BRCDatabaseManager__backupDatabaseToURL_includeServer_doNotObfuscate_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, 0x90u))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] sqlite error handler called on DB backup - %@ (%@)%@", &v16, 0x20u);
  }

  v12 = [v9 domain];
  if (![v12 isEqualToString:*MEMORY[0x277D82C20]])
  {

    goto LABEL_9;
  }

  v13 = [v9 code];

  if (v13 != 13)
  {
LABEL_9:
    (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    __96__BRCAccountSession_BRCDatabaseManager__backupDatabaseToURL_includeServer_doNotObfuscate_error___block_invoke_cold_1();
  }

LABEL_10:
}

void __96__BRCAccountSession_BRCDatabaseManager__backupDatabaseToURL_includeServer_doNotObfuscate_error___block_invoke_405(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, 0x90u))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Auto rollback handler called on DB backup - %@ (%@)%@", &v16, 0x20u);
  }

  v12 = [v9 domain];
  if (![v12 isEqualToString:*MEMORY[0x277D82C20]])
  {

    goto LABEL_9;
  }

  v13 = [v9 code];

  if (v13 != 13)
  {
LABEL_9:
    (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    __96__BRCAccountSession_BRCDatabaseManager__backupDatabaseToURL_includeServer_doNotObfuscate_error___block_invoke_cold_1();
  }

LABEL_10:
}

- (id)accountStatisticsWithDB:(id)b
{
  bCopy = b;
  v4 = objc_opt_new();
  v5 = [bCopy fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" objectOfClass:objc_opt_class() sql:@"SELECT COUNT(1) FROM client_items"];
  [v4 setObject:v5 forKeyedSubscript:@"totalNumberOfItems"];

  v6 = [bCopy fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" objectOfClass:objc_opt_class() sql:@"SELECT COUNT(1) FROM client_items WHERE item_type = 2"];
  [v4 setObject:v6 forKeyedSubscript:@"totalNumberOfFaults"];

  v7 = [bCopy fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" objectOfClass:objc_opt_class() sql:@"SELECT COUNT(1) FROM client_items WHERE item_type = 1"];
  [v4 setObject:v7 forKeyedSubscript:@"totalNumberOfDocuments"];

  v8 = [bCopy fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" objectOfClass:objc_opt_class() sql:@"SELECT COUNT(1) FROM client_items WHERE item_type = 0"];
  [v4 setObject:v8 forKeyedSubscript:@"totalNumberOfDirectories"];

  return v4;
}

- (void)bumpNotificationRankOnItemGlobalID:(id)d
{
  clientDB = self->_clientDB;
  dCopy = d;
  itemID = [dCopy itemID];
  zoneRowID = [dCopy zoneRowID];

  [(BRCPQLConnection *)clientDB execute:@"UPDATE client_items SET item_notifs_rank = bump_notifs_rank() WHERE item_id = %@ AND zone_rowid = %@", itemID, zoneRowID];
}

- (void)scheduleZoneMovesToCloudDocs:(id)docs
{
  v32 = *MEMORY[0x277D85DE8];
  docsCopy = docs;
  cloudDocsClientZone = [(BRCAccountSession *)self cloudDocsClientZone];
  defaultAppLibrary = [cloudDocsClientZone defaultAppLibrary];
  wasMovedToCloudDocs = [defaultAppLibrary wasMovedToCloudDocs];

  if ((wasMovedToCloudDocs & 1) == 0)
  {
    v8 = [docsCopy mutableCopy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke;
    v26[3] = &unk_2784FF7D8;
    v27 = v8;
    selfCopy = self;
    v9 = v8;
    [(BRCAccountSession *)self enumerateAppLibraries:v26];
    allObjects = [v9 allObjects];

    docsCopy = allObjects;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = docsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v23;
    *&v13 = 138412290;
    v20 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([v17 isCloudDocsZone])
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = v20;
            v30 = v18;
            _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't CZM the clouddocs zone%@", buf, 0xCu);
          }
        }

        else
        {
          [v17 scheduleMoveToCloudDocs];
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke_83;
    block[3] = &unk_2784FF450;
    block[4] = self;
    if (scheduleZoneMovesToCloudDocs__onceToken != -1)
    {
      dispatch_once(&scheduleZoneMovesToCloudDocs__onceToken, block);
    }
  }
}

uint64_t __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 wasMovedToCloudDocs] & 1) == 0)
  {
    v4 = [v3 defaultClientZone];
    if (![v4 isCloudDocsZone])
    {
      v5 = [v3 mangledID];
      v6 = [BRCUserDefaults defaultsForMangledID:v5];
      v7 = [v6 shouldAutoMigrateToCloudDocs];

      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = [v3 defaultClientZone];
      v9 = [v8 serverZone];
      v10 = [v9 hasFetchedServerZoneState];

      if (v10)
      {
        v11 = [*(*(a1 + 40) + 200) serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke_2;
        block[3] = &unk_2784FF450;
        v16 = v3;
        dispatch_async(v11, block);

        goto LABEL_7;
      }

      v13 = *(a1 + 32);
      v4 = [v3 defaultClientZone];
      v14 = [v4 serverZone];
      [v13 addObject:v14];
    }
  }

LABEL_7:

  return 1;
}

void __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultClientZone];
  [v1 scheduleSyncDown];
}

void __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke_83(uint64_t a1)
{
  v2 = [*(a1 + 32) resetQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__BRCAccountSession_BRCZoneMigration__scheduleZoneMovesToCloudDocs___block_invoke_2_84;
  block[3] = &unk_2784FF450;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)enableDatabaseProfilingForDB:(id)b
{
  bCopy = b;
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  if ([v4 dbProfiled])
  {
    -[BRCAccountSession _setDatabaseProfilingForDB:enabled:verbose:](self, "_setDatabaseProfilingForDB:enabled:verbose:", bCopy, 1, [v4 dbVerboseProfiled]);
  }
}

- (void)_setDatabaseProfilingForDB:(id)b enabled:(BOOL)enabled verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  enabledCopy = enabled;
  bCopy = b;
  [bCopy setVerboseProfilingEnabled:verboseCopy];
  [bCopy setProfilingEnabled:enabledCopy];
}

- (id)getFPFSNonMigratedItemsWithDB:(id)b
{
  v3 = [b numberWithSQL:{@"SELECT count(*) FROM client_items WHERE item_localsyncupstate IN (5, 6)"}];

  return v3;
}

- (id)_getFPFSMigrationStatus:(id)status withError:(id *)error
{
  statusCopy = status;
  if (!self->_clientState)
  {
    [BRCAccountSession(DatabaseAdditions) _getFPFSMigrationStatus:withError:];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
  if (!v7)
  {
    v8 = [statusCopy numberWithSQL:@"SELECT MIN(db_schema) FROM boot_history"];
    unsignedLongValue = [v8 unsignedLongValue];

    if (unsignedLongValue >> 4 > 0x752)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v7 = &unk_2837B0160;
  }

  [dictionary setObject:v7 forKey:@"MigrationStatus"];
  v10 = [(BRCAccountSession *)self getFPFSNonMigratedItemsWithDB:statusCopy];
  if (v10)
  {
    [dictionary setObject:v10 forKey:@"NonMigratedItems"];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__BRCAccountSession_DatabaseAdditions___getFPFSMigrationStatus_withError___block_invoke;
  v15[3] = &unk_2785022D0;
  v15[4] = self;
  v11 = dictionary;
  v16 = v11;
  v12 = MEMORY[0x22AA4A310](v15);
  (v12)[2](v12, @"kBRCFPFSMigrationUUIDKey", @"MigrationID");
  (v12)[2](v12, @"kBRCFPFSMigrationStartTimeKey", @"MigrationStarted");
  (v12)[2](v12, @"kBRCFPFSMigrationInitialItemsNeedMigratingCountKey", @"InitialItemsNeedMigratingCount");
  (v12)[2](v12, @"kBRCFPFSMigrationInitialItemCountKey", @"InitialItemsCount");
  (v12)[2](v12, @"kBRCFPFSMigrationNewItemsInDBStatKey", @"NewItemsInDB");
  (v12)[2](v12, @"kBRCFPFSMigrationLostItemCountKey", @"MigrationLostItemCount");
  v13 = v11;

LABEL_9:

  return v13;
}

void __74__BRCAccountSession_DatabaseAdditions___getFPFSMigrationStatus_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) clientState];
  v7 = [v6 objectForKeyedSubscript:v11];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) clientState];
    v10 = [v9 objectForKeyedSubscript:v11];
    [v8 setObject:v10 forKey:v5];
  }
}

- (BOOL)dumpFPFSMigrationStatusToFileHandle:(id)handle tracker:(id)tracker includeNonMigratedItems:(BOOL)items error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  trackerCopy = tracker;
  memset(v49, 0, sizeof(v49));
  __brc_create_section(0, "[BRCAccountSession(DatabaseAdditions) dumpFPFSMigrationStatusToFileHandle:tracker:includeNonMigratedItems:error:]", 165, 0, v49);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(DatabaseAdditions) dumpFPFSMigrationStatusToFileHandle:tracker:includeNonMigratedItems:error:];
  }

  v11 = self->_readOnlyDB;
  v12 = v11;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__17;
  v43 = __Block_byref_object_dispose__17;
  v44 = 0;
  cloudDocsFD = self->_cloudDocsFD;
  if (cloudDocsFD < 0)
  {
    containerScheduler = 0;
    if (!v11)
    {
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    containerScheduler = [(BRCAccountSession *)self containerScheduler];
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  v15 = dup([handleCopy fileDescriptor]);
  v16 = fdopen(v15, "a");
  if (!v16)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        v29 = "(passed to caller)";
        *v58 = 136315906;
        *&v58[4] = "[BRCAccountSession(DatabaseAdditions) dumpFPFSMigrationStatusToFileHandle:tracker:includeNonMigratedItems:error:]";
        *&v58[12] = 2080;
        if (!v31)
        {
          v29 = "(ignored by caller)";
        }

        *&v58[14] = v29;
        *&v58[22] = 2112;
        v59 = br_errorFromErrno;
        LOWORD(v60) = 2112;
        *(&v60 + 2) = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", v58, 0x2Au);
      }
    }

    if (v31)
    {
      v26 = br_errorFromErrno;
      *v31 = br_errorFromErrno;
    }

    goto LABEL_22;
  }

  *v58 = 0;
  *&v58[8] = v58;
  *&v58[16] = 0x3032000000;
  v59 = __Block_byref_object_copy__17;
  *&v60 = __Block_byref_object_dispose__17;
  *(&v60 + 1) = [[BRCDumpContext alloc] initWithFile:v16 db:v12];
  [*(*&v58[8] + 40) setLiveDaemon:cloudDocsFD >= 0];
  [*(*&v58[8] + 40) setTaskTracker:trackerCopy];
  [(BRCAccountSession *)self disableDatabaseProfilingForDB:v12];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __114__BRCAccountSession_DatabaseAdditions__dumpFPFSMigrationStatusToFileHandle_tracker_includeNonMigratedItems_error___block_invoke;
  v33[3] = &unk_2785022F8;
  v17 = v12;
  v34 = v17;
  selfCopy = self;
  v36 = &v39;
  v37 = v58;
  v38 = &v45;
  [(BRCPQLConnection *)v17 performWithFlags:1 action:v33];
  v18 = v40[5];
  if (v18)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      v28 = "(passed to caller)";
      *buf = 136315906;
      v51 = "[BRCAccountSession(DatabaseAdditions) dumpFPFSMigrationStatusToFileHandle:tracker:includeNonMigratedItems:error:]";
      v52 = 2080;
      if (!v31)
      {
        v28 = "(ignored by caller)";
      }

      v53 = v28;
      v54 = 2112;
      v55 = v18;
      v56 = 2112;
      v57 = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (v31)
  {
    v21 = v18;
    *v31 = v18;
  }

  fclose(v16);
  if (cloudDocsFD >= 0)
  {
    [(BRCAccountSession *)self enableDatabaseProfilingForDB:v17];
  }

  v22 = *(v46 + 24);

  _Block_object_dispose(v58, 8);
LABEL_23:
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  __brc_leave_section(v49);

  return v22 & 1;
}

uint64_t __114__BRCAccountSession_DatabaseAdditions__dumpFPFSMigrationStatusToFileHandle_tracker_includeNonMigratedItems_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userVersion];
  v5 = [v4 unsignedLongValue];

  if (v5 >> 4 >= 0x753)
  {
    v6 = *(a1 + 40);
    if (v6[29])
    {
      v7 = [v6 _getFPFSMigrationStatus:v3 withError:0];
      if (v7)
      {
        v8 = *(*(a1 + 48) + 8);
        obj = *(v8 + 40);
        v9 = [MEMORY[0x277CCAAA0] jsonStringFromDictionary:v7 options:1 error:&obj];
        objc_storeStrong((v8 + 40), obj);
        [*(*(*(a1 + 56) + 8) + 40) writeLineWithFormat:@"%@", v9];
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 userInfo:MEMORY[0x277CBEC10] description:@"Domain was not migrated"];
        v11 = *(*(a1 + 48) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  return 0;
}

- (id)_computePathOfItemWithName:(id)name appLibrary:(id)library parentClientZoneRowID:(id)d parentID:(id)iD type:(char)type needsLocalName:(BOOL)localName db:(id)db
{
  localNameCopy = localName;
  typeCopy = type;
  nameCopy = name;
  libraryCopy = library;
  dCopy = d;
  iDCopy = iD;
  dbCopy = db;
  v19 = objc_opt_new();
  if (typeCopy == 4)
  {
    v20 = @"/";
  }

  else
  {
    v31 = nameCopy;
    v21 = [dbCopy fetch:{@" WITH RECURSIVE item_parents (item_id, zone_rowid, item_filename, item_localname) AS(    SELECT item_parent_id, item_parent_zone_rowid, item_filename, item_localname FROM client_items      WHERE item_id = %@ AND zone_rowid = %@  UNION ALL     SELECT li.item_parent_id, li.item_parent_zone_rowid, li.item_filename, li.item_localname FROM client_items AS li     INNER JOIN item_parents AS p USING (item_id, zone_rowid)) SELECT item_localname, item_filename FROM item_parents", iDCopy, dCopy}];
    v22 = objc_alloc(MEMORY[0x277CFAE60]);
    appLibraryID = [libraryCopy appLibraryID];
    v24 = [v22 initWithAppLibraryName:appLibraryID];

    mangledIDString = [v24 mangledIDString];
    [v19 insertObject:mangledIDString atIndex:0];

    if ([v21 next])
    {
      do
      {
        v26 = [v21 stringAtIndex:0];
        v27 = [v21 stringAtIndex:1];
        if (!localNameCopy || (v28 = [v26 length], v29 = v26, !v28))
        {
          v29 = v27;
        }

        [v19 insertObject:v29 atIndex:1];
      }

      while (([v21 next] & 1) != 0);
    }

    nameCopy = v31;
    [v19 addObject:v31];
    v20 = [MEMORY[0x277CCACA8] pathWithComponents:v19];
  }

  return v20;
}

- (BOOL)enumerateItemsWithType:(id)type itemRowIDs:(id)ds db:(id)db withBlock:(id)block
{
  typeCopy = type;
  dsCopy = ds;
  dbCopy = db;
  blockCopy = block;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__BRCAccountSession_DatabaseAdditions__enumerateItemsWithType_itemRowIDs_db_withBlock___block_invoke;
  v32[3] = &unk_278502320;
  v34 = &v35;
  v14 = dbCopy;
  v33 = v14;
  [v14 performWithFlags:1 action:v32];
  cloudDocsFD = self->_cloudDocsFD;
  [(BRCAccountSession *)self disableDatabaseProfilingForDB:v14];
  v16 = *(v36 + 24);
  v17 = [[BRCPQLInjectionFilterBasedOnItemType alloc] initWithItemType:typeCopy];
  if (dsCopy)
  {
    [MEMORY[0x277D82C08] formatInjection:{@"indexset_contains(%p, rowid)", dsCopy}];
  }

  else
  {
    [MEMORY[0x277D82C18] rawInjection:"1" length:1];
  }
  v18 = ;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__BRCAccountSession_DatabaseAdditions__enumerateItemsWithType_itemRowIDs_db_withBlock___block_invoke_2;
  v24[3] = &unk_278502348;
  v30 = &v35;
  v19 = v14;
  v25 = v19;
  v20 = v17;
  v26 = v20;
  v21 = v18;
  v31 = (v16 & 1) == 0;
  v27 = v21;
  selfCopy = self;
  v22 = blockCopy;
  v29 = v22;
  [v19 performWithFlags:1 action:v24];
  if ((cloudDocsFD & 0x80000000) == 0)
  {
    [(BRCAccountSession *)self enableDatabaseProfilingForDB:v19];
  }

  _Block_object_dispose(&v35, 8);
  return 1;
}

uint64_t __87__BRCAccountSession_DatabaseAdditions__enumerateItemsWithType_itemRowIDs_db_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userVersion];
  *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedLongValue] >> 4 > 0x752;

  return 0;
}

uint64_t __87__BRCAccountSession_DatabaseAdditions__enumerateItemsWithType_itemRowIDs_db_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = a2;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v3 = @"SELECT item_filename, item_parent_id, item_parent_zone_rowid, app_library_rowid, item_type, item_file_id, item_doc_id, item_generation FROM client_items WHERE %@ AND %@";
  }

  else
  {
    v3 = @"SELECT item_filename, item_parent_id, item_parent_zone_rowid, app_library_rowid, item_type, item_localname, item_file_id, item_doc_id, item_generation FROM client_items WHERE %@ AND %@";
  }

  v4 = [*(a1 + 32) fetchWithSlowStatementRadar:@"<rdar://problem/29182551>" sql:{v3, *(a1 + 40), *(a1 + 48)}];
  while ([v4 next])
  {
    v5 = [v4 stringAtIndex:0];
    v6 = [v4 objectOfClass:objc_opt_class() atIndex:1];
    v7 = [v4 numberAtIndex:2];
    v8 = [v4 numberAtIndex:3];
    v9 = [v4 intAtIndex:4];
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = [v4 stringAtIndex:5];
    }

    v11 = v10;
    if (*(a1 + 80) != 1 || (v12 = [v10 length], v13 = v11, !v12))
    {
      v13 = v5;
    }

    v28 = v11;
    v14 = *(a1 + 56);
    v24 = v5;
    v15 = v13;
    v16 = [v14 appLibraryByRowID:v8];
    v17 = [*(a1 + 56) _computePathOfItemWithName:v15 appLibrary:v16 parentClientZoneRowID:v7 parentID:v6 type:v9 needsLocalName:*(a1 + 80) db:*(a1 + 32)];
    v27 = v8;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v18 = 5;
    }

    else
    {
      v18 = 6;
    }

    [v4 numberAtIndex:v18];
    v19 = v26 = v7;
    [v4 numberAtIndex:(v18 + 1)];
    v20 = v25 = v6;
    v21 = [v4 numberAtIndex:(v18 + 2)];
    (*(*(a1 + 64) + 16))();
  }

  [v4 close];

  return 0;
}

- (BOOL)dumpItemsURLsToHandle:(id)handle itemRowIDs:(id)ds error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dsCopy = ds;
  v10 = self->_clientDB;
  if (!v10)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = dup([handleCopy fileDescriptor]);
  v12 = fdopen(v11, "a");
  if (!v12)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        v20 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCAccountSession(DatabaseAdditions) dumpItemsURLsToHandle:itemRowIDs:error:]";
        *&buf[12] = 2080;
        if (!error)
        {
          v20 = "(ignored by caller)";
        }

        *&buf[14] = v20;
        *&buf[22] = 2112;
        v23 = br_errorFromErrno;
        LOWORD(v24) = 2112;
        *(&v24 + 2) = v16;
        _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v18 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

    goto LABEL_10;
  }

  v13 = v12;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__17;
  *&v24 = __Block_byref_object_dispose__17;
  *(&v24 + 1) = [[BRCDumpContext alloc] initWithFile:v12 db:v10];
  [*(*&buf[8] + 40) setTaskTracker:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__BRCAccountSession_DatabaseAdditions__dumpItemsURLsToHandle_itemRowIDs_error___block_invoke;
  v21[3] = &unk_278502370;
  v21[4] = buf;
  [(BRCAccountSession *)self enumerateItemsWithType:0 itemRowIDs:dsCopy db:v10 withBlock:v21];
  fclose(v13);
  _Block_object_dispose(buf, 8);

  v14 = 1;
LABEL_11:

  return v14;
}

- (BOOL)dumpItemsToHandle:(id)handle itemType:(id)type tracker:(id)tracker error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  typeCopy = type;
  trackerCopy = tracker;
  memset(v34, 0, sizeof(v34));
  __brc_create_section(0, "[BRCAccountSession(DatabaseAdditions) dumpItemsToHandle:itemType:tracker:error:]", 374, 0, v34);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v34[0];
    *&buf[12] = 2112;
    *&buf[14] = typeCopy;
    *&buf[22] = 2112;
    v36 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx dumping all %@ items%@", buf, 0x20u);
  }

  v15 = self->_clientDB;
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = dup([handleCopy fileDescriptor]);
  v17 = fdopen(v16, "a");
  if (!v17)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        v25 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCAccountSession(DatabaseAdditions) dumpItemsToHandle:itemType:tracker:error:]";
        *&buf[12] = 2080;
        if (!error)
        {
          v25 = "(ignored by caller)";
        }

        *&buf[14] = v25;
        *&buf[22] = 2112;
        v36 = br_errorFromErrno;
        LOWORD(v37) = 2112;
        *(&v37 + 2) = v20;
        _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v22 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_18;
  }

  v18 = [typeCopy isEqualToString:@"all"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy__17;
  *&v37 = __Block_byref_object_dispose__17;
  *(&v37 + 1) = [[BRCDumpContext alloc] initWithFile:v17 db:v15];
  [*(*&buf[8] + 40) setTaskTracker:trackerCopy];
  if (v18)
  {
    [*(*&buf[8] + 40) setNewLineAfterWrite:0];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    [*(*&buf[8] + 40) writeLineWithFormat:@"{"];
    [*(*&buf[8] + 40) writeEmptyLine];
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
  }

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__BRCAccountSession_DatabaseAdditions__dumpItemsToHandle_itemType_tracker_error___block_invoke;
  v26[3] = &unk_278502398;
  v26[4] = buf;
  v26[5] = &v30;
  v27 = v18;
  v26[6] = v28;
  [(BRCAccountSession *)self enumerateItemsWithType:typeCopy itemRowIDs:0 db:v15 withBlock:v26];
  if (v18)
  {
    [*(*&buf[8] + 40) writeEmptyLine];
    [*(*&buf[8] + 40) writeLineWithFormat:@"}"];
  }

  fclose(v17);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

  v23 = 1;
LABEL_18:

  __brc_leave_section(v34);
  return v23;
}

void __81__BRCAccountSession_DatabaseAdditions__dumpItemsToHandle_itemType_tracker_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v16 = a2;
  v11 = a3;
  v12 = *(*(*(a1 + 32) + 8) + 40);
  ++*(*(*(a1 + 40) + 8) + 24);
  if (([v12 shouldKeepDumpingWithItemCount:? includeAllItems:?] & 1) == 0)
  {
    *a8 = 1;
  }

  if (*(a1 + 56) == 1)
  {
    v13 = [v11 br_stringByJSONEscaping];
    v14 = [v16 br_stringByJSONEscaping];
    v15 = *(*(*(a1 + 32) + 8) + 40);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [v15 writeLineWithFormat:@"\t%@: %@", v13, v14];
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      [v15 writeLineWithFormat:@", "];
      [*(*(*(a1 + 32) + 8) + 40) writeEmptyLine];
      [*(*(*(a1 + 32) + 8) + 40) writeLineWithFormat:@"\t%@: %@", v13, v14];
    }
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) writeLineWithFormat:@"%@", v11];
  }
}

- (int)_resolveDeviceID
{
  v2 = NSHomeDirectory();
  v6 = xmmword_2241ABF38;
  v7 = 0;
  v5 = 0;
  if (getattrlist([v2 fileSystemRepresentation], &v6, &v5, 8uLL, 0x20u) < 0)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = HIDWORD(v5);
  }

  return v3;
}

- (BOOL)enumerateSharedToMeItemsWithBlock:(id)block error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = self->_clientDB;
  v37 = v6;
  if (v6)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __80__BRCAccountSession_DatabaseAdditions__enumerateSharedToMeItemsWithBlock_error___block_invoke;
    v51[3] = &unk_278502320;
    v53 = &v54;
    v7 = v6;
    v52 = v7;
    [(BRCPQLConnection *)v7 performWithFlags:1 action:v51];
    if (*(v55 + 24) == 1)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        [(BRCAccountSession(DatabaseAdditions) *)v8 enumerateSharedToMeItemsWithBlock:v9 error:v10, v11, v12, v13, v14, v15];
      }

      v16 = [MEMORY[0x277CCA9B8] brc_errorMethodNotImplemented:sel_enumerateSharedToMeItemsWithBlock_error_];
      if (v16)
      {
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, 0x90u))
        {
          v35 = "(passed to caller)";
          *buf = 136315906;
          *&buf[4] = "[BRCAccountSession(DatabaseAdditions) enumerateSharedToMeItemsWithBlock:error:]";
          *&buf[12] = 2080;
          if (!error)
          {
            v35 = "(ignored by caller)";
          }

          *&buf[14] = v35;
          *&buf[22] = 2112;
          v59 = v16;
          v60 = 2112;
          v61 = v17;
          _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v19 = v16;
        *error = v16;
      }
    }

    else
    {
      _resolveDeviceID = [(BRCAccountSession *)self _resolveDeviceID];
      if (_resolveDeviceID != 0x80000000)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v59 = 0;
        v29 = [BRCUserDefaults defaultsForMangledID:0];
        readerScanBatchSize = [v29 readerScanBatchSize];

        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        v31 = MEMORY[0x277D85DD0];
        do
        {
          v39[0] = v31;
          v39[1] = 3221225472;
          v39[2] = __80__BRCAccountSession_DatabaseAdditions__enumerateSharedToMeItemsWithBlock_error___block_invoke_141;
          v39[3] = &unk_2785023C0;
          v32 = v7;
          v44 = &v47;
          v45 = readerScanBatchSize;
          v43 = buf;
          v40 = v32;
          selfCopy = self;
          v46 = _resolveDeviceID;
          v42 = blockCopy;
          [(BRCPQLConnection *)v32 performWithFlags:1 action:v39];
        }

        while (*(v48 + 24) != 1);
        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(buf, 8);
        v24 = 1;
        goto LABEL_27;
      }

      v16 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Can't resolve device ID"];
      if (v16)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, 0x90u))
        {
          v36 = "(passed to caller)";
          *buf = 136315906;
          *&buf[4] = "[BRCAccountSession(DatabaseAdditions) enumerateSharedToMeItemsWithBlock:error:]";
          *&buf[12] = 2080;
          if (!error)
          {
            v36 = "(ignored by caller)";
          }

          *&buf[14] = v36;
          *&buf[22] = 2112;
          v59 = v16;
          v60 = 2112;
          v61 = v26;
          _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v28 = v16;
        *error = v16;
      }
    }

    v24 = 0;
LABEL_27:

    _Block_object_dispose(&v54, 8);
    goto LABEL_28;
  }

  v20 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:25 description:@"The session has a nil DB"];
  if (v20)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      v34 = "(passed to caller)";
      *buf = 136315906;
      *&buf[4] = "[BRCAccountSession(DatabaseAdditions) enumerateSharedToMeItemsWithBlock:error:]";
      *&buf[12] = 2080;
      if (!error)
      {
        v34 = "(ignored by caller)";
      }

      *&buf[14] = v34;
      *&buf[22] = 2112;
      v59 = v20;
      v60 = 2112;
      v61 = v21;
      _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v23 = v20;
    *error = v20;
  }

  v24 = 0;
LABEL_28:

  return v24;
}

uint64_t __80__BRCAccountSession_DatabaseAdditions__enumerateSharedToMeItemsWithBlock_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userVersion];
  *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedLongValue] >> 4 > 0x752;

  return 0;
}

uint64_t __80__BRCAccountSession_DatabaseAdditions__enumerateSharedToMeItemsWithBlock_error___block_invoke_141(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchWithSlowStatementRadar:@"none" sql:{@"SELECT item_file_id, zone_rowid    FROM client_items   WHERE item_sharing_options != 0    ORDER BY rowid    LIMIT %lld    OFFSET %lld", *(a1 + 72), *(*(*(a1 + 56) + 8) + 24)}];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  if ([v2 next])
  {
    do
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      ++*(*(*(a1 + 56) + 8) + 24);
      v3 = [v2 integerAtIndex:0];
      v4 = *(a1 + 40);
      v5 = [v2 numberAtIndex:1];
      v6 = [v4 serverZoneByRowID:v5];

      v7 = [v6 clientZone];
      v8 = [v7 isSharedZone];

      if (v8)
      {
        v9 = [MEMORY[0x277CCACA8] br_pathWithDeviceID:*(a1 + 80) fileID:v3];
        (*(*(a1 + 48) + 16))();
      }
    }

    while (([v2 next] & 1) != 0);
  }

  return 0;
}

- (void)_dumpSpecialSyncContextsToContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  syncContextProvider = [(BRCAccountSession *)self syncContextProvider];
  v6 = objc_opt_new();
  sharedMetadataSyncContext = [syncContextProvider sharedMetadataSyncContext];

  if (sharedMetadataSyncContext)
  {
    sharedMetadataSyncContext2 = [syncContextProvider sharedMetadataSyncContext];
    [v6 addObject:sharedMetadataSyncContext2];
  }

  if ([v6 count])
  {
    v17 = syncContextProvider;
    [contextCopy writeLineWithFormat:@"Special Sync Contexts"];
    [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          contextIdentifier = [v14 contextIdentifier];
          fp_obfuscatedDotSeparatedComponents = [contextIdentifier fp_obfuscatedDotSeparatedComponents];
          [contextCopy writeLineWithFormat:@"+ %@", fp_obfuscatedDotSeparatedComponents];

          [contextCopy pushIndentation];
          [v14 dumpToContext:contextCopy];
          [contextCopy popIndentation];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    syncContextProvider = v17;
  }
}

- (BOOL)dumpDatabaseToFileHandle:(id)handle zoneName:(id)name includeAllItems:(BOOL)items verbose:(BOOL)verbose tracker:(id)tracker error:(id *)error
{
  verboseCopy = verbose;
  v75 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  nameCopy = name;
  trackerCopy = tracker;
  memset(v63, 0, sizeof(v63));
  __brc_create_section(0, "[BRCAccountSession(DatabaseAdditions) dumpDatabaseToFileHandle:zoneName:includeAllItems:verbose:tracker:error:]", 549, 0, v63);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(DatabaseAdditions) dumpDatabaseToFileHandle:zoneName:includeAllItems:verbose:tracker:error:];
  }

  v15 = self->_clientDB;
  v16 = v15;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__17;
  v57 = __Block_byref_object_dispose__17;
  v58 = 0;
  cloudDocsFD = self->_cloudDocsFD;
  if (cloudDocsFD < 0)
  {
    containerScheduler = 0;
    if (!v15)
    {
LABEL_24:
      v33 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    containerScheduler = [(BRCAccountSession *)self containerScheduler];
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  v19 = dup([handleCopy fileDescriptor]);
  v20 = fdopen(v19, "a");
  if (!v20)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, 0x90u))
      {
        v40 = "(passed to caller)";
        *v72 = 136315906;
        *&v72[4] = "[BRCAccountSession(DatabaseAdditions) dumpDatabaseToFileHandle:zoneName:includeAllItems:verbose:tracker:error:]";
        *&v72[12] = 2080;
        if (!error)
        {
          v40 = "(ignored by caller)";
        }

        *&v72[14] = v40;
        *&v72[22] = 2112;
        v73 = br_errorFromErrno;
        LOWORD(v74) = 2112;
        *(&v74 + 2) = v35;
        _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] %s: %s error: %@%@", v72, 0x2Au);
      }
    }

    if (error)
    {
      v37 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

    goto LABEL_24;
  }

  *v72 = 0;
  *&v72[8] = v72;
  *&v72[16] = 0x3032000000;
  v73 = __Block_byref_object_copy__17;
  *&v74 = __Block_byref_object_dispose__17;
  *(&v74 + 1) = [[BRCDumpContext alloc] initWithFile:v20 db:v16];
  [*(*&v72[8] + 40) setLiveDaemon:cloudDocsFD >= 0];
  [*(*&v72[8] + 40) setTaskTracker:trackerCopy];
  [*(*&v72[8] + 40) setVerbose:verboseCopy];
  [(BRCAccountSession *)self disableDatabaseProfilingForDB:v16];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __112__BRCAccountSession_DatabaseAdditions__dumpDatabaseToFileHandle_zoneName_includeAllItems_verbose_tracker_error___block_invoke;
  v45[3] = &unk_278502428;
  v49 = v72;
  v45[4] = self;
  v21 = v16;
  v46 = v21;
  v47 = containerScheduler;
  itemsCopy = items;
  v48 = nameCopy;
  v50 = &v53;
  v51 = &v59;
  [(BRCPQLConnection *)v21 performWithFlags:1 action:v45];
  analyticsReporter = [(BRCAccountSession *)self analyticsReporter];
  [analyticsReporter dumpToContext:*(*&v72[8] + 40)];

  globalProgress = [(BRCAccountSession *)self globalProgress];
  [globalProgress dumpToContext:*(*&v72[8] + 40)];

  v24 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
  [v24 dumpToContext:*(*&v72[8] + 40)];

  v25 = [BRCUserDefaults defaultsForMangledID:0];
  fpfsUploadV2 = [v25 fpfsUploadV2];

  if (fpfsUploadV2)
  {
    v27 = [BRCUploadSyncUpRequestsManager defaultManagerWithPersonaIdentifier:self->_personaIdentifier];
    [v27 dumpToContext:*(*&v72[8] + 40)];
  }

  [(BRCAccountSession *)self _dumpSpecialSyncContextsToContext:*(*&v72[8] + 40)];
  v28 = +[BRCDaemon daemon];
  [v28 dumpToContext:*(*&v72[8] + 40)];

  v29 = v54[5];
  if (v29)
  {
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, 0x90u))
    {
      v39 = "(passed to caller)";
      *buf = 136315906;
      v65 = "[BRCAccountSession(DatabaseAdditions) dumpDatabaseToFileHandle:zoneName:includeAllItems:verbose:tracker:error:]";
      v66 = 2080;
      if (!error)
      {
        v39 = "(ignored by caller)";
      }

      v67 = v39;
      v68 = 2112;
      v69 = v29;
      v70 = 2112;
      v71 = v30;
      _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v32 = v29;
    *error = v29;
  }

  fclose(v20);
  if (cloudDocsFD >= 0)
  {
    [(BRCAccountSession *)self enableDatabaseProfilingForDB:v21];
  }

  v33 = *(v60 + 24);

  _Block_object_dispose(v72, 8);
LABEL_25:
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  __brc_leave_section(v63);

  return v33 & 1;
}

uint64_t __112__BRCAccountSession_DatabaseAdditions__dumpDatabaseToFileHandle_zoneName_includeAllItems_verbose_tracker_error___block_invoke(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
  v109 = [v3 fetch:@"SELECT count(*) FROM boot_history"];
  [v109 next];
  v112 = v4;
  if ([*(*(*(a1 + 64) + 8) + 40) liveDaemon])
  {
    v5 = [*(a1 + 32) accountFacade];
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v4 stringFromDate:v7];
    v9 = [v5 accountDSID];
    if ([v5 isInCarry])
    {
      v10 = "Yes";
    }

    else
    {
      v10 = "No";
    }

    v11 = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
    v12 = [v11 br_realpath];
    [v6 writeLineWithFormat:@"dump taken at %@ [account=%@] [inCarry=%s] [home=%@]", v8, v9, v10, v12];

    v4 = v112;
  }

  else
  {
    v13 = *(*(*(a1 + 64) + 8) + 40);
    v5 = [MEMORY[0x277CBEAA8] date];
    v7 = [v4 stringFromDate:v5];
    [v13 writeLineWithFormat:@"dump taken at %@", v7];
  }

  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:&stru_2837504F0];
  v14 = *(*(*(a1 + 64) + 8) + 40);
  v15 = [*(a1 + 40) userVersion];
  [v14 writeLineWithFormat:@"database version: %@", v15];

  if (*(*(a1 + 32) + 88))
  {
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"database ID: %@", *(*(a1 + 32) + 88)];
  }

  v16 = [*(a1 + 40) userVersion];
  v17 = [v16 unsignedLongValue];

  v18 = @"FPFS";
  if (v17 >> 4 <= 0x752)
  {
    v18 = @"Legacy";
  }

  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"fsType: %@", v18];
  if (v17 >> 4 >= 0x753)
  {
    v19 = *(a1 + 32);
    if (v19[29])
    {
      v20 = [v19 _getFPFSMigrationStatus:v3 withError:0];
      v21 = [v20 objectForKeyedSubscript:@"MigrationStatus"];
      v22 = v21;
      if (v21)
      {
        v23 = *(*(*(a1 + 64) + 8) + 40);
        [v21 unsignedIntValue];
        [v23 writeLineWithFormat:@"FPFS import state: %s", BRCPrettyPrintEnum()];
      }

      v24 = [v20 objectForKeyedSubscript:@"kBRCFPFSMigrationUUIDKey"];
      if (v24)
      {
        [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"FPFS import UUID: %@", v24];
      }

      v25 = [v20 objectForKeyedSubscript:@"NonMigratedItems"];
      if (v25)
      {
        [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"FPFS import pending items: %@", v25];
      }
    }
  }

  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:&stru_2837504F0];
  v26 = *(*(*(a1 + 64) + 8) + 40);
  v27 = +[BRCDaemon daemon];
  v28 = [v27 startupDate];
  [v28 timeIntervalSinceNow];
  [v26 writeLineWithFormat:@"boot_history (startup %.1fs ago)", -v29];

  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"-----------------------------------------------------"];
  v30 = [BRCUserDefaults defaultsForMangledID:0];
  v31 = [v30 dumpDateFormat];
  [v4 setDateFormat:v31];

  v32 = [v3 userVersion];
  v33 = [v32 unsignedLongValue];

  if (v33 <= 0x7533)
  {
    v34 = "";
    v35 = 0;
  }

  else
  {
    v34 = ",device_id";
    v35 = 10;
  }

  v36 = [MEMORY[0x277D82C18] rawInjection:v34 length:v35];
  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"server_truth"];
  v110 = v36;
  v111 = v3;
  v37 = [v3 fetch:{@"SELECT date, os, br, bird_schema, db_schema%@ FROM server_boot_history ORDER BY rowid DESC LIMIT 10", v36}];
  if ([v37 next])
  {
    do
    {
      v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v37, "intAtIndex:", 0)}];
      v39 = [v112 stringFromDate:v38];
      v40 = [v37 stringAtIndex:1];
      v41 = [v37 stringAtIndex:2];
      v42 = [v37 numberAtIndex:3];
      v43 = [v37 numberAtIndex:4];
      if (v33 < 0x7534)
      {
        v44 = 0;
      }

      else
      {
        v44 = [v37 numberAtIndex:5];
      }

      [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"  [%@] OS:%@ CloudDocs:%@ BirdSchema:%@ DBSchema:%@ DeviceID:%@", v39, v40, v41, v42, v43, v44];
    }

    while (([v37 next] & 1) != 0);
  }

  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"client_truth"];
  v45 = [v111 fetch:{@"SELECT date, os, br, bird_schema, db_schema%@ FROM boot_history ORDER BY rowid DESC LIMIT 10", v110}];

  if ([v45 next])
  {
    do
    {
      v46 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v45, "intAtIndex:", 0)}];
      v47 = [v112 stringFromDate:v46];
      v48 = [v45 stringAtIndex:1];
      v49 = [v45 stringAtIndex:2];
      v50 = [v45 numberAtIndex:3];
      v51 = [v45 numberAtIndex:4];
      if (v33 < 0x7534)
      {
        v52 = 0;
      }

      else
      {
        v52 = [v45 numberAtIndex:5];
      }

      [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"  [%@] OS:%@ CloudDocs:%@ BirdSchema:%@ DBSchema:%@ DeviceID:%@", v47, v48, v49, v50, v51, v52];
    }

    while (([v45 next] & 1) != 0);
  }

  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"backup_detector"];
  v53 = v111;
  v54 = [v111 fetch:{@"SELECT old, new, counter, os, br FROM backup_detector"}];

  if ([v54 next])
  {
    v107 = [v54 numberAtIndex:0];
    v55 = [v54 numberAtIndex:1];
    v56 = [v54 numberAtIndex:2];
    v57 = [v54 stringAtIndex:3];
    v58 = [v54 stringAtIndex:4];
    v59 = [v111 userVersion];
    v60 = *(*(*(a1 + 64) + 8) + 40);
    v61 = [v57 UTF8String];
    v62 = [v58 UTF8String];
    if (v59)
    {
      v63 = [v59 longValue];
    }

    else
    {
      v63 = -1;
    }

    [v60 writeLineWithFormat:@"  [%@|%@|%@] OS:%s CloudDocs:%s DBSchema:%ld", v107, v55, v56, v61, v62, v63];
    [*(*(*(a1 + 64) + 8) + 40) writeEmptyLine];
    [v54 close];

    v53 = v111;
  }

  v64 = [v53 fetch:@"SELECT * FROM server_state"];

  if ([v64 next])
  {
    v65 = [v64 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"server_state"];
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"-----------------------------------------------------"];
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"%@", v65];
    [*(*(*(a1 + 64) + 8) + 40) writeEmptyLine];
    [v64 close];
  }

  v66 = [*(*(a1 + 32) + 176) clientStateDictionaryWithSilent:1];
  if (v66)
  {
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"client_state"];
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"-----------------------------------------------------"];
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"%@", v66];
    [*(*(*(a1 + 64) + 8) + 40) writeEmptyLine];
  }

  v108 = v66;
  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"devices:"];
  v67 = [v53 fetch:{@"SELECT key, name FROM devices"}];

  if ([v67 next])
  {
    do
    {
      v68 = objc_autoreleasePoolPush();
      v69 = [v67 longAtIndex:0];
      v70 = [v67 stringAtIndex:1];
      v71 = *(*(*(a1 + 64) + 8) + 40);
      v72 = [v70 fp_obfuscatedFilename];
      [v71 writeLineWithFormat:@"    o %@ (%ld)", v72, v69];

      objc_autoreleasePoolPop(v68);
    }

    while (([v67 next] & 1) != 0);
  }

  [v67 close];
  [*(*(*(a1 + 64) + 8) + 40) writeEmptyLine];
  [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"users:"];
  v73 = [v53 fetch:{@"SELECT user_key, user_name, user_plist FROM users"}];

  if ([v73 next])
  {
    do
    {
      v74 = objc_autoreleasePoolPush();
      v75 = [v73 longAtIndex:0];
      v76 = [v73 stringAtIndex:1];
      v77 = [v73 objectOfClass:objc_opt_class() atIndex:2];
      v78 = *(*(*(a1 + 64) + 8) + 40);
      v79 = [v77 nameComponents];
      v80 = [v79 br_formattedName];
      v81 = [v80 fp_obfuscatedFilename];
      [v78 writeLineWithFormat:@"    o %@ %@ (%ld)", v76, v81, v75];

      objc_autoreleasePoolPop(v74);
    }

    while (([v73 next] & 1) != 0);
  }

  [v73 close];
  [*(*(*(a1 + 64) + 8) + 40) writeEmptyLine];
  [*(a1 + 48) dumpToContext:*(*(*(a1 + 64) + 8) + 40) includeAllItems:*(a1 + 88) db:*(a1 + 40)];
  v82 = *(a1 + 32);
  v83 = *(a1 + 56);
  v118 = 0;
  v84 = [v82 clientZonesMatchingSearchString:v83 error:&v118];
  v85 = v118;
  v86 = v85;
  v87 = *(*(*(a1 + 64) + 8) + 40);
  if (v84)
  {
    v105 = v85;
    v88 = [v84 count];
    v89 = *(a1 + 56);
    if (!v89)
    {
      v89 = @"*";
    }

    [v87 writeLineWithFormat:@"%u containers matching '%@'", v88, v89];
    [*(*(*(a1 + 64) + 8) + 40) writeLineWithFormat:@"-----------------------------------------------------"];
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v106 = v84;
    v90 = v84;
    v91 = [v90 countByEnumeratingWithState:&v114 objects:v123 count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v115;
      while (2)
      {
        for (i = 0; i != v92; ++i)
        {
          if (*v115 != v93)
          {
            objc_enumerationMutation(v90);
          }

          v95 = *(*(&v114 + 1) + 8 * i);
          v96 = objc_autoreleasePoolPush();
          v97 = brc_bread_crumbs();
          v98 = brc_default_log();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v120 = v95;
            v121 = 2112;
            v122 = v97;
            _os_log_debug_impl(&dword_223E7A000, v98, OS_LOG_TYPE_DEBUG, "[DEBUG] dumping client zone %@%@", buf, 0x16u);
          }

          if ([*(*(*(a1 + 64) + 8) + 40) isCancelled])
          {
            objc_autoreleasePoolPop(v96);
            goto LABEL_61;
          }

          v99 = *(a1 + 32);
          v100 = *(*(*(a1 + 64) + 8) + 40);
          v101 = *(a1 + 88);
          v102 = *(*(a1 + 72) + 8);
          obj = *(v102 + 40);
          [v99 _dumpClientZone:v95 toContext:v100 includeAllItems:v101 error:&obj];
          objc_storeStrong((v102 + 40), obj);
          objc_autoreleasePoolPop(v96);
        }

        v92 = [v90 countByEnumeratingWithState:&v114 objects:v123 count:16];
        if (v92)
        {
          continue;
        }

        break;
      }
    }

LABEL_61:

    v86 = v105;
    v84 = v106;
  }

  else
  {
    [v87 writeLineWithFormat:@"%@", v85];
    [*(*(*(a1 + 64) + 8) + 40) writeEmptyLine];
  }

  if (*(a1 + 88) == 1)
  {
    [BRCPackageItem dumpSession:*(a1 + 32) toContext:*(*(*(a1 + 64) + 8) + 40) db:v111 error:0];
  }

  [*(a1 + 32) dumpXPCClientsToContext:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 32) dumpMiscOperationsToContext:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(a1 + 32) + 144) dumpToContext:*(*(*(a1 + 64) + 8) + 40)];
  v103 = [*(a1 + 32) analyticsReporter];
  [v103 dumpDatabaseInfoToContext:*(*(*(a1 + 64) + 8) + 40)];

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  [v109 close];

  return 0;
}

- (void)_dumpClientZoneBlockedState:(id)state toContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  if (([stateCopy state] & 0x10000) != 0)
  {
    v6 = [contextCopy highlightedString:@">>> BROKEN STRUCTURE" type:3];
    [contextCopy writeLineWithFormat:@"%@", v6];
  }

  if ([stateCopy isSyncBlockedBecauseAppNotInstalled])
  {
    v7 = [contextCopy highlightedString:@">>> SYNC DISABLED (app not installed)" type:6];
    [contextCopy writeLineWithFormat:@"%@", v7];
  }

  if ([stateCopy isSyncBlockedBecauseOSNeedsUpgrade])
  {
    v8 = [contextCopy highlightedString:@">>> NEEDS UPGRADE" type:3];
    [contextCopy writeLineWithFormat:@"%@", v8];
  }
}

- (BOOL)_dumpClientZoneStatus:(id)status toContext:(id)context error:(id *)error
{
  statusCopy = status;
  contextCopy = context;
  v10 = [statusCopy descriptionWithContext:contextCopy];
  [contextCopy writeLineWithFormat:@"%@", v10];

  [(BRCAccountSession *)self _dumpClientZoneBlockedState:statusCopy toContext:contextCopy];
  [contextCopy pushIndentation];
  serverZone = [statusCopy serverZone];
  LODWORD(v10) = [serverZone dumpStatusToContext:contextCopy error:error];

  v12 = v10 && ([statusCopy dumpStatusToContext:contextCopy error:error] & 1) != 0;
  [contextCopy popIndentation];

  return v12;
}

- (BOOL)_dumpClientZone:(id)zone toContext:(id)context includeAllItems:(BOOL)items error:(id *)error
{
  itemsCopy = items;
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  contextCopy = context;
  v12 = [zoneCopy descriptionWithContext:contextCopy];
  [contextCopy writeLineWithFormat:@"- %@", v12];

  [(BRCAccountSession *)self _dumpClientZoneBlockedState:zoneCopy toContext:contextCopy];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  if ([zoneCopy isPrivateZone])
  {
    [contextCopy pushIndentation];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    asPrivateClientZone = [zoneCopy asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v15 = [appLibraries countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(appLibraries);
          }

          [*(*(&v28 + 1) + 8 * i) dumpToContext:contextCopy];
        }

        v16 = [appLibraries countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [contextCopy popIndentation];
  }

  [contextCopy writeLineWithFormat:&stru_2837504F0];
  [contextCopy pushIndentation];
  serverZone = [zoneCopy serverZone];
  if (!serverZone)
  {
    if ([zoneCopy isSharedZone])
    {
      asSharedClientZone = [zoneCopy asSharedClientZone];
      zoneName = [asSharedClientZone zoneName];
      ownerName = [asSharedClientZone ownerName];
      v23 = [contextCopy db];
      serverZone = [(BRCAccountSession *)self _sharedServerZoneByName:zoneName ownerName:ownerName db:v23];
    }

    else
    {
      asSharedClientZone = [zoneCopy zoneName];
      zoneName = [contextCopy db];
      serverZone = [(BRCAccountSession *)self _privateServerZoneByName:asSharedClientZone db:zoneName];
    }

    [zoneCopy associateWithServerZone:serverZone];
  }

  v24 = [zoneCopy dumpActivityToContext:contextCopy includeExpensiveActivity:itemsCopy error:error];
  if (v24)
  {
    [contextCopy writeLineWithFormat:&stru_2837504F0];
    v25 = [serverZone dumpTablesToContext:contextCopy includeAllItems:itemsCopy error:error];
    v26 = [zoneCopy dumpTablesToContext:contextCopy includeAllItems:itemsCopy error:error];
    if (v25 && v26)
    {
      [contextCopy writeLineWithFormat:@" - not done dumping items -"];
    }

    [contextCopy popIndentation];
    [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  }

  else
  {
    [contextCopy popIndentation];
  }

  return v24;
}

- (BOOL)dumpStatusToFileHandle:(id)handle zoneName:(id)name tracker:(id)tracker error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  nameCopy = name;
  trackerCopy = tracker;
  memset(v35, 0, sizeof(v35));
  __brc_create_section(0, "[BRCAccountSession(DatabaseAdditions) dumpStatusToFileHandle:zoneName:tracker:error:]", 876, 0, v35);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v35[0];
    *&buf[12] = 2112;
    *&buf[14] = nameCopy;
    *&buf[22] = 2112;
    v45 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx dumping status for zone: %@%@", buf, 0x20u);
  }

  v15 = self->_clientDB;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v45 = __Block_byref_object_copy__17;
  v46 = __Block_byref_object_dispose__17;
  v47 = 0;
  [(BRCAccountSession *)self disableDatabaseProfilingForDB:v15];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __86__BRCAccountSession_DatabaseAdditions__dumpStatusToFileHandle_zoneName_tracker_error___block_invoke;
  v29 = &unk_278501D98;
  v16 = handleCopy;
  v30 = v16;
  v34 = buf;
  v17 = trackerCopy;
  v31 = v17;
  selfCopy = self;
  v18 = nameCopy;
  v33 = v18;
  [(BRCPQLConnection *)v15 performWithFlags:1 action:&v26];
  v19 = *(*&buf[8] + 40);
  if (v19)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      v25 = "(passed to caller)";
      *v36 = 136315906;
      v37 = "[BRCAccountSession(DatabaseAdditions) dumpStatusToFileHandle:zoneName:tracker:error:]";
      v38 = 2080;
      if (!error)
      {
        v25 = "(ignored by caller)";
      }

      v39 = v25;
      v40 = 2112;
      v41 = v19;
      v42 = 2112;
      v43 = v20;
      _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", v36, 0x2Au);
    }
  }

  if (error)
  {
    v22 = v19;
    *error = v19;
  }

  [(BRCAccountSession *)self enableDatabaseProfilingForDB:v15, v26, v27, v28, v29];
  v23 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(buf, 8);
  __brc_leave_section(v35);

  return v23;
}

uint64_t __86__BRCAccountSession_DatabaseAdditions__dumpStatusToFileHandle_zoneName_tracker_error___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dup([*(a1 + 32) fileDescriptor]);
  v5 = fdopen(v4, "a");
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v7 setDateStyle:1];
    [v7 setTimeStyle:2];
    v8 = [[BRCDumpContext alloc] initWithFile:v6 db:v3];
    [(BRCDumpContext *)v8 setLiveDaemon:1];
    [(BRCDumpContext *)v8 setOnlyActiveStuff:1];
    [(BRCDumpContext *)v8 setTaskTracker:*(a1 + 40)];
    v9 = [v3 fetch:@"SELECT count(*) FROM boot_history"];
    [v9 next];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v52 = 0;
    v12 = [v10 clientZonesMatchingSearchString:v11 error:&v52];
    v13 = v52;
    v14 = v13;
    if (v12)
    {
      v45 = v6;
      v15 = [v12 count];
      v16 = *(a1 + 56);
      v46 = v3;
      v43 = v9;
      v44 = v7;
      v41 = v14;
      if (v16)
      {
        v17 = [v16 UTF8String];
      }

      else
      {
        v17 = "*";
      }

      [(BRCDumpContext *)v8 writeLineWithFormat:@"%u containers matching '%s'", v15, v17];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v42 = v12;
      v29 = v12;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v49 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v48 + 1) + 8 * i);
            v35 = objc_autoreleasePoolPush();
            v36 = brc_bread_crumbs();
            v37 = brc_default_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v54 = v29;
              v55 = 2112;
              v56 = v36;
              _os_log_debug_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] dumping container %@%@", buf, 0x16u);
            }

            if ([(BRCDumpContext *)v8 isCancelled])
            {
              objc_autoreleasePoolPop(v35);
              goto LABEL_22;
            }

            v38 = *(a1 + 48);
            v39 = *(*(a1 + 64) + 8);
            obj = *(v39 + 40);
            [v38 _dumpClientZoneStatus:v34 toContext:v8 error:&obj];
            objc_storeStrong((v39 + 40), obj);
            objc_autoreleasePoolPop(v35);
          }

          v31 = [v29 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:

      v6 = v45;
      v3 = v46;
      v9 = v43;
      v7 = v44;
      v14 = v41;
      v12 = v42;
    }

    else
    {
      [(BRCDumpContext *)v8 writeLineWithFormat:@"%@", v13];
      [(BRCDumpContext *)v8 writeEmptyLine];
    }

    [v9 close];
    fclose(v6);
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      __86__BRCAccountSession_DatabaseAdditions__dumpStatusToFileHandle_zoneName_tracker_error___block_invoke_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    [0 close];
  }

  return 0;
}

- (BOOL)printShareRequests:(id)requests isPending:(BOOL)pending asJSON:(BOOL)n error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__17;
  v34 = __Block_byref_object_dispose__17;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  workloop = [(BRCDatabaseFacade *)self->_serverReadWriteDatabaseFacade workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__BRCAccountSession_DatabaseAdditions__printShareRequests_isPending_asJSON_error___block_invoke;
  block[3] = &unk_278502450;
  block[4] = self;
  v12 = requestsCopy;
  v21 = v12;
  v22 = &v30;
  v23 = &v26;
  pendingCopy = pending;
  nCopy = n;
  dispatch_async(workloop, block);

  v13 = v31[5];
  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      v19 = "(passed to caller)";
      *buf = 136315906;
      v37 = "[BRCAccountSession(DatabaseAdditions) printShareRequests:isPending:asJSON:error:]";
      v38 = 2080;
      if (!error)
      {
        v19 = "(ignored by caller)";
      }

      v39 = v19;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v16 = v13;
    *error = v13;
  }

  v17 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v17 & 1;
}

void __82__BRCAccountSession_DatabaseAdditions__printShareRequests_isPending_asJSON_error___block_invoke(uint64_t a1)
{
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRCAccountSession(DatabaseAdditions) printShareRequests:isPending:asJSON:error:]_block_invoke", 945, 0, v24);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __82__BRCAccountSession_DatabaseAdditions__printShareRequests_isPending_asJSON_error___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 208);
  v5 = dup([*(a1 + 40) fileDescriptor]);
  v6 = fdopen(v5, "a");
  if (v6)
  {
    v7 = [[BRCDumpContext alloc] initWithFile:v6 db:v4];
    [(BRCDumpContext *)v7 setTaskTracker:0];
    v8 = [*(*(a1 + 32) + 168) getParticipantsAndRecordIDsWithIsRequesters:*(a1 + 64)];
    v9 = v8;
    if (*(a1 + 65) == 1)
    {
      v10 = *(*(a1 + 48) + 8);
      obj = *(v10 + 40);
      v11 = [MEMORY[0x277CCAAA0] jsonStringFromDictionary:v8 options:1 error:&obj];
      objc_storeStrong((v10 + 40), obj);
      [(BRCDumpContext *)v7 writeLineWithFormat:@"%@", v11];
    }

    else
    {
      v11 = [v8 description];
      [(BRCDumpContext *)v7 writeLineWithFormat:@"%@", v11];
    }

    fclose(v6);
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      __86__BRCAccountSession_DatabaseAdditions__dumpStatusToFileHandle_zoneName_tracker_error___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  __brc_leave_section(v24);
}

- (id)_old_privateAppLibraryByZoneName:(id)name db:(id)db
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__BRCAccountSession_DatabaseMigrationHelpers___old_privateAppLibraryByZoneName_db___block_invoke;
  v6[3] = &unk_2784FF910;
  v6[4] = self;
  v4 = [db fetchObject:v6 sql:{@"SELECT rowid, app_library_name, app_library_plist, zone_rowid FROM app_libraries WHERE app_library_name = %@ AND (app_library_owner = %@ OR app_library_owner IS NULL)", name, *MEMORY[0x277CBBF28]}];

  return v4;
}

id __83__BRCAccountSession_DatabaseMigrationHelpers___old_privateAppLibraryByZoneName_db___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newAppLibraryFromPQLResultSet:a2 version:2];

  return v2;
}

- (id)trashedItemsEnumeratorFromNotifRank:(unint64_t)rank batchSize:(unint64_t)size db:(id)db
{
  dbCopy = db;
  v9 = [dbCopy fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items      WHERE item_scope = 3        AND item_notifs_rank >= %lld        AND item_user_visible = 1   ORDER BY item_notifs_rank ASC LIMIT %lld", rank, size}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__BRCAccountSession_FPFSAdditions__trashedItemsEnumeratorFromNotifRank_batchSize_db___block_invoke;
  v13[3] = &unk_2784FF938;
  v13[4] = self;
  v14 = dbCopy;
  v10 = dbCopy;
  v11 = [v9 enumerateObjects:v13];

  return v11;
}

id __85__BRCAccountSession_FPFSAdditions__trashedItemsEnumeratorFromNotifRank_batchSize_db___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newLocalItemFromPQLResultSet:a2 db:*(a1 + 40) error:a3];

  return v3;
}

- (BOOL)isMigratingToFPFS
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
  if (v3)
  {
    v4 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationUUIDKey"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)fpfsMigrationState
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)fpfsMigrationCleanupLastRowID
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationCleanupLastRowIDKey"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)fpfsMigrationInvestigatedItemsCount
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationInvestigatedItemCountKey"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)fpfsMigrationItemsNotMigratedDictionary
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  clientState = self->_clientState;

  return [(BRCClientState *)clientState objectForKeyedSubscript:@"kBRCFPFSMigrationItemsNotMigratedDictionaryKey"];
}

- (id)fpfsMigrationUUID
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  clientState = self->_clientState;

  return [(BRCClientState *)clientState objectForKeyedSubscript:@"kBRCFPFSMigrationUUIDKey"];
}

- (id)fpfsMigrationStartTime
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  clientState = self->_clientState;

  return [(BRCClientState *)clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStartTimeKey"];
}

- (id)fpfsMigrationEndTime
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  clientState = self->_clientState;

  return [(BRCClientState *)clientState objectForKeyedSubscript:@"kBRCFPFSMigrationEndTimeKey"];
}

- (int)fpfsMigrationMigratedTypes
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationMigratedTypesStatKey"];
  intValue = [v3 intValue];

  return intValue;
}

- (int)fpfsMigrationNonMigratedTypes
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationNonMigratedTypesStatKey"];
  intValue = [v3 intValue];

  return intValue;
}

- (BOOL)fpfsMigrationStatusTTRTriggered
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStatusTTRTriggeredKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)fpfsMigrationStatusTTRWasTriggered
{
  [(BRCClientState *)self->_clientState setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kBRCFPFSMigrationStatusTTRTriggeredKey"];
  clientDB = self->_clientDB;

  [(BRCPQLConnection *)clientDB forceBatchStart];
}

- (void)_updateFPFSMigrationItemTypes:(char)types withStateKey:(id)key isPackage:(BOOL)package
{
  packageCopy = package;
  typesCopy = types;
  keyCopy = key;
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v9 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    v10 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:keyCopy];
    intValue = [v10 intValue];

    setTypeFieldFromDBType(typesCopy, packageCopy, &intValue);
    v11 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
    [(BRCClientState *)self->_clientState setObject:v11 forKeyedSubscript:keyCopy];

    [(BRCPQLConnection *)self->_clientDB forceBatchStart];
  }
}

- (int64_t)fpfsMigrationBouncedItemCount
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationBouncedItemCountStatKey"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)fpfsMigrationBouncedMatrix
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationBouncedMatrixStatKey"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (void)_updateFPFSMigrationBouncedItemType:(char)type withExistingItemType:(char)itemType
{
  itemTypeCopy = itemType;
  typeCopy = type;
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v7 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationBouncedMatrixStatKey"];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BRCAccountSession fpfsMigrationBouncedItemCount](self, "fpfsMigrationBouncedItemCount") + 1}];
    [(BRCClientState *)self->_clientState setObject:v8 forKeyedSubscript:@"kBRCFPFSMigrationBouncedItemCountStatKey"];

    v9 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationBouncedMatrixStatKey"];
    longLongValue = [v9 longLongValue];
    v11 = longLongValue >> 16;
    v12 = longLongValue & 0xFFFFFFFFFF000000;

    if (typeCopy == itemTypeCopy)
    {
      LOBYTE(v11) = BYTE2(longLongValue) | 0x10;
LABEL_33:
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v11 << 16) | v12 | longLongValue];
      [(BRCClientState *)self->_clientState setObject:v15 forKeyedSubscript:@"kBRCFPFSMigrationBouncedMatrixStatKey"];

      [(BRCPQLConnection *)self->_clientDB forceBatchStart];
      return;
    }

    if (typeCopy <= 1)
    {
      if (typeCopy)
      {
        if (typeCopy != 1)
        {
LABEL_30:
          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (itemTypeCopy > 2)
        {
          if (itemTypeCopy == 4)
          {
            LOBYTE(v11) = BYTE2(longLongValue) | 2;
            goto LABEL_33;
          }

          if (itemTypeCopy == 3)
          {
            LOBYTE(v11) = BYTE2(longLongValue) | 4;
            goto LABEL_33;
          }
        }

        else
        {
          if (!itemTypeCopy)
          {
            LOBYTE(v11) = BYTE2(longLongValue) | 1;
            goto LABEL_33;
          }

          if (itemTypeCopy == 2)
          {
            LOBYTE(v11) = BYTE2(longLongValue) | 8;
            goto LABEL_33;
          }
        }

        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (itemTypeCopy > 2)
        {
          if (itemTypeCopy == 4)
          {
            LOWORD(longLongValue) = longLongValue | 1;
            goto LABEL_33;
          }

          if (itemTypeCopy == 3)
          {
            LOWORD(longLongValue) = longLongValue | 2;
            goto LABEL_33;
          }
        }

        else
        {
          if (itemTypeCopy == 1)
          {
            LOWORD(longLongValue) = longLongValue | 8;
            goto LABEL_33;
          }

          if (itemTypeCopy == 2)
          {
            LOWORD(longLongValue) = longLongValue | 4;
            goto LABEL_33;
          }
        }

        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      switch(typeCopy)
      {
        case 2:
          if (itemTypeCopy > 2)
          {
            if (itemTypeCopy == 4)
            {
              LOWORD(longLongValue) = longLongValue | 0x2000;
              goto LABEL_33;
            }

            if (itemTypeCopy == 3)
            {
              LOWORD(longLongValue) = longLongValue | 0x4000;
              goto LABEL_33;
            }
          }

          else
          {
            if (!itemTypeCopy)
            {
              LOWORD(longLongValue) = longLongValue | 0x1000;
              goto LABEL_33;
            }

            if (itemTypeCopy == 1)
            {
              LOWORD(longLongValue) = longLongValue | 0x8000;
              goto LABEL_33;
            }
          }

          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_32;
          }

          break;
        case 4:
          if (itemTypeCopy > 1)
          {
            if (itemTypeCopy == 2)
            {
              LOWORD(longLongValue) = longLongValue | 0x40;
              goto LABEL_33;
            }

            if (itemTypeCopy == 3)
            {
              LOWORD(longLongValue) = longLongValue | 0x20;
              goto LABEL_33;
            }
          }

          else
          {
            if (!itemTypeCopy)
            {
              LOWORD(longLongValue) = longLongValue | 0x10;
              goto LABEL_33;
            }

            if (itemTypeCopy == 1)
            {
              LOWORD(longLongValue) = longLongValue | 0x80;
              goto LABEL_33;
            }
          }

          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_32;
          }

          break;
        case 3:
          if (itemTypeCopy > 1)
          {
            if (itemTypeCopy == 2)
            {
              LOWORD(longLongValue) = longLongValue | 0x400;
              goto LABEL_33;
            }

            if (itemTypeCopy == 4)
            {
              LOWORD(longLongValue) = longLongValue | 0x200;
              goto LABEL_33;
            }
          }

          else
          {
            if (!itemTypeCopy)
            {
              LOWORD(longLongValue) = longLongValue | 0x100;
              goto LABEL_33;
            }

            if (itemTypeCopy == 1)
            {
              LOWORD(longLongValue) = longLongValue | 0x800;
              goto LABEL_33;
            }
          }

          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            break;
          }

LABEL_32:

          goto LABEL_33;
        default:
          goto LABEL_30;
      }
    }

LABEL_31:
    [BRCAccountSession(FPFSAdditions) _updateFPFSMigrationBouncedItemType:withExistingItemType:];
    goto LABEL_32;
  }
}

- (int64_t)fpfsMigrationNewItemsInDB
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationNewItemsInDBStatKey"];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (int64_t)fpfsMigrationNonMigratedItems
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCAccountSession *)self getFPFSNonMigratedItemsWithDB:self->_clientDB];
  longLongValue = [v3 longLongValue];

  return longLongValue;
}

- (void)updateFPFSMigrationNewItemsInDB
{
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationNewItemsInDBStatKey"];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationNewItemsInDBStatKey"];
    v6 = [v4 numberWithLongLong:{objc_msgSend(v5, "longLongValue") + 1}];
    [(BRCClientState *)self->_clientState setObject:v6 forKeyedSubscript:@"kBRCFPFSMigrationNewItemsInDBStatKey"];

    clientDB = self->_clientDB;

    [(BRCPQLConnection *)clientDB forceBatchStart];
  }
}

- (void)setFPFSMigrationState:(unsigned int)state
{
  v3 = *&state;
  v17[1] = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(FPFSAdditions) setFPFSMigrationState:];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [(BRCClientState *)self->_clientState setObject:v7 forKeyedSubscript:@"kBRCFPFSMigrationStateKey"];

  if (v3 == 2)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession(FPFSAdditions) setFPFSMigrationState:];
    }

    [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationCleanupLastRowIDKey"];
    fsImporter = [(BRCAccountSession(FPFSAdditions) *)self fsImporter];
    [fsImporter signal];
  }

  else if (!v3)
  {
    fpfsMigrationUUID = [(BRCAccountSession *)self fpfsMigrationUUID];

    if (fpfsMigrationUUID)
    {
      v9 = [MEMORY[0x277CBEAA8] now];
      [(BRCClientState *)self->_clientState setObject:v9 forKeyedSubscript:@"kBRCFPFSMigrationEndTimeKey"];

      [(BRCAccountSession *)self triggerFPFSImportFinishedTelemetryEventIfNeeded];
    }

    else
    {
      [(BRCAccountSession *)self _cleanupMigrationClientState];
    }
  }

  [(BRCPQLConnection *)self->_clientDB forceBatchStart];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = @"kBRCFPFSMigrationStateKey";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v17[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [defaultCenter postNotificationName:@"kBRCFPFSMigrationStateKey" object:0 userInfo:v15];
}

- (void)_cleanupMigrationClientState
{
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationStateKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationCleanupLastRowIDKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationLostItemCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationChildItemsLostItemCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationBusyDateLostItemCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationIgnoredFromSyncLostItemCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationStartTimeKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationEndTimeKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationInitialItemCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationInitialItemsNeedMigratingCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationMigratedTypesStatKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationNonMigratedTypesStatKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationBouncedItemCountStatKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationBouncedMatrixStatKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationNewItemsInDBStatKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationStatusMigrationStatsTakenAtKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationStatusLastItemsNotMigratedKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationStatusLastReconciledItemsKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationInvestigatedItemCountKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationItemsNotMigratedDictionaryKey"];
  [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationRecoveryWasInvokedAtKey"];
  clientState = self->_clientState;

  [(BRCClientState *)clientState scheduleFlush];
}

- (void)updateFPFSMigrationCleanupLastRowID:(unint64_t)d lostItemCount:(unint64_t)count childLostItemCount:(unint64_t)itemCount busyDateLostItemCount:(unint64_t)lostItemCount ignoredFromSyncLostItemCount:(unint64_t)syncLostItemCount investigatedItemsCount:(unint64_t)itemsCount notMigratedItems:(id)items
{
  itemsCopy = items;
  if (d)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    p_clientState = &self->_clientState;
    [(BRCClientState *)self->_clientState setObject:v16 forKeyedSubscript:@"kBRCFPFSMigrationCleanupLastRowIDKey"];

    if (count)
    {
      goto LABEL_3;
    }
  }

  else
  {
    p_clientState = &self->_clientState;
    [(BRCClientState *)self->_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationCleanupLastRowIDKey"];
    if (count)
    {
LABEL_3:
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
      [(BRCClientState *)*p_clientState setObject:v18 forKeyedSubscript:@"kBRCFPFSMigrationLostItemCountKey"];

      if (itemCount)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  [(BRCClientState *)*p_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationLostItemCountKey"];
  if (itemCount)
  {
LABEL_4:
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:itemCount];
    [(BRCClientState *)*p_clientState setObject:v19 forKeyedSubscript:@"kBRCFPFSMigrationChildItemsLostItemCountKey"];

    if (lostItemCount)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  [(BRCClientState *)*p_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationChildItemsLostItemCountKey"];
  if (lostItemCount)
  {
LABEL_5:
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:lostItemCount];
    [(BRCClientState *)*p_clientState setObject:v20 forKeyedSubscript:@"kBRCFPFSMigrationBusyDateLostItemCountKey"];

    if (syncLostItemCount)
    {
      goto LABEL_6;
    }

LABEL_12:
    [(BRCClientState *)*p_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationIgnoredFromSyncLostItemCountKey"];
    if (itemsCount)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  [(BRCClientState *)*p_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationBusyDateLostItemCountKey"];
  if (!syncLostItemCount)
  {
    goto LABEL_12;
  }

LABEL_6:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:syncLostItemCount];
  [(BRCClientState *)*p_clientState setObject:v21 forKeyedSubscript:@"kBRCFPFSMigrationIgnoredFromSyncLostItemCountKey"];

  if (itemsCount)
  {
LABEL_7:
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:itemsCount];
    [(BRCClientState *)*p_clientState setObject:v22 forKeyedSubscript:@"kBRCFPFSMigrationInvestigatedItemCountKey"];

    goto LABEL_14;
  }

LABEL_13:
  [(BRCClientState *)*p_clientState setObject:0 forKeyedSubscript:@"kBRCFPFSMigrationInvestigatedItemCountKey"];
LABEL_14:
  [(BRCClientState *)*p_clientState setObject:itemsCopy forKeyedSubscript:@"kBRCFPFSMigrationItemsNotMigratedDictionaryKey"];
  [(BRCPQLConnection *)self->_clientDB forceBatchStart];
}

- (void)_populateNonMigratedItemEventForLocalDataWithEvent:(id)event fileIDData:(id)data diagnosticDescriptor:(id)descriptor migrationStart:(id)start
{
  eventCopy = event;
  dataCopy = data;
  descriptorCopy = descriptor;
  startCopy = start;
  investigation = [eventCopy investigation];
  itemStatsInvestigation = [investigation itemStatsInvestigation];
  mTime = [itemStatsInvestigation mTime];

  [startCopy timeIntervalSince1970];
  v17 = v16;

  investigation2 = [eventCopy investigation];
  itemStatsInvestigation2 = [investigation2 itemStatsInvestigation];
  [itemStatsInvestigation2 setMTimeBeforeMigrationStarted:v17 > mTime];

  if ([eventCopy hasInvestigation])
  {
    investigation3 = [eventCopy investigation];
    hasItemStatsInvestigation = [investigation3 hasItemStatsInvestigation];

    if (hasItemStatsInvestigation)
    {
      if ([dataCopy count] >= 2)
      {
        investigation4 = [eventCopy investigation];
        itemStatsInvestigation3 = [investigation4 itemStatsInvestigation];
        if ([itemStatsInvestigation3 hasFsGenCount])
        {
          investigation5 = [eventCopy investigation];
          itemStatsInvestigation4 = [investigation5 itemStatsInvestigation];
          fsGenCount = [itemStatsInvestigation4 fsGenCount];
        }

        else
        {
          fsGenCount = 0;
        }

        v27 = [dataCopy objectAtIndexedSubscript:1];
        unsignedLongLongValue = [v27 unsignedLongLongValue];

        v29 = unsignedLongLongValue - fsGenCount;
        v30 = unsignedLongLongValue == fsGenCount;
        investigation6 = [eventCopy investigation];
        itemStatsInvestigation5 = [investigation6 itemStatsInvestigation];
        [itemStatsInvestigation5 setDoGenCountsMatchInFileId:v30];

        investigation7 = [eventCopy investigation];
        itemStatsInvestigation6 = [investigation7 itemStatsInvestigation];
        [itemStatsInvestigation6 setGencountDiff:v29];
      }

      if ([dataCopy count] >= 3)
      {
        v35 = [dataCopy objectAtIndexedSubscript:2];
        v36 = [v35 unsignedLongLongValue] != 0;
        investigation8 = [eventCopy investigation];
        itemStatsInvestigation7 = [investigation8 itemStatsInvestigation];
        [itemStatsInvestigation7 setHasLocalChanges:v36];
      }

      if ([dataCopy count] >= 4)
      {
        v39 = [dataCopy objectAtIndexedSubscript:3];
        unsignedLongLongValue2 = [v39 unsignedLongLongValue];

        v41 = unsignedLongLongValue2 == [descriptorCopy docID];
        investigation9 = [eventCopy investigation];
        itemStatsInvestigation8 = [investigation9 itemStatsInvestigation];
        [itemStatsInvestigation8 setDocIDMatches:v41];
      }

      if ([dataCopy count] >= 5)
      {
        v44 = [dataCopy objectAtIndexedSubscript:4];
        bOOLValue = [v44 BOOLValue];
        investigation10 = [eventCopy investigation];
        itemStatsInvestigation9 = [investigation10 itemStatsInvestigation];
        [itemStatsInvestigation9 setAppLibraryMatches:bOOLValue];

        diagnosticAttributes = [descriptorCopy diagnosticAttributes];
        v49 = [diagnosticAttributes objectForKeyedSubscript:*MEMORY[0x277CC60E0]];

        if (v49)
        {
          itemFetcher = [(BRCAccountSession *)self itemFetcher];
          v51 = [dataCopy objectAtIndexedSubscript:0];
          v52 = [itemFetcher itemByRowID:{objc_msgSend(v51, "unsignedLongLongValue")}];
          parentFileObjectID = [v52 parentFileObjectID];
          asString = [parentFileObjectID asString];

          v55 = [asString isEqualToString:v49];
          investigation11 = [eventCopy investigation];
          itemStatsInvestigation10 = [investigation11 itemStatsInvestigation];
          [itemStatsInvestigation10 setParentMatches:v55];
        }
      }
    }
  }
}

- (void)sendFileStatsTelemetryWithDescriptors:(id)descriptors perItemSendTelemetryBlock:(id)block
{
  descriptorsCopy = descriptors;
  blockCopy = block;
  if ([descriptorsCopy count])
  {
    br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__BRCAccountSession_FPFSAdditions__sendFileStatsTelemetryWithDescriptors_perItemSendTelemetryBlock___block_invoke;
    v8[3] = &unk_2785046F8;
    v9 = descriptorsCopy;
    v10 = blockCopy;
    [br_sharedProviderManager getDiagnosticAttributesForItems:v9 completionHandler:v8];
  }
}

void __100__BRCAccountSession_FPFSAdditions__sendFileStatsTelemetryWithDescriptors_perItemSendTelemetryBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v21 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v20 = *(a1 + 32);
      *buf = 138412802;
      v28 = v20;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] error while getting attributes for fileIDs %@: %@%@", buf, 0x20u);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 error];

          if (v15)
          {
            v16 = brc_bread_crumbs();
            v17 = brc_default_log();
            if (os_log_type_enabled(v17, 0x90u))
            {
              v18 = [v14 fileID];
              v19 = [v14 error];
              *buf = 134218498;
              v28 = v18;
              v29 = 2112;
              v30 = v19;
              v31 = 2112;
              v32 = v16;
              _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] Error occured while getting diagnostic attributes for fileID: %llu: %@%@", buf, 0x20u);
            }
          }

          else
          {
            (*(*(a1 + 40) + 16))();
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }
}

- (void)sendNonMigratedItemTelemetryWithfileIDs:(id)ds
{
  v30 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(FPFSAdditions) sendNonMigratedItemTelemetryWithfileIDs:];
  }

  fpfsMigrationUUID = [(BRCAccountSession *)self fpfsMigrationUUID];
  fpfsMigrationStartTime = [(BRCAccountSession *)self fpfsMigrationStartTime];
  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_alloc(MEMORY[0x277CC6490]) initWithFileID:{objc_msgSend(*(*(&v25 + 1) + 8 * v13), "unsignedLongLongValue")}];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__BRCAccountSession_FPFSAdditions__sendNonMigratedItemTelemetryWithfileIDs___block_invoke;
  v20[3] = &unk_278504720;
  v21 = fpfsMigrationUUID;
  selfCopy = self;
  v23 = v9;
  v24 = fpfsMigrationStartTime;
  v15 = fpfsMigrationStartTime;
  v16 = v9;
  v17 = fpfsMigrationUUID;
  [(BRCAccountSession *)self sendFileStatsTelemetryWithDescriptors:v8 perItemSendTelemetryBlock:v20];
}

void __76__BRCAccountSession_FPFSAdditions__sendNonMigratedItemTelemetryWithfileIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 diagnosticAttributes];
  v11 = [AppTelemetryTimeSeriesEvent newNonMigratedItemEvent:v3 foundInfo:v5];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "fileID")}];
  v9 = [v7 objectForKeyedSubscript:v8];
  [v6 _populateNonMigratedItemEventForLocalDataWithEvent:v11 fileIDData:v9 diagnosticDescriptor:v4 migrationStart:*(a1 + 56)];

  v10 = [*(a1 + 40) analyticsReporter];
  [v10 postReportForDefaultSubCategoryWithCategory:9 telemetryTimeEvent:v11];
}

- (void)markMigrationToFPFSCleanupComplete
{
  if ([(BRCAccountSession *)self fpfsMigrationState]== 2)
  {

    [(BRCAccountSession *)self setFPFSMigrationState:0];
  }
}

- (void)markMigrationToFPFSComplete
{
  if ([(BRCAccountSession *)self fpfsMigrationState]== 1)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession(FPFSAdditions) markMigrationToFPFSComplete];
    }

    [(BRCAccountSession *)self setFPFSMigrationState:2];
    [(BRCPQLConnection *)self->_clientDB flush];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession(FPFSAdditions) markMigrationToFPFSComplete];
    }
  }
}

- (void)invalidateExtensionXPCClient
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_extensionXPCClients copy];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    -[BRCAccountSession(FPFSAdditions) invalidateExtensionXPCClient].cold.1(v4, buf, [v3 count], v5);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([(NSMutableSet *)selfCopy->_extensionXPCClients count])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession(FPFSAdditions) invalidateExtensionXPCClient];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)groupContainerStagePathForCurrentPersonaFromStageType:(signed __int16)type
{
  typeCopy = type;
  v22 = *MEMORY[0x277D85DE8];
  if (groupContainerStagePathForCurrentPersonaFromStageType__once != -1)
  {
    [BRCAccountSession(FPFSAdditions) groupContainerStagePathForCurrentPersonaFromStageType:];
  }

  v4 = groupContainerStagePathForCurrentPersonaFromStageType__stageTypeToPathByPersonaID;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CCACA8] br_currentPersonaIDWithIsDataSeparated:0];
  v6 = groupContainerStagePathForCurrentPersonaFromStageType__stageTypeToPathByPersonaID;
  v7 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = groupContainerStagePathForCurrentPersonaFromStageType__stageTypeToPathByPersonaID;
    v10 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = [v8 objectForKeyedSubscript:v5];
  if (!v11)
  {
    if (typeCopy || ([MEMORY[0x277CCACA8] brc_groupDownloadStagePath], v14 = objc_claimAutoreleasedReturnValue(), (v11 = v14) == 0))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17[0] = 67109634;
        v17[1] = typeCopy;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] Can't find group container path of type %d for current persona %@%@", v17, 0x1Cu);
      }

      v11 = 0;
    }

    else
    {
      br_realpath = [v14 br_realpath];
      [v8 setObject:br_realpath forKeyedSubscript:v5];
    }
  }

  objc_sync_exit(v4);

  return v11;
}

uint64_t __90__BRCAccountSession_FPFSAdditions__groupContainerStagePathForCurrentPersonaFromStageType___block_invoke()
{
  groupContainerStagePathForCurrentPersonaFromStageType__stageTypeToPathByPersonaID = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)_createAppTelemetryFPFSMigrationInvestigation:(unsigned int)investigation
{
  v5 = objc_alloc_init(AppTelemetryFPFSMigrationInvestigation);
  v6 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"availableQuota"];
  -[AppTelemetryFPFSMigrationInvestigation setAccountQuotaUsage:](v5, "setAccountQuotaUsage:", [v6 br_roundedLongLongValue]);

  v7 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationInitialItemCountKey"];
  -[AppTelemetryFPFSMigrationInvestigation setTotalItemCount:](v5, "setTotalItemCount:", [v7 br_roundedLongLongValue]);

  [(AppTelemetryFPFSMigrationInvestigation *)v5 setIsAccountDataSeparated:[(BRCAccountSession *)self isDataSeparated]];
  if (investigation)
  {
    fpfsMigrationStartTime = [(BRCAccountSession *)self fpfsMigrationStartTime];
    [fpfsMigrationStartTime timeIntervalSinceNow];
    [(AppTelemetryFPFSMigrationInvestigation *)v5 setImportTime:-v9];

    [(AppTelemetryFPFSMigrationInvestigation *)v5 setTypesOfMigratedItemsMask:[(BRCAccountSession *)self fpfsMigrationMigratedTypes]];
    [(AppTelemetryFPFSMigrationInvestigation *)v5 setBouncedItemsCount:[(BRCAccountSession *)self fpfsMigrationBouncedItemCount]];
    [(AppTelemetryFPFSMigrationInvestigation *)v5 setBouncedItemsMatrix:[(BRCAccountSession *)self fpfsMigrationBouncedMatrix]];
    [(AppTelemetryFPFSMigrationInvestigation *)v5 setItemsNotFoundInDB:[(BRCAccountSession *)self fpfsMigrationNewItemsInDB]];
    if (investigation != 1)
    {
      fpfsMigrationEndTime = [(BRCAccountSession *)self fpfsMigrationEndTime];
      v11 = fpfsMigrationEndTime;
      if (fpfsMigrationEndTime)
      {
        v12 = fpfsMigrationEndTime;
      }

      else
      {
        v12 = [MEMORY[0x277CBEAA8] now];
      }

      v13 = v12;

      fpfsMigrationStartTime2 = [(BRCAccountSession *)self fpfsMigrationStartTime];
      [v13 timeIntervalSinceDate:fpfsMigrationStartTime2];
      [(AppTelemetryFPFSMigrationInvestigation *)v5 setImportTime:?];

      v15 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationLostItemCountKey"];
      -[AppTelemetryFPFSMigrationInvestigation setItemsNotMigratedCount:](v5, "setItemsNotMigratedCount:", [v15 br_roundedLongLongValue]);

      v16 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationChildItemsLostItemCountKey"];
      -[AppTelemetryFPFSMigrationInvestigation setChildItemsNotMigratedCount:](v5, "setChildItemsNotMigratedCount:", [v16 br_roundedLongLongValue]);

      v17 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationBusyDateLostItemCountKey"];
      -[AppTelemetryFPFSMigrationInvestigation setBusyDateNotMigratedCount:](v5, "setBusyDateNotMigratedCount:", [v17 br_roundedLongLongValue]);

      v18 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationIgnoredFromSyncLostItemCountKey"];
      -[AppTelemetryFPFSMigrationInvestigation setIgnoredFromSyncItemsNotMigratedCount:](v5, "setIgnoredFromSyncItemsNotMigratedCount:", [v18 br_roundedLongLongValue]);

      [(AppTelemetryFPFSMigrationInvestigation *)v5 setIsSuccessful:investigation == 2];
      [(AppTelemetryFPFSMigrationInvestigation *)v5 setTypesOfNonMigratedItemsMask:[(BRCAccountSession *)self fpfsMigrationNonMigratedTypes]];
    }
  }

  return v5;
}

- (void)_sendFPFSImportStartTelemetryEvent
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession(FPFSAdditions) _sendFPFSImportStartTelemetryEvent];
  }

  fpfsMigrationUUID = [(BRCAccountSession *)self fpfsMigrationUUID];
  v6 = [AppTelemetryTimeSeriesEvent newIntEvent:400 UUID:fpfsMigrationUUID value:1];
  v7 = [(BRCAccountSession *)self _createAppTelemetryFPFSMigrationInvestigation:0];
  investigation = [v6 investigation];
  [investigation setFpfsMigrationInvestigation:v7];

  analyticsReporter = [(BRCAccountSession *)self analyticsReporter];
  [analyticsReporter postReportForDefaultSubCategoryWithCategory:4 telemetryTimeEvent:v6];
}

- (void)_reportForFPFSImportStatusTelemetryEventIfNeeded:(unsigned int)needed completionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__31;
  v6[4] = __Block_byref_object_dispose__31;
  v7 = objc_alloc_init(BRCFPImportReport);
  v5 = handlerCopy;
  BRPerformWithPersonaAndError();

  _Block_object_dispose(v6, 8);
}

void __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v3 = [MEMORY[0x277CFAE58] br_getProviderDomainIDForCurrentPersona];
    v5 = [MEMORY[0x277CC63A8] sharedConnectionProxy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_106;
    v8[3] = &unk_278504748;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v6 = v7;
    v9 = v7;
    [v5 importProgressForDomainWithID:v3 completionHandler:v8];

    v4 = v9;
  }
}

void __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 fp_prettyDescription];
      *buf = 138412546;
      v35 = v15;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed querying the import status: %@%@", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CFABD0];
    v8 = [v7 fp_prettyDescription];
    [v16 br_errorWithDomain:v17 code:94 userInfo:&unk_2837B0DD8 description:{@"importProgressForDomainWithID failed: %@", v8, v28}];
    v18 = LABEL_19:;
    [*(*(*(a1 + 40) + 8) + 40) setImportError:v18];

    goto LABEL_28;
  }

  [*(*(*(a1 + 40) + 8) + 40) setFpReport:v5];
  if (![v5 status])
  {
    if (*(a1 + 48) == 2)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Migration might be stuck in MigrationNeedsClean status - send telemtry error!%@", buf, 0xCu);
      }

      [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:95 userInfo:&unk_2837B0E00 description:{@"Migration might be stuck in MigrationNeedsClean status and FP migration status is <%ld>", objc_msgSend(v5, "status")}];
    }

    else
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] There's no import ongoing in fp - send telemtry error!%@", buf, 0xCu);
      }

      [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:96 userInfo:&unk_2837B0E28 description:{@"Bird assuming BRMigrationInProgress but FP migration status is <%ld>", objc_msgSend(v5, "status")}];
    }
    v8 = ;
    [*(*(*(a1 + 40) + 8) + 40) setImportError:v8];
LABEL_28:

    goto LABEL_29;
  }

  if (([v5 status] == 2 || objc_msgSend(v5, "status") == 1) && objc_msgSend(v5, "numberOfItemsInError"))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v5 errorDetails];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v29 + 1) + 8 * i) retryCount] >= 4)
          {
            v23 = brc_bread_crumbs();
            v24 = brc_default_log();
            if (os_log_type_enabled(v24, 0x90u))
            {
              __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_106_cold_1();
            }

            v25 = MEMORY[0x277CCA9B8];
            v26 = *MEMORY[0x277CFABD0];
            v27 = [v5 numberOfItemsInError];
            v8 = [v5 errorDetails];
            [v25 br_errorWithDomain:v26 code:97 userInfo:&unk_2837B0E50 description:{@"FP has %ld items in error: <%@>", v27, v8}];
            goto LABEL_19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_28;
  }

LABEL_29:
  (*(*(a1 + 32) + 16))();
}

- (int64_t)_getAndUpdateDaysSinceLastMigrationProgress:(int64_t)progress itemsNotMigrated:(int64_t)migrated reconciledItems:(int64_t)items
{
  clientDB = [(BRCAccountSession *)self clientDB];
  [clientDB assertOnQueue];

  clientState = [(BRCAccountSession *)self clientState];
  v11 = [clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStatusLastItemsNotMigratedKey"];

  clientState2 = [(BRCAccountSession *)self clientState];
  v13 = [clientState2 objectForKeyedSubscript:@"kBRCFPFSMigrationStatusLastReconciledItemsKey"];

  clientState3 = [(BRCAccountSession *)self clientState];
  v15 = [clientState3 objectForKeyedSubscript:@"kBRCFPFSMigrationStatusMigrationStatsTakenAtKey"];

  v16 = [BRCUserDefaults defaultsForMangledID:0];
  if (!v15)
  {
    clientState4 = [(BRCAccountSession *)self clientState];
    [clientState4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kBRCFPFSMigrationStatusTTRTriggeredKey"];

LABEL_7:
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:progress];
    clientState5 = [(BRCAccountSession *)self clientState];
    [clientState5 setObject:v19 forKeyedSubscript:@"kBRCFPFSMigrationStatusMigrationStatsTakenAtKey"];

    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:migrated];
    clientState6 = [(BRCAccountSession *)self clientState];
    [clientState6 setObject:v21 forKeyedSubscript:@"kBRCFPFSMigrationStatusLastItemsNotMigratedKey"];

    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:items];
    clientState7 = [(BRCAccountSession *)self clientState];
    [clientState7 setObject:v23 forKeyedSubscript:@"kBRCFPFSMigrationStatusLastReconciledItemsKey"];

    clientDB2 = [(BRCAccountSession *)self clientDB];
    [clientDB2 forceBatchStart];

    v17 = 0;
    goto LABEL_8;
  }

  if ([v11 longLongValue] != migrated || objc_msgSend(v16, "fpfsStuckMigrationTakeReconciledItemsIntoAccount") && objc_msgSend(v13, "longLongValue") != items)
  {
    goto LABEL_7;
  }

  v17 = progress - [v15 longLongValue];
LABEL_8:

  return v17;
}

- (BOOL)_shouldTriggerTapToRadar:(int64_t)radar daysSinceLastMigrationProgress:(int64_t)progress
{
  if (!progress)
  {
    return 0;
  }

  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 fpfsImportStatusTelemetryStuckMigrationDaysThreshold] <= radar;

  return v6;
}

- (id)_createRecoveryExecutedErrorForImportError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  v5 = MEMORY[0x277CCA9B8];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v7 = -[v4 code];
    userInfo = [v4 userInfo];
    v9 = [v5 errorWithDomain:domain code:v7 userInfo:userInfo];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:131 description:@"FPFS Migration Recovery Initiated"];
  }

  return v9;
}

- (id)_triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted:(int64_t)started daysSinceLastMigrationProgress:(int64_t)progress importError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  clientDB = [(BRCAccountSession *)self clientDB];
  [clientDB assertOnQueue];

  clientState = [(BRCAccountSession *)self clientState];
  v11 = [clientState objectForKeyedSubscript:@"kBRCFPFSMigrationRecoveryWasInvokedAtKey"];

  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      startedCopy = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Recovery was already invoked once, ignoring%@", buf, 0xCu);
    }

    v14 = [(BRCAccountSession *)self _createRecoveryExecutedErrorForImportError:errorCopy];
    goto LABEL_16;
  }

  if ([MEMORY[0x277CFAEB0] isRunningOnMacOS] && ((objc_msgSend(MEMORY[0x277CFAEB0], "isSeedBuild") & 1) != 0 || (objc_msgSend(MEMORY[0x277CFAEB0], "isInternalBuild") & 1) != 0))
  {
    lastBootHistoryTime = [(BRCAccountSession *)self lastBootHistoryTime];
    v16 = time(0);
    v17 = [BRCUserDefaults defaultsForMangledID:0];
    v18 = v17;
    v19 = (v16 - lastBootHistoryTime) / 86400;
    if (lastBootHistoryTime && v19 >= [v17 fpfsStuckMigrationRecoveryDaysSinceUpgradeThreshold])
    {
      if ([v18 fpfsStuckMigrationRecoveryDaysSinceImportStartedThreshold] <= started)
      {
        if ([v18 fpfsStuckMigrationRecoveryDaysWithoutProgressThreshold] <= progress)
        {
          v26 = brc_bread_crumbs();
          v27 = brc_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            startedCopy = progress;
            v33 = 2112;
            v34 = v26;
            _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEFAULT, "[WARNING] Migration progress is stuck for %lld days, invoking recovery flow...%@", buf, 0x16u);
          }

          objc_initWeak(buf, self);
          clientTruthWorkloop = [(BRCAccountSession *)self clientTruthWorkloop];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke;
          block[3] = &unk_2784FF400;
          objc_copyWeak(&v30, buf);
          dispatch_async(clientTruthWorkloop, block);

          v22 = [(BRCAccountSession *)self _createRecoveryExecutedErrorForImportError:errorCopy];
          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
          goto LABEL_14;
        }

        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          startedCopy = progress;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[NOTICE] Days import is stuck (%lld) are less then threshold%@", buf, 0x16u);
        }

LABEL_13:
        v22 = errorCopy;
LABEL_14:

        goto LABEL_17;
      }

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        startedCopy = started;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[NOTICE] Days since import started (%lld) are less then threshold%@", buf, 0x16u);
      }
    }

    else
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        startedCopy = v19;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[NOTICE] Days since last boot history (%ld) are less then threshold%@", buf, 0x16u);
      }
    }

    goto LABEL_13;
  }

  v14 = errorCopy;
LABEL_16:
  v22 = v14;
LABEL_17:

  return v22;
}

void __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CC6348];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke_2;
  v2[3] = &unk_2784FF1F0;
  objc_copyWeak(&v3, (a1 + 32));
  [BRCImportUtil reimportItemsBelowItemWithIdentifier:v1 completionHandler:v2];
  objc_destroyWeak(&v3);
}

void __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke_2_cold_1();
    }

    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = [WeakRetained clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke_151;
    block[3] = &unk_2784FF450;
    block[4] = v4;
    dispatch_async(v5, block);
LABEL_6:
  }
}

void __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke_151(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = [*(a1 + 32) clientState];
  [v3 setObject:v2 forKeyedSubscript:@"kBRCFPFSMigrationRecoveryWasInvokedAtKey"];

  v4 = [*(a1 + 32) clientDB];
  [v4 forceBatchStart];
}

- (void)_populateFPFSImportStatusTelemetryEventForEvent:(id)event withFPImportReport:(id)report itemsNotMigrated:(int64_t)migrated
{
  eventCopy = event;
  reportCopy = report;
  investigation = [eventCopy investigation];
  hasFpfsMigrationInvestigation = [investigation hasFpfsMigrationInvestigation];

  if (hasFpfsMigrationInvestigation)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:migrated];
    br_roundedLongLongValue = [v11 br_roundedLongLongValue];
    investigation2 = [eventCopy investigation];
    fpfsMigrationInvestigation = [investigation2 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation setItemsNotMigratedCount:br_roundedLongLongValue];

    v15 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStatusLastItemsNotMigratedKey"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 longLongValue] - migrated;
    }

    else
    {
      v17 = -1;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
    br_roundedLongLongValue2 = [v18 br_roundedLongLongValue];
    investigation3 = [eventCopy investigation];
    fpfsMigrationInvestigation2 = [investigation3 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation2 setItemsNotMigratedDelta:br_roundedLongLongValue2];

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reportCopy, "numberOfItemsReconciled")}];
    br_roundedLongLongValue3 = [v22 br_roundedLongLongValue];
    investigation4 = [eventCopy investigation];
    fpfsMigrationInvestigation3 = [investigation4 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation3 setItemsReconciledInFileProvider:br_roundedLongLongValue3];

    v26 = [(BRCClientState *)self->_clientState objectForKeyedSubscript:@"kBRCFPFSMigrationStatusLastReconciledItemsKey"];
    if (v26)
    {
      numberOfItemsReconciled = [reportCopy numberOfItemsReconciled];
      v28 = numberOfItemsReconciled - [v26 longLongValue];
    }

    else
    {
      v28 = -1;
    }

    v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
    br_roundedLongLongValue4 = [v29 br_roundedLongLongValue];
    investigation5 = [eventCopy investigation];
    fpfsMigrationInvestigation4 = [investigation5 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation4 setItemsReconciledInFileProviderDelta:br_roundedLongLongValue4];

    v33 = MEMORY[0x277CCABB0];
    dbCreationTimestamp = [reportCopy dbCreationTimestamp];
    fpfsMigrationStartTime = [(BRCAccountSession *)self fpfsMigrationStartTime];
    [fpfsMigrationStartTime timeIntervalSince1970];
    v37 = [v33 numberWithDouble:dbCreationTimestamp - v36];
    br_roundedLongLongValue5 = [v37 br_roundedLongLongValue];
    investigation6 = [eventCopy investigation];
    fpfsMigrationInvestigation5 = [investigation6 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation5 setDurationBetweenDbCreationAndMigrationStart:br_roundedLongLongValue5];

    isStreamResetRunning = [reportCopy isStreamResetRunning];
    investigation7 = [eventCopy investigation];
    fpfsMigrationInvestigation6 = [investigation7 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation6 setIsStreamResetRunning:isStreamResetRunning];

    stateOfDownloadJobs = [reportCopy stateOfDownloadJobs];
    investigation8 = [eventCopy investigation];
    fpfsMigrationInvestigation7 = [investigation8 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation7 setStateOfDownloadJobs:stateOfDownloadJobs];

    stateOfUploadJobs = [reportCopy stateOfUploadJobs];
    investigation9 = [eventCopy investigation];
    fpfsMigrationInvestigation8 = [investigation9 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation8 setStateOfUploadJobs:stateOfUploadJobs];

    stateOfOtherJobs = [reportCopy stateOfOtherJobs];
    investigation10 = [eventCopy investigation];
    fpfsMigrationInvestigation9 = [investigation10 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation9 setStateOfOtherJobs:stateOfOtherJobs];

    v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reportCopy, "numberOfItemsPendingReconciliation")}];
    br_roundedLongLongValue6 = [v53 br_roundedLongLongValue];
    investigation11 = [eventCopy investigation];
    fpfsMigrationInvestigation10 = [investigation11 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation10 setNumberOfItemsPendingReconciliation:br_roundedLongLongValue6];

    v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reportCopy, "numberOfItemsPendingSelection")}];
    br_roundedLongLongValue7 = [v57 br_roundedLongLongValue];
    investigation12 = [eventCopy investigation];
    fpfsMigrationInvestigation11 = [investigation12 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation11 setNumberOfItemsPendingSelection:br_roundedLongLongValue7];

    v61 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reportCopy, "numberOfItemsPendingScanningDisk")}];
    br_roundedLongLongValue8 = [v61 br_roundedLongLongValue];
    investigation13 = [eventCopy investigation];
    fpfsMigrationInvestigation12 = [investigation13 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation12 setNumberOfItemsPendingScanningDisk:br_roundedLongLongValue8];

    v65 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reportCopy, "numberOfItemsPendingScanningProvider")}];
    br_roundedLongLongValue9 = [v65 br_roundedLongLongValue];
    investigation14 = [eventCopy investigation];
    fpfsMigrationInvestigation13 = [investigation14 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation13 setNumberOfItemsPendingScanningProvider:br_roundedLongLongValue9];

    xpcActivityRegisteredWithDuet = [reportCopy xpcActivityRegisteredWithDuet];
    investigation15 = [eventCopy investigation];
    fpfsMigrationInvestigation14 = [investigation15 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation14 setXpcActivityRegisteredWithDuet:xpcActivityRegisteredWithDuet];

    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(reportCopy, "xpcActivityTimeSinceLastRegistration")}];
    br_roundedLongLongValue10 = [v72 br_roundedLongLongValue];
    investigation16 = [eventCopy investigation];
    fpfsMigrationInvestigation15 = [investigation16 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation15 setXpcActivityTimeSinceLastRegistration:br_roundedLongLongValue10];

    xpcActivityIsActive = [reportCopy xpcActivityIsActive];
    investigation17 = [eventCopy investigation];
    fpfsMigrationInvestigation16 = [investigation17 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation16 setXpcActivityIsActive:xpcActivityIsActive];

    v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(reportCopy, "xpcActivityTimeSinceLastActivation")}];
    br_roundedLongLongValue11 = [v79 br_roundedLongLongValue];
    investigation18 = [eventCopy investigation];
    fpfsMigrationInvestigation17 = [investigation18 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation17 setXpcActivityTimeSinceLastActivation:br_roundedLongLongValue11];

    xpcActivityTimeSinceLastAbleToRun = [reportCopy xpcActivityTimeSinceLastAbleToRun];
    investigation19 = [eventCopy investigation];
    fpfsMigrationInvestigation18 = [investigation19 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation18 setXpcActivityTimeSinceLastAbleToRun:xpcActivityTimeSinceLastAbleToRun];

    xpcActivityDasdContext = [reportCopy xpcActivityDasdContext];
    investigation20 = [eventCopy investigation];
    fpfsMigrationInvestigation19 = [investigation20 fpfsMigrationInvestigation];
    [fpfsMigrationInvestigation19 setXpcActivityDasdContext:xpcActivityDasdContext];
  }
}

- (void)_sendTelemetryEventWithDiagnosticAttributes:(id)attributes event:(id)event
{
  eventCopy = event;
  v9 = [AppTelemetryTimeSeriesEvent itemStatsInvestigationWithFoundInfo:attributes];
  investigation = [eventCopy investigation];
  [investigation setItemStatsInvestigation:v9];

  analyticsReporter = [(BRCAccountSession *)self analyticsReporter];
  [analyticsReporter postReportForDefaultSubCategoryWithCategory:10 telemetryTimeEvent:eventCopy];
}

- (void)_sendItemsPendingReconciliation:(id)reconciliation event:(id)event
{
  eventCopy = event;
  reconciliationCopy = reconciliation;
  v11 = objc_alloc_init(AppTelemetryStuckStatus);
  -[AppTelemetryStuckStatus setItemPendingReconciliationIsLocked:](v11, "setItemPendingReconciliationIsLocked:", [reconciliationCopy itemPendingReconciliationIsLocked]);
  -[AppTelemetryStuckStatus setItemPendingReconciliationIsLockedInDB:](v11, "setItemPendingReconciliationIsLockedInDB:", [reconciliationCopy itemPendingReconciliationIsLockedInDB]);
  -[AppTelemetryStuckStatus setItemPendingReconciliationJobCode:](v11, "setItemPendingReconciliationJobCode:", [reconciliationCopy itemPendingReconciliationJobCode]);
  -[AppTelemetryStuckStatus setItemPendingReconciliationJobSchedulingState:](v11, "setItemPendingReconciliationJobSchedulingState:", [reconciliationCopy itemPendingReconciliationJobSchedulingState]);
  -[AppTelemetryStuckStatus setItemPendingReconciliationJobBlockingCode:](v11, "setItemPendingReconciliationJobBlockingCode:", [reconciliationCopy itemPendingReconciliationJobBlockingCode]);
  investigation = [eventCopy investigation];
  [investigation setStuckStatus:v11];

  diagnosticAttributes = [reconciliationCopy diagnosticAttributes];

  v9DiagnosticAttributes = [diagnosticAttributes diagnosticAttributes];
  [(BRCAccountSession *)self _sendTelemetryEventWithDiagnosticAttributes:v9DiagnosticAttributes event:eventCopy];
}

- (void)_sendItemsPendingScanningDisk:(id)disk event:(id)event
{
  eventCopy = event;
  diskCopy = disk;
  v20 = objc_alloc_init(AppTelemetryStuckStatus);
  -[AppTelemetryStuckStatus setItemPendingScanningDiskEnumerationStatus:](v20, "setItemPendingScanningDiskEnumerationStatus:", [diskCopy itemPendingScanningDiskEnumerationStatus]);
  -[AppTelemetryStuckStatus setItemPendingScanningDiskHasMultiplePagesEnumeration:](v20, "setItemPendingScanningDiskHasMultiplePagesEnumeration:", [diskCopy itemPendingScanningDiskHasMultiplePagesEnumeration]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingReconciliation")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingReconciliation:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingReconciliation:", [v8 br_roundedLongLongValue]);

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation:](v20, "setItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation:", [v9 br_roundedLongLongValue]);

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion:", [v10 br_roundedLongLongValue]);

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion:", [v11 br_roundedLongLongValue]);

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent:", [v12 br_roundedLongLongValue]);

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingSyncUp")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingSyncUp:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingSyncUp:", [v13 br_roundedLongLongValue]);

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent:", [v14 br_roundedLongLongValue]);

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingSyncDown")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingSyncDown:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingSyncDown:", [v15 br_roundedLongLongValue]);

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(diskCopy, "itemPendingScanningDiskNumberOfChildrenPendingRejection")}];
  -[AppTelemetryStuckStatus setItemPendingScanningDiskNumberOfChildrenPendingRejection:](v20, "setItemPendingScanningDiskNumberOfChildrenPendingRejection:", [v16 br_roundedLongLongValue]);

  investigation = [eventCopy investigation];
  [investigation setStuckStatus:v20];

  diagnosticAttributes = [diskCopy diagnosticAttributes];

  v18DiagnosticAttributes = [diagnosticAttributes diagnosticAttributes];
  [(BRCAccountSession *)self _sendTelemetryEventWithDiagnosticAttributes:v18DiagnosticAttributes event:eventCopy];
}

- (void)_sendItemsPendingScanningProvider:(id)provider event:(id)event
{
  eventCopy = event;
  providerCopy = provider;
  v14 = objc_alloc_init(AppTelemetryStuckStatus);
  -[AppTelemetryStuckStatus setItemPendingScanningProviderEnumerationStatus:](v14, "setItemPendingScanningProviderEnumerationStatus:", [providerCopy itemPendingScanningProviderEnumerationStatus]);
  -[AppTelemetryStuckStatus setItemPendingScanningProviderHasMultiplePagesEnumeration:](v14, "setItemPendingScanningProviderHasMultiplePagesEnumeration:", [providerCopy itemPendingScanningProviderHasMultiplePagesEnumeration]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(providerCopy, "itemPendingScanningProviderNumberOfChildren")}];
  -[AppTelemetryStuckStatus setItemPendingScanningProviderNumberOfChildren:](v14, "setItemPendingScanningProviderNumberOfChildren:", [v8 br_roundedLongLongValue]);

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(providerCopy, "itemPendingScanningProviderNumberOfChildrenPendingCreation")}];
  -[AppTelemetryStuckStatus setItemPendingScanningProviderNumberOfChildrenPendingCreation:](v14, "setItemPendingScanningProviderNumberOfChildrenPendingCreation:", [v9 br_roundedLongLongValue]);

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(providerCopy, "itemPendingScanningProviderNumberOfChildrenFailingCreation")}];
  -[AppTelemetryStuckStatus setItemPendingScanningProviderNumberOfChildrenFailingCreation:](v14, "setItemPendingScanningProviderNumberOfChildrenFailingCreation:", [v10 br_roundedLongLongValue]);

  -[AppTelemetryStuckStatus setItemPendingScanningProviderRemovalOfDatalessBitStatus:](v14, "setItemPendingScanningProviderRemovalOfDatalessBitStatus:", [providerCopy itemPendingScanningProviderRemovalOfDatalessBitStatus]);
  investigation = [eventCopy investigation];
  [investigation setStuckStatus:v14];

  diagnosticAttributes = [providerCopy diagnosticAttributes];

  v12DiagnosticAttributes = [diagnosticAttributes diagnosticAttributes];
  [(BRCAccountSession *)self _sendTelemetryEventWithDiagnosticAttributes:v12DiagnosticAttributes event:eventCopy];
}

- (void)_sendTelemetryEventForPendingItemsWithFPReport:(id)report migrationUUID:(id)d daysSinceImportStarted:(int64_t)started
{
  reportCopy = report;
  dCopy = d;
  itemsPendingReconciliation = [reportCopy itemsPendingReconciliation];
  v10 = [itemsPendingReconciliation count];

  itemsPendingScanningDisk = [reportCopy itemsPendingScanningDisk];
  v12 = [itemsPendingScanningDisk count];

  itemsPendingScanningProvider = [reportCopy itemsPendingScanningProvider];
  v14 = [itemsPendingScanningProvider count];

  v15 = [BRCUserDefaults defaultsForMangledID:0];
  migrationStatusPendingItemsTelemetryLimit = [v15 migrationStatusPendingItemsTelemetryLimit];

  v24 = dCopy;
  v17 = [AppTelemetryTimeSeriesEvent newLongEvent:404 UUID:dCopy value:started];
  for (i = 0; i != 3; ++i)
  {
    if (migrationStatusPendingItemsTelemetryLimit)
    {
      for (j = 0; migrationStatusPendingItemsTelemetryLimit != j; ++j)
      {
        if (i || j >= v10)
        {
          if (i == 1 && j < v12)
          {
            itemsPendingScanningDisk2 = [reportCopy itemsPendingScanningDisk];
            v21 = [itemsPendingScanningDisk2 objectAtIndexedSubscript:j];

            [(BRCAccountSession *)self _sendItemsPendingScanningDisk:v21 event:v17];
          }

          else
          {
            if (i != 2 || j >= v14)
            {
              break;
            }

            itemsPendingScanningProvider2 = [reportCopy itemsPendingScanningProvider];
            v21 = [itemsPendingScanningProvider2 objectAtIndexedSubscript:j];

            [(BRCAccountSession *)self _sendItemsPendingScanningProvider:v21 event:v17];
          }
        }

        else
        {
          itemsPendingReconciliation2 = [reportCopy itemsPendingReconciliation];
          v21 = [itemsPendingReconciliation2 objectAtIndexedSubscript:j];

          [(BRCAccountSession *)self _sendItemsPendingReconciliation:v21 event:v17];
        }
      }
    }
  }
}

- (void)_sendFPFSImportStatusTelemetryEvent
{
  v27 = *MEMORY[0x277D85DE8];
  fpfsMigrationUUID = [(BRCAccountSession *)self fpfsMigrationUUID];
  fpfsMigrationState = [(BRCAccountSession *)self fpfsMigrationState];
  if ((fpfsMigrationState - 3) >= 0xFFFFFFFE)
  {
    v5 = fpfsMigrationState;
    v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    fpfsMigrationStartTime = [(BRCAccountSession *)self fpfsMigrationStartTime];
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = [v6 components:16 fromDate:fpfsMigrationStartTime toDate:v8 options:0];
    v10 = [v9 day];

    v11 = [BRCUserDefaults defaultsForMangledID:0];
    fpfsImportStatusTelemetryDaysThreshold = [v11 fpfsImportStatusTelemetryDaysThreshold];

    if (v10 >= fpfsImportStatusTelemetryDaysThreshold)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountSession(FPFSAdditions) _sendFPFSImportStatusTelemetryEvent];
      }

      objc_initWeak(location, self);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke;
      v18[3] = &unk_2785047C0;
      objc_copyWeak(v21, location);
      v17 = fpfsMigrationUUID;
      v21[1] = v10;
      v19 = v17;
      selfCopy = self;
      [(BRCAccountSession *)self _reportForFPFSImportStatusTelemetryEventIfNeeded:v5 completionHandler:v18];

      objc_destroyWeak(v21);
      objc_destroyWeak(location);
    }

    else
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *location = 134218498;
        *&location[4] = v10;
        v23 = 1024;
        v24 = fpfsImportStatusTelemetryDaysThreshold;
        v25 = 2112;
        v26 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Not sending FPFS Import status telemetry because: Days since import started: %ld. Threshold: %d%@", location, 0x1Cu);
      }
    }
  }
}

void __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_2;
    block[3] = &unk_278504798;
    v7 = *(a1 + 32);
    v13[1] = *(a1 + 56);
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    v12 = v3;
    objc_copyWeak(v13, (a1 + 48));
    dispatch_async(v6, block);
    objc_destroyWeak(v13);
  }
}

void __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_2(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v47 = [AppTelemetryTimeSeriesEvent newLongEvent:402 UUID:*(a1 + 32) value:*(a1 + 64)];
  v2 = [*(a1 + 40) _createAppTelemetryFPFSMigrationInvestigation:1];
  v3 = [v47 investigation];
  [v3 setFpfsMigrationInvestigation:v2];

  v4 = [*(a1 + 48) importError];
  v50 = 0;
  v5 = [*(a1 + 40) fetchAccountWaitOperationWithAccountReady:&v50];
  if ((v50 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:137 description:@"Account is not ready"];

    v4 = v6;
  }

  v7 = [*(a1 + 40) fpfsMigrationNonMigratedItems];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) fpReport];
  [v8 _populateFPFSImportStatusTelemetryEventForEvent:v47 withFPImportReport:v9 itemsNotMigrated:v7];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) fpReport];
  [v10 _sendTelemetryEventForPendingItemsWithFPReport:v11 migrationUUID:*(a1 + 32) daysSinceImportStarted:*(a1 + 64)];

  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  v14 = [*(a1 + 48) fpReport];
  v15 = [v12 _getAndUpdateDaysSinceLastMigrationProgress:v13 itemsNotMigrated:v7 reconciledItems:{objc_msgSend(v14, "numberOfItemsReconciled")}];

  v16 = [*(a1 + 40) _triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted:*(a1 + 64) daysSinceLastMigrationProgress:v15 importError:v4];

  if (!v16)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_2_cold_1();
    }

    goto LABEL_10;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138412802;
    v52 = v19;
    v53 = 2112;
    v54 = v16;
    v55 = 2112;
    v56 = v17;
    _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Sending Error FPFS migration status telemetry event (%@) with error: %@%@", buf, 0x20u);
  }

  v20 = [v16 code];
  v21 = [v47 investigation];
  [v21 setErrorCode:v20];

  v22 = [v16 domain];
  v23 = [v47 investigation];
  [v23 setErrorDomain:v22];

  v24 = MEMORY[0x277CCACA8];
  v25 = [v16 fp_prettyDescription];
  v26 = [v24 stringWithFormat:@"%@", v25];
  v27 = [v47 investigation];
  [v27 setErrorDescription:v26];

  v28 = [v16 userInfo];
  v29 = [v28 objectForKey:@"OriginatorID"];

  if (v29)
  {
    v30 = [v29 stringValue];
    v31 = [v47 investigation];
    [v31 setOperationType:v30];

LABEL_10:
  }

  v32 = [*(a1 + 40) analyticsReporter];
  [v32 postReportForDefaultSubCategoryWithCategory:6 telemetryTimeEvent:v47];

  [*(a1 + 40) _fixImportStatusErrorIfPossible:v16];
  if ((!v16 || ([v16 br_isCloudDocsErrorCode:96] & 1) == 0) && objc_msgSend(*(a1 + 40), "_shouldTriggerTapToRadar:daysSinceLastMigrationProgress:", *(a1 + 64), v15))
  {
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v33;
      _os_log_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEFAULT, "[NOTICE] Triggering request for diagnostic collection from file provider%@", buf, 0xCu);
    }

    v35 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
    v36 = [MEMORY[0x277CCA9B8] brc_errorStuckFPFSMigration];
    [v35 requestDiagnosticCollectionForItemWithIdentifier:*MEMORY[0x277CC6348] errorReason:v36 completionHandler:&__block_literal_global_163];

    if (([*(a1 + 40) fpfsMigrationStatusTTRTriggered] & 1) == 0)
    {
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v37;
        _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEFAULT, "[NOTICE] Triggering TTR due to stuck migration%@", buf, 0xCu);
      }

      v39 = MEMORY[0x277CCACA8];
      v40 = [v47 telemetrySchema];
      if (v40 > 299)
      {
        if (v40 <= 402)
        {
          if (v40 > 400)
          {
            if (v40 == 401)
            {
              v41 = @"FPFS_MIGRATION_FINISHED";
            }

            else
            {
              v41 = @"FPFS_MIGRATION_STATUS_REPORT";
            }
          }

          else if (v40 == 300)
          {
            v41 = @"INITIAL_SCAN_REJECTED_MISMATCH_TYPE";
          }

          else if (v40 == 400)
          {
            v41 = @"FPFS_MIGRATION_STARTED";
          }

          else
          {
LABEL_58:
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v40];
          }
        }

        else
        {
          switch(v40)
          {
            case 500:
              v41 = @"ITEM_BOUNCE_APPLY_NEW_WITH_EXISTING";
              break;
            case 501:
              v41 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW";
              break;
            case 502:
              v41 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_EXISTING";
              break;
            case 503:
              v41 = @"ITEM_BOUNCE_BY_SERVER";
              break;
            case 504:
              v41 = @"ITEM_BOUNCE_CREATE_ITEM_WITH_EXISTING";
              break;
            case 505:
              v41 = @"ITEM_BOUNCE_CHANGE_ITEM_WITH_EXISTING";
              break;
            case 506:
              v41 = @"ITEM_BOUNCE_SHARE_ACCEPT_EXISTING_WITH_NEW";
              break;
            case 507:
              v41 = @"ITEM_BOUNCE_SHARE_ACCEPT_NEW_WITH_EXISTING";
              break;
            case 508:
              v41 = @"ITEM_BOUNCE_TRASHED_ITEM";
              break;
            case 509:
              v41 = @"ITEM_BOUNCE_ITEM_DIRECTORY_MERGE";
              break;
            case 510:
              v41 = @"ITEM_BOUNCE_NEW_DIRECTORY_WITH_EXISTING";
              break;
            case 511:
              v41 = @"ITEM_BOUNCE_EXISTING_WITH_NEW_DIRECTORY";
              break;
            case 512:
              v41 = @"ITEM_BOUNCE_ITEM_WITH_DOCUMENTS_FOLDER";
              break;
            case 513:
              v41 = @"ITEM_BOUNCE_APPLY_DEAD_EXISTING_WITH_NEW";
              break;
            case 514:
              v41 = @"ITEM_BOUNCE_APPLY_NOT_KNOWN_BY_SERVER_WITH_NEW";
              break;
            case 515:
              v41 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_REPARENT_WITH_NEW";
              break;
            case 516:
              v41 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_FILE_NAME_WITH_NEW";
              break;
            case 517:
              v41 = @"ITEM_BOUNCE_APPLY_INITIAL_SCAN_WITH_NEW";
              break;
            case 518:
              v41 = @"ITEM_BOUNCE_APPLY_SHARED_ITEM_WITH_NEW_SHARED_ITEM_UNTITLED_FILE_NAME";
              break;
            case 519:
              v41 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW_UNTITLED_FILE_NAME";
              break;
            default:
              if (v40 == 403)
              {
                v41 = @"FPFS_MIGRATION_NON_MIGRATED_ITEM_REPORT";
              }

              else
              {
                if (v40 != 404)
                {
                  goto LABEL_58;
                }

                v41 = @"FPFS_MIGRATION_STUCK_STATUS";
              }

              break;
          }
        }
      }

      else
      {
        v41 = @"UNKNOWN";
        switch(v40)
        {
          case 0:
            break;
          case 1:
            v41 = @"_UNUSED_SYNC_UP_BACKOFF_RATIO";
            break;
          case 2:
            v41 = @"FOLDER_SHARING_ITEM_COUNT_MISMATCH";
            break;
          case 3:
            v41 = @"MISSING_PUSH";
            break;
          case 4:
            v41 = @"PERMANENTLY_INCONSISTENT";
            break;
          case 5:
            v41 = @"DROPPED_EVENTS";
            break;
          case 6:
            v41 = @"TEST_METRIC";
            break;
          case 7:
            v41 = @"SHARE_ALIAS_IN_SHARED_FOLDER";
            break;
          case 8:
            v41 = @"MALIGNANT_ZONE_RESET";
            break;
          case 9:
            v41 = @"BENIGN_ZONE_RESET";
            break;
          case 10:
            v41 = @"DB_RESET";
            break;
          case 11:
            v41 = @"APPLY_SCHEDULER_MISSING_JOBS";
            break;
          case 12:
            v41 = @"SYNC_UP_MISSING_JOBS";
            break;
          case 13:
            v41 = @"READER_MISSING_JOBS";
            break;
          case 14:
            v41 = @"UPLOADER_MISSING_JOBS";
            break;
          case 15:
            v41 = @"DOWNLOADER_MISSING_JOBS";
            break;
          case 16:
            v41 = @"_UNUSED_SYNC_UP_BACKOFF_DELAY";
            break;
          case 17:
            v41 = @"FOLDER_SHARING_PCS_CHAINING";
            break;
          case 18:
            v41 = @"NEW_SHARE_ACCEPTATION";
            break;
          case 19:
            v41 = @"FS_EVENT_TO_SYNC_UP";
            break;
          case 20:
            v41 = @"USER_DOWNLOAD";
            break;
          case 21:
            v41 = @"CORRUPT_PACKAGE_DOWNLOAD";
            break;
          case 22:
            v41 = @"DIRECTORY_MISSING_CHAINPCS";
            break;
          case 23:
            v41 = @"SYNC_BOOSTING_PROBLEM_COUNT";
            break;
          case 24:
            v41 = @"DEEP_SCAN";
            break;
          case 25:
            v41 = @"OPERATION_TIMED_OUT";
            break;
          case 26:
            v41 = @"MISSING_SHARE_ALIAS";
            break;
          case 27:
            v41 = @"ASSET_CONTENT_NOT_FOUND";
            break;
          case 28:
            v41 = @"QBS_DIR_FAULT_COUNT";
            break;
          case 29:
            v41 = @"FILE_BOUNCED_MANY_TIMES";
            break;
          case 30:
            v41 = @"SYNC_UP_BACKOFF_RATIO_SUMMARY";
            break;
          case 31:
            v41 = @"SYNC_UP_BACKOFF_DELAY_SUMMARY";
            break;
          case 32:
            v41 = @"QBS_PERFORMANCE";
            break;
          case 33:
            v41 = @"ACCOUNT_SESSION_OPEN_ERROR";
            break;
          case 34:
            v41 = @"CORRUPT_SHARING_OPTIONS";
            break;
          case 35:
            v41 = @"INCORRECT_CONTENT_POLICY_COUNT";
            break;
          case 36:
            v41 = @"CORRUPT_BASEHASH_SALT_COUNT";
            break;
          case 37:
            v41 = @"EDP_KEYS_MISMATCH";
            break;
          case 38:
            v41 = @"DATABASE_ID_MISMATCH";
            break;
          case 39:
            v41 = @"COLLABORATION_UPLOAD";
            break;
          case 40:
            v41 = @"DANGLING_ZOMBIE_DIRECTORY_COUNT";
            break;
          case 41:
            v41 = @"RECORD_VALUE_ERROR";
            break;
          case 42:
            v41 = @"AGGRESSIVE_SALTING";
            break;
          case 43:
            v41 = @"REIMPORT_DOMAIN_FAILED_ON_STARTUP";
            break;
          case 44:
            v41 = @"EXCEEDED_UPLOADS_ON_CELLULAR";
            break;
          case 45:
            v41 = @"PRECENTAGE_OF_BYTES_UPLOADED_FOR_BATCH";
            break;
          case 46:
            v41 = @"BOUNCED_DOCUMENTS_DIRECTORY_COUNT";
            break;
          case 47:
            v41 = @"SAVE_SHARE_ERROR";
            break;
          case 48:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
          case 77:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 92:
          case 93:
          case 94:
          case 95:
          case 96:
          case 97:
          case 98:
          case 99:
            goto LABEL_58;
          case 49:
            v41 = @"MISSING_PUSH_V2";
            break;
          case 100:
            v41 = @"FULLY_CONSISTENT";
            break;
          case 101:
            v41 = @"FILE_CHECKSUM_MISMATCH";
            break;
          case 102:
            v41 = @"PACKAGE_CHECKSUM_MISMATCH";
            break;
          case 103:
            v41 = @"CHILD_COUNT_MISMATCH";
            break;
          case 104:
            v41 = @"RECURSIVE_ITEM_COUNT_MISMATCH";
            break;
          case 105:
            v41 = @"SHARE_ALIAS_COUNT_MISMATCH";
            break;
          case 106:
            v41 = @"SHARE_COUNT_MISMATCH";
            break;
          case 107:
            v41 = @"CONSISTENCY_CHECKER_FAILED";
            break;
          case 108:
            v41 = @"FILE_READ_ERROR";
            break;
          default:
            switch(v40)
            {
              case 200:
                v41 = @"CA_TOTAL_ERROR_COUNT";
                break;
              case 201:
                v41 = @"CA_UPLOAD_ERROR_COUNT";
                break;
              case 202:
                v41 = @"CA_DOWNLOAD_ERROR_COUNT";
                break;
              case 203:
                v41 = @"CA_SYNC_UP_ITEM_ERROR_COUNT";
                break;
              case 204:
                v41 = @"CA_SYNC_UP_ZONE_ERROR_COUNT";
                break;
              case 205:
                v41 = @"CA_SYNC_DOWN_ERROR_COUNT";
                break;
              case 210:
                v41 = @"CA_UPLOAD_ERROR";
                break;
              case 211:
                v41 = @"CA_DOWNLOAD_ERROR";
                break;
              case 212:
                v41 = @"CA_SYNC_UP_ITEM_ERROR";
                break;
              case 213:
                v41 = @"CA_SYNC_UP_ZONE_ERROR";
                break;
              case 214:
                v41 = @"CA_SYNC_DOWN_ERROR";
                break;
              case 215:
                v41 = @"CA_DAMAGED_FILE_UPLOAD_ERROR";
                break;
              case 216:
                v41 = @"CA_NIL_APP_LIBRARY";
                break;
              case 217:
                v41 = @"DANGLING_SHARE_REQUESTERS";
                break;
              default:
                goto LABEL_58;
            }

            break;
        }
      }

      v42 = [v16 domain];
      v43 = [v39 stringWithFormat:@"%@ (%@: %ld)", v41, v42, objc_msgSend(v16, "code")];

      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"FPFS Migration is running for then %ld days and might be stuck.\nError: %@", *(a1 + 64), v16];
      v45 = [*(a1 + 40) tapToRadarManager];
      v46 = [MEMORY[0x277CCA9B8] brc_errorStuckFPFSMigration];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_178;
      v48[3] = &unk_2784FF1F0;
      objc_copyWeak(&v49, (a1 + 56));
      [v45 requestTapToRadarWithTitle:v43 description:v44 keywords:&unk_2837B0C58 attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"FPFS migration seem stuck" triggerRootCause:v46 additionalDevices:0 completionHandler:v48];

      objc_destroyWeak(&v49);
    }
  }
}

void __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_161(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Request for diagnostic collection returned with error: %@%@", &v5, 0x16u);
  }
}

void __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_178(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[7] = v2;
    block[8] = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained[6];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_2_179;
      block[3] = &unk_2784FF450;
      block[4] = v5;
      dispatch_async_and_wait(v6, block);
    }
  }
}

- (void)triggerFPFSImportFinishedTelemetryEventIfNeeded
{
  if ([(BRCAccountSession *)self isMigratingToFPFS])
  {
    fpfsMigrationState = [(BRCAccountSession *)self fpfsMigrationState];
    if (fpfsMigrationState == 1)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __83__BRCAccountSession_FPFSAdditions__triggerFPFSImportFinishedTelemetryEventIfNeeded__block_invoke;
      v6[3] = &unk_2785047E8;
      v6[4] = self;
      [(BRCAccountSession *)self _reportForFPFSImportStatusTelemetryEventIfNeeded:1 completionHandler:v6];
    }

    else if (!fpfsMigrationState)
    {

      [(BRCAccountSession *)self _triggerFPFSImportFinishedTelemetryEvent];
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession(FPFSAdditions) triggerFPFSImportFinishedTelemetryEventIfNeeded];
    }
  }
}

void __83__BRCAccountSession_FPFSAdditions__triggerFPFSImportFinishedTelemetryEventIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 importError];
  [v2 _fixImportStatusErrorIfPossible:v3];
}

- (void)_fixImportStatusErrorIfPossible:(id)possible
{
  if ([possible br_isCloudDocsErrorCode:96])
  {
    clientTruthWorkloop = self->_clientTruthWorkloop;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__BRCAccountSession_FPFSAdditions___fixImportStatusErrorIfPossible___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(clientTruthWorkloop, block);
  }
}

uint64_t __68__BRCAccountSession_FPFSAdditions___fixImportStatusErrorIfPossible___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Seems that we missed the notification about migration complete. Completing it now.%@", &v5, 0xCu);
  }

  return [*(a1 + 32) markMigrationToFPFSComplete];
}

void __76__BRCAccountSession_FPFSAdditions___triggerFPFSImportFinishedTelemetryEvent__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v3 = [MEMORY[0x277CFAE58] br_getProviderDomainIDForCurrentPersona];
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__BRCAccountSession_FPFSAdditions___triggerFPFSImportFinishedTelemetryEvent__block_invoke_cold_2();
    }

    v7 = [*(*(a1 + 32) + 232) objectForKeyedSubscript:@"kBRCFPFSMigrationLostItemCountKey"];
    v8 = [v7 br_roundedLongLongValue];

    v4 = [*(a1 + 32) fpfsMigrationUUID];
    if (v8)
    {
      v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:90 userInfo:MEMORY[0x277CBEC10] description:{@"Found approximately %llu items that were not migrated by FP", v8}];
    }

    [*(a1 + 32) _sendFPFSImportFinishedTelemetryEvent:v8];
  }
}

- (void)_sendFPFSImportFinishedTelemetryEvent:(id)event
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  fpfsMigrationUUID = [(BRCAccountSession *)self fpfsMigrationUUID];
  v6 = [AppTelemetryTimeSeriesEvent newIntEvent:401 UUID:fpfsMigrationUUID value:eventCopy == 0];
  if (!eventCopy)
  {
    v18 = brc_bread_crumbs();
    stringValue = brc_default_log();
    v21 = 2;
    if (os_log_type_enabled(stringValue, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession(FPFSAdditions) _sendFPFSImportFinishedTelemetryEvent:];
    }

    goto LABEL_8;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = fpfsMigrationUUID;
    v41 = 2112;
    v42 = eventCopy;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Sending Error FPFS migration finished telemetry event (%@) with error: %@%@", buf, 0x20u);
  }

  code = [eventCopy code];
  investigation = [v6 investigation];
  [investigation setErrorCode:code];

  domain = [eventCopy domain];
  investigation2 = [v6 investigation];
  [investigation2 setErrorDomain:domain];

  v13 = MEMORY[0x277CCACA8];
  fp_prettyDescription = [eventCopy fp_prettyDescription];
  v15 = [v13 stringWithFormat:@"%@", fp_prettyDescription];
  investigation3 = [v6 investigation];
  [investigation3 setErrorDescription:v15];

  userInfo = [eventCopy userInfo];
  v18 = [userInfo objectForKey:@"OriginatorID"];

  if (v18)
  {
    stringValue = [v18 stringValue];
    investigation4 = [v6 investigation];
    [investigation4 setOperationType:stringValue];

    v21 = 3;
LABEL_8:

    goto LABEL_10;
  }

  v21 = 3;
LABEL_10:

  v22 = [(BRCAccountSession *)self _createAppTelemetryFPFSMigrationInvestigation:v21];
  investigation5 = [v6 investigation];
  [investigation5 setFpfsMigrationInvestigation:v22];

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(BRCAccountSession(FPFSAdditions) *)v6 _sendFPFSImportFinishedTelemetryEvent:v24, v25];
  }

  analyticsReporter = [(BRCAccountSession *)self analyticsReporter];
  [analyticsReporter postReportForDefaultSubCategoryWithCategory:5 telemetryTimeEvent:v6];

  if (eventCopy)
  {
    v27 = [BRCUserDefaults defaultsForMangledID:0];
    if ([v27 testDevice])
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountSession(FPFSAdditions) _sendFPFSImportFinishedTelemetryEvent:];
      }
    }

    else
    {
      v30 = +[BRCAutoBugCaptureReporter sharedABCReporter];
      [v30 captureLogsForOperationType:@"FPFSMigration" ofSubtype:@"MigrationFailure" forError:eventCopy];

      sendTapToRadarForMigrationErrors = [v27 sendTapToRadarForMigrationErrors];
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "code")}];
      v33 = [sendTapToRadarForMigrationErrors containsObject:v32];

      if (v33)
      {
        v34 = MEMORY[0x277CCACA8];
        telemetrySchema = [v6 telemetrySchema];
        if (telemetrySchema > 299)
        {
          if (telemetrySchema <= 402)
          {
            if (telemetrySchema > 400)
            {
              if (telemetrySchema == 401)
              {
                v36 = @"FPFS_MIGRATION_FINISHED";
              }

              else
              {
                v36 = @"FPFS_MIGRATION_STATUS_REPORT";
              }
            }

            else if (telemetrySchema == 300)
            {
              v36 = @"INITIAL_SCAN_REJECTED_MISMATCH_TYPE";
            }

            else if (telemetrySchema == 400)
            {
              v36 = @"FPFS_MIGRATION_STARTED";
            }

            else
            {
LABEL_58:
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", telemetrySchema];
            }
          }

          else
          {
            switch(telemetrySchema)
            {
              case 500:
                v36 = @"ITEM_BOUNCE_APPLY_NEW_WITH_EXISTING";
                break;
              case 501:
                v36 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW";
                break;
              case 502:
                v36 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_EXISTING";
                break;
              case 503:
                v36 = @"ITEM_BOUNCE_BY_SERVER";
                break;
              case 504:
                v36 = @"ITEM_BOUNCE_CREATE_ITEM_WITH_EXISTING";
                break;
              case 505:
                v36 = @"ITEM_BOUNCE_CHANGE_ITEM_WITH_EXISTING";
                break;
              case 506:
                v36 = @"ITEM_BOUNCE_SHARE_ACCEPT_EXISTING_WITH_NEW";
                break;
              case 507:
                v36 = @"ITEM_BOUNCE_SHARE_ACCEPT_NEW_WITH_EXISTING";
                break;
              case 508:
                v36 = @"ITEM_BOUNCE_TRASHED_ITEM";
                break;
              case 509:
                v36 = @"ITEM_BOUNCE_ITEM_DIRECTORY_MERGE";
                break;
              case 510:
                v36 = @"ITEM_BOUNCE_NEW_DIRECTORY_WITH_EXISTING";
                break;
              case 511:
                v36 = @"ITEM_BOUNCE_EXISTING_WITH_NEW_DIRECTORY";
                break;
              case 512:
                v36 = @"ITEM_BOUNCE_ITEM_WITH_DOCUMENTS_FOLDER";
                break;
              case 513:
                v36 = @"ITEM_BOUNCE_APPLY_DEAD_EXISTING_WITH_NEW";
                break;
              case 514:
                v36 = @"ITEM_BOUNCE_APPLY_NOT_KNOWN_BY_SERVER_WITH_NEW";
                break;
              case 515:
                v36 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_REPARENT_WITH_NEW";
                break;
              case 516:
                v36 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_FILE_NAME_WITH_NEW";
                break;
              case 517:
                v36 = @"ITEM_BOUNCE_APPLY_INITIAL_SCAN_WITH_NEW";
                break;
              case 518:
                v36 = @"ITEM_BOUNCE_APPLY_SHARED_ITEM_WITH_NEW_SHARED_ITEM_UNTITLED_FILE_NAME";
                break;
              case 519:
                v36 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW_UNTITLED_FILE_NAME";
                break;
              default:
                if (telemetrySchema == 403)
                {
                  v36 = @"FPFS_MIGRATION_NON_MIGRATED_ITEM_REPORT";
                }

                else
                {
                  if (telemetrySchema != 404)
                  {
                    goto LABEL_58;
                  }

                  v36 = @"FPFS_MIGRATION_STUCK_STATUS";
                }

                break;
            }
          }
        }

        else
        {
          v36 = @"UNKNOWN";
          switch(telemetrySchema)
          {
            case 0:
              break;
            case 1:
              v36 = @"_UNUSED_SYNC_UP_BACKOFF_RATIO";
              break;
            case 2:
              v36 = @"FOLDER_SHARING_ITEM_COUNT_MISMATCH";
              break;
            case 3:
              v36 = @"MISSING_PUSH";
              break;
            case 4:
              v36 = @"PERMANENTLY_INCONSISTENT";
              break;
            case 5:
              v36 = @"DROPPED_EVENTS";
              break;
            case 6:
              v36 = @"TEST_METRIC";
              break;
            case 7:
              v36 = @"SHARE_ALIAS_IN_SHARED_FOLDER";
              break;
            case 8:
              v36 = @"MALIGNANT_ZONE_RESET";
              break;
            case 9:
              v36 = @"BENIGN_ZONE_RESET";
              break;
            case 10:
              v36 = @"DB_RESET";
              break;
            case 11:
              v36 = @"APPLY_SCHEDULER_MISSING_JOBS";
              break;
            case 12:
              v36 = @"SYNC_UP_MISSING_JOBS";
              break;
            case 13:
              v36 = @"READER_MISSING_JOBS";
              break;
            case 14:
              v36 = @"UPLOADER_MISSING_JOBS";
              break;
            case 15:
              v36 = @"DOWNLOADER_MISSING_JOBS";
              break;
            case 16:
              v36 = @"_UNUSED_SYNC_UP_BACKOFF_DELAY";
              break;
            case 17:
              v36 = @"FOLDER_SHARING_PCS_CHAINING";
              break;
            case 18:
              v36 = @"NEW_SHARE_ACCEPTATION";
              break;
            case 19:
              v36 = @"FS_EVENT_TO_SYNC_UP";
              break;
            case 20:
              v36 = @"USER_DOWNLOAD";
              break;
            case 21:
              v36 = @"CORRUPT_PACKAGE_DOWNLOAD";
              break;
            case 22:
              v36 = @"DIRECTORY_MISSING_CHAINPCS";
              break;
            case 23:
              v36 = @"SYNC_BOOSTING_PROBLEM_COUNT";
              break;
            case 24:
              v36 = @"DEEP_SCAN";
              break;
            case 25:
              v36 = @"OPERATION_TIMED_OUT";
              break;
            case 26:
              v36 = @"MISSING_SHARE_ALIAS";
              break;
            case 27:
              v36 = @"ASSET_CONTENT_NOT_FOUND";
              break;
            case 28:
              v36 = @"QBS_DIR_FAULT_COUNT";
              break;
            case 29:
              v36 = @"FILE_BOUNCED_MANY_TIMES";
              break;
            case 30:
              v36 = @"SYNC_UP_BACKOFF_RATIO_SUMMARY";
              break;
            case 31:
              v36 = @"SYNC_UP_BACKOFF_DELAY_SUMMARY";
              break;
            case 32:
              v36 = @"QBS_PERFORMANCE";
              break;
            case 33:
              v36 = @"ACCOUNT_SESSION_OPEN_ERROR";
              break;
            case 34:
              v36 = @"CORRUPT_SHARING_OPTIONS";
              break;
            case 35:
              v36 = @"INCORRECT_CONTENT_POLICY_COUNT";
              break;
            case 36:
              v36 = @"CORRUPT_BASEHASH_SALT_COUNT";
              break;
            case 37:
              v36 = @"EDP_KEYS_MISMATCH";
              break;
            case 38:
              v36 = @"DATABASE_ID_MISMATCH";
              break;
            case 39:
              v36 = @"COLLABORATION_UPLOAD";
              break;
            case 40:
              v36 = @"DANGLING_ZOMBIE_DIRECTORY_COUNT";
              break;
            case 41:
              v36 = @"RECORD_VALUE_ERROR";
              break;
            case 42:
              v36 = @"AGGRESSIVE_SALTING";
              break;
            case 43:
              v36 = @"REIMPORT_DOMAIN_FAILED_ON_STARTUP";
              break;
            case 44:
              v36 = @"EXCEEDED_UPLOADS_ON_CELLULAR";
              break;
            case 45:
              v36 = @"PRECENTAGE_OF_BYTES_UPLOADED_FOR_BATCH";
              break;
            case 46:
              v36 = @"BOUNCED_DOCUMENTS_DIRECTORY_COUNT";
              break;
            case 47:
              v36 = @"SAVE_SHARE_ERROR";
              break;
            case 48:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
              goto LABEL_58;
            case 49:
              v36 = @"MISSING_PUSH_V2";
              break;
            case 100:
              v36 = @"FULLY_CONSISTENT";
              break;
            case 101:
              v36 = @"FILE_CHECKSUM_MISMATCH";
              break;
            case 102:
              v36 = @"PACKAGE_CHECKSUM_MISMATCH";
              break;
            case 103:
              v36 = @"CHILD_COUNT_MISMATCH";
              break;
            case 104:
              v36 = @"RECURSIVE_ITEM_COUNT_MISMATCH";
              break;
            case 105:
              v36 = @"SHARE_ALIAS_COUNT_MISMATCH";
              break;
            case 106:
              v36 = @"SHARE_COUNT_MISMATCH";
              break;
            case 107:
              v36 = @"CONSISTENCY_CHECKER_FAILED";
              break;
            case 108:
              v36 = @"FILE_READ_ERROR";
              break;
            default:
              switch(telemetrySchema)
              {
                case 200:
                  v36 = @"CA_TOTAL_ERROR_COUNT";
                  break;
                case 201:
                  v36 = @"CA_UPLOAD_ERROR_COUNT";
                  break;
                case 202:
                  v36 = @"CA_DOWNLOAD_ERROR_COUNT";
                  break;
                case 203:
                  v36 = @"CA_SYNC_UP_ITEM_ERROR_COUNT";
                  break;
                case 204:
                  v36 = @"CA_SYNC_UP_ZONE_ERROR_COUNT";
                  break;
                case 205:
                  v36 = @"CA_SYNC_DOWN_ERROR_COUNT";
                  break;
                case 210:
                  v36 = @"CA_UPLOAD_ERROR";
                  break;
                case 211:
                  v36 = @"CA_DOWNLOAD_ERROR";
                  break;
                case 212:
                  v36 = @"CA_SYNC_UP_ITEM_ERROR";
                  break;
                case 213:
                  v36 = @"CA_SYNC_UP_ZONE_ERROR";
                  break;
                case 214:
                  v36 = @"CA_SYNC_DOWN_ERROR";
                  break;
                case 215:
                  v36 = @"CA_DAMAGED_FILE_UPLOAD_ERROR";
                  break;
                case 216:
                  v36 = @"CA_NIL_APP_LIBRARY";
                  break;
                case 217:
                  v36 = @"DANGLING_SHARE_REQUESTERS";
                  break;
                default:
                  goto LABEL_58;
              }

              break;
          }
        }

        domain2 = [eventCopy domain];
        v28 = [v34 stringWithFormat:@"%@ (%@: %ld)", v36, domain2, objc_msgSend(eventCopy, "code")];

        tapToRadarManager = self->_tapToRadarManager;
        v29 = [eventCopy description];
        [(BRCTapToRadarManager *)tapToRadarManager requestTapToRadarWithTitle:v28 description:v29 keywords:&unk_2837B0C70 attachments:MEMORY[0x277CBEBF8] sendFullLog:1 displayReason:@"it failed to migrate to FPFS" triggerRootCause:eventCopy additionalDevices:0];
      }

      else
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountSession(FPFSAdditions) _sendFPFSImportFinishedTelemetryEvent:];
        }
      }
    }
  }

  [(BRCAccountSession *)self _cleanupMigrationClientState];
}

- (id)_postImportAnalysisForProviderDomainID:(id)d withLostItemCount:(unint64_t)count withMigrationID:(id)iD
{
  if (count)
  {
    v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:90 userInfo:MEMORY[0x277CBEC10] description:{@"Found approximately %llu items that were not migrated by FP", count}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_clientZonesMatchingSearchString:(id)string
{
  v69 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  lowercaseString = [stringCopy lowercaseString];
  if ([lowercaseString isEqualToString:stringCopy])
  {
    v6 = 0;
  }

  else
  {
    uppercaseString = [stringCopy uppercaseString];
    v6 = [uppercaseString isEqualToString:stringCopy] ^ 1;
  }

  v8 = [stringCopy rangeOfString:@":"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = stringCopy;
    v11 = *MEMORY[0x277CBBF28];
  }

  else
  {
    v12 = v8;
    v13 = v9;
    v10 = [stringCopy substringToIndex:v8];
    v11 = [stringCopy substringFromIndex:v12 + v13];
  }

  v14 = v11;
  v15 = [v10 stringByReplacingOccurrencesOfString:@"~" withString:@"."];

  if ([MEMORY[0x277CFAE60] validateContainerID:v15])
  {
    v16 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v15 ownerName:v14];
    v17 = [(BRCAccountSession *)self clientZoneByMangledID:v16];
    if (v17)
    {
      v18 = v17;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke;
      v60[3] = &unk_278504810;
      v61 = v15;
      v20 = v19;
      v62 = v20;
      [(BRCAccountSession *)self enumerateSharedClientZones:v60];
      [v20 addObject:v18];
      v21 = v62;
      v22 = v20;

      v23 = v61;
      v24 = v22;
      goto LABEL_22;
    }
  }

  selfCopy = self;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_2;
  v58[3] = &__block_descriptor_33_e28___NSString_16__0__NSString_8l;
  v59 = v6;
  v25 = MEMORY[0x22AA4A310](v58);
  v26 = objc_alloc(MEMORY[0x277CCAC68]);
  v27 = (v25)[2](v25, v15);
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"*";
  }

  v30 = [v26 initWithPattern:v29 options:0 error:0];

  v31 = objc_alloc(MEMORY[0x277CCAC68]);
  lowercaseString2 = [v14 lowercaseString];
  v33 = lowercaseString2;
  if (lowercaseString2)
  {
    v34 = lowercaseString2;
  }

  else
  {
    v34 = @"*";
  }

  v35 = [v31 initWithPattern:v34 options:0 error:0];

  array = [MEMORY[0x277CBEB18] array];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_3;
  v54[3] = &unk_278504858;
  v37 = v14;
  v38 = v25;
  v57 = v38;
  v39 = v30;
  v55 = v39;
  v40 = array;
  v56 = v40;
  v41 = MEMORY[0x22AA4A310](v54);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_4;
  v49[3] = &unk_278504880;
  v53 = v38;
  v50 = v39;
  v51 = v35;
  v42 = v40;
  v52 = v42;
  v22 = v35;
  v16 = v39;
  v18 = v38;
  v43 = MEMORY[0x22AA4A310](v49);
  if (!v37)
  {
    [(BRCAccountSession *)selfCopy enumeratePrivateClientZones:v41];
  }

  [(BRCAccountSession *)selfCopy enumerateSharedClientZones:v43, v37];
  [v42 sortUsingComparator:&__block_literal_global_41];
  v44 = brc_bread_crumbs();
  v45 = brc_default_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v64 = stringCopy;
    v65 = 2112;
    v66 = v42;
    v67 = 2112;
    v68 = v44;
    _os_log_debug_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEBUG, "[DEBUG] containers matching '%@': %@%@", buf, 0x20u);
  }

  v23 = v42;
  v24 = v23;
  v14 = v47;
LABEL_22:

  return v24;
}

uint64_t __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 1;
}

id __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 lowercaseString];
  }

  v6 = v5;

  return v6;
}

uint64_t __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = [v3 zoneName];
  v6 = (*(v4 + 16))(v4, v5);

  if ([*(a1 + 32) rangeOfFirstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 1;
}

uint64_t __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = [v3 zoneName];
  v6 = (*(v4 + 16))(v4, v5);

  v7 = [v3 ownerName];
  v8 = [v7 lowercaseString];

  if ([*(a1 + 32) rangeOfFirstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(*(a1 + 40), "rangeOfFirstMatchInString:options:range:", v8, 0, 0, objc_msgSend(v8, "length")) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 48) addObject:v3];
  }

  return 1;
}

uint64_t __78__BRCAccountSession_BRCContainerFindByName___clientZonesMatchingSearchString___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 zoneName];
  v6 = [v4 zoneName];

  v7 = [v5 compare:v6 options:129];
  return v7;
}

- (id)clientZonesMatchingSearchString:(id)string error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = [(BRCAccountSession *)self _clientZonesMatchingSearchString:stringCopy];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] brc_errorClientZoneNotFound:stringCopy];
    if (v9)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = "(passed to caller)";
        v15 = 136315906;
        v16 = "[BRCAccountSession(BRCContainerFindByName) clientZonesMatchingSearchString:error:]";
        v17 = 2080;
        if (!error)
        {
          v14 = "(ignored by caller)";
        }

        v18 = v14;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", &v15, 0x2Au);
      }
    }

    if (error)
    {
      v12 = v9;
      *error = v9;
    }

    v8 = 0;
  }

  return v8;
}

- (id)singleClientZoneMatchingSearchString:(id)string error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = [(BRCAccountSession *)self _clientZonesMatchingSearchString:stringCopy];
  if (![v7 count])
  {
    v8 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:stringCopy];
    if (v8)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        v29 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCAccountSession(BRCContainerFindByName) singleClientZoneMatchingSearchString:error:]";
        v38 = 2080;
        if (!error)
        {
          v29 = "(ignored by caller)";
        }

        v39 = v29;
        v40 = 2112;
        v41 = v8;
        v42 = 2112;
        v43 = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v26 = v8;
      *error = v8;
    }

    goto LABEL_24;
  }

  if ([v7 count] >= 2)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if ([v14 isPrivateZone])
          {
            zoneName = [v14 zoneName];
            [v8 addObject:zoneName];
          }

          else
          {
            zoneName = [v14 mangledID];
            mangledIDString = [zoneName mangledIDString];
            [v8 addObject:mangledIDString];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CFABD0];
    v19 = [v8 componentsJoinedByString:{@", "}];
    v20 = [v17 br_errorWithDomain:v18 code:12 description:{@"Too many containers matching '%@': {%@}", stringCopy, v19, v31}];

    if (v20)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v30 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCAccountSession(BRCContainerFindByName) singleClientZoneMatchingSearchString:error:]";
        v38 = 2080;
        if (!error)
        {
          v30 = "(ignored by caller)";
        }

        v39 = v30;
        v40 = 2112;
        v41 = v20;
        v42 = 2112;
        v43 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v23 = v20;
      *error = v20;
    }

LABEL_24:
    firstObject = 0;
    goto LABEL_26;
  }

  firstObject = [v7 firstObject];
LABEL_26:

  return firstObject;
}

- (id)_appLibrariesMatchingSearchString:(id)string
{
  v40[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  lowercaseString = [stringCopy lowercaseString];
  if ([lowercaseString isEqualToString:stringCopy])
  {
    v6 = 0;
  }

  else
  {
    uppercaseString = [stringCopy uppercaseString];
    v6 = [uppercaseString isEqualToString:stringCopy] ^ 1;
  }

  v8 = [stringCopy stringByReplacingOccurrencesOfString:@"~" withString:@"."];
  if (v8 && ([(BRCAccountSession *)self appLibraryByID:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v40[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  }

  else
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __79__BRCAccountSession_BRCContainerFindByName___appLibrariesMatchingSearchString___block_invoke;
    v32[3] = &__block_descriptor_33_e28___NSString_16__0__NSString_8l;
    v33 = v6;
    v12 = MEMORY[0x22AA4A310](v32);
    v13 = objc_alloc(MEMORY[0x277CCAC68]);
    v14 = (v12)[2](v12, v8);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"*";
    }

    v17 = [v13 initWithPattern:v16 options:0 error:0];

    array = [MEMORY[0x277CBEB18] array];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __79__BRCAccountSession_BRCContainerFindByName___appLibrariesMatchingSearchString___block_invoke_2;
    v28 = &unk_2785048C8;
    v31 = v12;
    v29 = v17;
    v19 = array;
    v30 = v19;
    v20 = v17;
    v10 = v12;
    v21 = MEMORY[0x22AA4A310](&v25);
    [(BRCAccountSession *)self enumerateAppLibraries:v21, v25, v26, v27, v28];
    [v19 sortUsingComparator:&__block_literal_global_28];
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v35 = stringCopy;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v22;
      _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] containers matching '%@': %@%@", buf, 0x20u);
    }

    v11 = v19;
  }

  return v11;
}

id __79__BRCAccountSession_BRCContainerFindByName___appLibrariesMatchingSearchString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 lowercaseString];
  }

  v6 = v5;

  return v6;
}

uint64_t __79__BRCAccountSession_BRCContainerFindByName___appLibrariesMatchingSearchString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = [v3 appLibraryID];
  v6 = (*(v4 + 16))(v4, v5);

  if ([*(a1 + 32) rangeOfFirstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 1;
}

uint64_t __79__BRCAccountSession_BRCContainerFindByName___appLibrariesMatchingSearchString___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 appLibraryID];
  v6 = [v4 appLibraryID];

  v7 = [v5 compare:v6 options:129];
  return v7;
}

- (id)appLibrariesMatchingSearchString:(id)string error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = [(BRCAccountSession *)self _appLibrariesMatchingSearchString:stringCopy];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] brc_errorClientZoneNotFound:stringCopy];
    if (v9)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = "(passed to caller)";
        v15 = 136315906;
        v16 = "[BRCAccountSession(BRCContainerFindByName) appLibrariesMatchingSearchString:error:]";
        v17 = 2080;
        if (!error)
        {
          v14 = "(ignored by caller)";
        }

        v18 = v14;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", &v15, 0x2Au);
      }
    }

    if (error)
    {
      v12 = v9;
      *error = v9;
    }

    v8 = 0;
  }

  return v8;
}

- (id)singleAppLibraryMatchingSearchString:(id)string error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v7 = [(BRCAccountSession *)self _appLibrariesMatchingSearchString:stringCopy];
  if (![v7 count])
  {
    v8 = [MEMORY[0x277CCA9B8] brc_errorAppLibraryNotFound:stringCopy];
    if (v8)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        v27 = "(passed to caller)";
        *buf = 136315906;
        v35 = "[BRCAccountSession(BRCContainerFindByName) singleAppLibraryMatchingSearchString:error:]";
        v36 = 2080;
        if (!error)
        {
          v27 = "(ignored by caller)";
        }

        v37 = v27;
        v38 = 2112;
        v39 = v8;
        v40 = 2112;
        v41 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v24 = v8;
      *error = v8;
    }

    goto LABEL_21;
  }

  if ([v7 count] >= 2)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          appLibraryID = [*(*(&v29 + 1) + 8 * i) appLibraryID];
          [v8 addObject:appLibraryID];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CFABD0];
    v17 = [v8 componentsJoinedByString:{@", "}];
    v18 = [v15 br_errorWithDomain:v16 code:12 description:{@"Too many containers matching '%@': {%@}", stringCopy, v17, v29}];

    if (v18)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        v28 = "(passed to caller)";
        *buf = 136315906;
        v35 = "[BRCAccountSession(BRCContainerFindByName) singleAppLibraryMatchingSearchString:error:]";
        v36 = 2080;
        if (!error)
        {
          v28 = "(ignored by caller)";
        }

        v37 = v28;
        v38 = 2112;
        v39 = v18;
        v40 = 2112;
        v41 = v19;
        _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v21 = v18;
      *error = v18;
    }

LABEL_21:
    firstObject = 0;
    goto LABEL_23;
  }

  firstObject = [v7 firstObject];
LABEL_23:

  return firstObject;
}

- (BRCAccountSession)init
{
  v31.receiver = self;
  v31.super_class = BRCAccountSession;
  v2 = [(BRCAccountSession *)&v31 init];
  v3 = v2;
  if (v2)
  {
    brc_mutex_init_recursive(&v2->_zonesLock.pthread);
    brc_mutex_init(&v3->_zonesCreationLock.pthread);
    v3->_cloudDocsFD = -1;
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

    v6 = BRPersonaSpecificName();
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);

    dbWatcherQueue = v3->_dbWatcherQueue;
    v3->_dbWatcherQueue = v10;

    v12 = BRPersonaSpecificName();
    v13 = dispatch_workloop_create([v12 UTF8String]);
    clientTruthWorkloop = v3->_clientTruthWorkloop;
    v3->_clientTruthWorkloop = v13;

    v15 = BRPersonaSpecificName();
    v16 = dispatch_workloop_create([v15 UTF8String]);
    serverTruthWorkloop = v3->_serverTruthWorkloop;
    v3->_serverTruthWorkloop = v16;

    v18 = BRPersonaSpecificName();
    v19 = dispatch_workloop_create([v18 UTF8String]);
    readOnlyWorkloop = v3->_readOnlyWorkloop;
    v3->_readOnlyWorkloop = v19;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    miscOperations = v3->_miscOperations;
    v3->_miscOperations = weakObjectsHashTable;

    v23 = [MEMORY[0x277CCACA8] br_currentPersonaIDWithIsDataSeparated:&v3->_isDataSeparated];
    personaIdentifier = v3->_personaIdentifier;
    v3->_personaIdentifier = v23;

    v25 = objc_opt_new();
    extensionXPCClients = v3->_extensionXPCClients;
    v3->_extensionXPCClients = v25;

    v27 = [[BRCBarrier alloc] initWithName:@"dbLoading"];
    dbLoadingBarrier = v3->_dbLoadingBarrier;
    v3->_dbLoadingBarrier = v27;

    v3->_isOpen = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__invalidateAccountStatus name:@"BRC_ACCOUNT_TEMPORARILY_UNAVAILABLE" object:0];
  }

  return v3;
}

- (BRCAccountSession)initWithACAccountID:(id)d dbAccountDSID:(id)iD salt:(id)salt accountHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  saltCopy = salt;
  handlerCopy = handler;
  v15 = [(BRCAccountSession *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_acAccountID, d);
    objc_storeStrong(&v16->_ubiquityTokenSalt, salt);
    objc_storeStrong(&v16->_accountHandler, handler);
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    xpcClients = v16->_xpcClients;
    v16->_xpcClients = v17;

    br_currentSupportDir = [MEMORY[0x277CCACA8] br_currentSupportDir];
    v20 = *MEMORY[0x277CFACE8];
    v21 = [br_currentSupportDir stringByAppendingPathComponent:*MEMORY[0x277CFACE8]];
    [(BRCAccountSession *)v16 setSessionDirPath:v21];

    brc_currentCachesDir = [MEMORY[0x277CCACA8] brc_currentCachesDir];
    v23 = [brc_currentCachesDir stringByAppendingPathComponent:v20];
    [(BRCAccountSession *)v16 setCacheDirPath:v23];

    v24 = [[BRCFileUnlinker alloc] initWithCacheDirPath:brc_currentCachesDir];
    fileUnlinker = v16->_fileUnlinker;
    v16->_fileUnlinker = v24;

    v26 = [(NSString *)v16->_sessionDirPath stringByAppendingPathComponent:@"db"];
    v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26 isDirectory:1];
    dbURL = v16->_dbURL;
    v16->_dbURL = v27;

    v29 = [[BRCAccountFacade alloc] initWithAccountDSID:iDCopy];
    accountFacade = v16->_accountFacade;
    v16->_accountFacade = v29;
  }

  return v16;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  [(BRCBarrier *)self->_dbLoadingBarrier signalBarrier];
  if (self->_cloudDocsFD != -1)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession dealloc];
    }

    [(BRCAccountSession *)self close];
  }

  if (self->_clientDB || self->_serverDB)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession dealloc];
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableSet *)selfCopy->_extensionXPCClients copy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([(NSMutableSet *)selfCopy->_extensionXPCClients count])
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession(FPFSAdditions) invalidateExtensionXPCClient];
    }
  }

  objc_sync_exit(selfCopy);
  v15.receiver = selfCopy;
  v15.super_class = BRCAccountSession;
  [(BRCAccountSession *)&v15 dealloc];
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  accountDSID = [(BRCAccountFacade *)self->_accountFacade accountDSID];
  v4 = [v2 stringWithFormat:@"session{account:%@}", accountDSID];

  return v4;
}

- (BRCClientDatabaseFacade)clientReadDatabaseFacade
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCAccountSession *)selfCopy readOnlyDB];

  v3 = selfCopy->_clientReadDatabaseFacade;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BRCClientDatabaseFacade)clientExpensiveReadDatabaseFacade
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCAccountSession *)selfCopy expensiveReadOnlyDB];

  v3 = selfCopy->_clientExpensiveReadDatabaseFacade;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)getClientDBFacadeFromDB:(id)b
{
  bCopy = b;
  v5 = bCopy;
  if (self->_clientDB == bCopy)
  {
    v7 = 176;
  }

  else if (self->_readOnlyDB == bCopy)
  {
    v7 = 184;
  }

  else
  {
    if (self->_expensiveReadOnlyDB != bCopy)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = 192;
  }

  v6 = *(&self->super.isa + v7);
LABEL_9:

  return v6;
}

- (void)performAsyncOnClientReadDatabaseWorkloop:(id)workloop
{
  workloopCopy = workloop;
  clientReadDatabaseFacade = [(BRCAccountSession *)self clientReadDatabaseFacade];
  workloop = [clientReadDatabaseFacade workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__BRCAccountSession_performAsyncOnClientReadDatabaseWorkloop___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = workloopCopy;
  v7 = workloopCopy;
  dispatch_async(workloop, v8);
}

void __62__BRCAccountSession_performAsyncOnClientReadDatabaseWorkloop___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientReadDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (void)performSyncOnClientReadDatabaseWorkloop:(id)workloop
{
  workloopCopy = workloop;
  clientReadDatabaseFacade = [(BRCAccountSession *)self clientReadDatabaseFacade];
  workloop = [clientReadDatabaseFacade workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__BRCAccountSession_performSyncOnClientReadDatabaseWorkloop___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = workloopCopy;
  v7 = workloopCopy;
  dispatch_async_and_wait(workloop, v8);
}

void __61__BRCAccountSession_performSyncOnClientReadDatabaseWorkloop___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientReadDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (void)performAsyncOnClientReadWriteDatabaseWorkloop:(id)workloop
{
  workloopCopy = workloop;
  clientReadWriteDatabaseFacade = [(BRCAccountSession *)self clientReadWriteDatabaseFacade];
  workloop = [clientReadWriteDatabaseFacade workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__BRCAccountSession_performAsyncOnClientReadWriteDatabaseWorkloop___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = workloopCopy;
  v7 = workloopCopy;
  dispatch_async(workloop, v8);
}

void __67__BRCAccountSession_performAsyncOnClientReadWriteDatabaseWorkloop___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientReadWriteDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (void)performSyncOnClientReadWriteDatabaseWorkloop:(id)workloop
{
  workloopCopy = workloop;
  clientReadWriteDatabaseFacade = [(BRCAccountSession *)self clientReadWriteDatabaseFacade];
  workloop = [clientReadWriteDatabaseFacade workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__BRCAccountSession_performSyncOnClientReadWriteDatabaseWorkloop___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = workloopCopy;
  v7 = workloopCopy;
  dispatch_async_and_wait(workloop, v8);
}

void __66__BRCAccountSession_performSyncOnClientReadWriteDatabaseWorkloop___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientReadWriteDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (void)performSyncOnServerReadWriteDatabaseSerialQueue:(id)queue
{
  queueCopy = queue;
  serverReadWriteDatabaseFacade = [(BRCAccountSession *)self serverReadWriteDatabaseFacade];
  serialQueue = [serverReadWriteDatabaseFacade serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__BRCAccountSession_performSyncOnServerReadWriteDatabaseSerialQueue___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = queueCopy;
  v7 = queueCopy;
  dispatch_sync(serialQueue, v8);
}

void __69__BRCAccountSession_performSyncOnServerReadWriteDatabaseSerialQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) serverReadWriteDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (void)performSyncOnClientReadWriteDatabaseSerialQueue:(id)queue
{
  queueCopy = queue;
  clientReadWriteDatabaseFacade = [(BRCAccountSession *)self clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__BRCAccountSession_performSyncOnClientReadWriteDatabaseSerialQueue___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = queueCopy;
  v7 = queueCopy;
  dispatch_sync(serialQueue, v8);
}

void __69__BRCAccountSession_performSyncOnClientReadWriteDatabaseSerialQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientReadWriteDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (void)performAsyncOnServerReadWriteDatabaseWorkloop:(id)workloop
{
  workloopCopy = workloop;
  serverReadWriteDatabaseFacade = [(BRCAccountSession *)self serverReadWriteDatabaseFacade];
  workloop = [serverReadWriteDatabaseFacade workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__BRCAccountSession_performAsyncOnServerReadWriteDatabaseWorkloop___block_invoke;
  v8[3] = &unk_2784FFBC8;
  v8[4] = self;
  v9 = workloopCopy;
  v7 = workloopCopy;
  dispatch_async(workloop, v8);
}

void __67__BRCAccountSession_performAsyncOnServerReadWriteDatabaseWorkloop___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) serverReadWriteDatabaseFacade];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)registerClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableSet *)selfCopy->_xpcClients containsObject:clientCopy])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession registerClient:];
    }
  }

  isCancelled = selfCopy->_isCancelled;
  if (!isCancelled)
  {
    [(NSMutableSet *)selfCopy->_xpcClients addObject:clientCopy];
    v7 = [clientCopy isFPFSExtension] ^ 1;
    if (!clientCopy)
    {
      LOBYTE(v7) = 1;
    }

    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)selfCopy->_extensionXPCClients addObject:clientCopy];
    }
  }

  objc_sync_exit(selfCopy);

  return !isCancelled;
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_xpcClients containsObject:clientCopy]& 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession unregisterClient:];
    }
  }

  [(NSMutableSet *)selfCopy->_xpcClients removeObject:clientCopy];
  [(NSMutableSet *)selfCopy->_extensionXPCClients removeObject:clientCopy];
  objc_sync_exit(selfCopy);
}

- (id)getMiscOperations
{
  v2 = [(NSHashTable *)self->_miscOperations copy];

  return v2;
}

- (void)closeXPCClientsSync
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)_createAccountSupportPathIfNeeded:(id)needed protectParent:(BOOL)parent
{
  parentCopy = parent;
  v94 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  memset(v73, 0, sizeof(v73));
  __brc_create_section(0, "[BRCAccountSession _createAccountSupportPathIfNeeded:protectParent:]", 559, 0, v73);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *v79 = v73[0];
    *&v79[8] = 2112;
    v80 = neededCopy;
    *v81 = 2112;
    *&v81[2] = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx creating '%@'%@", buf, 0x20u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v72 = 0;
  v8 = [defaultManager createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:0 error:&v72];
  v9 = v72;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (([v9 br_isCocoaErrorCode:516] & 1) == 0)
    {
      v60 = brc_bread_crumbs();
      v61 = brc_default_log();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *v79 = neededCopy;
        *&v79[8] = 2112;
        v80 = v10;
        *v81 = 2112;
        *&v81[2] = v60;
        _os_log_fault_impl(&dword_223E7A000, v61, OS_LOG_TYPE_FAULT, "[CRIT] can't create directory at '%@': %@%@", buf, 0x20u);
      }

LABEL_69:
      exit(1);
    }

    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession _createAccountSupportPathIfNeeded:protectParent:];
    }
  }

  v71 = v10;
  v13 = [defaultManager attributesOfItemAtPath:neededCopy error:&v71];
  v14 = v71;

  v15 = v14 == 0;
  if (v14)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v45 = neededCopy;
      fileSystemRepresentation = [neededCopy fileSystemRepresentation];
      *buf = 136315650;
      *v79 = fileSystemRepresentation;
      *&v79[8] = 2112;
      v80 = v14;
      *v81 = 2112;
      *&v81[2] = v16;
      _os_log_fault_impl(&dword_223E7A000, v17, OS_LOG_TYPE_FAULT, "[CRIT] can't retrieve attributes of item at '%s': %@%@", buf, 0x20u);
    }
  }

  fileOwnerAccountName = [v13 fileOwnerAccountName];
  v19 = NSUserName();
  v20 = [fileOwnerAccountName isEqual:v19];

  if ((v20 & 1) == 0)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      fileOwnerAccountName2 = [v13 fileOwnerAccountName];
      v48 = NSUserName();
      *buf = 138412802;
      *v79 = fileOwnerAccountName2;
      *&v79[8] = 2112;
      v80 = v48;
      *v81 = 2112;
      *&v81[2] = v21;
      _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] created directory has a wrong owner (value: %@, expected: %@)%@", buf, 0x20u);
    }

    v15 = 0;
  }

  if (([v13 filePosixPermissions] & 0x180) == 0)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v66 = aPcDBLSW[[v13 filePosixPermissions] >> 12];
      if (([v13 filePosixPermissions] & 0x100) != 0)
      {
        v49 = 114;
      }

      else
      {
        v49 = 45;
      }

      v65 = v49;
      if (([v13 filePosixPermissions] & 0x80) != 0)
      {
        v50 = 119;
      }

      else
      {
        v50 = 45;
      }

      v64 = v50;
      if (([v13 filePosixPermissions] & 0x40) != 0)
      {
        v51 = 120;
      }

      else
      {
        v51 = 45;
      }

      v63 = v51;
      if (([v13 filePosixPermissions] & 0x20) != 0)
      {
        v52 = 114;
      }

      else
      {
        v52 = 45;
      }

      v62 = v52;
      if (([v13 filePosixPermissions] & 0x10) != 0)
      {
        v53 = 119;
      }

      else
      {
        v53 = 45;
      }

      if (([v13 filePosixPermissions] & 8) != 0)
      {
        v54 = 120;
      }

      else
      {
        v54 = 45;
      }

      if (([v13 filePosixPermissions] & 4) != 0)
      {
        v55 = 114;
      }

      else
      {
        v55 = 45;
      }

      filePosixPermissions = [v13 filePosixPermissions];
      filePosixPermissions2 = [v13 filePosixPermissions];
      *buf = 67111682;
      *v79 = v66;
      if ((filePosixPermissions & 2) != 0)
      {
        v58 = 119;
      }

      else
      {
        v58 = 45;
      }

      *&v79[4] = 1024;
      *&v79[6] = v65;
      if (filePosixPermissions2)
      {
        v59 = 120;
      }

      else
      {
        v59 = 45;
      }

      LOWORD(v80) = 1024;
      *(&v80 + 2) = v64;
      HIWORD(v80) = 1024;
      *v81 = v63;
      *&v81[4] = 1024;
      *&v81[6] = v62;
      v82 = 1024;
      v83 = v53;
      v84 = 1024;
      v85 = v54;
      v86 = 1024;
      v87 = v55;
      v88 = 1024;
      v89 = v58;
      v90 = 1024;
      v91 = v59;
      v92 = 2112;
      v93 = v23;
      _os_log_fault_impl(&dword_223E7A000, v24, OS_LOG_TYPE_FAULT, "[CRIT] created directory doesn't have read/write access for owner (permission: %c%c%c%c%c%c%c%c%c%c)%@", buf, 0x48u);
    }

    v15 = 0;
  }

  v25 = *MEMORY[0x277CCA1B0];
  v26 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA1B0]];
  v27 = *MEMORY[0x277CCA1A0];
  v28 = [v26 isEqualToString:*MEMORY[0x277CCA1A0]];

  if (v28)
  {
    v29 = v14;
  }

  else
  {
    v76 = v25;
    v77 = v27;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v70 = v14;
    v31 = [defaultManager setAttributes:v30 ofItemAtPath:neededCopy error:&v70];
    v29 = v70;

    if ((v31 & 1) == 0)
    {
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *v79 = neededCopy;
        *&v79[8] = 2112;
        v80 = v29;
        *v81 = 2112;
        *&v81[2] = v32;
        _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] can't protect directory at '%@': %@%@", buf, 0x20u);
      }
    }
  }

  if (parentCopy)
  {
    stringByDeletingLastPathComponent = [neededCopy stringByDeletingLastPathComponent];
    v69 = v29;
    v35 = [defaultManager attributesOfItemAtPath:stringByDeletingLastPathComponent error:&v69];
    v36 = v69;

    v37 = [v35 objectForKeyedSubscript:v25];
    v38 = [v37 isEqualToString:v27];

    if (v38)
    {
      v29 = v36;
    }

    else
    {
      v74 = v25;
      v75 = v27;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v68 = v36;
      v40 = [defaultManager setAttributes:v39 ofItemAtPath:stringByDeletingLastPathComponent error:&v68];
      v29 = v68;

      if ((v40 & 1) == 0)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          *v79 = stringByDeletingLastPathComponent;
          *&v79[8] = 2112;
          v80 = v29;
          *v81 = 2112;
          *&v81[2] = v41;
          _os_log_fault_impl(&dword_223E7A000, v42, OS_LOG_TYPE_FAULT, "[CRIT] can't protect directory at '%@': %@%@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v35 = v13;
  }

  if (!v15)
  {
    goto LABEL_69;
  }

  v43 = brc_bread_crumbs();
  v44 = brc_default_log();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _createAccountSupportPathIfNeeded:protectParent:];
  }

  __brc_leave_section(v73);
}

- (void)markAccountMigrationComplete
{
  accountHandler = self->_accountHandler;
  accountDSID = [(BRCAccountFacade *)self->_accountFacade accountDSID];
  [(BRCAccountHandler *)accountHandler markMigrationCompletedForDSID:accountDSID];
}

- (void)_clearLegacyConflictVersionsAsync
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_56);
}

void __54__BRCAccountSession__clearLegacyConflictVersionsAsync__block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_notifications_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __54__BRCAccountSession__clearLegacyConflictVersionsAsync__block_invoke_cold_1();
  }

  v2 = [MEMORY[0x277D0D620] manager];
  v3 = *MEMORY[0x277D0D610];
  v4 = [MEMORY[0x277CFAE38] homeDirectoryURL];
  v5 = [v4 path];
  v10 = 0;
  v6 = [v2 removeAdditionsInNamespace:v3 underPath:v5 withMatchingPredicate:&__block_literal_global_46 errorPerAddition:0 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] Couldn't clear the legacy additions after migrating to FPFS - %@%@", buf, 0x16u);
    }
  }
}

- (void)_setICloudDesktopEnabled:(BOOL)enabled forAccount:(id)account
{
  enabledCopy = enabled;
  accountCopy = account;
  [accountCopy br_setEnabledForiCloudDesktop:enabledCopy];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__BRCAccountSession__setICloudDesktopEnabled_forAccount___block_invoke;
  v8[3] = &unk_278502540;
  v9 = accountCopy;
  v7 = accountCopy;
  [defaultStore saveAccount:v7 withCompletionHandler:v8];
}

void __57__BRCAccountSession__setICloudDesktopEnabled_forAccount___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] can't save account %@: %@%@", &v9, 0x20u);
    }
  }
}

- (BOOL)_addOrImportDomainIfNeededWithError:(id *)error domainAdded:(BOOL *)added domainImported:(BOOL *)imported
{
  v71 = *MEMORY[0x277D85DE8];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v9 = [defaultStore accountWithIdentifier:self->_acAccountID];

  if (![v9 isDataSeparatedAccount])
  {
    v12 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
    userPersonaUniqueString = [v12 userPersonaUniqueString];

    accountDescription = @"iCloudDrive";
    if (!userPersonaUniqueString)
    {
      goto LABEL_5;
    }

LABEL_6:
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__44;
    v59 = __Block_byref_object_dispose__44;
    v60 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__44;
    v45 = __Block_byref_object_dispose__44;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__44;
    v39 = __Block_byref_object_dispose__44;
    v40 = 0;
    v32 = userPersonaUniqueString;
    v33 = accountDescription;
    v34 = v9;
    BRPerformWithPersonaAndError();
    v15 = v56[5];
    v16 = v15 == 0;
    if (v15)
    {
      v17 = v15;
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        v30 = "(passed to caller)";
        *buf = 136315906;
        selfCopy = "[BRCAccountSession _addOrImportDomainIfNeededWithError:domainAdded:domainImported:]";
        v63 = 2080;
        if (!error)
        {
          v30 = "(ignored by caller)";
        }

        v64 = v30;
        v65 = 2112;
        v66 = v17;
        v67 = 2112;
        v68 = v18;
        _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v20 = v17;
        *error = v17;
      }
    }

    else if ((v52[3] & 1) == 0)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v48 + 24))
        {
          v23 = "Importing";
        }

        else
        {
          v23 = "Adding";
        }

        v24 = v42[5];
        v25 = v36[5];
        *buf = 138413314;
        selfCopy = self;
        v63 = 2080;
        v64 = v23;
        v65 = 2112;
        v66 = v24;
        v67 = 2112;
        v68 = v25;
        v69 = 2112;
        v70 = v21;
        _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - %s Provider Domain %@/%@ was successful%@", buf, 0x34u);
      }

      if (imported)
      {
        *imported = *(v48 + 24);
      }

      if (added)
      {
        *added = *(v48 + 24) ^ 1;
      }
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);

    goto LABEL_22;
  }

  accountDescription = [v9 accountDescription];
  userPersonaUniqueString = [v9 br_personaIdentifier];
  if (userPersonaUniqueString)
  {
    goto LABEL_6;
  }

LABEL_5:
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

  if (isSharedIPad)
  {
    goto LABEL_6;
  }

  v27 = brc_bread_crumbs();
  v28 = brc_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _addOrImportDomainIfNeededWithError:domainAdded:domainImported:];
  }

  v29 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:116 description:{@"Can't get persona for accountID %@", self->_acAccountID}];
  if (error)
  {
    v29 = v29;
    *error = v29;
  }

  v16 = 0;
LABEL_22:

  return v16;
}

void __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke(uint64_t a1, void *a2)
{
  v182 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (!v4)
  {
    v158 = 0;
    v5 = [MEMORY[0x277CC64A8] br_getDomainForCurrentPersonaWithError:&v158];
    v6 = v158;
    v7 = v158;
    v8 = *(a1 + 32);
    v9 = *(v8 + 136);
    *(v8 + 136) = v5;

    if (*(*(a1 + 32) + 136))
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 136);
        *buf = 138412802;
        v169 = v12;
        v170 = 2112;
        v171 = v13;
        v172 = 2112;
        v173 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Found an existing FPFS domain: %@%@", buf, 0x20u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_82:

      goto LABEL_83;
    }

    if (v7)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        v85 = *(a1 + 32);
        *buf = 138412802;
        v169 = v85;
        v170 = 2112;
        v171 = v7;
        v172 = 2112;
        v173 = v14;
        _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %@ - Got an error while looking for FPFS domain, fail the request to open account. Error: %@%@", buf, 0x20u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
      goto LABEL_82;
    }

    v16 = [MEMORY[0x277CBEBC0] brc_ciconiaWorkDirForCurrentPersona];
    v17 = [MEMORY[0x277CBEBC0] brc_ciconiaDumpDirForCurrentPersona];
    v18 = [v16 path];
    if (access([v18 fileSystemRepresentation], 0) < 0)
    {
      v19 = [v17 path];
      v20 = access([v19 fileSystemRepresentation], 0);

      if (v20 < 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v100 = *(a1 + 32);
      v101 = *(a1 + 40);
      *buf = 138413058;
      v169 = v100;
      v170 = 2112;
      v171 = v101;
      v172 = 2112;
      v173 = v16;
      v174 = 2112;
      v175 = v21;
      _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Cleaning Ciconia for persona ID: %@ at: %@%@", buf, 0x2Au);
    }

    v23 = objc_opt_new();
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_63;
    v157[3] = &unk_2784FF540;
    v157[4] = *(a1 + 32);
    [v23 cleanupCiconiaAtURL:v16 diagnosticsURL:v17 completionHandler:v157];

LABEL_17:
    v139 = v17;
    v24 = [MEMORY[0x277CFAE58] br_getProviderDomainIDForCurrentPersona];
    v25 = [v24 stringByDeletingLastPathComponent];
    v26 = *(*(a1 + 80) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v141 = v24;
    v28 = [v24 lastPathComponent];
    v29 = *(*(a1 + 88) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = +[BRCStringAdditions _br_currentMobileDocumentsDirForLegacy];
    v32 = [MEMORY[0x277CCAA00] defaultManager];
    v33 = [v32 fileExistsAtPath:v31];

    v140 = v16;
    if (v33)
    {
      v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31 isDirectory:1];
      v35 = BRCGetAccountDSIDForMobileDocsRoot(v34, 0);

      v36 = v31;
      v37 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31];
      v38 = [v37 fp_fpfsProviderDomainID:0];

      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 32);
        *buf = 138412802;
        v169 = v41;
        v170 = 2112;
        v171 = v35;
        v172 = 2112;
        v173 = v39;
        _os_log_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Found LMD folder with legacy XATTR '%@', checking if it's valid for import%@", buf, 0x20u);
      }

      if (v35 && ([*(*(a1 + 32) + 568) accountDSID], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v35, "isEqualToString:", v42), v42, v43))
      {
        v44 = brc_bread_crumbs();
        v45 = brc_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = *(a1 + 32);
          *buf = 138412546;
          v169 = v46;
          v170 = 2112;
          v171 = v44;
          _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Mobile Documents folder owner matches the session owner. We can safely import. %@", buf, 0x16u);
        }

        *(*(*(a1 + 96) + 8) + 24) = 1;
      }

      else
      {
        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = *(a1 + 32);
          v51 = [*(v50 + 568) accountDSID];
          *buf = 138413058;
          v169 = v50;
          v170 = 2112;
          v171 = v35;
          v172 = 2112;
          v173 = v51;
          v174 = 2112;
          v175 = v48;
          _os_log_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Mobile Documents folder owner (%@) DOES NOT match the session owner (%@). Not invoking Import%@", buf, 0x2Au);
        }

        if (!v38)
        {
          v52 = MEMORY[0x277CBEBC0];
          v154[0] = MEMORY[0x277D85DD0];
          v154[1] = 3221225472;
          v154[2] = __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_67;
          v154[3] = &unk_278502B88;
          v154[4] = *(a1 + 32);
          v53 = v36;
          v54 = *(a1 + 64);
          v155 = v53;
          v156 = v54;
          [v52 br_setIOPolicy:1 type:7 forBlock:v154];
        }

        BRCRecursiveRemoveBelow(*(*(a1 + 32) + 600));
      }
    }

    else
    {
      v36 = v31;
      v35 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(a1 + 32);
        *buf = 138412546;
        v169 = v47;
        v170 = 2112;
        v171 = v35;
        _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Didn't find LMD folder. Will start from scratch%@", buf, 0x16u);
      }
    }

    v55 = brc_bread_crumbs();
    v56 = brc_default_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        v57 = "import";
      }

      else
      {
        v57 = "add";
      }

      v58 = *(*(*(a1 + 80) + 8) + 40);
      v59 = *(*(*(a1 + 88) + 8) + 40);
      v60 = *(a1 + 32);
      v61 = *(a1 + 40);
      v62 = *(a1 + 48);
      *buf = 138413826;
      v169 = v60;
      v170 = 2080;
      v171 = v57;
      v172 = 2112;
      v173 = v58;
      v174 = 2112;
      v175 = v59;
      v176 = 2112;
      v177 = v61;
      v178 = 2112;
      v179 = v62;
      v180 = 2112;
      v181 = v55;
      _os_log_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Will attempt to %s domain: providerID = %@ , domainID = %@, persona = %@, displayName = %@%@", buf, 0x48u);
    }

    v63 = [objc_alloc(MEMORY[0x277CC6498]) initWithIdentifier:*(*(*(a1 + 88) + 8) + 40) displayName:*(a1 + 48)];
    v64 = *(a1 + 32);
    v65 = *(v64 + 136);
    *(v64 + 136) = v63;

    v66 = [*(a1 + 56) br_dsid];
    v67 = [*(*(a1 + 32) + 136) userInfo];
    v68 = [v67 mutableCopy];
    v69 = v68;
    v70 = v36;
    if (v68)
    {
      v71 = v68;
    }

    else
    {
      v71 = objc_opt_new();
    }

    v72 = v71;
    v73 = 0x277CC6000uLL;

    [v72 setObject:v66 forKeyedSubscript:*MEMORY[0x277CFAC18]];
    [*(*(a1 + 32) + 136) setUserInfo:v72];
    v137 = v72;
    v138 = v66;
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      [*(a1 + 32) _clearLegacyConflictVersionsAsync];
      if ([*(a1 + 56) isDataSeparatedAccount])
      {
        [MEMORY[0x277CC64A8] br_getLegacyEnterpriseProviderManager];
        v143 = v153 = 0;
        v74 = [v143 br_getFPDomainsWithError:&v153];
        v136 = v153;
        if (v136)
        {
          obj = brc_bread_crumbs();
          v75 = brc_default_log();
          if (os_log_type_enabled(v75, 0x90u))
          {
            v131 = *(a1 + 32);
            *buf = 138412802;
            v169 = v131;
            v170 = 2112;
            v171 = v136;
            v172 = 2112;
            v173 = obj;
            _os_log_error_impl(&dword_223E7A000, v75, 0x90u, "[ERROR] %@ - couldn't get existing domains: %@%@", buf, 0x20u);
          }
        }

        else
        {
          v134 = v70;
          v86 = brc_bread_crumbs();
          v87 = brc_default_log();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v88 = *(a1 + 32);
            [v143 providerIdentifier];
            v90 = v89 = v74;
            *buf = 138413058;
            v169 = v88;
            v170 = 2112;
            v171 = v89;
            v172 = 2112;
            v173 = v90;
            v174 = 2112;
            v175 = v86;
            _os_log_impl(&dword_223E7A000, v87, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Found the following domains: %@ from provider: %@%@", buf, 0x2Au);

            v74 = v89;
          }

          v152[0] = MEMORY[0x277D85DD0];
          v152[1] = 3221225472;
          v152[2] = __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_76;
          v152[3] = &unk_278505CC0;
          v91 = a1;
          v152[4] = *(a1 + 88);
          [v74 br_copy_if:v152];
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          obj = v151 = 0u;
          v92 = [obj countByEnumeratingWithState:&v148 objects:v167 count:16];
          if (v92)
          {
            v93 = v92;
            v132 = v74;
            v94 = *v149;
            do
            {
              for (i = 0; i != v93; ++i)
              {
                if (*v149 != v94)
                {
                  objc_enumerationMutation(obj);
                }

                v96 = *(*(&v148 + 1) + 8 * i);
                v97 = brc_bread_crumbs();
                v98 = brc_default_log();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  v99 = *(v91 + 32);
                  *buf = 138412802;
                  v169 = v99;
                  v170 = 2112;
                  v171 = v96;
                  v172 = 2112;
                  v173 = v97;
                  _os_log_impl(&dword_223E7A000, v98, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Trying to remove domain %@%@", buf, 0x20u);
                }

                v147[0] = MEMORY[0x277D85DD0];
                v147[1] = 3221225472;
                v147[2] = __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_78;
                v147[3] = &unk_2784FFFA8;
                v147[4] = *(v91 + 32);
                v147[5] = v96;
                [v143 br_removeDomain:v96 sync:1 completionHandler:v147];
              }

              v93 = [obj countByEnumeratingWithState:&v148 objects:v167 count:16];
            }

            while (v93);
            v4 = 0;
            v7 = 0;
            a1 = v91;
            v70 = v134;
            v73 = 0x277CC6000;
            v74 = v132;
          }

          else
          {
            v70 = v134;
          }
        }
      }

      v102 = *(v73 + 1192);
      v103 = *(*(a1 + 32) + 136);
      v104 = *(*(*(a1 + 80) + 8) + 40);
      v105 = [MEMORY[0x277CBEBC0] fileURLWithPath:v70];
      v146 = 0;
      LOBYTE(v102) = [v102 br_importDomain:v103 forProviderIdentifier:v104 fromDirectoryAtURL:v105 error:&v146];
      v80 = v146;

      if ((v102 & 1) == 0)
      {
        v107 = [v80 br_isCocoaErrorCode:3328];
        v108 = MEMORY[0x277CCA9B8];
        v109 = *MEMORY[0x277CFABD0];
        if (v107)
        {
          v165 = *MEMORY[0x277CCA7E8];
          v166 = v80;
          v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
          v111 = @"volume not supported by FPFS";
          v112 = v108;
          v113 = v109;
          v114 = 121;
        }

        else
        {
          v163 = *MEMORY[0x277CCA7E8];
          v164 = v80;
          v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v111 = @"Can't import FPFS domain";
          v112 = v108;
          v113 = v109;
          v114 = 92;
        }

        v84 = [v112 br_errorWithDomain:v113 code:v114 userInfo:v110 description:v111];
        v106 = v141;

        goto LABEL_71;
      }
    }

    else
    {
      v76 = *(*(a1 + 32) + 136);
      v77 = *(*(*(a1 + 80) + 8) + 40);
      v145 = 0;
      v78 = [MEMORY[0x277CC64A8] br_addDomain:v76 forProviderIdentifier:v77 error:&v145];
      v79 = v145;
      v80 = v79;
      if ((v78 & 1) == 0)
      {
        if ([v79 br_isCocoaErrorCode:3328])
        {
          v81 = MEMORY[0x277CCA9B8];
          v82 = *MEMORY[0x277CFABD0];
          v161 = *MEMORY[0x277CCA7E8];
          v162 = v80;
          v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
          v84 = [v81 br_errorWithDomain:v82 code:121 userInfo:v83 description:@"volume not supported by FPFS"];
        }

        else
        {
          v80 = v80;
          v84 = v80;
        }

        goto LABEL_66;
      }
    }

    v84 = 0;
LABEL_66:
    v106 = v141;
LABEL_71:

    if (v84)
    {
      v144 = 0;
      v115 = [MEMORY[0x277CC6420] providerDomainWithID:v106 cachePolicy:0 error:&v144];
      v116 = v144;
      if (!v116 && [v115 disconnectionState] == 6)
      {
        v133 = v7;
        v135 = v70;
        if (*(*(*(a1 + 96) + 8) + 24))
        {
          v117 = "importing";
        }

        else
        {
          v117 = "adding";
        }

        v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed %s domain. Device out of space for domain %@", v117, *(*(a1 + 32) + 136)];
        v119 = brc_bread_crumbs();
        v120 = brc_default_log();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v121 = *(a1 + 32);
          *buf = 138412802;
          v169 = v121;
          v170 = 2112;
          v171 = v118;
          v172 = 2112;
          v173 = v119;
          _os_log_impl(&dword_223E7A000, v120, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - %@%@", buf, 0x20u);
        }

        v122 = MEMORY[0x277CCA9B8];
        v123 = *MEMORY[0x277CFABD0];
        v159 = *MEMORY[0x277CCA7E8];
        v124 = [v84 copy];
        v160 = v124;
        v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v126 = [v122 br_errorWithDomain:v123 code:85 userInfo:v125 description:{@"%@", v118}];

        v127 = *(a1 + 32);
        v128 = *(v127 + 136);
        *(v127 + 136) = 0;

        v84 = v126;
        v7 = v133;
        v70 = v135;
        v106 = v141;
      }
    }

    v129 = *(*(a1 + 64) + 8);
    v130 = *(v129 + 40);
    *(v129 + 40) = v84;

    goto LABEL_82;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
LABEL_83:
}

void __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_63(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@ - Cleaning up Ciconia failed: %@%@", &v7, 0x20u);
    }
  }
}

uint64_t __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_67(void *a1)
{
  result = [*(a1[4] + 456) renameAndUnlinkInBackgroundItemAtPath:a1[5]];
  if ((result & 1) == 0)
  {
    result = BRCRecursiveRemoveBelow(a1[5]);
    if (!result)
    {
      *(*(a1[6] + 8) + 40) = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:99 userInfo:0 description:@"Found unknown account data on disk"];

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

uint64_t __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v4;
}

void __84__BRCAccountSession__addOrImportDomainIfNeededWithError_domainAdded_domainImported___block_invoke_78(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 138413058;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] %@ - couldn't remove domain %@: %@%@", &v10, 0x2Au);
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] %@ - Successfully removed domain %@%@", &v10, 0x20u);
    }
  }
}

- (void)fixFileProviderDomainDecorations
{
  v3 = [MEMORY[0x277CC64A8] br_getDomainForCurrentPersonaWithError:0];
  if (v3)
  {
    objc_storeStrong(&self->_fpDomain, v3);
    [(BRCAccountSession *)self decorateUserInfoForFPFSDomain:self->_fpDomain withError:0];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_createGroupContainerStageOfType:(signed __int16)type
{
  typeCopy = type;
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D77BF8] br_isInSyncBubble])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession _createGroupContainerStageOfType:];
    }
  }

  else
  {
    v5 = [(BRCAccountSession *)self groupContainerStagePathForCurrentPersonaFromStageType:typeCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = 0;
    if (([defaultManager fileExistsAtPath:v5 isDirectory:0] & 1) == 0)
    {
      v11 = 0;
      v8 = [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v11];
      v6 = v11;
      if ((v8 & 1) == 0)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, 0x90u))
        {
          *buf = 138412802;
          v13 = v5;
          v14 = 2112;
          v15 = v6;
          v16 = 2112;
          v17 = v9;
          _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] Unable to create directory at '%@'; %@%@", buf, 0x20u);
        }
      }
    }
  }
}

- (void)_refreshRootsCache
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_submitDelayedTelemetryEventIfNeeded:(id)needed wait:(double)wait withBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  blockCopy = block;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:neededCopy];
  if (v10)
  {
    v11 = MEMORY[0x277CCAAC8];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v30 = 0;
    v17 = [v11 unarchivedObjectOfClasses:v16 fromData:v10 error:&v30];
    v18 = v30;

    if (v18)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *location = 138412802;
        *&location[4] = neededCopy;
        v32 = 2112;
        v33 = v18;
        v34 = 2112;
        v35 = v19;
        _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Error Unarchiving %@ - %@%@", location, 0x20u);
      }
    }

    else
    {
      objc_initWeak(location, self);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__BRCAccountSession__submitDelayedTelemetryEventIfNeeded_wait_withBlock___block_invoke;
      v25[3] = &unk_2785052D0;
      objc_copyWeak(&v29, location);
      v28 = blockCopy;
      v26 = v17;
      v27 = neededCopy;
      v21 = MEMORY[0x22AA4A310](v25);
      v22 = v21;
      if (wait <= 0.0)
      {
        (*(v21 + 16))(v21);
      }

      else
      {
        v23 = dispatch_time(0, (wait * 1000000000.0));
        v24 = dispatch_get_global_queue(0, 0);
        dispatch_after(v23, v24, v22);
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }
  }
}

void __73__BRCAccountSession__submitDelayedTelemetryEventIfNeeded_wait_withBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    if (*(v4 + 584) == 1 && (*(v4 + 585) & 1) == 0)
    {
      objc_sync_exit(v4);

      if (!*(v4 + 91))
      {
        __73__BRCAccountSession__submitDelayedTelemetryEventIfNeeded_wait_withBlock___block_invoke_cold_1();
      }

      (*(*(a1 + 48) + 16))();
      v5 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      v12 = 0;
      v8 = [v5 removeItemAtPath:v7 error:&v12];
      v4 = v12;

      if (v8)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __73__BRCAccountSession__submitDelayedTelemetryEventIfNeeded_wait_withBlock___block_invoke_cold_2();
        }
      }

      else
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = *v6;
          *buf = 138412802;
          v14 = v11;
          v15 = 2112;
          v16 = v4;
          v17 = 2112;
          v18 = v9;
          _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Error while deleting %@ - %@%@", buf, 0x20u);
        }
      }
    }

    else
    {
      objc_sync_exit(v4);
    }
  }
}

- (void)_submitSessionOpenFailedTelemetryEventIfNeeded
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _submitSessionOpenFailedTelemetryEventIfNeeded];
  }

  br_accountSessionOpenErrorInfoPath = [MEMORY[0x277CCACA8] br_accountSessionOpenErrorInfoPath];
  [(BRCAccountSession *)self _submitDelayedTelemetryEventIfNeeded:br_accountSessionOpenErrorInfoPath wait:&__block_literal_global_104 withBlock:0.0];
}

void __67__BRCAccountSession__submitSessionOpenFailedTelemetryEventIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if ([v4 count] != 1)
  {
    __67__BRCAccountSession__submitSessionOpenFailedTelemetryEventIfNeeded__block_invoke_cold_1();
  }

  v6 = [v4 objectForKey:@"Error"];
  v7 = [AppTelemetryTimeSeriesEvent newNSErrorEvent:33 eventGroupUUID:v5[62] value:v6];
  v8 = [v5 analyticsReporter];

  [v8 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v7];
}

- (void)_submitDBCorruptionTelemetryEventIfNeeded
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _submitDBCorruptionTelemetryEventIfNeeded];
  }

  br_corruptedDBInfoPath = [MEMORY[0x277CCACA8] br_corruptedDBInfoPath];
  [(BRCAccountSession *)self _submitDelayedTelemetryEventIfNeeded:br_corruptedDBInfoPath wait:&__block_literal_global_110 withBlock:0.0];
}

void __62__BRCAccountSession__submitDBCorruptionTelemetryEventIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if ([v4 count] != 2)
  {
    __62__BRCAccountSession__submitDBCorruptionTelemetryEventIfNeeded__block_invoke_cold_1();
  }

  v6 = [v4 objectForKey:@"Description"];
  v7 = [v4 objectForKey:@"Error"];

  v8 = [AppTelemetryTimeSeriesEvent newDBResetEventWithError:v7 description:v6];
  v9 = [v5 analyticsReporter];

  [v9 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v8];
}

- (void)_submitReimportDomainFailedTelemetryEventIfNeeded
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  [v3 secondsToWaitBeforeSendingReimportDomainFailureTTR];
  v5 = v4;

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _submitReimportDomainFailedTelemetryEventIfNeeded];
  }

  br_reimportDomainErrorInfoPath = [MEMORY[0x277CCACA8] br_reimportDomainErrorInfoPath];
  [(BRCAccountSession *)self _submitDelayedTelemetryEventIfNeeded:br_reimportDomainErrorInfoPath wait:&__block_literal_global_116 withBlock:v5];
}

void __70__BRCAccountSession__submitReimportDomainFailedTelemetryEventIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if ([v4 count] != 2)
  {
    __70__BRCAccountSession__submitReimportDomainFailedTelemetryEventIfNeeded__block_invoke_cold_1();
  }

  v6 = [v4 objectForKey:@"Description"];
  v7 = [v4 objectForKey:@"Error"];

  v8 = [AppTelemetryTimeSeriesEvent newReimportDomainFailureEventWithError:v7 description:v6];
  v9 = [v5 analyticsReporter];
  [v9 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v8];

  v10 = [v5 tapToRadarManager];

  [v10 requestTapToRadarWithTitle:@"Reimport domain on startup failed" description:@"Reimport domain on startup failed keywords:need to verify that things got recovered correctly" attachments:MEMORY[0x277CBEBF8] sendFullLog:MEMORY[0x277CBEBF8] displayReason:1 triggerRootCause:@"it reset the database" additionalDevices:{v7, 0}];
}

- (void)_setupThrottles
{
  self->_throttleProvider = objc_alloc_init(BRCThrottleProvider);

  MEMORY[0x2821F96F8]();
}

- (BOOL)openWithError:(id *)error pushWorkloop:(id)workloop
{
  v141 = *MEMORY[0x277D85DE8];
  workloopCopy = workloop;
  if (self->_isOpen)
  {
    [BRCAccountSession openWithError:pushWorkloop:];
  }

  memset(v130, 0, sizeof(v130));
  __brc_create_section(1, "[BRCAccountSession openWithError:pushWorkloop:]", 1071, 0, v130);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v134 = v130[0];
    v135 = 2112;
    selfCopy = self;
    v137 = 2112;
    v138 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ - Opening session%@", buf, 0x20u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  libraryRowIDsByMangledID = self->_libraryRowIDsByMangledID;
  self->_libraryRowIDsByMangledID = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  appLibrariesByRowID = self->_appLibrariesByRowID;
  self->_appLibrariesByRowID = v11;

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
  self->_serverZonesByZoneRowID = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sharedServerZonesByMangledID = self->_sharedServerZonesByMangledID;
  self->_sharedServerZonesByMangledID = v15;

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sharedClientZonesByMangledID = self->_sharedClientZonesByMangledID;
  self->_sharedClientZonesByMangledID = v17;

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  privateServerZonesByID = self->_privateServerZonesByID;
  self->_privateServerZonesByID = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  privateClientZonesByID = self->_privateClientZonesByID;
  self->_privateClientZonesByID = v21;

  [(BRCAccountSession *)self _createAccountSupportPathIfNeeded:self->_sessionDirPath protectParent:1];
  [(BRCAccountSession *)self _createAccountSupportPathIfNeeded:self->_cacheDirPath protectParent:1];
  if (self->_cloudDocsFD == -1)
  {
    stringByDeletingLastPathComponent = [(NSString *)self->_sessionDirPath stringByDeletingLastPathComponent];
    v24 = stringByDeletingLastPathComponent;
    v25 = open([stringByDeletingLastPathComponent fileSystemRepresentation], 33028);
    self->_cloudDocsFD = v25;
    if (v25 < 0)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open file at path '%@' %{errno}d", stringByDeletingLastPathComponent, *__error()];
      objc_claimAutoreleasedReturnValue();
      v115 = brc_bread_crumbs();
      v116 = brc_default_log();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
      {
        v117 = brc_append_system_info_to_message();
        [(BRCAccountSession *)v117 openWithError:v115 pushWorkloop:buf];
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountSession openWithError:pushWorkloop:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/account/BRCAccountSession.m", 1091, uTF8String);
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession openWithError:pushWorkloop:];
    }

    if (flock(self->_cloudDocsFD, 2) < 0)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to lock file at path '%@' %{errno}d", stringByDeletingLastPathComponent, *__error()];
      objc_claimAutoreleasedReturnValue();
      v119 = brc_bread_crumbs();
      v120 = brc_default_log();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        v121 = brc_append_system_info_to_message();
        [(BRCAccountSession *)v121 openWithError:v119 pushWorkloop:buf];
      }

      brc_append_system_info_to_message();
      uTF8String2 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountSession openWithError:pushWorkloop:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/account/BRCAccountSession.m", 1095, uTF8String2);
    }
  }

  path = [(NSURL *)self->_dbURL path];
  [(BRCAccountSession *)self _createAccountSupportPathIfNeeded:path protectParent:0];

  [(BRCAccountSession *)self _prepareGroupContainerLocations];
  v29 = self->_dbURL;
  v30 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BRCAccountSession_openWithError_pushWorkloop___block_invoke;
  block[3] = &unk_2784FF450;
  v31 = v29;
  v129 = v31;
  dispatch_async(v30, block);

  [(BRCAccountSession *)self _setupSharedPackageExtensionsPlist];
  [(BRCAccountSession *)self _setupThrottles];
  v32 = objc_alloc_init(BRCVolume);
  volume = self->_volume;
  self->_volume = v32;

  [MEMORY[0x277CFAE00] clearAccountDescriptorCache];
  v127 = 0;
  v126 = 0;
  v34 = [(BRCAccountSession *)self _addOrImportDomainIfNeededWithError:&v126 domainAdded:&v127 + 1 domainImported:&v127];
  v35 = v126;
  v36 = v35;
  if (!v34)
  {
    if (([v35 br_isCloudDocsErrorCode:85] & 1) != 0 || (objc_msgSend(v36, "br_isCloudDocsErrorCode:", 92) & 1) != 0 || (objc_msgSend(v36, "br_isCloudDocsErrorCode:", 99) & 1) != 0 || (objc_msgSend(v36, "br_isCloudDocsErrorCode:", 116) & 1) != 0 || objc_msgSend(v36, "br_isCloudDocsErrorCode:", 121))
    {
      v101 = v36;
      if (v101)
      {
        v102 = brc_bread_crumbs();
        v103 = brc_default_log();
        if (os_log_type_enabled(v103, 0x90u))
        {
          v106 = "(passed to caller)";
          *buf = 136315906;
          v134 = "[BRCAccountSession openWithError:pushWorkloop:]";
          v135 = 2080;
          if (!error)
          {
            v106 = "(ignored by caller)";
          }

          selfCopy = v106;
          v137 = 2112;
          v138 = v101;
          v139 = 2112;
          v140 = v102;
          _os_log_error_impl(&dword_223E7A000, v103, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v104 = v101;
        *error = v101;
      }
    }

    else
    {
      v107 = MEMORY[0x277CCA9B8];
      v131 = *MEMORY[0x277CCA7E8];
      v132 = v36;
      v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
      v101 = [v107 br_errorWithDomain:*MEMORY[0x277CFABD0] code:81 userInfo:v108 description:@"Can't create FPFS domain"];

      if (v101)
      {
        v109 = brc_bread_crumbs();
        v110 = brc_default_log();
        if (os_log_type_enabled(v110, 0x90u))
        {
          v112 = "(passed to caller)";
          *buf = 136315906;
          v134 = "[BRCAccountSession openWithError:pushWorkloop:]";
          v135 = 2080;
          if (!error)
          {
            v112 = "(ignored by caller)";
          }

          selfCopy = v112;
          v137 = 2112;
          v138 = v101;
          v139 = 2112;
          v140 = v109;
          _os_log_error_impl(&dword_223E7A000, v110, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v111 = v101;
        *error = v101;
      }
    }

    goto LABEL_33;
  }

  if (![(BRCVolume *)self->_volume setupWithError:error]|| ([(BRCAccountSession *)self _refreshRootsCache], v37 = [[BRCStageRegistry alloc] initWithAccountSession:self], stageRegistry = self->_stageRegistry, self->_stageRegistry = v37, stageRegistry, [(BRCStageRegistry *)self->_stageRegistry open], buf[0] = 0, ![(BRCAccountSession *)self openDBForNewDomain:(HIBYTE(v127) | v127) & 1 deviceIDChanged:buf withError:error]))
  {
LABEL_33:
    v86 = 0;
    goto LABEL_34;
  }

  [(BRCAccountSession *)self _markDBOpened];
  if (buf[0] == 1)
  {
    v39 = [BRCUserDefaults defaultsForMangledID:0];
    shouldPurgeUploadsOnDeviceIDChange = [v39 shouldPurgeUploadsOnDeviceIDChange];

    if (shouldPurgeUploadsOnDeviceIDChange)
    {
      [(BRCStageRegistry *)self->_stageRegistry purgeAllUploads];
    }
  }

  v41 = [[BRCFairScheduler alloc] initWithWorkloop:self->_clientTruthWorkloop name:@"client-db"];
  fairClientDBScheduler = self->_fairClientDBScheduler;
  self->_fairClientDBScheduler = v41;

  v43 = [[BRCDeadlineScheduler alloc] initWithName:@"com.apple.bird.main-scheduler" fairScheduler:self->_fairClientDBScheduler];
  defaultScheduler = self->_defaultScheduler;
  self->_defaultScheduler = v43;

  v45 = [[BRCApplyScheduler alloc] initWithAccountSession:self];
  applyScheduler = self->_applyScheduler;
  self->_applyScheduler = v45;

  v47 = [[BRCContainerScheduler alloc] initWithAccountSession:self pushWorkloop:workloopCopy];
  containerScheduler = self->_containerScheduler;
  self->_containerScheduler = v47;

  v49 = [[BRCFSImporter alloc] initWithAccountSession:self];
  fsImporter = self->_fsImporter;
  self->_fsImporter = v49;

  v51 = [[BRCFSUploader alloc] initWithAccountSession:self];
  fsUploader = self->_fsUploader;
  self->_fsUploader = v51;

  v53 = [[BRCFSDownloader alloc] initWithAccountSession:self];
  fsDownloader = self->_fsDownloader;
  self->_fsDownloader = v53;

  v55 = [[BRCSyncUpScheduler alloc] initWithAccountSession:self];
  syncUpScheduler = self->_syncUpScheduler;
  self->_syncUpScheduler = v55;

  v57 = [[BRCNotificationManager alloc] initWithAccountSession:self];
  notificationManager = self->_notificationManager;
  self->_notificationManager = v57;

  v59 = [[BRCSyncContextProvider alloc] initWithAccountSession:self];
  syncContextProvider = self->_syncContextProvider;
  self->_syncContextProvider = v59;

  v61 = +[BRCUserNotificationManager sharedManager];
  [v61 registerSessionContext:self forAccountID:self->_acAccountID];

  [(BRCAccountSession *)self _initalizeItemFetcher];
  v62 = [[BRCNamedThrottleManager alloc] initWithDB:self->_clientDB];
  namedThrottleManager = self->_namedThrottleManager;
  self->_namedThrottleManager = v62;

  v64 = [[BRCTapToRadarManager alloc] initWithNamedThrottleManager:self->_namedThrottleManager];
  tapToRadarManager = self->_tapToRadarManager;
  self->_tapToRadarManager = v64;

  v66 = [[BRCDownloadTrackers alloc] initWithSession:self];
  downloadTrackers = self->_downloadTrackers;
  self->_downloadTrackers = v66;

  v68 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v69 = dispatch_queue_create("com.apple.bird.reset", v68);

  resetQueue = self->_resetQueue;
  self->_resetQueue = v69;

  v71 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v72 = dispatch_queue_create("com.apple.bird.db.fixup", v71);

  dbFixupQueue = self->_dbFixupQueue;
  self->_dbFixupQueue = v72;

  dispatch_suspend(self->_resetQueue);
  v74 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(v71) = [v74 spotlightIndexingEnabled];

  if (v71)
  {
    v75 = [[BRCRecentsEnumerator alloc] initWithAccountSession:self];
    recentsEnumerator = self->_recentsEnumerator;
    self->_recentsEnumerator = v75;
  }

  v77 = objc_alloc_init(BRCUserNotification);
  userNotification = self->_userNotification;
  self->_userNotification = v77;

  [(BRCAccountSession *)self _loadClientZonesFromDisk];
  cloudDocsMangledID = [MEMORY[0x277CFAE60] cloudDocsMangledID];
  v80 = [(BRCAccountSession *)self getOrCreateAppLibraryAndPrivateZonesIfNecessary:cloudDocsMangledID];

  v81 = [[BRCDiskSpaceReclaimer alloc] initWithAccountSession:self];
  diskReclaimer = self->_diskReclaimer;
  self->_diskReclaimer = v81;

  [(BRCContainerScheduler *)self->_containerScheduler setup];
  cloudDocsMangledID2 = [MEMORY[0x277CFAE60] cloudDocsMangledID];
  v84 = [(BRCAccountSession *)self getOrCreateAppLibraryAndPrivateZonesIfNecessary:cloudDocsMangledID2];
  defaultClientZone = [v84 defaultClientZone];

  v86 = defaultClientZone != 0;
  if (defaultClientZone)
  {
    defaultAppLibrary = [defaultClientZone defaultAppLibrary];
    if (!defaultAppLibrary)
    {
      v113 = brc_bread_crumbs();
      v114 = brc_default_log();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession openWithError:pushWorkloop:];
      }
    }

    v88 = [[BRCGlobalProgress alloc] initWithSession:self];
    globalProgress = self->_globalProgress;
    self->_globalProgress = v88;

    v90 = [[BRCServerChangesApplier alloc] initWithAccountSession:self];
    serverChangesApplier = self->_serverChangesApplier;
    self->_serverChangesApplier = v90;

    v92 = [[BRCAnalyticsReporter alloc] initWithSession:self];
    analyticsReporter = self->_analyticsReporter;
    self->_analyticsReporter = v92;

    v94 = [BRCLocalItemSyncErrorReporter alloc];
    v95 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    v96 = [(BRCLocalItemSyncErrorReporter *)v94 initWithABCReporter:v95 dbItemSyncErrorCapturer:self->_clientReadWriteDatabaseFacade];
    localItemSyncErrorReporter = self->_localItemSyncErrorReporter;
    self->_localItemSyncErrorReporter = v96;

    v98 = [[BRCPeriodicSyncInvestigation alloc] initWithZoneAppRetriver:self containerScheduler:self->_containerScheduler tapToRadarManager:self->_tapToRadarManager analyticsReporter:self->_analyticsReporter];
    periodicSyncInvestigation = self->_periodicSyncInvestigation;
    self->_periodicSyncInvestigation = v98;

    [(BRCAccountSession *)self _submitDBCorruptionTelemetryEventIfNeeded];
    [(BRCAccountSession *)self _submitSessionOpenFailedTelemetryEventIfNeeded];
    [(BRCAccountSession *)self _submitReimportDomainFailedTelemetryEventIfNeeded];
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = __48__BRCAccountSession_openWithError_pushWorkloop___block_invoke_172;
    v125[3] = &unk_278505D30;
    v125[4] = self;
    [(BRCAccountSession *)self fetchUserRecordIDWithCompletionHandler:v125];
    clientTruthWorkloop = self->_clientTruthWorkloop;
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __48__BRCAccountSession_openWithError_pushWorkloop___block_invoke_2;
    v123[3] = &unk_278500EE0;
    v124 = v127;
    v123[4] = self;
    dispatch_async(clientTruthWorkloop, v123);
    +[BRCSQLBackedSet clearTempDatabases];
    self->_isOpen = 1;
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4];
  }

LABEL_34:
  __brc_leave_section(v130);

  return v86;
}

void __48__BRCAccountSession_openWithError_pushWorkloop___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCAccountSession openWithError:pushWorkloop:]_block_invoke", 1108, 0, v14);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 134218498;
    v16 = v14[0];
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx including %@ in backup%@", buf, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = *MEMORY[0x277CBE878];
  v13 = 0;
  v7 = [v5 setResourceValue:MEMORY[0x277CBEC28] forKey:v6 error:&v13];
  v8 = v13;
  if ((v7 & 1) == 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v12 = [*(a1 + 32) path];
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] Unable to include '%@' from backups: %@%@", buf, 0x20u);
    }
  }

  __brc_leave_section(v14);

  objc_autoreleasePoolPop(v2);
}

uint64_t __48__BRCAccountSession_openWithError_pushWorkloop___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _sendFPFSImportStartTelemetryEvent];
  }

  else
  {
    return [v2 triggerFPFSImportFinishedTelemetryEventIfNeeded];
  }
}

- (void)_pcsChainAllItemsWithSystemTask:(id)task
{
  taskCopy = task;
  clientTruthWorkloop = self->_clientTruthWorkloop;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(clientTruthWorkloop, v7);
}

void __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_cold_1();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_175;
  v6[3] = &unk_278505D80;
  v6[4] = v4;
  v7 = *(a1 + 40);
  v8 = &v9;
  [v4 enumerateAppLibraries:v6];
  if ((v10[3] & 1) == 0)
  {
    v5 = +[BRCBGSystemTaskManager sharedManager];
    [v5 completeTask:*(a1 + 40)];
  }

  _Block_object_dispose(&v9, 8);
}

BOOL __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containerMetadata];
  if (([v4 isDocumentScopePublic] & 1) == 0)
  {

LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v5 = [v3 defaultClientZone];
  v6 = [v5 isSyncBlocked];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = [v3 mangledID];
  v8 = [BRCUserDefaults defaultsForMangledID:v7];
  v9 = [v8 aggressivelyPCSChainWithAccountFacade:*(*(a1 + 32) + 568)];

  if (!v9)
  {
    goto LABEL_7;
  }

  if ([*(a1 + 40) isTaskExpired])
  {
    v10 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v12 = [v3 db];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_2;
    v38[3] = &unk_2784FF910;
    v38[4] = *(a1 + 32);
    v13 = [v3 documentsFolderItemID];
    v14 = [v3 defaultClientZone];
    v15 = [v14 dbRowID];
    v16 = [v12 fetchObject:v38 sql:{@"SELECT zone_rowid, item_rank, item_origname, pcs_state, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, child_basehash_salt, salting_state, basehash_salt_validation_key, quota_used, recursive_child_count, shared_children_count, shared_alias_count, child_count FROM server_items WHERE item_parent_id = %@ AND zone_rowid = %@ AND item_filename != '.Trash' AND pcs_state NOT IN (2, 3) LIMIT 1", v13, v15}];

    v10 = v16 == 0;
    if (v16)
    {
      v17 = [[BRCPCSChainingOperation alloc] initWithRootItem:v16 appLibrary:v3 sessionContext:*(a1 + 32) syncUpCallback:*(*(a1 + 32) + 664)];
      v18 = [MEMORY[0x277CBC4F8] br_aggressiveChaining];
      [(_BRCOperation *)v17 setGroup:v18];

      [(BRCPCSChainingOperation *)v17 setQualityOfService:9];
      objc_initWeak(&location, *(a1 + 32));
      v19 = [*(*(a1 + 32) + 200) serialQueue];
      v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v19);

      dispatch_source_set_timer(v20, 0, 0x2540BE400uLL, 0xB2D05E00uLL);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_3;
      v34[3] = &unk_2784FF478;
      v35 = *(a1 + 40);
      v21 = v17;
      v36 = v21;
      v22 = v20;
      v23 = v34;
      v24 = v22;
      v25 = v23;
      v26 = v25;
      v27 = v25;
      if (*MEMORY[0x277CFB010])
      {
        v27 = (*MEMORY[0x277CFB010])(v25);
      }

      v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v27);
      dispatch_source_set_event_handler(v24, v28);

      dispatch_resume(v24);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_4;
      v30[3] = &unk_278505D58;
      v29 = v24;
      v31 = v29;
      objc_copyWeak(&v33, &location);
      v32 = *(a1 + 40);
      [(BRCPCSChainingOperation *)v21 setPcsChainCompletionBlock:v30];
      [(_BRCOperation *)v21 schedule];
      *(*(*(a1 + 48) + 8) + 24) = 1;

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }
  }

LABEL_8:

  return v10;
}

id __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) newServerItemFromPQLResultSet:a2 error:a3];

  return v3;
}

void *__53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isTaskExpired];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 cancel];
  }

  return result;
}

void __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (v8 || !WeakRetained)
  {
    if (([v8 brc_isCloudKitCancellationError] & 1) == 0)
    {
      v12 = +[BRCBGSystemTaskManager sharedManager];
      [v12 expireTask:*(a1 + 40)];
    }
  }

  else
  {
    if (v7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_5;
      v16[3] = &unk_2784FFFA8;
      v16[4] = WeakRetained;
      v17 = *(a1 + 40);
      [v7 addPreFlushDirectoryListCompletionBlock:v16];
      [v7 beginObservingChangesWithDelegate:0];
      v11 = v17;
    }

    else
    {
      v13 = WeakRetained[6];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_7;
      v14[3] = &unk_2784FF478;
      v14[4] = WeakRetained;
      v15 = *(a1 + 40);
      dispatch_async(v13, v14);
      v11 = v15;
    }
  }
}

void __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__BRCAccountSession__pcsChainAllItemsWithSystemTask___block_invoke_6;
  v4[3] = &unk_2784FF478;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

- (id)_getPartiallySaltedItemWithAppLibrary:(id)library
{
  libraryCopy = library;
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  defaultClientZone = [libraryCopy defaultClientZone];
  if (!libraryCopy || [libraryCopy saltingState] != 2 || (objc_msgSend(libraryCopy, "rootItemID"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(defaultClientZone, "itemByItemID:", v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "asDirectory"), asDirectory = objc_claimAutoreleasedReturnValue(), v7, v6, !asDirectory))
  {
    v9 = [defaultClientZone db];
    dbRowID = [defaultClientZone dbRowID];
    v11 = [v9 fetch:{@"SELECT item_id FROM server_items WHERE salting_state = 2 AND item_type IN (0, 9, 10) AND zone_rowid = %@ LIMIT 1", dbRowID}];

    if ([v11 next] && (objc_msgSend(v11, "objectOfClass:atIndex:", objc_opt_class(), 0), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = [defaultClientZone itemByItemID:v12];
      asDirectory = [v14 asDirectory];
    }

    else
    {
      asDirectory = 0;
    }
  }

  return asDirectory;
}

- (void)_saltPartiallySaltedItemsWithSystemTask:(id)task
{
  taskCopy = task;
  clientTruthWorkloop = self->_clientTruthWorkloop;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(clientTruthWorkloop, v7);
}

void __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_cold_1();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_189;
  v8[3] = &unk_278505DD0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = &v12;
  [v4 enumerateAppLibraries:v8];
  if ((v13[3] & 1) == 0)
  {
    v7 = +[BRCBGSystemTaskManager sharedManager];
    [v7 completeTask:*(a1 + 40)];
  }

  _Block_object_dispose(&v12, 8);
}

BOOL __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_189(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 defaultClientZone];
  if ([v4 isSyncBlocked])
  {
    goto LABEL_8;
  }

  v5 = [v3 mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:v5];
  if (![v6 finishSaltingPartiallySaltedDirectories] || (objc_msgSend(v4, "enhancedDrivePrivacyEnabled") & 1) == 0)
  {

    goto LABEL_8;
  }

  v7 = [v4 isBusy];

  if (v7)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if ([*(a1 + 32) isTaskExpired])
  {
    v8 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v10 = [*(a1 + 40) _getPartiallySaltedItemWithAppLibrary:v3];
    objc_initWeak(&location, *(a1 + 40));
    v8 = v10 == 0;
    if (v10)
    {
      v11 = [BRCSaltingBatchOperation alloc];
      v12 = objc_loadWeakRetained(&location);
      v13 = [(BRCSaltingBatchOperation *)v11 initWithParentItem:v10 sessionContext:v12];

      v14 = [MEMORY[0x277CBC4F8] br_partialSaltingCompletion];
      [(_BRCOperation *)v13 setGroup:v14];

      [(_BRCOperation *)v13 setNonDiscretionary:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_2;
      v16[3] = &unk_278505DA8;
      objc_copyWeak(&v20, &location);
      v17 = v10;
      v15 = v4;
      v18 = v15;
      v19 = *(a1 + 32);
      [(BRCSaltingBatchOperation *)v13 setMetadataCompletionBlock:v16];
      [v15 addOutOfBandOperation:v13];
      [(_BRCOperation *)v13 schedule];
      *(*(*(a1 + 48) + 8) + 24) = 1;

      objc_destroyWeak(&v20);
    }

    objc_destroyWeak(&location);
  }

LABEL_9:

  return v8;
}

void __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_2(id *a1, int a2, int a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained analyticsReporter];
    v11 = [a1[4] itemID];
    v12 = [v11 debugItemIDString];
    v13 = [a1[5] mangledID];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "enhancedDrivePrivacyEnabled")}];
    [v10 aggregateReportForAppTelemetryIdentifier:42 itemID:v12 zoneMangledID:v13 enhancedDrivePrivacyEnabled:v14 error:v7];

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = a1[4];
      *buf = 138413314;
      v25 = v18;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished metadata salting a batch for item %@ when completed: %d validation: %d error: %@%@", buf, 0x2Cu);
    }

    if (!v7 || ([v7 brc_isSaltingError] & 1) != 0 || (a3 & 1) != 0 || objc_msgSend(v7, "brc_isCloudKitCancellationError"))
    {
      v17 = v9[6];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_192;
      v19[3] = &unk_2784FFE68;
      v20 = v7;
      v21 = a1[5];
      v22 = v9;
      v23 = a1[6];
      dispatch_async(v17, v19);
    }
  }
}

uint64_t __61__BRCAccountSession__saltPartiallySaltedItemsWithSystemTask___block_invoke_192(uint64_t a1)
{
  if (([*(a1 + 32) brc_isCloudKitCancellationError] & 1) == 0)
  {
    [*(a1 + 40) scheduleSyncDown];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 _saltPartiallySaltedItemsWithSystemTask:v3];
}

- (unint64_t)_recoverAndReportBoosting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__BRCAccountSession__recoverAndReportBoosting__block_invoke;
  v6[3] = &unk_2785024C8;
  v6[4] = &v7;
  [(BRCAccountSession *)self enumerateAppLibraries:v6];
  v3 = [AppTelemetryTimeSeriesEvent newSyncBoostingProblemCountWithProblemCount:*(v8 + 6)];
  [(BRCAnalyticsReporter *)self->_analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v3];
  v4 = *(v8 + 6);

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __46__BRCAccountSession__recoverAndReportBoosting__block_invoke(uint64_t a1, void *a2)
{
  if (([a2 integrityCheckBoosting] & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (unint64_t)_recoverAndReportBrokenShareOptions
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(BRCPQLConnection *)self->_clientDB fetch:@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci LEFT JOIN server_items AS si ON ci.item_id = si.item_id AND ci.zone_rowid = si.zone_rowid WHERE ci.zone_rowid != ci.item_parent_zone_rowid AND (ci.item_sharing_options & 4) = 0 AND (si.item_id IS NULL OR item_id_is_root(si.item_parent_id))"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__BRCAccountSession__recoverAndReportBrokenShareOptions__block_invoke;
  v20[3] = &unk_2784FF910;
  selfCopy = self;
  v19 = v3;
  v20[4] = self;
  v4 = [v3 enumerateObjects:v20];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        clientZone = [v10 clientZone];
        isSharedZone = [clientZone isSharedZone];

        if (isSharedZone)
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v26 = v10;
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Item %@ is missing a shareID%@", buf, 0x16u);
          }

          [v10 setSharingOptions:{objc_msgSend(v10, "sharingOptions") | 4}];
          [v10 markForceNeedsSyncUp];
          [v10 saveToDB];
          v7 = (v7 + 1);
        }

        objc_autoreleasePoolPop(v11);
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = [AppTelemetryTimeSeriesEvent newCorruptSharingOptionsProblemWithProblemCount:v7];
  [(BRCAnalyticsReporter *)selfCopy->_analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v16];

  return v7;
}

id __56__BRCAccountSession__recoverAndReportBrokenShareOptions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (unint64_t)_reportBasehashSalting
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(BRCPQLConnection *)self->_clientDB fetchWithSlowStatementRadar:@"rdar://157468592" sql:@"SELECT COUNT(*), child.item_id, child.zone_rowid FROM server_items AS child INNER JOIN server_items AS parent ON child.item_parent_id = parent.item_id AND child.zone_rowid = parent.zone_rowid WHERE IFNULL(child.basehash_salt_validation_key, 0) != IFNULL(validation_key(parent.child_basehash_salt), 0) AND LENGTH(child.item_filename) > 0 AND child.item_type != 3 AND (parent.salting_state = 3 OR child.basehash_salt_validation_key IS NOT NULL)"];
  if (([v3 next] & 1) == 0)
  {
    [BRCAccountSession _reportBasehashSalting];
  }

  v4 = [v3 intAtIndex:0];
  if (v4)
  {
    v5 = [v3 objectOfClass:objc_opt_class() atIndex:1];
    v6 = [v3 numberAtIndex:2];
    v7 = [(BRCAccountSession *)self serverZoneByRowID:v6];
    mangledID = [v7 mangledID];

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      debugItemIDString = [v5 debugItemIDString];
      *buf = 67109634;
      v37 = v4;
      v38 = 2112;
      v39 = debugItemIDString;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Found %d items with basehash salting issues example itemID %@%@", buf, 0x1Cu);
    }
  }

  else
  {
    mangledID = 0;
    v5 = 0;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __43__BRCAccountSession__reportBasehashSalting__block_invoke;
  v35[3] = &unk_2784FF870;
  v35[4] = self;
  v11 = MEMORY[0x22AA4A310](v35);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __43__BRCAccountSession__reportBasehashSalting__block_invoke_204;
  v34[3] = &unk_2784FF870;
  v34[4] = self;
  v12 = MEMORY[0x22AA4A310](v34);
  clientDB = self->_clientDB;
  v33 = v11;
  v14 = MEMORY[0x22AA4A310](v11);
  v15 = MEMORY[0x22AA4A310](v12);
  v16 = [(BRCPQLConnection *)clientDB fetchWithSlowStatementRadar:@"rdar://157468592" sql:@"SELECT COUNT(*), item_id, zone_rowid FROM server_items AS child WHERE item_id_is_app_library_root(child.item_parent_id) AND IFNULL(child.basehash_salt_validation_key, 0) != IFNULL(call_block(%p, child.item_parent_id), 0) AND LENGTH(child.item_filename) > 0 AND child.item_type != 3 AND (call_block(%p, child.item_parent_id) = 3 OR child.basehash_salt_validation_key IS NOT NULL)", v14, v15];

  if (([v16 next] & 1) == 0)
  {
    [BRCAccountSession _reportBasehashSalting];
  }

  v17 = [v16 intAtIndex:0];
  v18 = (v17 + v4);
  if (v17)
  {
    v19 = v17;
    v20 = [v16 objectOfClass:objc_opt_class() atIndex:1];

    v21 = [v16 numberAtIndex:2];
    v22 = [(BRCAccountSession *)self serverZoneByRowID:v21];
    mangledID2 = [v22 mangledID];

    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      debugItemIDString2 = [v20 debugItemIDString];
      *buf = 67109890;
      v37 = v19;
      v38 = 2112;
      v39 = debugItemIDString2;
      v40 = 2112;
      v41 = mangledID2;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Found %d items parented to root with basehash salting issues example itemID %@ zone %@%@", buf, 0x26u);
    }
  }

  else
  {
    mangledID2 = mangledID;
    v20 = v5;
  }

  v27 = brc_bread_crumbs();
  v28 = brc_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _reportBasehashSalting];
  }

  itemIDString = [v20 itemIDString];
  v30 = [AppTelemetryTimeSeriesEvent newBasehashSaltingProblemCountWithProblemCount:v18 mangledID:mangledID2 itemIDString:itemIDString];

  [(BRCAnalyticsReporter *)self->_analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v30];
  return v18;
}

void __43__BRCAccountSession__reportBasehashSalting__block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v6 = [BRCItemID newFromSqliteValue:*a4];
  if (([v6 isNonDesktopRoot] & 1) == 0)
  {
    __43__BRCAccountSession__reportBasehashSalting__block_invoke_cold_1();
  }

  v7 = *(a1 + 32);
  v8 = [v6 appLibraryRowID];
  v9 = [v7 appLibraryByRowID:v8];
  v10 = [v9 childBasehashSalt];
  v11 = [v10 brc_truncatedSHA256];

  sqlite3_result_blob(a2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

void __43__BRCAccountSession__reportBasehashSalting__block_invoke_204(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v6 = [BRCItemID newFromSqliteValue:*a4];
  if (([v6 isNonDesktopRoot] & 1) == 0)
  {
    __43__BRCAccountSession__reportBasehashSalting__block_invoke_204_cold_1();
  }

  v7 = *(a1 + 32);
  v8 = [v6 appLibraryRowID];
  v9 = [v7 appLibraryByRowID:v8];
  v10 = [v9 saltingState];

  sqlite3_result_int(a2, v10);
}

- (unint64_t)_recoverAndReportDanglingLostZombieDirectories
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(BRCPQLConnection *)self->_clientDB fetchWithExpectedIndex:@"client_items/sync_state_job_recovery;client_items/version_old_zone_rowid" sql:@"SELECT ci1.rowid, ci1.zone_rowid, ci1.item_id, ci1.item_creator_id, ci1.item_sharing_options, ci1.item_side_car_ckinfo, ci1.item_parent_zone_rowid, ci1.item_localsyncupstate, ci1.item_local_diffs, ci1.item_notifs_rank, ci1.app_library_rowid, ci1.item_min_supported_os_rowid, ci1.item_user_visible, ci1.item_stat_ckinfo, ci1.item_state, ci1.item_type, ci1.item_mode, ci1.item_birthtime, ci1.item_lastusedtime, ci1.item_favoriterank, ci1.item_parent_id, ci1.item_filename, ci1.item_hidden_ext, ci1.item_finder_tags, ci1.item_xattr_signature, ci1.item_trash_put_back_path, ci1.item_trash_put_back_parent_id, ci1.item_alias_target, ci1.item_creator, ci1.item_processing_stamp, ci1.item_bouncedname, ci1.item_scope, ci1.item_local_change_count, ci1.item_old_version_identifier, ci1.fp_creation_item_identifier, ci1.version_name, ci1.version_ckinfo, ci1.version_mtime, ci1.version_size, ci1.version_thumb_size, ci1.version_thumb_signature, ci1.version_content_signature, ci1.version_xattr_signature, ci1.version_edited_since_shared, ci1.version_device, ci1.version_conflict_loser_etags, ci1.version_quarantine_info, ci1.version_uploaded_assets, ci1.version_upload_error, ci1.version_old_zone_item_id, ci1.version_old_zone_rowid, ci1.version_local_change_count, ci1.version_old_version_identifier, ci1.item_live_conflict_loser_etags, ci1.item_file_id, ci1.item_generation FROM client_items AS ci1                             LEFT JOIN client_items AS ci2                             ON ci2.version_old_zone_item_id = ci1.item_id AND ci2.version_old_zone_rowid = ci1.zone_rowid                             WHERE ci2.version_old_zone_rowid IS NULL                               AND ci2.version_old_zone_item_id IS NULL                               AND ci1.item_state = -3                               AND ci1.item_localsyncupstate != 0                               AND ci1.item_type IN (0, 9, 10)"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__BRCAccountSession__recoverAndReportDanglingLostZombieDirectories__block_invoke;
  v15[3] = &unk_2784FF910;
  v15[4] = self;
  v4 = [v3 enumerateObjects:v15];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (!v5)
  {

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  LODWORD(v7) = 0;
  v8 = *v17;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      if (([v10 isDirectory] & 1) == 0)
      {
        [(BRCAccountSession *)v20 _recoverAndReportDanglingLostZombieDirectories];
      }

      [v10 markRemovedFromFilesystemRecursively:1];
      [v10 markForceNeedsSyncUp];
      [v10 markForceNotify];
      asDirectory = [v10 asDirectory];
      [asDirectory forceSignalPropagationToChildren];

      [v10 saveToDB];
      objc_autoreleasePoolPop(v11);
    }

    v7 = (v7 + v6);
    v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  }

  while (v6);

  if (!v7)
  {
    goto LABEL_13;
  }

  v13 = [AppTelemetryTimeSeriesEvent newDanglingZombieProblemCountWithProblemCount:v7];
  [(BRCAnalyticsReporter *)self->_analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v13];

LABEL_14:
  return v7;
}

id __67__BRCAccountSession__recoverAndReportDanglingLostZombieDirectories__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (void)_recoverContentPolicyIfNecessaryForItemID:(id)d appLibrary:(id)library isAppLibraryRoot:(BOOL)root isDocumentsFolder:(BOOL)folder completion:(id)completion
{
  dCopy = d;
  libraryCopy = library;
  completionCopy = completion;
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v16 = [MEMORY[0x277CC6400] br_fpItemIDFromItemIdentifier:dCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __120__BRCAccountSession__recoverContentPolicyIfNecessaryForItemID_appLibrary_isAppLibraryRoot_isDocumentsFolder_completion___block_invoke;
  v20[3] = &unk_278505DF8;
  v21 = dCopy;
  selfCopy = self;
  rootCopy = root;
  folderCopy = folder;
  v23 = libraryCopy;
  v24 = completionCopy;
  v17 = libraryCopy;
  v18 = dCopy;
  v19 = completionCopy;
  [defaultManager fetchItemForItemID:v16 completionHandler:v20];
}

void __120__BRCAccountSession__recoverContentPolicyIfNecessaryForItemID_appLibrary_isAppLibraryRoot_isDocumentsFolder_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = *(*(a1 + 56) + 16);
LABEL_16:
    v6();
    goto LABEL_17;
  }

  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CC6348]])
  {
    v7 = +[BRCQueryItemUtil sharedQueryItemUtil];
    v8 = [v7 contentPolicyForRootContainerWithSessionContext:*(a1 + 40)];
LABEL_11:

    if (v8 != [v5 contentPolicy])
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        *buf = 138413058;
        v22 = v18;
        v23 = 2048;
        v24 = v8;
        v25 = 2048;
        v26 = [v5 contentPolicy];
        v27 = 2112;
        v28 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ has unexpected content policy. Expected:%ld Actual:%ld%@", buf, 0x2Au);
      }

      v13 = *(a1 + 32);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __120__BRCAccountSession__recoverContentPolicyIfNecessaryForItemID_appLibrary_isAppLibraryRoot_isDocumentsFolder_completion___block_invoke_222;
      v19[3] = &unk_2784FF540;
      v20 = v13;
      [BRCImportUtil forceIngestionForItemID:v20 completionHandler:v19];
    }

    v6 = *(*(a1 + 56) + 16);
    goto LABEL_16;
  }

  if (*(a1 + 64))
  {
    if ((*(a1 + 65) & 1) == 0)
    {
      v7 = +[BRCQueryItemUtil sharedQueryItemUtil];
      v9 = [BRCQueryItemInfo queryItemInfoForAppLibraryRoot:*(a1 + 48)];
LABEL_10:
      v10 = v9;
      v8 = [v7 contentPolicyForItemInfo:v9 sessionContext:*(a1 + 40)];

      goto LABEL_11;
    }

LABEL_9:
    v7 = +[BRCQueryItemUtil sharedQueryItemUtil];
    v9 = [BRCQueryItemInfo queryItemInfoForAppLibraryDocumentsFolder:*(a1 + 48)];
    goto LABEL_10;
  }

  if (*(a1 + 65))
  {
    goto LABEL_9;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    __120__BRCAccountSession__recoverContentPolicyIfNecessaryForItemID_appLibrary_isAppLibraryRoot_isDocumentsFolder_completion___block_invoke_cold_1();
  }

  v16 = *(a1 + 56);
  v17 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"item must be root container or app library root or app library documents folder"];
  (*(v16 + 16))(v16, 0, v17);

LABEL_17:
}

void __120__BRCAccountSession__recoverContentPolicyIfNecessaryForItemID_appLibrary_isAppLibraryRoot_isDocumentsFolder_completion___block_invoke_222(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Done Force Ingestion of %@ to update the contentPolicy - %@%@", &v7, 0x20u);
  }
}

- (void)recoverAndReportContentPolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v5 = dispatch_group_create();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__BRCAccountSession_recoverAndReportContentPolicyWithCompletion___block_invoke;
  v19[3] = &unk_278505E20;
  v21 = v22;
  v6 = v5;
  v20 = v6;
  v7 = MEMORY[0x22AA4A310](v19);
  dispatch_group_enter(v6);
  [(BRCAccountSession *)self _recoverContentPolicyIfNecessaryForItemID:*MEMORY[0x277CC6348] appLibrary:0 isAppLibraryRoot:0 isDocumentsFolder:0 completion:v7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__BRCAccountSession_recoverAndReportContentPolicyWithCompletion___block_invoke_2;
  v15[3] = &unk_278505E48;
  v8 = v6;
  v16 = v8;
  selfCopy = self;
  v9 = v7;
  v18 = v9;
  [(BRCAccountSession *)self enumerateAppLibraries:v15];
  clientTruthWorkloop = self->_clientTruthWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCAccountSession_recoverAndReportContentPolicyWithCompletion___block_invoke_3;
  block[3] = &unk_278505E70;
  v13 = completionCopy;
  v14 = v22;
  v11 = completionCopy;
  dispatch_group_notify(v8, clientTruthWorkloop, block);

  _Block_object_dispose(v22, 8);
}

void __65__BRCAccountSession_recoverAndReportContentPolicyWithCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3 && a2)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __65__BRCAccountSession_recoverAndReportContentPolicyWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  if ([v3 isCloudDocsAppLibrary])
  {
    [v3 rootFileObjectID];
  }

  else
  {
    [v3 documentsFolderFileObjectID];
  }
  v5 = ;
  v6 = [v5 asString];
  [v4 _recoverContentPolicyIfNecessaryForItemID:v6 appLibrary:v3 isAppLibraryRoot:0 isDocumentsFolder:1 completion:*(a1 + 48)];

  return 1;
}

- (unint64_t)_recoverAndReportBouncedDocumentsDirectories
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__BRCAccountSession__recoverAndReportBouncedDocumentsDirectories__block_invoke;
  v6[3] = &unk_2785024C8;
  v6[4] = &v7;
  [(BRCAccountSession *)self enumerateAppLibraries:v6];
  if (*(v8 + 6))
  {
    v3 = [AppTelemetryTimeSeriesEvent newBouncedDocumentsDirectoryProblemCountWithProblemCount:?];
    [(BRCAnalyticsReporter *)self->_analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v3];

    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __65__BRCAccountSession__recoverAndReportBouncedDocumentsDirectories__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isCloudDocsAppLibrary] & 1) == 0 && (objc_msgSend(v3, "isiCloudDesktopAppLibrary") & 1) == 0)
  {
    v4 = [v3 fetchDocumentsDirectoryItem];
    v5 = [v4 st];
    v6 = [v5 logicalName];
    v7 = *MEMORY[0x277CFAD90];
    v8 = [v6 isEqualToString:*MEMORY[0x277CFAD90]];

    if ((v8 & 1) == 0)
    {
      v9 = [v4 clientZone];
      v10 = [v4 itemID];
      v11 = [v9 serverItemByItemID:v10];

      v12 = [v4 st];
      v13 = [v12 rawBouncedLogicalName];

      v14 = [v11 originalName];
      v15 = v13 | v14;

      if (v15)
      {
        v39 = v13;
        v40 = v11;
        v41 = v3;
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCAccountSession__recoverAndReportBouncedDocumentsDirectories__block_invoke_cold_1();
        }

        ++*(*(*(a1 + 32) + 8) + 24);
        v18 = [v4 clientZone];
        v19 = [v4 st];
        v20 = [v19 parentID];
        v38 = v7;
        v21 = [v18 itemsEnumeratorWithParentID:v20 andLogicalName:v7];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
          do
          {
            v26 = 0;
            do
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v42 + 1) + 8 * v26);
              v28 = objc_autoreleasePoolPush();
              if ([v27 isDirectory])
              {
                v29 = [v27 itemID];
                v30 = [v4 itemID];
                v31 = [v29 isEqualToItemID:v30];

                if ((v31 & 1) == 0)
                {
                  v32 = brc_bread_crumbs();
                  v33 = brc_default_log();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v47 = v27;
                    v48 = 2112;
                    v49 = v32;
                    _os_log_debug_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] Merging folder %@ into the Documents folder%@", buf, 0x16u);
                  }

                  v34 = [v27 asDirectory];
                  [v34 markBouncedToNextAvailableBounceNumber:512];
                  [v34 markForceNeedsSyncUp];
                  [v34 mergeContentsIntoDirectory:v4];
                }
              }

              objc_autoreleasePoolPop(v28);
              ++v26;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v24);
        }

        v35 = [v4 st];
        v36 = v35;
        if (v39)
        {
          [v35 clearBouncedName];
        }

        else
        {
          [v35 setLogicalName:v38];
        }

        v11 = v40;
        v3 = v41;

        [v4 markForceNeedsSyncUp];
        [v4 saveToDB];
      }
    }
  }

  return 1;
}

- (void)_recoverAndReportStateIntegrityWithCompletion:(id)completion recoveryTask:(id)task
{
  completionCopy = completion;
  taskCopy = task;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _recoverAndReportStateIntegrityWithCompletion:recoveryTask:];
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v10 = dispatch_group_create();
  v11 = [BRCUserDefaults defaultsForMangledID:0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke;
  v37[3] = &unk_278505F10;
  v12 = taskCopy;
  v38 = v12;
  v13 = v10;
  v39 = v13;
  selfCopy = self;
  v41 = v42;
  v14 = MEMORY[0x22AA4A310](v37);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_5;
  v35[3] = &unk_278505F60;
  v15 = v14;
  v36 = v15;
  v16 = MEMORY[0x22AA4A310](v35);
  if ([v11 dbIntegrityCheckMissingShareOptions])
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_7;
    v34[3] = &unk_278505F88;
    v34[4] = self;
    (v16)[2](v16, v34);
  }

  if ([v11 dbIntegrityCheckApplyJobs])
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_8;
    v32[3] = &unk_278505FB0;
    v32[4] = self;
    v33 = v12;
    (*(v15 + 2))(v15, v32);
  }

  if ([v11 dbIntegrityCheckSyncUpJobs])
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_9;
    v30[3] = &unk_278505FB0;
    v30[4] = self;
    v31 = v12;
    (*(v15 + 2))(v15, v30);
  }

  if ([v11 dbIntegrityCheckContainerMetadataSyncUpJob])
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_10;
    v29[3] = &unk_278505F88;
    v29[4] = self;
    (v16)[2](v16, v29);
  }

  if ([v11 dbIntegrityCheckUploadJobs])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_11;
    v27[3] = &unk_278505FB0;
    v27[4] = self;
    v28 = v12;
    (*(v15 + 2))(v15, v27);
  }

  if ([v11 integrityCheckBoosting])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_12;
    v26[3] = &unk_278505F88;
    v26[4] = self;
    (v16)[2](v16, v26);
  }

  if ([v11 dbIntegrityCheckBasehashSalting])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_13;
    v25[3] = &unk_278505F88;
    v25[4] = self;
    (v16)[2](v16, v25);
  }

  if ([v11 dbIntegrityCheckLostZombieDirectories])
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_14;
    v24[3] = &unk_278505F88;
    v24[4] = self;
    (v16)[2](v16, v24);
  }

  if ([v11 dbIntegrityCheckForBouncedDocumentsDirectories])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_15;
    v23[3] = &unk_278505F88;
    v23[4] = self;
    (v16)[2](v16, v23);
  }

  if ([v11 integrityCheckContentPolicy])
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_16;
    v22[3] = &unk_278505FD8;
    v22[4] = self;
    (*(v15 + 2))(v15, v22);
  }

  clientTruthWorkloop = self->_clientTruthWorkloop;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_17;
  v19[3] = &unk_278505E70;
  v20 = completionCopy;
  v21 = v42;
  v18 = completionCopy;
  dispatch_group_notify(v13, clientTruthWorkloop, v19);

  _Block_object_dispose(v42, 8);
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isTaskExpired] & 1) == 0)
  {
    dispatch_group_enter(*(a1 + 40));
    v4 = *(a1 + 48);
    v5 = *(v4 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_2;
    v8[3] = &unk_278505EE8;
    v8[4] = v4;
    v6 = v3;
    v7 = *(a1 + 56);
    v10 = v6;
    v11 = v7;
    v9 = *(a1 + 40);
    dispatch_async(v5, v8);
  }
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_3;
  v8[3] = &unk_278505EC0;
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  *&v4 = v3;
  *(&v4 + 1) = *(a1 + 56);
  v6 = v4;
  v5 = *(&v7 + 1);
  v9 = v7;
  v10 = v6;
  [v2 performWithFlags:8 action:v8];
}

uint64_t __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_3(void *a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_4;
  v5[3] = &unk_278505E98;
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[5];
  v5[4] = a1[4];
  v7 = v1;
  v6 = v3;
  (*(v2 + 16))(v2, v5);

  return 1;
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  *(*(*(a1 + 48) + 8) + 24) += a2;
  objc_sync_exit(v4);

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_6;
  v7[3] = &unk_278505F38;
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5 = a2;
  v4 = v3(v2);
  v5[2](v5, v4);
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 applyScheduler];
  [v5 recoverAndReportMissingJobsWithCompletion:v4 recoveryTask:*(a1 + 40)];
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 syncUpScheduler];
  [v5 recoverAndReportMissingJobsWithCompletion:v4 recoveryTask:*(a1 + 40)];
}

uint64_t __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_10(uint64_t a1)
{
  v1 = [*(a1 + 32) containerScheduler];
  v2 = [v1 recoverAndReportMissingJobs];

  return v2;
}

void __80__BRCAccountSession__recoverAndReportStateIntegrityWithCompletion_recoveryTask___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 fsUploader];
  [v5 recoverAndReportMissingJobsWithCompletion:v4 recoveryTask:*(a1 + 40)];
}

- (void)_cleanupOldCiconiaLocations
{
  if (self->_isDataSeparated)
  {
    cloudDocsAppSupportURL = [MEMORY[0x277CFAE38] cloudDocsAppSupportURL];
    v4 = [cloudDocsAppSupportURL URLByAppendingPathComponent:@"ciconia"];
    if (!access([v4 fileSystemRepresentation], 0))
    {
      fileUnlinker = self->_fileUnlinker;
      path = [v4 path];
      [(BRCFileUnlinker *)fileUnlinker renameAndUnlinkInBackgroundItemAtPath:path];
    }
  }
}

- (void)_registerBackgroundXPCActivities
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  objc_initWeak(&location, self);
  if ([v3 aggressivelyPCSChainWithAccountFacade:self->_accountFacade])
  {
    v4 = +[BRCBGSystemTaskManager sharedManager];
    aggressivePCSChainBGSystemTaskConfig = [v3 aggressivePCSChainBGSystemTaskConfig];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke;
    v18[3] = &unk_2784FFFD0;
    objc_copyWeak(&v19, &location);
    [v4 submitBGSystemTaskWithIdentifier:@"com.apple.bird.aggressive-pcs-chain" configuration:aggressivePCSChainBGSystemTaskConfig block:v18];

    objc_destroyWeak(&v19);
  }

  v6 = +[BRCBGSystemTaskManager sharedManager];
  dbIntegrityCheckBGSystemTaskConfig = [v3 dbIntegrityCheckBGSystemTaskConfig];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_245;
  v16[3] = &unk_2784FFFD0;
  objc_copyWeak(&v17, &location);
  [v6 submitBGSystemTaskWithIdentifier:@"com.apple.bird.db-integrity-check" configuration:dbIntegrityCheckBGSystemTaskConfig block:v16];

  if ([v3 finishSaltingPartiallySaltedDirectories])
  {
    v8 = +[BRCBGSystemTaskManager sharedManager];
    finishSaltingPartiallySaltedDirectoriesBGSystemTaskConfig = [v3 finishSaltingPartiallySaltedDirectoriesBGSystemTaskConfig];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_2_253;
    v14[3] = &unk_2784FFFD0;
    objc_copyWeak(&v15, &location);
    [v8 submitBGSystemTaskWithIdentifier:@"com.apple.bird.finish-salting-partially-salted-directories" configuration:finishSaltingPartiallySaltedDirectoriesBGSystemTaskConfig block:v14];

    objc_destroyWeak(&v15);
  }

  v10 = +[BRCBGSystemTaskManager sharedManager];
  rescheduleSuspendedNeedsUploadItemsBGSystemTaskConfig = [v3 rescheduleSuspendedNeedsUploadItemsBGSystemTaskConfig];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_259;
  v12[3] = &unk_2784FFFD0;
  objc_copyWeak(&v13, &location);
  [v10 submitBGSystemTaskWithIdentifier:@"com.apple.bird.reschedule-suspended-needs-upload-items" configuration:rescheduleSuspendedNeedsUploadItemsBGSystemTaskConfig block:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v16 = +[BRCBGSystemTaskManager sharedManager];
    [v16 completeTask:v3];

    goto LABEL_14;
  }

  v5 = +[BRCAccountsManager sharedManager];
  v6 = [WeakRetained[14] acAccountID];
  v7 = [v5 personaIdentifierForACAccountID:v6];

  if ([v7 isEqualToString:@"__defaultPersonaID__"])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = v7;
  if (!v9)
  {
    if (_block_invoke___personaOnceToken_3 != -1)
    {
      __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_cold_1();
    }

    v10 = _block_invoke___personalPersona_3;
  }

  v11 = [MEMORY[0x277D77BF8] sharedManager];
  v12 = [v11 currentPersona];

  v27 = 0;
  v13 = [v12 userPersonaUniqueString];
  v14 = v13;
  if (v13 == v10 || ([v13 isEqualToString:v10] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    if (voucher_process_can_use_arbitrary_personas())
    {
      v26 = 0;
      v17 = [v12 copyCurrentPersonaContextWithError:&v26];
      v18 = v26;
      v19 = v27;
      v27 = v17;

      if (v18)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, 0x90u))
        {
          __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_cold_4();
        }
      }

      v15 = [v12 br_generateAndRestorePersonaContextWithPersonaUniqueString:v10];

      if (!v15)
      {
        goto LABEL_12;
      }

      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        *buf = 138412802;
        v29 = v7;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v9 || ([v12 isDataSeparatedPersona] & 1) != 0)
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_12;
      }

      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v15 = 0;
    }
  }

LABEL_12:
  [WeakRetained _pcsChainAllItemsWithSystemTask:v3];

  _BRRestorePersona();
LABEL_14:
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_3;
  _block_invoke___personalPersona_3 = v0;
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_245(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v16 = +[BRCBGSystemTaskManager sharedManager];
    [v16 completeTask:v3];

    goto LABEL_14;
  }

  v5 = +[BRCAccountsManager sharedManager];
  v6 = [WeakRetained[14] acAccountID];
  v7 = [v5 personaIdentifierForACAccountID:v6];

  if ([v7 isEqualToString:@"__defaultPersonaID__"])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = v7;
  if (!v9)
  {
    if (_block_invoke_2___personaOnceToken_0 != -1)
    {
      __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_245_cold_1();
    }

    v10 = _block_invoke_2___personalPersona_0;
  }

  v11 = [MEMORY[0x277D77BF8] sharedManager];
  v12 = [v11 currentPersona];

  v29 = 0;
  v13 = [v12 userPersonaUniqueString];
  v14 = v13;
  if (v13 == v10 || ([v13 isEqualToString:v10] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    if (voucher_process_can_use_arbitrary_personas())
    {
      v28 = 0;
      v17 = [v12 copyCurrentPersonaContextWithError:&v28];
      v18 = v28;
      v19 = v29;
      v29 = v17;

      if (v18)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, 0x90u))
        {
          __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_cold_4();
        }
      }

      v15 = [v12 br_generateAndRestorePersonaContextWithPersonaUniqueString:v10];

      if (!v15)
      {
        goto LABEL_12;
      }

      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        *buf = 138412802;
        v31 = v7;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v9 || ([v12 isDataSeparatedPersona] & 1) != 0)
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_12;
      }

      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v15 = 0;
    }
  }

LABEL_12:
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_249;
  v26[3] = &unk_278506000;
  v27 = v3;
  [WeakRetained _recoverAndReportStateIntegrityWithCompletion:v26 recoveryTask:v27];

  _BRRestorePersona();
LABEL_14:
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_2_246()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke_2___personalPersona_0;
  _block_invoke_2___personalPersona_0 = v0;
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_249(uint64_t a1)
{
  v2 = +[BRCBGSystemTaskManager sharedManager];
  [v2 completeTask:*(a1 + 32)];
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_2_253(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v16 = +[BRCBGSystemTaskManager sharedManager];
    [v16 completeTask:v3];

    goto LABEL_14;
  }

  v5 = +[BRCAccountsManager sharedManager];
  v6 = [WeakRetained[14] acAccountID];
  v7 = [v5 personaIdentifierForACAccountID:v6];

  if ([v7 isEqualToString:@"__defaultPersonaID__"])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = v7;
  if (!v9)
  {
    if (_block_invoke_3___personaOnceToken != -1)
    {
      __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_2_253_cold_1();
    }

    v10 = _block_invoke_3___personalPersona;
  }

  v11 = [MEMORY[0x277D77BF8] sharedManager];
  v12 = [v11 currentPersona];

  v27 = 0;
  v13 = [v12 userPersonaUniqueString];
  v14 = v13;
  if (v13 == v10 || ([v13 isEqualToString:v10] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    if (voucher_process_can_use_arbitrary_personas())
    {
      v26 = 0;
      v17 = [v12 copyCurrentPersonaContextWithError:&v26];
      v18 = v26;
      v19 = v27;
      v27 = v17;

      if (v18)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, 0x90u))
        {
          __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_cold_4();
        }
      }

      v15 = [v12 br_generateAndRestorePersonaContextWithPersonaUniqueString:v10];

      if (!v15)
      {
        goto LABEL_12;
      }

      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        *buf = 138412802;
        v29 = v7;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v9 || ([v12 isDataSeparatedPersona] & 1) != 0)
      {
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_12;
      }

      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v15 = 0;
    }
  }

LABEL_12:
  [WeakRetained _saltPartiallySaltedItemsWithSystemTask:v3];

  _BRRestorePersona();
LABEL_14:
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_3()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke_3___personalPersona;
  _block_invoke_3___personalPersona = v0;
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_259(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v19 = +[BRCBGSystemTaskManager sharedManager];
    [v19 completeTask:v3];

    goto LABEL_16;
  }

  v5 = +[BRCAccountsManager sharedManager];
  v6 = [WeakRetained[14] acAccountID];
  v7 = [v5 personaIdentifierForACAccountID:v6];

  if ([v7 isEqualToString:@"__defaultPersonaID__"])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = v7;
  if (!v9)
  {
    if (_block_invoke_4___personaOnceToken != -1)
    {
      __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_259_cold_1();
    }

    v10 = _block_invoke_4___personalPersona;
  }

  v11 = [MEMORY[0x277D77BF8] sharedManager];
  v12 = [v11 currentPersona];

  v32 = 0;
  v13 = [v12 userPersonaUniqueString];
  v14 = v13;
  if (v13 == v10 || ([v13 isEqualToString:v10] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    if (voucher_process_can_use_arbitrary_personas())
    {
      v31 = 0;
      v20 = [v12 copyCurrentPersonaContextWithError:&v31];
      v21 = v31;
      v22 = v32;
      v32 = v20;

      if (v21)
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, 0x90u))
        {
          __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_cold_4();
        }
      }

      v15 = [v12 br_generateAndRestorePersonaContextWithPersonaUniqueString:v10];

      if (!v15)
      {
        goto LABEL_12;
      }

      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        *buf = 138412802;
        v34 = v7;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v9 || ([v12 isDataSeparatedPersona] & 1) != 0)
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_12;
      }

      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v15 = 0;
    }
  }

LABEL_12:
  v16 = [WeakRetained clientTruthWorkloop];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [WeakRetained clientTruthWorkloop];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_263;
    v29[3] = &unk_2784FF478;
    v29[4] = WeakRetained;
    v30 = v3;
    dispatch_async(v18, v29);
  }

  _BRRestorePersona();
LABEL_16:
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_2_260()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke_4___personalPersona;
  _block_invoke_4___personalPersona = v0;
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_263(uint64_t a1)
{
  v2 = [*(a1 + 32) fsUploader];
  [v2 resetAndRescheduleUploaderConstraintCheckerIfNeeded];

  v3 = +[BRCBGSystemTaskManager sharedManager];
  [v3 completeTask:*(a1 + 40)];
}

- (void)_fixupItemsAtStartup
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t __41__BRCAccountSession__fixupItemsAtStartup__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 clientZone];
  v5 = [v3 changeState];
  v6 = [v5 hasNeverSyncedDown];

  if ((v6 & 1) == 0)
  {
    v7 = [v3 changeState];
    v8 = [v7 clientRequestID];

    v9 = [v4 currentRequestID];
    if (v8 >= v9)
    {
      v10 = v9;
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v4 mangledID];
        v17 = 138413058;
        v18 = v16;
        v19 = 2048;
        v20 = v8;
        v21 = 2048;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Will acknowledge the last sync down again for %@ (server:%lld, client:%lld)%@", &v17, 0x2Au);
      }

      [*(a1 + 32) addObject:v3];
    }
  }

  v13 = *(*(*(a1 + 48) + 8) + 40);
  v14 = [v4 mangledID];
  LODWORD(v13) = [v13 mangledIDIsPendingMigration:v14];

  if (v13)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v4];
  }

  return 1;
}

uint64_t __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_266(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2;
        v13[3] = &unk_2784FFA48;
        v13[4] = v9;
        [v3 performWithFlags:8 action:v13];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  *(*(*(v12 + 48) + 8) + 24) = [*(*(v12 + 40) + 240) nextRank];
  return 1;
}

uint64_t __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        memset(v15, 0, sizeof(v15));
        __brc_create_section(0, "[BRCAccountSession _fixupItemsAtStartup]_block_invoke_3", 1983, 0, v15);
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v21 = v15[0];
          v22 = 2112;
          v23 = v7;
          v24 = 2112;
          v25 = v9;
          _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Acknowledge the last sync down again for %@%@", buf, 0x20u);
        }

        v11 = *(*(a1 + 40) + 632);
        v12 = [v7 changeState];
        [v11 fixAndAcknowledgeSyncDown:v7 requestID:objc_msgSend(v12 upToRank:"clientRequestID") caughtUpWithServer:{*(*(*(a1 + 48) + 8) + 24), 0}];

        __brc_leave_section(v15);
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v4);
  }

  return 1;
}

uint64_t __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_267(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 state] & 2) != 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

void __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_269(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  __brc_create_section(0, "[BRCAccountSession _fixupItemsAtStartup]_block_invoke_2", 2008, 0, v21);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_269_cold_1();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v17 + 1) + 8 * v7++) scheduleSyncDown];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_270;
  v16[3] = &unk_2785060A0;
  v9 = *(a1 + 56);
  v16[4] = v8;
  v16[5] = v9;
  [v8 enumerateServerZones:v16];
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_271;
  v13[3] = &unk_2784FF788;
  v11 = v10;
  v12 = *(a1 + 40);
  v14 = v11;
  v15 = v12;
  [v11 groupInBatch:v13];

  __brc_leave_section(v21);
}

uint64_t __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_270(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 40) + 8) + 40) rescheduleSuspendedJobsMatching:v3 inState:16];
  if ([v3 hasFetchedRecentsAndFavorites])
  {
    [*(*(a1 + 32) + 656) rescheduleJobsPendingRecentsAndFavoritesFetchInZone:v3];
  }

  if ([v3 isSharedZone])
  {
    v4 = [v3 clientZone];
    v5 = [v4 asSharedClientZone];
    [v5 removeAllShareAcceptationSidefaults];
  }

  return 1;
}

void __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_271(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v45 = a2;
  v3 = [*(a1 + 32) fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_localsyncupstate = 7"}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_3_275;
  v57[3] = &unk_2784FF910;
  v46 = a1;
  v57[4] = *(a1 + 40);
  v4 = [v3 enumerateObjects:v57];
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 asDocument];
        [v11 reIngestFromFileProvider];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v6);
  }

  v12 = [*(*(v46 + 40) + 200) fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci WHERE ci.item_localsyncupstate = 4 AND item_min_supported_os_rowid IS NULL AND NOT EXISTS (SELECT 1 FROM client_sync_up AS su WHERE su.throttle_id = ci.rowid AND su.throttle_state != 0)"}];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_4;
  v52[3] = &unk_2784FF910;
  v52[4] = *(v46 + 40);
  v43 = v12;
  v13 = [v12 enumerateObjects:v52];
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v54;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v53 + 1) + 8 * j);
        v20 = objc_autoreleasePoolPush();
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v64 = v19;
          v65 = 2112;
          v66 = v21;
          _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ is missing a sync up throttle%@", buf, 0x16u);
        }

        v23 = [v19 clientZone];
        v24 = [v23 dbRowID];
        [v19 markLatestSyncRequestFailedInZone:v24];

        if ([v19 isSharedToMeChildItem])
        {
          [v19 markLatestSyncRequestFailedInZone:&unk_2837B0490];
          [*(*(v46 + 40) + 624) scheduleSyncUpForSideCar];
          v16 = 1;
        }

        if ([v19 isSharedToMeTopLevelItem])
        {
          v25 = [v19 parentClientZone];
          v26 = [v25 dbRowID];
          [v19 markLatestSyncRequestFailedInZone:v26];
        }

        [v19 saveToDB];
        objc_autoreleasePoolPop(v20);
      }

      v15 = [v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v27 = [*(*(v46 + 40) + 200) fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci LEFT JOIN client_sync_up AS su ON su.throttle_id = ci.rowid AND su.zone_rowid = ci.zone_rowid LEFT JOIN client_uploads AS cu ON cu.throttle_id = ci.rowid AND cu.zone_rowid = ci.zone_rowid WHERE ci.item_localsyncupstate = 3 AND ci.item_localsyncupstate != 0 AND ci.item_type IN (1, 6) AND (IFNULL(cu.throttle_state, 0) = 0 OR (cu.throttle_state = 31 AND IFNULL(su.throttle_state, 0) = 0))"}];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_283;
  v47[3] = &unk_2784FF910;
  v47[4] = *(v46 + 40);
  v44 = v27;
  v28 = [v27 enumerateObjects:v47];
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v48 + 1) + 8 * k);
        v34 = objc_autoreleasePoolPush();
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v64 = v33;
          v65 = 2112;
          v66 = v35;
          _os_log_fault_impl(&dword_223E7A000, v36, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ has a corrupt upload throttle%@", buf, 0x16u);
        }

        v37 = [v33 asDocument];
        [v37 markNeedsReading];

        [v33 saveToDB];
        objc_autoreleasePoolPop(v34);
      }

      v30 = [v28 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v30);
  }

  if ((v16 & 1) == 0)
  {
    v38 = [*(*(v46 + 40) + 624) sideCarSyncPersistedState];
    v39 = [v38 needsSync];

    if ((v39 & 1) == 0)
    {
      v40 = [*(*(v46 + 40) + 200) numberWithSQL:{@"SELECT throttle_id FROM client_sync_up WHERE zone_rowid = %@ AND throttle_state != 0", &unk_2837B0490}];
      if ([v40 BOOLValue])
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_271_cold_1();
        }

        [*(*(v46 + 40) + 624) scheduleSyncUpForSideCar];
      }
    }
  }
}

id __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_3_275(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

id __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

id __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_283(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (void)_assertQOS:(unsigned int)s
{
  if (qos_class_self() != s)
  {
    [BRCAccountSession _assertQOS:];
  }
}

- (void)resumeIfNecessary
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_offline)
  {
    [(BRCAccountSession *)self _assertQOS:17];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_resumed)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = selfCopy;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ already resumed%@", buf, 0x16u);
    }

    objc_sync_exit(selfCopy);
    return;
  }

  selfCopy->_resumed = 1;
  objc_sync_exit(selfCopy);

  memset(v18, 0, sizeof(v18));
  __brc_create_section(1, "[BRCAccountSession resumeIfNecessary]", 2119, 0, v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v20 = v18[0];
    v21 = 2112;
    v22 = selfCopy;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ - Resuming session%@", buf, 0x20u);
  }

  [(BRCAnalyticsReporter *)selfCopy->_analyticsReporter registerBackgroundXPCActivities];
  [(BRCFairScheduler *)selfCopy->_fairClientDBScheduler resume];
  clientTruthWorkloop = selfCopy->_clientTruthWorkloop;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__BRCAccountSession_resumeIfNecessary__block_invoke;
  v17[3] = &unk_2784FF450;
  v17[4] = selfCopy;
  dispatch_async_and_wait(clientTruthWorkloop, v17);
  [(BRCDeadlineScheduler *)selfCopy->_defaultScheduler resume];
  if (!self->_offline)
  {
    [(BRCAccountSession *)selfCopy _fixupItemsAtStartup];
    dispatch_resume(selfCopy->_resetQueue);
    [(BRCFSUploader *)selfCopy->_fsUploader resume];
    [(BRCFSSchedulerBase *)selfCopy->_syncUpScheduler resume];
    v9 = +[BRCAccountsManager sharedManager];
    isInSyncBubble = [v9 isInSyncBubble];

    if ((isInSyncBubble & 1) == 0)
    {
      [(BRCFSDownloader *)selfCopy->_fsDownloader resume];
      [BRCRecentsEnumerator dropLegacyCoreSpotlightIndexIfNeededWithCompletionHandler:0];
      [(BRCRecentsEnumerator *)selfCopy->_recentsEnumerator resume];
    }
  }

  [(BRCFSImporter *)selfCopy->_fsImporter resume];
  if (!self->_offline)
  {
    [(BRCFSSchedulerBase *)selfCopy->_applyScheduler resume];
    [(BRCStageRegistry *)selfCopy->_stageRegistry resume];
    if (!self->_offline)
    {
      [(BRCContainerScheduler *)selfCopy->_containerScheduler resume];
    }
  }

  [(BRCFileUnlinker *)selfCopy->_fileUnlinker resume];
  v11 = +[BRCDaemon daemon];
  if (([v11 disableAppsChangesHandling] & 1) == 0)
  {
    v12 = +[BRCAccountsManager sharedManager];
    if ([v12 isInSyncBubble])
    {
    }

    else
    {
      offline = self->_offline;

      if (offline)
      {
        goto LABEL_21;
      }

      v11 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
      [v11 addObserver:selfCopy];
    }
  }

LABEL_21:
  if (!self->_offline)
  {
    [(BRCAccountSession *)selfCopy _registerBackgroundXPCActivities];
    [(BRCAccountSession *)selfCopy _cleanupOldCiconiaLocations];
    v14 = [BRCUserDefaults defaultsForMangledID:0];
    syncConsistencyCheckerSnapshotting = [v14 syncConsistencyCheckerSnapshotting];

    if (syncConsistencyCheckerSnapshotting)
    {
      mountPath = [(BRCVolume *)selfCopy->_volume mountPath];
      [BRCAnalyticsReporter cancelSyncConsistencyReportWithMountPath:mountPath queue:selfCopy->_resetQueue];
    }
  }

  [(BRCAccountSession *)selfCopy runDatabaseFixups];
  __brc_leave_section(v18);
}

- (void)waitForUploadsToCompleteInSyncBubbleWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[BRCAccountsManager sharedManager];
  isInSyncBubble = [v5 isInSyncBubble];

  if (isInSyncBubble)
  {
    appLibraries = [(BRCAccountSession *)self appLibraries];
    v8 = [[BRCUploadAllFilesTrackerOperation alloc] initWithSessionContext:self appLibraries:appLibraries];
    [(_BRCFrameworkOperation *)v8 setIgnoreMissingRemoteClientProxy:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__BRCAccountSession_waitForUploadsToCompleteInSyncBubbleWithReply___block_invoke;
    v10[3] = &unk_278503110;
    v11 = replyCopy;
    [(_BRCOperation *)v8 setFinishBlock:v10];
    [(BRCAccountSession *)self addMiscOperation:v8];
    [(_BRCOperation *)v8 schedule];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFABD0] code:122 userInfo:0];
    (*(replyCopy + 2))(replyCopy, v9);
  }
}

- (void)_invalidateAccountStatus
{
  obj = self;
  objc_sync_enter(obj);
  obj->_accountIsReady = 0;
  objc_sync_exit(obj);
}

void __41__BRCAccountSession_accountWaitOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    *(v2 + 520) = 1;
    v3 = *(v2 + 66);
    *(v2 + 66) = 0;

    objc_sync_exit(v2);
    WeakRetained = v4;
  }
}

- (id)fetchAccountWaitOperationWithAccountReady:(BOOL *)ready
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accountIsReady = selfCopy->_accountIsReady;
  if (ready)
  {
    *ready = accountIsReady;
    if (accountIsReady)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_6;
    }
  }

  else if (selfCopy->_accountIsReady)
  {
    goto LABEL_3;
  }

  v6 = selfCopy->_accountWaitOperation;
LABEL_6:
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)captureSessionOpenFailedInfoWithError:(id)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  br_accountSessionOpenErrorInfoPath = [MEMORY[0x277CCACA8] br_accountSessionOpenErrorInfoPath];
  v22 = @"Error";
  brc_errorAccountSessionOpenFailed = errorCopy;
  if (!errorCopy)
  {
    brc_errorAccountSessionOpenFailed = [MEMORY[0x277CCA9B8] brc_errorAccountSessionOpenFailed];
  }

  v23[0] = brc_errorAccountSessionOpenFailed;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  if (!errorCopy)
  {
  }

  v15 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v15];
  v8 = v15;
  if (!v7)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_fault_impl(&dword_223E7A000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Failed to encode session open failed info %@: %@%@", buf, 0x20u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager createFileAtPath:br_accountSessionOpenErrorInfoPath contents:v7 attributes:0];

  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v17 = br_accountSessionOpenErrorInfoPath;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v13;
      _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully created %@ - with data - %@%@", buf, 0x20u);
    }
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession captureSessionOpenFailedInfoWithError:];
    }
  }
}

- (void)captureDBCorruptionInfoWithDescription:(id)description error:(id)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  errorCopy = error;
  if (([errorCopy br_isCloudDocsErrorCode:99] & 1) == 0)
  {
    br_corruptedDBInfoPath = [MEMORY[0x277CCACA8] br_corruptedDBInfoPath];
    if ([errorCopy br_isCloudDocsErrorCode:100])
    {
      br_reimportDomainErrorInfoPath = [MEMORY[0x277CCACA8] br_reimportDomainErrorInfoPath];

      br_corruptedDBInfoPath = br_reimportDomainErrorInfoPath;
    }

    v26[0] = @"Description";
    v26[1] = @"Error";
    v27[0] = descriptionCopy;
    brc_errorCorruptedDB = errorCopy;
    if (!errorCopy)
    {
      brc_errorCorruptedDB = [MEMORY[0x277CCA9B8] brc_errorCorruptedDB];
    }

    v27[1] = brc_errorCorruptedDB;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    if (!errorCopy)
    {
    }

    v19 = 0;
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v19];
    v12 = v19;
    if (!v11)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v21 = v10;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_fault_impl(&dword_223E7A000, v14, OS_LOG_TYPE_FAULT, "[CRIT] Failed to encode corruption info %@: %@%@", buf, 0x20u);
      }
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [defaultManager createFileAtPath:br_corruptedDBInfoPath contents:v11 attributes:0];

    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v21 = br_corruptedDBInfoPath;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v17;
        _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully created %@ - with data - %@%@", buf, 0x20u);
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountSession captureSessionOpenFailedInfoWithError:];
      }
    }
  }
}

- (BOOL)isConsolidatedAccount
{
  v2 = [(BRCAccountSession *)self appLibraryByID:*MEMORY[0x277CFAD68]];
  wasMovedToCloudDocs = [v2 wasMovedToCloudDocs];

  return wasMovedToCloudDocs;
}

- (void)close
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)closeAndResetLocalStateWithDescription:(id)description error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  errorCopy = error;
  memset(v17, 0, sizeof(v17));
  __brc_create_section(1, "[BRCAccountSession closeAndResetLocalStateWithDescription:error:]", 2537, 0, v17);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v19 = v17[0];
    v20 = 2112;
    selfCopy = self;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %@ - Resetting local state%@", buf, 0x20u);
  }

  clientDB = self->_clientDB;
  v11 = self->_accountHandler;
  if (!self->_resumed)
  {
    resetQueue = self->_resetQueue;
    if (resetQueue)
    {
      dispatch_resume(resetQueue);
      v15 = self->_resetQueue;
    }

    else
    {
      v15 = 0;
    }

    self->_resetQueue = 0;

    if (!clientDB)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (clientDB)
  {
LABEL_12:
    [(BRCAccountSession *)self close];
    goto LABEL_13;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [BRCAccountSession closeAndResetLocalStateWithDescription:error:];
  }

LABEL_13:
  [(BRCAccountSession *)self stopDBWatcher];
  [(BRCAccountSession *)self captureDBCorruptionInfoWithDescription:descriptionCopy error:errorCopy];
  BRCRecursiveRemove(self->_cacheDirPath);
  BRCRecursiveRemoveBelow(self->_sessionDirPath);
  if (!clientDB)
  {
    [(BRCAccountSession *)self close];
  }

  self->_isCancelled = 0;
  accountHandler = self->_accountHandler;
  self->_accountHandler = v11;

  __brc_leave_section(v17);
}

- (void)_validatePersona
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  OUTLINED_FUNCTION_15_0(&dword_223E7A000, a3, v6, "[CRIT] %@%@", v7);
}

- (BOOL)_recursivelyPrepareFolderForLogOutAtURL:(id)l pruneEmptyFolders:(BOOL)folders pruneEmptyTopLevelFolder:(BOOL)folder maxDepth:(unint64_t)depth
{
  folderCopy = folder;
  foldersCopy = folders;
  v113[4] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v10 = lCopy;
  if (depth)
  {
    if (lCopy)
    {
      selfCopy = self;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [BRCUserDefaults defaultsForMangledID:0];
      maxRelativePathDepth = [v12 maxRelativePathDepth];

      v14 = *MEMORY[0x277CBE8A8];
      v83 = *MEMORY[0x277CBE868];
      v113[0] = *MEMORY[0x277CBE868];
      v113[1] = v14;
      v93 = v14;
      v15 = *MEMORY[0x277CBE8B0];
      v91 = *MEMORY[0x277CBE890];
      v113[2] = *MEMORY[0x277CBE890];
      v113[3] = v15;
      v94 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:4];
      v17 = 1;
      v18 = [defaultManager enumeratorAtURL:v10 includingPropertiesForKeys:v16 options:1 errorHandler:&__block_literal_global_309];

      v19 = [BRCUserDefaults defaultsForMangledID:0];
      uploadMaxFileSize = [v19 uploadMaxFileSize];
      uploadMaxPkgFileSize = [v19 uploadMaxPkgFileSize];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      obj = v18;
      v98 = [obj countByEnumeratingWithState:&v104 objects:v112 count:16];
      if (v98)
      {
        v78 = v19;
        v79 = folderCopy;
        v80 = defaultManager;
        v81 = v10;
        v87 = 2 * maxRelativePathDepth;
        v82 = depth - 1;
        v96 = 0;
        v97 = *v105;
        v20 = selfCopy;
        while (1)
        {
          for (i = 0; i != v98; ++i)
          {
            if (*v105 != v97)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v104 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            v23 = [BRCUserDefaults defaultsForMangledID:0];
            excludedFilenamesWorthPreserving = [v23 excludedFilenamesWorthPreserving];

            v25 = [BRCUserDefaults defaultsForMangledID:0];
            excludedExtensionsWorthPreserving = [v25 excludedExtensionsWorthPreserving];

            v27 = brc_bread_crumbs();
            v28 = brc_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v109 = v22;
              v110 = 2112;
              v111 = v27;
              _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] enumerate URL [%@]%@", buf, 0x16u);
            }

            if ([v22 br_isExternalDocumentReference])
            {
              v29 = brc_bread_crumbs();
              v30 = brc_default_log();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                path = [v22 path];
                *buf = 138412546;
                v109 = path;
                v110 = 2112;
                v111 = v29;
                _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] unlinking br security bookmark %@%@", buf, 0x16u);
              }

              fileUnlinker = v20->_fileUnlinker;
              path2 = [v22 path];
              [(BRCFileUnlinker *)fileUnlinker renameAndUnlinkInBackgroundItemAtPath:path2];

              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = 0;
              goto LABEL_57;
            }

            v103 = 0;
            v37 = [v22 getResourceValue:&v103 forKey:v94 error:0];
            v38 = v103;
            v36 = v38;
            if (v37 && [v38 BOOLValue])
            {
              v39 = brc_bread_crumbs();
              v40 = brc_default_log();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                path3 = [v22 path];
                *buf = 138412546;
                v109 = path3;
                v110 = 2112;
                v111 = v39;
                _os_log_debug_impl(&dword_223E7A000, v40, OS_LOG_TYPE_DEBUG, "[DEBUG] unlinking symlink %@%@", buf, 0x16u);
              }

              v41 = v20->_fileUnlinker;
              path4 = [v22 path];
              [(BRCFileUnlinker *)v41 renameAndUnlinkInBackgroundItemAtPath:path4];

              v33 = 0;
              v34 = 0;
              v35 = 0;
              goto LABEL_57;
            }

            path5 = [v22 path];
            v44 = [path5 br_isExcludedButPreservedAtLogOutWithFilenames:excludedFilenamesWorthPreserving extensions:excludedExtensionsWorthPreserving];

            if (v44)
            {
              v45 = brc_bread_crumbs();
              v46 = brc_default_log();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                path6 = [v22 path];
                *buf = 138412546;
                v109 = path6;
                v110 = 2112;
                v111 = v45;
                _os_log_debug_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] keeping preserved item %@%@", buf, 0x16u);
              }

              v33 = 0;
              v34 = 0;
              goto LABEL_23;
            }

            v102 = 0;
            v47 = [v22 getResourceValue:&v102 forKey:v93 error:0];
            v48 = v102;
            v33 = v48;
            if (v47 && ([v48 BOOLValue] & 1) != 0)
            {
              v34 = 0;
LABEL_29:
              path7 = [v22 path];
              bOOLValue = [v34 BOOLValue];
              if ([v34 BOOLValue])
              {
                v53 = uploadMaxPkgFileSize;
              }

              else
              {
                v53 = uploadMaxFileSize;
              }

              v54 = [path7 br_isDocumentTooLargeForUpload:bOOLValue maxUploadDocumentSize:v53];

              if (v54)
              {
                v45 = brc_bread_crumbs();
                v46 = brc_default_log();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  path8 = [v22 path];
                  *buf = 138412546;
                  v109 = path8;
                  v110 = 2112;
                  v111 = v45;
                  _os_log_debug_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] keeping item too large to upload %@%@", buf, 0x16u);
                }

LABEL_23:

                v35 = 0;
LABEL_56:
                ++v96;
                goto LABEL_57;
              }

              goto LABEL_35;
            }

            v101 = 0;
            v49 = [v22 getResourceValue:&v101 forKey:v91 error:0];
            v50 = v101;
            v34 = v50;
            if (v49 && [v50 BOOLValue])
            {
              goto LABEL_29;
            }

LABEL_35:
            if ([v33 BOOLValue] & 1) != 0 || (objc_msgSend(v34, "BOOLValue"))
            {
              v35 = 0;
LABEL_38:
              if (foldersCopy)
              {
                path9 = [v22 path];
                v57 = [path9 br_isExcludedWithMaximumDepth:v87];

                if (v57)
                {
                  v58 = brc_bread_crumbs();
                  v59 = brc_default_log();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                  {
                    [v22 path];
                    v60 = v84 = v58;
                    *buf = 138412546;
                    v109 = v60;
                    v110 = 2112;
                    v111 = v84;
                    v61 = v59;
                    v62 = "[DEBUG] unlinking excluded item %@%@";
                    goto LABEL_53;
                  }

                  goto LABEL_54;
                }

                lastPathComponent = [v22 lastPathComponent];
                v66 = [lastPathComponent isEqualToString:@".localized"];

                if (v66)
                {
                  v58 = brc_bread_crumbs();
                  v59 = brc_default_log();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                  {
                    [v22 path];
                    v60 = v84 = v58;
                    *buf = 138412546;
                    v109 = v60;
                    v110 = 2112;
                    v111 = v84;
                    v61 = v59;
                    v62 = "[DEBUG] unlinking .localized file %@%@";
                    goto LABEL_53;
                  }

                  goto LABEL_54;
                }

                lastPathComponent2 = [v22 lastPathComponent];
                br_pathExtension = [lastPathComponent2 br_pathExtension];
                v85 = [br_pathExtension isEqualToString:@"app"];

                if (v85)
                {
                  path10 = [v22 path];
                  v71 = BRCGetXattrValueForKeyOnPath(path10, @"com.apple.clouddocs.app-uploaded");

                  if (v71)
                  {
                    v58 = brc_bread_crumbs();
                    v59 = brc_default_log();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                    {
                      [v22 path];
                      v60 = v84 = v58;
                      *buf = 138412546;
                      v109 = v60;
                      v110 = 2112;
                      v111 = v84;
                      v61 = v59;
                      v62 = "[DEBUG] unlinking uploaded .app file %@%@";
LABEL_53:
                      _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, v62, buf, 0x16u);

                      v58 = v84;
                    }

LABEL_54:

                    v86 = selfCopy->_fileUnlinker;
                    path11 = [v22 path];
                    [(BRCFileUnlinker *)v86 renameAndUnlinkInBackgroundItemAtPath:path11];

                    v20 = selfCopy;
                    goto LABEL_57;
                  }
                }

                v20 = selfCopy;
              }

              goto LABEL_56;
            }

            v100 = 0;
            v63 = [v22 getResourceValue:&v100 forKey:v83 error:0];
            v64 = v100;
            v35 = v64;
            if (!v63 || ([v64 BOOLValue] & 1) == 0)
            {
              goto LABEL_38;
            }

            if (![(BRCAccountSession *)v20 _recursivelyPrepareFolderForLogOutAtURL:v22 pruneEmptyFolders:foldersCopy pruneEmptyTopLevelFolder:0 maxDepth:v82])
            {
              goto LABEL_56;
            }

LABEL_57:

            objc_autoreleasePoolPop(context);
          }

          v98 = [obj countByEnumeratingWithState:&v104 objects:v112 count:16];
          if (!v98)
          {
            v17 = v96 == 0;
            defaultManager = v80;
            v10 = v81;
            folderCopy = v79;
            v19 = v78;
            break;
          }
        }
      }

      if ((foldersCopy || folderCopy) && v17)
      {
        v75 = selfCopy->_fileUnlinker;
        path12 = [v10 path];
        [(BRCFileUnlinker *)v75 renameAndUnlinkInBackgroundItemAtPath:path12];
      }
    }

    else
    {
      obj = brc_bread_crumbs();
      defaultManager = brc_default_log();
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountSession _recursivelyPrepareFolderForLogOutAtURL:pruneEmptyFolders:pruneEmptyTopLevelFolder:maxDepth:];
      }

      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

uint64_t __113__BRCAccountSession__recursivelyPrepareFolderForLogOutAtURL_pruneEmptyFolders_pruneEmptyTopLevelFolder_maxDepth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, 0x90u))
  {
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Unable to enumerate URL [%@] with Error [%@]%@", &v9, 0x20u);
  }

  return 1;
}

- (void)_unlinkContainersWithRootURL:(id)l containers:(id)containers
{
  containersCopy = containers;
  lCopy = l;
  if (![(BRCAccountSession *)self isOpen])
  {
    [BRCAccountSession _unlinkContainersWithRootURL:containers:];
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _unlinkContainersWithRootURL:containers:];
  }

  array = [MEMORY[0x277CBEB18] array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__BRCAccountSession__unlinkContainersWithRootURL_containers___block_invoke;
  v12[3] = &unk_2784FFD58;
  v13 = array;
  v11 = array;
  [(BRCAccountSession *)self enumerateAppLibraries:v12];
  [(BRCAccountSession *)self _unlinkContainersWithPristineContainerIDs:v11 containersActualRoot:lCopy containers:containersCopy];
}

uint64_t __61__BRCAccountSession__unlinkContainersWithRootURL_containers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containerMetadata];
  if ([v3 isInInitialState])
  {
    v4 = *(a1 + 32);
    v5 = [v3 identifier];
    [v4 addObject:v5];
  }

  return 1;
}

- (void)destroyLocalData
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  __brc_create_section(0, "[BRCAccountSession destroyLocalData]", 2776, 0, v16);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v18 = v16[0];
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    v22 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx destroying local account data for %@%@", buf, 0x20u);
  }

  v5 = dispatch_group_create();
  v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INTERACTIVE, 0);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.bird.destroy-account-data", v7);

  v9 = os_transaction_create();
  [(BRCAccountSession *)self _validatePersona];
  v10 = self->_fileUnlinker;
  BRCRecursiveRemove(self->_cacheDirPath);
  cacheDirPath = self->_cacheDirPath;
  self->_cacheDirPath = 0;

  BRCRecursiveRemoveBelow(self->_sessionDirPath);
  sessionDirPath = self->_sessionDirPath;
  self->_sessionDirPath = 0;

  dispatch_group_async(v5, v8, &__block_literal_global_321);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__BRCAccountSession_destroyLocalData__block_invoke_322;
  v14[3] = &unk_2784FF450;
  v15 = v9;
  v13 = v9;
  dispatch_group_notify(v5, v8, v14);

  __brc_leave_section(v16);
}

void __37__BRCAccountSession_destroyLocalData__block_invoke()
{
  TCCAccessReset();
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __37__BRCAccountSession_destroyLocalData__block_invoke_cold_1();
  }
}

void __37__BRCAccountSession_destroyLocalData__block_invoke_322()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __37__BRCAccountSession_destroyLocalData__block_invoke_322_cold_1();
  }
}

- (void)_loadClientZonesFromDisk
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  __brc_create_section(0, "[BRCAccountSession _loadClientZonesFromDisk]_block_invoke", 2819, 0, &v45);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_cold_1();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [*(a1 + 32) _privateServerZonesEnumerator:v36];
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v6)
  {
    v7 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v50 = v9;
          v51 = 2112;
          v52 = v11;
          _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] loaded server zone: %@%@", buf, 0x16u);
        }

        [v9 setSession:*(a1 + 32)];
        v13 = *(a1 + 40);
        v14 = [v9 mangledID];
        [v13 setObject:v9 forKeyedSubscript:v14];

        v15 = *(a1 + 48);
        v16 = [v9 dbRowID];
        [v15 setObject:v9 forKeyedSubscript:v16];

        v17 = *(a1 + 56);
        v18 = [v9 dbRowID];
        [v17 addZoneRowID:v18];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v6);
  }

  __brc_leave_section(&v45);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  __brc_create_section(0, "[BRCAccountSession _loadClientZonesFromDisk]_block_invoke", 2830, 0, &v45);
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_cold_2();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = [*(a1 + 32) _sharedServerZonesEnumerator:v36];
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v22)
  {
    v23 = *v38;
    do
    {
      v24 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v37 + 1) + 8 * v24);
        v26 = objc_autoreleasePoolPush();
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v50 = v25;
          v51 = 2112;
          v52 = v27;
          _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] loaded server zone: %@%@", buf, 0x16u);
        }

        [v25 setSession:*(a1 + 32)];
        v29 = *(a1 + 40);
        v30 = [v25 mangledID];
        [v29 setObject:v25 forKeyedSubscript:v30];

        v31 = *(a1 + 48);
        v32 = [v25 dbRowID];
        [v31 setObject:v25 forKeyedSubscript:v32];

        v33 = *(a1 + 56);
        v34 = [v25 dbRowID];
        [v33 addZoneRowID:v34];

        objc_autoreleasePoolPop(v26);
        ++v24;
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v22);
  }

  __brc_leave_section(&v45);
  return 1;
}

uint64_t __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324(uint64_t a1, void *a2)
{
  v143 = *MEMORY[0x277D85DE8];
  v101 = a2;
  memset(v142, 0, sizeof(v142));
  __brc_create_section(0, "[BRCAccountSession _loadClientZonesFromDisk]_block_invoke", 2848, 0, v142);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324_cold_1();
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v5 = [*(a1 + 32) _privateClientZonesEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v131 objects:v141 count:16];
  if (v6)
  {
    context = *v132;
    v104 = *MEMORY[0x277CFABD0];
    obj = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v132 != context)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v131 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v8;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] loaded client zone: %@%@", buf, 0x16u);
        }

        [v8 setSession:*(a1 + 32)];
        [v8 setDelegate:*(*(a1 + 32) + 624)];
        v12 = *(a1 + 40);
        v13 = [v8 dbRowID];
        v14 = [v12 objectForKeyedSubscript:v13];

        if (v14)
        {
          if ([v14 isPrivateZone])
          {
            v15 = [v14 zoneName];
            v16 = [v8 zoneName];
            v17 = [v15 isEqual:v16];

            if (v17)
            {
              [v8 associateWithServerZone:v14 offline:*(*(a1 + 32) + 129)];
              goto LABEL_20;
            }
          }

          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            *&buf[22] = 2112;
            v140 = v18;
            _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: [client|server]zoneNames mismatch:  %@ does not match with %@%@", buf, 0x20u);
          }

          v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v104 code:77 userInfo:0];
          [*(a1 + 32) dbBecameCorruptedWithDescription:@"Zone names mistmatch" error:v20];
        }

        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v21;
          _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring client zone because it's missing a server zone%@", buf, 0xCu);
        }

        v23 = *(a1 + 48);
        v24 = [v8 dbRowID];
        [v23 addZoneRowID:v24];

        v14 = 0;
LABEL_20:

        objc_autoreleasePoolPop(v9);
      }

      v5 = obj;
      v6 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
    }

    while (v6);
  }

  __brc_leave_section(v142);
  memset(v142, 0, sizeof(v142));
  __brc_create_section(0, "[BRCAccountSession _loadClientZonesFromDisk]_block_invoke", 2874, 0, v142);
  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324_cold_2();
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v27 = [*(a1 + 32) _sharedClientZonesEnumerator];
  v28 = [v27 countByEnumeratingWithState:&v127 objects:v138 count:16];
  if (v28)
  {
    obja = *v128;
    v105 = *MEMORY[0x277CFABD0];
    v102 = v27;
    do
    {
      v29 = 0;
      contexta = v28;
      do
      {
        if (*v128 != obja)
        {
          objc_enumerationMutation(v102);
        }

        v30 = *(*(&v127 + 1) + 8 * v29);
        v31 = objc_autoreleasePoolPush();
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v30;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          _os_log_debug_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] loaded shared client zone: %@%@", buf, 0x16u);
        }

        [v30 setSession:*(a1 + 32)];
        [v30 setDelegate:*(*(a1 + 32) + 624)];
        v34 = *(a1 + 40);
        v35 = [v30 dbRowID];
        v36 = [v34 objectForKeyedSubscript:v35];

        if (v36)
        {
          if ([v36 isSharedZone])
          {
            v37 = [v36 zoneName];
            v38 = [v30 zoneName];
            if ([v37 isEqual:v38])
            {
              v39 = [v36 ownerName];
              v40 = [v30 ownerName];
              v41 = [v39 isEqual:v40];

              if (v41)
              {
                [v30 associateWithServerZone:v36 offline:*(*(a1 + 32) + 129)];
                goto LABEL_43;
              }
            }

            else
            {
            }
          }

          v42 = brc_bread_crumbs();
          v43 = brc_default_log();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *&buf[4] = v30;
            *&buf[12] = 2112;
            *&buf[14] = v36;
            *&buf[22] = 2112;
            v140 = v42;
            _os_log_fault_impl(&dword_223E7A000, v43, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: [client|server]zoneName or ownerss mismatch:  %@ does not match with %@%@", buf, 0x20u);
          }

          v44 = [MEMORY[0x277CCA9B8] errorWithDomain:v105 code:78 userInfo:0];
          [*(a1 + 32) dbBecameCorruptedWithDescription:@"Zone names or owners mismatch" error:v44];
        }

        v45 = brc_bread_crumbs();
        v46 = brc_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v45;
          _os_log_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring shared client zone because it's missing a server zone%@", buf, 0xCu);
        }

        v47 = *(a1 + 48);
        v48 = [v30 dbRowID];
        [v47 addZoneRowID:v48];

        v36 = 0;
LABEL_43:

        objc_autoreleasePoolPop(v31);
        v29 = v29 + 1;
      }

      while (contexta != v29);
      v27 = v102;
      v28 = [v102 countByEnumeratingWithState:&v127 objects:v138 count:16];
    }

    while (v28);
  }

  __brc_leave_section(v142);
  memset(buf, 0, sizeof(buf));
  __brc_create_section(0, "[BRCAccountSession _loadClientZonesFromDisk]_block_invoke", 2902, 0, buf);
  v49 = brc_bread_crumbs();
  v50 = brc_default_log();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession _loadClientZonesFromDisk];
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v51 = [*(a1 + 32) _appLibrariesEnumerator:v101];
  v52 = [v51 countByEnumeratingWithState:&v123 objects:v137 count:16];
  if (v52)
  {
    v53 = *v124;
    contextb = v51;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v124 != v53)
        {
          objc_enumerationMutation(contextb);
        }

        v55 = *(*(&v123 + 1) + 8 * j);
        v56 = objc_autoreleasePoolPush();
        v57 = brc_bread_crumbs();
        v58 = brc_default_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *v142 = 138412546;
          *&v142[4] = v55;
          *&v142[12] = 2112;
          *&v142[14] = v57;
          _os_log_debug_impl(&dword_223E7A000, v58, OS_LOG_TYPE_DEBUG, "[DEBUG] loaded app library: %@%@", v142, 0x16u);
        }

        v59 = *(a1 + 40);
        v60 = [v55 zoneRowID];
        v61 = [v59 objectForKeyedSubscript:v60];
        v62 = [v61 clientZone];
        v63 = [v62 asPrivateClientZone];

        if (v63)
        {
          [v55 associateWithClientZone:v63 offline:*(*(a1 + 32) + 129)];
          v64 = [v55 appLibraryID];
          if ([v55 wasMovedToCloudDocs])
          {
            if ([v63 isCloudDocsZone])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v66 = [v63 zoneName];
            v67 = [v66 isEqualToString:v64];

            if (v67)
            {
LABEL_65:
              if ((*(*(a1 + 32) + 129) & 1) == 0 && [v55 containerMetadataNeedsSyncUp])
              {
                [v55 scheduleContainerMetadataSyncUp];
              }

              goto LABEL_68;
            }
          }

          v68 = brc_bread_crumbs();
          v69 = brc_default_log();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
          {
            *v142 = 138412290;
            *&v142[4] = v68;
            _os_log_fault_impl(&dword_223E7A000, v69, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: appLibrary.wasMovedToCloudDocs ? clientZone.isCloudDocsZone : [clientZone.zoneName isEqualToString:appLibraryID]%@", v142, 0xCu);
          }

          goto LABEL_65;
        }

        v64 = brc_bread_crumbs();
        v65 = brc_default_log();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          *v142 = 138412290;
          *&v142[4] = v64;
          _os_log_debug_impl(&dword_223E7A000, v65, OS_LOG_TYPE_DEBUG, "[DEBUG] ignoring app library because it's missing a client zone%@", v142, 0xCu);
        }

LABEL_68:
        objc_autoreleasePoolPop(v56);
      }

      v51 = contextb;
      v52 = [contextb countByEnumeratingWithState:&v123 objects:v137 count:16];
    }

    while (v52);
  }

  __brc_leave_section(buf);
  brc_mutex_lock((*(a1 + 32) + 248));
  memset(buf, 0, sizeof(buf));
  __brc_create_section(0, "[BRCAccountSession _loadClientZonesFromDisk]_block_invoke", 2925, 0, buf);
  v70 = brc_bread_crumbs();
  v71 = brc_default_log();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324_cold_4();
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v72 = [*(a1 + 56) allValues];
  v73 = [v72 countByEnumeratingWithState:&v119 objects:v136 count:16];
  if (v73)
  {
    v106 = *v120;
    v103 = v72;
    do
    {
      objb = v73;
      for (k = 0; k != objb; ++k)
      {
        if (*v120 != v106)
        {
          objc_enumerationMutation(v103);
        }

        v75 = *(*(&v119 + 1) + 8 * k);
        contextc = objc_autoreleasePoolPush();
        v76 = [v75 clientZone];
        if (!v76)
        {
LABEL_80:
          v80 = brc_bread_crumbs();
          v81 = brc_default_log();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *v142 = 138412546;
            *&v142[4] = v75;
            *&v142[12] = 2112;
            *&v142[14] = v80;
            _os_log_impl(&dword_223E7A000, v81, OS_LOG_TYPE_DEFAULT, "[WARNING] dropping %@ because it's missing its client zone or app library%@", v142, 0x16u);
          }

          goto LABEL_96;
        }

        if ([v75 isPrivateZone])
        {
          v77 = [v75 clientZone];
          v78 = [v77 asPrivateClientZone];
          v79 = [v78 hasDefaultAppLibrary];

          if ((v79 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else
        {
        }

        v80 = [v75 clientZone];
        if ((*(*(a1 + 32) + 129) & 1) == 0)
        {
          v82 = brc_bread_crumbs();
          v83 = brc_default_log();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *v142 = 138412546;
            *&v142[4] = v80;
            *&v142[12] = 2112;
            *&v142[14] = v82;
            _os_log_debug_impl(&dword_223E7A000, v83, OS_LOG_TYPE_DEBUG, "[DEBUG] activating %@%@", v142, 0x16u);
          }

          [v80 resume];
        }

        v84 = *(a1 + 48);
        v85 = [v75 dbRowID];
        [v84 removeZoneRowID:v85];

        v86 = *(*(a1 + 32) + 400);
        v87 = [v75 dbRowID];
        [v86 setObject:v75 forKeyedSubscript:v87];

        if ([v75 isSharedZone])
        {
          v81 = [v75 mangledID];
          [*(*(a1 + 32) + 408) setObject:v75 forKeyedSubscript:v81];
          [*(*(a1 + 32) + 416) setObject:v80 forKeyedSubscript:v81];
        }

        else
        {
          v88 = *(*(a1 + 32) + 424);
          v89 = [v75 zoneName];
          [v88 setObject:v75 forKeyedSubscript:v89];

          v90 = *(*(a1 + 32) + 432);
          v91 = [v80 zoneName];
          [v90 setObject:v80 forKeyedSubscript:v91];

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v92 = [v80 asPrivateClientZone];
          v81 = [v92 appLibraries];

          v93 = [v81 countByEnumeratingWithState:&v115 objects:v135 count:16];
          if (v93)
          {
            v94 = *v116;
            do
            {
              for (m = 0; m != v93; ++m)
              {
                if (*v116 != v94)
                {
                  objc_enumerationMutation(v81);
                }

                v96 = *(*(&v115 + 1) + 8 * m);
                v97 = *(*(a1 + 32) + 392);
                v98 = [v96 dbRowID];
                [v97 setObject:v96 forKeyedSubscript:v98];
              }

              v93 = [v81 countByEnumeratingWithState:&v115 objects:v135 count:16];
            }

            while (v93);
          }
        }

LABEL_96:

        objc_autoreleasePoolPop(contextc);
      }

      v72 = v103;
      v73 = [v103 countByEnumeratingWithState:&v119 objects:v136 count:16];
    }

    while (v73);
  }

  __brc_leave_section(buf);
  v99 = *(a1 + 32);
  if ((v99[129] & 1) == 0)
  {
    [v99 enumerateAppLibraries:&__block_literal_global_333];
    v99 = *(a1 + 32);
  }

  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_334;
  v114[3] = &unk_2785060F0;
  v114[4] = v99;
  [v99 _enumerateAppLibraryRowIDs:v101 usingBlock:v114];
  brc_mutex_unlock((*(a1 + 32) + 248));

  return 1;
}

uint64_t __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_331(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_331_cold_1();
  }

  [v2 activate];
  return 1;
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_334(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CFAE60];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithAppLibraryName:v7];

  [*(*(a1 + 32) + 384) setObject:v6 forKeyedSubscript:v8];
}

- (void)_handleUnloadedZones:(id)zones
{
  v17 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  if ([zonesCopy count])
  {
    v5 = [BRCUserDefaults defaultsForMangledID:0];
    handleUnloadedZones = [v5 handleUnloadedZones];

    if (handleUnloadedZones)
    {
      clientTruthWorkloop = self->_clientTruthWorkloop;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__BRCAccountSession__handleUnloadedZones___block_invoke;
      v10[3] = &unk_2784FF478;
      v11 = zonesCopy;
      selfCopy = self;
      dispatch_async(clientTruthWorkloop, v10);
      v8 = v11;
    }

    else
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = zonesCopy;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] We found %@ unloaded zones, but handling logic is disabled by user defaults%@", buf, 0x16u);
      }
    }
  }
}

uint64_t __42__BRCAccountSession__handleUnloadedZones___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__BRCAccountSession__handleUnloadedZones___block_invoke_2;
  v3[3] = &unk_278502B38;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateIndexesUsingBlock:v3];
}

void __42__BRCAccountSession__handleUnloadedZones___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a2;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Checking if unloaded zone %lu is being referenced by a client item%@", buf, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 200) numberWithSQL:{@"SELECT 1 FROM client_items WHERE zone_rowid = %lu LIMIT 1", a2}];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __42__BRCAccountSession__handleUnloadedZones___block_invoke_2_cold_1();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFABD0] code:142 userInfo:0];
    [*(a1 + 32) dbBecameCorruptedWithDescription:@"Unloaded zone is referenced by item" error:v12];
    *a3 = 1;
  }
}

- (id)_unloadClientZones
{
  v3 = self->_clientDB;
  serialQueue = [(BRCPQLConnection *)v3 serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [(BRCPQLConnection *)v3 serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);
  }

  v6 = self->_serverDB;
  serialQueue3 = [(BRCPQLConnection *)v6 serialQueue];

  if (serialQueue3)
  {
    serialQueue4 = [(BRCPQLConnection *)v6 serialQueue];
    dispatch_assert_queue_not_V2(serialQueue4);
  }

  brc_mutex_lock(&self->_zonesCreationLock.pthread);
  brc_mutex_lock(&self->_zonesLock.pthread);
  allValues = [(NSMutableDictionary *)self->_privateClientZonesByID allValues];
  v10 = [allValues copy];

  allValues2 = [(NSMutableDictionary *)self->_sharedClientZonesByMangledID allValues];
  v12 = [v10 arrayByAddingObjectsFromArray:allValues2];

  libraryRowIDsByMangledID = self->_libraryRowIDsByMangledID;
  self->_libraryRowIDsByMangledID = 0;

  appLibrariesByRowID = self->_appLibrariesByRowID;
  self->_appLibrariesByRowID = 0;

  serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
  self->_serverZonesByZoneRowID = 0;

  sharedServerZonesByMangledID = self->_sharedServerZonesByMangledID;
  self->_sharedServerZonesByMangledID = 0;

  privateServerZonesByID = self->_privateServerZonesByID;
  self->_privateServerZonesByID = 0;

  sharedClientZonesByMangledID = self->_sharedClientZonesByMangledID;
  self->_sharedClientZonesByMangledID = 0;

  privateClientZonesByID = self->_privateClientZonesByID;
  self->_privateClientZonesByID = 0;

  brc_mutex_unlock(&self->_zonesLock.pthread);
  brc_mutex_unlock(&self->_zonesCreationLock.pthread);

  return v12;
}

- (id)sharedServerZoneRowIDsByOwnerNamePrefix:(id)prefix
{
  v21 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v5 = objc_opt_new();
  [(BRCAccountSession *)self _mutexZonesLock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_sharedServerZonesByMangledID objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        ownerName = [v11 ownerName];
        v13 = [ownerName hasPrefix:prefixCopy];

        if (v13)
        {
          dbRowID = [v11 dbRowID];
          [v5 addObject:dbRowID];
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  brc_mutex_unlock(&self->_zonesLock.pthread);

  return v5;
}

- (id)serverZoneByMangledID:(id)d
{
  dCopy = d;
  [(BRCAccountSession *)self _mutexZonesLock];
  if ([dCopy isShared])
  {
    v5 = [(NSMutableDictionary *)self->_sharedClientZonesByMangledID objectForKeyedSubscript:dCopy];
  }

  else
  {
    privateClientZonesByID = self->_privateClientZonesByID;
    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];

    v5 = [(NSMutableDictionary *)privateClientZonesByID objectForKeyedSubscript:appLibraryOrZoneName];
    dCopy = appLibraryOrZoneName;
  }

  brc_mutex_unlock(&self->_zonesLock.pthread);
  serverZone = [v5 serverZone];

  return serverZone;
}

- (id)serverZoneByCKZoneID:(id)d
{
  v4 = MEMORY[0x277CFAE60];
  dCopy = d;
  v6 = [[v4 alloc] initWithRecordZoneID:dCopy];

  v7 = [(BRCAccountSession *)self serverZoneByMangledID:v6];

  return v7;
}

- (id)serverZoneByName:(id)name ownerName:(id)ownerName
{
  v6 = MEMORY[0x277CFAE60];
  ownerNameCopy = ownerName;
  nameCopy = name;
  v9 = [[v6 alloc] initWithZoneName:nameCopy ownerName:ownerNameCopy];

  v10 = [(BRCAccountSession *)self serverZoneByMangledID:v9];

  return v10;
}

- (id)serverZoneByRowID:(id)d
{
  if (d)
  {
    dCopy = d;
    [(BRCAccountSession *)self _mutexZonesLock];
    v5 = [(NSMutableDictionary *)self->_serverZonesByZoneRowID objectForKeyedSubscript:dCopy];

    brc_mutex_unlock(&self->_zonesLock.pthread);
    if (!v5)
    {
      [BRCAccountSession serverZoneByRowID:];
    }

    clientZone = [v5 clientZone];

    if (!clientZone)
    {
      [BRCAccountSession serverZoneByRowID:];
    }

    clientZone2 = [v5 clientZone];
    if (clientZone2)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)clientZoneByMangledID:(id)d
{
  dCopy = d;
  if ([dCopy isShared])
  {
    defaultClientZone = [(BRCAccountSession *)self sharedClientZoneByMangledID:dCopy];
  }

  else
  {
    v6 = [(BRCAccountSession *)self appLibraryByMangledID:dCopy];

    defaultClientZone = [v6 defaultClientZone];
    dCopy = v6;
  }

  return defaultClientZone;
}

- (void)enumerateServerZones:(id)zones
{
  v21 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_serverZonesByZoneRowID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        clientZone = [v11 clientZone];
        if (clientZone)
        {
          v14 = clientZone;
          v15 = zonesCopy[2](zonesCopy, v11);

          if ((v15 & 1) == 0)
          {
            objc_autoreleasePoolPop(v12);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)enumerateAppLibraries:(id)libraries
{
  v18 = *MEMORY[0x277D85DE8];
  librariesCopy = libraries;
  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_appLibrariesByRowID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      LODWORD(v11) = librariesCopy[2](librariesCopy, v11);
      objc_autoreleasePoolPop(v12);
      if (!v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateContainersWithDBFacade:(id)facade handler:(id)handler
{
  facadeCopy = facade;
  handlerCopy = handler;
  memset(v15, 0, sizeof(v15));
  __brc_create_section(0, "[BRCAccountSession enumerateContainersWithDBFacade:handler:]", 3137, 0, v15);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession enumerateContainersWithDBFacade:handler:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__BRCAccountSession_enumerateContainersWithDBFacade_handler___block_invoke;
  v12[3] = &unk_278506118;
  v10 = facadeCopy;
  v13 = v10;
  v11 = handlerCopy;
  v14 = v11;
  [(BRCAccountSession *)self enumerateAppLibraries:v12];

  __brc_leave_section(v15);
}

uint64_t __61__BRCAccountSession_enumerateContainersWithDBFacade_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containerMetadata];
  v5 = [v3 fetchRootItemWithFacade:*(a1 + 32)];

  v6 = [BRCNotification notificationFromItem:v5];
  v7 = [MEMORY[0x277CFAE98] containerItemForContainer:v4 withRepresentativeItem:v6];
  (*(*(a1 + 40) + 16))();

  return 1;
}

- (id)appLibraries
{
  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_appLibrariesByRowID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);

  return allValues;
}

- (id)fallbackAppLibraryForClientZone:(id)zone extension:(id)extension
{
  zoneCopy = zone;
  extensionCopy = extension;
  zoneName = [zoneCopy zoneName];
  v9 = [zoneName isEqualToString:*MEMORY[0x277CFAB80]];

  if (v9)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentPersona = [mEMORY[0x277D77BF8] currentPersona];
    isEnterprisePersona = [currentPersona isEnterprisePersona];

    if (isEnterprisePersona)
    {
      v13 = [(BRCAccountSession *)self appLibraryByID:*MEMORY[0x277CFAD68]];
    }

    else
    {
      zoneName2 = [zoneCopy zoneName];
      v13 = [(BRCAccountSession *)self appLibraryByID:zoneName2];
    }
  }

  else
  {
    v13 = 0;
  }

  zoneName3 = [zoneCopy zoneName];
  v16 = [zoneName3 isEqualToString:*MEMORY[0x277CFABA0]];

  if (v16)
  {
    zoneName4 = [zoneCopy zoneName];
    v18 = [(BRCAccountSession *)self appLibraryByID:zoneName4];

    v13 = v18;
  }

  if (v13)
  {
    v19 = v13;
    v20 = v19;
    goto LABEL_21;
  }

  mangledID = [zoneCopy mangledID];
  v22 = [BRCUserDefaults defaultsForMangledID:mangledID];
  iworkShareableExtensions = [v22 iworkShareableExtensions];

  if (![iworkShareableExtensions containsObject:extensionCopy])
  {
    goto LABEL_19;
  }

  if ([extensionCopy containsString:@"pages"])
  {
    v24 = MEMORY[0x277CFAB98];
  }

  else if ([extensionCopy containsString:@"key"])
  {
    v24 = MEMORY[0x277CFAB88];
  }

  else
  {
    if (![extensionCopy containsString:@"numbers"])
    {
LABEL_19:
      v20 = [(BRCAccountSession *)self appLibraryByID:*MEMORY[0x277CFAD68]];
      v19 = 0;
      goto LABEL_20;
    }

    v24 = MEMORY[0x277CFAB90];
  }

  v25 = [(BRCAccountSession *)self appLibraryByID:*v24];
  if (!v25)
  {
    goto LABEL_19;
  }

  v19 = v25;
  v20 = v19;
LABEL_20:

LABEL_21:

  return v20;
}

- (id)privateServerZoneByID:(id)d
{
  dCopy = d;
  [(BRCAccountSession *)self _mutexZonesLock];
  v5 = [(NSMutableDictionary *)self->_privateServerZonesByID objectForKeyedSubscript:dCopy];

  brc_mutex_unlock(&self->_zonesLock.pthread);
  clientZone = [v5 clientZone];
  if (clientZone)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)enumeratePrivateServerZones:(id)zones
{
  v18 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  if (!zonesCopy)
  {
    [BRCAccountSession enumeratePrivateServerZones:];
  }

  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_privateServerZonesByID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      LODWORD(v11) = zonesCopy[2](zonesCopy, v11);
      objc_autoreleasePoolPop(v12);
      if (!v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (id)privateClientZoneByID:(id)d
{
  dCopy = d;
  [(BRCAccountSession *)self _mutexZonesLock];
  v5 = [(NSMutableDictionary *)self->_privateClientZonesByID objectForKeyedSubscript:dCopy];

  brc_mutex_unlock(&self->_zonesLock.pthread);
  serverZone = [v5 serverZone];
  if (serverZone)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)enumerateClientZones:(id)zones
{
  v26 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  if (!zonesCopy)
  {
    [BRCAccountSession enumerateClientZones:];
  }

  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_serverZonesByZoneRowID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = allValues;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      clientZone = [v10 clientZone];
      if (!clientZone)
      {
        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v22 = v10;
          v23 = 2112;
          v24 = v13;
          _os_log_fault_impl(&dword_223E7A000, v14, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: missing client zone for %@%@", buf, 0x16u);
        }
      }

      v15 = zonesCopy[2](zonesCopy, clientZone);

      objc_autoreleasePoolPop(v11);
      if (!v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (id)clientZones
{
  v18 = *MEMORY[0x277D85DE8];
  [(BRCAccountSession *)self _mutexZonesLock];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](self->_serverZonesByZoneRowID, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_serverZonesByZoneRowID objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        clientZone = [v9 clientZone];
        [v3 addObject:clientZone];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  brc_mutex_unlock(&self->_zonesLock.pthread);

  return v3;
}

- (void)enumeratePrivateClientZones:(id)zones
{
  v18 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  if (!zonesCopy)
  {
    [BRCAccountSession enumeratePrivateClientZones:];
  }

  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_privateClientZonesByID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      LODWORD(v11) = zonesCopy[2](zonesCopy, v11);
      objc_autoreleasePoolPop(v12);
      if (!v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (id)sharedServerZoneByMangledID:(id)d
{
  dCopy = d;
  [(BRCAccountSession *)self _mutexZonesLock];
  v5 = [(NSMutableDictionary *)self->_sharedServerZonesByMangledID objectForKeyedSubscript:dCopy];

  brc_mutex_unlock(&self->_zonesLock.pthread);
  clientZone = [v5 clientZone];
  if (clientZone)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)sharedClientZoneByMangledID:(id)d
{
  dCopy = d;
  [(BRCAccountSession *)self _mutexZonesLock];
  v5 = [(NSMutableDictionary *)self->_sharedClientZonesByMangledID objectForKeyedSubscript:dCopy];

  brc_mutex_unlock(&self->_zonesLock.pthread);
  serverZone = [v5 serverZone];
  if (serverZone)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)enumerateSharedClientZones:(id)zones
{
  v21 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  if (!zonesCopy)
  {
    [BRCAccountSession enumerateSharedClientZones:];
  }

  [(BRCAccountSession *)self _mutexZonesLock];
  allValues = [(NSMutableDictionary *)self->_sharedClientZonesByMangledID allValues];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        serverZone = [v11 serverZone];
        if (serverZone)
        {
          v14 = serverZone;
          v15 = zonesCopy[2](zonesCopy, v11);

          if ((v15 & 1) == 0)
          {
            objc_autoreleasePoolPop(v12);
            goto LABEL_14;
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)performBlock:(id)block whileRemovingPrivateClientZone:(id)zone
{
  blockCopy = block;
  zoneCopy = zone;
  if (!self->_isCancelled)
  {
    serialQueue = [(BRCPQLConnection *)self->_clientDB serialQueue];
    dispatch_assert_queue_not_V2(serialQueue);

    dispatch_assert_queue_not_V2(self->_clientTruthWorkloop);
    serialQueue2 = [(BRCPQLConnection *)self->_serverDB serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);

    dispatch_assert_queue_not_V2(self->_serverTruthWorkloop);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BRCAccountSession *)zoneCopy performBlock:v10 whileRemovingPrivateClientZone:v11];
    }

    brc_mutex_lock(&self->_zonesCreationLock.pthread);
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    [(BRCAccountSession *)self _mutexZonesLock];
    privateClientZonesByID = self->_privateClientZonesByID;
    zoneName = [zoneCopy zoneName];
    [(NSMutableDictionary *)privateClientZonesByID removeObjectForKey:zoneName];

    serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
    dbRowID = [zoneCopy dbRowID];
    [(NSMutableDictionary *)serverZonesByZoneRowID removeObjectForKey:dbRowID];

    brc_mutex_unlock(&self->_zonesLock.pthread);
    brc_mutex_unlock(&self->_zonesCreationLock.pthread);
    [zoneCopy close];
  }
}

- (void)destroySharedClientZone:(id)zone
{
  zoneCopy = zone;
  v5 = zoneCopy;
  if (!self->_isCancelled)
  {
    if (([zoneCopy state] & 0x100) == 0)
    {
      [BRCAccountSession destroySharedClientZone:];
    }

    if (([v5 state] & 0x20000) == 0)
    {
      [BRCAccountSession destroySharedClientZone:];
    }

    serialQueue = [(BRCPQLConnection *)self->_clientDB serialQueue];
    dispatch_assert_queue_not_V2(serialQueue);

    dispatch_assert_queue_not_V2(self->_clientTruthWorkloop);
    serialQueue2 = [(BRCPQLConnection *)self->_serverDB serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);

    dispatch_assert_queue_not_V2(self->_serverTruthWorkloop);
    serverZone = [v5 serverZone];
    mangledID = [v5 mangledID];
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession destroySharedClientZone:];
    }

    brc_mutex_lock(&self->_zonesCreationLock.pthread);
    [(BRCAccountSession *)self _mutexZonesLock];
    [(NSMutableDictionary *)self->_sharedClientZonesByMangledID removeObjectForKey:mangledID];
    [(NSMutableDictionary *)self->_sharedServerZonesByMangledID removeObjectForKey:mangledID];
    serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
    dbRowID = [v5 dbRowID];
    [(NSMutableDictionary *)serverZonesByZoneRowID removeObjectForKey:dbRowID];

    brc_mutex_unlock(&self->_zonesLock.pthread);
    clientDB = self->_clientDB;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__BRCAccountSession_destroySharedClientZone___block_invoke;
    v28[3] = &unk_278503250;
    v15 = mangledID;
    v29 = v15;
    selfCopy = self;
    v16 = v5;
    v31 = v16;
    [(BRCPQLConnection *)clientDB performWithFlags:27 action:v28];
    serverDB = self->_serverDB;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __45__BRCAccountSession_destroySharedClientZone___block_invoke_356;
    v24 = &unk_278503250;
    v18 = v15;
    v25 = v18;
    selfCopy2 = self;
    v19 = serverZone;
    v27 = v19;
    [(BRCPQLConnection *)serverDB performWithFlags:11 action:&v21];

    brc_mutex_unlock(&self->_zonesCreationLock.pthread);
    [v16 close];
    v20 = [BRCUserDefaults defaultsForMangledID:0];
    LODWORD(v15) = [v20 sessionZombiesEnabled];

    if (v15)
    {
      [MEMORY[0x277CFAF10] turnObjectIntoZombie:v19];
      [MEMORY[0x277CFAF10] turnObjectIntoZombie:v16];
    }
  }
}

uint64_t __45__BRCAccountSession_destroySharedClientZone___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession_destroySharedClientZone___block_invoke_cold_1();
  }

  return [*(a1 + 40) _deleteClientZone:*(a1 + 48)];
}

uint64_t __45__BRCAccountSession_destroySharedClientZone___block_invoke_356(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __45__BRCAccountSession_destroySharedClientZone___block_invoke_356_cold_1();
  }

  return [*(a1 + 40) deleteServerZone:*(a1 + 48)];
}

- (id)appLibraryByRowID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    [BRCAccountSession appLibraryByRowID:];
  }

  [(BRCAccountSession *)self _mutexZonesLock];
  v5 = [(NSMutableDictionary *)self->_appLibrariesByRowID objectForKeyedSubscript:dCopy];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  if (!v5)
  {
    if ([(BRCAccountSession *)self isCancelled])
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find app library in the middle of closing%@", &v9, 0xCu);
      }
    }

    else
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(BRCAccountSession *)dCopy appLibraryByRowID:v6, v7];
      }
    }
  }

  return v5;
}

- (id)appLibraryByMangledID:(id)d
{
  dCopy = d;
  [(BRCAccountSession *)self _mutexZonesLock];
  v5 = [(NSMutableDictionary *)self->_libraryRowIDsByMangledID objectForKeyedSubscript:dCopy];

  v6 = [(NSMutableDictionary *)self->_appLibrariesByRowID objectForKeyedSubscript:v5];
  brc_mutex_unlock(&self->_zonesLock.pthread);

  return v6;
}

- (id)appLibraryByID:(id)d
{
  v4 = MEMORY[0x277CFAE60];
  dCopy = d;
  v6 = [[v4 alloc] initWithAppLibraryName:dCopy];

  v7 = [(BRCAccountSession *)self appLibraryByMangledID:v6];

  return v7;
}

- (id)__getOrCreateServerZone:(id)zone
{
  zoneCopy = zone;
  [(BRCPQLConnection *)self->_serverDB assertOnQueue];
  isShared = [zoneCopy isShared];
  appLibraryOrZoneName = [zoneCopy appLibraryOrZoneName];
  [(BRCAccountSession *)self _mutexZonesLock];
  if (isShared)
  {
    v7 = [(NSMutableDictionary *)self->_sharedServerZonesByMangledID objectForKeyedSubscript:zoneCopy];
    brc_mutex_unlock(&self->_zonesLock.pthread);
    if (!v7)
    {
      v8 = off_2784FDCC8;
      goto LABEL_9;
    }

LABEL_5:
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession __getOrCreateServerZone:];
    }

    goto LABEL_14;
  }

  v7 = [(NSMutableDictionary *)self->_privateServerZonesByID objectForKeyedSubscript:appLibraryOrZoneName];
  brc_mutex_unlock(&self->_zonesLock.pthread);
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = off_2784FDC28;
LABEL_9:
  v7 = [objc_alloc(*v8) initWithMangledID:zoneCopy dbRowID:0 plist:0 session:self];
  if ([(BRCAccountSession *)self createServerZone:v7])
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession __getOrCreateServerZone:];
    }

    dbRowID = [v7 dbRowID];

    if (!dbRowID)
    {
      [BRCAccountSession __getOrCreateServerZone:];
    }

LABEL_14:
    v7 = v7;
    v14 = v7;
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)__getOrCreateClientZone:(id)zone withServerZone:(id)serverZone alreadyExists:(BOOL *)exists
{
  zoneCopy = zone;
  serverZoneCopy = serverZone;
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  isShared = [zoneCopy isShared];
  appLibraryOrZoneName = [zoneCopy appLibraryOrZoneName];
  if (exists)
  {
    *exists = 0;
  }

  [(BRCAccountSession *)self _mutexZonesLock];
  if (isShared)
  {
    v12 = [(NSMutableDictionary *)self->_sharedClientZonesByMangledID objectForKeyedSubscript:zoneCopy];
    brc_mutex_unlock(&self->_zonesLock.pthread);
    if (!v12)
    {
      v13 = off_2784FDCA8;
LABEL_12:
      v16 = objc_alloc(*v13);
      dbRowID = [serverZoneCopy dbRowID];
      v12 = [v16 initWithMangledID:zoneCopy dbRowID:dbRowID plist:0 session:self initialCreation:1];

      if (![(BRCAccountSession *)self _createClientZone:v12])
      {

        v12 = 0;
      }

      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountSession __getOrCreateClientZone:withServerZone:alreadyExists:];
      }

      if (v12)
      {
        [v12 setDelegate:self->_containerScheduler];
        [v12 associateWithServerZone:serverZoneCopy];
        dbRowID2 = [v12 dbRowID];
        dbRowID3 = [serverZoneCopy dbRowID];
        v22 = [dbRowID2 br_isEqualToNumber:dbRowID3];

        if ((v22 & 1) == 0)
        {
          [BRCAccountSession __getOrCreateClientZone:withServerZone:alreadyExists:];
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_privateClientZonesByID objectForKeyedSubscript:appLibraryOrZoneName];
    brc_mutex_unlock(&self->_zonesLock.pthread);
    if (!v12)
    {
      v13 = off_2784FDC20;
      goto LABEL_12;
    }
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountSession __getOrCreateClientZone:withServerZone:alreadyExists:];
  }

  if (exists)
  {
    *exists = 1;
  }

LABEL_19:
  v23 = v12;

  return v23;
}

- (id)__getOrCreateAppLibrary:(id)library rowID:(id)d alreadyExists:(BOOL *)exists withClientZone:(id)zone createCZMMoved:(BOOL)moved
{
  libraryCopy = library;
  dCopy = d;
  zoneCopy = zone;
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  if (!dCopy)
  {
    [BRCAccountSession __getOrCreateAppLibrary:rowID:alreadyExists:withClientZone:createCZMMoved:];
  }

  appLibraryOrZoneName = [libraryCopy appLibraryOrZoneName];
  v16 = [(BRCAccountSession *)self appLibraryByID:appLibraryOrZoneName];

  if (v16)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountSession __getOrCreateAppLibrary:rowID:alreadyExists:withClientZone:createCZMMoved:];
    }

    if (!exists)
    {
      goto LABEL_9;
    }

    v19 = 1;
    goto LABEL_8;
  }

  v21 = [BRCAppLibrary alloc];
  dbRowID = [zoneCopy dbRowID];
  LODWORD(v26) = 1;
  BYTE2(v25) = moved;
  LOWORD(v25) = 1;
  v16 = [BRCAppLibrary initWithMangledID:v21 dbRowID:"initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:" zoneRowID:libraryCopy db:dCopy plist:dbRowID session:self->_clientDB initialCreation:0 createdRootOnDisk:self createdCZMMoved:v25 rootFileID:0 childBasehashSalt:0 saltingState:v26];

  if ([(BRCAccountSession *)self _createPrivateAppLibrary:v16])
  {
    [(BRCAppLibrary *)v16 associateWithClientZone:zoneCopy];
    [(BRCAppLibrary *)v16 setDelegate:self->_containerScheduler];
    serverZone = [zoneCopy serverZone];
    [(BRCAccountSession *)self __registerServerZone:serverZone clientZone:zoneCopy appLibrary:v16 isShared:0];

    if ([(BRCAppLibrary *)v16 recreateDocumentsFolderIfNeededInDB])
    {
      [(BRCAppLibrary *)v16 flushAndForceIngestRootAndDocumentsFolder];
      if (!exists)
      {
        goto LABEL_9;
      }

      v19 = 0;
LABEL_8:
      *exists = v19;
LABEL_9:
      v16 = v16;
      v20 = v16;
      goto LABEL_15;
    }
  }

  v20 = 0;
LABEL_15:

  return v20;
}

- (void)__registerServerZone:(id)zone clientZone:(id)clientZone appLibrary:(id)library isShared:(BOOL)shared
{
  sharedCopy = shared;
  zoneCopy = zone;
  clientZoneCopy = clientZone;
  libraryCopy = library;
  if ((libraryCopy == 0) != sharedCopy)
  {
    [BRCAccountSession __registerServerZone:clientZone:appLibrary:isShared:];
  }

  dbRowID = [zoneCopy dbRowID];
  v14 = dbRowID;
  if (!dbRowID || sharedCopy)
  {

    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_10:
    [(BRCAccountSession *)self _mutexZonesLock];
    if (zoneCopy && clientZoneCopy)
    {
      if (sharedCopy)
      {
        mangledID = [zoneCopy mangledID];
        if (!mangledID)
        {
          dbRowID4 = brc_bread_crumbs();
          mangledID2 = brc_default_log();
          if (os_log_type_enabled(mangledID2, OS_LOG_TYPE_FAULT))
          {
            [BRCAccountSession __registerServerZone:clientZone:appLibrary:isShared:];
          }

          goto LABEL_20;
        }

        zoneName3 = mangledID;
        [(NSMutableDictionary *)self->_sharedClientZonesByMangledID setObject:clientZoneCopy forKeyedSubscript:mangledID];
        sharedServerZonesByMangledID = self->_sharedServerZonesByMangledID;
        v21 = zoneCopy;
      }

      else
      {
        zoneName = [zoneCopy zoneName];

        if (!zoneName)
        {
          dbRowID4 = brc_bread_crumbs();
          mangledID2 = brc_default_log();
          if (os_log_type_enabled(mangledID2, OS_LOG_TYPE_FAULT))
          {
            [BRCAccountSession __registerServerZone:clientZone:appLibrary:isShared:];
          }

          goto LABEL_20;
        }

        privateServerZonesByID = self->_privateServerZonesByID;
        zoneName2 = [zoneCopy zoneName];
        [(NSMutableDictionary *)privateServerZonesByID setObject:zoneCopy forKeyedSubscript:zoneName2];

        privateClientZonesByID = self->_privateClientZonesByID;
        zoneName3 = [zoneCopy zoneName];
        sharedServerZonesByMangledID = privateClientZonesByID;
        v21 = clientZoneCopy;
      }

      [(NSMutableDictionary *)sharedServerZonesByMangledID setObject:v21 forKeyedSubscript:zoneName3];

      serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
      dbRowID2 = [zoneCopy dbRowID];
      [(NSMutableDictionary *)serverZonesByZoneRowID setObject:zoneCopy forKeyedSubscript:dbRowID2];
    }

    if (!libraryCopy)
    {
LABEL_21:
      brc_mutex_unlock(&self->_zonesLock.pthread);
      goto LABEL_22;
    }

    appLibrariesByRowID = self->_appLibrariesByRowID;
    dbRowID3 = [libraryCopy dbRowID];
    [(NSMutableDictionary *)appLibrariesByRowID setObject:libraryCopy forKeyedSubscript:dbRowID3];

    dbRowID4 = [libraryCopy dbRowID];
    libraryRowIDsByMangledID = self->_libraryRowIDsByMangledID;
    mangledID2 = [libraryCopy mangledID];
    [(NSMutableDictionary *)libraryRowIDsByMangledID setObject:dbRowID4 forKeyedSubscript:mangledID2];
LABEL_20:

    goto LABEL_21;
  }

  dbRowID5 = [libraryCopy dbRowID];

  if (dbRowID5)
  {
    goto LABEL_10;
  }

LABEL_6:
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [BRCAccountSession __registerServerZone:clientZone:appLibrary:isShared:];
  }

LABEL_22:
}

- (BOOL)_shouldPrivateAppLibraryBeCZMMoved:(id)moved
{
  movedCopy = moved;
  if ([movedCopy isCloudDocsMangledID])
  {
    shouldAutoMigrateToCloudDocs = 0;
  }

  else
  {
    v6 = [(BRCAccountSession *)self appLibraryByID:*MEMORY[0x277CFAD68]];
    if ([v6 wasMovedToCloudDocs])
    {
      v7 = [BRCUserDefaults defaultsForMangledID:movedCopy];
      shouldAutoMigrateToCloudDocs = [v7 shouldAutoMigrateToCloudDocs];
    }

    else
    {
      shouldAutoMigrateToCloudDocs = 0;
    }
  }

  return shouldAutoMigrateToCloudDocs;
}

- (id)_getOrCreateAppLibraryAndPrivateZonesIfNecessary:(id)necessary creationFlags:(unsigned int *)flags
{
  v76 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__44;
  v71 = __Block_byref_object_dispose__44;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__44;
  v65 = __Block_byref_object_dispose__44;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__44;
  v59 = __Block_byref_object_dispose__44;
  v60 = 0;
  serialQueue = [(BRCPQLConnection *)self->_clientDB serialQueue];
  dispatch_assert_queue_not_V2(serialQueue);

  dispatch_assert_queue_not_V2(self->_clientTruthWorkloop);
  serialQueue2 = [(BRCPQLConnection *)self->_serverDB serialQueue];
  dispatch_assert_queue_not_V2(serialQueue2);

  dispatch_assert_queue_not_V2(self->_serverTruthWorkloop);
  if (flags)
  {
    *flags = 0;
  }

  v9 = [(BRCAccountSession *)self _shouldPrivateAppLibraryBeCZMMoved:necessaryCopy];
  memset(v54, 0, sizeof(v54));
  __brc_create_section(0, "[BRCAccountSession _getOrCreateAppLibraryAndPrivateZonesIfNecessary:creationFlags:]", 3725, 0, v54);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v54[0];
    *&buf[12] = 2112;
    *&buf[14] = necessaryCopy;
    *&buf[22] = 2112;
    v74 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Creating app library and zones: %@ if needed%@", buf, 0x20u);
  }

  if (necessaryCopy && ![necessaryCopy isShared])
  {
    brc_mutex_lock(&self->_zonesCreationLock.pthread);
    v15 = [(BRCAccountSession *)self appLibraryByMangledID:necessaryCopy];
    v16 = v68[5];
    v68[5] = v15;

    defaultClientZone = [v68[5] defaultClientZone];
    v18 = v62[5];
    v62[5] = defaultClientZone;

    privateServerZone = [v62[5] privateServerZone];
    v20 = v56[5];
    v56[5] = privateServerZone;

    if (v56[5])
    {
      delegate = [v68[5] delegate];
      v22 = delegate == 0;

      if (v22)
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [BRCAccountSession _getOrCreateAppLibraryAndPrivateZonesIfNecessary:creationFlags:];
        }

        [v68[5] setDelegate:self->_containerScheduler];
      }

      brc_mutex_unlock(&self->_zonesCreationLock.pthread);
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v36 = v56[5];
        v37 = v62[5];
        v38 = v68[5];
        *buf = 138413058;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v37;
        *&buf[22] = 2112;
        v74 = v38;
        LOWORD(v75) = 2112;
        *(&v75 + 2) = v25;
        _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] returning early server zone: %@\nclient zone: %@\napp library: %@%@", buf, 0x2Au);
      }

      if (flags)
      {
        *flags = 1;
      }
    }

    else
    {
      if (![(BRCAccountSession *)self isCancelled])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v74 = __Block_byref_object_copy__44;
        *&v75 = __Block_byref_object_dispose__44;
        *(&v75 + 1) = 0;
        serverDB = self->_serverDB;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke;
        v49[3] = &unk_278506140;
        v53 = v9;
        v51 = &v55;
        v49[4] = self;
        v28 = necessaryCopy;
        v50 = v28;
        v52 = buf;
        [(BRCPQLConnection *)serverDB performWithFlags:19 action:v49];
        if (v56[5])
        {
          clientDB = self->_clientDB;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke_362;
          v41[3] = &unk_278506168;
          v48 = v9;
          v43 = &v61;
          v41[4] = self;
          v42 = v28;
          v44 = &v55;
          v45 = &v67;
          v46 = buf;
          flagsCopy = flags;
          [(BRCPQLConnection *)clientDB performWithFlags:23 action:v41];
        }

        _Block_object_dispose(buf, 8);
      }

      brc_mutex_unlock(&self->_zonesCreationLock.pthread);
      if (v68[5])
      {
        v30 = brc_bread_crumbs();
        v31 = brc_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = v68[5];
          v33 = v56[5];
          v34 = v62[5];
          *buf = 138413058;
          *&buf[4] = v32;
          *&buf[12] = 2112;
          *&buf[14] = v33;
          *&buf[22] = 2112;
          v74 = v34;
          LOWORD(v75) = 2112;
          *(&v75 + 2) = v30;
          _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] returning app library %@\nserver zone:%@\n, client zone: %@%@", buf, 0x2Au);
        }
      }

      else
      {
        v30 = brc_bread_crumbs();
        v31 = brc_default_log();
        if (os_log_type_enabled(v31, 0x90u))
        {
          v39 = v56[5];
          v40 = v62[5];
          *buf = 138413058;
          *&buf[4] = necessaryCopy;
          *&buf[12] = 2112;
          *&buf[14] = v39;
          *&buf[22] = 2112;
          v74 = v40;
          LOWORD(v75) = 2112;
          *(&v75 + 2) = v30;
          _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] couldn't create app library\n appID: %@\nserverZone: %@\nclientZone: %@%@", buf, 0x2Au);
        }
      }
    }

    v14 = v68[5];
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession _getOrCreateAppLibraryAndPrivateZonesIfNecessary:creationFlags:];
    }

    v14 = 0;
  }

  __brc_leave_section(v54);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  return v14;
}

uint64_t __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v5 = [v4 privateServerZoneByID:*MEMORY[0x277CFAD68]];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v4 __getOrCreateServerZone:*(a1 + 40)];
    v9 = [v8 asPrivateZone];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = [*(a1 + 32) getOrReserveLibraryRowIDForLibrary:*(a1 + 40)];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return 1;
}

uint64_t __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke_362(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 88) != 1)
  {
    v8 = [v4 __getOrCreateClientZone:*(a1 + 40) withServerZone:*(*(*(a1 + 56) + 8) + 40) alreadyExists:0];
    v10 = [v8 asPrivateClientZone];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

LABEL_7:
    goto LABEL_8;
  }

  v5 = [v4 privateClientZoneByID:*MEMORY[0x277CFAD68]];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke_362_cold_1();
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = *(*(*(a1 + 48) + 8) + 40);
  if (v13)
  {
    v21 = 0;
    v14 = [*(a1 + 32) __getOrCreateAppLibrary:*(a1 + 40) rowID:*(*(*(a1 + 72) + 8) + 40) alreadyExists:&v21 withClientZone:v13 createCZMMoved:*(a1 + 88)];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 64) + 8) + 40);
    if (v17)
    {
      v18 = *(a1 + 80);
      if (v21)
      {
        if (v18)
        {
          v19 = 1;
LABEL_17:
          *v18 = v19;
        }
      }

      else
      {
        if (v18)
        {
          if (*(a1 + 88))
          {
            v19 = 2;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_17;
        }

        if ((*(a1 + 88) & 1) == 0 && (*(*(a1 + 32) + 129) & 1) == 0)
        {
          [*(*(*(a1 + 48) + 8) + 40) resume];
          v17 = *(*(*(a1 + 64) + 8) + 40);
        }

        [v17 activate];
      }
    }
  }

  return 1;
}

- (id)getOrCreateAppLibraryAndPrivateZonesIfNecessary:(id)necessary appLibraryExists:(BOOL *)exists
{
  v13 = 0;
  v6 = [(BRCAccountSession *)self _getOrCreateAppLibraryAndPrivateZonesIfNecessary:necessary creationFlags:&v13];
  if (v6 && v13 != 1)
  {
    clientDB = [(BRCAccountSession *)self clientDB];
    serialQueue = [clientDB serialQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__BRCAccountSession_getOrCreateAppLibraryAndPrivateZonesIfNecessary_appLibraryExists___block_invoke;
    v10[3] = &unk_2784FFBA0;
    v12 = v13;
    v11 = v6;
    dispatch_sync(serialQueue, v10);
  }

  if (exists)
  {
    *exists = v13 == 1;
  }

  return v6;
}

uint64_t __86__BRCAccountSession_getOrCreateAppLibraryAndPrivateZonesIfNecessary_appLibraryExists___block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v2 = [*(a1 + 32) defaultClientZone];
    [v2 resume];
  }

  v3 = *(a1 + 32);

  return [v3 activate];
}

- (id)getOrCreateSharedZones:(id)zones shareAcceptOp:(id)op
{
  zonesCopy = zones;
  opCopy = op;
  if (([zonesCopy isShared] & 1) == 0)
  {
    [BRCAccountSession getOrCreateSharedZones:shareAcceptOp:];
  }

  v8 = self->_serverDB;
  serialQueue = [(BRCPQLConnection *)v8 serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [(BRCPQLConnection *)v8 serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);
  }

  v11 = self->_clientDB;
  serialQueue3 = [(BRCPQLConnection *)v11 serialQueue];

  if (serialQueue3)
  {
    serialQueue4 = [(BRCPQLConnection *)v11 serialQueue];
    dispatch_assert_queue_not_V2(serialQueue4);
  }

  brc_mutex_lock(&self->_zonesCreationLock.pthread);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__44;
  v45 = __Block_byref_object_dispose__44;
  v46 = [(BRCAccountSession *)self clientZoneByMangledID:zonesCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__44;
  v39 = __Block_byref_object_dispose__44;
  serverZone = [v42[5] serverZone];
  if (v36[5])
  {
    if (opCopy)
    {
      clientTruthWorkloop = self->_clientTruthWorkloop;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__BRCAccountSession_getOrCreateSharedZones_shareAcceptOp___block_invoke;
      block[3] = &unk_278502000;
      v34 = &v41;
      v33 = opCopy;
      dispatch_async_and_wait(clientTruthWorkloop, block);
    }

    brc_mutex_unlock(&self->_zonesCreationLock.pthread);
    asSharedClientZone = [v42[5] asSharedClientZone];
  }

  else
  {
    serverDB = self->_serverDB;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__BRCAccountSession_getOrCreateSharedZones_shareAcceptOp___block_invoke_2;
    v29[3] = &unk_278505140;
    v31 = &v35;
    v29[4] = self;
    v17 = zonesCopy;
    v30 = v17;
    [(BRCPQLConnection *)serverDB performWithFlags:19 action:v29];
    clientDB = self->_clientDB;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __58__BRCAccountSession_getOrCreateSharedZones_shareAcceptOp___block_invoke_3;
    v23 = &unk_278506190;
    v27 = &v41;
    selfCopy = self;
    v25 = v17;
    v28 = &v35;
    v26 = opCopy;
    [(BRCPQLConnection *)clientDB performWithFlags:19 action:&v20];
    brc_mutex_unlock(&self->_zonesCreationLock.pthread);
    asSharedClientZone = [v42[5] asSharedClientZone];
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);

  return asSharedClientZone;
}

uint64_t __58__BRCAccountSession_getOrCreateSharedZones_shareAcceptOp___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) __getOrCreateServerZone:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

uint64_t __58__BRCAccountSession_getOrCreateSharedZones_shareAcceptOp___block_invoke_3(uint64_t a1)
{
  v6 = 0;
  v2 = [*(a1 + 32) __getOrCreateClientZone:*(a1 + 40) withServerZone:*(*(*(a1 + 64) + 8) + 40) alreadyExists:&v6];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 56) + 8) + 40) && *(*(*(a1 + 64) + 8) + 40) && (v6 & 1) == 0)
  {
    [*(a1 + 32) __registerServerZone:? clientZone:? appLibrary:? isShared:?];
    [*(*(*(a1 + 56) + 8) + 40) resume];
  }

  if (*(a1 + 48))
  {
    [*(*(*(a1 + 56) + 8) + 40) addSyncDownDependency:?];
  }

  return 1;
}

- (id)getOrReserveLibraryRowIDForLibrary:(id)library
{
  v18 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  [(BRCPQLConnection *)self->_serverDB assertOnQueue];
  if ([libraryCopy isShared])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountSession getOrReserveLibraryRowIDForLibrary:];
    }

    v7 = 0;
  }

  else
  {
    brc_mutex_lock(&self->_zonesLock.pthread);
    v7 = [(NSMutableDictionary *)self->_libraryRowIDsByMangledID objectForKeyedSubscript:libraryCopy];
    if (!v7)
    {
      appLibraryOrZoneName = [libraryCopy appLibraryOrZoneName];
      v7 = [(BRCAccountSession *)self _reserveRowIDForLibrary:appLibraryOrZoneName];

      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        v15 = libraryCopy;
        v16 = 2112;
        v17 = v9;
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] reserved rowid %@ for %@%@", &v12, 0x20u);
      }

      if (v7)
      {
        [(NSMutableDictionary *)self->_libraryRowIDsByMangledID setObject:v7 forKeyedSubscript:libraryCopy];
      }
    }

    brc_mutex_unlock(&self->_zonesLock.pthread);
  }

  return v7;
}

- (void)fetchUserRecordIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (fetchUserRecordIDWithCompletionHandler__onceToken != -1)
  {
    [BRCAccountSession fetchUserRecordIDWithCompletionHandler:];
  }

  v5 = fetchUserRecordIDWithCompletionHandler__fetchUserRecordIDQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_278500048;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("fetch-user-recordID", v0);

  v2 = fetchUserRecordIDWithCompletionHandler__fetchUserRecordIDQueue;
  fetchUserRecordIDWithCompletionHandler__fetchUserRecordIDQueue = v1;
}

void __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 232);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__44;
  v23 = __Block_byref_object_dispose__44;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__44;
  v17[4] = __Block_byref_object_dispose__44;
  v18 = 0;
  objc_sync_enter(@"currentUserRecordID");
  v3 = [v2 objectForKeyedSubscript:@"currentUserRecordID"];
  v4 = v20[5];
  v20[5] = v3;

  objc_sync_exit(@"currentUserRecordID");
  if (!v20[5])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_2_cold_1();
    }

    v7 = dispatch_semaphore_create(0);
    v8 = [*(a1 + 32) syncContextProvider];
    v9 = [v8 defaultSyncContext];
    v10 = [v9 ckContainer];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_369;
    v12[3] = &unk_2785061E0;
    v15 = v17;
    v16 = &v19;
    v12[4] = *(a1 + 32);
    v13 = v2;
    v11 = v7;
    v14 = v11;
    [v10 fetchUserRecordIDWithCompletionHandler:v12];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(&v19, 8);
}

void __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched user record id %@ with error %@%@", buf, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v10 = *(*(a1 + 32) + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_370;
    v13[3] = &unk_2785061B8;
    v11 = *(a1 + 40);
    v17 = *(a1 + 64);
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v16 = *(a1 + 48);
    dispatch_async(v10, v13);
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 48));
  }
}

intptr_t __60__BRCAccountSession_fetchUserRecordIDWithCompletionHandler___block_invoke_370(uint64_t a1)
{
  objc_sync_enter(@"currentUserRecordID");
  [*(a1 + 32) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:@"currentUserRecordID"];
  [*(*(a1 + 40) + 200) forceBatchStart];
  objc_sync_exit(@"currentUserRecordID");
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (void)_cloudDocsAppsListDidChange:(id)change
{
  changeCopy = change;
  if (!self->_isCancelled)
  {
    if ([MEMORY[0x277D77BF8] br_isInSyncBubble])
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountSession _cloudDocsAppsListDidChange:];
      }
    }

    else
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__44;
      v20 = __Block_byref_object_dispose__44;
      v21 = 0;
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x3032000000;
      v14[3] = __Block_byref_object_copy__44;
      v14[4] = __Block_byref_object_dispose__44;
      v15 = 0;
      memset(v13, 0, sizeof(v13));
      __brc_create_section(0, "[BRCAccountSession _cloudDocsAppsListDidChange:]", 4062, 0, v13);
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountSession _cloudDocsAppsListDidChange:];
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke;
      v12[3] = &unk_278506258;
      v12[4] = self;
      v12[5] = &v16;
      v12[6] = v14;
      [changeCopy enumerateKeysAndObjectsUsingBlock:v12];
      [v17[5] invalidate];
      clientDB = [(BRCAccountSession *)self clientDB];
      serialQueue = [clientDB serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_6;
      block[3] = &unk_2784FF450;
      block[4] = self;
      dispatch_sync(serialQueue, block);

      __brc_leave_section(v13);
      _Block_object_dispose(v14, 8);

      _Block_object_dispose(&v16, 8);
    }
  }
}

void __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x277CFAE60]) initWithAppLibraryName:v7];
  v10 = [*(a1 + 32) getOrCreateAppLibraryAndPrivateZonesIfNecessary:v9];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_2;
  v20[3] = &unk_278506230;
  v11 = *(a1 + 32);
  v23 = *(a1 + 40);
  v20[4] = v11;
  v12 = v10;
  v13 = *(a1 + 48);
  v21 = v12;
  v24 = v13;
  v14 = v7;
  v22 = v14;
  v25 = &v26;
  [v8 enumerateObjectsUsingBlock:v20];
  v15 = *(a1 + 32);
  if (v15[585] == 1)
  {
    *a4 = 1;
  }

  else if (*(v27 + 24) == 1)
  {
    v16 = [v15 clientDB];
    v17 = [v16 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_5;
    block[3] = &unk_2784FF450;
    v19 = v12;
    dispatch_sync(v17, block);
  }

  _Block_object_dispose(&v26, 8);
}

void __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = BRCBundleServiceConnection();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  if (*(*(a1 + 32) + 585) == 1)
  {
    *a3 = 1;
  }

  else
  {
    v9 = [*(a1 + 40) containerMetadata];
    v10 = [v9 versionNumberForBundleIdentifier:v5];

    v11 = [objc_alloc(MEMORY[0x277CFAF08]) initWithXPCObject:*(*(*(a1 + 56) + 8) + 40)];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 64) + 8) + 40);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_3;
    v20 = &unk_278506208;
    v15 = *(a1 + 48);
    v21 = *(a1 + 40);
    v22 = v5;
    v23 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    [v14 extractMetadataForContainerID:v15 bundleID:v22 minimumBundleVersion:v10 reply:&v17];
    v16 = [*(*(*(a1 + 64) + 8) + 40) result];
  }
}

void __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) containerMetadata];
  v11 = [v10 isDocumentScopePublic];

  if (v7)
  {
    v12 = [*(a1 + 32) containerMetadata];
    v13 = [v12 updateMetadataWithExtractorProperties:v7 iconPaths:v8 bundleID:*(a1 + 40)];

    if (v13)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  v14 = [*(a1 + 32) containerMetadata];
  v15 = [v14 isDocumentScopePublic];

  if (v11 != v15)
  {
    v16 = brc_task_tracker_create("apps-list-did-change");
    v17 = [*(a1 + 32) db];
    v18 = [v17 serialQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_4;
    v19[3] = &unk_2784FF450;
    v20 = *(a1 + 32);
    brc_task_tracker_async_with_logs(v16, v18, v19, 0);
  }

  [*(*(*(a1 + 56) + 8) + 40) setBoolResult:v9 == 0 error:v9];
}

void __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_6(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_7;
  v3[3] = &unk_2785032C8;
  v3[4] = &v4;
  [v2 enumeratePrivateClientZones:v3];
  if (*(v5 + 24) == 1)
  {
    [*(*(a1 + 32) + 624) refreshPushRegistrationAfterAppsListChanged];
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t __49__BRCAccountSession__cloudDocsAppsListDidChange___block_invoke_7(uint64_t a1, void *a2)
{
  if ([a2 recomputeAppSyncBlockState])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

- (void)cloudDocsAppsListDidChange:(id)change
{
  changeCopy = change;
  v3 = changeCopy;
  BRPerformWithPersonaAndError();
}

void __48__BRCAccountSession_cloudDocsAppsListDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __48__BRCAccountSession_cloudDocsAppsListDidChange___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);

    [v6 _cloudDocsAppsListDidChange:v5];
  }
}

- (void)recomputeAppSyncBlockStateForPrivateClientZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self clientDB];
  [clientDB assertOnQueue];

  LODWORD(clientDB) = [zoneCopy recomputeAppSyncBlockState];
  if (clientDB)
  {
    containerScheduler = self->_containerScheduler;

    [(BRCContainerScheduler *)containerScheduler refreshPushRegistrationAfterAppsListChanged];
  }
}

- (void)setOptimizeStorageEnabled:(BOOL)enabled forKey:(id)key synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  enabledCopy = enabled;
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRCAccountSession setOptimizeStorageEnabled:forKey:synchronous:]", 4187, 0, v24);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    v26 = v24[0];
    if (enabledCopy)
    {
      v17 = "enabling";
    }

    else
    {
      v17 = "disabling";
    }

    v27 = 2080;
    v28 = v17;
    v18 = "YES";
    v29 = 2112;
    v30 = keyCopy;
    if (!synchronousCopy)
    {
      v18 = "NO";
    }

    v31 = 2080;
    v32 = v18;
    v33 = 2112;
    v34 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %s storage optimization for %@ synchronous %s%@", buf, 0x34u);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [standardUserDefaults setObject:v12 forKey:keyCopy];

  [standardUserDefaults synchronize];
  v13 = dispatch_group_create();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__BRCAccountSession_setOptimizeStorageEnabled_forKey_synchronous___block_invoke;
  v21[3] = &unk_278506280;
  v23 = synchronousCopy;
  v14 = v13;
  v22 = v14;
  v15 = MEMORY[0x22AA4A310](v21);
  v15[2](v15, *MEMORY[0x277CC6348]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__BRCAccountSession_setOptimizeStorageEnabled_forKey_synchronous___block_invoke_386;
  v19[3] = &unk_2785062A8;
  v16 = v15;
  v20 = v16;
  [(BRCAccountSession *)self enumerateAppLibraries:v19];
  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  BRPostAccountTokenChangedNotification();

  __brc_leave_section(v24);
}

void __66__BRCAccountSession_setOptimizeStorageEnabled_forKey_synchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__BRCAccountSession_setOptimizeStorageEnabled_forKey_synchronous___block_invoke_2;
  v5[3] = &unk_278505A98;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  [BRCImportUtil forceIngestionForItemID:v4 completionHandler:v5];
}

void __66__BRCAccountSession_setOptimizeStorageEnabled_forKey_synchronous___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Done Force Ingestion %@ to update the contentPolicy - error %@%@", &v7, 0x20u);
  }

  if (*(a1 + 48) == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

uint64_t __66__BRCAccountSession_setOptimizeStorageEnabled_forKey_synchronous___block_invoke_386(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rootFileObjectID];
  v6 = [v5 asString];
  (*(v4 + 16))(v4, v6);

  if (([v3 isCloudDocsAppLibrary] & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v3 documentsFolderFileObjectID];
    v9 = [v8 asString];
    (*(v7 + 16))(v7, v9);
  }

  return 1;
}

- (void)dumpXPCClientsToContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_xpcClients copy];
  objc_sync_exit(selfCopy);

  [contextCopy writeLineWithFormat:&stru_2837504F0];
  [contextCopy writeLineWithFormat:@"%ld xpc clients:", objc_msgSend(v6, "count")];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) dumpToContext:contextCopy];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [contextCopy writeLineWithFormat:&stru_2837504F0];
}

- (void)dumpMiscOperationsToContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  allObjects = [(NSHashTable *)self->_miscOperations allObjects];
  [contextCopy writeLineWithFormat:&stru_2837504F0];
  [contextCopy writeLineWithFormat:@"%ld misc operations:", objc_msgSend(allObjects, "count")];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 descriptionWithContext:contextCopy];
          [contextCopy writeLineWithFormat:@"%@", v12];
        }

        else
        {
          [contextCopy writeLineWithFormat:@"%@", v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_initalizeItemFetcher
{
  v6 = [[BRCLocalItemBuilder alloc] initWithSession:self];
  v3 = [[BRCServerItemBuilder alloc] initWithZoneAppRetriever:self];
  v4 = [[BRCItemFetcher alloc] initWithSessionContext:self localItemBuilder:v6 serverItemBuilder:v3];
  itemFetcher = self->_itemFetcher;
  self->_itemFetcher = v4;
}

- (void)openForDumpingWithAccountDSID:(id)d
{
  dCopy = d;
  v5 = [[BRCAccountFacade alloc] initWithAccountDSID:dCopy];

  accountFacade = self->_accountFacade;
  self->_accountFacade = v5;

  v7 = [[BRCFairScheduler alloc] initWithWorkloop:self->_clientTruthWorkloop name:@"client-db"];
  fairClientDBScheduler = self->_fairClientDBScheduler;
  self->_fairClientDBScheduler = v7;

  v9 = [[BRCDeadlineScheduler alloc] initWithName:@"com.apple.bird.main-scheduler" fairScheduler:self->_fairClientDBScheduler];
  defaultScheduler = self->_defaultScheduler;
  self->_defaultScheduler = v9;

  v11 = [[BRCApplyScheduler alloc] initWithAccountSession:self];
  applyScheduler = self->_applyScheduler;
  self->_applyScheduler = v11;

  v13 = [[BRCFSImporter alloc] initWithAccountSession:self];
  fsImporter = self->_fsImporter;
  self->_fsImporter = v13;

  v15 = [[BRCFSUploader alloc] initWithAccountSession:self];
  fsUploader = self->_fsUploader;
  self->_fsUploader = v15;

  v17 = [[BRCFSDownloader alloc] initWithAccountSession:self];
  fsDownloader = self->_fsDownloader;
  self->_fsDownloader = v17;

  v19 = [[BRCStageRegistry alloc] initWithAccountSession:self];
  stageRegistry = self->_stageRegistry;
  self->_stageRegistry = v19;

  [(BRCAccountSession *)self _initalizeItemFetcher];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  libraryRowIDsByMangledID = self->_libraryRowIDsByMangledID;
  self->_libraryRowIDsByMangledID = v21;

  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  appLibrariesByRowID = self->_appLibrariesByRowID;
  self->_appLibrariesByRowID = v23;

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  serverZonesByZoneRowID = self->_serverZonesByZoneRowID;
  self->_serverZonesByZoneRowID = v25;

  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sharedServerZonesByMangledID = self->_sharedServerZonesByMangledID;
  self->_sharedServerZonesByMangledID = v27;

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sharedClientZonesByMangledID = self->_sharedClientZonesByMangledID;
  self->_sharedClientZonesByMangledID = v29;

  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  privateServerZonesByID = self->_privateServerZonesByID;
  self->_privateServerZonesByID = v31;

  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  privateClientZonesByID = self->_privateClientZonesByID;
  self->_privateClientZonesByID = v33;

  v38 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v35 = dispatch_queue_attr_make_with_autorelease_frequency(v38, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v36 = dispatch_queue_create("reset-queue", v35);

  resetQueue = self->_resetQueue;
  self->_resetQueue = v36;
}

- (void)openForSendingTelemetry
{
  [(BRCAccountSession *)self openForDumpingWithAccountDSID:0];
  v3 = [[BRCAnalyticsReporter alloc] initWithSession:self];
  analyticsReporter = self->_analyticsReporter;
  self->_analyticsReporter = v3;

  v5 = [BRCLocalItemSyncErrorReporter alloc];
  v6 = +[BRCAutoBugCaptureReporter sharedABCReporter];
  v7 = [(BRCLocalItemSyncErrorReporter *)v5 initWithABCReporter:v6 dbItemSyncErrorCapturer:self->_clientReadWriteDatabaseFacade];
  localItemSyncErrorReporter = self->_localItemSyncErrorReporter;
  self->_localItemSyncErrorReporter = v7;

  v9 = [[BRCSyncContextProvider alloc] initWithAccountSession:self];
  syncContextProvider = self->_syncContextProvider;
  self->_syncContextProvider = v9;

  [(BRCAccountSession *)self _setupThrottles];
}

- (void)_handleTrashedItemsMigration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(BRCPQLConnection *)self->_clientDB assertOnQueue];
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  dbMigrationBatchSize = [v3 dbMigrationBatchSize];

  v5 = MEMORY[0x277D85DD0];
  do
  {
    clientDB = self->_clientDB;
    v7[0] = v5;
    v7[1] = 3221225472;
    v7[2] = __49__BRCAccountSession__handleTrashedItemsMigration__block_invoke;
    v7[3] = &unk_2785062D0;
    v7[5] = &v8;
    v7[6] = dbMigrationBatchSize;
    v7[4] = self;
    [(BRCPQLConnection *)clientDB groupInBatch:v7];
  }

  while (*(v9 + 24) != 1);
  _Block_object_dispose(&v8, 8);
}

void __49__BRCAccountSession__handleTrashedItemsMigration__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v3 = [*(*(a1 + 32) + 200) fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_scope = 3 AND item_localsyncupstate = 5 LIMIT %lld", *(a1 + 48)}];
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__BRCAccountSession__handleTrashedItemsMigration__block_invoke_2;
  v29[3] = &unk_2784FF910;
  v22 = v3;
  v23 = a1;
  v29[4] = *(a1 + 32);
  v5 = [v3 enumerateObjects:v29];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 clientZone];
        v13 = [v10 itemID];
        v14 = [v12 serverItemByItemID:v13];

        [v10 markNeedsDeleteForRescheduleOfItem:v14];
        [v10 markDoneMigratingToFPFS];
        [v4 insertObject:v10 atIndex:0];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  [v22 close];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        [v20 saveToDB];
        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v17);
  }

  *(*(*(v23 + 40) + 8) + 24) = [v15 count] == 0;
}

id __49__BRCAccountSession__handleTrashedItemsMigration__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (NSString)sessionDirPath
{
  sessionDirPath = self->_sessionDirPath;
  if (sessionDirPath)
  {
  }

  else
  {
    [BRCAccountSession sessionDirPath];
    sessionDirPath = v5;
  }

  return sessionDirPath;
}

- (NSString)cacheDirPath
{
  cacheDirPath = self->_cacheDirPath;
  if (cacheDirPath)
  {
  }

  else
  {
    [BRCAccountSession cacheDirPath];
    cacheDirPath = v5;
  }

  return cacheDirPath;
}

- (BRCFSImporter)fsImporter
{
  fsImporter = self->_fsImporter;
  if (fsImporter)
  {
  }

  else
  {
    [BRCAccountSession fsImporter];
    fsImporter = v5;
  }

  return fsImporter;
}

- (id)newLocalItemFromPQLResultSet:(id)set db:(id)db error:(id *)error
{
  setCopy = set;
  dbCopy = db;
  v10 = [setCopy intAtIndex:15];
  if (v10 > 4)
  {
    if (v10 <= 7)
    {
      if ((v10 - 6) < 2)
      {
        v11 = BRCFinderBookmarkItem;
LABEL_21:
        v12 = [[v11 alloc] initFromPQLResultSet:setCopy session:self db:dbCopy error:error];
        goto LABEL_22;
      }

      if (v10 == 5)
      {
        v11 = BRCSymlinkItem;
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (v10 == 8)
    {
      v11 = BRCShareAcceptationDocumentFault;
      goto LABEL_21;
    }

    if (v10 == 10)
    {
      v11 = BRCShareAcceptationDirectoryFault;
      goto LABEL_21;
    }

    if (v10 != 9)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = BRCAliasItem;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if ((v10 - 1) < 2)
  {
    v11 = BRCDocumentItem;
    goto LABEL_21;
  }

  if (!v10)
  {
LABEL_15:
    v11 = BRCDirectoryItem;
    goto LABEL_21;
  }

LABEL_23:
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [(BRCLocalItemBuilder *)v14 newLocalItemFromPQLResultSet:v10 error:v15];
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)newServerItemFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v7 = [setCopy numberAtIndex:0];
  v8 = [(BRCAccountSession *)self serverZoneByRowID:v7];

  isSharedZone = [v8 isSharedZone];
  v10 = off_2784FDCC0;
  if (!isSharedZone)
  {
    v10 = off_2784FDC88;
  }

  v11 = [objc_alloc(*v10) initFromPQLResultSet:setCopy serverZone:v8 error:error];

  return v11;
}

- (BOOL)globalID:(id)d isStrictChildOfGlobalID:(id)iD
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  maxSyncPathDepth = [v8 maxSyncPathDepth];

  if ([dCopy isEqualToItemGlobalID:iDCopy] & 1) != 0 || (objc_msgSend(dCopy, "itemID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isNonDesktopRoot"), v10, (v11))
  {
    v12 = 0;
  }

  else
  {
    clientDB = self->_clientDB;
    zoneRowID = [dCopy zoneRowID];
    itemID = [dCopy itemID];
    itemID2 = [iDCopy itemID];
    zoneRowID2 = [iDCopy zoneRowID];
    v18 = [(BRCPQLConnection *)clientDB fetch:@"WITH RECURSIVE item_parents (item_id, zone_rowid) AS(    SELECT item_parent_id, item_parent_zone_rowid FROM client_items      WHERE zone_rowid = %@ AND item_id = %@  UNION ALL     SELECT li.item_parent_id, li.item_parent_zone_rowid FROM client_items AS li INNER JOIN item_parents AS p USING (item_id, zone_rowid)      LIMIT %u) SELECT item_id, zone_rowid FROM item_parents WHERE item_id_is_root(item_id) OR (item_id = %@ AND zone_rowid = %@) LIMIT 1", zoneRowID, itemID, maxSyncPathDepth, itemID2, zoneRowID2];

    if ([v18 next])
    {
      v19 = [v18 objectOfClass:objc_opt_class() atIndex:0];
      v20 = [v18 numberAtIndex:1];
      v21 = [[BRCItemGlobalID alloc] initWithZoneRowID:v20 itemID:v19];
      v12 = [(BRCItemGlobalID *)v21 isEqualToItemGlobalID:iDCopy];
    }

    else
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138413314;
        selfCopy = self;
        v30 = 1024;
        v31 = maxSyncPathDepth;
        v32 = 2112;
        v33 = iDCopy;
        v34 = 2112;
        v35 = dCopy;
        v36 = 2112;
        v37 = v22;
        _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: reset needed for %@ because the hierarchy is deeper than %u under %@ when looking for %@%@", buf, 0x30u);
      }

      zoneRowID3 = [dCopy zoneRowID];
      v25 = [(BRCAccountSession *)self serverZoneByRowID:zoneRowID3];
      clientZone = [v25 clientZone];
      [clientZone scheduleResetServerAndClientTruthsForReason:@"hierarchy-too-deep"];

      v12 = 0;
    }
  }

  return v12;
}

void __75__BRCAccountSession_BRCDatabaseManager___registerDynamicDBFunctions_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, a2, a3, "[DEBUG] recursive update of %lld%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: sself%@", v5, v6, v7, v8);
  }
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx db pre flush%@");
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_cold_3(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", buf, 0x16u);
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: sself%@", v5, v6, v7, v8);
  }
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx db post flush%@");
}

void __84__BRCAccountSession_BRCDatabaseManager___finishClientTruthConnectionSetupWithError___block_invoke_2_277_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __181__BRCAccountSession_BRCDatabaseManager__openAndValidateDatabase_serverTruth_session_baseURL_skipControlFiles_initialVersion_lastCurrentVersion_dbCreationDate_deviceIDChanged_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v1 = [*v0 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: Failed to enable recursive triggers - %@%@", v4, v5, v6, v7);
}

void __86__BRCAccountSession_DatabaseAdditions__dumpStatusToFileHandle_zoneName_tracker_error___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_15(&dword_223E7A000, a2, a3, "[ERROR] Failed opening file handle%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(*(a1 + 32) + 120);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: Failed adopting persona %@%@", v3, DWORD2(v3));
}

void __103__BRCAccountSession_FPFSAdditions___reportForFPFSImportStatusTelemetryEventIfNeeded_completionHandler___block_invoke_106_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Items in error - import won't complete%@", v1, 0xCu);
}

void __140__BRCAccountSession_FPFSAdditions___triggerMigrationStuckRecoveryIfNeededDaysSinceImportStarted_daysSinceLastMigrationProgress_importError___block_invoke_2_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = v0;
  _os_log_error_impl(&dword_223E7A000, v1, 0x90u, "[ERROR] FPFS Migration recovery failed: %@%@", v2, 0x16u);
}

void __71__BRCAccountSession_FPFSAdditions___sendFPFSImportStatusTelemetryEvent__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __76__BRCAccountSession_FPFSAdditions___triggerFPFSImportFinishedTelemetryEvent__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_createAccountSupportPathIfNeeded:protectParent:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_addOrImportDomainIfNeededWithError:domainAdded:domainImported:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __73__BRCAccountSession__submitDelayedTelemetryEventIfNeeded_wait_withBlock___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: sself->_analyticsReporter%@", v5, v6, v7, v8);
  }
}

void __73__BRCAccountSession__submitDelayedTelemetryEventIfNeeded_wait_withBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __67__BRCAccountSession__submitSessionOpenFailedTelemetryEventIfNeeded__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: decodedData.count == 1%@", v5, v6, v7, v8);
  }
}

void __62__BRCAccountSession__submitDBCorruptionTelemetryEventIfNeeded__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: decodedData.count == 2%@", v5, v6, v7, v8);
  }
}

void __70__BRCAccountSession__submitReimportDomainFailedTelemetryEventIfNeeded__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: decodedData.count == 2%@", v5, v6, v7, v8);
  }
}

- (void)openWithError:pushWorkloop:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !_isOpen%@", v5, v6, v7, v8);
  }
}

- (void)openWithError:pushWorkloop:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)openWithError:(uint64_t)a3 pushWorkloop:.cold.4(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_15_0(&dword_223E7A000, v6, v4, "[CRIT] %@%@", v5);
}

- (void)_reportBasehashSalting
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: rs.next%@", v5, v6, v7, v8);
  }
}

void __43__BRCAccountSession__reportBasehashSalting__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: itemID.isNonDesktopRoot%@", v5, v6, v7, v8);
  }
}

void __43__BRCAccountSession__reportBasehashSalting__block_invoke_204_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: itemID.isNonDesktopRoot%@", v5, v6, v7, v8);
  }
}

- (void)_recoverAndReportDanglingLostZombieDirectories
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v6 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v6))
  {
    *self = 138412290;
    *a2 = v2;
    _os_log_fault_impl(&dword_223E7A000, v3, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: zombieItem.isDirectory%@", self, 0xCu);
  }
}

void __65__BRCAccountSession__recoverAndReportBouncedDocumentsDirectories__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __53__BRCAccountSession__registerBackgroundXPCActivities__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

void __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_269_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __41__BRCAccountSession__fixupItemsAtStartup__block_invoke_2_271_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)_assertQOS:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: qos_class_self() == expected%@", v5, v6, v7, v8);
  }
}

- (void)captureSessionOpenFailedInfoWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_unlinkContainersWithRootURL:containers:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.isOpen The session must be open in order to calculate pristine containers%@", v5, v6, v7, v8);
  }
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_324_cold_4()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession__loadClientZonesFromDisk__block_invoke_331_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)serverZoneByRowID:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverZone%@", v5, v6, v7, v8);
  }
}

- (void)serverZoneByRowID:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverZone.clientZone%@", v5, v6, v7, v8);
  }
}

- (void)enumerateContainersWithDBFacade:handler:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)enumeratePrivateServerZones:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: block%@", v5, v6, v7, v8);
  }
}

- (void)enumerateClientZones:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: block%@", v5, v6, v7, v8);
  }
}

- (void)enumeratePrivateClientZones:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: block%@", v5, v6, v7, v8);
  }
}

- (void)enumerateSharedClientZones:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: block%@", v5, v6, v7, v8);
  }
}

- (void)performBlock:(NSObject *)a3 whileRemovingPrivateClientZone:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 zoneName];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Deactivating private client zone %@%@", v6, 0x16u);
}

- (void)destroySharedClientZone:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: sharedClientZone.state & BRCClientZoneStateIsResetting%@", v5, v6, v7, v8);
  }
}

- (void)destroySharedClientZone:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: sharedClientZone.state & BRCClientZoneStateWantsDataUnlinked%@", v5, v6, v7, v8);
  }
}

- (void)destroySharedClientZone:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession_destroySharedClientZone___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__BRCAccountSession_destroySharedClientZone___block_invoke_356_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)appLibraryByRowID:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: dbRowID%@", v5, v6, v7, v8);
  }
}

- (void)appLibraryByRowID:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  OUTLINED_FUNCTION_1_0();
  v7 = a2;
  OUTLINED_FUNCTION_15_0(&dword_223E7A000, a3, v5, "[CRIT] UNREACHABLE: can't find app library for %lld%@", v6);
}

- (void)__getOrCreateServerZone:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)__getOrCreateServerZone:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverZone.dbRowID%@", v5, v6, v7, v8);
  }
}

- (void)__getOrCreateClientZone:withServerZone:alreadyExists:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)__getOrCreateClientZone:withServerZone:alreadyExists:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: [clientZone.dbRowID br_isEqualToNumber:serverZone.dbRowID]%@", v5, v6, v7, v8);
  }
}

- (void)__getOrCreateAppLibrary:rowID:alreadyExists:withClientZone:createCZMMoved:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: rowID%@", v5, v6, v7, v8);
  }
}

- (void)__registerServerZone:clientZone:appLibrary:isShared:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: isShared == (appLibrary == nil)%@", v5, v6, v7, v8);
  }
}

- (void)_getOrCreateAppLibraryAndPrivateZonesIfNecessary:creationFlags:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_getOrCreateAppLibraryAndPrivateZonesIfNecessary:creationFlags:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

void __84__BRCAccountSession__getOrCreateAppLibraryAndPrivateZonesIfNecessary_creationFlags___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: serverZone%@", v5, v6, v7, v8);
  }
}

- (void)getOrCreateSharedZones:shareAcceptOp:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: mangledID.isShared%@", v5, v6, v7, v8);
  }
}

- (void)cachedCurrentUserRecordName
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: userRecordName != nil%@", v5, v6, v7, v8);
  }
}

- (void)_cloudDocsAppsListDidChange:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sessionDirPath
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: sessionDirPath was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

- (void)cacheDirPath
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: cacheDirPath was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

- (void)applyScheduler
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: applyScheduler was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

- (void)containerScheduler
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: containerScheduler was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

- (void)fsImporter
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: fsImporter was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

- (void)notificationManager
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: notificationManager was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

- (void)stageRegistry
{
  OUTLINED_FUNCTION_17_3();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: stageRegistry was accessed after being closed%@", v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_9_4();
}

@end