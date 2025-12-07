@interface HDQuantitySampleSeriesEntity
+ (BOOL)_deleteHFDSeriesIfFoundForPersistentID:(void *)d database:(uint64_t)database error:;
+ (BOOL)deleteSeriesWithID:(id)d deleteSeriesData:(BOOL)data profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateDataWithIdentifier:(id)identifier profile:(id)profile error:(id *)error handler:(id)handler;
+ (BOOL)enumerateDataWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)enumerateDataWithTransaction:(id)transaction HFDKey:(int64_t)key error:(id *)error handler:(id)handler;
+ (BOOL)enumerateRawDataWithTransaction:(id)transaction HFDKey:(int64_t)key error:(id *)error handler:(id)handler;
+ (BOOL)insertValues:(id)values series:(id)series profile:(id)profile error:(id *)error;
+ (BOOL)performPostFirstJournalMergeCleanupWithTransaction:(id)transaction profile:(id)profile error:(id *)error;
+ (BOOL)primitiveInsertValues:(id)values seriesVersion:(int64_t)version HFDKey:(int64_t)key database:(id)database error:(id *)error;
+ (BOOL)primitiveRemoveDatums:(id)datums HFDKey:(int64_t)key transaction:(id)transaction error:(id *)error;
+ (BOOL)replaceExistingObject:(id)object existingObjectID:(id)d replacementObject:(id)replacementObject replacementObjectID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)replaceObjectID:(id)d replacementObjectID:(id)iD deleteOriginalSeriesData:(BOOL)data profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)unitTesting_insertValues:(id)values quantitySample:(id)sample seriesVersion:(int64_t)version profile:(id)profile error:(id *)error;
+ (const)columnDefinitionsWithCount:(unint64_t *)count;
+ (id)_insertDataObject:(void *)object inDatabase:(void *)database persistentID:(uint64_t)d error:;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)freezeSeriesWithIdentifier:(id)identifier metadata:(id)metadata endDate:(id)date profile:(id)profile error:(id *)error;
+ (id)hasSeriesDataForHFDKey:(int64_t)key transaction:(id)transaction error:(id *)error;
+ (id)indices;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)joinClausesForProperty:(id)property;
+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler;
+ (id)objectInsertionFilterForProfile:(id)profile;
+ (id)orderingTermForSortDescriptor:(id)descriptor;
+ (id)privateSubEntities;
+ (id)quantitySampleSeriesEntitiesForAutoFreezeSQL;
+ (id)quantitySampleSeriesEntitiesForAutoFreezeWithTransaction:(id)transaction error:(id *)error;
+ (id)removeValues:(id)values fromQuantitySeriesSample:(id)sample profile:(id)profile error:(id *)error;
+ (int64_t)_hasSeriesDataWithDatabase:(id)database hfdKey:(unint64_t)key error:(id *)error;
+ (uint64_t)_insertionEra;
- (BOOL)_getFirstTimeEndTimeCountWithTransaction:(uint64_t)transaction HFDKey:(uint64_t)key error:(void *)error handler:;
- (BOOL)_insertValues:(void *)values database:(uint64_t)database error:;
- (BOOL)deleteFromDatabase:(id)database error:(id *)error;
- (BOOL)enumerateDataWithTransaction:(id)transaction error:(id *)error handler:(id)handler;
- (BOOL)insertValues:(id)values transaction:(id)transaction error:(id *)error;
- (BOOL)startTimeEndTimeCountForSeriesWithTransaction:(id)transaction error:(id *)error handler:(id)handler;
- (BOOL)unitTesting_setInsertionEra:(int64_t)era profile:(id)profile error:(id *)error;
- (id)HFDKeyWithDatabase:(id)database error:(id *)error;
- (id)_dataOriginProvenanceWithTransaction:(void *)transaction profile:(uint64_t)profile error:;
- (id)_updatedSampleForQuantitySeriesSample:(uint64_t)sample HFDKey:(void *)key endDate:(void *)date transaction:(uint64_t)transaction error:;
- (id)countForSeriesWithTransaction:(id)transaction error:(id *)error;
- (id)freezeWithEndDate:(id)date transaction:(id)transaction profile:(id)profile error:(id *)error;
- (id)hasSeriesDataWithTransaction:(id)transaction error:(id *)error;
- (uint64_t)_isFrozenInDatabase:(uint64_t)database error:;
- (uint64_t)_setHFDKey:(void *)key database:(uint64_t)database error:;
@end

@implementation HDQuantitySampleSeriesEntity

+ (const)columnDefinitionsWithCount:(unint64_t *)count
{
  {
    countCopy = count;
    count = countCopy;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_1, 0, &dword_228986000);
      count = countCopy;
    }
  }

  *count = 5;
  return +[HDQuantitySampleSeriesEntity columnDefinitionsWithCount:]::columnDefinitions;
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

+ (id)indices
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [HDQuantitySampleSeriesEntity disambiguatedSQLForProperty:@"insertion_era"];
  v4 = [v2 stringWithFormat:@"%@ IS NOT NULL", v3];

  v5 = objc_alloc(MEMORY[0x277D10B40]);
  v6 = objc_opt_class();
  v11 = @"insertion_era";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [v5 initWithEntity:v6 name:@"unfrozen" columns:v7 unique:0 predicateString:v4];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v9;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  objc_opt_self();
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"count", @"insertion_era", @"hfd_key", 0}];
  v6 = [v5 containsObject:propertyCopy];

  if (v6)
  {
    v7 = MEMORY[0x277D10B50];
    v8 = [objc_msgSend(self "entityClassForEnumeration")];
    v9 = [v7 leftJoinClauseFromTable:v8 toTargetEntity:self as:0 localReference:@"data_id" targetKey:@"data_id"];

    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
LABEL_5:
    v15 = v10;

    goto LABEL_7;
  }

  v11 = +[(HDQuantitySampleSeriesEntity *)self];
  v12 = [v11 containsObject:propertyCopy];

  if (v12)
  {
    v13 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v9 = [v13 leftJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:objc_opt_class() as:0 localReference:@"data_id" targetKey:@"owner_id"];

    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
    goto LABEL_5;
  }

  v15 = [objc_msgSend(self "entityClassForEnumeration")];
LABEL_7:

  return v15;
}

+ (id)orderingTermForSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy key];
  ascending = [descriptorCopy ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCCD48]])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity disambiguatedSQLForProperty:@"most_recent_date"];
    v9 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:@"start_date"];
    v10 = [v7 stringWithFormat:@"IFNULL(%@, %@)", v8, v9];

    v11 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:v10 ascending:ascending];
LABEL_5:
    v16 = v11;

    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCD40]])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity disambiguatedSQLForProperty:@"most_recent_date"];
    v14 = [(HDSQLiteSchemaEntity *)HDQuantitySampleStatisticsEntity disambiguatedSQLForProperty:@"most_recent_duration"];
    v15 = [(HDDataEntity *)HDSampleEntity disambiguatedSQLForProperty:@"end_date"];
    v10 = [v12 stringWithFormat:@"IFNULL(%@ + %@, %@)", v13, v14, v15];

    v11 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:v10 ascending:ascending];
    goto LABEL_5;
  }

  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
  v16 = objc_msgSendSuper2(&v18, sel_orderingTermForSortDescriptor_, descriptorCopy);
LABEL_7:

  return v16;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:*MEMORY[0x277D10A40]] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"data_id"))
  {
    entityClassForEnumeration = [self entityClassForEnumeration];
LABEL_4:
    v6 = [entityClassForEnumeration disambiguatedSQLForProperty:propertyCopy];
    goto LABEL_5;
  }

  v9 = +[(HDQuantitySampleSeriesEntity *)self];
  v10 = [v9 containsObject:propertyCopy];

  if (v10)
  {
    entityClassForEnumeration = objc_opt_class();
    goto LABEL_4;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
  v6 = objc_msgSendSuper2(&v11, sel_disambiguatedSQLForProperty_, propertyCopy);
LABEL_5:
  v7 = v6;

  return v7;
}

+ (id)privateSubEntities
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (uint64_t)_insertionEra
{
  objc_opt_self();
  if (_MergedGlobals_210 != -1)
  {
    dispatch_once(&_MergedGlobals_210, &__block_literal_global_148);
  }

  return qword_280D67D28;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v7 = [(HDQuantitySampleSeriesEntity *)self _insertDataObject:object inDatabase:database persistentID:d error:error];

  return v7;
}

