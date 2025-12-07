@interface HDSydneyHFDMigrator
- (BOOL)migrateDataForHFDataStore:(id)store from:(const void *)from to:(void *)to recoveryAnalytics:(id)analytics error:(id *)error;
- (BOOL)migrateDataForHFDataStore:(id)store toSQLiteFrom:(const void *)from error:(id *)error;
- (HDSydneyHFDMigrator)initWithMigrationTransaction:(id)transaction;
- (id)allSeriesEntityClassesForDataStore:(id)store;
- (int64_t)migrateHFD:(id *)d;
- (void)HFDataStore:(id)store detectedCorruptionOfType:(int64_t)type code:(int)code error:(id)error shouldPromptUser:(BOOL)user initialRebuildState:(int64_t)state updatedRebuildState:(int64_t)rebuildState;
- (void)HFDataStoreDetectedOutOfSpace:(id)space;
- (void)didMigrateHFDataStore:(id)store fromState:(int64_t)state toState:(int64_t)toState success:(BOOL)success error:(id)error;
- (void)requestRebuildTransactionForHFDataStore:(id)store;
@end

@implementation HDSydneyHFDMigrator

- (HDSydneyHFDMigrator)initWithMigrationTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11.receiver = self;
  v11.super_class = HDSydneyHFDMigrator;
  v6 = [(HDSydneyHFDMigrator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
    v7->_corruptionRebuildCompleted = 0;
    verificationError = v7->_verificationError;
    v7->_verificationError = 0;

    migrationError = v7->_migrationError;
    v7->_migrationError = 0;
  }

  return v7;
}

- (id)allSeriesEntityClassesForDataStore:(id)store
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)HFDataStore:(id)store detectedCorruptionOfType:(int64_t)type code:(int)code error:(id)error shouldPromptUser:(BOOL)user initialRebuildState:(int64_t)state updatedRebuildState:(int64_t)rebuildState
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "%{public}@: Saw HFD corruption during migration to SQLite - %@", &v12, 0x16u);
  }
}

- (void)HFDataStoreDetectedOutOfSpace:(id)space
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Saw out-of-space event migrating the HFD; ignoring (the migration will likely fail)", v4, 2u);
  }
}

- (void)didMigrateHFDataStore:(id)store fromState:(int64_t)state toState:(int64_t)toState success:(BOOL)success error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  errorCopy = error;
  v13 = errorCopy;
  if (!success)
  {
    if (errorCopy)
    {
      v14 = errorCopy;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:122 format:{@"Migration failed at rebuild stage %ld without reporting an error.", toState}];
    }

    migrationError = self->_migrationError;
    self->_migrationError = v14;
  }

  v16 = self->_migrationError;
  delegate = [(HDDatabaseMigrationTransaction *)self->_transaction delegate];
  [delegate migrationTransaction:self->_transaction reportHFDMigrationStatus:v16 != 0 schemaVersion:toState error:self->_migrationError];

  if (self->_migrationError)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v19 = self->_migrationError;
      *buf = 138543874;
      selfCopy2 = self;
      v24 = 2048;
      toStateCopy2 = toState;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: HFD reported migration to %ld with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_migrationError;
      *buf = 138543874;
      selfCopy2 = self;
      v24 = 2048;
      toStateCopy2 = toState;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: HFD reported migration to %ld with error: %{public}@", buf, 0x20u);
    }
  }
}

- (void)requestRebuildTransactionForHFDataStore:(id)store
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: HFD unexpectedly requested a rebuild transaction while rebuilding", &v5, 0xCu);
  }
}

- (BOOL)migrateDataForHFDataStore:(id)store from:(const void *)from to:(void *)to recoveryAnalytics:(id)analytics error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(HDSydneyHFDMigrator *)self allSeriesEntityClassesForDataStore:store];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v17 = analyticsCopy;
        v14 = HKWithAutoreleasePool();

        if (!v14)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v15 = 1;
  }

  else
  {
    v15 = 1;
  }

LABEL_12:

  return v15;
}

uint64_t __81__HDSydneyHFDMigrator_migrateDataForHFDataStore_from_to_recoveryAnalytics_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = [*(a1[4] + 16) protectedDatabase];
  v8 = [v4 migrateDataFromDataStore:v5 to:v6 database:v7 recoveryAnalytics:a1[5] error:a2];

  return v8;
}

- (BOOL)migrateDataForHFDataStore:(id)store toSQLiteFrom:(const void *)from error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HDSydneyHFDMigrator *)self allSeriesEntityClassesForDataStore:store];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (!HKWithAutoreleasePool())
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

uint64_t __68__HDSydneyHFDMigrator_migrateDataForHFDataStore_toSQLiteFrom_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = [*(a1[4] + 16) protectedDatabase];
  v6 = [v4 migrateDataToSQLFromStore:v3 database:v5 error:a2];

  return v6;
}

- (int64_t)migrateHFD:(id *)d
{
  transaction = self->_transaction;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__HDSydneyHFDMigrator_migrateHFD___block_invoke;
  v5[3] = &unk_278625B40;
  v5[4] = self;
  return [(HDDatabaseMigrationTransaction *)transaction accessHistoricHFDWithError:d block:v5];
}

uint64_t __34__HDSydneyHFDMigrator_migrateHFD___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 delegate];
  [v5 setDelegate:*(a1 + 32)];
  v7 = [v5 rebuildWithTransaction:*(a1 + 32) error:a3];
  if ([v5 rebuildState] == 20 && (v7 == 3 || !v7) && *(*(a1 + 32) + 24))
  {
    [v5 requestHFDToSQLiteMigration];
    v8 = *(*(a1 + 32) + 24);
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [v5 setDelegate:v6];
    v7 = 1;
  }

  else
  {
    [v5 setDelegate:v6];
  }

  return v7;
}

@end