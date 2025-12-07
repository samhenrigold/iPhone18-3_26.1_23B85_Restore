@interface NPKGizmoDatabase
+ (id)_migrationDataSource;
+ (id)_migrationDelegateQueue;
+ (id)sharedDatabase;
+ (void)setMigrationDataSource:(id)source;
- (BOOL)_executeSQL:(id)l;
- (BOOL)_getDeletePendingForUniqueID:(id)d;
- (BOOL)_hasPassForUniqueIDLocked:(id)locked;
- (BOOL)_migrateDatabase:(id)database;
- (BOOL)_preconditionsMetForDatabaseOpen;
- (BOOL)_removePassWithUniqueIDLocked:(id)locked;
- (BOOL)_repairEncodedImagesDuringMigration:(id)migration;
- (BOOL)_table:(id)_table containsColumn:(id)column;
- (BOOL)_updateAvailableActionsDuringMigration:(id)migration;
- (BOOL)_updateCompleteLocalHashesDuringMigration:(id)migration;
- (BOOL)_updateDeviceAndPreferredPaymentApplicationsDuringMigration:(id)migration;
- (BOOL)_updateDevicePaymentApplicationsDuringMigration:(id)migration;
- (BOOL)_updateEffectivePaymentApplicationStateDuringMigration:(id)migration;
- (BOOL)_updateEncodedImageSetsDuringMigration:(id)migration;
- (BOOL)_updateEncodedPaymentPassDuringMigration:(id)migration;
- (BOOL)_updateExpressPassTypesMaskDuringMigration:(id)migration;
- (BOOL)_updateFrontAndBackFieldBucketsDuringMigration:(id)migration;
- (BOOL)_updateHasStoredValueDuringMigration:(id)migration;
- (BOOL)_updateHasUserSelectableContactlessPaymentApplications:(id)applications;
- (BOOL)_updateIngestedDatesDuringMigration:(id)migration;
- (BOOL)_updateIssuerCountryCodesDuringMigration:(id)migration;
- (BOOL)_updateLocalizedDescriptionDuringMigration:(id)migration;
- (BOOL)_updateNFCPayloadDuringMigration:(id)migration;
- (BOOL)_updateOrganizationNamesDuringMigration:(id)migration;
- (BOOL)_updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration:(id)migration;
- (BOOL)_updatePrivateLabelAndCobrandDuringMigration:(id)migration;
- (BOOL)_updateSettingsDuringMigration:(id)migration;
- (BOOL)_updateSubcredentialsDuringMigration:(id)migration;
- (BOOL)_updateTransactionSourceIdentifiersDuringMigration:(id)migration;
- (BOOL)hasPassForUniqueID:(id)d;
- (BOOL)hasPassesMatchingPassDescriptionPredicate:(id)predicate;
- (BOOL)passDBIsAvailable;
- (NPKGizmoDatabase)init;
- (NSArray)passDescriptions;
- (NSDictionary)manifestHashes;
- (id)_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)identifier;
- (id)_decodeObjectOfClass:(Class)class fromStatement:(sqlite3_stmt *)statement column:(int)column;
- (id)_decodeObjectOfClasses:(id)classes fromStatement:(sqlite3_stmt *)statement column:(int)column;
- (id)_diffForUniqueIDLocked:(id)locked;
- (id)_getPreferredPaymentApplicationForPaymentPass:(id)pass aid:(id *)aid;
- (id)_lastAddValueAmountForPassWithUniqueIDLocked:(id)locked;
- (id)_libraryHashLockedForWatchOSMajorVersion:(unint64_t)version;
- (id)_passForUniqueIDLocked:(id)locked includeImageSets:(BOOL)sets;
- (id)_passUniqueIdentifierForTransactionSourceIdentifierLocked:(id)locked;
- (id)_paymentBalancesForPassWithUniqueIDLocked:(id)locked;
- (id)_pendingAddValueDateForPassWithUniqueIDLocked:(id)locked;
- (id)_subcredentialsForPassWithUniqueIDLocked:(id)locked paymentApplicationIdentifier:(id)identifier;
- (id)_transactionSourceIdentifierForPassUniqueIdentifierLocked:(id)locked;
- (id)_transactionSourceIdentifierForTransactionWithIdentifierLocked:(id)locked;
- (id)_transactionSourceIdentifierForTransactionWithServiceIdentifierLocked:(id)locked;
- (id)_transactionWithIdentifierLocked:(id)locked;
- (id)_transactionWithServiceIdentifierLocked:(id)locked;
- (id)_transactionsForTransactionSourceIdentifierLocked:(id)locked withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderByDate:(int64_t)byDate limit:(unint64_t)limit;
- (id)_transitAppletStateForPassWithUniqueIDLocked:(id)locked;
- (id)currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)identifier;
- (id)diffForUniqueID:(id)d;
- (id)filteredPassesUsingPassDescriptionPredicate:(id)predicate includeImageSets:(BOOL)sets;
- (id)lastAddValueAmountForPassWithUniqueID:(id)d;
- (id)libraryHashForWatchOSMajorVersion:(unint64_t)version;
- (id)manifestHashesForWatchOSMajorVersion:(unint64_t)version;
- (id)passForUniqueID:(id)d includeImageSets:(BOOL)sets;
- (id)passUniqueIDForTransactionSourceIdentifier:(id)identifier;
- (id)paymentBalancesForPassWithUniqueID:(id)d;
- (id)pendingAddValueDateForPassWithUniqueID:(id)d;
- (id)preferredPaymentApplicationForPaymentPass:(id)pass;
- (id)rebuildDatabaseWithPasses:(id)passes;
- (id)removePassWithUniqueID:(id)d;
- (id)restoreBlockForVolatilePassData;
- (id)savePass:(id)pass isLocalPass:(BOOL)localPass;
- (id)subcredentialsForPassWithUniqueID:(id)d paymentApplicationIdentifier:(id)identifier;
- (id)transactionSourceIdentifierForPassWithUniqueID:(id)d;
- (id)transactionSourceIdentifierForTransactionWithIdentifier:(id)identifier;
- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)identifier;
- (id)transactionWithIdentifier:(id)identifier;
- (id)transactionWithServiceIdentifier:(id)identifier;
- (id)transactionsForTransactionSourceIdentifier:(id)identifier withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit;
- (id)transitAppletStateForPassWithUniqueID:(id)d;
- (int64_t)_databaseVersionExists:(BOOL *)exists valid:(BOOL *)valid;
- (sqlite3)database;
- (sqlite3_stmt)currentEphemeralTransactionIdentifierStatement;
- (sqlite3_stmt)deleteAllSubcredentialsForPassUniqueIDStatement;
- (sqlite3_stmt)deleteEphemeralTransactionByTransactionSourceIdentifierStatement;
- (sqlite3_stmt)deleteStatement;
- (sqlite3_stmt)deleteSubcredentialsStatement;
- (sqlite3_stmt)deleteTransactionSourceIdentifierForPassStatement;
- (sqlite3_stmt)deleteTransactionsForTransactionSourceStatement;
- (sqlite3_stmt)insertDiffStatement;
- (sqlite3_stmt)insertEphemeralTransactionStatement;
- (sqlite3_stmt)insertStatement;
- (sqlite3_stmt)insertSubcredentialsStatement;
- (sqlite3_stmt)insertTransactionSourceIdentifierForPassStatement;
- (sqlite3_stmt)insertTransactionStatement;
- (sqlite3_stmt)removeTransactionStatement;
- (sqlite3_stmt)removeTransactionWithServiceIdentifierStatement;
- (sqlite3_stmt)selectBalancesForPassStatement;
- (sqlite3_stmt)selectDeletePendingStatement;
- (sqlite3_stmt)selectLastAddValueAmountForPassStatement;
- (sqlite3_stmt)selectPassAndImageSetsDataStatement;
- (sqlite3_stmt)selectPassDataStatement;
- (sqlite3_stmt)selectPassDiffStatement;
- (sqlite3_stmt)selectPassExistsStatement;
- (sqlite3_stmt)selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
- (sqlite3_stmt)selectPendingAddValueDateForPassStatement;
- (sqlite3_stmt)selectPreferredAIDStatement;
- (sqlite3_stmt)selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement;
- (sqlite3_stmt)selectTransactionWithIdentifierStatement;
- (sqlite3_stmt)selectTransactionWithServiceIdentifierStatement;
- (sqlite3_stmt)selectTransactionsStatementWithTransactionSource:(unint64_t)source orderByDate:(int64_t)date limit:(unint64_t)limit;
- (sqlite3_stmt)selectTransitAppletStateForPassStatement;
- (sqlite3_stmt)trimTransactionsForTransactionSourceStatement;
- (sqlite3_stmt)updateBalancesForPassStatement;
- (sqlite3_stmt)updateDeletePendingStatement;
- (sqlite3_stmt)updateLastAddValueAmountForPassStatement;
- (sqlite3_stmt)updatePendingAddValueDateForPassStatement;
- (sqlite3_stmt)updatePreferredAIDStatement;
- (sqlite3_stmt)updateTransitAppletStateForPassStatement;
- (unint64_t)numberOfPasses;
- (void)_attemptDatabaseOpen;
- (void)_createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:(id)locked;
- (void)_enumerateAllPassesForMigration:(id)migration;
- (void)_executeSQLQuery:(id)query processResultsBlock:(id)block;
- (void)_handleDatabaseChangedExternally;
- (void)_handleFirstUnlock;
- (void)_handleHasMigrationDataSource;
- (void)_inQueue_teardownDB;
- (void)_insertDatabaseVersionRow:(int64_t)row;
- (void)_loadInitialManifestLocked;
- (void)_notifyDatabaseChangedExternally;
- (void)_notifyDatabaseChangedWithNoop:(BOOL)noop firstUnlock:(BOOL)unlock;
- (void)_performTransactionWithBlock:(id)block;
- (void)_rebuildDatabaseWithPassesFromCompanionPasses;
- (void)_removeSubcredentialsForPassWithUniqueIDLocked:(id)locked;
- (void)_removeTransactionSourceIdentifierForPassWithUniqueIDLocked:(id)locked;
- (void)_removeTransactionWithIdentifier:(id)identifier;
- (void)_removeTransactionWithServiceIdentifierLocked:(id)locked forTransactionSourceIdentifier:(id)identifier;
- (void)_removeTransactionsForTransactionSource:(id)source;
- (void)_saveDiffLocked:(id)locked forPassWithUniqueID:(id)d;
- (void)_savePassLocked:(id)locked locallyAdded:(BOOL)added wasUpdate:(BOOL *)update;
- (void)_saveTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier withPaymentCredentialType:(int64_t)type shouldTrim:(BOOL)trim;
- (void)_saveTransactionLocked:(id)locked forTransactionSourceIdentifier:(id)identifier;
- (void)_setCurrentEphemeralTransactionIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier;
- (void)_setLastAddValueAmountLocked:(id)locked forPassWithUniqueID:(id)d;
- (void)_setPaymentBalancesLocked:(id)locked forPassWithUniqueID:(id)d;
- (void)_setPendingAddValueDateLocked:(id)locked forPassWithUniqueID:(id)d;
- (void)_setSubcredentialsLocked:(id)locked forPassWithUniqueID:(id)d paymentApplicationIdentifier:(id)identifier;
- (void)_setTransitAppletStateLocked:(id)locked forPassWithUniqueID:(id)d;
- (void)_trimTransactionsForTransactionSourceIdentifierLocked:(id)locked withPaymentCredentialType:(int64_t)type;
- (void)_updateDatabaseVersionRow:(int64_t)row;
- (void)_verifyPassDataIsUnarchivedCorrectlyWithData:(id)data forPassWithUniqueID:(id)d;
- (void)dealloc;
- (void)enumerateAllPassesAndDescriptionsWithBlock:(id)block includeImageSets:(BOOL)sets;
- (void)enumerateAllPassesWithBlock:(id)block includeImageSets:(BOOL)sets;
- (void)removeTransactionWithIdentifier:(id)identifier;
- (void)removeTransactionsForTransactionSource:(id)source;
- (void)saveDiff:(id)diff forPassWithUniqueID:(id)d;
- (void)saveTransaction:(id)transaction forPass:(id)pass;
- (void)setCurrentEphemeralTransactionIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier;
- (void)setDeletePending:(BOOL)pending forUniqueID:(id)d;
- (void)setLastAddValueAmount:(id)amount forPassWithUniqueID:(id)d;
- (void)setPaymentBalances:(id)balances forPassWithUniqueID:(id)d;
- (void)setPendingAddValueDate:(id)date forPassWithUniqueID:(id)d;
- (void)setPreferredPaymentApplication:(id)application forPaymentPass:(id)pass;
- (void)setSubcredentials:(id)subcredentials forPassWithUniqueID:(id)d paymentApplicationIdentifier:(id)identifier;
- (void)setTransitAppletState:(id)state forPassWithUniqueID:(id)d;
- (void)teardownDB;
@end

@implementation NPKGizmoDatabase

+ (id)sharedDatabase
{
  if (sharedDatabase_onceToken != -1)
  {
    +[NPKGizmoDatabase sharedDatabase];
  }

  v3 = sharedDatabase_sharedDatabase;

  return v3;
}

void __34__NPKGizmoDatabase_sharedDatabase__block_invoke()
{
  v0 = objc_alloc_init(NPKGizmoDatabase);
  v1 = sharedDatabase_sharedDatabase;
  sharedDatabase_sharedDatabase = v0;
}

+ (id)_migrationDelegateQueue
{
  if (_migrationDelegateQueue_onceToken != -1)
  {
    +[NPKGizmoDatabase _migrationDelegateQueue];
  }

  v3 = _migrationDelegateQueue_queue;

  return v3;
}

void __43__NPKGizmoDatabase__migrationDelegateQueue__block_invoke()
{
  v0 = dispatch_queue_create("NPKGizmoDatabaseMigrationDelegateQueue", 0);
  v1 = _migrationDelegateQueue_queue;
  _migrationDelegateQueue_queue = v0;
}

+ (id)_migrationDataSource
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  _migrationDelegateQueue = [self _migrationDelegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NPKGizmoDatabase__migrationDataSource__block_invoke;
  block[3] = &unk_2799457C8;
  block[4] = &v6;
  dispatch_sync(_migrationDelegateQueue, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NPKGizmoDatabase__migrationDataSource__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&__MigrationDataSource);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

+ (void)setMigrationDataSource:(id)source
{
  sourceCopy = source;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  _migrationDelegateQueue = [self _migrationDelegateQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __43__NPKGizmoDatabase_setMigrationDataSource___block_invoke;
  v11 = &unk_279944FE8;
  v13 = &v14;
  v6 = sourceCopy;
  v12 = v6;
  dispatch_sync(_migrationDelegateQueue, &v8);

  if (v6 && (v15[3] & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"NPKGizmoDatabaseMigrationDataSourceSetNotification" object:0];
  }

  _Block_object_dispose(&v14, 8);
}

id __43__NPKGizmoDatabase_setMigrationDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&__MigrationDataSource);
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != 0;

  v3 = *(a1 + 32);

  return objc_storeWeak(&__MigrationDataSource, v3);
}

- (NPKGizmoDatabase)init
{
  v8.receiver = self;
  v8.super_class = NPKGizmoDatabase;
  v2 = [(NPKGizmoDatabase *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassbook.NPKGizmoDatabase", 0);
    dbQueue = v2->_dbQueue;
    v2->_dbQueue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NPKGizmoDatabaseChangedExternally, @"_NPKGizmoDatabaseExternallyChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NPKGizmoDatabaseKeybagFirstUnlock, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleHasMigrationDataSource name:@"NPKGizmoDatabaseMigrationDataSourceSetNotification" object:0];
    [(NPKGizmoDatabase *)v2 setPassDBIsAvailable:0];
  }

  return v2;
}

- (void)dealloc
{
  sqlite3_finalize(self->_deleteStatement);
  sqlite3_finalize(self->_insertStatement);
  sqlite3_finalize(self->_insertDiffStatement);
  sqlite3_finalize(self->_selectPassDataStatement);
  sqlite3_finalize(self->_selectPassAndImageSetsDataStatement);
  sqlite3_finalize(self->_selectPassExitsStatement);
  sqlite3_finalize(self->_selectPassDiffStatement);
  sqlite3_finalize(self->_updateDeletePendingStatement);
  sqlite3_finalize(self->_selectDeletePendingStatement);
  sqlite3_finalize(self->_updatePreferredAIDStatement);
  sqlite3_finalize(self->_selectPreferredAIDStatement);
  sqlite3_finalize(self->_insertTransactionStatement);
  sqlite3_finalize(self->_removeTransactionStatement);
  sqlite3_finalize(self->_removeTransactionWithServiceIdentifier);
  sqlite3_finalize(self->_selectTransactionsStatement);
  sqlite3_finalize(self->_selectTransactionsStatementWithSource);
  sqlite3_finalize(self->_selectTransactionsStatementWithoutSource);
  sqlite3_finalize(self->_selectTransactionWithIdentifierStatement);
  sqlite3_finalize(self->_selectTransactionWithServiceIdentifierStatement);
  sqlite3_finalize(self->_insertTransactionSourceIdentifierForPassStatement);
  sqlite3_finalize(self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement);
  sqlite3_finalize(self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement);
  sqlite3_finalize(self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement);
  sqlite3_finalize(self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement);
  sqlite3_finalize(self->_deleteTransactionSourceIdentifierForPassStatement);
  sqlite3_finalize(self->_deleteTransactionsForTransactionSourceStatement);
  sqlite3_finalize(self->_trimTransactionsForTransactionSourceStatement);
  sqlite3_finalize(self->_selectTransitAppletStateForPassStatement);
  sqlite3_finalize(self->_updateTransitAppletStateForPassStatement);
  sqlite3_finalize(self->_insertEphemeralTransactionStatement);
  sqlite3_finalize(self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement);
  sqlite3_finalize(self->_currentEphemeralTransactionIdentifierStatement);
  sqlite3_finalize(self->_selectLastAddValueAmountForPassStatement);
  sqlite3_finalize(self->_updateLastAddValueAmountForPassStatement);
  sqlite3_finalize(self->_selectPendingAddValueDateForPassStatement);
  sqlite3_finalize(self->_updatePendingAddValueDateForPassStatement);
  sqlite3_finalize(self->_selectBalancesForPassStatement);
  sqlite3_finalize(self->_updateBalancesForPassStatement);
  sqlite3_finalize(self->_insertSubcredentialsStatement);
  sqlite3_finalize(self->_deleteSubcredentialsStatement);
  sqlite3_finalize(self->_deleteAllSubcredentialsForPassUniqueIDStatement);
  sqlite3_close(self->_database);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = NPKGizmoDatabase;
  [(NPKGizmoDatabase *)&v5 dealloc];
}

- (BOOL)_executeSQL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  errmsg = 0;
  v5 = sqlite3_exec(-[NPKGizmoDatabase database](self, "database"), [lCopy UTF8String], 0, 0, &errmsg);
  v6 = v5;
  if (v5)
  {
    v7 = errmsg;
    if (!errmsg)
    {
      v5 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
      v7 = v5;
    }

    v8 = pk_General_log(v5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        *buf = 138413058;
        v17 = v12;
        v18 = 2112;
        v19 = lCopy;
        v20 = 1024;
        v21 = v6;
        v22 = 2080;
        v23 = v7;
        v13 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: %@: Could not execute SQL: %@: [%d, %s]", buf, 0x26u);
      }
    }
  }

  return v6 == 0;
}

- (void)_executeSQLQuery:(id)query processResultsBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  ppStmt = 0;
  v8 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [queryCopy UTF8String], -1, &ppStmt, 0);
  if (v8)
  {
    v9 = pk_General_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v15 = "[NPKGizmoDatabase _executeSQLQuery:processResultsBlock:]";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 452;
        v20 = 2112;
        v21 = queryCopy;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare %@ statement)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  blockCopy[2](blockCopy, 1, ppStmt);
  sqlite3_reset(ppStmt);
  sqlite3_finalize(ppStmt);
}

- (sqlite3)database
{
  v66 = *MEMORY[0x277D85DE8];
  p_database = &self->_database;
  if (self->_database)
  {
    return *p_database;
  }

  v51 = 0;
  while (1)
  {
    _preconditionsMetForDatabaseOpen = [(NPKGizmoDatabase *)self _preconditionsMetForDatabaseOpen];
    if ((_preconditionsMetForDatabaseOpen & 1) == 0)
    {
      break;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = NPKHomeDirectoryPath();
    if (([defaultManager fileExistsAtPath:v7] & 1) == 0)
    {
      [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v8 = NPKHomeDirectoryPath();
    v9 = [v8 stringByAppendingPathComponent:@"nanopasses.sqlite3"];

    v10 = sqlite3_open_v2([v9 UTF8String], p_database, 3145734, 0);
    if (!v10)
    {
      while (1)
      {
        v26 = sqlite3_exec(*p_database, "PRAGMA journal_mode = WAL;", 0, 0, 0);
        if (v26 != 5)
        {
          break;
        }

        usleep(0x14u);
      }

      v27 = v26;
      if (v26)
      {
        v29 = pk_General_log(v26);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

        if (v30)
        {
          v31 = pk_General_log(v28);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v57) = v27;
            _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_ERROR, "Error: Couldn't set journal mode on database (result %d)", buf, 8u);
          }
        }
      }

      else
      {
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __28__NPKGizmoDatabase_database__block_invoke;
        v55[3] = &unk_279948040;
        v55[4] = self;
        v28 = [(NPKGizmoDatabase *)self _migrateDatabase:v55];
        if (v28)
        {
LABEL_40:
          v42 = pk_General_log([(NPKGizmoDatabase *)self setPassDBIsAvailable:1]);
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

          if (v43)
          {
            v45 = pk_General_log(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = *p_database;
              *buf = 134218242;
              v57 = v46;
              v58 = 2112;
              v59 = v9;
              _os_log_impl(&dword_25B300000, v45, OS_LOG_TYPE_DEFAULT, "Notice: Gizmo database %p opened! at:%@ Broadcasting database changed notification", buf, 0x16u);
            }
          }

          [(NPKGizmoDatabase *)self _notifyForFirstUnlock];
          v21 = 0;
          goto LABEL_45;
        }
      }

      v32 = pk_General_log(v28);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (v33)
      {
        v35 = pk_General_log(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v35, OS_LOG_TYPE_ERROR, "Error: Database is in a bad state; deleting and recreating", buf, 2u);
        }
      }

      sqlite3_close_v2(self->_database);
      self->_database = 0;
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v54 = 0;
      [defaultManager2 removeItemAtPath:v9 error:&v54];
      v37 = v54;
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-shm", v9];
      v53 = v37;
      [defaultManager2 removeItemAtPath:v38 error:&v53];
      v39 = v53;

      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-wal", v9];
      v52 = v39;
      [defaultManager2 removeItemAtPath:v40 error:&v52];
      v41 = v52;

      [(NPKGizmoDatabase *)self _notifyDatabaseChangedExternally];
      ++v51;

      goto LABEL_40;
    }

    v11 = v10;
    if (v10 != 23 && v10 != 14)
    {
      v22 = pk_General_log(v10);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (v23)
      {
        v25 = pk_General_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v57 = "[NPKGizmoDatabase database]";
          v58 = 2082;
          v59 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v60 = 2048;
          v61 = 497;
          v62 = 2112;
          v63 = v9;
          v64 = 1024;
          v65 = v11;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Couldn't open %@ (result %d))", buf, 0x30u);
        }
      }

      _NPKAssertAbort();
    }

    v12 = pk_General_log(v10);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v9;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Authorization denied to pass database: %@", buf, 0xCu);
      }
    }

    v16 = NPKProtectedDataAvailable();
    if (v16)
    {
      v17 = pk_General_log(v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        v20 = pk_General_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v57 = "[NPKGizmoDatabase database]";
          v58 = 2082;
          v59 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v60 = 2048;
          v61 = 489;
          v62 = 2112;
          v63 = v9;
          v64 = 1024;
          v65 = v11;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Couldn't open %@ (result %d), and NPKProtectedDataAvailable = YES)", buf, 0x30u);
        }
      }

      _NPKAssertAbort();
    }

    *p_database = 0;
    v21 = 1;
LABEL_45:

    if (*p_database || (v21 & 1) != 0 || v51 >= 5)
    {
      return *p_database;
    }
  }

  v47 = pk_Payment_log(_preconditionsMetForDatabaseOpen);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

  if (v48)
  {
    v50 = pk_Payment_log(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v50, OS_LOG_TYPE_DEFAULT, "Notice: Not opening database because we don't have what we need to migrate it", buf, 2u);
    }
  }

  return *p_database;
}

uint64_t __28__NPKGizmoDatabase_database__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = 1;
  if (a2 < 1 && a3 >= 1)
  {
    v6 = [*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS pass (unique_id TEXT NOT NULL, type_id TEXT NOT NULL, style INTEGER, hash BLOB NOT NULL, encoded_pass BLOB NOT NULL, encoded_diff BLOB, logo_text TEXT, logo_image BLOB, background_color BLOB, label_color BLOB, foreground_color BLOB, delete_pending INTEGER DEFAULT 0, background_image BLOB);"}];
    if (!v6)
    {
      v11 = 0;
      v8 = 1;
      v7 = 1;
      goto LABEL_26;
    }

    v6 = [*(a1 + 32) _executeSQL:@"CREATE UNIQUE INDEX IF NOT EXISTS pass_unique_id_idx ON pass(unique_id)"];
  }

  if (a2 < 2 && a3 >= 2 && v6)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD preferred_aid TEXT;"];
  }

  v7 = a2 < 3;
  if (a2 <= 2 && a3 >= 3 && v6)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD nfc_payload BLOB;"];
    v7 = 1;
  }

  v8 = a2 < 4;
  v9 = a2 > 3 || a3 < 4;
  v10 = v9;
  v11 = v10 & v6;
  if (!v9 && v6)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD private_label INTEGER DEFAULT 0;"];
    if (v6)
    {
      v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD cobranded INTEGER DEFAULT 0;"];
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v8 = 1;
  }

LABEL_26:
  v54 = v8;
  v55 = v7;
  if (a2 < 5 && a3 >= 5)
  {
    if (v11)
    {
      v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_primary_payment_application BLOB;"];
      if (v6)
      {
        v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD preferred_payment_application BLOB;"];
        v11 = v6;
        goto LABEL_31;
      }

      v11 = 0;
    }

    v13 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    v53 = 1;
    v49 = 1;
    goto LABEL_70;
  }

LABEL_31:
  v53 = a2 < 6;
  if (a2 < 6 && a3 >= 6 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD ingested_date INTEGER;"];
    v11 = v6;
  }

  if (a2 < 7 && a3 >= 7 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD complete_hash BLOB"];
    v11 = v6;
  }

  v52 = a2 < 8;
  if (a2 < 8 && a3 >= 8 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD effective_payment_application_state INTEGER DEFAULT 0"];
    v11 = v6;
  }

  v51 = a2 < 9;
  if (a2 <= 8 && a3 >= 9 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD has_user_selectable_payment_applications INTEGER DEFAULT 0"];
    v11 = v6;
  }

  v50 = a2 < 11;
  if (a2 < 11 && a3 >= 11 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD has_stored_value INTEGER DEFAULT 0"];
    v11 = v6;
  }

  v49 = a2 < 12;
  if (a2 < 12 && a3 >= 12 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD settings INTEGER DEFAULT 0"];
    v11 = v6;
  }

  if (a2 <= 12 && a3 >= 13 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD complete_hashes BLOB"];
    v11 = v6;
  }

  v12 = a2 < 45;
  if (a2 <= 44 && a3 >= 45 && v11)
  {
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD available_actions BLOB"];
    [*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS transactions (pass_unique_id TEXT NOT NULL, transaction_id TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, transaction_date INTEGER, transaction_sources INTEGER, encoded_transaction BLOB NOT NULL);"}];
    [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS transactions_pass_unique_id_index ON transactions(pass_unique_id)"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD organization_name TEXT"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD transaction_source INTEGER"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD has_notification_service_data INTEGER"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD felica_transit_applet_state BLOB"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD front_field_buckets BLOB"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD back_field_buckets BLOB"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD transaction_type INTEGER"];
    [*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS ephemeral_transactions (pass_unique_id TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, transaction_id TEXT NOT NULL);"}];
    [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS ephemeral_transactions_pass_index ON ephemeral_transactions(pass_unique_id)"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD last_add_value_amount TEXT"];
    [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD localized_description TEXT"];
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD pending_add_value_date INTEGER"];
  }

  v13 = a2 < 28;
  v14 = a3 > 27 && a2 < 28;
  if ((v14 & v11) == 1)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_payment_applications BLOB"];
    v11 = v6;
    v13 = 1;
LABEL_70:
    v12 = 1;
  }

  if (a2 > 33 || a3 < 34)
  {
    goto LABEL_76;
  }

  if (!v11)
  {
    LODWORD(v44) = 0;
LABEL_104:
    HIDWORD(v44) = 1;
    v47 = 1;
    v48 = 1;
    goto LABEL_105;
  }

  v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_primary_contactless_payment_application BLOB;"];
  if (!v6)
  {
    LODWORD(v44) = 0;
    v11 = 0;
    goto LABEL_104;
  }

  v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD device_primary_in_app_payment_application BLOB;"];
  v11 = v6;
LABEL_76:
  v48 = a2 < 44;
  if (a2 <= 43 && a3 >= 44 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD encoded_image_sets BLOB"];
    v11 = v6;
  }

  v47 = a2 < 47;
  if (a2 < 47 && a3 >= 47 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD issuer_country_code BLOB"];
    v11 = v6;
  }

  HIDWORD(v44) = a2 < 48;
  if (a2 <= 47 && a3 >= 48 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD express_pass_types_mask INTEGER DEFAULT 0"];
    v11 = v6;
  }

  if (a2 <= 49 && a3 >= 50 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD complete_remote_hashes BLOB"];
    v11 = v6;
  }

  if ((a2 - 48) > 2)
  {
    LODWORD(v44) = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _table:@"pass" containsColumn:@"issuer_country_code"];
    if ((v6 & 1) == 0)
    {
      v15 = pk_General_log(v6);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = pk_General_log(v6);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Solving DB corruption cause by DB v48", buf, 2u);
        }
      }

      if (v11)
      {
        v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD issuer_country_code BLOB"];
        v11 = v6;
      }
    }

    LODWORD(v44) = 1;
  }