+ (id)_insertDataObject:(void *)object inDatabase:(void *)database persistentID:(uint64_t)d error:
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a2;
  objectCopy = object;
  databaseCopy = database;
  v10 = objc_opt_self();
  if ([v8 count] == 1 && objc_msgSend(v8, "_frozen"))
  {
    v11 = databaseCopy;
    goto LABEL_21;
  }

  codableQuantitySample = [v8 codableQuantitySample];
  if ([codableQuantitySample hasFinal])
  {
    codableQuantitySample2 = [v8 codableQuantitySample];
    final = [codableQuantitySample2 final];

    if ((final & 1) == 0)
    {
      v15 = v8;
      v16 = @"insert";
      objc_opt_self();
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        quantityType = [v15 quantityType];
        code = [quantityType code];
        v39 = [v15 count];
        codableQuantitySample3 = [v15 codableQuantitySample];
        frozen = [codableQuantitySample3 frozen];
        codableQuantitySample4 = [v15 codableQuantitySample];
        final2 = [codableQuantitySample4 final];
        codableQuantitySample5 = [v15 codableQuantitySample];
        quantitySeriesDatas = [codableQuantitySample5 quantitySeriesDatas];
        *buf = 138544898;
        v50 = @"insert";
        v51 = 2048;
        v52 = code;
        v53 = 2048;
        v54 = v39;
        v55 = 1024;
        v56 = frozen;
        v57 = 1024;
        v58 = final2;
        v59 = 2048;
        v60 = [quantitySeriesDatas count];
        v61 = 2114;
        v62 = v15;
        _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "Non-final quantity sample %{public}@: type=%ld, count=%ld, frozen=%{BOOL}d, final=%{BOOL}d, datumsCount=%ld, sample=(%{public}@)", buf, 0x40u);
      }

      v21 = objc_opt_class();
      v22 = [v15 count];
      codableQuantitySample6 = [v15 codableQuantitySample];
      quantitySeriesDatas2 = [codableQuantitySample6 quantitySeriesDatas];
      +[HDAutoBugCaptureReporter reportNotFinalSeriesSampleWithClass:count:datumCount:reason:](HDAutoBugCaptureReporter, "reportNotFinalSeriesSampleWithClass:count:datumCount:reason:", v21, v22, [quantitySeriesDatas2 count], @"insert");

      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v25 = 1;
LABEL_11:
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __80__HDQuantitySampleSeriesEntity__insertDataObject_inDatabase_persistentID_error___block_invoke;
  v44[3] = &unk_278624780;
  v26 = databaseCopy;
  v45 = v26;
  v27 = v8;
  v46 = v27;
  v47 = v10;
  v48 = v25;
  if (([objectCopy executeSQL:@"INSERT INTO quantity_sample_series (data_id error:count bindingHandler:insertion_era enumerationHandler:{hfd_key, series_location) VALUES (?, ?, ?, (COALESCE((SELECT MAX(hfd_key) + 1 FROM quantity_sample_series), 1)), 2)", d, v44, 0}] & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || +[HDQuantitySampleStatisticsEntity setDiscreteQuantitySampleStatistics:persistentID:database:error:](HDQuantitySampleStatisticsEntity, "setDiscreteQuantitySampleStatistics:persistentID:database:error:", v27, v26, objectCopy, d)) && +[HDQuantitySampleSeriesEntity _deleteHFDSeriesIfFoundForPersistentID:database:error:](v10, v26, objectCopy, d))
  {
    codableQuantitySample7 = [v27 codableQuantitySample];
    quantitySeriesDatas3 = [codableQuantitySample7 quantitySeriesDatas];
    v30 = quantitySeriesDatas3 == 0;

    if (!v30)
    {
      codableQuantitySample8 = [v27 codableQuantitySample];
      quantitySeriesDatas4 = [codableQuantitySample8 quantitySeriesDatas];
      v33 = [quantitySeriesDatas4 hk_map:&__block_literal_global_361];

      v34 = -[HDSQLiteEntity initWithPersistentID:]([HDQuantitySampleSeriesEntity alloc], "initWithPersistentID:", [v26 longLongValue]);
      v35 = [(HDQuantitySampleSeriesEntity *)v34 _insertValues:v33 database:objectCopy error:d];

      if (!v35)
      {
        v26 = 0;
      }
    }

    v11 = v26;
  }

  else
  {
    v11 = 0;
  }

LABEL_21:

  return v11;
}

uint64_t __80__HDQuantitySampleSeriesEntity__insertDataObject_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) count]);
  if ([*(a1 + 40) _frozen])
  {
    if (*(a1 + 56))
    {

      return sqlite3_bind_null(a2, 3);
    }

    v6 = objc_opt_self();
    v5 = -+[(HDQuantitySampleSeriesEntity *)v6];
  }

  else
  {
    v5 = +[(HDQuantitySampleSeriesEntity *)*(a1];
  }

  return sqlite3_bind_int64(a2, 3, v5);
}

+ (BOOL)_deleteHFDSeriesIfFoundForPersistentID:(void *)d database:(uint64_t)database error:
{
  v6 = a2;
  dCopy = d;
  objc_opt_self();
  v8 = [(HDSQLiteEntity *)HDQuantitySampleSeriesEntity entityWithPersistentID:v6];
  v9 = [v8 HFDKeyWithDatabase:dCopy error:database];

  if (v9)
  {
    v10 = +[HDQuantitySeriesDataEntity deleteSeriesDataWithIdentifier:database:error:](HDQuantitySeriesDataEntity, "deleteSeriesDataWithIdentifier:database:error:", [v9 longLongValue], dCopy, database);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __80__HDQuantitySampleSeriesEntity__insertDataObject_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasStartDate])
  {
    [v2 startDate];
  }

  else
  {
    [v2 endDate];
  }

  v4 = v3;
  v5 = -1.0;
  if ([v2 hasStartDate])
  {
    [v2 endDate];
    v7 = v6;
    [v2 startDate];
    v5 = v7 - v8;
  }

  v9 = MEMORY[0x277CCD180];
  [v2 value];
  *&v10 = v5;
  v12 = [v9 datumWithTimestamp:v4 value:v11 duration:v10];

  return v12;
}

- (BOOL)_insertValues:(void *)values database:(uint64_t)database error:
{
  v46[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  valuesCopy = values;
  if (self)
  {
    v9 = [self HFDKeyWithDatabase:valuesCopy error:database];
    if (v9)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__123;
      v43 = __Block_byref_object_dispose__123;
      v44 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = -1;
      v46[0] = @"start_date";
      v46[1] = @"data_type";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __61__HDQuantitySampleSeriesEntity__insertValues_database_error___block_invoke;
      v34[3] = &unk_2786247C8;
      v34[4] = &v39;
      v34[5] = &v35;
      v11 = [self getValuesForProperties:v10 database:valuesCopy error:database handler:v34];

      if (v11 && v40[5] && (_HKValidDataTypeCode() & 1) != 0)
      {
        v12 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v36[3]];
        [v40[5] timeIntervalSinceReferenceDate];
        v14 = v13;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = v7;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v45 count:16];
        if (v16)
        {
          v17 = *v31;
LABEL_8:
          v18 = 0;
          while (1)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v30 + 1) + 8 * v18);
            [v19 timeInterval];
            if (v20 < v14)
            {
              break;
            }

            [v19 duration];
            if (v21 < 0.0)
            {
              [v19 duration];
              if (v22 != -1.0)
              {
                [MEMORY[0x277CCA9B8] hk_assignError:database code:100 format:{@"Cannot insert datum (%@) because it has an invalid negative duration", v19}];
                goto LABEL_27;
              }
            }

            if ([v12 isMinimumDurationRestricted])
            {
              [v19 duration];
              v24 = v23;
              [v12 minimumAllowedDuration];
              if (v25 > v24)
              {
                v28 = MEMORY[0x277CCA9B8];
                [v12 minimumAllowedDuration];
                [v28 hk_assignError:database code:100 format:{@"Cannot insert datum (%@) because duration is too short. Minimum required duration for sample type %@ is %f", v19, v12, v29}];
                goto LABEL_27;
              }
            }

            if (v16 == ++v18)
            {
              v16 = [v15 countByEnumeratingWithState:&v30 objects:v45 count:16];
              if (v16)
              {
                goto LABEL_8;
              }

              goto LABEL_18;
            }
          }

          [MEMORY[0x277CCA9B8] hk_assignError:database code:100 format:{@"Cannot insert datum (%@) because it occurs before the series start time (%f)", v19, *&v14}];
