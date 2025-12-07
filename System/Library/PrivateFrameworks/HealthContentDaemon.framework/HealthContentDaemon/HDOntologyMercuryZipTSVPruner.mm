@interface HDOntologyMercuryZipTSVPruner
- (BOOL)_markPrunedShardEntriesAsPrunedWithTransaction:(uint64_t)transaction error:;
- (HDOntologyMercuryZipTSVPruner)init;
- (HDOntologyMercuryZipTSVPruner)initWithOntologyUpdateCoordinator:(id)coordinator;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (id)_requiredSlotsWithTransaction:(uint64_t)transaction error:;
- (int64_t)pruneEntries:(id)entries options:(unint64_t)options error:(id *)error;
- (uint64_t)_deleteElementsFromEntity:(uint64_t)entity requiredSlots:(void *)slots database:(uint64_t)database error:(void *)error;
- (uint64_t)_finalizeShardPruneWithTransaction:(uint64_t)transaction error:;
- (uint64_t)_hasImportedShardsWithTransaction:(uint64_t)transaction error:;
- (uint64_t)_pruneElementsFromEntity:(char)entity isFinalEntity:(uint64_t)finalEntity error:;
- (uint64_t)_pruneElementsFromEntity:(uint64_t)entity requiredSlots:(uint64_t)slots transaction:(uint64_t)transaction error:(void *)error;
- (uint64_t)_pruneElementsFromEntity:(void *)entity transaction:(uint64_t)transaction error:;
- (uint64_t)_shouldPruneWithError:(void *)error;
- (uint64_t)_shouldPruneWithTransaction:(uint64_t)transaction error:;
- (uint64_t)_updateElementsOfEntity:(uint64_t)entity requiredSlots:(void *)slots database:(uint64_t)database error:(void *)error;
- (void)_clearLegacyOntologyVersionWithTransaction:(uint64_t)transaction;
- (void)_setPruneDateMetadataWithTransaction:(uint64_t)transaction error:;
@end

@implementation HDOntologyMercuryZipTSVPruner

- (HDOntologyMercuryZipTSVPruner)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyMercuryZipTSVPruner)initWithOntologyUpdateCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = HDOntologyMercuryZipTSVPruner;
  v5 = [(HDOntologyMercuryZipTSVPruner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, coordinatorCopy);
  }

  return v6;
}

- (int64_t)pruneEntries:(id)entries options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v22[3] = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if ((optionsCopy & 1) != 0 || (v9 = [(HDOntologyMercuryZipTSVPruner *)self _shouldPruneWithError:error], v9 == 1))
  {
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v18;
      v9 = 1;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v10);
          }

          if (!-[HDOntologyMercuryZipTSVPruner _pruneElementsFromEntity:isFinalEntity:error:](self, *(*(&v17 + 1) + 8 * i), ++v13 == [v10 count], error))
          {
            v9 = 0;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }

LABEL_14:
  }

  return v9;
}

- (uint64_t)_shouldPruneWithError:(void *)error
{
  if (!error)
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  updateCoordinator = [error updateCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDOntologyMercuryZipTSVPruner__shouldPruneWithError___block_invoke;
  v7[3] = &unk_2796B9C98;
  v7[4] = error;
  v7[5] = &v8;
  LODWORD(a2) = [updateCoordinator performOntologyTransactionForWrite:0 databaseTransaction:0 error:a2 transactionHandler:v7];

  if (a2)
  {
    v5 = v9[3];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __78__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_isFinalEntity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([(HDOntologyMercuryZipTSVPruner *)*(a1 + 32) _pruneElementsFromEntity:v5 transaction:a3 error:?])
  {
    if (*(a1 + 48) == 1)
    {
      v6 = [(HDOntologyMercuryZipTSVPruner *)*(a1 + 32) _finalizeShardPruneWithTransaction:v5 error:a3];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_requiredSlotsWithTransaction:(uint64_t)transaction error:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = MEMORY[0x277D10B20];
    v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" equalToValue:&unk_2863747C0];
    v21[0] = v7;
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
    v21[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v10 = [v6 predicateMatchingAllPredicates:v9];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    graphDatabase = [v5 graphDatabase];
    underlyingDatabase = [graphDatabase underlyingDatabase];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__HDOntologyMercuryZipTSVPruner__requiredSlotsWithTransaction_error___block_invoke;
    v16[3] = &unk_2796B99F0;
    v16[4] = &v17;
    v13 = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:v10 orderingTerms:0 database:underlyingDatabase error:transaction enumerationHandler:v16];

    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[3]];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __90__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_requiredSlots_transaction_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogHealthOntology();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = NSStringFromClass(*(a1 + 56));
    CFAbsoluteTimeGetCurrent();
    v7 = HKDiagnosticStringFromDuration();
    v8 = 138544386;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_2514A1000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Directly deleted %ld and updated %ld from %{public}@ in %{public}@", &v8, 0x34u);
  }
}

uint64_t __86__HDOntologyMercuryZipTSVPruner__updateElementsOfEntity_requiredSlots_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 32);

  return sqlite3_bind_int64(a2, 2, v4);
}

