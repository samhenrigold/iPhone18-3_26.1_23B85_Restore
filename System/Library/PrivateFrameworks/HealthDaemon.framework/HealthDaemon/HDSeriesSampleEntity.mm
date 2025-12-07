@interface HDSeriesSampleEntity
+ (BOOL)deleteSeriesWithID:(id)d deleteSeriesData:(BOOL)data insertDeletedObject:(BOOL)object profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)replaceObjectID:(id)d replacementObjectID:(id)iD deleteOriginalSeriesData:(BOOL)data insertDeletedObject:(BOOL)object profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (const)columnDefinitionsWithCount:(unint64_t *)count;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)freezeSeriesWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)objectInsertionFilterForProfile:(id)profile;
+ (id)seriesSampleWithID:(id)d profile:(id)profile error:(id *)error;
+ (uint64_t)_insertionEra;
- (BOOL)canAddDatumInDatabase:(id)database error:(id *)error;
- (BOOL)updateSampleCount:(int64_t)count withDatabase:(id)database error:(id *)error;
- (id)HFDKeyWithDatabase:(id)database error:(id *)error;
- (id)freezeWithTransaction:(id)transaction profile:(id)profile error:(id *)error;
@end

@implementation HDSeriesSampleEntity

+ (uint64_t)_insertionEra
{
  objc_opt_self();
  if (_MergedGlobals_200 != -1)
  {
    dispatch_once(&_MergedGlobals_200, &__block_literal_global_90);
  }

  return qword_280D67BE8;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)count
{
  {
    countCopy = count;
    count = countCopy;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_0, 0, &dword_228986000);
      count = countCopy;
    }
  }

  *count = 6;
  return +[HDSeriesSampleEntity columnDefinitionsWithCount:]::columnDefinitions;
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)freezeSeriesWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  profileCopy = profile;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__85;
  v36 = __Block_byref_object_dispose__85;
  v13 = identifierCopy;
  v37 = v13;
  database = [profileCopy database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke;
  v26[3] = &unk_27861FF40;
  selfCopy = self;
  v27 = v13;
  v28 = profileCopy;
  v29 = metadataCopy;
  v30 = &v32;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke_330;
  v21[3] = &unk_27861FF68;
  v15 = v27;
  v22 = v15;
  v16 = v29;
  v23 = v16;
  selfCopy2 = self;
  v17 = v28;
  v24 = v17;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v26 inaccessibilityHandler:v21];

  if (error)
  {
    v18 = v33[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(&v32, 8);

  return v19;
}

uint64_t __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 64)];
  v7 = *(a1 + 64);
  v8 = HDDataEntityPredicateForDataUUID();
  v9 = [v7 anyInDatabase:v6 predicate:v8 error:a3];

  if (v9)
  {
    v10 = [v9 freezeWithTransaction:v5 profile:*(a1 + 40) error:a3];

    if (v10)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "persistentID")}];
      v12 = *(a1 + 48);
      if (!v12 || ![v12 count])
      {
        v22 = 0;
        goto LABEL_11;
      }

      v13 = [*(a1 + 64) seriesSampleWithID:v11 profile:*(a1 + 40) error:a3];
      v14 = v13;
      if (!v13)
      {
        v22 = 0;
        goto LABEL_24;
      }

      [v13 _setMetadata:*(a1 + 48)];
      v15 = [v14 sourceRevision];
      v16 = [v15 source];
      v17 = [v16 _sourceID];

      v18 = *(a1 + 64);
      v19 = *(a1 + 40);
      v42 = 0;
      v43 = 0;
      v40 = v17;
      v20 = [v18 shouldInsertObject:v14 sourceID:v17 profile:v19 transaction:v5 objectToReplace:&v43 objectID:&v42 error:a3];
      v21 = v43;
      v38 = v21;
      v39 = v42;
      if (v20 == 1)
      {
        if ([*(a1 + 64) deleteSeriesWithID:v11 deleteSeriesData:1 insertDeletedObject:0 profile:*(a1 + 40) transaction:v5 error:a3])
        {
          v34 = [v21 UUID];
          v23 = 0;
          v22 = 0;
          v35 = *(*(a1 + 56) + 8);
          v25 = *(v35 + 40);
          *(v35 + 40) = v34;
          v24 = 1;
          goto LABEL_19;
        }
      }

      else if (v20 != 2)
      {
        v22 = v39;
        v37 = [*(a1 + 40) metadataManager];
        v23 = [v37 insertMetadata:*(a1 + 48) forObjectID:v11 sourceID:v17 externalSyncObjectCode:objc_msgSend(v14 objectDeleted:"_externalSyncObjectCode") error:{0, a3}];
        v24 = 0;
        v25 = v37;
LABEL_19:

        goto LABEL_21;
      }

      v23 = 0;
      v22 = 0;
      v24 = 0;
LABEL_21:

      if ((v23 & 1) == 0)
      {
LABEL_25:

        goto LABEL_26;
      }

      if (v22 && ([*(a1 + 64) replaceObjectID:v22 replacementObjectID:v11 deleteOriginalSeriesData:1 insertDeletedObject:1 profile:*(a1 + 40) transaction:v5 error:a3] & 1) == 0)
      {
LABEL_24:
        v24 = 0;
        goto LABEL_25;
      }