LABEL_27:

          v26 = 0;
          goto LABEL_28;
        }

LABEL_18:

        v26 = +[HDQuantitySampleSeriesEntity primitiveInsertValues:seriesVersion:HFDKey:database:error:](HDQuantitySampleSeriesEntity, "primitiveInsertValues:seriesVersion:HFDKey:database:error:", v15, 1, [v9 longLongValue], valuesCopy, database);
LABEL_28:
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:database code:100 format:{@"Unable to lookup %@ and %@ for %@ with persistentID %lld", @"start_date", @"data_type", objc_opt_class(), objc_msgSend(self, "persistentID")}];
        v26 = 0;
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (BOOL)insertValues:(id)values series:(id)series profile:(id)profile error:(id *)error
{
  valuesCopy = values;
  seriesCopy = series;
  profileCopy = profile;
  v12 = [[HDInsertValuesToQuantitySampleSeriesOperation alloc] initWithSeries:seriesCopy values:valuesCopy];
  LOBYTE(error) = [(HDJournalableOperation *)v12 performOrJournalWithProfile:profileCopy error:error];

  return error;
}

+ (id)objectInsertionFilterForProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
  v5 = objc_msgSendSuper2(&v11, sel_objectInsertionFilterForProfile_, profileCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HDQuantitySampleSeriesEntity_objectInsertionFilterForProfile___block_invoke;
  aBlock[3] = &unk_27861FFB8;
  v10 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

uint64_t __64__HDQuantitySampleSeriesEntity_objectInsertionFilterForProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 _frozen])
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

- (BOOL)insertValues:(id)values transaction:(id)transaction error:(id *)error
{
  valuesCopy = values;
  transactionCopy = transaction;
  v11 = transactionCopy;
  if (valuesCopy)
  {
    if (transactionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"values != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"transaction != nil"}];

LABEL_3:
  protectedDatabase = [v11 protectedDatabase];
  v20 = 0;
  v13 = [(HDQuantitySampleSeriesEntity *)self _isFrozenInDatabase:protectedDatabase error:&v20];
  v14 = v20;

  if (v13 == 2)
  {
    protectedDatabase2 = [v11 protectedDatabase];
    v16 = [(HDQuantitySampleSeriesEntity *)self _insertValues:valuesCopy database:protectedDatabase2 error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Unable to add data to a frozen series." underlyingError:v14];
    v16 = 0;
  }

  return v16;
}

- (uint64_t)_isFrozenInDatabase:(uint64_t)database error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[4] = &v13;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke;
    v12[3] = &unk_278615580;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke_2;
    v11[3] = &unk_278615530;
    v7 = [v5 executeSQL:@"SELECT insertion_era FROM quantity_sample_series WHERE data_id = ?" error:database bindingHandler:v12 enumerationHandler:v11];
    v8 = 1;
    if (!*(v14 + 24))
    {
      v8 = 2;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __58__HDQuantitySampleSeriesEntity__isFrozenInDatabase_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x22AAC6CD0](a2, 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

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
  v11[2] = __57__HDQuantitySampleSeriesEntity_HFDKeyWithDatabase_error___block_invoke;
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

uint64_t __57__HDQuantitySampleSeriesEntity_HFDKeyWithDatabase_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (uint64_t)_setHFDKey:(void *)key database:(uint64_t)database error:
{
  v12[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v12[0] = @"hfd_key";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HDQuantitySampleSeriesEntity__setHFDKey_database_error___block_invoke;
  v11[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v11[4] = a2;
  v9 = [self updateProperties:v8 database:keyCopy error:database bindingHandler:v11];

  return v9;
}

uint64_t __61__HDQuantitySampleSeriesEntity__insertValues_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AAC6C40](a3, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)primitiveInsertValues:(id)values seriesVersion:(int64_t)version HFDKey:(int64_t)key database:(id)database error:(id *)error
{
  errorCopy = error;
  v36 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  databaseCopy = database;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = valuesCopy;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = *v32;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        [v16 value];
        v18 = v17;
        v19 = -1.0;
        if (version == 1 && [v16 hasDuration])
        {
          [v16 duration];
          v19 = v20;
        }

        [v16 timeInterval];
        v30 = 0;
        v22 = [HDQuantitySeriesDataEntity insertOrReplaceEntity:1 database:databaseCopy value:key duration:&v30 timestamp:v18 identifier:v19 error:v21];
        v23 = v30;
        if (!v22)
        {
          v25 = v23;
          v26 = v25;
          if (v25)
          {
            if (errorCopy)
            {
              v27 = v25;
              *errorCopy = v26;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v24 = 0;
          goto LABEL_18;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_18:

  return v24;
}

+ (id)freezeSeriesWithIdentifier:(id)identifier metadata:(id)metadata endDate:(id)date profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  dateCopy = date;
  profileCopy = profile;
  v15 = [[HDFreezeQuantitySampleSeriesOperation alloc] initWithIdentifier:identifierCopy metadata:metadataCopy endDate:dateCopy];
  if ([(HDJournalableOperation *)v15 performOrJournalWithProfile:profileCopy error:error])
  {
    v16 = [HDSeriesFreezeResult alloc];
    freezeResult = [(HDFreezeQuantitySampleSeriesOperation *)v15 freezeResult];
    frozenIdentifier = [(HDFreezeQuantitySampleSeriesOperation *)v15 frozenIdentifier];
    v19 = [(HDSeriesFreezeResult *)v16 initWithStatus:freezeResult frozenIdentifier:frozenIdentifier];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)performPostFirstJournalMergeCleanupWithTransaction:(id)transaction profile:(id)profile error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  profileCopy = profile;
  v28 = transactionCopy;
  v34 = 0;
  v8 = [self quantitySampleSeriesEntitiesForAutoFreezeWithTransaction:transactionCopy error:&v34];
  v9 = v34;
  v25 = v8;
  if (v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 count];
      *buf = 134217984;
      v36 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Will freeze %lu quantity sample series for post journal merge", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        v14 = 0;
        v15 = v9;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * v14);
          v17 = objc_autoreleasePoolPush();
          protectedDatabase = [v28 protectedDatabase];
          v19 = [v16 UUIDForProperty:@"uuid" database:protectedDatabase];

          v29 = v15;
          v20 = [HDQuantitySampleSeriesEntity freezeSeriesWithIdentifier:v19 metadata:0 endDate:0 profile:profileCopy error:&v29];
          v9 = v29;

          if (!v20)
          {
            _HKInitializeLogging();
            v21 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              persistentID = [v16 persistentID];
              *buf = 134218242;
              v36 = persistentID;
              v37 = 2114;
              v38 = v9;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to freeze quantity sample series %lld during post-journal-merge cleanup: %{public}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v17);
          ++v14;
          v15 = v9;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v12);
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v9;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Failed to enumerate quantity sample series requiring auto-freeze during post-journal-merge cleanup: %{public}@", buf, 0xCu);
    }
  }

  return 1;
}

+ (id)quantitySampleSeriesEntitiesForAutoFreezeWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  quantitySampleSeriesEntitiesForAutoFreezeSQL = [self quantitySampleSeriesEntitiesForAutoFreezeSQL];
  v9 = +[(HDQuantitySampleSeriesEntity *)self];
  protectedDatabase = [transactionCopy protectedDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke;
  v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke_2;
  v14[3] = &unk_2786247F0;
  v11 = v7;
  v15 = v11;
  LOBYTE(error) = [protectedDatabase executeSQL:quantitySampleSeriesEntitiesForAutoFreezeSQL error:error bindingHandler:v16 enumerationHandler:v14];

  if (error)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, *(a1 + 32));

  return sqlite3_bind_int64(a2, 3, 1209600);
}

uint64_t __95__HDQuantitySampleSeriesEntity_quantitySampleSeriesEntitiesForAutoFreezeWithTransaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [(HDSQLiteEntity *)[HDQuantitySampleSeriesEntity alloc] initWithPersistentID:HDSQLiteColumnAsInt64()];
  [v2 addObject:v3];

  return 1;
}

+ (id)quantitySampleSeriesEntitiesForAutoFreezeSQL
{
  v2 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v4 = [v2 stringWithFormat:@"SELECT %@ FROM %@ WHERE ((%@ IS NOT NULL) AND (%@ != ?) AND ((%@ > 0) OR (ABS(? + %@) > ?)))", @"data_id", disambiguatedDatabaseTable, @"insertion_era", @"insertion_era", @"insertion_era", @"insertion_era"];

  return v4;
}

- (id)freezeWithEndDate:(id)date transaction:(id)transaction profile:(id)profile error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  transactionCopy = transaction;
  profileCopy = profile;
  protectedDatabase = [transactionCopy protectedDatabase];
  v14 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:protectedDatabase error:error];
  if (!v14)
  {
    v23 = 0;
    goto LABEL_32;
  }

  v55 = protectedDatabase;
  v56 = v14;
  v57 = transactionCopy;
  v58 = dateCopy;
  v53 = profileCopy;
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v16 = profileCopy;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__123;
  v67 = __Block_byref_object_dispose__123;
  v68 = 0;
  v17 = [objc_opt_self() entityEnumeratorWithProfile:v16];
  v18 = HDDataEntityPredicateForRowID(v15, 1);
  [v17 setPredicate:v18];

  [v17 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
  v61 = 0;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __82__HDQuantitySampleSeriesEntity__quantitySampleWithID_canBeUnfrozen_profile_error___block_invoke;
  v62[3] = &unk_278624678;
  v62[4] = &v63;
  [v17 enumerateWithError:&v61 handler:v62];
  v19 = v61;
  v20 = v19;
  v21 = *(v64 + 40);
  v59 = v21;
  if (v21)
  {
    v22 = v21;
    goto LABEL_12;
  }

  if (v19)
  {
    v20 = v19;
    goto LABEL_8;
  }

  v20 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find series with ID %@", v15}];
  if (v20)
  {
LABEL_8:
    if (error)
    {
      v24 = v20;
      *error = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_12:
  _Block_object_dispose(&v63, 8);

  uUID = [v59 UUID];
  v54 = objc_msgSend_copy(uUID);

  longLongValue = [v56 longLongValue];
  longLongValue2 = [v56 longLongValue];
  v60 = v59;
  v28 = v58;
  v29 = transactionCopy;
  v30 = v16;
  v52 = longLongValue;
  if (self)
  {
    v31 = [(HDQuantitySampleSeriesEntity *)self _dataOriginProvenanceWithTransaction:v29 profile:v30 error:error];
    if (v31)
    {
      v32 = [(HDQuantitySampleSeriesEntity *)self _updatedSampleForQuantitySeriesSample:v60 HFDKey:longLongValue2 endDate:v28 transaction:v29 error:error];
      v33 = v32;
      if (v32 && ([v32 _setFreezing], objc_msgSend(v30, "dataManager"), v34 = objc_claimAutoreleasedReturnValue(), v63 = v33, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v63, 1), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v34, "insertDataObjects:withProvenance:creationDate:error:", v35, v31, error, CFAbsoluteTimeGetCurrent()), v35, v34, (v36 & 1) != 0))
      {
        uUID2 = [v33 UUID];
      }

      else
      {
        uUID2 = 0;
      }
    }

    else
    {
      uUID2 = 0;
    }
  }

  else
  {
    uUID2 = 0;
  }

  if (uUID2)
  {
    v38 = HDDataEntityPredicateForDataUUID();
    v39 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v55 predicate:v38 error:error];

    if (v39)
    {
      v40 = objc_opt_class();
      v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
      v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v39, "persistentID")}];
      v43 = [v40 replaceObjectID:v41 replacementObjectID:v42 deleteOriginalSeriesData:0 profile:v30 transaction:v29 error:error];

      if (v43)
      {
        v44 = v39;
        v45 = v54;
        v46 = v55;
        objc_opt_self();
        v62[0] = @"uuid";
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
        v63 = MEMORY[0x277D85DD0];
        v64 = 3221225472;
        v65 = __136__HDQuantitySampleSeriesEntity__updateFrozenEntityToMatchReplacedUnfrozenEntity_unfrozenSeriesUUID_unfrozenSeriesHFDKey_database_error___block_invoke;
        v66 = &unk_2786246A0;
        v48 = v45;
        v67 = v48;
        v49 = [v44 updateProperties:v47 database:v46 error:error bindingHandler:&v63];

        if (v49)
        {
          v50 = [(HDQuantitySampleSeriesEntity *)v44 _setHFDKey:v52 database:v46 error:error];

          if (v50)
          {
            v23 = v44;
LABEL_30:

            goto LABEL_31;
          }
        }

        else
        {
        }
      }
    }

    v23 = 0;
    goto LABEL_30;
  }

  v23 = 0;