BOOL __86__HDOntologyMercuryZipTSVPruner__markPrunedShardEntriesAsPrunedWithTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 copyWithAvailableStateNotImportedForDate:*(a1 + 32)];
  v6 = [HDOntologyShardRegistry insertEntry:v5 transaction:*(a1 + 40) error:a3];

  return v6;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (uint64_t)_pruneElementsFromEntity:(char)entity isFinalEntity:(uint64_t)finalEntity error:
{
  if (!self)
  {
    return 0;
  }

  updateCoordinator = [self updateCoordinator];
  OUTLINED_FUNCTION_1();
  v13 = 3221225472;
  v14 = __78__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_isFinalEntity_error___block_invoke;
  v15 = &unk_2796B9CC0;
  selfCopy = self;
  v17 = a2;
  entityCopy = entity;
  v10 = [v9 performOntologyTransactionForWrite:1 databaseTransaction:0 error:finalEntity transactionHandler:v12];

  return v10;
}

- (uint64_t)_shouldPruneWithTransaction:(uint64_t)transaction error:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v18 = 0;
    graphDatabase = [v5 graphDatabase];
    underlyingDatabase = [graphDatabase underlyingDatabase];
    v9 = [HDSimpleGraphDatabaseMetadataEntity metadataValueForKey:@"MercuryZipTSVLastPruneDate" valueOut:&v18 database:underlyingDatabase error:transaction];
    v10 = v18;

    v11 = 0;
    if (v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v10 doubleValue];
      if (Current - v13 >= 604800.0)
      {
        v11 = [(HDOntologyMercuryZipTSVPruner *)self _hasImportedShardsWithTransaction:v6 error:transaction];
      }

      else
      {
        _HKInitializeLogging();
        v14 = HKLogHealthOntology();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = HKDiagnosticStringFromDuration();
          v16 = HKDiagnosticStringFromDuration();
          *buf = 138543874;
          selfCopy = self;
          v21 = 2114;
          v22 = v15;
          v23 = 2114;
          v24 = v16;
          _os_log_impl(&dword_2514A1000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: skipping prunning because it has only been %{public}@ since the last prune (waiting for %{public}@)", buf, 0x20u);
        }

        v11 = 2;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_hasImportedShardsWithTransaction:(uint64_t)transaction error:
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v4 = MEMORY[0x277D10B20];
  v5 = MEMORY[0x277D10B18];
  v6 = a2;
  v7 = [v5 predicateWithProperty:@"current_version" notEqualToValue:&unk_2863747A8];
  v17[0] = v7;
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v10 = [v4 predicateMatchingAllPredicates:v9];

  v11 = *MEMORY[0x277D10A48];
  graphDatabase = [v6 graphDatabase];

  underlyingDatabase = [graphDatabase underlyingDatabase];
  v14 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity countValueForProperty:v11 predicate:v10 database:underlyingDatabase error:transaction];

  if (v14)
  {
    if ([v14 integerValue] >= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)_pruneElementsFromEntity:(void *)entity transaction:(uint64_t)transaction error:
{
  entityCopy = entity;
  if (self)
  {
    v8 = [(HDOntologyMercuryZipTSVPruner *)self _requiredSlotsWithTransaction:entityCopy error:transaction];
    v9 = v8;
    if (v8)
    {
      v10 = -[HDOntologyMercuryZipTSVPruner _pruneElementsFromEntity:requiredSlots:transaction:error:](self, a2, [v8 unsignedLongLongValue], entityCopy);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)_finalizeShardPruneWithTransaction:(uint64_t)transaction error:
{
  v5 = a2;
  if (self)
  {
    if ([(HDOntologyMercuryZipTSVPruner *)self _markPrunedShardEntriesAsPrunedWithTransaction:v5 error:transaction]&& [(HDOntologyMercuryZipTSVPruner *)self _setPruneDateMetadataWithTransaction:v5 error:transaction])
    {
      [(HDOntologyMercuryZipTSVPruner *)self _clearLegacyOntologyVersionWithTransaction:v5];
      self = 1;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (uint64_t)_pruneElementsFromEntity:(uint64_t)entity requiredSlots:(uint64_t)slots transaction:(uint64_t)transaction error:(void *)error
{
  if (!entity)
  {
    return 0;
  }

  errorCopy = error;
  Current = CFAbsoluteTimeGetCurrent();
  graphDatabase = [errorCopy graphDatabase];

  underlyingDatabase = [graphDatabase underlyingDatabase];

  v10 = OUTLINED_FUNCTION_1_4();
  if (-[HDOntologyMercuryZipTSVPruner _deleteElementsFromEntity:requiredSlots:database:error:](v10, v11, v12, v13) && (v16 = [underlyingDatabase getChangesCount], v17 = OUTLINED_FUNCTION_1_4(), -[HDOntologyMercuryZipTSVPruner _updateElementsOfEntity:requiredSlots:database:error:](v17, v18, v19, v20)))
  {
    [underlyingDatabase getChangesCount];
    OUTLINED_FUNCTION_1();
    v23 = 3221225472;
    v24 = __90__HDOntologyMercuryZipTSVPruner__pruneElementsFromEntity_requiredSlots_transaction_error___block_invoke;
    v25 = &unk_2796B9CE8;
    entityCopy = entity;
    v27 = v16;
    v28 = v21;
    slotsCopy = slots;
    v30 = Current;
    [underlyingDatabase onCommit:v22 orRollback:0];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)_deleteElementsFromEntity:(uint64_t)entity requiredSlots:(void *)slots database:(uint64_t)database error:(void *)error
{
  if (!entity)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCACA8];
  errorCopy = error;
  v8 = [v6 alloc];
  disambiguatedDatabaseTable = [slots disambiguatedDatabaseTable];
  v10 = [v8 initWithFormat:@"DELETE FROM %@ WHERE (%@ & ?) == 0", disambiguatedDatabaseTable, @"slots"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HDOntologyMercuryZipTSVPruner__deleteElementsFromEntity_requiredSlots_database_error___block_invoke;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = database;
  v15 = OUTLINED_FUNCTION_2_4(v11, v12, v13, v14, v17);

  return v15;
}

- (uint64_t)_updateElementsOfEntity:(uint64_t)entity requiredSlots:(void *)slots database:(uint64_t)database error:(void *)error
{
  if (!entity)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCACA8];
  errorCopy = error;
  v8 = [v6 alloc];
  disambiguatedDatabaseTable = [slots disambiguatedDatabaseTable];
  v10 = [v8 initWithFormat:@"UPDATE %@ SET %@ = (%@ & ?) WHERE %@ != (%@ & ?)", disambiguatedDatabaseTable, @"slots", @"slots", @"slots", @"slots"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HDOntologyMercuryZipTSVPruner__updateElementsOfEntity_requiredSlots_database_error___block_invoke;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = database;
  v15 = OUTLINED_FUNCTION_2_4(v11, v12, v13, v14, v17);

  return v15;
}

- (BOOL)_markPrunedShardEntriesAsPrunedWithTransaction:(uint64_t)transaction error:
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = MEMORY[0x277D10B20];
    v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" notEqualToValue:&unk_2863747C0];
    v21[0] = v7;
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"current_version" notEqualToValue:&unk_2863747A8];
    v21[1] = v8;
    v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
    v21[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v11 = [v6 predicateMatchingAllPredicates:v10];

    date = [MEMORY[0x277CBEAA8] date];
    graphDatabase = [v5 graphDatabase];
    underlyingDatabase = [graphDatabase underlyingDatabase];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__HDOntologyMercuryZipTSVPruner__markPrunedShardEntriesAsPrunedWithTransaction_error___block_invoke;
    v18[3] = &unk_2796B9D10;
    v19 = date;
    v20 = v5;
    v15 = date;
    v16 = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:v11 orderingTerms:0 database:underlyingDatabase error:transaction enumerationHandler:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_setPruneDateMetadataWithTransaction:(uint64_t)transaction error:
{
  if (result)
  {
    graphDatabase = [a2 graphDatabase];
    v5 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = [v5 numberWithDouble:?];
    stringValue = [v6 stringValue];
    v8 = [graphDatabase setMetadataValue:stringValue forKey:@"MercuryZipTSVLastPruneDate" error:transaction];

    return v8;
  }

  return result;
}

- (void)_clearLegacyOntologyVersionWithTransaction:(uint64_t)transaction
{
  v14 = *MEMORY[0x277D85DE8];
  if (transaction)
  {
    graphDatabase = [a2 graphDatabase];
    v7 = 0;
    v4 = [graphDatabase setMetadataValue:0 forKey:@"ontologyAssetVersion" error:&v7];
    v5 = v7;

    if ((v4 & 1) == 0)
    {
      _HKInitializeLogging();
      v6 = HKLogHealthOntology();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        transactionCopy = transaction;
        v10 = 2114;
        v11 = @"ontologyAssetVersion";
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_2514A1000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Unable to clear metadata for %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }
}

@end