LABEL_105:
  if (a2 < 53 && a3 >= 53)
  {
    if (!v11)
    {
      goto LABEL_123;
    }

    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD cloudkit_archived INTEGER"];
    if (!v6)
    {
      v11 = 0;
      goto LABEL_123;
    }

    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD supports_pp INTEGER"];
    v11 = v6;
  }

  if (a2 <= 53 && a3 >= 54 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD service_identifier TEXT"];
    v11 = v6;
  }

  if (a2 < 56 && a3 >= 56 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD balances BLOB"];
    v11 = v6;
  }

  if (a2 < 57 && a3 >= 57 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD subcredentials BLOB"];
    v11 = v6;
  }

LABEL_123:
  v18 = 1;
  if (a2 < 58 && a3 >= 58)
  {
    v6 = [*(a1 + 32) _table:@"transactions" containsColumn:@"transaction_source_identifier"];
    v18 = v6;
    if (v6 & 1 | ((v11 & 1) == 0))
    {
      v11 &= v6;
    }

    else
    {
      v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE transactions ADD transaction_source_identifier TEXT"];
      if (v6 && (v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE ephemeral_transactions ADD transaction_source_identifier TEXT"], v6) && (v6 = objc_msgSend(*(a1 + 32), "_executeSQL:", @"CREATE TABLE IF NOT EXISTS transaction_source (transaction_source_identifier TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, type INTEGER DEFAULT 0, pass_unique_id TEXT);"), v6))
      {
        v6 = [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS transaction_source_index ON transactions(transaction_source_identifier)"];
        v11 = v6;
      }

      else
      {
        v11 = 0;
      }

      v18 = 0;
    }
  }

  if (a2 <= 58 && a3 >= 59)
  {
    v6 = [*(a1 + 32) _table:@"pass" containsColumn:@"subcredentials"];
    if (!(v6 & 1 | ((v11 & 1) == 0)))
    {
      v6 = [*(a1 + 32) _executeSQL:@"ALTER TABLE pass ADD subcredentials BLOB"];
      v11 = v6;
    }
  }

  v20 = a2 < 60 && a3 > 59;
  v22 = a2 < 61 && a3 > 60;
  v23 = !v22 & v11;
  if (v22 && v11)
  {
    v6 = [*(a1 + 32) _executeSQL:{@"CREATE TABLE IF NOT EXISTS subcredentials (pass_unique_id TEXT, payment_application_id TEXT, encoded_subcredentials BLOB);"}];
    if (v6)
    {
      v6 = [*(a1 + 32) _executeSQL:@"CREATE INDEX IF NOT EXISTS subcredentials_index ON subcredentials(pass_unique_id)"];
      v23 = v6;
    }

    else
    {
      v23 = 0;
    }

    LOBYTE(v22) = 1;
  }

  v25 = a2 < 62 && a3 > 61 || v20;
  v56 = v25;
  v26 = pk_General_log(v6);
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

  if (v27)
  {
    v29 = pk_General_log(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v23;
      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: schema applied successfully: %d", buf, 8u);
    }
  }

  v30 = v23 ^ 1;
  if (a3 <= a2)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = pk_General_log(v28);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v34 = pk_General_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: Generating potentially-missing description fields", buf, 2u);
      }
    }

    *buf = 0;
    v60 = buf;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__13;
    v63 = __Block_byref_object_dispose__13;
    v64 = [MEMORY[0x277CBEB18] array];
    v35 = *(a1 + 32);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __28__NPKGizmoDatabase_database__block_invoke_273;
    v58[3] = &unk_279948018;
    v58[5] = buf;
    v58[6] = a2;
    v58[4] = v35;
    [v35 _enumerateAllPassesForMigration:v58];
    v36 = [*(v60 + 5) count];
    if (v36)
    {
      if (v55)
      {
        v36 = [*(a1 + 32) _updateNFCPayloadDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      else
      {
        v23 = 1;
      }

      if ((v54 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updatePrivateLabelAndCobrandDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 4 && v23)
      {
        v36 = [*(a1 + 32) _updateDeviceAndPreferredPaymentApplicationsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v53 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateIngestedDatesDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v52 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateEffectivePaymentApplicationStateDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v51 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateHasUserSelectableContactlessPaymentApplications:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 9 && v23)
      {
        v36 = [*(a1 + 32) _updateEncodedPaymentPassDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 9 && v23)
      {
        v36 = [*(a1 + 32) _updateEffectivePaymentApplicationStateDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 9 && v23)
      {
        v36 = [*(a1 + 32) _updateHasUserSelectableContactlessPaymentApplications:*(v60 + 5)];
        v23 = v36;
      }

      if ((v50 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateHasStoredValueDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v49 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateSettingsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 13 && v23)
      {
        v36 = [*(a1 + 32) _updateCompleteLocalHashesDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v12 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateAvailableActionsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v12 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateOrganizationNamesDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v12 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateFrontAndBackFieldBucketsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v12 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateLocalizedDescriptionDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v12 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateLocalizedDescriptionDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v13 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateDevicePaymentApplicationsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 33 && v23)
      {
        v36 = [*(a1 + 32) _updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v48 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateEncodedImageSetsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if (a2 <= 45 && v23)
      {
        v36 = [*(a1 + 32) _repairEncodedImagesDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v47 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateIssuerCountryCodesDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v46 & v23) == 1)
      {
        v36 = [*(a1 + 32) _updateExpressPassTypesMaskDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      if ((v45 & v23) == 1)
      {
        v36 = [*(a1 + 32) _table:@"pass" containsColumn:@"issuer_country_code"];
        if (v36)
        {
          v23 = 1;
        }

        else
        {
          v36 = [*(a1 + 32) _updateIssuerCountryCodesDuringMigration:*(v60 + 5)];
          v23 = v36;
        }
      }

      if (a2 <= 54 && v23)
      {
        v36 = [*(a1 + 32) _updateCompleteRemoteHashesDuringMigration];
        v23 = v36;
      }

      v37 = v23 ^ 1;
      if (a2 > 57)
      {
        v37 = 1;
      }

      if (((v18 | v37) & 1) == 0)
      {
        v36 = [*(a1 + 32) _updateTransactionSourceIdentifiersDuringMigration:*(v60 + 5)];
        v23 = v36;
      }

      v38 = !v22;
      if (a2 > 60)
      {
        v38 = 1;
      }

      if ((v38 & 1) == 0 && v23)
      {
        v36 = [*(a1 + 32) _updateSubcredentialsDuringMigration:*(v60 + 5)];
        v23 = v36;
      }
    }

    else
    {
      v23 = 1;
    }

    if (v56)
    {
      v39 = pk_General_log(v36);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

      if (v40)
      {
        v42 = pk_General_log(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 0;
          _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding payment passes migration step needed", v57, 2u);
        }
      }

      [*(a1 + 32) _rebuildDatabaseWithPassesFromCompanionPasses];
    }

    _Block_object_dispose(buf, 8);
  }

  return v23;
}

void __28__NPKGizmoDatabase_database__block_invoke_273(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = *(a1 + 48);
  if (v8 < 3)
  {
    v9 = [v5 nfcPayload];

    if (v9)
    {
      v10 = [v5 nfcPayload];
      [v7 setObject:v10 forKeyedSubscript:@"nfcPayload"];
    }

    v8 = *(a1 + 48);
  }

  v11 = 0x277CCA000uLL;
  if (v8 <= 3)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [v5 paymentPass];
    v14 = [v12 numberWithBool:{objc_msgSend(v13, "isPrivateLabel")}];
    [v7 setObject:v14 forKeyedSubscript:@"privateLabel"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [v5 paymentPass];
    v17 = [v15 numberWithBool:{objc_msgSend(v16, "isCobranded")}];
    [v7 setObject:v17 forKeyedSubscript:@"cobranded"];

    v8 = *(a1 + 48);
  }

  if (v8 < 10)
  {
    v18 = [v5 paymentPass];
    v19 = [objc_opt_class() _migrationDataSource];
    v20 = [v19 secureElementIdentifiers];

    if (v20)
    {
      [v18 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v20];
    }

    if (v18)
    {
      v21 = [v18 devicePrimaryPaymentApplication];
      [v7 setObject:v21 forKeyedSubscript:@"devicePrimaryPaymentApplication"];

      if (v6)
      {
        v22 = [v18 devicePaymentApplications];
        v75 = MEMORY[0x277D85DD0];
        v76 = 3221225472;
        v77 = __28__NPKGizmoDatabase_database__block_invoke_2;
        v78 = &unk_279947FF0;
        v79 = v6;
        v80 = v7;
        [v22 enumerateObjectsUsingBlock:&v75];
      }

      v23 = NPKSecureArchiveObject(v18);
      [v7 setObject:v23 forKeyedSubscript:@"encodedPass"];
    }

    v8 = *(a1 + 48);
    if (v8 <= 5)
    {
      v24 = [v5 ingestedDate];

      if (v24)
      {
        v25 = [v5 ingestedDate];
        [v7 setObject:v25 forKeyedSubscript:@"ingestedDate"];
      }

      v8 = *(a1 + 48);
    }

    if (v8 < 10)
    {
      v26 = [v5 paymentPass];
      v27 = v26;
      if (v26)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "effectiveContactlessPaymentApplicationState")}];
        [v7 setObject:v28 forKeyedSubscript:@"effectivePaymentApplicationState"];
      }

      v8 = *(a1 + 48);
      if (v8 < 10)
      {
        v29 = [v5 paymentPass];
        v30 = v29;
        if (v29)
        {
          v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v29, "npkHasUserSelectableContactlessPaymentApplications")}];
          [v7 setObject:v31 forKeyedSubscript:@"hasUserSelectableContactlessPaymentApplications"];
        }

        v8 = *(a1 + 48);
      }
    }
  }

  if (v8 < 11)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "hasStoredValue")}];
    [v7 setObject:v32 forKeyedSubscript:@"hasStoredValue"];

    v8 = *(a1 + 48);
  }

  if (v8 <= 11)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "settings")}];
    [v7 setObject:v33 forKeyedSubscript:@"settings"];

    v8 = *(a1 + 48);
  }

  if (v8 <= 13)
  {
    v34 = [v5 npkCompleteHash];
    [v7 setObject:v34 forKeyedSubscript:@"completeHash"];

    v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
    if ([objc_opt_class() latestWatchOSMajorVersion])
    {
      v36 = 0;
      do
      {
        v37 = [v5 npkCompleteHashForWatchOSVersion:{v36 + 1, v75, v76, v77, v78}];
        [v35 setObject:v37 atIndexedSubscript:v36];

        ++v36;
      }

      while (v36 < [objc_opt_class() latestWatchOSMajorVersion]);
    }

    v38 = [v35 copy];
    [v7 setObject:v38 forKeyedSubscript:@"completeLocalHashes"];

    v8 = *(a1 + 48);
  }

  if (v8 <= 44)
  {
    v39 = [v5 paymentPass];
    v40 = [v39 availableActions];
    [v7 setObject:v40 forKeyedSubscript:@"availableActions"];

    if (*(a1 + 48) <= 44)
    {
      v41 = [v5 organizationName];
      [v7 setObject:v41 forKeyedSubscript:@"organizationName"];

      if (*(a1 + 48) <= 44)
      {
        v42 = [v5 frontFieldBuckets];
        [v7 setObject:v42 forKeyedSubscript:@"frontFieldBuckets"];

        v43 = [v5 backFieldBuckets];
        [v7 setObject:v43 forKeyedSubscript:@"backFieldBuckets"];

        if (*(a1 + 48) <= 44)
        {
          v44 = [v5 localizedDescription];
          [v7 setObject:v44 forKeyedSubscript:@"localizedDescription"];
        }
      }
    }
  }

  v45 = [v5 paymentPass];
  if (v45)
  {
    v46 = [objc_opt_class() _migrationDataSource];
    v47 = [v46 secureElementIdentifiers];

    if (v47)
    {
      [v45 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v47];
    }
  }

  v48 = *(a1 + 48);
  if (v48 <= 27)
  {
    v49 = [v45 devicePaymentApplications];
    [v7 setObject:v49 forKeyedSubscript:@"devicePaymentApplications"];

    v48 = *(a1 + 48);
  }

  if (v48 <= 33)
  {
    v50 = [v45 devicePrimaryContactlessPaymentApplication];
    [v7 setObject:v50 forKeyedSubscript:@"devicePrimaryContactlessPaymentApplication"];

    v51 = [v45 devicePrimaryInAppPaymentApplication];
    [v7 setObject:v51 forKeyedSubscript:@"devicePrimaryInAppPaymentApplication"];

    v48 = *(a1 + 48);
  }

  if (v48 <= 43)
  {
    v52 = objc_alloc(MEMORY[0x277D37F80]);
    v53 = [v52 initWithDictionary:MEMORY[0x277CBEC10] bundle:0];
    if (v53)
    {
      v54 = [v5 copy];
      [v53 setMissingImageSetsFromObject:v54];
      [v54 flushLoadedImageSets];
      v55 = NPKSecureArchiveObject(v53);
      [v7 setObject:v55 forKeyedSubscript:@"encodedImageSets"];

      v56 = NPKSecureArchiveObject(v54);
      [v7 setObject:v56 forKeyedSubscript:@"encodedPassWithoutImageSets"];
    }

    v48 = *(a1 + 48);
  }

  if (v48 < 46)
  {
    v57 = [v5 logoImage];
    v58 = v57;
    if (v57)
    {
      v59 = NPKSecureArchiveObject(v57);
      if (v59)
      {
        [v7 setObject:v59 forKeyedSubscript:@"encodedLogoImageData"];
      }
    }

    v60 = [v5 backgroundImage];
    if (!v60)
    {
      goto LABEL_63;
    }

    if ([v5 style] == 2)
    {
      v61 = MEMORY[0x277D37F20];
      v62 = [v5 backgroundImage];
      [v62 size];
      v63 = [v61 constraintsWithFixedSize:?];

      v64 = [v5 backgroundImage];
      v65 = [v64 blurredImageWithRadius:27 constraints:v63];

      v11 = 0x277CCA000;
      if (!v65)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v65 = [v5 backgroundImage];
      if (!v65)
      {
LABEL_62:

LABEL_63:
        v48 = *(a1 + 48);
        goto LABEL_64;
      }
    }

    v66 = NPKSecureArchiveObject(v65);
    [v7 setObject:v66 forKeyedSubscript:@"encodedBackgroundImageData"];

    goto LABEL_62;
  }

LABEL_64:
  if (v48 < 47)
  {
    v67 = [v45 issuerCountryCode];
    [v7 setObject:v67 forKeyedSubscript:@"issuerCountryCode"];

    v48 = *(a1 + 48);
  }

  if (v48 <= 47)
  {
    v68 = [*(v11 + 2992) numberWithUnsignedInteger:NPKPassDescriptionExpressTypesMaskWithPass(v5)];
    [v7 setObject:v68 forKeyedSubscript:@"expressPassTypesMask"];

    v48 = *(a1 + 48);
  }

  if ((v48 - 48) <= 2)
  {
    if (([*(a1 + 32) _table:@"pass" containsColumn:@"issuer_country_code"] & 1) == 0)
    {
      v69 = [v45 issuerCountryCode];
      [v7 setObject:v69 forKeyedSubscript:@"issuerCountryCode"];
    }

    v48 = *(a1 + 48);
  }

  if (v48 <= 54)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"migrateCompleteHashes"];
    v48 = *(a1 + 48);
  }

  if (v45 && v48 <= 57)
  {
    v70 = [MEMORY[0x277CCAD78] UUID];
    v71 = [v70 UUIDString];
    [v7 setObject:v71 forKeyedSubscript:@"transactionSourceIdentifier"];

    v48 = *(a1 + 48);
  }

  if (v48 <= 60)
  {
    v72 = [v45 devicePrimaryPaymentApplication];
    v73 = [v72 applicationIdentifier];
    [v7 setObject:v73 forKeyedSubscript:@"devicePrimaryPaymentApplicationIdentifier"];
  }

  if ([v7 count])
  {
    v74 = [v5 uniqueID];
    [v7 setObject:v74 forKeyedSubscript:@"uniqueID"];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void __28__NPKGizmoDatabase_database__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 applicationIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:@"preferredPaymentApplication"];
    *a3 = 1;
  }
}

- (sqlite3_stmt)deleteStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_deleteStatement = &self->_deleteStatement;
  if (!self->_deleteStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM pass WHERE unique_id = ?", -1, p_deleteStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase deleteStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1072;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare deletion statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_deleteStatement;
}

- (sqlite3_stmt)insertStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_insertStatement = &self->_insertStatement;
  if (!self->_insertStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO pass (unique_id, type_id, style, hash, encoded_pass, encoded_image_sets, encoded_diff, logo_text, logo_image, background_color, label_color, foreground_color, background_image, nfc_payload, private_label, cobranded, device_payment_applications, device_primary_payment_application, device_primary_contactless_payment_application, device_primary_in_app_payment_application, preferred_aid, preferred_payment_application, ingested_date, complete_hash, delete_pending, effective_payment_application_state, has_user_selectable_payment_applications, has_stored_value, settings, complete_hashes, issuer_country_code, available_actions, organization_name, felica_transit_applet_state, front_field_buckets, back_field_buckets, last_add_value_amount, localized_description, pending_add_value_date, express_pass_types_mask, complete_remote_hashes, supports_pp, balances) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, p_insertStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase insertStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1082;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare pass insertion statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_insertStatement;
}

- (sqlite3_stmt)insertDiffStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_insertDiffStatement = &self->_insertDiffStatement;
  if (!self->_insertDiffStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET encoded_diff = ? WHERE unique_id = ?", -1, p_insertDiffStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase insertDiffStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1092;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare diff insertion statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_insertDiffStatement;
}

- (sqlite3_stmt)updateDeletePendingStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_updateDeletePendingStatement = &self->_updateDeletePendingStatement;
  if (!self->_updateDeletePendingStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET delete_pending = ? WHERE unique_id = ?", -1, p_updateDeletePendingStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase updateDeletePendingStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1102;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update delete pending statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_updateDeletePendingStatement;
}

- (sqlite3_stmt)selectDeletePendingStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectDeletePendingStatement = &self->_selectDeletePendingStatement;
  if (!self->_selectDeletePendingStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT delete_pending FROM pass WHERE unique_id = ?", -1, p_selectDeletePendingStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectDeletePendingStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1111;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass diff statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectDeletePendingStatement;
}

- (sqlite3_stmt)updatePreferredAIDStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_updatePreferredAIDStatement = &self->_updatePreferredAIDStatement;
  if (!self->_updatePreferredAIDStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET preferred_aid = ?, preferred_payment_application = ? WHERE unique_id = ?", -1, p_updatePreferredAIDStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase updatePreferredAIDStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1121;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update delete pending statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_updatePreferredAIDStatement;
}

- (sqlite3_stmt)selectPreferredAIDStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectPreferredAIDStatement = &self->_selectPreferredAIDStatement;
  if (!self->_selectPreferredAIDStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT preferred_aid FROM pass WHERE unique_id = ?", -1, p_selectPreferredAIDStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPreferredAIDStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1130;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass diff statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectPreferredAIDStatement;
}

- (sqlite3_stmt)selectPassDataStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectPassDataStatement = &self->_selectPassDataStatement;
  if (!self->_selectPassDataStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_pass FROM pass WHERE unique_id = ?", -1, p_selectPassDataStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPassDataStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1139;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass data statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectPassDataStatement;
}

- (sqlite3_stmt)selectPassAndImageSetsDataStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectPassAndImageSetsDataStatement = &self->_selectPassAndImageSetsDataStatement;
  if (!self->_selectPassAndImageSetsDataStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_pass, encoded_image_sets FROM pass WHERE unique_id = ?", -1, p_selectPassAndImageSetsDataStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPassAndImageSetsDataStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1149;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass data statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectPassAndImageSetsDataStatement;
}

- (sqlite3_stmt)selectPassExistsStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectPassExitsStatement = &self->_selectPassExitsStatement;
  if (!self->_selectPassExitsStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT EXISTS (SELECT 1 FROM pass WHERE unique_id = ?);", -1, p_selectPassExitsStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPassExistsStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1159;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select exists pass statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectPassExitsStatement;
}

- (sqlite3_stmt)selectPassDiffStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectPassDiffStatement = &self->_selectPassDiffStatement;
  if (!self->_selectPassDiffStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_diff FROM pass WHERE unique_id = ?", -1, p_selectPassDiffStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPassDiffStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1168;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pass diff statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectPassDiffStatement;
}

- (sqlite3_stmt)insertTransactionStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_insertTransactionStatement = &self->_insertTransactionStatement;
  if (!self->_insertTransactionStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO transactions (transaction_source_identifier, pass_unique_id, transaction_id, transaction_date, transaction_source, transaction_type, has_notification_service_data, encoded_transaction, cloudkit_archived, service_identifier) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", -1, p_insertTransactionStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase insertTransactionStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1176;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert transaction statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_insertTransactionStatement;
}

- (sqlite3_stmt)removeTransactionStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_removeTransactionStatement = &self->_removeTransactionStatement;
  if (!self->_removeTransactionStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_id = ?", -1, p_removeTransactionStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase removeTransactionStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1184;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare remove transaction statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_removeTransactionStatement;
}

- (sqlite3_stmt)removeTransactionWithServiceIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_removeTransactionWithServiceIdentifier = &self->_removeTransactionWithServiceIdentifier;
  if (!self->_removeTransactionWithServiceIdentifier)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_source_identifier = ? AND service_identifier = ?", -1, p_removeTransactionWithServiceIdentifier, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase removeTransactionWithServiceIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1192;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare remove transaction with service identifier statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_removeTransactionWithServiceIdentifier;
}

- (sqlite3_stmt)selectTransactionsStatementWithTransactionSource:(unint64_t)source orderByDate:(int64_t)date limit:(unint64_t)limit
{
  v35 = *MEMORY[0x277D85DE8];
  if (date == -1)
  {
    v8 = @"ORDER BY transaction_date ASC";
  }

  else
  {
    v8 = @"ORDER BY transaction_date DESC";
  }

  v9 = [(__CFString *)v8 mutableCopy];
  v10 = v9;
  if (limit)
  {
    [v9 appendString:@" LIMIT ?"];
  }

  if (source == 2)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND transaction_source == 0 %@", @"SELECT encoded_transaction FROM transactions WHERE transaction_source_identifier = ? AND ((? OR has_notification_service_data == ?) OR ((? OR transaction_type == ?) AND (? OR transaction_type != ?))) AND transaction_date >= ? AND transaction_date <= ?", v10];
    p_selectTransactionsStatementWithoutSource = &self->_selectTransactionsStatementWithoutSource;
    if (self->_selectTransactionsStatementWithoutSource)
    {
      goto LABEL_27;
    }

    v23 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, p_selectTransactionsStatementWithoutSource, 0);
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = pk_General_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (!v25)
    {
      goto LABEL_26;
    }

    v17 = pk_General_log(v26);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

LABEL_26:
      _NPKAssertAbort();
    }

    *buf = 136446722;
    v30 = "[NPKGizmoDatabase selectTransactionsStatementWithTransactionSource:orderByDate:limit:]";
    v31 = 2082;
    v32 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
    v33 = 2048;
    v34 = 1237;
    v18 = "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transactions without source for pass statement)";
    goto LABEL_24;
  }

  if (source == 1)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND transaction_source != 0 %@", @"SELECT encoded_transaction FROM transactions WHERE transaction_source_identifier = ? AND ((? OR has_notification_service_data == ?) OR ((? OR transaction_type == ?) AND (? OR transaction_type != ?))) AND transaction_date >= ? AND transaction_date <= ?", v10];
    p_selectTransactionsStatementWithoutSource = &self->_selectTransactionsStatementWithSource;
    if (self->_selectTransactionsStatementWithSource)
    {
      goto LABEL_27;
    }

    v19 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, p_selectTransactionsStatementWithoutSource, 0);
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = pk_General_log(v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (!v21)
    {
      goto LABEL_26;
    }

    v17 = pk_General_log(v22);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446722;
    v30 = "[NPKGizmoDatabase selectTransactionsStatementWithTransactionSource:orderByDate:limit:]";
    v31 = 2082;
    v32 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
    v33 = 2048;
    v34 = 1230;
    v18 = "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transactions with source for pass statement)";
LABEL_24:
    _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x20u);
    goto LABEL_25;
  }

  if (source)
  {
    v27 = 0;
    goto LABEL_29;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"SELECT encoded_transaction FROM transactions WHERE transaction_source_identifier = ? AND ((? OR has_notification_service_data == ?) OR ((? OR transaction_type == ?) AND (? OR transaction_type != ?))) AND transaction_date >= ? AND transaction_date <= ?", v10];
  p_selectTransactionsStatementWithoutSource = &self->_selectTransactionsStatement;
  if (!self->_selectTransactionsStatement)
  {
    v13 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [v11 UTF8String], -1, p_selectTransactionsStatementWithoutSource, 0);
    if (v13)
    {
      v14 = pk_General_log(v13);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
        goto LABEL_26;
      }

      v17 = pk_General_log(v16);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136446722;
      v30 = "[NPKGizmoDatabase selectTransactionsStatementWithTransactionSource:orderByDate:limit:]";
      v31 = 2082;
      v32 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
      v33 = 2048;
      v34 = 1223;
      v18 = "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transactions for pass statement)";
      goto LABEL_24;
    }
  }

LABEL_27:
  v27 = *p_selectTransactionsStatementWithoutSource;

LABEL_29:
  return v27;
}

- (sqlite3_stmt)selectTransactionWithIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectTransactionWithIdentifierStatement = &self->_selectTransactionWithIdentifierStatement;
  if (!self->_selectTransactionWithIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_transaction FROM transactions WHERE transaction_id = ?", -1, p_selectTransactionWithIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectTransactionWithIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1249;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectTransactionWithIdentifierStatement;
}

- (sqlite3_stmt)selectTransactionWithServiceIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectTransactionWithIdentifierStatement = &self->_selectTransactionWithIdentifierStatement;
  if (!self->_selectTransactionWithIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT encoded_transaction FROM transactions WHERE service_identifier = ?", -1, p_selectTransactionWithIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectTransactionWithServiceIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1257;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction with service identifier statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectTransactionWithIdentifierStatement;
}

- (sqlite3_stmt)insertTransactionSourceIdentifierForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_insertTransactionSourceIdentifierForPassStatement = &self->_insertTransactionSourceIdentifierForPassStatement;
  if (!self->_insertTransactionSourceIdentifierForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO transaction_source (transaction_source_identifier, type, pass_unique_id) VALUES (?, ?, ?)", -1, p_insertTransactionSourceIdentifierForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase insertTransactionSourceIdentifierForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1265;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert transaction source identifier for pass statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_insertTransactionSourceIdentifierForPassStatement;
}

- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = &self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
  if (!self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_source_identifier FROM transactions WHERE transaction_id = ?", -1, p_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectTransactionSourceIdentifierForTransactionWithIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1273;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction identifier statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
}

- (sqlite3_stmt)selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_source_identifier FROM transactions WHERE service_identifier = ?", -1, &self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1281;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction service identifier statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
}

- (sqlite3_stmt)selectTransactionSourceIdentifierForPassUniqueIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = &self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
  if (!self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_source_identifier FROM transaction_source WHERE pass_unique_id = ?", -1, p_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectTransactionSourceIdentifierForPassUniqueIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1289;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction service identifier statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
}

- (sqlite3_stmt)selectPassUniqueIdentifierForTransactionSourceIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = &self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
  if (!self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT pass_unique_id FROM transaction_source WHERE transaction_source_identifier = ?", -1, p_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPassUniqueIdentifierForTransactionSourceIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1297;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transaction source identifier for transaction service identifier statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
}

- (sqlite3_stmt)deleteTransactionSourceIdentifierForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_deleteTransactionSourceIdentifierForPassStatement = &self->_deleteTransactionSourceIdentifierForPassStatement;
  if (!self->_deleteTransactionSourceIdentifierForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transaction_source WHERE pass_unique_id = ?", -1, p_deleteTransactionSourceIdentifierForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase deleteTransactionSourceIdentifierForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1305;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete transaction source identifier for pass statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_deleteTransactionSourceIdentifierForPassStatement;
}

- (sqlite3_stmt)deleteTransactionsForTransactionSourceStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_deleteTransactionsForTransactionSourceStatement = &self->_deleteTransactionsForTransactionSourceStatement;
  if (!self->_deleteTransactionsForTransactionSourceStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_source_identifier = ?", -1, p_deleteTransactionsForTransactionSourceStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase deleteTransactionsForTransactionSourceStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1313;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete transactions for transaction source statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_deleteTransactionsForTransactionSourceStatement;
}

- (sqlite3_stmt)trimTransactionsForTransactionSourceStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_trimTransactionsForTransactionSourceStatement = &self->_trimTransactionsForTransactionSourceStatement;
  if (!self->_trimTransactionsForTransactionSourceStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM transactions WHERE transaction_source_identifier = ? AND transaction_id NOT IN (SELECT transaction_id FROM transactions WHERE transaction_source_identifier = ? ORDER BY transaction_date DESC LIMIT ?)", -1, p_trimTransactionsForTransactionSourceStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase trimTransactionsForTransactionSourceStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1321;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare trim transactions for transaction source statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_trimTransactionsForTransactionSourceStatement;
}

- (sqlite3_stmt)selectTransitAppletStateForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_selectTransitAppletStateForPassStatement = &self->_selectTransitAppletStateForPassStatement;
  if (!self->_selectTransitAppletStateForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT felica_transit_applet_state FROM pass WHERE unique_id = ?", -1, p_selectTransitAppletStateForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectTransitAppletStateForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1334;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select transit applet state statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_selectTransitAppletStateForPassStatement;
}

- (sqlite3_stmt)updateTransitAppletStateForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_updateTransitAppletStateForPassStatement = &self->_updateTransitAppletStateForPassStatement;
  if (!self->_updateTransitAppletStateForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET felica_transit_applet_state = ? WHERE unique_id = ?", -1, p_updateTransitAppletStateForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase updateTransitAppletStateForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1348;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update transit applet state statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_updateTransitAppletStateForPassStatement;
}