LABEL_31:

  transactionCopy = v57;
  dateCopy = v58;
  profileCopy = v53;
  protectedDatabase = v55;
  v14 = v56;
LABEL_32:

  return v23;
}

+ (BOOL)deleteSeriesWithID:(id)d deleteSeriesData:(BOOL)data profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__123;
  v26 = __Block_byref_object_dispose__123;
  v27 = 0;
  v14 = [[HDDataEntityDeletionContext alloc] initWithProfile:profileCopy transaction:transactionCopy];
  [(HDDataEntityDeletionContext *)v14 setInsertDeletedObjects:0];
  [(HDDataEntityDeletionContext *)v14 setCallWillDeleteWithProfileTransaction:dataCopy];
  v15 = HDDataEntityPredicateForRowID(dCopy, 1);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__HDQuantitySampleSeriesEntity_deleteSeriesWithID_deleteSeriesData_profile_transaction_error___block_invoke;
  v21[3] = &unk_27861FF90;
  v21[4] = &v28;
  v21[5] = &v22;
  [HDSampleEntity deleteSamplesWithPredicate:v15 limit:0 deletionContext:v14 completionHandler:v21];

  v16 = v23[5];
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v19;
}

+ (BOOL)replaceObjectID:(id)d replacementObjectID:(id)iD deleteOriginalSeriesData:(BOOL)data profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  if ([HDAssociationEntity copyAssociationsFromChildID:dCopy toObjectID:iD profile:profileCopy error:error])
  {
    v17 = [self deleteSeriesWithID:dCopy deleteSeriesData:dataCopy profile:profileCopy transaction:transactionCopy error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_dataOriginProvenanceWithTransaction:(void *)transaction profile:(uint64_t)profile error:
{
  v7 = a2;
  transactionCopy = transaction;
  protectedDatabase = [v7 protectedDatabase];
  v10 = [self valueForProperty:@"provenance" database:protectedDatabase];

  if (v10)
  {
    dataProvenanceManager = [transactionCopy dataProvenanceManager];
    v12 = [dataProvenanceManager originProvenanceForPersistentID:v10 transaction:v7 error:profile];

    if (v12)
    {
      v13 = v12;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:profile code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"provenance", objc_opt_class(), objc_msgSend(self, "persistentID")}];
    v12 = 0;
  }

  return v12;
}

- (id)_updatedSampleForQuantitySeriesSample:(uint64_t)sample HFDKey:(void *)key endDate:(void *)date transaction:(uint64_t)transaction error:
{
  v11 = a2;
  keyCopy = key;
  dateCopy = date;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __103__HDQuantitySampleSeriesEntity__updatedSampleForQuantitySeriesSample_HFDKey_endDate_transaction_error___block_invoke;
  v77[3] = &unk_278624628;
  v77[4] = &v86;
  v77[5] = &v82;
  v77[6] = &v78;
  if (![(HDQuantitySampleSeriesEntity *)self _getFirstTimeEndTimeCountWithTransaction:dateCopy HFDKey:sample error:transaction handler:v77])
  {
    goto LABEL_8;
  }

  v14 = v87[3];
  [v11 _startTimestamp];
  if (v14 < v15)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *(v87 + 3);
    [v11 _startTimestamp];
    v19 = @"Cannot freeze series %@ because the first quantity time (%f) is before the sample start time (%f)";
    v20 = 100;
LABEL_7:
    [v16 hk_assignError:transaction code:v20 format:{v19, v11, v17, v18}];
LABEL_8:
    v23 = 0;
    goto LABEL_9;
  }

  if (!keyCopy)
  {
    v25 = v83;
    v26 = *(v83 + 3);
    goto LABEL_23;
  }

  [keyCopy timeIntervalSinceReferenceDate];
  [keyCopy timeIntervalSinceReferenceDate];
  if (v21 < v83[3])
  {
    v16 = MEMORY[0x277CCA9B8];
    [keyCopy timeIntervalSinceReferenceDate];
    v17 = v22;
    v18 = *(v83 + 3);
    v19 = @"Cannot freeze series %@ because the specifed sample endTime (%f) is before the last quantity end time (%f)";
    v20 = 3;
    goto LABEL_7;
  }

  quantityType = [v11 quantityType];
  if (([quantityType isMaximumDurationRestricted] & 1) == 0)
  {

    goto LABEL_17;
  }

  [keyCopy timeIntervalSinceReferenceDate];
  v29 = v28;
  [v11 _startTimestamp];
  v31 = v30;
  quantityType2 = [v11 quantityType];
  [quantityType2 maximumAllowedDuration];
  v34 = v33;

  if (v29 - v31 <= v34)
  {
LABEL_17:
    quantityType3 = [v11 quantityType];
    if ([quantityType3 isMinimumDurationRestricted])
    {
      [keyCopy timeIntervalSinceReferenceDate];
      v40 = v39;
      [v11 _startTimestamp];
      v42 = v41;
      quantityType4 = [v11 quantityType];
      [quantityType4 minimumAllowedDuration];
      v45 = v44;

      if (v40 - v42 < v45)
      {
        v46 = MEMORY[0x277CCA9B8];
        startDate = [v11 startDate];
        quantityType5 = [v11 quantityType];
        [v46 hk_assignError:transaction code:3 format:{@"Cannot freeze series %@ because the duration between the series start date (%@) and specified endDate (%@) falls below the minimum allowed duration for sample type (%@)", v11, startDate, keyCopy, quantityType5}];
        goto LABEL_20;
      }
    }

    else
    {
    }

    [keyCopy timeIntervalSinceReferenceDate];
    v25 = v83;
LABEL_23:
    *(v25 + 3) = v26;
    v47 = objc_msgSend_copy(v11);
    quantityType5 = [MEMORY[0x277CCAD78] UUID];
    [v47 _setUUID:quantityType5];
    [v47 _setEndTimestamp:v83[3]];
    [v47 _setCount:v79[3]];
    if (v79[3] < 1)
    {
LABEL_52:
      startDate = v47;
      v23 = startDate;
      goto LABEL_53;
    }

    startDate = v47;
    v74 = dateCopy;
    v75 = quantityType5;
    objc_opt_self();
    quantityType6 = [startDate quantityType];
    aggregationStyle = [quantityType6 aggregationStyle];

    if (aggregationStyle >= 4)
    {
      v50 = 0;
    }

    else
    {
      v50 = qword_22916DD88[aggregationStyle];
    }

    quantityType7 = [startDate quantityType];
    v52 = [HDStatisticsCollectionCalculator calculatorForQuantityType:quantityType7 intervalCollection:0 options:v50 mergeStrategy:1];

    v53 = v52;
    v54 = v74;
    objc_opt_self();
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke;
    v90[3] = &unk_278624840;
    sampleCopy = sample;
    v76 = v54;
    v91 = v76;
    v55 = v53;
    v92 = v55;
    if ([v55 performInitialStatisticsTransaction:v90 error:transaction])
    {
      currentStatistics = [v55 currentStatistics];
      v57 = currentStatistics;
      if (currentStatistics)
      {
        v58 = currentStatistics;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:transaction code:100 format:{@"No statistics for quantity sample series with HFDKey (%lld)", sample}];
      }
    }

    else
    {
      v57 = 0;
    }

    if (!v57)
    {

      v23 = 0;
      quantityType5 = v75;
      goto LABEL_53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = v57;
      v60 = startDate;
      objc_opt_self();
      averageQuantity = [v59 averageQuantity];

      if (averageQuantity)
      {
        averageQuantity2 = [v59 averageQuantity];
        [v60 _setAverageQuantity:averageQuantity2];
      }

      minimumQuantity = [v59 minimumQuantity];

      if (minimumQuantity)
      {
        minimumQuantity2 = [v59 minimumQuantity];
        [v60 _setMinimumQuantity:minimumQuantity2];
      }

      maximumQuantity = [v59 maximumQuantity];

      if (maximumQuantity)
      {
        maximumQuantity2 = [v59 maximumQuantity];
        [v60 _setMaximumQuantity:maximumQuantity2];
      }

      mostRecentQuantity = [v59 mostRecentQuantity];

      if (mostRecentQuantity)
      {
        mostRecentQuantity2 = [v59 mostRecentQuantity];
        [v60 _setMostRecentQuantity:mostRecentQuantity2];
      }

      mostRecentQuantityDateInterval = [v59 mostRecentQuantityDateInterval];

      if (!mostRecentQuantityDateInterval)
      {
        goto LABEL_50;
      }

      mostRecentQuantityDateInterval2 = [v59 mostRecentQuantityDateInterval];
      [v60 _setMostRecentQuantityDateInterval:mostRecentQuantityDateInterval2];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_51:

        quantityType5 = v75;
        goto LABEL_52;
      }

      v71 = v57;
      v72 = startDate;
      objc_opt_self();
      sumQuantity = [v71 sumQuantity];

      if (!sumQuantity)
      {
LABEL_50:

        goto LABEL_51;
      }

      mostRecentQuantityDateInterval2 = [v71 sumQuantity];
      [v72 _setSumQuantity:mostRecentQuantityDateInterval2];
    }

    goto LABEL_50;
  }

  v35 = MEMORY[0x277CCA9B8];
  startDate = [v11 startDate];
  quantityType5 = [v11 quantityType];
  [v35 hk_assignError:transaction code:3 format:{@"Cannot freeze series %@ because the series start date (%@) and specified endDate (%@) exceed the maximum allowed duration for sample type (%@)", v11, startDate, keyCopy, quantityType5}];