LABEL_11:
      v26 = *(a1 + 64);
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v41 = 0;
      v29 = [v26 objectWithUUID:v27 encodingOptions:0 profile:v28 error:&v41];
      v30 = v41;
      if (v29)
      {
        v31 = [*(a1 + 40) dataManager];
        v46[0] = v29;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
        [v31 shouldNotifyForDataObjects:v32 provenance:0 database:v6 anchor:v11];
      }

      else
      {
        _HKInitializeLogging();
        v33 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v45 = v30;
          _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "Failed to look up series after freezing: %{public}@", buf, 0xCu);
        }
      }

      v24 = 1;
      goto LABEL_25;
    }
  }

  v24 = 0;
LABEL_26:

  return v24;
}

uint64_t __74__HDSeriesSampleEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke_330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[_HDSeriesFreezeJournalEntry alloc] initWithSeriesUUID:*(a1 + 32) metadata:*(a1 + 40) class:objc_opt_class()];
  v6 = [*(a1 + 48) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)deleteSeriesWithID:(id)d deleteSeriesData:(BOOL)data insertDeletedObject:(BOOL)object profile:(id)profile transaction:(id)transaction error:(id *)error
{
  objectCopy = object;
  dataCopy = data;
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__85;
  v28 = __Block_byref_object_dispose__85;
  v29 = 0;
  v16 = [[HDDataEntityDeletionContext alloc] initWithProfile:profileCopy transaction:transactionCopy];
  [(HDDataEntityDeletionContext *)v16 setInsertDeletedObjects:objectCopy];
  [(HDDataEntityDeletionContext *)v16 setCallWillDeleteWithProfileTransaction:dataCopy];
  v17 = HDDataEntityPredicateForRowID(dCopy, 1);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __106__HDSeriesSampleEntity_deleteSeriesWithID_deleteSeriesData_insertDeletedObject_profile_transaction_error___block_invoke;
  v23[3] = &unk_27861FF90;
  v23[4] = &v30;
  v23[5] = &v24;
  [HDSampleEntity deleteSamplesWithPredicate:v17 limit:0 deletionContext:v16 completionHandler:v23];

  v18 = v25[5];
  v19 = v18;
  if (v18)
  {
    if (error)
    {
      v20 = v18;
      *error = v19;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v21 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v21;
}

+ (id)seriesSampleWithID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v9 = [self objectWithID:dCopy encodingOptions:0 profile:profile error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v10;
    goto LABEL_6;
  }

  v11 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find series with ID %@", dCopy}];
  if (v11)
  {
LABEL_6:
    if (error)
    {
      v13 = v11;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_10:

  return v9;
}

+ (BOOL)replaceObjectID:(id)d replacementObjectID:(id)iD deleteOriginalSeriesData:(BOOL)data insertDeletedObject:(BOOL)object profile:(id)profile transaction:(id)transaction error:(id *)error
{
  objectCopy = object;
  dataCopy = data;
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  if ([HDAssociationEntity copyAssociationsFromChildID:dCopy toObjectID:iD profile:profileCopy error:error])
  {
    v18 = [self deleteSeriesWithID:dCopy deleteSeriesData:dataCopy insertDeletedObject:objectCopy profile:profileCopy transaction:transactionCopy error:error];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)freezeWithTransaction:(id)transaction profile:(id)profile error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)canAddDatumInDatabase:(id)database error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[4] = &v8;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke;
  v7[3] = &unk_278615580;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke_2;
  v6[3] = &unk_278615530;
  [database executeSQL:@"SELECT frozen FROM data_series WHERE data_id = ?" error:error bindingHandler:v7 enumerationHandler:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __52__HDSeriesSampleEntity_canAddDatumInDatabase_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x22AAC6C10](a2, 0) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

- (BOOL)updateSampleCount:(int64_t)count withDatabase:(id)database error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v12[0] = @"count";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HDSeriesSampleEntity_updateSampleCount_withDatabase_error___block_invoke;
  v11[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v11[4] = count;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v9 database:databaseCopy error:error bindingHandler:v11];

  return error;
}

+ (id)objectInsertionFilterForProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDSeriesSampleEntity;
  v5 = objc_msgSendSuper2(&v11, sel_objectInsertionFilterForProfile_, profileCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HDSeriesSampleEntity_objectInsertionFilterForProfile___block_invoke;
  aBlock[3] = &unk_27861FFB8;
  v10 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

uint64_t __56__HDSeriesSampleEntity_objectInsertionFilterForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 _isFrozen])
    {
      v5 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  dCopy = d;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__HDSeriesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v18[3] = &unk_27861FFE0;
  v19 = dCopy;
  v20 = objectCopy;
  selfCopy = self;
  v13 = objectCopy;
  v14 = dCopy;
  if ([database executeSQL:@"INSERT INTO data_series (data_id error:frozen bindingHandler:count enumerationHandler:{insertion_era, hfd_key, series_location) VALUES (?, ?, ?, ?, (COALESCE((SELECT MAX(hfd_key) + 1 FROM data_series), 1)), 2)", error, v18, 0}])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __86__HDSeriesSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int(a2, 2, [*(a1 + 40) _isFrozen]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 40) count]);
  v4 = +[HDSeriesSampleEntity _insertionEra];

  return sqlite3_bind_int64(a2, 4, v4);
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)HFDKeyWithDatabase:(id)database error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = @"hfd_key";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HDSeriesSampleEntity_HFDKeyWithDatabase_error___block_invoke;
  v11[3] = &unk_278620008;
  v11[4] = &v12;
  v8 = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:databaseCopy error:error handler:v11];

  if (v8)
  {
    if (v13[3])
    {
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      goto LABEL_6;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"hfd_key", objc_opt_class(), -[HDSQLiteEntity persistentID](self, "persistentID")}];
  }

  v9 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __49__HDSeriesSampleEntity_HFDKeyWithDatabase_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end