- (sqlite3_stmt)insertEphemeralTransactionStatement
{
  v15 = *MEMORY[0x277D85DE8];
  p_insertEphemeralTransactionStatement = &self->_insertEphemeralTransactionStatement;
  if (!self->_insertEphemeralTransactionStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO ephemeral_transactions (transaction_source_identifier, transaction_id) VALUES (?, ?)", -1, p_insertEphemeralTransactionStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase insertEphemeralTransactionStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1357;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert ephemeral transaction statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return *p_insertEphemeralTransactionStatement;
}

- (sqlite3_stmt)deleteEphemeralTransactionByTransactionSourceIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM ephemeral_transactions WHERE transaction_source_identifier = ?", -1, &self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase deleteEphemeralTransactionByTransactionSourceIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1366;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete ephemeral transaction statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement;
}

- (sqlite3_stmt)currentEphemeralTransactionIdentifierStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_currentEphemeralTransactionIdentifierStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT transaction_id FROM ephemeral_transactions WHERE transaction_source_identifier = ? LIMIT 1", -1, &self->_currentEphemeralTransactionIdentifierStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase currentEphemeralTransactionIdentifierStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1374;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare current ephemeral transaction statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_currentEphemeralTransactionIdentifierStatement;
}

- (sqlite3_stmt)selectLastAddValueAmountForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_selectLastAddValueAmountForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT last_add_value_amount FROM pass WHERE unique_id = ?", -1, &self->_selectLastAddValueAmountForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectLastAddValueAmountForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1383;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select last add value amount statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_selectLastAddValueAmountForPassStatement;
}

- (sqlite3_stmt)updateLastAddValueAmountForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_updateLastAddValueAmountForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET last_add_value_amount = ? WHERE unique_id = ?", -1, &self->_updateLastAddValueAmountForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase updateLastAddValueAmountForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1392;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update last add value amount statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_updateLastAddValueAmountForPassStatement;
}

- (sqlite3_stmt)selectPendingAddValueDateForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_selectPendingAddValueDateForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT pending_add_value_date FROM pass WHERE unique_id = ?", -1, &self->_selectPendingAddValueDateForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectPendingAddValueDateForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1401;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select pending add value date statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_selectPendingAddValueDateForPassStatement;
}

- (sqlite3_stmt)updatePendingAddValueDateForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_updatePendingAddValueDateForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET pending_add_value_date = ? WHERE unique_id = ?", -1, &self->_updatePendingAddValueDateForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase updatePendingAddValueDateForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1410;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update pending add value date statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_updatePendingAddValueDateForPassStatement;
}

- (sqlite3_stmt)selectBalancesForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_selectBalancesForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT balances FROM pass WHERE unique_id = ?", -1, &self->_selectBalancesForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase selectBalancesForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1419;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select balances state statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_selectBalancesForPassStatement;
}

- (sqlite3_stmt)updateBalancesForPassStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_updateBalancesForPassStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "UPDATE pass SET balances = ? WHERE unique_id = ?", -1, &self->_updateBalancesForPassStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase updateBalancesForPassStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1428;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare update balances state statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_updateBalancesForPassStatement;
}

- (sqlite3_stmt)insertSubcredentialsStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_insertSubcredentialsStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "INSERT INTO subcredentials (pass_unique_id, payment_application_id, encoded_subcredentials) VALUES (?, ?, ?)", -1, &self->_insertSubcredentialsStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase insertSubcredentialsStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1437;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare insert subcredentials statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_insertSubcredentialsStatement;
}

- (sqlite3_stmt)deleteSubcredentialsStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_deleteSubcredentialsStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM subcredentials WHERE pass_unique_id = ? AND payment_application_id = ?", -1, &self->_deleteSubcredentialsStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase deleteSubcredentialsStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1445;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete subcredentials statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_deleteSubcredentialsStatement;
}

- (sqlite3_stmt)deleteAllSubcredentialsForPassUniqueIDStatement
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_deleteAllSubcredentialsForPassUniqueIDStatement)
  {
    v3 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "DELETE FROM subcredentials WHERE pass_unique_id = ?", -1, &self->_deleteAllSubcredentialsForPassUniqueIDStatement, 0);
    if (v3)
    {
      v4 = pk_General_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446722;
          v10 = "[NPKGizmoDatabase deleteAllSubcredentialsForPassUniqueIDStatement]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v13 = 2048;
          v14 = 1453;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare delete all subcredentials for pass statement)", &v9, 0x20u);
        }
      }

      _NPKAssertAbort();
    }
  }

  return self->_deleteAllSubcredentialsForPassUniqueIDStatement;
}

- (void)_loadInitialManifestLocked
{
  v114 = *MEMORY[0x277D85DE8];
  if (!self->_manifest || !self->_passDescriptions)
  {
    database = [(NPKGizmoDatabase *)self database];
    if (database)
    {
      v4 = pk_General_log(database);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v7 = pk_General_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Lazily loading initial manifest", buf, 2u);
        }
      }

      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      manifest = self->_manifest;
      self->_manifest = v8;

      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      passDescriptions = self->_passDescriptions;
      self->_passDescriptions = v10;

      ppStmt = 0;
      v12 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], "SELECT unique_id, type_id, style, hash, logo_text, logo_image, background_color, label_color, foreground_color, delete_pending, background_image, nfc_payload, private_label, cobranded, device_payment_applications, device_primary_payment_application, device_primary_contactless_payment_application, device_primary_in_app_payment_application, preferred_payment_application, ingested_date, complete_hash, effective_payment_application_state, has_user_selectable_payment_applications, has_stored_value, settings, complete_hashes, issuer_country_code, available_actions, organization_name, felica_transit_applet_state, front_field_buckets, back_field_buckets, last_add_value_amount, localized_description, pending_add_value_date, express_pass_types_mask, complete_remote_hashes, supports_pp FROM pass", -1, &ppStmt, 0);
      if (v12)
      {
        v13 = pk_General_log(v12);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

        if (!v14)
        {
          return;
        }

        v16 = pk_General_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = NPKHomeDirectoryPath();
          v18 = [v17 stringByAppendingPathComponent:@"nanopasses.sqlite3"];
          v19 = NPKGetMyProcessName();
          *buf = 138412546;
          v109 = v18;
          v110 = 2112;
          v111 = v19;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: *** CORRUPTED / INVALID PASS DATABASE: Unable to prepare select pass descriptions statement; this most likely means you need to delete the database at %@ and kill %@", buf, 0x16u);
        }

        goto LABEL_50;
      }

      if (sqlite3_step(ppStmt) == 100)
      {
        v20 = 0x277CCA000uLL;
        v21 = 0x277CBE000uLL;
        v22 = 0x277CBE000uLL;
        do
        {
          v106 = [*(v20 + 3240) stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
          v105 = [*(v20 + 3240) stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
          v84 = sqlite3_column_int(ppStmt, 2);
          v23 = sqlite3_column_blob(ppStmt, 3);
          v104 = [*(v21 + 2704) dataWithBytes:v23 length:{sqlite3_column_bytes(ppStmt, 3)}];
          v24 = sqlite3_column_text(ppStmt, 4);
          if (v24)
          {
            v103 = [*(v20 + 3240) stringWithUTF8String:v24];
          }

          else
          {
            v103 = 0;
          }

          v25 = sqlite3_column_blob(ppStmt, 5);
          v26 = sqlite3_column_bytes(ppStmt, 5);
          if (v26 < 1)
          {
            v102 = 0;
          }

          else
          {
            v102 = [*(v21 + 2704) dataWithBytes:v25 length:v26];
          }

          v101 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:6];
          v100 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:7];
          v99 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:8];
          v87 = sqlite3_column_int(ppStmt, 9);
          v27 = sqlite3_column_blob(ppStmt, 10);
          v28 = sqlite3_column_bytes(ppStmt, 10);
          if (v28 < 1)
          {
            v98 = 0;
          }

          else
          {
            v98 = [*(v21 + 2704) dataWithBytes:v27 length:v28];
          }

          v97 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:11];
          v86 = sqlite3_column_int(ppStmt, 12);
          v85 = sqlite3_column_int(ppStmt, 13);
          v29 = *(v22 + 2968);
          v30 = objc_opt_class();
          v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
          v96 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v31 fromStatement:ppStmt column:14];

          v95 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:15];
          v94 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:16];
          v93 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:17];
          v92 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:18];
          v91 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_int(ppStmt, 19)}];
          v32 = sqlite3_column_blob(ppStmt, 20);
          v33 = sqlite3_column_bytes(ppStmt, 20);
          if (v33 < 1)
          {
            v90 = 0;
          }

          else
          {
            v90 = [*(v21 + 2704) dataWithBytes:v32 length:v33];
          }

          v34 = sqlite3_column_int(ppStmt, 21);
          v82 = sqlite3_column_int(ppStmt, 22);
          v81 = sqlite3_column_int(ppStmt, 23);
          v83 = sqlite3_column_int64(ppStmt, 24);
          v35 = *(v22 + 2968);
          v36 = objc_opt_class();
          v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
          v38 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v37 fromStatement:ppStmt column:25];

          v39 = sqlite3_column_text(ppStmt, 26);
          if (v39)
          {
            v89 = [*(v20 + 3240) stringWithUTF8String:v39];
          }

          else
          {
            v89 = 0;
          }

          v40 = *(v22 + 2968);
          v41 = objc_opt_class();
          v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
          v88 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v42 fromStatement:ppStmt column:27];

          v43 = sqlite3_column_text(ppStmt, 28);
          v44 = v34;
          if (v43)
          {
            v80 = [*(v20 + 3240) stringWithUTF8String:v43];
          }

          else
          {
            v80 = 0;
          }

          v79 = [(NPKGizmoDatabase *)self _decodeObjectOfClass:objc_opt_class() fromStatement:ppStmt column:29];
          v45 = *(v22 + 2968);
          v46 = objc_opt_class();
          v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
          v78 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v47 fromStatement:ppStmt column:30];

          v48 = *(v22 + 2968);
          v49 = objc_opt_class();
          v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
          v77 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v50 fromStatement:ppStmt column:31];

          v51 = sqlite3_column_text(ppStmt, 32);
          if (v51 && *v51)
          {
            v52 = [*(v20 + 3240) stringWithUTF8String:v51];
            v76 = [MEMORY[0x277CCA980] decimalNumberWithString:v52];
          }

          else
          {
            v76 = 0;
          }

          v53 = v44;
          v54 = sqlite3_column_text(ppStmt, 33);
          if (v54)
          {
            v75 = [*(v20 + 3240) stringWithUTF8String:v54];
          }

          else
          {
            v75 = 0;
          }

          v55 = sqlite3_column_int(ppStmt, 34);
          if (v55)
          {
            v74 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v55];
          }

          else
          {
            v74 = 0;
          }

          v73 = sqlite3_column_int64(ppStmt, 35);
          v56 = *(v22 + 2968);
          v57 = objc_opt_class();
          v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
          v59 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v58 fromStatement:ppStmt column:36];

          v60 = sqlite3_column_int(ppStmt, 37);
          v72 = v60;
          v61 = pk_General_log(v60);
          v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);

          if (v62)
          {
            v64 = pk_General_log(v63);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v109 = v106;
              v110 = 2112;
              v111 = v38;
              v112 = 2112;
              v113 = v59;
              _os_log_impl(&dword_25B300000, v64, OS_LOG_TYPE_DEFAULT, "Notice: Initial manifest encountered key %@ local %@ remote %@", buf, 0x20u);
            }
          }

          v71 = objc_alloc_init(NPKGizmoDatabaseManifestEntry);
          [(NPKGizmoDatabaseManifestEntry *)v71 setUniqueID:v106];
          [(NPKGizmoDatabaseManifestEntry *)v71 setLocalManifestHashes:v38];
          [(NPKGizmoDatabaseManifestEntry *)v71 setRemoteManifestHashes:v59];
          [(NSMutableDictionary *)self->_manifest setObject:v71 forKeyedSubscript:v106];
          v65 = objc_alloc_init(NPKPassDescription);
          [(NPKPassDescription *)v65 setUniqueID:v106];
          [(NPKPassDescription *)v65 setPassTypeIdentifier:v105];
          [(NPKPassDescription *)v65 setStyle:v84];
          [(NPKPassDescription *)v65 setManifestHash:v104];
          [(NPKPassDescription *)v65 setLogoText:v103];
          [(NPKPassDescription *)v65 setLogoImageEncoded:v102];
          [(NPKPassDescription *)v65 setBackgroundColor:v101];
          [(NPKPassDescription *)v65 setLabelColor:v100];
          [(NPKPassDescription *)v65 setForegroundColor:v99];
          [(NPKPassDescription *)v65 setDeletePending:v87 != 0];
          [(NPKPassDescription *)v65 setBackgroundImageEncoded:v98];
          [(NPKPassDescription *)v65 setNfcPayload:v97];
          [(NPKPassDescription *)v65 setPrivateLabel:v86 != 0];
          [(NPKPassDescription *)v65 setCobranded:v85 != 0];
          [(NPKPassDescription *)v65 setDevicePaymentApplications:v96];
          [(NPKPassDescription *)v65 setDevicePrimaryPaymentApplication:v95];
          [(NPKPassDescription *)v65 setDevicePrimaryContactlessPaymentApplication:v94];
          [(NPKPassDescription *)v65 setDevicePrimaryInAppPaymentApplication:v93];
          [(NPKPassDescription *)v65 setPreferredPaymentApplication:v92];
          [(NPKPassDescription *)v65 setEffectivePaymentApplicationState:v53];
          [(NPKPassDescription *)v65 setIngestionDate:v91];
          [(NPKPassDescription *)v65 setCompleteHash:v90];
          [(NPKPassDescription *)v65 setHasUserSelectableContactlessPaymentApplications:v82 != 0];
          [(NPKPassDescription *)v65 setHasStoredValue:v81 != 0];
          [(NPKPassDescription *)v65 setSettings:v83];
          [(NPKPassDescription *)v65 setIssuerCountryCode:v89];
          [(NPKPassDescription *)v65 setAvailableActions:v88];
          [(NPKPassDescription *)v65 setOrganizationName:v80];
          [(NPKPassDescription *)v65 setTransitAppletState:v79];
          [(NPKPassDescription *)v65 setFrontFieldBuckets:v78];
          [(NPKPassDescription *)v65 setBackFieldBuckets:v77];
          [(NPKPassDescription *)v65 setLastAddValueAmount:v76];
          [(NPKPassDescription *)v65 setLocalizedDescription:v75];
          [(NPKPassDescription *)v65 setPendingAddValueDate:v74];
          [(NPKPassDescription *)v65 setExpressPassTypesMask:v73];
          [(NPKPassDescription *)v65 setHasAssociatedPeerPaymentAccount:v72 != 0];
          [(NSMutableArray *)self->_passDescriptions addObject:v65];

          v20 = 0x277CCA000;
          v21 = 0x277CBE000;
          v22 = 0x277CBE000;
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      sqlite3_clear_bindings(ppStmt);
      sqlite3_reset(ppStmt);
      v66 = sqlite3_finalize(ppStmt);
      v67 = pk_General_log(v66);
      v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);

      if (v68)
      {
        v16 = pk_General_log(v69);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v70 = self->_manifest;
          *buf = 138412290;
          v109 = v70;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Loaded initial manifest: %@", buf, 0xCu);
        }

LABEL_50:
      }
    }
  }
}

- (void)_performTransactionWithBlock:(id)block
{
  blockCopy = block;
  isInTransaction = self->_isInTransaction;
  if (isInTransaction || (v6 = [(NPKGizmoDatabase *)self _executeSQL:@"BEGIN IMMEDIATE TRANSACTION;"], self->_isInTransaction = v6, v6))
  {
    v7 = blockCopy[2](blockCopy);
    if (!isInTransaction)
    {
      if (v7)
      {
        [(NPKGizmoDatabase *)self _executeSQL:@"COMMIT;"];
        self->_isInTransaction = 0;
      }

      else
      {
        v8 = pk_General_log(v7);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

        if (v9)
        {
          v11 = pk_General_log(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Rolling back transaction", v12, 2u);
          }
        }

        [(NPKGizmoDatabase *)self _executeSQL:@"ROLLBACK;"];
        self->_isInTransaction = 0;
      }
    }
  }
}

- (id)_decodeObjectOfClasses:(id)classes fromStatement:(sqlite3_stmt *)statement column:(int)column
{
  classesCopy = classes;
  v8 = sqlite3_column_blob(statement, column);
  v9 = sqlite3_column_bytes(statement, column);
  if (v9 < 1)
  {
    v12 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v9];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:0];
      v12 = [v11 decodeObjectOfClasses:classesCopy forKey:*MEMORY[0x277CCA308]];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)_decodeObjectOfClass:(Class)class fromStatement:(sqlite3_stmt *)statement column:(int)column
{
  v5 = *&column;
  v8 = [MEMORY[0x277CBEB98] setWithObject:class];
  v9 = [(NPKGizmoDatabase *)self _decodeObjectOfClasses:v8 fromStatement:statement column:v5];

  return v9;
}

- (id)savePass:(id)pass isLocalPass:(BOOL)localPass
{
  v35 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v7 = passCopy;
  if (!passCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[NPKGizmoDatabase savePass:isLocalPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v33 = 1696;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot save nil pass)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  uniqueID = [passCopy uniqueID];

  if (!uniqueID)
  {
    v14 = pk_General_log(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v17 = pk_General_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[NPKGizmoDatabase savePass:isLocalPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v33 = 1697;
        LOWORD(v34) = 2112;
        *(&v34 + 2) = v7;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Pass %@ has nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  npkCompleteHash = [v7 npkCompleteHash];

  if (!npkCompleteHash)
  {
    v20 = pk_General_log(v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v23 = pk_General_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[NPKGizmoDatabase savePass:isLocalPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v33 = 1698;
        LOWORD(v34) = 2112;
        *(&v34 + 2) = v7;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Pass %@ has nil complete hash)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__13;
  *&v34 = __Block_byref_object_dispose__13;
  *(&v34 + 1) = 0;
  dbQueue = self->_dbQueue;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke;
  v28[3] = &unk_279948068;
  v28[4] = self;
  v29 = v7;
  localPassCopy = localPass;
  v30 = buf;
  v25 = v7;
  dispatch_sync(dbQueue, v28);
  v26 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v26;
}

void __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "[NPKGizmoDatabase savePass:isLocalPass:]_block_invoke";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 1703;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  buf[0] = 0;
  [*(a1 + 32) _savePassLocked:*(a1 + 40) locallyAdded:*(a1 + 56) wasUpdate:buf];
  v6 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke_465;
  block[3] = &unk_279946490;
  v12 = buf[0];
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [*(a1 + 32) _notifyDatabaseChangedExternally];
  [*(a1 + 32) _notifyDatabaseChangedWithNoop:0];
}

void __41__NPKGizmoDatabase_savePass_isLocalPass___block_invoke_465(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = &NPKGizmoDatabasePassUpdatedNotificationName;
  if (!*(a1 + 48))
  {
    v3 = &NPKGizmoDatabasePassAddedNotificationName;
  }

  v4 = *v3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = NPKGizmoDatabasePassKeyName;
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 postNotificationName:v4 object:v6 userInfo:v7];
}

- (void)saveDiff:(id)diff forPassWithUniqueID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  dCopy = d;
  if (!dCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase saveDiff:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 1721;
        v24 = 2112;
        v25 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unique ID %@ is nil)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NPKGizmoDatabase_saveDiff_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = diffCopy;
  v17 = dCopy;
  v13 = dCopy;
  v14 = diffCopy;
  dispatch_sync(dbQueue, block);
}

uint64_t __49__NPKGizmoDatabase_saveDiff_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase saveDiff:forPassWithUniqueID:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1725;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  return [*(a1 + 32) _saveDiffLocked:*(a1 + 40) forPassWithUniqueID:*(a1 + 48)];
}

- (id)removePassWithUniqueID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v5 = pk_General_log(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[NPKGizmoDatabase removePassWithUniqueID:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v17 = 1733;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot remove pass with nil unique ID)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NPKGizmoDatabase_removePassWithUniqueID___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v14 = dCopy;
  v15 = buf;
  v10 = dCopy;
  dispatch_sync(dbQueue, block);
  v11 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v11;
}

uint64_t __43__NPKGizmoDatabase_removePassWithUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  v2 = [*(a1 + 32) _removePassWithUniqueIDLocked:*(a1 + 40)];
  v3 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) _notifyDatabaseChangedExternally];
  v6 = *(a1 + 32);

  return [v6 _notifyDatabaseChangedWithNoop:v2 ^ 1u];
}

- (id)rebuildDatabaseWithPasses:(id)passes
{
  passesCopy = passes;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v10 = passesCopy;
  v11 = &v12;
  v6 = passesCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "[NPKGizmoDatabase rebuildDatabaseWithPasses:]_block_invoke";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 1753;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  v6 = *(a1 + 32);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke_467;
  v13 = &unk_2799480B8;
  v14 = v6;
  v15 = *(a1 + 40);
  [v6 _performTransactionWithBlock:&v10];
  v7 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion", v10, v11, v12, v13, v14)}];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(a1 + 32) _notifyDatabaseChangedExternally];
  [*(a1 + 32) _notifyDatabaseChangedWithNoop:0];
}

uint64_t __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke_467(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 360) allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__NPKGizmoDatabase_rebuildDatabaseWithPasses___block_invoke_2;
  v13[3] = &unk_279945858;
  v13[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v13];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _savePassLocked:*(*(&v9 + 1) + 8 * v7++) locallyAdded:0 wasUpdate:{0, v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  return 1;
}

- (void)saveTransaction:(id)transaction forPass:(id)pass
{
  v24 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  passCopy = pass;
  v8 = NPKIsTransactionAllowedInUI(transactionCopy, passCopy);
  if (v8)
  {
    transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
    paymentPass = [passCopy paymentPass];
    devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
    paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

    paymentPass2 = [passCopy paymentPass];
    if ([paymentPass2 isPeerPaymentPass])
    {
      v14 = 0;
    }

    else
    {
      v14 = PKTransactionsUnlimitedForCredentialType() ^ 1;
    }

    [(NPKGizmoDatabase *)self _saveTransaction:transactionCopy forTransactionSourceIdentifier:transactionSourceIdentifier withPaymentCredentialType:paymentNetworkIdentifier shouldTrim:v14];
  }

  else
  {
    v15 = pk_Payment_log(v8);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v18 = pk_Payment_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        uniqueID = [passCopy uniqueID];
        v20 = 138412546;
        v21 = transactionCopy;
        v22 = 2112;
        v23 = uniqueID;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: Transaction is not allowed in UI; not inserting transaction %@ for pass: %@", &v20, 0x16u);
      }
    }
  }
}

- (void)_saveTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier withPaymentCredentialType:(int64_t)type shouldTrim:(BOOL)trim
{
  v42 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  identifierCopy = identifier;
  v12 = identifierCopy;
  if (!transactionCopy)
  {
    v20 = pk_General_log(identifierCopy);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v23 = pk_General_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v37 = "[NPKGizmoDatabase _saveTransaction:forTransactionSourceIdentifier:withPaymentCredentialType:shouldTrim:]";
        v38 = 2082;
        v39 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v40 = 2048;
        v41 = 1793;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Transaction is nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (identifierCopy)
  {
    identifier = [transactionCopy identifier];

    if (identifier)
    {
      if ([transactionCopy suppressBehavior] != 1)
      {
        dbQueue = self->_dbQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __105__NPKGizmoDatabase__saveTransaction_forTransactionSourceIdentifier_withPaymentCredentialType_shouldTrim___block_invoke;
        block[3] = &unk_2799480E0;
        block[4] = self;
        v32 = transactionCopy;
        trimCopy = trim;
        v33 = v12;
        typeCopy = type;
        dispatch_sync(dbQueue, block);

        goto LABEL_22;
      }

      v15 = pk_Payment_log(1);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v18 = pk_Payment_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = transactionCopy;
          v19 = "Error: Transaction should be suppressed from UI; not inserting %@";
LABEL_19:
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v27 = pk_Payment_log(v14);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        v18 = pk_Payment_log(v29);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = transactionCopy;
          v19 = "Error: Transaction does not have identifier; not inserting %@";
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    v24 = pk_Payment_log(0);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v18 = pk_Payment_log(v26);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = transactionCopy;
        v19 = "Error: No transaction source identifier; not inserting transaction %@";
        goto LABEL_19;
      }

LABEL_20:
    }
  }

LABEL_22:
}

void *__105__NPKGizmoDatabase__saveTransaction_forTransactionSourceIdentifier_withPaymentCredentialType_shouldTrim___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase _saveTransaction:forTransactionSourceIdentifier:withPaymentCredentialType:shouldTrim:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1807;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) _saveTransactionLocked:*(a1 + 40) forTransactionSourceIdentifier:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    return [*(a1 + 32) _trimTransactionsForTransactionSourceIdentifierLocked:*(a1 + 48) withPaymentCredentialType:*(a1 + 56)];
  }

  return result;
}

- (void)removeTransactionWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = pk_General_log(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "[NPKGizmoDatabase removeTransactionWithIdentifier:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 1820;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Transaction Unique ID is nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__NPKGizmoDatabase_removeTransactionWithIdentifier___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = identifierCopy;
  v10 = identifierCopy;
  dispatch_async(dbQueue, v11);
}

uint64_t __52__NPKGizmoDatabase_removeTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase removeTransactionWithIdentifier:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1824;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  return [*(a1 + 32) _removeTransactionWithIdentifier:*(a1 + 40)];
}

- (void)removeTransactionsForTransactionSource:(id)source
{
  v19 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  if (!sourceCopy)
  {
    v5 = pk_General_log(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v14 = "[NPKGizmoDatabase removeTransactionsForTransactionSource:]";
        v15 = 2082;
        v16 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v17 = 2048;
        v18 = 1831;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: transaction source cannot not be nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NPKGizmoDatabase_removeTransactionsForTransactionSource___block_invoke;
  v11[3] = &unk_2799454E0;
  v11[4] = self;
  v12 = sourceCopy;
  v10 = sourceCopy;
  dispatch_async(dbQueue, v11);
}

uint64_t __59__NPKGizmoDatabase_removeTransactionsForTransactionSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase removeTransactionsForTransactionSource:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1835;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  return [*(a1 + 32) _removeTransactionsForTransactionSource:*(a1 + 40)];
}

- (id)transactionsForTransactionSourceIdentifier:(id)identifier withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__13;
  v37 = __Block_byref_object_dispose__13;
  v38 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __139__NPKGizmoDatabase_transactionsForTransactionSourceIdentifier_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit___block_invoke;
  block[3] = &unk_279948108;
  block[4] = self;
  v25 = identifierCopy;
  v28 = &v33;
  sourceCopy = source;
  v26 = dateCopy;
  v27 = endDateCopy;
  dataCopy = data;
  byDateCopy = byDate;
  limitCopy = limit;
  v19 = endDateCopy;
  v20 = dateCopy;
  v21 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v22 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v22;
}

void __139__NPKGizmoDatabase_transactionsForTransactionSourceIdentifier_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionsForTransactionSourceIdentifierLocked:*(a1 + 40) withTransactionSource:*(a1 + 72) withBackingData:*(a1 + 80) startDate:*(a1 + 48) endDate:*(a1 + 56) orderByDate:*(a1 + 88) limit:*(a1 + 96)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NPKGizmoDatabase_transactionWithIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__NPKGizmoDatabase_transactionWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionWithIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NPKGizmoDatabase_transactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__NPKGizmoDatabase_transactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionWithServiceIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionSourceIdentifierForTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __76__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionSourceIdentifierForTransactionWithIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionSourceIdentifierForTransactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __83__NPKGizmoDatabase_transactionSourceIdentifierForTransactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionSourceIdentifierForTransactionWithServiceIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transactionSourceIdentifierForPassWithUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKGizmoDatabase_transactionSourceIdentifierForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__NPKGizmoDatabase_transactionSourceIdentifierForPassWithUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transactionSourceIdentifierForPassUniqueIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)passUniqueIDForTransactionSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKGizmoDatabase_passUniqueIDForTransactionSourceIdentifier___block_invoke;
  block[3] = &unk_279948130;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__NPKGizmoDatabase_passUniqueIDForTransactionSourceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _passUniqueIdentifierForTransactionSourceIdentifierLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)transitAppletStateForPassWithUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKGizmoDatabase_transitAppletStateForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__NPKGizmoDatabase_transitAppletStateForPassWithUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _transitAppletStateForPassWithUniqueIDLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)setTransitAppletState:(id)state forPassWithUniqueID:(id)d
{
  stateCopy = state;
  dCopy = d;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_setTransitAppletState_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = stateCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = stateCopy;
  dispatch_sync(dbQueue, block);
}

uint64_t __62__NPKGizmoDatabase_setTransitAppletState_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase setTransitAppletState:forPassWithUniqueID:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1963;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  return [*(a1 + 32) _setTransitAppletStateLocked:*(a1 + 40) forPassWithUniqueID:*(a1 + 48)];
}

- (id)paymentBalancesForPassWithUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NPKGizmoDatabase_paymentBalancesForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__NPKGizmoDatabase_paymentBalancesForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _loadInitialManifestLocked];
  v2 = [*(a1 + 32) database];
  v3 = pk_General_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) database];
        v11 = 134217984;
        v12 = v7;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Will read payment balances from database: %p", &v11, 0xCu);
      }
    }

    v8 = [*(a1 + 32) _paymentBalancesForPassWithUniqueIDLocked:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
LABEL_7:

    return;
  }

  if (v4)
  {
    v10 = pk_General_log(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Database is nil, returning nil", &v11, 2u);
    }

    goto LABEL_7;
  }
}

- (void)setPaymentBalances:(id)balances forPassWithUniqueID:(id)d
{
  balancesCopy = balances;
  dCopy = d;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NPKGizmoDatabase_setPaymentBalances_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = balancesCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = balancesCopy;
  dispatch_sync(dbQueue, block);
}