LABEL_20:
  v23 = 0;
LABEL_53:

LABEL_9:
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  return v23;
}

+ (BOOL)replaceExistingObject:(id)object existingObjectID:(id)d replacementObject:(id)replacementObject replacementObjectID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error
{
  objectCopy = object;
  dCopy = d;
  replacementObjectCopy = replacementObject;
  iDCopy = iD;
  profileCopy = profile;
  transactionCopy = transaction;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"[existingObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:747 description:{@"Invalid parameter not satisfying: %@", @"[replacementObject isKindOfClass:[HKQuantitySample class]]"}];
  }

  v22 = objectCopy;
  v23 = replacementObjectCopy;
  if (([v22 _frozen] & 1) != 0 || !objc_msgSend(v23, "_frozen"))
  {
    v29.receiver = self;
    v29.super_class = &OBJC_METACLASS___HDQuantitySampleSeriesEntity;
    v24 = objc_msgSendSuper2(&v29, sel_replaceExistingObject_existingObjectID_replacementObject_replacementObjectID_profile_transaction_error_, v22, dCopy, v23, iDCopy, profileCopy, transactionCopy, error);
  }

  else
  {
    v24 = [self replaceObjectID:dCopy replacementObjectID:iDCopy deleteOriginalSeriesData:0 profile:profileCopy transaction:transactionCopy error:error];
  }

  v25 = v24;

  return v25;
}

void *__103__HDQuantitySampleSeriesEntity__updatedSampleForQuantitySeriesSample_HFDKey_endDate_transaction_error___block_invoke(void *result, uint64_t a2, double a3, double a4)
{
  *(*(result[4] + 8) + 24) = a3;
  *(*(result[5] + 8) + 24) = a4;
  *(*(result[6] + 8) + 24) = a2;
  return result;
}

- (BOOL)_getFirstTimeEndTimeCountWithTransaction:(uint64_t)transaction HFDKey:(uint64_t)key error:(void *)error handler:
{
  v9 = a2;
  errorCopy = error;
  v11 = errorCopy;
  if (self)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__HDQuantitySampleSeriesEntity__getFirstTimeEndTimeCountWithTransaction_HFDKey_error_handler___block_invoke;
    v14[3] = &unk_2786248E0;
    v15 = errorCopy;
    v12 = [HDQuantitySeriesDataEntity getRangeAndCountForSeriesIdentifier:transaction transaction:v9 error:key handler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__123;
  v18 = __Block_byref_object_dispose__123;
  v19 = 0;
  v3 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke_2;
  v11[3] = &unk_278624818;
  v4 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = &v14;
  v5 = [HDQuantitySeriesDataEntity enumerateSeries:v4 transaction:v3 error:a2 handler:v11];
  if (!v5)
  {
    v6 = v15[5];
    if (v6)
    {
      v7 = v6;
      v8 = v7;
      if (a2)
      {
        v9 = v7;
        *a2 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  return v5;
}

uint64_t __93__HDQuantitySampleSeriesEntity__statisticsWithHFDKey_statisticsCalculator_transaction_error___block_invoke_2(uint64_t a1, double a2, double a3, double a4)
{
  v5 = a2 + a4;
  if (a4 == -1.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v7 addSampleValue:0 startTime:&obj endTime:a3 sourceID:a2 error:v6];
  objc_storeStrong((v8 + 40), obj);
  return v9;
}

+ (BOOL)enumerateDataWithIdentifier:(id)identifier profile:(id)profile error:(id *)error handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HDQuantitySampleSeriesEntity_enumerateDataWithIdentifier_profile_error_handler___block_invoke;
  v16[3] = &unk_2786246F0;
  selfCopy = self;
  v13 = identifierCopy;
  v17 = v13;
  v14 = handlerCopy;
  v18 = v14;
  LOBYTE(error) = [(HDHealthEntity *)HDQuantitySampleSeriesEntity performReadTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

+ (BOOL)enumerateDataWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error handler:(id)handler
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  handlerCopy = handler;
  protectedDatabase = [transactionCopy protectedDatabase];
  v13 = HDDataEntityPredicateForDataUUID();
  v19 = 0;
  v14 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:protectedDatabase predicate:v13 error:&v19];
  v15 = v19;

  if (!v14)
  {
    if (v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find frozen series with ID %@", identifierCopy}];
      if (!v15)
      {
LABEL_9:

        v16 = 0;
        goto LABEL_10;
      }
    }

    if (error)
    {
      v17 = v15;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_9;
  }

  v16 = [v14 enumerateDataWithTransaction:transactionCopy error:error handler:handlerCopy];
LABEL_10:

  return v16;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  profileCopy = profile;
  transactionCopy = transaction;
  optionsCopy = options;
  filterCopy = filter;
  v15 = [(HDEntityEncoder *)[_HDQuantitySampleSeriesEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)hasSeriesDataForHFDKey:(int64_t)key transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDQuantitySampleSeriesEntity_hasSeriesDataForHFDKey_transaction_error___block_invoke;
  v10[3] = &unk_278624868;
  v10[4] = &v11;
  if ([HDQuantitySeriesDataEntity enumerateSeries:key transaction:transactionCopy error:error handler:v10])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(v12 + 24)];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)hasSeriesDataWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  protectedDatabase = [transactionCopy protectedDatabase];
  v8 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:protectedDatabase error:error];

  if (v8)
  {
    v9 = [objc_opt_class() hasSeriesDataForHFDKey:objc_msgSend(v8 transaction:"longLongValue") error:{transactionCopy, error}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)countForSeriesWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__123;
  v20 = __Block_byref_object_dispose__123;
  v21 = 0;
  v14[4] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDQuantitySampleSeriesEntity_countForSeriesWithTransaction_error___block_invoke;
  v14[3] = &unk_278624560;
  LODWORD(self) = [(HDQuantitySampleSeriesEntity *)self startTimeEndTimeCountForSeriesWithTransaction:transactionCopy error:&v15 handler:v14];
  v7 = v15;
  v8 = v7;
  if (self)
  {
    v9 = v17[5];
  }

  else if ([v7 hk_isHealthKitErrorWithCode:1100])
  {
    v9 = &unk_283CB3C00;
  }

  else
  {
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      if (error)
      {
        v12 = v10;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

uint64_t __68__HDQuantitySampleSeriesEntity_countForSeriesWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (BOOL)startTimeEndTimeCountForSeriesWithTransaction:(id)transaction error:(id *)error handler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  protectedDatabase = [transactionCopy protectedDatabase];
  v11 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:protectedDatabase error:error];

  if (v11)
  {
    protectedDatabase2 = [transactionCopy protectedDatabase];
    v13 = [(HDSQLiteEntity *)self dateForProperty:@"start_date" database:protectedDatabase2];

    if (v13)
    {
      longLongValue = [v11 longLongValue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __92__HDQuantitySampleSeriesEntity_startTimeEndTimeCountForSeriesWithTransaction_error_handler___block_invoke;
      v17[3] = &unk_278624890;
      v19 = handlerCopy;
      v18 = v13;
      v15 = [(HDQuantitySampleSeriesEntity *)self _getFirstTimeEndTimeCountWithTransaction:transactionCopy HFDKey:longLongValue error:error handler:v17];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"start_date", objc_opt_class(), -[HDSQLiteEntity persistentID](self, "persistentID")}];
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __92__HDQuantitySampleSeriesEntity_startTimeEndTimeCountForSeriesWithTransaction_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v4 = *(v3 + 16);

  return v4(v3, a2);
}

- (BOOL)enumerateDataWithTransaction:(id)transaction error:(id *)error handler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  protectedDatabase = [transactionCopy protectedDatabase];
  v11 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:protectedDatabase error:error];

  if (v11)
  {
    v12 = [objc_opt_class() enumerateDataWithTransaction:transactionCopy HFDKey:objc_msgSend(v11 error:"longLongValue") handler:{error, handlerCopy}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)enumerateDataWithTransaction:(id)transaction HFDKey:(int64_t)key error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HDQuantitySampleSeriesEntity_enumerateDataWithTransaction_HFDKey_error_handler___block_invoke;
  v13[3] = &unk_27861A0B8;
  v14 = handlerCopy;
  v11 = handlerCopy;
  LOBYTE(error) = [self enumerateRawDataWithTransaction:transaction HFDKey:key error:error handler:v13];

  return error;
}

uint64_t __82__HDQuantitySampleSeriesEntity_enumerateDataWithTransaction_HFDKey_error_handler___block_invoke(uint64_t a1, double a2, double a3, float a4)
{
  v4 = *(a1 + 32);
  if (a4 == -1.0)
  {
    [MEMORY[0x277CCD180] datumWithValue:a3 timeInterval:a2];
  }

  else
  {
    [MEMORY[0x277CCD180] datumWithTimestamp:a2 value:a3 duration:?];
  }
  v5 = ;
  v6 = (*(v4 + 16))(v4, v5);

  return v6;
}

+ (BOOL)enumerateRawDataWithTransaction:(id)transaction HFDKey:(int64_t)key error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HDQuantitySampleSeriesEntity_enumerateRawDataWithTransaction_HFDKey_error_handler___block_invoke;
  v12[3] = &unk_2786248B8;
  v13 = handlerCopy;
  v10 = handlerCopy;
  LOBYTE(error) = [HDQuantitySeriesDataEntity enumerateSeries:key transaction:transaction error:error handler:v12];

  return error;
}

- (BOOL)deleteFromDatabase:(id)database error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v7 = databaseCopy;
  if (!self)
  {

    goto LABEL_5;
  }

  if (![(HDSQLiteEntity *)self existsInDatabase:databaseCopy])
  {

    goto LABEL_10;
  }

  v16 = 0;
  v8 = [(HDQuantitySampleSeriesEntity *)self HFDKeyWithDatabase:v7 error:&v16];
  v9 = v16;
  if (!v8)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      persistentID = [(HDSQLiteEntity *)self persistentID];
      *buf = 134218242;
      v18 = persistentID;
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to find HFD Key when deleting object with persistent id %lld: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v10 = +[HDQuantitySeriesDataEntity deleteSeriesDataWithIdentifier:database:error:](HDQuantitySeriesDataEntity, "deleteSeriesDataWithIdentifier:database:error:", [v8 longLongValue], v7, error);

  if (v10)
  {
LABEL_10:
    v15.receiver = self;
    v15.super_class = HDQuantitySampleSeriesEntity;
    v11 = [(HDSQLiteEntity *)&v15 deleteFromDatabase:v7 error:error];
    goto LABEL_11;
  }

LABEL_5:
  v11 = 0;
LABEL_11:

  return v11;
}

+ (BOOL)primitiveRemoveDatums:(id)datums HFDKey:(int64_t)key transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v10 = [datums hk_map:&__block_literal_global_467];
  protectedDatabase = [transactionCopy protectedDatabase];
  LOBYTE(error) = [HDQuantitySeriesDataEntity deleteSeriesDataWithIdentifier:key timestamps:v10 database:protectedDatabase error:error];

  return error;
}

id __79__HDQuantitySampleSeriesEntity_primitiveRemoveDatums_HFDKey_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 startDate];

  return v2;
}