uint64_t __59__NPKGizmoDatabase_setPaymentBalances_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKGizmoDatabase setPaymentBalances:forPassWithUniqueID:]_block_invoke";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v11 = 2048;
        v12 = 1990;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) _loadInitialManifestLocked];
  return [*(a1 + 32) _setPaymentBalancesLocked:*(a1 + 40) forPassWithUniqueID:*(a1 + 48)];
}

- (id)subcredentialsForPassWithUniqueID:(id)d paymentApplicationIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  dbQueue = self->_dbQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__NPKGizmoDatabase_subcredentialsForPassWithUniqueID_paymentApplicationIdentifier___block_invoke;
  v13[3] = &unk_279948158;
  v13[4] = self;
  v14 = dCopy;
  v15 = identifierCopy;
  v16 = &v17;
  v9 = identifierCopy;
  v10 = dCopy;
  dispatch_sync(dbQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __83__NPKGizmoDatabase_subcredentialsForPassWithUniqueID_paymentApplicationIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _subcredentialsForPassWithUniqueIDLocked:*(a1 + 40) paymentApplicationIdentifier:*(a1 + 48)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)setSubcredentials:(id)subcredentials forPassWithUniqueID:(id)d paymentApplicationIdentifier:(id)identifier
{
  subcredentialsCopy = subcredentials;
  dCopy = d;
  identifierCopy = identifier;
  dbQueue = self->_dbQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__NPKGizmoDatabase_setSubcredentials_forPassWithUniqueID_paymentApplicationIdentifier___block_invoke;
  v15[3] = &unk_279946260;
  v15[4] = self;
  v16 = subcredentialsCopy;
  v17 = dCopy;
  v18 = identifierCopy;
  v12 = identifierCopy;
  v13 = dCopy;
  v14 = subcredentialsCopy;
  dispatch_sync(dbQueue, v15);
}

void __87__NPKGizmoDatabase_setSubcredentials_forPassWithUniqueID_paymentApplicationIdentifier___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (![a1[4] database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v15 = "[NPKGizmoDatabase setSubcredentials:forPassWithUniqueID:paymentApplicationIdentifier:]_block_invoke";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 2018;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [a1[4] _loadInitialManifestLocked];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__NPKGizmoDatabase_setSubcredentials_forPassWithUniqueID_paymentApplicationIdentifier___block_invoke_470;
  v11[3] = &unk_279948180;
  v10 = *(a1 + 2);
  v6 = *(&v10 + 1);
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v10 _performTransactionWithBlock:v11];
}

- (void)setCurrentEphemeralTransactionIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier
{
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__NPKGizmoDatabase_setCurrentEphemeralTransactionIdentifier_forTransactionSourceIdentifier___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = identifierCopy;
  v13 = sourceIdentifierCopy;
  v9 = sourceIdentifierCopy;
  v10 = identifierCopy;
  dispatch_async(dbQueue, block);
}

- (id)currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NPKGizmoDatabase_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier___block_invoke;
  block[3] = &unk_279946940;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __88__NPKGizmoDatabase_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setLastAddValueAmount:(id)amount forPassWithUniqueID:(id)d
{
  amountCopy = amount;
  dCopy = d;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_setLastAddValueAmount_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = amountCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = amountCopy;
  dispatch_async(dbQueue, block);
}

- (id)lastAddValueAmountForPassWithUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKGizmoDatabase_lastAddValueAmountForPassWithUniqueID___block_invoke;
  block[3] = &unk_279946940;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__NPKGizmoDatabase_lastAddValueAmountForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastAddValueAmountForPassWithUniqueIDLocked:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPendingAddValueDate:(id)date forPassWithUniqueID:(id)d
{
  dateCopy = date;
  dCopy = d;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKGizmoDatabase_setPendingAddValueDate_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = dateCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = dateCopy;
  dispatch_async(dbQueue, block);
}

- (id)pendingAddValueDateForPassWithUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NPKGizmoDatabase_pendingAddValueDateForPassWithUniqueID___block_invoke;
  block[3] = &unk_279946940;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__NPKGizmoDatabase_pendingAddValueDateForPassWithUniqueID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingAddValueDateForPassWithUniqueIDLocked:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)restoreBlockForVolatilePassData
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Fetching Volatile Pass Data from DB", buf, 2u);
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  passDescriptions = [(NPKGizmoDatabase *)self passDescriptions];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke;
  v32[3] = &unk_2799481A8;
  v13 = dictionary4;
  v33 = v13;
  selfCopy = self;
  v14 = dictionary;
  v35 = v14;
  v15 = dictionary2;
  v36 = v15;
  v16 = dictionary3;
  v37 = v16;
  v17 = dictionary5;
  v38 = v17;
  [passDescriptions enumerateObjectsUsingBlock:v32];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2;
  aBlock[3] = &unk_279948220;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = _Block_copy(aBlock);
  v24 = _Block_copy(v23);

  return v24;
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [v17 uniqueID];
  [v3 setObject:v17 forKey:v4];

  v5 = *(a1 + 40);
  v6 = [v17 uniqueID];
  v7 = [v5 transactionSourceIdentifierForPassWithUniqueID:v6];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = [v17 uniqueID];
    [v8 setObject:v7 forKey:v9];

    v10 = [*(a1 + 40) transactionsForTransactionSourceIdentifier:v7 withTransactionSource:0 withBackingData:0 startDate:0 endDate:0 orderedByDate:1 limit:*MEMORY[0x277D38648]];
    if (v10)
    {
      [*(a1 + 56) setObject:v10 forKey:v7];
    }

    v11 = [*(a1 + 40) currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:v7];
    if (v11)
    {
      [*(a1 + 64) setObject:v11 forKey:v7];
    }
  }

  v12 = *(a1 + 40);
  v13 = [v17 uniqueID];
  v14 = [v12 paymentBalancesForPassWithUniqueID:v13];

  if (v14)
  {
    v15 = *(a1 + 72);
    v16 = [v17 uniqueID];
    [v15 setObject:v14 forKey:v16];
  }
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Restoring Volatile Pass Data on DB", buf, 2u);
    }
  }

  v8 = [v3 passDescriptions];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_472;
  v16[3] = &unk_2799481A8;
  v17 = a1[4];
  v18 = v3;
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  v15 = v3;
  [v8 enumerateObjectsUsingBlock:v16];
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_472(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueID];
  v5 = [a1[4] objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 transitAppletState];

    if (v7)
    {
      v8 = a1[5];
      v9 = [v6 transitAppletState];
      [v8 setTransitAppletState:v9 forPassWithUniqueID:v4];
    }

    v10 = [v6 lastAddValueAmount];

    if (v10)
    {
      v11 = a1[5];
      v12 = [v6 lastAddValueAmount];
      [v11 setLastAddValueAmount:v12 forPassWithUniqueID:v4];
    }

    v13 = [v6 pendingAddValueDate];

    if (v13)
    {
      v14 = a1[5];
      v15 = [v6 pendingAddValueDate];
      [v14 setPendingAddValueDate:v15 forPassWithUniqueID:v4];
    }

    v16 = [v6 preferredPaymentApplication];

    if (v16)
    {
      v17 = [v6 preferredPaymentApplication];
      v18 = [v17 applicationIdentifier];

      v19 = [v3 devicePaymentApplications];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2_473;
      v29[3] = &unk_2799481D0;
      v30 = v18;
      v31 = v4;
      v32 = a1[5];
      v20 = v18;
      [v19 enumerateObjectsUsingBlock:v29];
    }

    v21 = [a1[6] objectForKey:v4];
    if (v21)
    {
      v22 = [a1[7] objectForKey:v21];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_3;
      v26[3] = &unk_2799481F8;
      v27 = a1[5];
      v23 = v21;
      v28 = v23;
      [v22 enumerateObjectsUsingBlock:v26];
      v24 = [a1[8] objectForKey:v23];
      if (v24)
      {
        [a1[5] setCurrentEphemeralTransactionIdentifier:v24 forTransactionSourceIdentifier:v23];
      }
    }

    v25 = [a1[9] objectForKey:v4];
    if (v25)
    {
      [a1[5] setPaymentBalances:v25 forPassWithUniqueID:v4];
    }
  }
}

void __51__NPKGizmoDatabase_restoreBlockForVolatilePassData__block_invoke_2_473(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 applicationIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = +[NPKGizmoDatabase sharedDatabase];
    v8 = [v7 passForUniqueID:*(a1 + 40)];
    v9 = [v8 paymentPass];

    if (v9)
    {
      [*(a1 + 48) setPreferredPaymentApplication:v10 forPaymentPass:v9];
    }

    *a3 = 1;
  }
}

- (void)_notifyDatabaseChangedWithNoop:(BOOL)noop firstUnlock:(BOOL)unlock
{
  sendingLocalNotifyDatabaseChanged = self->_sendingLocalNotifyDatabaseChanged;
  v8 = pk_General_log(self);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (sendingLocalNotifyDatabaseChanged)
  {
    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase already sending DB change, so coalescing", buf, 2u);
      }
    }

    self->_needsMoreLocalNotifyDatabaseChanged = 1;
  }

  else
  {
    if (v9)
    {
      v12 = pk_General_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase alerting of DB change", buf, 2u);
      }
    }

    self->_sendingLocalNotifyDatabaseChanged = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke;
    v13[3] = &unk_279948248;
    noopCopy = noop;
    unlockCopy = unlock;
    v13[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

void __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = NPKGizmoDatabaseChangedWasNoOpKeyName;
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = NPKGizmoDatabaseChangedWasFirstUnlockKeyName;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:NPKGizmoDatabaseChangedNotificationName object:*(a1 + 32) userInfo:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 344);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke_2;
  block[3] = &unk_279944FC0;
  block[4] = v6;
  v9 = *(a1 + 40);
  dispatch_sync(v7, block);
}

void *__63__NPKGizmoDatabase__notifyDatabaseChangedWithNoop_firstUnlock___block_invoke_2(void *result)
{
  *(result[4] + 388) = 0;
  if (*(result[4] + 389) == 1)
  {
    v9 = v1;
    v10 = v2;
    v3 = result;
    v4 = pk_General_log(result);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Finished alerting of DB change, but a coalesced change was detected...rebroadcasting", v8, 2u);
      }
    }

    *(v3[4] + 389) = 0;
    return [v3[4] _notifyDatabaseChangedWithNoop:*(v3 + 40)];
  }

  return result;
}

- (void)_notifyDatabaseChangedExternally
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Alerting external clients of DB change...", v8, 2u);
    }
  }

  ++self->_externallyChangedBroadcasts;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_NPKGizmoDatabaseExternallyChanged", 0, 0, 1u);
}

- (BOOL)passDBIsAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__NPKGizmoDatabase_passDBIsAvailable__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__37__NPKGizmoDatabase_passDBIsAvailable__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _passDBIsAvailableLocked];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)numberOfPasses
{
  manifestHashes = [(NPKGizmoDatabase *)self manifestHashes];
  v3 = [manifestHashes count];

  return v3;
}