+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler
{
  objectCopy = object;
  profileCopy = profile;
  transactionCopy = transaction;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = 0;
    goto LABEL_43;
  }

  v15 = [transactionCopy databaseForEntityClass:self];
  v16 = [self dataEntityForObject:objectCopy transaction:transactionCopy error:error];
  if (v16)
  {
    v17 = v15;
    v18 = [v16 existsInDatabase:v17];

    if (v18)
    {
      v19 = objectCopy;
      v53 = profileCopy;
      v50 = v17;
      codableQuantitySample = [v19 codableQuantitySample];
      v56 = 0;
      v54 = v50;
      v20 = [(HDQuantitySampleSeriesEntity *)v16 _isFrozenInDatabase:v54 error:&v56];
      v21 = v56;
      v22 = v21;
      if (v20)
      {
        if (v20 == 2)
        {

          goto LABEL_7;
        }

        v36 = v54;
        v51 = v19;
        v38 = [v16 HFDKeyWithDatabase:v36 error:error];
        v39 = v38;
        if (v38)
        {
          v40 = +[HDQuantitySampleSeriesEntity _hasSeriesDataWithDatabase:hfdKey:error:](HDQuantitySampleSeriesEntity, "_hasSeriesDataWithDatabase:hfdKey:error:", v36, [v38 longLongValue], error);

          if (v40)
          {
            if (v40 != 2)
            {
              v19 = v51;
              _HKInitializeLogging();
              v43 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_INFO, "Cannot merge series data with frozen & final series", buf, 2u);
              }

              v23 = codableQuantitySample;
              v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
              goto LABEL_35;
            }

            v19 = v51;
            v41 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
            v49 = [HDQuantitySampleSeriesEntity _deleteHFDSeriesIfFoundForPersistentID:v41 database:v36 error:error];

            if (!v49)
            {
              v33 = 0;
LABEL_39:
              v23 = codableQuantitySample;
              goto LABEL_40;
            }

LABEL_7:
            v23 = codableQuantitySample;
            quantitySeriesDatas = [codableQuantitySample quantitySeriesDatas];

            if (quantitySeriesDatas)
            {
              quantitySeriesDatas2 = [codableQuantitySample quantitySeriesDatas];
              v26 = [quantitySeriesDatas2 hk_map:&__block_literal_global_469];

              LODWORD(quantitySeriesDatas2) = [(HDQuantitySampleSeriesEntity *)v16 _insertValues:v26 database:v54 error:error];
              if (!quantitySeriesDatas2)
              {
                v33 = 0;
LABEL_40:
                v42 = v54;
                goto LABEL_41;
              }
            }

            if (![codableQuantitySample hasFinal] || objc_msgSend(codableQuantitySample, "final"))
            {
              v27 = objc_opt_class();
              uUID = [v19 UUID];
              v56 = 0;
              v29 = [v27 freezeSeriesWithIdentifier:uUID metadata:0 endDate:0 profile:v53 error:&v56];
              v48 = v56;

              if ([v29 status] == 1 && (objc_msgSend(v29, "frozenIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
              {
                frozenIdentifier = [v29 frozenIdentifier];
                v31 = HDDataEntityPredicateForDataUUID();
                *buf = 0;
                v47 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v54 predicate:v31 error:buf];
                v32 = *buf;

                if (v47)
                {
                  v33 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v47, "persistentID")}];
                }

                else
                {
                  [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Failed to lookup frozen series entity during merge operation." underlyingError:v32];
                  v33 = 0;
                }
              }

              else
              {
                [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Failed to insert frozen series during merge operation." underlyingError:v48];
                v33 = 0;
              }

              goto LABEL_39;
            }

            v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
LABEL_35:
            v33 = v44;
            goto LABEL_40;
          }

LABEL_30:

          v42 = v54;
          v33 = 0;
          v19 = v51;
          v23 = codableQuantitySample;
LABEL_41:

          goto LABEL_42;
        }
      }

      else
      {
        v35 = v21;
        v36 = v35;
        v51 = v19;
        if (v35)
        {
          if (error)
          {
            v37 = v35;
            *error = v36;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      goto LABEL_30;
    }

    v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
    v33 = [(HDQuantitySampleSeriesEntity *)self _insertDataObject:objectCopy inDatabase:v17 persistentID:v34 error:error];
  }

  else
  {
    v33 = 0;
  }

LABEL_42:

LABEL_43:

  return v33;
}

id __103__HDQuantitySampleSeriesEntity__mergeCodableSeriesDataFromQuantitySampleSeries_profile_database_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasStartDate])
  {
    [v2 startDate];
  }

  else
  {
    [v2 endDate];
  }

  v4 = v3;
  v5 = -1.0;
  if ([v2 hasStartDate])
  {
    [v2 endDate];
    v7 = v6;
    [v2 startDate];
    v5 = v7 - v8;
  }

  v9 = MEMORY[0x277CCD180];
  [v2 value];
  *&v10 = v5;
  v12 = [v9 datumWithTimestamp:v4 value:v11 duration:v10];

  return v12;
}