- (void)_savePassLocked:(id)locked locallyAdded:(BOOL)added wasUpdate:(BOOL *)update
{
  v68 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  context = objc_autoreleasePoolPush();
  passTypeIdentifier = [lockedCopy passTypeIdentifier];
  v44 = [passTypeIdentifier copy];

  v50 = lockedCopy;
  v9 = [lockedCopy copy];
  uniqueID = [v9 uniqueID];
  v11 = [(NPKGizmoDatabase *)self _passForUniqueIDLocked:uniqueID includeImageSets:0];

  paymentPass = [v11 paymentPass];
  v42 = NPKPassDescriptionExpressTypesMaskWithPass(v9);
  if (v11)
  {
    manifest = self->_manifest;
    uniqueID2 = [v9 uniqueID];
    v15 = [(NSMutableDictionary *)manifest objectForKey:uniqueID2];
    remoteManifestHashes = [v15 remoteManifestHashes];
  }

  else
  {
    remoteManifestHashes = 0;
  }

  v48 = paymentPass;
  if (paymentPass)
  {
    v65 = 0;
    v16 = [(NPKGizmoDatabase *)self _getPreferredPaymentApplicationForPaymentPass:paymentPass aid:&v65];
    v40 = v65;
    uniqueID3 = [v9 uniqueID];
    LOBYTE(paymentPass) = [(NPKGizmoDatabase *)self _getDeletePendingForUniqueID:uniqueID3];

    uniqueID4 = [v9 uniqueID];
    v39 = [(NPKGizmoDatabase *)self _transitAppletStateForPassWithUniqueIDLocked:uniqueID4];

    uniqueID5 = [v9 uniqueID];
    v37 = [(NPKGizmoDatabase *)self _lastAddValueAmountForPassWithUniqueIDLocked:uniqueID5];

    uniqueID6 = [v9 uniqueID];
    v21 = [(NPKGizmoDatabase *)self _pendingAddValueDateForPassWithUniqueIDLocked:uniqueID6];

    uniqueID7 = [v9 uniqueID];
    v23 = [(NPKGizmoDatabase *)self _paymentBalancesForPassWithUniqueIDLocked:uniqueID7];

    if (!update)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = 0;
  v23 = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  if (update)
  {
LABEL_6:
    *update = v11 != 0;
  }

LABEL_7:
  v24 = [v11 diff:{v9, v37}];
  v25 = pk_General_log(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v28 = pk_General_log(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = v24;
      _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Saving diff %@", buf, 0xCu);
    }
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke;
  v51[3] = &unk_279948270;
  v51[4] = self;
  v52 = v9;
  v53 = v11;
  v54 = v24;
  v63 = paymentPass;
  v55 = v40;
  v56 = v39;
  v57 = v38;
  v58 = v21;
  addedCopy = added;
  v59 = remoteManifestHashes;
  v60 = v23;
  v61 = v44;
  v62 = v42;
  v47 = v44;
  v43 = v23;
  v29 = remoteManifestHashes;
  v45 = v21;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v24;
  v34 = v11;
  v35 = v9;
  [(NPKGizmoDatabase *)self _performTransactionWithBlock:v51];
  uniqueID8 = [v35 uniqueID];
  [(NPKGizmoDatabase *)self _createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:uniqueID8];

  objc_autoreleasePoolPop(context);
}

uint64_t __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke(uint64_t a1)
{
  v254 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deleteStatement];
  v3 = [*(a1 + 40) uniqueID];
  sqlite3_bind_text(v2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v4 = sqlite3_step(v2);
  if ((v4 & 0xFFFFFFFE) != 0x64)
  {
    v5 = pk_General_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sqlite3_sql(v2);
        v10 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        *buf = 136447234;
        v247 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v248 = 2082;
        v249 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v250 = 2048;
        v251 = 2290;
        v252 = 2080;
        *v253 = v9;
        *&v253[8] = 2080;
        *&v253[10] = v10;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v2);
  sqlite3_reset(v2);
  v11 = [*(a1 + 32) insertStatement];
  v12 = [*(a1 + 40) uniqueID];
  v13 = v12;
  sqlite3_bind_text(v11, 1, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v14 = [*(a1 + 40) passTypeIdentifier];
  v221 = [v14 copy];

  v15 = v221;
  v229 = [v221 UTF8String];
  sqlite3_bind_text(v11, 2, v229, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v11, 3, [*(a1 + 40) style]);
  v226 = [*(a1 + 40) npkCompleteHash];
  v16 = v226;
  sqlite3_bind_blob(v11, 4, [v226 bytes], objc_msgSend(v226, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v17 = [*(a1 + 48) ingestedDate];
  if (!v17)
  {
    v17 = [MEMORY[0x277CBEAA8] date];
  }

  v216 = v17;
  [*(a1 + 40) setIngestedDate:?];
  v227 = [*(a1 + 40) copy];
  v18 = objc_alloc(MEMORY[0x277D37F80]);
  v220 = [v18 initWithDictionary:MEMORY[0x277CBEC10] bundle:0];
  [v220 setMissingImageSetsFromObject:v227];
  [v227 flushLoadedImageSets];
  v228 = NPKSecureArchiveObject(v227);
  v19 = v228;
  sqlite3_bind_blob(v11, 5, [v228 bytes], objc_msgSend(v228, "length"), 0xFFFFFFFFFFFFFFFFLL);
  if (os_variant_has_internal_ui())
  {
    v20 = objc_opt_class();
    v21 = NPKSecureUnarchiveObject(v228, v20);
    v22 = v21;
    if (v21)
    {
      v23 = [v21 passTypeIdentifier];
      v24 = [v23 length] == 0;

      if (!v24)
      {
        goto LABEL_19;
      }

      v26 = pk_General_log(v25);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (!v27)
      {
        goto LABEL_19;
      }

      v29 = pk_General_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [*(a1 + 40) uniqueID];
        v31 = [v227 passTypeIdentifier];
        v32 = NSStringFromBOOL();
        *buf = 136316162;
        v247 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v248 = 2112;
        v249 = v30;
        v250 = 2112;
        v251 = v221;
        v252 = 2112;
        *v253 = v31;
        *&v253[8] = 2112;
        *&v253[10] = v32;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass Encoding of pass with uniqueID %@ is missing the type identifier. Type identifier in stmt: %@. Type identifier from PKPass the archive was created from: %@ isUpdate?: %@", buf, 0x34u);
      }
    }

    else
    {
      v33 = pk_General_log(0);
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (!v34)
      {
LABEL_19:

        goto LABEL_20;
      }

      v29 = pk_General_log(v35);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [*(a1 + 40) uniqueID];
        v37 = NSStringFromBOOL();
        *buf = 136315650;
        v247 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v248 = 2112;
        v249 = v36;
        v250 = 2112;
        v251 = v37;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass There was a problem unarchiving the pass archive for pass with uniqueID %@. isUpdate?: %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  if (v220)
  {
    v38 = NPKSecureArchiveObject(v220);
    v39 = v38;
    sqlite3_bind_blob(v11, 6, [v38 bytes], objc_msgSend(v38, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 6);
  }

  v40 = *(a1 + 56);
  if (v40)
  {
    v41 = NPKSecureArchiveObject(v40);
    v42 = v41;
    sqlite3_bind_blob(v11, 7, [v41 bytes], objc_msgSend(v41, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v43 = [*(a1 + 40) logoText];

  if (v43)
  {
    v44 = [*(a1 + 40) logoText];
    v45 = v44;
    sqlite3_bind_text(v11, 8, [v44 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v46 = [*(a1 + 40) logoImage];

  if (v46)
  {
    v47 = [*(a1 + 40) logoImage];
    v223 = NPKSecureArchiveObject(v47);

    v48 = v223;
    sqlite3_bind_blob(v11, 9, [v223 bytes], objc_msgSend(v223, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v223 = 0;
  }

  v49 = [*(a1 + 40) displayProfile];
  v50 = [v49 backgroundColor];

  if (v50)
  {
    v51 = [*(a1 + 40) displayProfile];
    v52 = [v51 backgroundColor];
    v53 = NPKSecureArchiveObject(v52);

    v54 = v53;
    sqlite3_bind_blob(v11, 10, [v53 bytes], objc_msgSend(v53, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v55 = [*(a1 + 40) displayProfile];
  v56 = [v55 labelColor];

  if (v56)
  {
    v57 = [*(a1 + 40) displayProfile];
    v58 = [v57 labelColor];
    v59 = NPKSecureArchiveObject(v58);

    v60 = v59;
    sqlite3_bind_blob(v11, 11, [v59 bytes], objc_msgSend(v59, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v61 = [*(a1 + 40) displayProfile];
  v62 = [v61 foregroundColor];

  if (v62)
  {
    v63 = [*(a1 + 40) displayProfile];
    v64 = [v63 foregroundColor];
    v65 = NPKSecureArchiveObject(v64);

    v66 = v65;
    sqlite3_bind_blob(v11, 12, [v65 bytes], objc_msgSend(v65, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v67 = [*(a1 + 40) backgroundImage];

  if (!v67)
  {
    v222 = 0;
    goto LABEL_44;
  }

  if ([*(a1 + 40) style] != 2)
  {
    v72 = [*(a1 + 40) backgroundImage];
    if (v72)
    {
      goto LABEL_39;
    }

LABEL_42:
    v73 = 0;
    goto LABEL_43;
  }

  v68 = MEMORY[0x277D37F20];
  v69 = [*(a1 + 40) backgroundImage];
  [v69 size];
  v70 = [v68 constraintsWithFixedSize:?];

  v71 = [*(a1 + 40) backgroundImage];
  v72 = [v71 blurredImageWithRadius:27 constraints:v70];

  if (!v72)
  {
    goto LABEL_42;
  }

LABEL_39:
  v73 = NPKSecureArchiveObject(v72);
LABEL_43:
  v222 = v73;
  v74 = v73;
  sqlite3_bind_blob(v11, 13, [v222 bytes], objc_msgSend(v222, "length"), 0xFFFFFFFFFFFFFFFFLL);

LABEL_44:
  v75 = [*(a1 + 40) nfcPayload];

  if (v75)
  {
    v76 = [*(a1 + 40) nfcPayload];
    v77 = NPKSecureArchiveObject(v76);

    v78 = v77;
    sqlite3_bind_blob(v11, 14, [v77 bytes], objc_msgSend(v77, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v79 = [*(a1 + 40) paymentPass];
  sqlite3_bind_int(v11, 15, [v79 isPrivateLabel]);

  v80 = [*(a1 + 40) paymentPass];
  sqlite3_bind_int(v11, 16, [v80 isCobranded]);

  v231 = [*(a1 + 40) paymentPass];
  v81 = [v231 devicePaymentApplications];

  if (v81)
  {
    v82 = [v231 devicePaymentApplications];
    v83 = NPKSecureArchiveObject(v82);

    v84 = v83;
    sqlite3_bind_blob(v11, 17, [v83 bytes], objc_msgSend(v83, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 17);
  }

  v85 = [v231 devicePrimaryPaymentApplication];

  if (v85)
  {
    v86 = [v231 devicePrimaryPaymentApplication];
    v87 = NPKSecureArchiveObject(v86);

    v88 = v87;
    sqlite3_bind_blob(v11, 18, [v87 bytes], objc_msgSend(v87, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 18);
  }

  v89 = [v231 devicePrimaryContactlessPaymentApplication];

  if (v89)
  {
    v90 = [v231 devicePrimaryContactlessPaymentApplication];
    v91 = NPKSecureArchiveObject(v90);

    v92 = v91;
    sqlite3_bind_blob(v11, 19, [v91 bytes], objc_msgSend(v91, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 19);
  }

  v93 = [v231 devicePrimaryInAppPaymentApplication];

  if (v93)
  {
    v94 = [v231 devicePrimaryInAppPaymentApplication];
    v95 = NPKSecureArchiveObject(v94);

    v96 = v95;
    sqlite3_bind_blob(v11, 20, [v95 bytes], objc_msgSend(v95, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 20);
  }

  v239 = 0;
  v240 = &v239;
  v241 = 0x3032000000;
  v242 = __Block_byref_object_copy__13;
  v243 = __Block_byref_object_dispose__13;
  v244 = 0;
  if (v231 && *(a1 + 64) && ([v231 devicePaymentApplications], v97 = objc_claimAutoreleasedReturnValue(), v236[0] = MEMORY[0x277D85DD0], v236[1] = 3221225472, v236[2] = __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke_477, v236[3] = &unk_279945580, v237 = *(a1 + 64), v238 = &v239, objc_msgSend(v97, "enumerateObjectsUsingBlock:", v236), v97, v237, v240[5]))
  {
    sqlite3_bind_text(v11, 21, [*(a1 + 64) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v98 = NPKSecureArchiveObject(v240[5]);
    v99 = v98;
    sqlite3_bind_blob(v11, 22, [v98 bytes], objc_msgSend(v98, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 21);
    sqlite3_bind_null(v11, 22);
  }

  v100 = [*(a1 + 40) ingestedDate];
  [v100 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v11, 23, v101);

  v102 = [*(a1 + 40) npkCompleteHash];
  v103 = v102;
  v104 = [v102 bytes];
  v105 = [*(a1 + 40) npkCompleteHash];
  sqlite3_bind_blob(v11, 24, v104, [v105 length], 0xFFFFFFFFFFFFFFFFLL);

  sqlite3_bind_int(v11, 25, *(a1 + 128));
  if (v231)
  {
    v106 = [v231 effectiveContactlessPaymentApplicationState];
    v218 = [v231 npkHasUserSelectableContactlessPaymentApplications];
  }

  else
  {
    v218 = 0;
    v106 = 0;
  }

  sqlite3_bind_int(v11, 26, v106);
  sqlite3_bind_int(v11, 27, v218);
  sqlite3_bind_int(v11, 28, [*(a1 + 40) hasStoredValue]);
  sqlite3_bind_int64(v11, 29, [*(a1 + 40) settings]);
  v107 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
  for (i = 0; i < [objc_opt_class() latestWatchOSMajorVersion]; ++i)
  {
    v109 = [*(a1 + 40) npkCompleteHashForWatchOSVersion:i + 1];
    [v107 setObject:v109 atIndexedSubscript:i];
  }

  v214 = [v107 copy];
  v225 = NPKSecureArchiveObject(v214);
  v110 = v225;
  sqlite3_bind_blob(v11, 30, [v225 bytes], objc_msgSend(v225, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v111 = [v231 issuerCountryCode];
  v219 = v111;
  if (v111)
  {
    v112 = v111;
    sqlite3_bind_text(v11, 31, [v219 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 31);
  }

  v113 = [*(a1 + 40) paymentPass];
  v114 = [v113 availableActions];

  if (v114)
  {
    v115 = [*(a1 + 40) paymentPass];
    v116 = [v115 availableActions];
    v117 = NPKSecureArchiveObject(v116);

    v118 = v117;
    sqlite3_bind_blob(v11, 32, [v117 bytes], objc_msgSend(v117, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 32);
  }

  v119 = [*(a1 + 40) organizationName];

  if (v119)
  {
    v120 = [*(a1 + 40) organizationName];
    v121 = v120;
    sqlite3_bind_text(v11, 33, [v120 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 33);
  }

  v122 = *(a1 + 72);
  if (v122)
  {
    v123 = NPKSecureArchiveObject(v122);
    v124 = v123;
    sqlite3_bind_blob(v11, 34, [v123 bytes], objc_msgSend(v123, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 34);
  }

  v125 = [*(a1 + 40) frontFieldBuckets];

  if (v125)
  {
    v126 = [*(a1 + 40) frontFieldBuckets];
    v127 = NPKSecureArchiveObject(v126);

    v128 = v127;
    sqlite3_bind_blob(v11, 35, [v127 bytes], objc_msgSend(v127, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 35);
  }

  v129 = [*(a1 + 40) backFieldBuckets];

  if (v129)
  {
    v130 = [*(a1 + 40) backFieldBuckets];
    v131 = NPKSecureArchiveObject(v130);

    v132 = v131;
    sqlite3_bind_blob(v11, 36, [v131 bytes], objc_msgSend(v131, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 36);
  }

  v133 = *(a1 + 80);
  if (v133)
  {
    v134 = [v133 stringValue];
    v135 = v134;
    sqlite3_bind_text(v11, 37, [v134 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 37);
  }

  v136 = [*(a1 + 40) localizedDescription];

  if (v136)
  {
    v137 = [*(a1 + 40) localizedDescription];
    v138 = v137;
    sqlite3_bind_text(v11, 38, [v137 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v11, 38);
  }

  v139 = *(a1 + 88);
  if (v139)
  {
    [v139 timeIntervalSinceReferenceDate];
    sqlite3_bind_int(v11, 39, v140);
  }

  else
  {
    sqlite3_bind_null(v11, 39);
  }

  sqlite3_bind_int64(v11, 40, *(a1 + 120));
  v141 = v107;
  if (*(a1 + 129) == 1)
  {
    v141 = *(a1 + 96);
  }

  v217 = v141;
  v224 = NPKSecureArchiveObject(v217);
  v142 = v224;
  sqlite3_bind_blob(v11, 41, [v224 bytes], objc_msgSend(v224, "length"), 0xFFFFFFFFFFFFFFFFLL);
  v143 = sqlite3_bind_int(v11, 42, [v231 isPeerPaymentPass]);
  if (*(a1 + 104))
  {
    v144 = pk_General_log(v143);
    v145 = os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT);

    if (v145)
    {
      v147 = pk_General_log(v146);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        v148 = [*(a1 + 40) uniqueID];
        v149 = *(a1 + 104);
        *buf = 138412546;
        v247 = v148;
        v248 = 2112;
        v249 = v149;
        _os_log_impl(&dword_25B300000, v147, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance restore) restoring old balances for pass %@ %@", buf, 0x16u);
      }
    }

    v150 = NPKSecureArchiveObject(*(a1 + 104));
    v151 = v150;
    if (v150)
    {
      v152 = v150;
      sqlite3_bind_blob(v11, 43, [v151 bytes], objc_msgSend(v151, "length"), 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v153 = pk_General_log(0);
      v154 = os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT);

      if (v154)
      {
        v156 = pk_General_log(v155);
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          v157 = [*(a1 + 40) uniqueID];
          v158 = *(a1 + 104);
          *buf = 138412546;
          v247 = v157;
          v248 = 2112;
          v249 = v158;
          _os_log_impl(&dword_25B300000, v156, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance restore) archiving old balances for pass %@ %@ returned nil", buf, 0x16u);
        }
      }

      sqlite3_bind_null(v11, 43);
    }
  }

  else
  {
    sqlite3_bind_null(v11, 43);
  }

  v159 = sqlite3_step(v11);
  v160 = v159;
  if ((v159 & 0xFFFFFFFE) != 0x64)
  {
    v161 = pk_General_log(v159);
    v162 = os_log_type_enabled(v161, OS_LOG_TYPE_ERROR);

    if (v162)
    {
      v164 = pk_General_log(v163);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        v165 = *(a1 + 112);
        v166 = v165;
        v167 = [v165 UTF8String];
        *buf = 138413058;
        v247 = v165;
        v248 = 2080;
        v249 = v167;
        v250 = 2112;
        v251 = v221;
        v252 = 2080;
        *v253 = v229;
        _os_log_impl(&dword_25B300000, v164, OS_LOG_TYPE_ERROR, "Error: Insert failed. passTypeIdentifier for insert stmt. Values inputStr: %@, inputUTF8: %s, stmtStr: %@, stmtUTF8: %s", buf, 0x2Au);
      }
    }

    v168 = pk_General_log(v163);
    v169 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);

    if (v169)
    {
      v171 = pk_General_log(v170);
      if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
      {
        v172 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        v173 = sqlite3_sql(v11);
        *buf = 136447490;
        v247 = "[NPKGizmoDatabase _savePassLocked:locallyAdded:wasUpdate:]_block_invoke";
        v248 = 2082;
        v249 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v250 = 2048;
        v251 = 2561;
        v252 = 1024;
        *v253 = v160;
        *&v253[4] = 2080;
        *&v253[6] = v172;
        *&v253[14] = 2080;
        *&v253[16] = v173;
        _os_log_impl(&dword_25B300000, v171, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert failed with result: %d, error: %s, stmt: %s)", buf, 0x3Au);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v11);
  sqlite3_reset(v11);
  v230 = objc_alloc_init(NPKGizmoDatabaseManifestEntry);
  v174 = [*(a1 + 40) uniqueID];
  [(NPKGizmoDatabaseManifestEntry *)v230 setUniqueID:v174];

  [(NPKGizmoDatabaseManifestEntry *)v230 setLocalManifestHashes:v107];
  [(NPKGizmoDatabaseManifestEntry *)v230 setRemoteManifestHashes:v217];
  v175 = *(*(a1 + 32) + 360);
  v176 = [*(a1 + 40) uniqueID];
  [v175 setObject:v230 forKeyedSubscript:v176];

  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v177 = *(*(a1 + 32) + 368);
  v178 = [v177 countByEnumeratingWithState:&v232 objects:v245 count:16];
  if (v178)
  {
    v179 = *v233;
LABEL_124:
    v180 = 0;
    while (1)
    {
      if (*v233 != v179)
      {
        objc_enumerationMutation(v177);
      }

      v181 = *(*(&v232 + 1) + 8 * v180);
      v182 = [v181 uniqueID];
      v183 = [*(a1 + 40) uniqueID];
      v184 = [v182 isEqualToString:v183];

      if (v184)
      {
        break;
      }

      if (v178 == ++v180)
      {
        v178 = [v177 countByEnumeratingWithState:&v232 objects:v245 count:16];
        if (v178)
        {
          goto LABEL_124;
        }

        goto LABEL_130;
      }
    }

    v185 = v181;

    if (v185)
    {
      goto LABEL_133;
    }
  }

  else
  {
LABEL_130:
  }

  v185 = objc_alloc_init(NPKPassDescription);
  v186 = [*(a1 + 40) uniqueID];
  [(NPKPassDescription *)v185 setUniqueID:v186];

  [*(*(a1 + 32) + 368) addObject:v185];
LABEL_133:
  v187 = [*(a1 + 40) npkCompleteHash];
  [(NPKPassDescription *)v185 setManifestHash:v187];

  v188 = [*(a1 + 40) passTypeIdentifier];
  [(NPKPassDescription *)v185 setPassTypeIdentifier:v188];

  -[NPKPassDescription setStyle:](v185, "setStyle:", [*(a1 + 40) style]);
  v189 = [*(a1 + 40) relevantDate];
  [(NPKPassDescription *)v185 setRelevantDate:v189];

  v190 = [*(a1 + 40) logoText];
  [(NPKPassDescription *)v185 setLogoText:v190];

  [(NPKPassDescription *)v185 setLogoImageEncoded:v223];
  v191 = [*(a1 + 40) displayProfile];
  v192 = [v191 backgroundColor];
  [(NPKPassDescription *)v185 setBackgroundColor:v192];

  v193 = [*(a1 + 40) displayProfile];
  v194 = [v193 labelColor];
  [(NPKPassDescription *)v185 setLabelColor:v194];

  v195 = [*(a1 + 40) displayProfile];
  v196 = [v195 foregroundColor];
  [(NPKPassDescription *)v185 setForegroundColor:v196];

  [(NPKPassDescription *)v185 setDeletePending:*(a1 + 128)];
  [(NPKPassDescription *)v185 setBackgroundImageEncoded:v222];
  v197 = [*(a1 + 40) nfcPayload];
  [(NPKPassDescription *)v185 setNfcPayload:v197];

  v198 = [*(a1 + 40) paymentPass];
  -[NPKPassDescription setPrivateLabel:](v185, "setPrivateLabel:", [v198 isPrivateLabel]);

  v199 = [*(a1 + 40) paymentPass];
  -[NPKPassDescription setCobranded:](v185, "setCobranded:", [v199 isCobranded]);

  v200 = [v231 devicePaymentApplications];
  [(NPKPassDescription *)v185 setDevicePaymentApplications:v200];

  v201 = [v231 devicePrimaryPaymentApplication];
  [(NPKPassDescription *)v185 setDevicePrimaryPaymentApplication:v201];

  v202 = [v231 devicePrimaryContactlessPaymentApplication];
  [(NPKPassDescription *)v185 setDevicePrimaryContactlessPaymentApplication:v202];

  v203 = [v231 devicePrimaryInAppPaymentApplication];
  [(NPKPassDescription *)v185 setDevicePrimaryInAppPaymentApplication:v203];

  -[NPKPassDescription setEffectivePaymentApplicationState:](v185, "setEffectivePaymentApplicationState:", [v231 effectiveContactlessPaymentApplicationState]);
  [(NPKPassDescription *)v185 setHasUserSelectableContactlessPaymentApplications:v218];
  [(NPKPassDescription *)v185 setPreferredPaymentApplication:v240[5]];
  v204 = [*(a1 + 40) ingestedDate];
  [(NPKPassDescription *)v185 setIngestionDate:v204];

  v205 = [*(a1 + 40) npkCompleteHash];
  [(NPKPassDescription *)v185 setCompleteHash:v205];

  -[NPKPassDescription setHasStoredValue:](v185, "setHasStoredValue:", [*(a1 + 40) hasStoredValue]);
  -[NPKPassDescription setSettings:](v185, "setSettings:", [*(a1 + 40) settings]);
  v206 = [v231 issuerCountryCode];
  [(NPKPassDescription *)v185 setIssuerCountryCode:v206];

  v207 = [*(a1 + 40) paymentPass];
  v208 = [v207 availableActions];
  [(NPKPassDescription *)v185 setAvailableActions:v208];

  v209 = [*(a1 + 40) organizationName];
  [(NPKPassDescription *)v185 setOrganizationName:v209];

  [(NPKPassDescription *)v185 setTransitAppletState:*(a1 + 72)];
  [(NPKPassDescription *)v185 setLastAddValueAmount:*(a1 + 80)];
  v210 = [*(a1 + 40) localizedDescription];
  [(NPKPassDescription *)v185 setLocalizedDescription:v210];

  [(NPKPassDescription *)v185 setPendingAddValueDate:*(a1 + 88)];
  [(NPKPassDescription *)v185 setExpressPassTypesMask:*(a1 + 120)];
  -[NPKPassDescription setHasAssociatedPeerPaymentAccount:](v185, "setHasAssociatedPeerPaymentAccount:", [v231 hasAssociatedPeerPaymentAccount]);
  v211 = *(a1 + 32);
  v212 = *(v211 + 376);
  *(v211 + 376) = 0;

  _Block_object_dispose(&v239, 8);
  return 1;
}

void __59__NPKGizmoDatabase__savePassLocked_locallyAdded_wasUpdate___block_invoke_477(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)_removePassWithUniqueIDLocked:(id)locked
{
  v53 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_passDescriptions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v6)
  {
    v7 = *v37;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        uniqueID = [v9 uniqueID];
        v11 = [uniqueID isEqualToString:lockedCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v36 objects:v52 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([v6 deletePending])
  {
    v12 = 0;
  }

  else
  {
    v12 = [(NPKGizmoDatabase *)self _passForUniqueIDLocked:lockedCopy includeImageSets:0];
  }

  deleteStatement = [(NPKGizmoDatabase *)self deleteStatement];
  sqlite3_bind_text(deleteStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v14 = sqlite3_step(deleteStatement);
  if ((v14 & 0xFFFFFFFE) != 0x64)
  {
    v15 = pk_General_log(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v18 = pk_General_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_sql(deleteStatement);
        v20 = sqlite3_errmsg(self->_database);
        *buf = 136447234;
        v43 = "[NPKGizmoDatabase _removePassWithUniqueIDLocked:]";
        v44 = 2082;
        v45 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v46 = 2048;
        v47 = 2656;
        v48 = 2080;
        v49 = v19;
        v50 = 2080;
        v51 = v20;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(deleteStatement);
  sqlite3_reset(deleteStatement);
  v21 = [(NPKGizmoDatabase *)self _transactionSourceIdentifierForPassUniqueIdentifierLocked:lockedCopy];
  if (v21)
  {
    deleteTransactionsForTransactionSourceStatement = [(NPKGizmoDatabase *)self deleteTransactionsForTransactionSourceStatement];
    sqlite3_bind_text(deleteTransactionsForTransactionSourceStatement, 1, [v21 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v23 = sqlite3_step(deleteTransactionsForTransactionSourceStatement);
    if ((v23 & 0xFFFFFFFE) != 0x64)
    {
      v24 = pk_General_log(v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (v25)
      {
        v27 = pk_General_log(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = sqlite3_sql(deleteTransactionsForTransactionSourceStatement);
          v29 = sqlite3_errmsg(self->_database);
          *buf = 136447234;
          v43 = "[NPKGizmoDatabase _removePassWithUniqueIDLocked:]";
          v44 = 2082;
          v45 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v46 = 2048;
          v47 = 2670;
          v48 = 2080;
          v49 = v28;
          v50 = 2080;
          v51 = v29;
          _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", buf, 0x34u);
        }
      }

      _NPKAssertAbort();
    }

    sqlite3_clear_bindings(deleteTransactionsForTransactionSourceStatement);
    sqlite3_reset(deleteTransactionsForTransactionSourceStatement);
    [(NPKGizmoDatabase *)self setCurrentEphemeralTransactionIdentifier:0 forTransactionSourceIdentifier:v21];
    [(NPKGizmoDatabase *)self _removeTransactionSourceIdentifierForPassWithUniqueIDLocked:lockedCopy];
  }

  [(NPKGizmoDatabase *)self _removeSubcredentialsForPassWithUniqueIDLocked:lockedCopy];
  [(NSMutableDictionary *)self->_manifest removeObjectForKey:lockedCopy];
  libraryHashes = self->_libraryHashes;
  self->_libraryHashes = 0;

  [(NSMutableArray *)self->_passDescriptions removeObject:v6];
  if (v12)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v32 = NPKGizmoDatabasePassRemovedNotificationName;
    v40 = NPKGizmoDatabasePassKeyName;
    v41 = v12;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [defaultCenter postNotificationName:v32 object:self userInfo:v33];
  }

  deletePending = [v6 deletePending];

  return deletePending ^ 1;
}

- (void)_saveTransactionLocked:(id)locked forTransactionSourceIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  identifierCopy = identifier;
  insertTransactionStatement = [(NPKGizmoDatabase *)self insertTransactionStatement];
  uTF8String = [identifierCopy UTF8String];

  sqlite3_bind_text(insertTransactionStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(insertTransactionStatement, 2, "", -1, 0xFFFFFFFFFFFFFFFFLL);
  identifier = [lockedCopy identifier];
  sqlite3_bind_text(insertTransactionStatement, 3, [identifier UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  transactionDate = [lockedCopy transactionDate];
  [transactionDate timeIntervalSinceReferenceDate];
  sqlite3_bind_int(insertTransactionStatement, 4, v12);

  sqlite3_bind_int(insertTransactionStatement, 5, [lockedCopy transactionSource]);
  sqlite3_bind_int(insertTransactionStatement, 6, [lockedCopy transactionType]);
  sqlite3_bind_int(insertTransactionStatement, 7, [lockedCopy hasNotificationServiceData]);
  v13 = NPKSecureArchiveObject(lockedCopy);
  v14 = v13;
  if (v13)
  {
    sqlite3_bind_blob(insertTransactionStatement, 8, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(insertTransactionStatement, 8);
  }

  serviceIdentifier = [lockedCopy serviceIdentifier];
  sqlite3_bind_text(insertTransactionStatement, 10, [serviceIdentifier UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v16 = sqlite3_step(insertTransactionStatement);
  if ((v16 & 0xFFFFFFFE) != 0x64)
  {
    v17 = pk_General_log(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      v20 = pk_General_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = sqlite3_sql(insertTransactionStatement);
        v22 = sqlite3_errmsg(self->_database);
        v23 = 136447234;
        v24 = "[NPKGizmoDatabase _saveTransactionLocked:forTransactionSourceIdentifier:]";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 2725;
        v29 = 2080;
        v30 = v21;
        v31 = 2080;
        v32 = v22;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert transaction failed: %s; %s)", &v23, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(insertTransactionStatement);
  sqlite3_reset(insertTransactionStatement);
}

- (void)_removeTransactionWithServiceIdentifierLocked:(id)locked forTransactionSourceIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lockedCopy = locked;
  removeTransactionWithServiceIdentifierStatement = [(NPKGizmoDatabase *)self removeTransactionWithServiceIdentifierStatement];
  uTF8String = [identifierCopy UTF8String];

  sqlite3_bind_text(removeTransactionWithServiceIdentifierStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  uTF8String2 = [lockedCopy UTF8String];

  sqlite3_bind_text(removeTransactionWithServiceIdentifierStatement, 2, uTF8String2, -1, 0xFFFFFFFFFFFFFFFFLL);
  v11 = sqlite3_step(removeTransactionWithServiceIdentifierStatement);
  if ((v11 & 0xFFFFFFFE) != 0x64)
  {
    v12 = pk_General_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sqlite3_sql(removeTransactionWithServiceIdentifierStatement);
        v17 = sqlite3_errmsg(self->_database);
        v18 = 136447234;
        v19 = "[NPKGizmoDatabase _removeTransactionWithServiceIdentifierLocked:forTransactionSourceIdentifier:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 2740;
        v24 = 2080;
        v25 = v16;
        v26 = 2080;
        v27 = v17;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete transaction failed: %s; %s)", &v18, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(removeTransactionWithServiceIdentifierStatement);
  sqlite3_reset(removeTransactionWithServiceIdentifierStatement);
}

- (void)_removeTransactionWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  removeTransactionStatement = [(NPKGizmoDatabase *)self removeTransactionStatement];
  uTF8String = [identifierCopy UTF8String];

  sqlite3_bind_text(removeTransactionStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(removeTransactionStatement);
  if ((v7 & 0xFFFFFFFE) != 0x64)
  {
    v8 = pk_General_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_sql(removeTransactionStatement);
        v13 = sqlite3_errmsg(self->_database);
        v14 = 136447234;
        v15 = "[NPKGizmoDatabase _removeTransactionWithIdentifier:]";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 2755;
        v20 = 2080;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete transaction failed: %s; %s)", &v14, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(removeTransactionStatement);
  sqlite3_reset(removeTransactionStatement);
}

- (void)_removeTransactionsForTransactionSource:(id)source
{
  v24 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  deleteTransactionsForTransactionSourceStatement = [(NPKGizmoDatabase *)self deleteTransactionsForTransactionSourceStatement];
  uTF8String = [sourceCopy UTF8String];

  sqlite3_bind_text(deleteTransactionsForTransactionSourceStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(deleteTransactionsForTransactionSourceStatement);
  if ((v7 & 0xFFFFFFFE) != 0x64)
  {
    v8 = pk_General_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_sql(deleteTransactionsForTransactionSourceStatement);
        v13 = sqlite3_errmsg(self->_database);
        v14 = 136447234;
        v15 = "[NPKGizmoDatabase _removeTransactionsForTransactionSource:]";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 2769;
        v20 = 2080;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", &v14, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(deleteTransactionsForTransactionSourceStatement);
  sqlite3_reset(deleteTransactionsForTransactionSourceStatement);
}

- (void)_trimTransactionsForTransactionSourceIdentifierLocked:(id)locked withPaymentCredentialType:(int64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  v6 = PKMaxPaymentTransactionsForCredentialType();
  trimTransactionsForTransactionSourceStatement = [(NPKGizmoDatabase *)self trimTransactionsForTransactionSourceStatement];
  sqlite3_bind_text(trimTransactionsForTransactionSourceStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(trimTransactionsForTransactionSourceStatement, 2, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(trimTransactionsForTransactionSourceStatement, 3, v6);
  v9 = sqlite3_step(trimTransactionsForTransactionSourceStatement);
  if ((v9 & 0xFFFFFFFE) != 0x64)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_sql(trimTransactionsForTransactionSourceStatement);
        v15 = sqlite3_errmsg(self->_database);
        v16 = 136447234;
        v17 = "[NPKGizmoDatabase _trimTransactionsForTransactionSourceIdentifierLocked:withPaymentCredentialType:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 2787;
        v22 = 2080;
        v23 = v14;
        v24 = 2080;
        v25 = v15;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Trim transactions failed: %s; %s)", &v16, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(trimTransactionsForTransactionSourceStatement);
  sqlite3_reset(trimTransactionsForTransactionSourceStatement);
}

- (id)_transactionsForTransactionSourceIdentifierLocked:(id)locked withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderByDate:(int64_t)byDate limit:(unint64_t)limit
{
  lockedCopy = locked;
  dateCopy = date;
  endDateCopy = endDate;
  array = [MEMORY[0x277CBEB18] array];
  v19 = [(NPKGizmoDatabase *)self selectTransactionsStatementWithTransactionSource:source orderByDate:byDate limit:limit];
  sqlite3_bind_text(v19, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v19, 2, data == 0);
  sqlite3_bind_int(v19, 3, data == 1);
  sqlite3_bind_int(v19, 4, data != 1);
  sqlite3_bind_int(v19, 5, 2);
  sqlite3_bind_int(v19, 6, data != 2);
  sqlite3_bind_int(v19, 7, 2);
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dateCopy = [MEMORY[0x277CBEAA8] distantPast];
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  endDateCopy = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_3:
  [dateCopy timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v19, 8, v20);
  [endDateCopy timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v19, 9, v21);
  if (limit)
  {
    sqlite3_bind_int(v19, 10, limit);
  }

  while (sqlite3_step(v19) == 100)
  {
    v22 = sqlite3_column_blob(v19, 0);
    v23 = sqlite3_column_bytes(v19, 0);
    v24 = objc_autoreleasePoolPush();
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v23];
    v26 = objc_opt_class();
    v27 = NPKSecureUnarchiveObject(v25, v26);
    if (v27)
    {
      [array addObject:v27];
    }

    objc_autoreleasePoolPop(v24);
  }

  sqlite3_clear_bindings(v19);
  sqlite3_reset(v19);

  return array;
}

- (id)_transactionWithIdentifierLocked:(id)locked
{
  lockedCopy = locked;
  selectTransactionWithIdentifierStatement = [(NPKGizmoDatabase *)self selectTransactionWithIdentifierStatement];
  sqlite3_bind_text(selectTransactionWithIdentifierStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectTransactionWithIdentifierStatement) == 100)
  {
    v6 = sqlite3_column_blob(selectTransactionWithIdentifierStatement, 0);
    v7 = sqlite3_column_bytes(selectTransactionWithIdentifierStatement, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    v10 = objc_opt_class();
    v11 = NPKSecureUnarchiveObject(v9, v10);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  sqlite3_clear_bindings(selectTransactionWithIdentifierStatement);
  sqlite3_reset(selectTransactionWithIdentifierStatement);

  return v11;
}

- (id)_transactionWithServiceIdentifierLocked:(id)locked
{
  lockedCopy = locked;
  selectTransactionWithServiceIdentifierStatement = [(NPKGizmoDatabase *)self selectTransactionWithServiceIdentifierStatement];
  sqlite3_bind_text(selectTransactionWithServiceIdentifierStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectTransactionWithServiceIdentifierStatement) == 100)
  {
    v6 = sqlite3_column_blob(selectTransactionWithServiceIdentifierStatement, 0);
    v7 = sqlite3_column_bytes(selectTransactionWithServiceIdentifierStatement, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    v10 = objc_opt_class();
    v11 = NPKSecureUnarchiveObject(v9, v10);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  sqlite3_clear_bindings(selectTransactionWithServiceIdentifierStatement);
  sqlite3_reset(selectTransactionWithServiceIdentifierStatement);

  return v11;
}

- (id)_transactionSourceIdentifierForTransactionWithIdentifierLocked:(id)locked
{
  lockedCopy = locked;
  selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = [(NPKGizmoDatabase *)self selectTransactionSourceIdentifierForTransactionWithIdentifierStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement);
  sqlite3_reset(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement);

  return v7;
}

- (void)_createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:(id)locked
{
  v26 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  v5 = [(NPKGizmoDatabase *)self _transactionSourceIdentifierForPassUniqueIdentifierLocked:lockedCopy];

  if (!v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    insertTransactionSourceIdentifierForPassStatement = [(NPKGizmoDatabase *)self insertTransactionSourceIdentifierForPassStatement];
    sqlite3_bind_text(insertTransactionSourceIdentifierForPassStatement, 1, [uUIDString UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int(insertTransactionSourceIdentifierForPassStatement, 2, 0);
    sqlite3_bind_text(insertTransactionSourceIdentifierForPassStatement, 3, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v9 = sqlite3_step(insertTransactionSourceIdentifierForPassStatement);
    if ((v9 & 0xFFFFFFFE) != 0x64)
    {
      v10 = pk_General_log(v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v13 = pk_General_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sqlite3_sql(insertTransactionSourceIdentifierForPassStatement);
          v15 = sqlite3_errmsg(self->_database);
          v16 = 136447234;
          v17 = "[NPKGizmoDatabase _createTransactionSourceIdentifierIfNecessaryForPassWithUniqueIDLocked:]";
          v18 = 2082;
          v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v20 = 2048;
          v21 = 2901;
          v22 = 2080;
          v23 = v14;
          v24 = 2080;
          v25 = v15;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert transaction source identifier failed: %s; %s)", &v16, 0x34u);
        }
      }

      _NPKAssertAbort();
    }

    sqlite3_clear_bindings(insertTransactionSourceIdentifierForPassStatement);
    sqlite3_reset(insertTransactionSourceIdentifierForPassStatement);
  }
}

- (void)_removeTransactionSourceIdentifierForPassWithUniqueIDLocked:(id)locked
{
  v24 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  deleteTransactionSourceIdentifierForPassStatement = [(NPKGizmoDatabase *)self deleteTransactionSourceIdentifierForPassStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(deleteTransactionSourceIdentifierForPassStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(deleteTransactionSourceIdentifierForPassStatement);
  if ((v7 & 0xFFFFFFFE) != 0x64)
  {
    v8 = pk_General_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_sql(deleteTransactionSourceIdentifierForPassStatement);
        v13 = sqlite3_errmsg(self->_database);
        v14 = 136447234;
        v15 = "[NPKGizmoDatabase _removeTransactionSourceIdentifierForPassWithUniqueIDLocked:]";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 2916;
        v20 = 2080;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete transaction source identifier failed: %s; %s)", &v14, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(deleteTransactionSourceIdentifierForPassStatement);
  sqlite3_reset(deleteTransactionSourceIdentifierForPassStatement);
}

- (id)_transactionSourceIdentifierForTransactionWithServiceIdentifierLocked:(id)locked
{
  lockedCopy = locked;
  selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement = [(NPKGizmoDatabase *)self selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement);
  sqlite3_reset(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement);

  return v7;
}

- (id)_transactionSourceIdentifierForPassUniqueIdentifierLocked:(id)locked
{
  lockedCopy = locked;
  selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = [(NPKGizmoDatabase *)self selectTransactionSourceIdentifierForPassUniqueIdentifierStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement);
  sqlite3_reset(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement);

  return v7;
}

- (id)_passUniqueIdentifierForTransactionSourceIdentifierLocked:(id)locked
{
  lockedCopy = locked;
  selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = [(NPKGizmoDatabase *)self selectPassUniqueIdentifierForTransactionSourceIdentifierStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement) == 100)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement, 0)}];
  }

  else
  {
    v7 = 0;
  }

  sqlite3_clear_bindings(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement);
  sqlite3_reset(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement);

  return v7;
}

- (id)_transitAppletStateForPassWithUniqueIDLocked:(id)locked
{
  lockedCopy = locked;
  selectTransitAppletStateForPassStatement = [(NPKGizmoDatabase *)self selectTransitAppletStateForPassStatement];
  sqlite3_bind_text(selectTransitAppletStateForPassStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectTransitAppletStateForPassStatement) == 100)
  {
    v6 = sqlite3_column_blob(selectTransitAppletStateForPassStatement, 0);
    v7 = sqlite3_column_bytes(selectTransitAppletStateForPassStatement, 0);
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
    if ([v9 length])
    {
      v10 = objc_opt_class();
      v11 = NPKSecureUnarchiveObject(v9, v10);
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = 0;
  }

  sqlite3_clear_bindings(selectTransitAppletStateForPassStatement);
  sqlite3_reset(selectTransitAppletStateForPassStatement);

  return v11;
}

- (void)_setTransitAppletStateLocked:(id)locked forPassWithUniqueID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dCopy = d;
  if (!dCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 2988;
        v24 = 2080;
        v25 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = lockedCopy;
  v17 = dCopy;
  v13 = dCopy;
  v14 = lockedCopy;
  dispatch_async(dbQueue, block);
}

void __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v21 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]_block_invoke";
        v22 = 2082;
        v23 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v24 = 2048;
        v25 = 2991;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = [a1[4] updateTransitAppletStateForPassStatement];
  v7 = a1[5];
  if (v7)
  {
    v8 = NPKSecureArchiveObject(v7);
    sqlite3_bind_blob(v6, 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v6, 1);
  }

  sqlite3_bind_text(v6, 2, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v9 = sqlite3_step(v6);
  if (v9 != 101)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_sql(v6);
        v15 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v21 = "[NPKGizmoDatabase _setTransitAppletStateLocked:forPassWithUniqueID:]_block_invoke";
        v22 = 2082;
        v23 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v24 = 2048;
        v25 = 3006;
        v26 = 2080;
        v27 = v14;
        v28 = 2080;
        v29 = v15;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Updating transit applet state failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v6);
  sqlite3_reset(v6);
  v16 = *(a1[4] + 46);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke_480;
  v17[3] = &unk_279948298;
  v18 = a1[6];
  v19 = a1[5];
  [v16 enumerateObjectsUsingBlock:v17];
}

void __69__NPKGizmoDatabase__setTransitAppletStateLocked_forPassWithUniqueID___block_invoke_480(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new transit applet state %@", &v15, 0x16u);
      }
    }

    [v6 setTransitAppletState:*(a1 + 40)];
    *a4 = 1;
  }
}

- (void)_setCurrentEphemeralTransactionIdentifier:(id)identifier forTransactionSourceIdentifier:(id)sourceIdentifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  if (!sourceIdentifierCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v27 = 136446978;
        v28 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        v29 = 2082;
        v30 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v31 = 2048;
        v32 = 3022;
        v33 = 2080;
        v34 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil transaction source identifier)", &v27, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (![(NPKGizmoDatabase *)self database])
  {
    v12 = pk_General_log(0);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v27 = 136446722;
        v28 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        v29 = 2082;
        v30 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v31 = 2048;
        v32 = 3023;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v27, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (identifierCopy)
  {
    insertEphemeralTransactionStatement = [(NPKGizmoDatabase *)self insertEphemeralTransactionStatement];
    sqlite3_bind_text(insertEphemeralTransactionStatement, 1, [sourceIdentifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    uTF8String = [identifierCopy UTF8String];
    v18 = insertEphemeralTransactionStatement;
    v19 = 2;
  }

  else
  {
    insertEphemeralTransactionStatement = [(NPKGizmoDatabase *)self deleteEphemeralTransactionByTransactionSourceIdentifierStatement];
    uTF8String = [sourceIdentifierCopy UTF8String];
    v18 = insertEphemeralTransactionStatement;
    v19 = 1;
  }

  sqlite3_bind_text(v18, v19, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v20 = sqlite3_step(insertEphemeralTransactionStatement);
  if ((v20 & 0xFFFFFFFE) != 0x64)
  {
    v21 = pk_General_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      v24 = pk_General_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sqlite3_sql(insertEphemeralTransactionStatement);
        v26 = sqlite3_errmsg(self->_database);
        v27 = 136447234;
        v28 = "[NPKGizmoDatabase _setCurrentEphemeralTransactionIdentifier:forTransactionSourceIdentifier:]";
        v29 = 2082;
        v30 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v31 = 2048;
        v32 = 3042;
        v33 = 2080;
        v34 = v25;
        v35 = 2080;
        v36 = v26;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete ephemeral transaction failed: %s; %s)", &v27, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(insertEphemeralTransactionStatement);
  sqlite3_reset(insertEphemeralTransactionStatement);
}

- (id)_currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = pk_General_log(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = 136446978;
        v17 = "[NPKGizmoDatabase _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 3049;
        v22 = 2080;
        v23 = "[NPKGizmoDatabase _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:]";
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil transaction source identifier)", &v16, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (![(NPKGizmoDatabase *)self database])
  {
    v9 = pk_General_log(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136446722;
        v17 = "[NPKGizmoDatabase _currentEphemeralTransactionIdentifierForTransactionSourceIdentifier:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 3050;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v16, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  currentEphemeralTransactionIdentifierStatement = [(NPKGizmoDatabase *)self currentEphemeralTransactionIdentifierStatement];
  sqlite3_bind_text(currentEphemeralTransactionIdentifierStatement, 1, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(currentEphemeralTransactionIdentifierStatement) == 100)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(currentEphemeralTransactionIdentifierStatement, 0)}];
  }

  else
  {
    v14 = 0;
  }

  sqlite3_clear_bindings(currentEphemeralTransactionIdentifierStatement);
  sqlite3_reset(currentEphemeralTransactionIdentifierStatement);

  return v14;
}

- (id)_lastAddValueAmountForPassWithUniqueIDLocked:(id)locked
{
  lockedCopy = locked;
  selectLastAddValueAmountForPassStatement = [(NPKGizmoDatabase *)self selectLastAddValueAmountForPassStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectLastAddValueAmountForPassStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectLastAddValueAmountForPassStatement) == 100 && (v7 = sqlite3_column_text(selectLastAddValueAmountForPassStatement, 0)) != 0 && *v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    v9 = [MEMORY[0x277CCA980] decimalNumberWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  sqlite3_clear_bindings(selectLastAddValueAmountForPassStatement);
  sqlite3_reset(selectLastAddValueAmountForPassStatement);

  return v9;
}

- (void)_setLastAddValueAmountLocked:(id)locked forPassWithUniqueID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dCopy = d;
  if (!dCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 3083;
        v24 = 2080;
        v25 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = lockedCopy;
  v17 = dCopy;
  v13 = dCopy;
  v14 = lockedCopy;
  dispatch_async(dbQueue, block);
}

void __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v24 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]_block_invoke";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 3086;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = [a1[4] updateLastAddValueAmountForPassStatement];
  v7 = a1[5];
  if (v7)
  {
    v8 = [v7 stringValue];
    sqlite3_bind_text(v6, 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v6, 1);
  }

  sqlite3_bind_text(v6, 2, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v9 = sqlite3_step(v6);
  if (v9 != 101)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_sql(v6);
        v15 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v24 = "[NPKGizmoDatabase _setLastAddValueAmountLocked:forPassWithUniqueID:]_block_invoke";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 3100;
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Setting last add value amount failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v6);
  sqlite3_reset(v6);
  v16 = *(a1[4] + 46);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke_481;
  v20 = &unk_279948298;
  v21 = a1[6];
  v22 = a1[5];
  [v16 enumerateObjectsUsingBlock:&v17];
  [a1[4] _notifyDatabaseChangedExternally];
  [a1[4] _notifyDatabaseChangedWithNoop:0];
}

void __69__NPKGizmoDatabase__setLastAddValueAmountLocked_forPassWithUniqueID___block_invoke_481(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new last add value amount %@", &v15, 0x16u);
      }
    }

    [v6 setLastAddValueAmount:*(a1 + 40)];
    *a4 = 1;
  }
}

- (id)_pendingAddValueDateForPassWithUniqueIDLocked:(id)locked
{
  lockedCopy = locked;
  selectPendingAddValueDateForPassStatement = [(NPKGizmoDatabase *)self selectPendingAddValueDateForPassStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectPendingAddValueDateForPassStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectPendingAddValueDateForPassStatement) == 100 && (v7 = sqlite3_column_int(selectPendingAddValueDateForPassStatement, 0)) != 0)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7];
  }

  else
  {
    v8 = 0;
  }

  sqlite3_clear_bindings(selectPendingAddValueDateForPassStatement);
  sqlite3_reset(selectPendingAddValueDateForPassStatement);

  return v8;
}

- (void)_setPendingAddValueDateLocked:(id)locked forPassWithUniqueID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dCopy = d;
  if (!dCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v19 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v22 = 2048;
        v23 = 3135;
        v24 = 2080;
        v25 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = lockedCopy;
  v17 = dCopy;
  v13 = dCopy;
  v14 = lockedCopy;
  dispatch_async(dbQueue, block);
}

void __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v24 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]_block_invoke";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 3138;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = [a1[4] updatePendingAddValueDateForPassStatement];
  v7 = a1[5];
  if (v7)
  {
    [v7 timeIntervalSinceReferenceDate];
    sqlite3_bind_int(v6, 1, v8);
  }

  else
  {
    sqlite3_bind_null(v6, 1);
  }

  sqlite3_bind_text(v6, 2, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v9 = sqlite3_step(v6);
  if (v9 != 101)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_sql(v6);
        v15 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v24 = "[NPKGizmoDatabase _setPendingAddValueDateLocked:forPassWithUniqueID:]_block_invoke";
        v25 = 2082;
        v26 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v27 = 2048;
        v28 = 3152;
        v29 = 2080;
        v30 = v14;
        v31 = 2080;
        v32 = v15;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Setting pending add value date failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v6);
  sqlite3_reset(v6);
  v16 = *(a1[4] + 46);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke_482;
  v20 = &unk_279948298;
  v21 = a1[6];
  v22 = a1[5];
  [v16 enumerateObjectsUsingBlock:&v17];
  [a1[4] _notifyDatabaseChangedExternally];
  [a1[4] _notifyDatabaseChangedWithNoop:0];
}

void __70__NPKGizmoDatabase__setPendingAddValueDateLocked_forPassWithUniqueID___block_invoke_482(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new pending add value date %@", &v15, 0x16u);
      }
    }

    [v6 setPendingAddValueDate:*(a1 + 40)];
    *a4 = 1;
  }
}

- (id)_paymentBalancesForPassWithUniqueIDLocked:(id)locked
{
  lockedCopy = locked;
  selectBalancesForPassStatement = [(NPKGizmoDatabase *)self selectBalancesForPassStatement];
  sqlite3_bind_text(selectBalancesForPassStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v6 = sqlite3_step(selectBalancesForPassStatement);
  if (v6 == 100)
  {
    v7 = sqlite3_column_blob(selectBalancesForPassStatement, 0);
    v8 = sqlite3_column_bytes(selectBalancesForPassStatement, 0);
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:v8];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = NPKSecureUnarchiveObjectOfClasses(v10, v13);

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v15 = pk_General_log(v6);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = pk_General_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: selectBalancesForPassStatement does not equal row", buf, 2u);
      }
    }

    v14 = 0;
  }

  sqlite3_clear_bindings(selectBalancesForPassStatement);
  sqlite3_reset(selectBalancesForPassStatement);

  return v14;
}

- (void)_setPaymentBalancesLocked:(id)locked forPassWithUniqueID:(id)d
{
  v46 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dCopy = d;
  if (!dCopy)
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v36 = 136446978;
        v37 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        v38 = 2082;
        v39 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v40 = 2048;
        v41 = 3191;
        v42 = 2080;
        v43 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", &v36, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  [(NPKGizmoDatabase *)self _loadInitialManifestLocked];
  if (![(NPKGizmoDatabase *)self database])
  {
    v12 = pk_General_log(0);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v36 = 136446722;
        v37 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        v38 = 2082;
        v39 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v40 = 2048;
        v41 = 3193;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v36, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  updateBalancesForPassStatement = [(NPKGizmoDatabase *)self updateBalancesForPassStatement];
  v17 = updateBalancesForPassStatement;
  if (lockedCopy)
  {
    v18 = NPKSecureArchiveObject(lockedCopy);
    sqlite3_bind_blob(v17, 1, [v18 bytes], objc_msgSend(v18, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v19 = pk_General_log(updateBalancesForPassStatement);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_General_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Passed empty balances, storing null", &v36, 2u);
      }
    }

    sqlite3_bind_null(v17, 1);
  }

  sqlite3_bind_text(v17, 2, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v23 = sqlite3_step(v17);
  v24 = v23;
  v25 = pk_General_log(v23);
  v26 = v25;
  if (v24 != 101)
  {
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (v31)
    {
      v33 = pk_General_log(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = sqlite3_sql(v17);
        v35 = sqlite3_errmsg(self->_database);
        v36 = 136447234;
        v37 = "[NPKGizmoDatabase _setPaymentBalancesLocked:forPassWithUniqueID:]";
        v38 = 2082;
        v39 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v40 = 2048;
        v41 = 3210;
        v42 = 2080;
        v43 = v34;
        v44 = 2080;
        v45 = v35;
        _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Updating balances failed: %s; %s)", &v36, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  v27 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v27)
  {
    v29 = pk_General_log(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      database = [(NPKGizmoDatabase *)self database];
      v36 = 134218498;
      v37 = database;
      v38 = 2112;
      v39 = lockedCopy;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Successfully wrote balances in database: %p, balance: %@, uniqueID: %@", &v36, 0x20u);
    }
  }

  sqlite3_clear_bindings(v17);
  sqlite3_reset(v17);
}

- (id)_subcredentialsForPassWithUniqueIDLocked:(id)locked paymentApplicationIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  identifierCopy = identifier;
  v8 = [MEMORY[0x277CBEB58] set];
  ppStmt = 0;
  if ([identifierCopy length])
  {
    v9 = @"SELECT encoded_subcredentials FROM subcredentials WHERE pass_unique_id = ? AND payment_application_id = ?";
  }

  else
  {
    v9 = @"SELECT encoded_subcredentials FROM subcredentials WHERE pass_unique_id = ? AND payment_application_id IS NULL";
  }

  v10 = sqlite3_prepare_v2([(NPKGizmoDatabase *)self database], [(__CFString *)v9 UTF8String], -1, &ppStmt, 0);
  if (v10)
  {
    v11 = pk_General_log(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
        *buf = 136446978;
        v29 = "[NPKGizmoDatabase _subcredentialsForPassWithUniqueIDLocked:paymentApplicationIdentifier:]";
        v30 = 2082;
        v31 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v32 = 2048;
        v33 = 3230;
        v34 = 2080;
        v35 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare select subcredentials statement: %s)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_bind_text(ppStmt, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if ([identifierCopy length])
  {
    sqlite3_bind_text(ppStmt, 2, [identifierCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  while (sqlite3_step(ppStmt) == 100)
  {
    v16 = sqlite3_column_blob(ppStmt, 0);
    v17 = sqlite3_column_bytes(ppStmt, 0);
    v18 = objc_autoreleasePoolPush();
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v17];
    if ([v19 length])
    {
      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = NPKSecureUnarchiveObjectOfClasses(v19, v22);

      allObjects = [v23 allObjects];
      [v8 addObjectsFromArray:allObjects];
    }

    objc_autoreleasePoolPop(v18);
  }

  sqlite3_clear_bindings(ppStmt);
  sqlite3_reset(ppStmt);
  sqlite3_finalize(ppStmt);
  v25 = [v8 copy];

  return v25;
}

- (void)_setSubcredentialsLocked:(id)locked forPassWithUniqueID:(id)d paymentApplicationIdentifier:(id)identifier
{
  v47 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dCopy = d;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (!dCopy)
  {
    v12 = pk_General_log(identifierCopy);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v37 = 136446978;
        v38 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        v39 = 2082;
        v40 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v41 = 2048;
        v42 = 3261;
        v43 = 2080;
        v44 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil unique ID)", &v37, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (![(NPKGizmoDatabase *)self database])
  {
    v16 = pk_General_log(0);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v19 = pk_General_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v37 = 136446722;
        v38 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        v39 = 2082;
        v40 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v41 = 2048;
        v42 = 3262;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v37, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  deleteSubcredentialsStatement = [(NPKGizmoDatabase *)self deleteSubcredentialsStatement];
  sqlite3_bind_text(deleteSubcredentialsStatement, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if ([v11 length])
  {
    sqlite3_bind_text(deleteSubcredentialsStatement, 2, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(deleteSubcredentialsStatement, 2);
  }

  v21 = sqlite3_step(deleteSubcredentialsStatement);
  if ((v21 - 102) <= 0xFFFFFFFD)
  {
    v22 = pk_General_log(v21);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      v25 = pk_General_log(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = sqlite3_sql(deleteSubcredentialsStatement);
        v27 = sqlite3_errmsg(self->_database);
        v37 = 136447234;
        v38 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
        v39 = 2082;
        v40 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v41 = 2048;
        v42 = 3275;
        v43 = 2080;
        v44 = v26;
        v45 = 2080;
        v46 = v27;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete subcredential sets failed: %s; %s)", &v37, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(deleteSubcredentialsStatement);
  sqlite3_reset(deleteSubcredentialsStatement);
  if (lockedCopy && [lockedCopy count])
  {
    insertSubcredentialsStatement = [(NPKGizmoDatabase *)self insertSubcredentialsStatement];
    v29 = NPKSecureArchiveObject(lockedCopy);
    sqlite3_bind_text(insertSubcredentialsStatement, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if ([v11 length])
    {
      sqlite3_bind_text(insertSubcredentialsStatement, 2, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_bind_null(insertSubcredentialsStatement, 2);
    }

    sqlite3_bind_blob(insertSubcredentialsStatement, 3, [v29 bytes], objc_msgSend(v29, "length"), 0xFFFFFFFFFFFFFFFFLL);
    v30 = sqlite3_step(insertSubcredentialsStatement);
    if (v30 != 101)
    {
      v31 = pk_General_log(v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (v32)
      {
        v34 = pk_General_log(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = sqlite3_sql(insertSubcredentialsStatement);
          v36 = sqlite3_errmsg(self->_database);
          v37 = 136447234;
          v38 = "[NPKGizmoDatabase _setSubcredentialsLocked:forPassWithUniqueID:paymentApplicationIdentifier:]";
          v39 = 2082;
          v40 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v41 = 2048;
          v42 = 3295;
          v43 = 2080;
          v44 = v35;
          v45 = 2080;
          v46 = v36;
          _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Insert subcredential set failed: %s; %s)", &v37, 0x34u);
        }
      }

      _NPKAssertAbort();
    }

    sqlite3_clear_bindings(insertSubcredentialsStatement);
    sqlite3_reset(insertSubcredentialsStatement);
  }

  [(NPKGizmoDatabase *)self _notifyDatabaseChangedExternally];
  [(NPKGizmoDatabase *)self _notifyDatabaseChangedWithNoop:0];
}

- (void)_removeSubcredentialsForPassWithUniqueIDLocked:(id)locked
{
  v24 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  deleteAllSubcredentialsForPassUniqueIDStatement = [(NPKGizmoDatabase *)self deleteAllSubcredentialsForPassUniqueIDStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(deleteAllSubcredentialsForPassUniqueIDStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(deleteAllSubcredentialsForPassUniqueIDStatement);
  if ((v7 & 0xFFFFFFFE) != 0x64)
  {
    v8 = pk_General_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sqlite3_sql(deleteAllSubcredentialsForPassUniqueIDStatement);
        v13 = sqlite3_errmsg(self->_database);
        v14 = 136447234;
        v15 = "[NPKGizmoDatabase _removeSubcredentialsForPassWithUniqueIDLocked:]";
        v16 = 2082;
        v17 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v18 = 2048;
        v19 = 3313;
        v20 = 2080;
        v21 = v12;
        v22 = 2080;
        v23 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Delete failed: %s; %s)", &v14, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(deleteAllSubcredentialsForPassUniqueIDStatement);
  sqlite3_reset(deleteAllSubcredentialsForPassUniqueIDStatement);
}

- (void)_enumerateAllPassesForMigration:(id)migration
{
  migrationCopy = migration;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NPKGizmoDatabase__enumerateAllPassesForMigration___block_invoke;
  v6[3] = &unk_2799482C0;
  v6[4] = self;
  v7 = migrationCopy;
  v5 = migrationCopy;
  [(NPKGizmoDatabase *)self _executeSQLQuery:@"SELECT encoded_pass processResultsBlock:encoded_image_sets, preferred_aid FROM pass", v6];
}

uint64_t __52__NPKGizmoDatabase__enumerateAllPassesForMigration___block_invoke(uint64_t result, int a2, sqlite3_stmt *a3)
{
  v32 = result;
  v37 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a2)
    {
      result = sqlite3_step(a3);
      if (result == 100)
      {
        v5 = 0x277CBE000uLL;
        *&v4 = 136315394;
        v31 = v4;
        do
        {
          v6 = sqlite3_column_blob(a3, 0);
          v7 = sqlite3_column_bytes(a3, 0);
          v8 = sqlite3_column_blob(a3, 1);
          v9 = sqlite3_column_bytes(a3, 1);
          v10 = sqlite3_column_text(a3, 2);
          v11 = objc_autoreleasePoolPush();
          if (v10)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
          }

          else
          {
            v12 = 0;
          }

          v13 = [*(v5 + 2704) dataWithBytes:v6 length:{v7, v31}];
          v14 = objc_opt_class();
          v15 = NPKSecureUnarchiveObject(v13, v14);
          if (v15)
          {
            v16 = [*(v5 + 2704) dataWithBytes:v8 length:v9];
            v17 = objc_opt_class();
            v18 = NPKSecureUnarchiveObject(v16, v17);
            if (v18)
            {
              [v15 setMissingImageSetsFromObject:v18];
            }

            v19 = [v15 paymentPass];
            if (v19)
            {
              v20 = [objc_opt_class() _migrationDataSource];
              v21 = [v20 secureElementIdentifiers];

              if ([v21 count])
              {
                NPKIdentifyDevicePaymentApplicationsForPass(v19, v21);
              }
            }

            if (os_variant_has_internal_ui())
            {
              v22 = [v15 passTypeIdentifier];
              v23 = [v22 length];

              if (!v23)
              {
                v25 = pk_General_log(v24);
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

                if (v26)
                {
                  v28 = pk_General_log(v27);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = [v15 uniqueID];
                    *buf = v31;
                    v34 = "[NPKGizmoDatabase _enumerateAllPassesForMigration:]_block_invoke";
                    v35 = 2112;
                    v36 = v29;
                    _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass Unarchived pass with unique identifier %@ is missing the type identifier", buf, 0x16u);
                  }
                }
              }
            }

            v30 = *(v32 + 40);
            if (v30)
            {
              (*(v30 + 16))(v30, v15, v12);
            }

            v5 = 0x277CBE000;
          }

          objc_autoreleasePoolPop(v11);
          result = sqlite3_step(a3);
        }

        while (result == 100);
      }
    }
  }

  return result;
}

- (BOOL)_updateNFCPayloadDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET nfc_payload=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v5 = 0;
    *(v10 + 24) = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__NPKGizmoDatabase__updateNFCPayloadDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);

  return v5 & 1;
}

void __53__NPKGizmoDatabase__updateNFCPayloadDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKeyedSubscript:@"nfcPayload"];
  v7 = v6;
  if (v6)
  {
    v8 = NPKSecureArchiveObject(v6);
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = [v11 objectForKeyedSubscript:@"uniqueID"];
  v10 = v9;
  if (!v9 || (sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updatePrivateLabelAndCobrandDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET private_label=? cobranded=? WHERE unique_id=?"], -1, &ppStmt, 0))
  {
    v5 = 0;
    *(v10 + 24) = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__NPKGizmoDatabase__updatePrivateLabelAndCobrandDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);

  return v5 & 1;
}

void __65__NPKGizmoDatabase__updatePrivateLabelAndCobrandDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"privateLabel"];
  v8 = [v7 BOOLValue];

  sqlite3_bind_int(*(a1 + 40), 1, v8);
  v9 = [v6 objectForKeyedSubscript:@"cobranded"];
  v10 = [v9 BOOLValue];

  sqlite3_bind_int(*(a1 + 40), 2, v10);
  v11 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v11 || (sqlite3_bind_text(*(a1 + 40), 3, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateDeviceAndPreferredPaymentApplicationsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET device_primary_payment_application=? preferred:"UTF8String" payment:? application=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__NPKGizmoDatabase__updateDeviceAndPreferredPaymentApplicationsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __80__NPKGizmoDatabase__updateDeviceAndPreferredPaymentApplicationsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectForKeyedSubscript:@"devicePrimaryPaymentApplication"];

  if (v6 && ([v14 objectForKeyedSubscript:@"devicePrimaryPaymentApplication"], v7 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  v9 = [v14 objectForKeyedSubscript:@"preferredPaymentApplication"];

  if (v9 && ([v14 objectForKeyedSubscript:@"preferredPaymentApplication"], v10 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 2);
  }

  v12 = [v14 objectForKeyedSubscript:@"uniqueID"];
  v13 = v12;
  if (!v12 || (sqlite3_bind_text(*(a1 + 40), 3, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET device_primary_contactless_payment_application=? device:"UTF8String" primary:? in:? app:? payment:? application=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__NPKGizmoDatabase__updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __88__NPKGizmoDatabase__updatePrimaryContactlessAndInAppPaymentApplicationsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 objectForKeyedSubscript:@"devicePrimaryContactlessPaymentApplication"];

  if (v6 && ([v14 objectForKeyedSubscript:@"devicePrimaryContactlessPaymentApplication"], v7 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  v9 = [v14 objectForKeyedSubscript:@"devicePrimaryInAppPaymentApplication"];

  if (v9 && ([v14 objectForKeyedSubscript:@"devicePrimaryInAppPaymentApplication"], v10 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 2);
  }

  v12 = [v14 objectForKeyedSubscript:@"uniqueID"];
  v13 = v12;
  if (!v12 || (sqlite3_bind_text(*(a1 + 40), 3, [v12 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateEncodedImageSetsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET encoded_pass=? encoded:"UTF8String" image:? sets=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__NPKGizmoDatabase__updateEncodedImageSetsDuringMigration___block_invoke;
    v7[3] = &unk_279948310;
    v7[4] = self;
    v7[5] = &v9;
    v7[6] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __59__NPKGizmoDatabase__updateEncodedImageSetsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = [v6 objectForKeyedSubscript:@"encodedPassWithoutImageSets"];
  v7 = [v6 objectForKeyedSubscript:@"encodedImageSets"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v8 || !v11 || !v7 || ([*(a1 + 32) _verifyPassDataIsUnarchivedCorrectlyWithData:v11 forPassWithUniqueID:v8], v9 = *(a1 + 48), v10 = v11, sqlite3_bind_blob(v9, 1, objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL), sqlite3_bind_blob(*(a1 + 48), 2, objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL), sqlite3_bind_text(*(a1 + 48), 3, objc_msgSend(v8, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 48)) != 101))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 48));
  sqlite3_reset(*(a1 + 48));
}

- (BOOL)_repairEncodedImagesDuringMigration:(id)migration
{
  migrationCopy = migration;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET logo_image=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0);
  v9 = 0;
  if (!(v5 | sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET background_image=? WHERE unique_id=?" UTF8String], -1, &v9, 0)))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NPKGizmoDatabase__repairEncodedImagesDuringMigration___block_invoke;
    v8[3] = &unk_279948338;
    v8[4] = &v11;
    v8[5] = ppStmt;
    v8[6] = v9;
    [migrationCopy enumerateObjectsUsingBlock:v8];
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__NPKGizmoDatabase__repairEncodedImagesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = [v6 objectForKeyedSubscript:@"encodedLogoImageData"];
  v7 = [v6 objectForKeyedSubscript:@"encodedBackgroundImageData"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (v8)
  {
    if (v11)
    {
      v9 = *(a1 + 40);
      v10 = v11;
      sqlite3_bind_blob(v9, 1, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(*(a1 + 40), 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      if (sqlite3_step(*(a1 + 40)) != 101)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a4 = 1;
      }

      sqlite3_clear_bindings(*(a1 + 40));
      sqlite3_reset(*(a1 + 40));
    }

    if (v7)
    {
      sqlite3_bind_blob(*(a1 + 48), 1, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
      sqlite3_bind_text(*(a1 + 48), 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      if (sqlite3_step(*(a1 + 48)) != 101)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a4 = 1;
      }

      sqlite3_clear_bindings(*(a1 + 48));
      sqlite3_reset(*(a1 + 48));
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)_updateIssuerCountryCodesDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET issuer_country_code=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__NPKGizmoDatabase__updateIssuerCountryCodesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __61__NPKGizmoDatabase__updateIssuerCountryCodesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v9 = [v6 objectForKeyedSubscript:@"issuerCountryCode"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateExpressPassTypesMaskDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET express_pass_types_mask=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__NPKGizmoDatabase__updateExpressPassTypesMaskDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __63__NPKGizmoDatabase__updateExpressPassTypesMaskDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"expressPassTypesMask"];
  v7 = v6;
  if (v6)
  {
    sqlite3_bind_int64(*(a1 + 40), 1, [v6 integerValue]);
  }

  v8 = [v10 objectForKeyedSubscript:@"uniqueID"];
  v9 = v8;
  if (!v8 || (sqlite3_bind_text(*(a1 + 40), 2, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateDevicePaymentApplicationsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET device_payment_applications=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__NPKGizmoDatabase__updateDevicePaymentApplicationsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __68__NPKGizmoDatabase__updateDevicePaymentApplicationsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKeyedSubscript:@"devicePaymentApplications"];

  if (v6 && ([v11 objectForKeyedSubscript:@"devicePaymentApplications"], v7 = objc_claimAutoreleasedReturnValue(), NPKSecureArchiveObject(v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  v9 = [v11 objectForKeyedSubscript:@"uniqueID"];
  v10 = v9;
  if (!v9 || (sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateIngestedDatesDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET ingested_date=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__NPKGizmoDatabase__updateIngestedDatesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __56__NPKGizmoDatabase__updateIngestedDatesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"ingestedDate"];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
  }

  v8 = *(a1 + 40);
  v11 = v7;
  [v7 timeIntervalSinceReferenceDate];
  sqlite3_bind_int(v8, 1, v9);
  v10 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v10 || (sqlite3_bind_text(*(a1 + 40), 2, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateCompleteLocalHashesDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET complete_hash=? complete:"UTF8String" hashes=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__NPKGizmoDatabase__updateCompleteLocalHashesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __62__NPKGizmoDatabase__updateCompleteLocalHashesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v13 = [v6 objectForKeyedSubscript:@"completeHash"];
  v7 = [v6 objectForKeyedSubscript:@"completeLocalHashes"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (v8)
  {
    v9 = *(a1 + 40);
    if (v13)
    {
      v10 = v13;
      sqlite3_bind_blob(v9, 1, [v13 bytes], objc_msgSend(v13, "length"), 0xFFFFFFFFFFFFFFFFLL);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sqlite3_bind_null(v9, 1);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v11 = NPKSecureArchiveObject(v7);
    if (v11)
    {
      v12 = v11;
      sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_9;
    }

LABEL_8:
    sqlite3_bind_null(*(a1 + 40), 2);
LABEL_9:
    sqlite3_bind_text(*(a1 + 40), 3, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(*(a1 + 40)) == 101)
    {
      goto LABEL_11;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  *a4 = 1;
LABEL_11:
  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateFrontAndBackFieldBucketsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET front_field_buckets=? back:"UTF8String" field:? buckets=? WHERE unique:?id=?"], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__NPKGizmoDatabase__updateFrontAndBackFieldBucketsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __67__NPKGizmoDatabase__updateFrontAndBackFieldBucketsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v13 = [v6 objectForKeyedSubscript:@"frontFieldBuckets"];
  v7 = [v6 objectForKeyedSubscript:@"backFieldBuckets"];
  v8 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (v8)
  {
    if (v13 && (NPKSecureArchiveObject(v13), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      sqlite3_bind_blob(*(a1 + 40), 1, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sqlite3_bind_null(*(a1 + 40), 1);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v11 = NPKSecureArchiveObject(v7);
    if (v11)
    {
      v12 = v11;
      sqlite3_bind_blob(*(a1 + 40), 2, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_10;
    }

LABEL_9:
    sqlite3_bind_null(*(a1 + 40), 2);
LABEL_10:
    sqlite3_bind_text(*(a1 + 40), 3, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    if (sqlite3_step(*(a1 + 40)) == 101)
    {
      goto LABEL_12;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  *a4 = 1;
LABEL_12:
  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateAvailableActionsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET available_actions=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__NPKGizmoDatabase__updateAvailableActionsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __59__NPKGizmoDatabase__updateAvailableActionsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = [v6 objectForKeyedSubscript:@"availableActions"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v10 && (NPKSecureArchiveObject(v10), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    sqlite3_bind_blob(*(a1 + 40), 1, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(*(a1 + 40), 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateOrganizationNamesDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET organization_name=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NPKGizmoDatabase__updateOrganizationNamesDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __60__NPKGizmoDatabase__updateOrganizationNamesDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v9 = [v6 objectForKeyedSubscript:@"organizationName"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateLocalizedDescriptionDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET localized_description=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__NPKGizmoDatabase__updateLocalizedDescriptionDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __63__NPKGizmoDatabase__updateLocalizedDescriptionDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v9 = [v6 objectForKeyedSubscript:@"localizedDescription"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 40);
  if (v9)
  {
    sqlite3_bind_text(v8, 1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v8, 1);
  }

  sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 40)) != 101)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateEffectivePaymentApplicationStateDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET effective_payment_application_state=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__NPKGizmoDatabase__updateEffectivePaymentApplicationStateDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __75__NPKGizmoDatabase__updateEffectivePaymentApplicationStateDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"effectivePaymentApplicationState"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateHasUserSelectableContactlessPaymentApplications:(id)applications
{
  applicationsCopy = applications;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET has_user_selectable_payment_applications=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__NPKGizmoDatabase__updateHasUserSelectableContactlessPaymentApplications___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [applicationsCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __75__NPKGizmoDatabase__updateHasUserSelectableContactlessPaymentApplications___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"hasUserSelectableContactlessPaymentApplications"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateEncodedPaymentPassDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET encoded_pass=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__NPKGizmoDatabase__updateEncodedPaymentPassDuringMigration___block_invoke;
    v7[3] = &unk_279948310;
    v7[4] = self;
    v7[5] = &v9;
    v7[6] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __61__NPKGizmoDatabase__updateEncodedPaymentPassDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = [v6 objectForKeyedSubscript:@"encodedPass"];
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];

  if (!v7 || v10 && ([*(a1 + 32) _verifyPassDataIsUnarchivedCorrectlyWithData:v10 forPassWithUniqueID:v7], v8 = *(a1 + 48), v9 = v10, sqlite3_bind_blob(v8, 1, objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL), sqlite3_bind_text(*(a1 + 48), 2, objc_msgSend(v7, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 48)) != 101))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 48));
  sqlite3_reset(*(a1 + 48));
}

- (BOOL)_updateHasStoredValueDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET has_stored_value=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__NPKGizmoDatabase__updateHasStoredValueDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __57__NPKGizmoDatabase__updateHasStoredValueDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"hasStoredValue"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateSettingsDuringMigration:(id)migration
{
  migrationCopy = migration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  ppStmt = 0;
  if (!sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE pass SET settings=? WHERE unique_id=?" UTF8String], -1, &ppStmt, 0))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__NPKGizmoDatabase__updateSettingsDuringMigration___block_invoke;
    v7[3] = &unk_2799482E8;
    v7[4] = &v9;
    v7[5] = ppStmt;
    [migrationCopy enumerateObjectsUsingBlock:v7];
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __51__NPKGizmoDatabase__updateSettingsDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 objectForKeyedSubscript:@"settings"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v10 objectForKeyedSubscript:@"uniqueID"];
  if (!v9 || (sqlite3_bind_int64(*(a1 + 40), 1, v8), sqlite3_bind_text(*(a1 + 40), 2, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), sqlite3_step(*(a1 + 40)) != 101))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  sqlite3_clear_bindings(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
}

- (BOOL)_updateTransactionSourceIdentifiersDuringMigration:(id)migration
{
  migrationCopy = migration;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  ppStmt = 0;
  v5 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE transactions SET transaction_source_identifier=? WHERE pass_unique_id=?" UTF8String], -1, &ppStmt, 0);
  v12 = 0;
  v6 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"UPDATE ephemeral_transactions SET transaction_source_identifier=? WHERE pass_unique_id=?" UTF8String], -1, &v12, 0);
  pStmt = 0;
  v7 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [CFSTR(""INSERT INTO transaction_source (transaction_source_identifier type], -1, &pStmt, 0);
  if (!v5 && !v6 && !v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__NPKGizmoDatabase__updateTransactionSourceIdentifiersDuringMigration___block_invoke;
    v10[3] = &unk_279948360;
    v10[4] = &v14;
    v10[5] = ppStmt;
    v10[6] = v12;
    v10[7] = pStmt;
    [migrationCopy enumerateObjectsUsingBlock:v10];
  }

  sqlite3_finalize(ppStmt);
  sqlite3_finalize(pStmt);
  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __71__NPKGizmoDatabase__updateTransactionSourceIdentifiersDuringMigration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];
  v8 = [v6 objectForKeyedSubscript:@"transactionSourceIdentifier"];

  if (v7 && v8)
  {
    sqlite3_bind_text(*(a1 + 40), 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(*(a1 + 40), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v9 = sqlite3_step(*(a1 + 40));
    if (v9 != 101)
    {
      v10 = v9;
      v11 = pk_General_log(v9);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v14 = pk_General_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412802;
          v28 = v7;
          v29 = 2112;
          v30 = v8;
          v31 = 1024;
          v32 = v10;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Update transactions table failed for unique ID %@ transaction source identifier %@ result %d", &v27, 0x1Cu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    sqlite3_clear_bindings(*(a1 + 40));
    sqlite3_reset(*(a1 + 40));
    sqlite3_bind_text(*(a1 + 48), 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_text(*(a1 + 48), 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v15 = sqlite3_step(*(a1 + 48));
    if (v15 != 101)
    {
      v16 = v15;
      v17 = pk_General_log(v15);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v20 = pk_General_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412802;
          v28 = v7;
          v29 = 2112;
          v30 = v8;
          v31 = 1024;
          v32 = v16;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Update ephemeral transactions table failed for unique ID %@ transaction source identifier %@ result %d", &v27, 0x1Cu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    sqlite3_clear_bindings(*(a1 + 48));
    sqlite3_reset(*(a1 + 48));
    sqlite3_bind_text(*(a1 + 56), 1, [v8 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    sqlite3_bind_int(*(a1 + 56), 2, 0);
    sqlite3_bind_text(*(a1 + 56), 3, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v21 = sqlite3_step(*(a1 + 56));
    if (v21 != 101)
    {
      v22 = v21;
      v23 = pk_General_log(v21);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v26 = pk_General_log(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412802;
          v28 = v7;
          v29 = 2112;
          v30 = v8;
          v31 = 1024;
          v32 = v22;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Insert into transaction source table failed for unique ID %@ transaction source identifier %@ result %d", &v27, 0x1Cu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }

    sqlite3_clear_bindings(*(a1 + 56));
    sqlite3_reset(*(a1 + 56));
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)_updateSubcredentialsDuringMigration:(id)migration
{
  v75 = *MEMORY[0x277D85DE8];
  migrationCopy = migration;
  pStmt = 0;
  ppStmt = 0;
  v67 = 0;
  v5 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"SELECT subcredentials FROM pass WHERE unique_id = ?" UTF8String], -1, &ppStmt, 0);
  v6 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"INSERT INTO subcredentials (pass_unique_id payment:encoded_subcredentials) VALUES (? application:{?, ?)", "UTF8String"}id], -1, &pStmt, 0);
  v7 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [@"ALTER TABLE pass DROP COLUMN subcredentials" UTF8String], -1, &v67, 0);
  v8 = v7;
  if (v5 || v6 || v7)
  {
    v42 = migrationCopy;
    v43 = pk_General_log(v7);
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

    if (v44)
    {
      v46 = pk_General_log(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
        *buf = 67109890;
        *v71 = v5;
        *&v71[4] = 1024;
        *&v71[6] = v6;
        *&v71[10] = 1024;
        *&v71[12] = v8;
        *&v71[16] = 2080;
        v72 = v47;
        _os_log_impl(&dword_25B300000, v46, OS_LOG_TYPE_ERROR, "Error: Failed to prepare statements for subcredential migration. selectResult: %d, insertResult: %d, deleteResult: %d, dbError: %s", buf, 0x1Eu);
      }
    }

    LOBYTE(v18) = 0;
    migrationCopy = v42;
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = migrationCopy;
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v10)
    {
      v11 = v10;
      selfCopy = self;
      v60 = migrationCopy;
      v12 = *v64;
      v13 = 1;
      obj = v9;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(obj);
          }

          if (!v13)
          {
            goto LABEL_56;
          }

          v15 = *(*(&v63 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"uniqueID"];
          v17 = [v15 objectForKeyedSubscript:@"devicePrimaryPaymentApplicationIdentifier"];
          if (![v16 length])
          {
            v55 = pk_General_log(0);
            v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);

            if (v56)
            {
              v58 = pk_General_log(v57);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_25B300000, v58, OS_LOG_TYPE_ERROR, "Error: Missing unique ID in migration dictionary. Skipping this pass.", buf, 2u);
              }
            }

LABEL_56:
            LOBYTE(v18) = 0;
LABEL_58:
            migrationCopy = v60;
            goto LABEL_59;
          }

          v18 = 1;
          sqlite3_bind_text(ppStmt, 1, [v16 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          v19 = sqlite3_step(ppStmt);
          if (v19 == 101)
          {
            v28 = 0;
          }

          else
          {
            v20 = v19;
            if (v19 == 100)
            {
              v21 = sqlite3_column_blob(ppStmt, 0);
              v22 = sqlite3_column_bytes(ppStmt, 0);
              v23 = objc_autoreleasePoolPush();
              v24 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:v22];
              if ([v24 length])
              {
                v25 = MEMORY[0x277CBEB98];
                v26 = objc_opt_class();
                v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
                v28 = NPKSecureUnarchiveObjectOfClasses(v24, v27);
              }

              else
              {
                v28 = 0;
              }

              objc_autoreleasePoolPop(v23);
            }

            else
            {
              v29 = pk_General_log(v19);
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

              if (v30)
              {
                v32 = pk_General_log(v31);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v33 = sqlite3_errmsg([(NPKGizmoDatabase *)selfCopy database]);
                  *buf = 138413058;
                  *v71 = v16;
                  *&v71[8] = 2112;
                  *&v71[10] = v17;
                  LOWORD(v72) = 1024;
                  *(&v72 + 2) = v20;
                  HIWORD(v72) = 2080;
                  v73 = v33;
                  _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_ERROR, "Error: Select subcredentials from pass table failed for unique ID %@ paymentApplicationIdentifier %@ result %d, dbError: %s", buf, 0x26u);
                }
              }

              v28 = 0;
              v18 = 0;
            }
          }

          sqlite3_clear_bindings(ppStmt);
          sqlite3_reset(ppStmt);
          if (!v18)
          {

            goto LABEL_58;
          }

          sqlite3_bind_text(pStmt, 1, [v16 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          if ([v17 length])
          {
            sqlite3_bind_text(pStmt, 2, [v17 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            sqlite3_bind_null(pStmt, 2);
          }

          if ([v28 count])
          {
            v34 = NPKSecureArchiveObject(v28);
            sqlite3_bind_blob(pStmt, 3, [v34 bytes], objc_msgSend(v34, "length"), 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            sqlite3_bind_null(pStmt, 3);
          }

          v35 = sqlite3_step(pStmt);
          v36 = v35;
          v13 = v35 == 101;
          if (v35 != 101)
          {
            v37 = pk_General_log(v35);
            v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

            if (v38)
            {
              v40 = pk_General_log(v39);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = sqlite3_errmsg([(NPKGizmoDatabase *)selfCopy database]);
                *buf = 138413058;
                *v71 = v16;
                *&v71[8] = 2112;
                *&v71[10] = v17;
                LOWORD(v72) = 1024;
                *(&v72 + 2) = v36;
                HIWORD(v72) = 2080;
                v73 = v41;
                _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_ERROR, "Error: Insert into subcredentials table failed for unique ID %@ paymentApplicationIdentifier %@ result %d, dbError: %s", buf, 0x26u);
              }
            }
          }

          sqlite3_clear_bindings(pStmt);
          sqlite3_reset(pStmt);
        }

        v11 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      migrationCopy = v60;
      self = selfCopy;
      if (v36 != 101)
      {
        LOBYTE(v18) = 0;
        goto LABEL_59;
      }
    }

    else
    {
    }

    v48 = sqlite3_step(v67);
    if (v48 != 101)
    {
      v49 = v48;
      v50 = pk_General_log(v48);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

      if (v51)
      {
        v53 = pk_General_log(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
          *buf = 67109378;
          *v71 = v49;
          *&v71[4] = 2080;
          *&v71[6] = v54;
          _os_log_impl(&dword_25B300000, v53, OS_LOG_TYPE_ERROR, "Error: Delete subcredentials from pass table failed. result %d, dbError: %s", buf, 0x12u);
        }
      }
    }

    sqlite3_clear_bindings(v67);
    sqlite3_reset(v67);
    LOBYTE(v18) = 1;
  }

LABEL_59:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  if (pStmt)
  {
    sqlite3_finalize(pStmt);
  }

  if (v67)
  {
    sqlite3_finalize(v67);
  }

  return v18;
}

- (id)_passForUniqueIDLocked:(id)locked includeImageSets:(BOOL)sets
{
  setsCopy = sets;
  v45 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  if (setsCopy)
  {
    selectPassAndImageSetsDataStatement = [(NPKGizmoDatabase *)self selectPassAndImageSetsDataStatement];
  }

  else
  {
    selectPassAndImageSetsDataStatement = [(NPKGizmoDatabase *)self selectPassDataStatement];
  }

  v8 = selectPassAndImageSetsDataStatement;
  sqlite3_bind_text(selectPassAndImageSetsDataStatement, 1, [lockedCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(v8) == 100)
  {
    v9 = sqlite3_column_blob(v8, 0);
    v10 = sqlite3_column_bytes(v8, 0);
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v10];
    v13 = objc_opt_class();
    v14 = NPKSecureUnarchiveObject(v12, v13);

    objc_autoreleasePoolPop(v11);
    if (v14)
    {
      if (os_variant_has_internal_ui())
      {
        passTypeIdentifier = [v14 passTypeIdentifier];
        v16 = [passTypeIdentifier length];

        if (!v16)
        {
          v18 = pk_General_log(v17);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (v19)
          {
            v21 = pk_General_log(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              uniqueID = [v14 uniqueID];
              *buf = 136315394;
              v42 = "[NPKGizmoDatabase _passForUniqueIDLocked:includeImageSets:]";
              v43 = 2112;
              v44 = uniqueID;
              _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: %s encoded_pass Unarchived pass with unique identifier %@ is missing the type identifier", buf, 0x16u);
            }
          }
        }
      }

      if (setsCopy)
      {
        v23 = sqlite3_column_blob(v8, 1);
        v24 = sqlite3_column_bytes(v8, 1);
        v25 = objc_autoreleasePoolPush();
        v26 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:v24];
        v27 = objc_opt_class();
        v28 = NPKSecureUnarchiveObject(v26, v27);
        if (v28)
        {
          [v14 setMissingImageSetsFromObject:v28];
        }

        objc_autoreleasePoolPop(v25);
      }
    }

    v29 = NPKPairedDeviceSecureElementIdentifiers();
    if ([v29 count])
    {
      paymentPass = [v14 paymentPass];

      if (paymentPass)
      {
        paymentPass2 = [v14 paymentPass];
        NPKIdentifyDevicePaymentApplicationsForPass(paymentPass2, v29);
      }
    }

    paymentPass3 = [v14 paymentPass];

    if (paymentPass3)
    {
      v33 = [(NPKGizmoDatabase *)self _subcredentialsForPassWithUniqueIDLocked:lockedCopy paymentApplicationIdentifier:0];
      if ([v33 count])
      {
        paymentPass4 = [v14 paymentPass];
        devicePrimaryPaymentApplication = [paymentPass4 devicePrimaryPaymentApplication];
        [devicePrimaryPaymentApplication setSubcredentials:v33];
      }

      paymentPass5 = [v14 paymentPass];
      devicePaymentApplications = [paymentPass5 devicePaymentApplications];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __60__NPKGizmoDatabase__passForUniqueIDLocked_includeImageSets___block_invoke;
      v39[3] = &unk_279947FF0;
      v39[4] = self;
      v40 = lockedCopy;
      [devicePaymentApplications enumerateObjectsUsingBlock:v39];
    }
  }

  else
  {
    v14 = 0;
  }

  sqlite3_clear_bindings(v8);
  sqlite3_reset(v8);

  return v14;
}

void __60__NPKGizmoDatabase__passForUniqueIDLocked_includeImageSets___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 applicationIdentifier];
  if ([v3 length])
  {
    v4 = [*(a1 + 32) _subcredentialsForPassWithUniqueIDLocked:*(a1 + 40) paymentApplicationIdentifier:v3];
    if ([v4 count])
    {
      [v5 setSubcredentials:v4];
    }
  }
}

- (BOOL)_hasPassForUniqueIDLocked:(id)locked
{
  v16 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  selectPassExistsStatement = [(NPKGizmoDatabase *)self selectPassExistsStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectPassExistsStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(selectPassExistsStatement);
  if (v7 == 100)
  {
    v8 = sqlite3_column_int(selectPassExistsStatement, 0) == 1;
  }

  else
  {
    v9 = pk_General_log(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = sqlite3_errmsg([(NPKGizmoDatabase *)self database]);
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: Error executing query: %s", &v14, 0xCu);
      }
    }

    v8 = 0;
  }

  sqlite3_clear_bindings(selectPassExistsStatement);
  sqlite3_reset(selectPassExistsStatement);
  return v8;
}

- (id)_diffForUniqueIDLocked:(id)locked
{
  lockedCopy = locked;
  selectPassDiffStatement = [(NPKGizmoDatabase *)self selectPassDiffStatement];
  uTF8String = [lockedCopy UTF8String];

  sqlite3_bind_text(selectPassDiffStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(selectPassDiffStatement) == 100)
  {
    v7 = sqlite3_column_blob(selectPassDiffStatement, 0);
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:{sqlite3_column_bytes(selectPassDiffStatement, 0)}];
    v9 = objc_opt_class();
    v10 = NPKSecureUnarchiveObject(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  sqlite3_clear_bindings(selectPassDiffStatement);
  sqlite3_reset(selectPassDiffStatement);

  return v10;
}

- (void)_saveDiffLocked:(id)locked forPassWithUniqueID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  dCopy = d;
  insertDiffStatement = [(NPKGizmoDatabase *)self insertDiffStatement];
  v9 = insertDiffStatement;
  if (lockedCopy)
  {
    v10 = NPKSecureArchiveObject(lockedCopy);
    sqlite3_bind_blob(v9, 1, [v10 bytes], objc_msgSend(v10, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(insertDiffStatement, 1);
  }

  uTF8String = [dCopy UTF8String];

  sqlite3_bind_text(v9, 2, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v12 = sqlite3_step(v9);
  if (v12 != 101)
  {
    v13 = pk_General_log(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sqlite3_sql(v9);
        v18 = sqlite3_errmsg(self->_database);
        v19 = 136447234;
        v20 = "[NPKGizmoDatabase _saveDiffLocked:forPassWithUniqueID:]";
        v21 = 2082;
        v22 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v23 = 2048;
        v24 = 4411;
        v25 = 2080;
        v26 = v17;
        v27 = 2080;
        v28 = v18;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Save diff failed: %s; %s)", &v19, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v9);
  sqlite3_reset(v9);
}

- (id)passForUniqueID:(id)d includeImageSets:(BOOL)sets
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NPKGizmoDatabase_passForUniqueID_includeImageSets___block_invoke;
  v11[3] = &unk_279948388;
  v12 = dCopy;
  v13 = &v15;
  v11[4] = self;
  setsCopy = sets;
  v8 = dCopy;
  dispatch_sync(dbQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __53__NPKGizmoDatabase_passForUniqueID_includeImageSets___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _passForUniqueIDLocked:*(a1 + 40) includeImageSets:*(a1 + 56)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (BOOL)hasPassForUniqueID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NPKGizmoDatabase_hasPassForUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  LOBYTE(dbQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dbQueue;
}

void *__39__NPKGizmoDatabase_hasPassForUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  result = [*(a1 + 32) database];
  if (result)
  {
    result = [*(a1 + 32) _hasPassForUniqueIDLocked:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (id)diffForUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NPKGizmoDatabase_diffForUniqueID___block_invoke;
  block[3] = &unk_279948130;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __36__NPKGizmoDatabase_diffForUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  if ([*(a1 + 32) database])
  {
    v2 = [*(a1 + 32) _diffForUniqueIDLocked:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)setDeletePending:(BOOL)pending forUniqueID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v7 = pk_General_log(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v10 = pk_General_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "[NPKGizmoDatabase setDeletePending:forUniqueID:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v20 = 2048;
        v21 = 4463;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: setDeletePending:forUniqueID: can't accept nil uniqueID)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NPKGizmoDatabase_setDeletePending_forUniqueID___block_invoke;
  block[3] = &unk_279946490;
  block[4] = self;
  v14 = dCopy;
  pendingCopy = pending;
  v12 = dCopy;
  dispatch_sync(dbQueue, block);
}

void __49__NPKGizmoDatabase_setDeletePending_forUniqueID___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _passForUniqueIDLocked:*(a1 + 40) includeImageSets:0];
  if (![*(a1 + 32) database])
  {
    v3 = pk_General_log(0);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v36 = "[NPKGizmoDatabase setDeletePending:forUniqueID:]_block_invoke";
        v37 = 2082;
        v38 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v39 = 2048;
        v40 = 4469;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v7 = [*(a1 + 32) updateDeletePendingStatement];
  sqlite3_bind_int(v7, 1, *(a1 + 48));
  sqlite3_bind_text(v7, 2, [*(a1 + 40) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v8 = sqlite3_step(v7);
  if (v8 != 101)
  {
    v9 = pk_General_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = sqlite3_sql(v7);
        v14 = sqlite3_errmsg(*(*(a1 + 32) + 8));
        *buf = 136447234;
        v36 = "[NPKGizmoDatabase setDeletePending:forUniqueID:]_block_invoke";
        v37 = 2082;
        v38 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v39 = 2048;
        v40 = 4480;
        v41 = 2080;
        v42 = v13;
        v43 = 2080;
        v44 = v14;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Update delete pending failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v7);
  sqlite3_reset(v7);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = *(*(a1 + 32) + 368);
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = [v20 uniqueID];
        v22 = [v21 isEqualToString:*(a1 + 40)];

        if (v22)
        {
          v23 = v20;

          if (v23)
          {
            [v23 setDeletePending:*(a1 + 48)];
          }

          goto LABEL_24;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_24:
  if (v2 && *(a1 + 48) == 1)
  {
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = NPKGizmoDatabasePassRemovedNotificationName;
    v26 = *(a1 + 32);
    v32 = NPKGizmoDatabasePassKeyName;
    v33 = v2;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v24 postNotificationName:v25 object:v26 userInfo:v27];
  }

  [*(a1 + 32) _notifyDatabaseChangedExternally];
  [*(a1 + 32) _notifyDatabaseChangedWithNoop:0];
}

- (BOOL)_getDeletePendingForUniqueID:(id)d
{
  dCopy = d;
  selectDeletePendingStatement = [(NPKGizmoDatabase *)self selectDeletePendingStatement];
  uTF8String = [dCopy UTF8String];

  sqlite3_bind_text(selectDeletePendingStatement, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v7 = sqlite3_step(selectDeletePendingStatement) == 100 && sqlite3_column_int(selectDeletePendingStatement, 0) != 0;
  sqlite3_clear_bindings(selectDeletePendingStatement);
  sqlite3_reset(selectDeletePendingStatement);
  return v7;
}

- (void)setPreferredPaymentApplication:(id)application forPaymentPass:(id)pass
{
  v42 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  passCopy = pass;
  v8 = passCopy;
  if (!passCopy)
  {
    v9 = pk_General_log(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v31 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v34 = 2048;
        v35 = 4522;
        v36 = 2080;
        v37 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]";
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil payment pass)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  if (applicationCopy)
  {
    paymentApplications = [passCopy paymentApplications];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke;
    v28[3] = &unk_2799483B0;
    v14 = applicationCopy;
    v29 = v14;
    v15 = [paymentApplications pk_anyObjectPassingTest:v28];

    if (!v15)
    {
      v17 = pk_General_log(v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v18)
      {
        v20 = pk_General_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          paymentApplications2 = [v8 paymentApplications];
          *buf = 136447490;
          v31 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]";
          v32 = 2082;
          v33 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
          v34 = 2048;
          v35 = 4525;
          v36 = 2112;
          v37 = v8;
          v38 = 2112;
          v39 = v14;
          v40 = 2112;
          v41 = paymentApplications2;
          _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Payment pass %@ did not contain payment application %@ (has applications = %@))", buf, 0x3Eu);
        }
      }

      _NPKAssertAbort();
    }
  }

  dbQueue = self->_dbQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_583;
  v25[3] = &unk_279945880;
  v25[4] = self;
  v26 = applicationCopy;
  v27 = v8;
  v23 = v8;
  v24 = applicationCopy;
  dispatch_async(dbQueue, v25);
}

uint64_t __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationIdentifier];
  v5 = [v3 applicationIdentifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_583(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  [a1[4] _loadInitialManifestLocked];
  if (![a1[4] database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v26 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]_block_invoke";
        v27 = 2082;
        v28 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v29 = 2048;
        v30 = 4528;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = [a1[4] updatePreferredAIDStatement];
  v7 = [a1[5] applicationIdentifier];
  sqlite3_bind_text(v6, 1, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v8 = a1[5];
  if (v8)
  {
    v9 = NPKSecureArchiveObject(v8);
    sqlite3_bind_blob(v6, 2, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v6, 2);
  }

  v10 = [a1[6] uniqueID];
  sqlite3_bind_text(v6, 3, [v10 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  v11 = sqlite3_step(v6);
  if (v11 != 101)
  {
    v12 = pk_General_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sqlite3_sql(v6);
        v17 = sqlite3_errmsg(*(a1[4] + 1));
        *buf = 136447234;
        v26 = "[NPKGizmoDatabase setPreferredPaymentApplication:forPaymentPass:]_block_invoke";
        v27 = 2082;
        v28 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v29 = 2048;
        v30 = 4545;
        v31 = 2080;
        v32 = v16;
        v33 = 2080;
        v34 = v17;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Update preferred AID failed: %s; %s)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  sqlite3_clear_bindings(v6);
  sqlite3_reset(v6);
  v18 = *(a1[4] + 46);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_584;
  v22 = &unk_279948298;
  v23 = a1[6];
  v24 = a1[5];
  [v18 enumerateObjectsUsingBlock:&v19];
  [a1[4] _notifyDatabaseChangedExternally];
  [a1[4] _notifyDatabaseChangedWithNoop:0];
}

void __66__NPKGizmoDatabase_setPreferredPaymentApplication_forPaymentPass___block_invoke_584(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 uniqueID];
  v8 = [*(a1 + 32) uniqueID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v11 = pk_General_log(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Updating description %@ with new preferred payment application %@", &v16, 0x16u);
      }
    }

    [v6 setPreferredPaymentApplication:*(a1 + 40)];
    *a4 = 1;
  }
}

- (id)preferredPaymentApplicationForPaymentPass:(id)pass
{
  v19 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if (!passCopy)
  {
    v5 = pk_General_log(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "[NPKGizmoDatabase preferredPaymentApplicationForPaymentPass:]";
        *&buf[12] = 2082;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        *&buf[22] = 2048;
        v17 = 4564;
        LOWORD(v18) = 2080;
        *(&v18 + 2) = "[NPKGizmoDatabase preferredPaymentApplicationForPaymentPass:]";
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %s cannot take nil payment pass)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  *&v18 = __Block_byref_object_dispose__13;
  *(&v18 + 1) = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_preferredPaymentApplicationForPaymentPass___block_invoke;
  block[3] = &unk_279948130;
  v14 = passCopy;
  v15 = buf;
  block[4] = self;
  v10 = passCopy;
  dispatch_sync(dbQueue, block);
  v11 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v11;
}

void __62__NPKGizmoDatabase_preferredPaymentApplicationForPaymentPass___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _loadInitialManifestLocked];
  if (![*(a1 + 32) database])
  {
    v2 = pk_General_log(0);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

    if (v3)
    {
      v5 = pk_General_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 136446722;
        v10 = "[NPKGizmoDatabase preferredPaymentApplicationForPaymentPass:]_block_invoke";
        v11 = 2082;
        v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v13 = 2048;
        v14 = 4568;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Nil database handle; did you check passDBIsAvailable before calling?)", &v9, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v6 = [*(a1 + 32) _getPreferredPaymentApplicationForPaymentPass:*(a1 + 40) aid:0];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_getPreferredPaymentApplicationForPaymentPass:(id)pass aid:(id *)aid
{
  passCopy = pass;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  selectPreferredAIDStatement = [(NPKGizmoDatabase *)self selectPreferredAIDStatement];
  uniqueID = [passCopy uniqueID];
  sqlite3_bind_text(selectPreferredAIDStatement, 1, [uniqueID UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (sqlite3_step(selectPreferredAIDStatement) == 100)
  {
    v9 = sqlite3_column_text(selectPreferredAIDStatement, 0);
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
      v11 = v17[5];
      v17[5] = v10;

      paymentApplications = [passCopy paymentApplications];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__NPKGizmoDatabase__getPreferredPaymentApplicationForPaymentPass_aid___block_invoke;
      v15[3] = &unk_2799483D8;
      v15[4] = &v16;
      v15[5] = &v22;
      [paymentApplications enumerateObjectsUsingBlock:v15];
    }
  }

  sqlite3_clear_bindings(selectPreferredAIDStatement);
  sqlite3_reset(selectPreferredAIDStatement);
  if (aid)
  {
    *aid = v17[5];
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __70__NPKGizmoDatabase__getPreferredPaymentApplicationForPaymentPass_aid___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)passDescriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NPKGizmoDatabase_passDescriptions__block_invoke;
  v5[3] = &unk_279948400;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__NPKGizmoDatabase_passDescriptions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadInitialManifestLocked];
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 368)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)libraryHashForWatchOSMajorVersion:(unint64_t)version
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKGizmoDatabase_libraryHashForWatchOSMajorVersion___block_invoke;
  block[3] = &unk_279947890;
  block[4] = self;
  block[5] = &v7;
  block[6] = version;
  dispatch_sync(dbQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__NPKGizmoDatabase_libraryHashForWatchOSMajorVersion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v2 = [*(a1 + 32) _libraryHashLockedForWatchOSMajorVersion:*(a1 + 48)];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)_libraryHashLockedForWatchOSMajorVersion:(unint64_t)version
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  if (!version || (self = [objc_opt_class() latestWatchOSMajorVersion], self < version))
  {
    v5 = pk_General_log(self);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v30 = "[NPKGizmoDatabase _libraryHashLockedForWatchOSMajorVersion:]";
        v31 = 2082;
        v32 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v33 = 2048;
        v34 = 4632;
        v35 = 2048;
        versionCopy = version;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Received invalid watch OS version %lu)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  libraryHashes = selfCopy->_libraryHashes;
  if (libraryHashes)
  {
    v10 = [(NSArray *)libraryHashes objectAtIndexedSubscript:version - 1];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    array = [MEMORY[0x277CBEB18] array];
    allKeys = [(NSMutableDictionary *)selfCopy->_manifest allKeys];
    v14 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__NPKGizmoDatabase__libraryHashLockedForWatchOSMajorVersion___block_invoke;
    v27[3] = &unk_279947210;
    v27[4] = selfCopy;
    v15 = array;
    v28 = v15;
    [v14 enumerateObjectsUsingBlock:v27];

    if ([v15 count])
    {
      v24 = v11;
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objc_opt_class(), "latestWatchOSMajorVersion")}];
      if ([objc_opt_class() latestWatchOSMajorVersion])
      {
        v17 = 0;
        v18 = MEMORY[0x277D85DD0];
        do
        {
          v26[0] = v18;
          v26[1] = 3221225472;
          v26[2] = __61__NPKGizmoDatabase__libraryHashLockedForWatchOSMajorVersion___block_invoke_587;
          v26[3] = &__block_descriptor_40_e17__16__0__NSArray_8l;
          v26[4] = v17;
          v19 = [v15 npkComprehension:{v26, v24}];
          v20 = NPKLibraryHashForPassHashes(v19);
          [v16 setObject:v20 atIndexedSubscript:v17];

          ++v17;
        }

        while (v17 < [objc_opt_class() latestWatchOSMajorVersion]);
      }

      v21 = [v16 copy];
      v22 = selfCopy->_libraryHashes;
      selfCopy->_libraryHashes = v21;

      v10 = [(NSArray *)selfCopy->_libraryHashes objectAtIndexedSubscript:version - 1];

      v11 = v25;
    }

    else
    {
      v10 = 0;
    }

    objc_autoreleasePoolPop(v11);
  }

  return v10;
}

void __61__NPKGizmoDatabase__libraryHashLockedForWatchOSMajorVersion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 360) objectForKey:v3];
  v5 = [v4 remoteManifestHashes];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v6 = pk_Payment_log(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Skipping pass with unique ID %@ because it has no remote manifest hashes", &v10, 0xCu);
      }
    }
  }
}

- (NSDictionary)manifestHashes
{
  latestWatchOSMajorVersion = [objc_opt_class() latestWatchOSMajorVersion];

  return [(NPKGizmoDatabase *)self manifestHashesForWatchOSMajorVersion:latestWatchOSMajorVersion];
}

- (id)manifestHashesForWatchOSMajorVersion:(unint64_t)version
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke;
  block[3] = &unk_279947890;
  block[5] = &v7;
  block[6] = version;
  block[4] = self;
  dispatch_sync(dbQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(*(a1 + 32) + 360), "count")}];
    v3 = *(*(a1 + 32) + 360);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke_2;
    v12 = &unk_279948448;
    v4 = *(a1 + 48);
    v13 = v2;
    v14 = v4;
    v5 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v9];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v5, v9, v10, v11, v12}];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __57__NPKGizmoDatabase_manifestHashesForWatchOSMajorVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 remoteManifestHashes];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
    v9 = *(a1 + 40);
    if (v8 >= v9)
    {
      v18 = [v7 objectAtIndexedSubscript:v9 - 1];
      [*(a1 + 32) setObject:v18 forKeyedSubscript:v5];

      goto LABEL_12;
    }

    v10 = pk_Payment_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v5;
        v14 = "Warning: Skipping pass with unique ID %@ from manifest calculation because it is missing manifest hash for this version";
LABEL_9:
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, v14, &v19, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = pk_Payment_log(0);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v13 = pk_Payment_log(v17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v5;
        v14 = "Notice: Skipping pass with unique ID %@ from manifest calculation because it has no remote manifest hash";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

LABEL_12:
}

- (void)enumerateAllPassesWithBlock:(id)block includeImageSets:(BOOL)sets
{
  setsCopy = sets;
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NPKGizmoDatabase_enumerateAllPassesWithBlock_includeImageSets___block_invoke;
  v8[3] = &unk_279948470;
  v9 = blockCopy;
  v7 = blockCopy;
  [(NPKGizmoDatabase *)self enumerateAllPassesAndDescriptionsWithBlock:v8 includeImageSets:setsCopy];
}

- (void)enumerateAllPassesAndDescriptionsWithBlock:(id)block includeImageSets:(BOOL)sets
{
  blockCopy = block;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke;
  block[3] = &unk_279945CF0;
  setsCopy = sets;
  block[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_sync(dbQueue, block);
}

void __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0;
    v2 = [*(*(a1 + 32) + 368) count];
    v3 = *(a1 + 32);
    v4 = *(v3 + 368);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke_2;
    v5[3] = &unk_279948498;
    v5[4] = v3;
    v9 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = v10;
    v8 = v2;
    [v4 enumerateObjectsUsingBlock:v5];

    _Block_object_dispose(v10, 8);
  }
}

void __80__NPKGizmoDatabase_enumerateAllPassesAndDescriptionsWithBlock_includeImageSets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uniqueID];
  v7 = [v3 _passForUniqueIDLocked:v5 includeImageSets:*(a1 + 64)];

  v6 = *(a1 + 40);
  ++*(*(*(a1 + 48) + 8) + 24);
  (*(v6 + 16))();
}

- (BOOL)hasPassesMatchingPassDescriptionPredicate:(id)predicate
{
  predicateCopy = predicate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NPKGizmoDatabase_hasPassesMatchingPassDescriptionPredicate___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v9 = predicateCopy;
  v10 = &v11;
  v6 = predicateCopy;
  dispatch_sync(dbQueue, block);
  LOBYTE(dbQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dbQueue;
}

void __62__NPKGizmoDatabase_hasPassesMatchingPassDescriptionPredicate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(*(a1 + 32) + 368);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(a1 + 40) evaluateWithObject:{*(*(&v7 + 1) + 8 * i), v7}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (id)filteredPassesUsingPassDescriptionPredicate:(id)predicate includeImageSets:(BOOL)sets
{
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = 0;
  dbQueue = self->_dbQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__NPKGizmoDatabase_filteredPassesUsingPassDescriptionPredicate_includeImageSets___block_invoke;
  v11[3] = &unk_279948068;
  v11[4] = self;
  v12 = predicateCopy;
  setsCopy = sets;
  v13 = &v15;
  v8 = predicateCopy;
  dispatch_sync(dbQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __81__NPKGizmoDatabase_filteredPassesUsingPassDescriptionPredicate_includeImageSets___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) database])
  {
    [*(a1 + 32) _loadInitialManifestLocked];
    v2 = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(*(a1 + 32) + 368);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([*(a1 + 40) evaluateWithObject:{v8, v15}])
          {
            v9 = *(a1 + 32);
            v10 = [v8 uniqueID];
            v11 = [v9 _passForUniqueIDLocked:v10 includeImageSets:*(a1 + 56)];

            [v2 addObject:v11];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    v12 = [v2 copy];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)_rebuildDatabaseWithPassesFromCompanionPasses
{
  v88 = *MEMORY[0x277D85DE8];
  _migrationDataSource = [objc_opt_class() _migrationDataSource];
  companionPaymentPassUniqueIDs = [_migrationDataSource companionPaymentPassUniqueIDs];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(companionPaymentPassUniqueIDs, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = companionPaymentPassUniqueIDs;
  v7 = [v6 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v76;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [_migrationDataSource companionPaymentPassWithUniqueID:*(*(&v75 + 1) + 8 * i)];
        [v5 npkSafelyAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v8);
  }

  v13 = pk_General_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 count];
      *buf = 134218242;
      v81 = v17;
      v82 = 2112;
      v83 = v6;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding payment passes migration step. Re-saving %lu payment passes with unique IDs: %@", buf, 0x16u);
    }
  }

  v63 = v6;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v72;
    do
    {
      v21 = 0;
      do
      {
        if (*v72 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v71 + 1) + 8 * v21);
        v23 = pk_General_log(v18);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

        if (v24)
        {
          v26 = pk_General_log(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            uniqueID = [v22 uniqueID];
            localizedDescription = [v22 localizedDescription];
            *buf = 138412546;
            v81 = uniqueID;
            v82 = 2112;
            v83 = localizedDescription;
            _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding - Will save payment pass with unique id: %@, localized description: %@", buf, 0x16u);
          }
        }

        v70 = 0;
        v29 = pk_General_log([(NPKGizmoDatabase *)self _savePassLocked:v22 locallyAdded:0 wasUpdate:&v70]);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

        if (v30)
        {
          v31 = pk_General_log(v18);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            uniqueID2 = [v22 uniqueID];
            localizedDescription2 = [v22 localizedDescription];
            v34 = NSStringFromBOOL();
            *buf = 138412802;
            v81 = uniqueID2;
            v82 = 2112;
            v83 = localizedDescription2;
            v84 = 2112;
            v85 = v34;
            _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Re-encoding - Did save save payment pass with unique id: %@ localized description: %@, was update?: %@", buf, 0x20u);
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v18 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
      v19 = v18;
    }

    while (v18);
  }

  has_internal_ui = os_variant_has_internal_ui();
  v36 = v63;
  if (has_internal_ui)
  {
    v37 = pk_General_log(has_internal_ui);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

    if (v38)
    {
      v40 = pk_General_log(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v81 = v63;
        _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: Verifying re-encoding payment passes after migration step. Passes to verify: %@", buf, 0xCu);
      }
    }

    v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = v63;
    v42 = [v41 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v67;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v66 + 1) + 8 * j);
          v47 = [(NPKGizmoDatabase *)self _passForUniqueIDLocked:v46 includeImageSets:0];
          passTypeIdentifier = [v47 passTypeIdentifier];
          v49 = [passTypeIdentifier length];

          if (!v49)
          {
            localizedDescription3 = [v47 localizedDescription];
            [v64 setObject:localizedDescription3 forKeyedSubscript:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v43);
    }

    v51 = [v64 count];
    v52 = pk_General_log(v51);
    v53 = v52;
    if (v51)
    {
      v54 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

      v36 = v63;
      if (v54)
      {
        v56 = pk_General_log(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v81 = v64;
          v57 = "Error: NPKGizmoDatabase: Re-encoding payment passes migration step verification found encoding issues in passes with unique IDs: %@";
          v58 = v56;
          v59 = OS_LOG_TYPE_ERROR;
          v60 = 12;
LABEL_48:
          _os_log_impl(&dword_25B300000, v58, v59, v57, buf, v60);
          goto LABEL_49;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v61 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

      v36 = v63;
      if (v61)
      {
        v56 = pk_General_log(v62);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v57 = "Notice: NPKGizmoDatabase: Re-encoding payment passes migration step verification did not find any encoding issues";
          v58 = v56;
          v59 = OS_LOG_TYPE_DEFAULT;
          v60 = 2;
          goto LABEL_48;
        }

LABEL_49:
      }
    }
  }
}

- (void)_verifyPassDataIsUnarchivedCorrectlyWithData:(id)data forPassWithUniqueID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  if (os_variant_has_internal_ui())
  {
    v7 = objc_opt_class();
    v8 = NPKSecureUnarchiveObject(dataCopy, v7);
    v9 = v8;
    if (v8)
    {
      passTypeIdentifier = [v8 passTypeIdentifier];
      v11 = [passTypeIdentifier length];

      if (v11)
      {
        goto LABEL_12;
      }

      v13 = pk_General_log(v12);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v14)
      {
        goto LABEL_12;
      }

      v16 = pk_General_log(v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v21 = 136315394;
      v22 = "[NPKGizmoDatabase _verifyPassDataIsUnarchivedCorrectlyWithData:forPassWithUniqueID:]";
      v23 = 2112;
      v24 = dCopy;
      v17 = "Warning: %s encoded_pass Updating the pass with encoded data of pass with uniqueID %@ is missing the type identifier.";
    }

    else
    {
      v18 = pk_General_log(0);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (!v19)
      {
LABEL_12:

        goto LABEL_13;
      }

      v16 = pk_General_log(v20);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_12;
      }

      v21 = 136315394;
      v22 = "[NPKGizmoDatabase _verifyPassDataIsUnarchivedCorrectlyWithData:forPassWithUniqueID:]";
      v23 = 2112;
      v24 = dCopy;
      v17 = "Warning: %s encoded_pass There was a problem unarchiving the pass archive for pass with uniqueID %@.";
    }

    _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, v17, &v21, 0x16u);
    goto LABEL_11;
  }

LABEL_13:
}

- (BOOL)_migrateDatabase:(id)database
{
  v27 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v20 = 0;
  v5 = [(NPKGizmoDatabase *)self _databaseVersionExists:&v20 + 1 valid:&v20];
  maxDatabaseVersion = [objc_opt_class() maxDatabaseVersion];
  if (v5 >= maxDatabaseVersion)
  {
    v9 = pk_General_log(maxDatabaseVersion);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (!v10)
    {
      goto LABEL_7;
    }

    v8 = pk_General_log(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: on-disk version %ld matches current version", buf, 0xCu);
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__NPKGizmoDatabase__migrateDatabase___block_invoke;
    v14[3] = &unk_2799484C0;
    v17 = v5;
    v18 = maxDatabaseVersion;
    v16 = &v21;
    v7 = databaseCopy;
    v19 = HIBYTE(v20);
    v14[4] = self;
    v15 = v7;
    [(NPKGizmoDatabase *)self _performTransactionWithBlock:v14];
    v8 = v15;
  }

LABEL_7:
  v12 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v12 & 1;
}

uint64_t __37__NPKGizmoDatabase__migrateDatabase___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      v17 = 134218240;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: on-disk version %ld out of date, migrating to current version %ld", &v17, 0x16u);
    }
  }

  v8 = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = v8;
  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(*(a1 + 48) + 8) + 24);
      v17 = 67109120;
      LODWORD(v18) = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase: migration success = %d", &v17, 8u);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      [v14 _updateDatabaseVersionRow:v15];
    }

    else
    {
      [v14 _insertDatabaseVersionRow:v15];
    }
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

- (int64_t)_databaseVersionExists:(BOOL *)exists valid:(BOOL *)valid
{
  [(NPKGizmoDatabase *)self _executeSQL:@"CREATE TABLE IF NOT EXISTS key_value_store (key TEXT NOT NULL, value TEXT);"];
  [(NPKGizmoDatabase *)self _executeSQL:@"CREATE UNIQUE INDEX IF NOT EXISTS key_value_store_idx1 ON key_value_store(key)"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__NPKGizmoDatabase__databaseVersionExists_valid___block_invoke;
  v9[3] = &unk_2799484E8;
  v9[4] = &v10;
  v9[5] = exists;
  v9[6] = valid;
  [(NPKGizmoDatabase *)self _executeSQLQuery:@"SELECT value FROM key_value_store WHERE KEY=version" processResultsBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __49__NPKGizmoDatabase__databaseVersionExists_valid___block_invoke(void *a1, int a2, sqlite3_stmt *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = sqlite3_step(a3);
    v6 = a1[5];
    if (v5 == 100)
    {
      if (v6)
      {
        *v6 = 1;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(a3, 0)}];
      v8 = [v7 integerValue];
      *(*(a1[4] + 8) + 24) = v8;
      if (*(*(a1[4] + 8) + 24) < 1)
      {
        v11 = pk_General_log(v8);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

        if (v12)
        {
          v14 = pk_General_log(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = 136446978;
            v16 = "[NPKGizmoDatabase _databaseVersionExists:valid:]_block_invoke";
            v17 = 2082;
            v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
            v19 = 2048;
            v20 = 4861;
            v21 = 2112;
            v22 = v7;
            _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Invalid pass DB version string: %@)", &v15, 0x2Au);
          }
        }

        _NPKAssertAbort();
      }

      v9 = a1[6];
      if (v9)
      {
        *v9 = 1;
      }
    }

    else
    {
      if (v6)
      {
        *v6 = 0;
      }

      v10 = a1[6];
      if (v10)
      {
        *v10 = 1;
      }
    }
  }
}

- (void)_insertDatabaseVersionRow:(int64_t)row
{
  v25 = *MEMORY[0x277D85DE8];
  maxDatabaseVersion = [objc_opt_class() maxDatabaseVersion];
  if (row < 1 || maxDatabaseVersion < row)
  {
    v6 = pk_General_log(maxDatabaseVersion);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = pk_General_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v18 = "[NPKGizmoDatabase _insertDatabaseVersionRow:]";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v21 = 2048;
        v22 = 4875;
        v23 = 2048;
        rowCopy2 = row;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot save unsupported database version %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO key_value_store (key, value) VALUES (version, %ld)", row];
  v11 = [(NPKGizmoDatabase *)self _executeSQL:v10];

  if (!v11)
  {
    v13 = pk_General_log(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v18 = "[NPKGizmoDatabase _insertDatabaseVersionRow:]";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v21 = 2048;
        v22 = 4877;
        v23 = 2048;
        rowCopy2 = row;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to save version number to DB: %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }
}

- (void)_updateDatabaseVersionRow:(int64_t)row
{
  v25 = *MEMORY[0x277D85DE8];
  maxDatabaseVersion = [objc_opt_class() maxDatabaseVersion];
  if (row < 1 || maxDatabaseVersion < row)
  {
    v6 = pk_General_log(maxDatabaseVersion);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = pk_General_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v18 = "[NPKGizmoDatabase _updateDatabaseVersionRow:]";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v21 = 2048;
        v22 = 4881;
        v23 = 2048;
        rowCopy2 = row;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot save unsupported database version %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE key_value_store SET value=%ld WHERE key=version", row];
  v11 = [(NPKGizmoDatabase *)self _executeSQL:v10];

  if (!v11)
  {
    v13 = pk_General_log(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = pk_General_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v18 = "[NPKGizmoDatabase _updateDatabaseVersionRow:]";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v21 = 2048;
        v22 = 4883;
        v23 = 2048;
        rowCopy2 = row;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to save version number to DB: %ld)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }
}

- (BOOL)_preconditionsMetForDatabaseOpen
{
  _migrationDataSource = [objc_opt_class() _migrationDataSource];

  return _migrationDataSource && MKBDeviceUnlockedSinceBoot() == 1;
}

- (void)_handleDatabaseChangedExternally
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NPKGizmoDatabase__handleDatabaseChangedExternally__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

void __52__NPKGizmoDatabase__handleDatabaseChangedExternally__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 384);
  v3 = pk_General_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2 < 1)
  {
    if (v4)
    {
      v7 = pk_General_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKGizmoDatabase DB changed externally, reloading", v8, 2u);
      }
    }

    [*(a1 + 32) _inQueue_teardownDB];
  }

  else
  {
    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: We were expecting a DB change, so suppressing DB reload", buf, 2u);
      }
    }

    --*(*(a1 + 32) + 384);
  }
}

- (void)teardownDB
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NPKGizmoDatabase_teardownDB__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(dbQueue, block);
}

uint64_t __30__NPKGizmoDatabase_teardownDB__block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: requested to teardown NPKGizmoDatabase DB", v7, 2u);
    }
  }

  return [*(a1 + 32) _inQueue_teardownDB];
}

- (void)_inQueue_teardownDB
{
  dispatch_assert_queue_V2(self->_dbQueue);
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: tearing down NPKGizmoDatabase DB", v53, 2u);
    }
  }

  deleteStatement = self->_deleteStatement;
  if (deleteStatement)
  {
    sqlite3_finalize(deleteStatement);
  }

  self->_deleteStatement = 0;
  insertStatement = self->_insertStatement;
  if (insertStatement)
  {
    sqlite3_finalize(insertStatement);
  }

  self->_insertStatement = 0;
  insertDiffStatement = self->_insertDiffStatement;
  if (insertDiffStatement)
  {
    sqlite3_finalize(insertDiffStatement);
  }

  self->_insertDiffStatement = 0;
  selectPassDataStatement = self->_selectPassDataStatement;
  if (selectPassDataStatement)
  {
    sqlite3_finalize(selectPassDataStatement);
  }

  self->_selectPassDataStatement = 0;
  selectPassAndImageSetsDataStatement = self->_selectPassAndImageSetsDataStatement;
  if (selectPassAndImageSetsDataStatement)
  {
    sqlite3_finalize(selectPassAndImageSetsDataStatement);
  }

  self->_selectPassAndImageSetsDataStatement = 0;
  selectPassExitsStatement = self->_selectPassExitsStatement;
  if (selectPassExitsStatement)
  {
    sqlite3_finalize(selectPassExitsStatement);
  }

  self->_selectPassExitsStatement = 0;
  selectPassDiffStatement = self->_selectPassDiffStatement;
  if (selectPassDiffStatement)
  {
    sqlite3_finalize(selectPassDiffStatement);
  }

  self->_selectPassDiffStatement = 0;
  updateDeletePendingStatement = self->_updateDeletePendingStatement;
  if (updateDeletePendingStatement)
  {
    sqlite3_finalize(updateDeletePendingStatement);
  }

  self->_updateDeletePendingStatement = 0;
  selectDeletePendingStatement = self->_selectDeletePendingStatement;
  if (selectDeletePendingStatement)
  {
    sqlite3_finalize(selectDeletePendingStatement);
  }

  self->_selectDeletePendingStatement = 0;
  updatePreferredAIDStatement = self->_updatePreferredAIDStatement;
  if (updatePreferredAIDStatement)
  {
    sqlite3_finalize(updatePreferredAIDStatement);
  }

  self->_updatePreferredAIDStatement = 0;
  selectPreferredAIDStatement = self->_selectPreferredAIDStatement;
  if (selectPreferredAIDStatement)
  {
    sqlite3_finalize(selectPreferredAIDStatement);
  }

  self->_selectPreferredAIDStatement = 0;
  insertTransactionStatement = self->_insertTransactionStatement;
  if (insertTransactionStatement)
  {
    sqlite3_finalize(insertTransactionStatement);
  }

  self->_insertTransactionStatement = 0;
  removeTransactionStatement = self->_removeTransactionStatement;
  if (removeTransactionStatement)
  {
    sqlite3_finalize(removeTransactionStatement);
  }

  self->_removeTransactionStatement = 0;
  removeTransactionWithServiceIdentifier = self->_removeTransactionWithServiceIdentifier;
  if (removeTransactionWithServiceIdentifier)
  {
    sqlite3_finalize(removeTransactionWithServiceIdentifier);
  }

  self->_removeTransactionWithServiceIdentifier = 0;
  selectTransactionsStatement = self->_selectTransactionsStatement;
  if (selectTransactionsStatement)
  {
    sqlite3_finalize(selectTransactionsStatement);
  }

  self->_selectTransactionsStatement = 0;
  selectTransactionsStatementWithSource = self->_selectTransactionsStatementWithSource;
  if (selectTransactionsStatementWithSource)
  {
    sqlite3_finalize(selectTransactionsStatementWithSource);
  }

  self->_selectTransactionsStatementWithSource = 0;
  selectTransactionsStatementWithoutSource = self->_selectTransactionsStatementWithoutSource;
  if (selectTransactionsStatementWithoutSource)
  {
    sqlite3_finalize(selectTransactionsStatementWithoutSource);
  }

  self->_selectTransactionsStatementWithoutSource = 0;
  selectTransactionWithIdentifierStatement = self->_selectTransactionWithIdentifierStatement;
  if (selectTransactionWithIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionWithIdentifierStatement);
  }

  self->_selectTransactionWithIdentifierStatement = 0;
  selectTransactionWithServiceIdentifierStatement = self->_selectTransactionWithServiceIdentifierStatement;
  if (selectTransactionWithServiceIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionWithServiceIdentifierStatement);
  }

  self->_selectTransactionWithServiceIdentifierStatement = 0;
  insertTransactionSourceIdentifierForPassStatement = self->_insertTransactionSourceIdentifierForPassStatement;
  if (insertTransactionSourceIdentifierForPassStatement)
  {
    sqlite3_finalize(insertTransactionSourceIdentifierForPassStatement);
  }

  self->_insertTransactionSourceIdentifierForPassStatement = 0;
  selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement;
  if (selectTransactionSourceIdentifierForTransactionWithIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionSourceIdentifierForTransactionWithIdentifierStatement);
  }

  self->_selectTransactionSourceIdentifierForTransactionWithIdentifierStatement = 0;
  selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement = self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement;
  if (selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement);
  }

  self->_selectTransactionSourceIdentifierForTransactionWithServiceIdentifierStatement = 0;
  selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement;
  if (selectTransactionSourceIdentifierForPassUniqueIdentifierStatement)
  {
    sqlite3_finalize(selectTransactionSourceIdentifierForPassUniqueIdentifierStatement);
  }

  self->_selectTransactionSourceIdentifierForPassUniqueIdentifierStatement = 0;
  selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement;
  if (selectPassUniqueIdentifierForTransactionSourceIdentifierStatement)
  {
    sqlite3_finalize(selectPassUniqueIdentifierForTransactionSourceIdentifierStatement);
  }

  self->_selectPassUniqueIdentifierForTransactionSourceIdentifierStatement = 0;
  deleteTransactionSourceIdentifierForPassStatement = self->_deleteTransactionSourceIdentifierForPassStatement;
  if (deleteTransactionSourceIdentifierForPassStatement)
  {
    sqlite3_finalize(deleteTransactionSourceIdentifierForPassStatement);
  }

  self->_deleteTransactionSourceIdentifierForPassStatement = 0;
  deleteTransactionsForTransactionSourceStatement = self->_deleteTransactionsForTransactionSourceStatement;
  if (deleteTransactionsForTransactionSourceStatement)
  {
    sqlite3_finalize(deleteTransactionsForTransactionSourceStatement);
  }

  self->_deleteTransactionsForTransactionSourceStatement = 0;
  trimTransactionsForTransactionSourceStatement = self->_trimTransactionsForTransactionSourceStatement;
  if (trimTransactionsForTransactionSourceStatement)
  {
    sqlite3_finalize(trimTransactionsForTransactionSourceStatement);
  }

  self->_trimTransactionsForTransactionSourceStatement = 0;
  selectTransitAppletStateForPassStatement = self->_selectTransitAppletStateForPassStatement;
  if (selectTransitAppletStateForPassStatement)
  {
    sqlite3_finalize(selectTransitAppletStateForPassStatement);
  }

  self->_selectTransitAppletStateForPassStatement = 0;
  updateTransitAppletStateForPassStatement = self->_updateTransitAppletStateForPassStatement;
  if (updateTransitAppletStateForPassStatement)
  {
    sqlite3_finalize(updateTransitAppletStateForPassStatement);
  }

  self->_updateTransitAppletStateForPassStatement = 0;
  insertEphemeralTransactionStatement = self->_insertEphemeralTransactionStatement;
  if (insertEphemeralTransactionStatement)
  {
    sqlite3_finalize(insertEphemeralTransactionStatement);
  }

  self->_insertEphemeralTransactionStatement = 0;
  deleteEphemeralTransactionByTransactionSourceIdentifierStatement = self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement;
  if (deleteEphemeralTransactionByTransactionSourceIdentifierStatement)
  {
    sqlite3_finalize(deleteEphemeralTransactionByTransactionSourceIdentifierStatement);
  }

  self->_deleteEphemeralTransactionByTransactionSourceIdentifierStatement = 0;
  currentEphemeralTransactionIdentifierStatement = self->_currentEphemeralTransactionIdentifierStatement;
  if (currentEphemeralTransactionIdentifierStatement)
  {
    sqlite3_finalize(currentEphemeralTransactionIdentifierStatement);
  }

  self->_currentEphemeralTransactionIdentifierStatement = 0;
  selectLastAddValueAmountForPassStatement = self->_selectLastAddValueAmountForPassStatement;
  if (selectLastAddValueAmountForPassStatement)
  {
    sqlite3_finalize(selectLastAddValueAmountForPassStatement);
  }

  self->_selectLastAddValueAmountForPassStatement = 0;
  updateLastAddValueAmountForPassStatement = self->_updateLastAddValueAmountForPassStatement;
  if (updateLastAddValueAmountForPassStatement)
  {
    sqlite3_finalize(updateLastAddValueAmountForPassStatement);
  }

  self->_updateLastAddValueAmountForPassStatement = 0;
  selectPendingAddValueDateForPassStatement = self->_selectPendingAddValueDateForPassStatement;
  if (selectPendingAddValueDateForPassStatement)
  {
    sqlite3_finalize(selectPendingAddValueDateForPassStatement);
  }

  self->_selectPendingAddValueDateForPassStatement = 0;
  updatePendingAddValueDateForPassStatement = self->_updatePendingAddValueDateForPassStatement;
  if (updatePendingAddValueDateForPassStatement)
  {
    sqlite3_finalize(updatePendingAddValueDateForPassStatement);
  }

  self->_updatePendingAddValueDateForPassStatement = 0;
  selectBalancesForPassStatement = self->_selectBalancesForPassStatement;
  if (selectBalancesForPassStatement)
  {
    sqlite3_finalize(selectBalancesForPassStatement);
  }

  self->_selectBalancesForPassStatement = 0;
  updateBalancesForPassStatement = self->_updateBalancesForPassStatement;
  if (updateBalancesForPassStatement)
  {
    sqlite3_finalize(updateBalancesForPassStatement);
  }

  self->_updateBalancesForPassStatement = 0;
  insertSubcredentialsStatement = self->_insertSubcredentialsStatement;
  if (insertSubcredentialsStatement)
  {
    sqlite3_finalize(insertSubcredentialsStatement);
  }

  self->_insertSubcredentialsStatement = 0;
  deleteSubcredentialsStatement = self->_deleteSubcredentialsStatement;
  if (deleteSubcredentialsStatement)
  {
    sqlite3_finalize(deleteSubcredentialsStatement);
  }

  self->_deleteSubcredentialsStatement = 0;
  deleteAllSubcredentialsForPassUniqueIDStatement = self->_deleteAllSubcredentialsForPassUniqueIDStatement;
  if (deleteAllSubcredentialsForPassUniqueIDStatement)
  {
    sqlite3_finalize(deleteAllSubcredentialsForPassUniqueIDStatement);
  }

  self->_deleteAllSubcredentialsForPassUniqueIDStatement = 0;
  database = self->_database;
  if (database)
  {
    sqlite3_close(database);
  }

  self->_database = 0;
  manifest = self->_manifest;
  self->_manifest = 0;

  passDescriptions = self->_passDescriptions;
  self->_passDescriptions = 0;

  libraryHashes = self->_libraryHashes;
  self->_libraryHashes = 0;

  self->_passDBIsAvailable = 0;
  [(NPKGizmoDatabase *)self _notifyDatabaseChangedWithNoop:0];
}

- (void)_handleFirstUnlock
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: First unlock detected", v7, 2u);
    }
  }

  if ([(NPKGizmoDatabase *)self _preconditionsMetForDatabaseOpen])
  {
    [(NPKGizmoDatabase *)self _attemptDatabaseOpen];
  }
}

- (void)_handleHasMigrationDataSource
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Have migration data source", v7, 2u);
    }
  }

  if ([(NPKGizmoDatabase *)self _preconditionsMetForDatabaseOpen])
  {
    [(NPKGizmoDatabase *)self _attemptDatabaseOpen];
  }
}

- (void)_attemptDatabaseOpen
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NPKGizmoDatabase__attemptDatabaseOpen__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

void *__40__NPKGizmoDatabase__attemptDatabaseOpen__block_invoke(void *result)
{
  if (!*(result[4] + 8))
  {
    v9 = v1;
    v10 = v2;
    v3 = result;
    v4 = pk_General_log(result);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Retrying opening database", v8, 2u);
      }
    }

    return [v3[4] database];
  }

  return result;
}

- (BOOL)_table:(id)_table containsColumn:(id)column
{
  v44 = *MEMORY[0x277D85DE8];
  _tableCopy = _table;
  columnCopy = column;
  v8 = pk_General_log(columnCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = columnCopy;
      v36 = 2112;
      v37 = _tableCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Start search column:%@ in table:%@", buf, 0x16u);
    }
  }

  ppStmt = 0;
  _tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info('%@')", _tableCopy];
  v13 = sqlite3_prepare_v2(-[NPKGizmoDatabase database](self, "database"), [_tableCopy UTF8String], -1, &ppStmt, 0);
  if (v13)
  {
    v14 = pk_General_log(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v17 = pk_General_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        v35 = "[NPKGizmoDatabase _table:containsColumn:]";
        v36 = 2082;
        v37 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKGizmoDatabase.m";
        v38 = 2048;
        v39 = 5060;
        v40 = 2112;
        v41 = columnCopy;
        v42 = 2112;
        v43 = _tableCopy;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Unable to prepare statement to find column:%@ in table:%@)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  while (1)
  {
    v23 = sqlite3_step(ppStmt);
    if (v23 != 100)
    {
      v24 = pk_General_log(v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      v27 = 0;
      if (v25)
      {
        v28 = pk_General_log(v26);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v35 = columnCopy;
          v36 = 2112;
          v37 = _tableCopy;
          _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Could not find column:%@ in table:%@", buf, 0x16u);
        }

        v27 = 0;
      }

      goto LABEL_11;
    }

    v19 = sqlite3_column_text(ppStmt, 1);
    if (v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      v21 = [columnCopy isEqualToString:v20];

      if (v21)
      {
        break;
      }
    }
  }

  v29 = pk_General_log(v22);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v32 = pk_General_log(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = columnCopy;
      v36 = 2112;
      v37 = _tableCopy;
      _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: found column:%@ in table:%@", buf, 0x16u);
    }
  }

  v27 = 1;
LABEL_11:
  sqlite3_finalize(ppStmt);

  return v27;
}

@end