+ (int64_t)_hasSeriesDataWithDatabase:(id)database hfdKey:(unint64_t)key error:(id *)error
{
  databaseCopy = database;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [HDQuantitySeriesDataEntity predicateForSeriesIdentifier:key];
  v16[4] = &v18;
  v17 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HDQuantitySampleSeriesEntity__hasSeriesDataWithDatabase_hfdKey_error___block_invoke;
  v16[3] = &unk_278624868;
  v9 = [HDQuantitySeriesDataEntity enumerateWithDatabase:databaseCopy predicate:v8 error:&v17 handler:v16];
  v10 = v17;

  if (v9)
  {
    if (*(v19 + 24))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v12 = v10;
    v13 = v12;
    if (v12)
    {
      if (error)
      {
        v14 = v12;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v11;
}

+ (id)removeValues:(id)values fromQuantitySeriesSample:(id)sample profile:(id)profile error:(id *)error
{
  valuesCopy = values;
  sampleCopy = sample;
  profileCopy = profile;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__123;
  v30 = __Block_byref_object_dispose__123;
  v31 = 0;
  database = [profileCopy database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HDQuantitySampleSeriesEntity_removeValues_fromQuantitySeriesSample_profile_error___block_invoke;
  v20[3] = &unk_278624928;
  v24 = &v26;
  selfCopy = self;
  v14 = valuesCopy;
  v21 = v14;
  v15 = sampleCopy;
  v22 = v15;
  v16 = profileCopy;
  v23 = v16;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20];

  if (error)
  {
    v17 = v27[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v26, 8);

  return v18;
}

BOOL __84__HDQuantitySampleSeriesEntity_removeValues_fromQuantitySeriesSample_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v84[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v82 = 0;
  v81 = v6;
  v9 = v7;
  v10 = v5;
  v80 = v8;
  objc_opt_self();
  v11 = [v10 protectedDatabase];
  v12 = [v9 UUID];
  v13 = HDDataEntityPredicateForDataUUID();
  v83 = 0;
  v14 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v11 predicate:v13 error:&v83];
  v15 = v83;

  if (!v14)
  {
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v21 = MEMORY[0x277CCA9B8];
      v22 = objc_opt_class();
      v23 = [v9 UUID];
      v24 = [v21 hk_errorForInvalidArgument:@"@" class:v22 selector:sel__removeValues_fromQuantitySeriesSample_transaction_profile_error_ format:{@"No quantity series sample found with UUID %@", v23}];

      v17 = v24;
      if (!v17)
      {
        v15 = 0;
LABEL_18:
        v20 = 0;
        goto LABEL_39;
      }
    }

    v25 = v17;
    v20 = 0;
    v82 = v17;
    v15 = v17;
    goto LABEL_39;
  }

  v16 = [v10 protectedDatabase];
  v17 = [v14 HFDKeyWithDatabase:v16 error:&v82];

  if (!v17 || !+[HDQuantitySampleSeriesEntity primitiveRemoveDatums:HFDKey:transaction:error:](HDQuantitySampleSeriesEntity, "primitiveRemoveDatums:HFDKey:transaction:error:", v81, [v17 longLongValue], v10, &v82))
  {
    goto LABEL_18;
  }

  v18 = [v14 countForSeriesWithTransaction:v10 error:&v82];
  if (v18)
  {
    v79 = v18;
    v19 = [v18 integerValue];
    if (v19 == [v9 count])
    {
      v20 = v9;
LABEL_37:
      v18 = v79;
      goto LABEL_38;
    }

    if (!v19)
    {
      v78 = [v80 dataManager];
      v33 = [v9 UUID];
      v84[0] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
      v35 = objc_alloc_init(HDDataDeletionConfiguration);
      [v78 deleteObjectsWithUUIDCollection:v34 configuration:v35 error:&v82];

      v20 = 0;
      goto LABEL_37;
    }

    v62 = [v17 longLongValue];
    v26 = v9;
    v65 = v14;
    v66 = v10;
    v67 = v80;
    v64 = v26;
    objc_opt_self();
    v27 = [v26 UUID];
    v59 = v19;
    v68 = objc_msgSend_copy(v27);

    v72 = v64;
    v76 = v65;
    v77 = v66;
    v73 = v67;
    objc_opt_self();
    v28 = [(HDQuantitySampleSeriesEntity *)v76 _dataOriginProvenanceWithTransaction:v77 profile:v73 error:&v82];
    if (v28)
    {
      v69 = v28;
      v29 = [v72 endDate];
      v30 = [(HDQuantitySampleSeriesEntity *)v76 _updatedSampleForQuantitySeriesSample:v72 HFDKey:v62 endDate:v29 transaction:v77 error:&v82];

      if (v30 && ([v73 dataManager], v74 = objc_claimAutoreleasedReturnValue(), v84[0] = v30, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v84, 1), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v74, "insertDataObjects:withProvenance:creationDate:error:", v31, v69, &v82, CFAbsoluteTimeGetCurrent()), v31, v74, (v32 & 1) != 0))
      {
        v75 = [v30 UUID];
      }

      else
      {
        v75 = 0;
      }

      v28 = v69;
    }

    else
    {
      v75 = 0;
    }

    if (!v75)
    {
      v20 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v36 = [v77 protectedDatabase];
    v37 = HDDataEntityPredicateForDataUUID();
    v70 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v36 predicate:v37 error:&v82];

    if (!v70)
    {
      goto LABEL_34;
    }

    if (v59 < 2)
    {
      goto LABEL_28;
    }

    v60 = v76;
    v57 = v70;
    v38 = v77;
    v39 = [v38 databaseForEntityClass:objc_opt_self()];
    if (([(HDQuantitySampleSeriesEntity *)v60 _setHFDKey:v39 database:&v82 error:?]& 1) == 0)
    {

      goto LABEL_34;
    }

    v40 = [(HDQuantitySampleSeriesEntity *)v57 _setHFDKey:v62 database:v39 error:&v82];

    if (v40)
    {
LABEL_28:
      v41 = v76;
      v58 = v68;
      v61 = v70;
      v63 = v73;
      v56 = v41;
      objc_opt_self();
      v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v41, "persistentID")}];
      v43 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v61, "persistentID")}];
      v44 = [HDAssociationEntity copyAssociationsFromChildID:v42 toObjectID:v43 profile:v63 error:&v82];

      if (v44)
      {
        v45 = [v63 dataManager];
        v84[0] = v58;
        v71 = v45;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
        v47 = objc_alloc_init(HDDataDeletionConfiguration);
        LOBYTE(v45) = [v45 deleteObjectsWithUUIDCollection:v46 configuration:v47 error:&v82];

        if (v45)
        {
          v20 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithUUID:v75 encodingOptions:0 profile:v63 error:&v82];
LABEL_35:

          goto LABEL_36;
        }
      }

      else
      {
      }
    }

LABEL_34:
    v20 = 0;
    goto LABEL_35;
  }

  v20 = 0;
LABEL_38:

LABEL_39:
  v48 = v82;
  v49 = *(a1[7] + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v20;

  v51 = v48;
  v52 = v51;
  if (v51)
  {
    if (a3)
    {
      v53 = v51;
      *a3 = v52;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (*(*(a1[7] + 8) + 40))
  {
    v54 = 1;
  }

  else
  {
    v54 = v52 == 0;
  }

  return v54;
}

+ (BOOL)unitTesting_insertValues:(id)values quantitySample:(id)sample seriesVersion:(int64_t)version profile:(id)profile error:(id *)error
{
  valuesCopy = values;
  sampleCopy = sample;
  profileCopy = profile;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesEntity.mm" lineNumber:1690 description:{@"Invalid parameter not satisfying: %@", @"values != nil"}];
  }

  uUID = [sampleCopy UUID];
  database = [profileCopy database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__HDQuantitySampleSeriesEntity_unitTesting_insertValues_quantitySample_seriesVersion_profile_error___block_invoke;
  v23[3] = &unk_278624950;
  v18 = uUID;
  v24 = v18;
  selfCopy = self;
  v27 = a2;
  v19 = valuesCopy;
  v25 = v19;
  versionCopy = version;
  v20 = [self performWriteTransactionWithHealthDatabase:database error:error block:v23];

  return v20;
}

BOOL __100__HDQuantitySampleSeriesEntity_unitTesting_insertValues_quantitySample_seriesVersion_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = HDDataEntityPredicateForDataUUID();
  v23 = 0;
  v8 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v6 predicate:v7 error:&v23];
  v9 = v23;

  if (v8)
  {
    v10 = [v5 protectedDatabase];
    v22 = 0;
    v11 = [(HDQuantitySampleSeriesEntity *)v8 _isFrozenInDatabase:v10 error:&v22];
    v12 = v22;

    if (v11 == 2)
    {
      v13 = [v5 protectedDatabase];
      v14 = [v8 HFDKeyWithDatabase:v13 error:a3];

      if (v14)
      {
        v15 = a1[5];
        v21 = a1[8];
        v16 = [v14 longLongValue];
        v17 = [v5 protectedDatabase];
        v18 = [HDQuantitySampleSeriesEntity primitiveInsertValues:v15 seriesVersion:v21 HFDKey:v16 database:v17 error:a3];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_16;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"Unable to add data to a frozen series." underlyingError:v12];
LABEL_8:
    v18 = 0;
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:{@"Unable to find quantity series '%@'", a1[4]}];
    if (!v12)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (a3)
  {
    v19 = v12;
    v18 = 0;
    *a3 = v12;
  }

  else
  {
    _HKLogDroppedError();
    v18 = 0;
  }

  v9 = v12;
LABEL_16:

  return v18;
}

- (BOOL)unitTesting_setInsertionEra:(int64_t)era profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = objc_opt_class();
  database = [profileCopy database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDQuantitySampleSeriesEntity_unitTesting_setInsertionEra_profile_error___block_invoke;
  v12[3] = &unk_278623FA8;
  v12[4] = self;
  v12[5] = era;
  LOBYTE(error) = [v9 performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

uint64_t __74__HDQuantitySampleSeriesEntity_unitTesting_setInsertionEra_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [a2 protectedDatabase];
  if (v4)
  {
    v11[0] = @"insertion_era";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HDQuantitySampleSeriesEntity__setInsertionEra_database_error___block_invoke;
    v10[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
    v10[4] = v5;
    v8 = [v4 updateProperties:v7 database:v6 error:a3 bindingHandler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end