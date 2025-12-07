@interface HDQuantitySampleValueEnumerator
+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler;
+ (BOOL)quantityValuesForType:(id)type from:(id)from to:(id)to transaction:(id)transaction error:(id *)error handler:(id)handler;
+ (BOOL)quantityValuesWithSourceForType:(id)type from:(id)from to:(id)to dataInterval:(id)interval table:(id)table transaction:(id)transaction error:(id *)error handler:(id)self0;
+ (BOOL)simplerOrderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler;
+ (id)_propertiesForEnumeration;
+ (id)_queryForEnumerationWithPredicate:(void *)predicate transaction:(char)transaction options:;
+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(double)error handler:;
+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(double)error sampleHandler:;
+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(double)error sourceHandler:;
@end

@implementation HDQuantitySampleValueEnumerator

+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_profile_options_error_handler___block_invoke;
  v18[3] = &unk_2786145D0;
  selfCopy = self;
  optionsCopy = options;
  v19 = predicateCopy;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = predicateCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

+ (BOOL)orderedQuantityValuesBySeriesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v32 = transactionCopy;
  v29 = predicateCopy;
  optionsCopy = options;
  v13 = [(HDQuantitySampleValueEnumerator *)self _queryForEnumerationWithPredicate:predicateCopy transaction:transactionCopy options:options];
  v14 = +[(HDQuantitySampleValueEnumerator *)self];
  v30 = [v14 indexOfObject:*MEMORY[0x277D10A40]];
  v15 = [v14 indexOfObject:@"uuid"];
  v16 = [v14 indexOfObject:@"data_type"];
  v17 = [v14 indexOfObject:@"quantity"];
  v18 = [v14 indexOfObject:@"data_provenances.source_id"];
  v19 = [v14 indexOfObject:@"start_date"];
  v20 = [v14 indexOfObject:@"end_date"];
  v21 = [v14 indexOfObject:@"count"];
  v22 = [v14 indexOfObject:@"hfd_key"];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke;
  v35[3] = &unk_278625900;
  v39 = v30;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v19;
  v44 = v20;
  v45 = v18;
  v46 = v21;
  v47 = v22;
  v48 = optionsCopy;
  v23 = handlerCopy;
  v37 = v23;
  v24 = v32;
  v36 = v24;
  v38 = &v49;
  v25 = [v13 enumerateProperties:v14 error:error enumerationHandler:v35];
  if (v50[3] >= 1)
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v28 = v50[3];
      *buf = 134217984;
      v54 = v28;
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Skipped %ld missing sample histories during enumeration", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v49, 8);
  return v25;
}

+ (id)_queryForEnumerationWithPredicate:(void *)predicate transaction:(char)transaction options:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  predicateCopy = predicate;
  objc_opt_self();
  v8 = objc_opt_class();
  v9 = [predicateCopy databaseForEntityClass:v8];

  if ((transaction & 4) == 0)
  {
    additionalPredicateForEnumeration = [v8 additionalPredicateForEnumeration];
    v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v6 otherPredicate:additionalPredicateForEnumeration];

    v6 = v11;
  }

  v12 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v18[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  if ((transaction & 2) != 0)
  {
    v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"uuid" entityClass:objc_opt_class() ascending:1];
    v15 = [v13 arrayByAddingObject:v14];

    v13 = v15;
  }

  v16 = [v8 queryWithDatabase:v9 predicate:v6 limit:0 orderingTerms:v13 groupBy:0];

  return v16;
}

+ (id)_propertiesForEnumeration
{
  v3[9] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = *MEMORY[0x277D10A40];
  v3[1] = @"uuid";
  v3[2] = @"data_type";
  v3[3] = @"quantity";
  v3[4] = @"data_provenances.source_id";
  v3[5] = @"start_date";
  v3[6] = @"end_date";
  v3[7] = @"count";
  v3[8] = @"hfd_key";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];

  return v1;
}

uint64_t __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = HDSQLiteColumnAsInt64();
  v9 = MEMORY[0x22AAC6C20](a3, *(a1 + 64));
  v10 = HDSQLiteColumnAsInt64();
  v11 = MEMORY[0x22AAC6C50](a3, *(a1 + 80));
  v12 = MEMORY[0x22AAC6C50](a3, *(a1 + 88));
  v13 = MEMORY[0x22AAC6C50](a3, *(a1 + 96));
  v14 = HDSQLiteColumnAsInt64();
  if (MEMORY[0x22AAC6CD0](a3, *(a1 + 112)))
  {
    v15 = 1;
  }

  else
  {
    v15 = HDSQLiteColumnAsInt64();
  }

  v16 = MEMORY[0x22AAC6CD0](a3, *(a1 + 120));
  if ((*(a1 + 128) & 1) != 0 && !v16)
  {
    v32 = HDSQLiteColumnAsInt64();
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__131;
    v56 = __Block_byref_object_dispose__131;
    v57 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    *&v47[3] = v12;
    v17 = v8;
    v18 = v7;
    v46 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke_294;
    v33[3] = &unk_2786258D8;
    v35 = v47;
    v36 = &v58;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v40 = v10;
    v41 = v9;
    v42 = v12;
    v43 = v13;
    v44 = v14;
    v45 = v15;
    v34 = v20;
    v37 = &v48;
    v38 = &v52;
    v39 = v17;
    v21 = v19;
    v7 = v18;
    v22 = [HDQuantitySampleSeriesEntity enumerateRawDataWithTransaction:v21 HFDKey:v32 error:&v46 handler:v33];
    v23 = v46;
    if (v22)
    {
      if (!v49[3])
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v63 = v32;
          _os_log_debug_impl(&dword_228986000, v30, OS_LOG_TYPE_DEBUG, "Skipping missing quantity sample history during enumeration: %{public}lld", buf, 0xCu);
        }

        ++*(*(*(a1 + 48) + 8) + 24);
        v25 = (*(*(a1 + 40) + 16))(v12, v13, v11, v12, v13);
        goto LABEL_22;
      }

      v24 = v53;
      if (*(v59 + 24) == 1 && !v53[5])
      {
        v25 = 1;
LABEL_22:

        _Block_object_dispose(v47, 8);
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v52, 8);

        _Block_object_dispose(&v58, 8);
        goto LABEL_23;
      }
    }

    else
    {
      v24 = v53;
    }

    v26 = v24[5];
    if (v26)
    {
      v27 = v26;
      v28 = v27;
      if (a4)
      {
        v29 = v27;
        *a4 = v28;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v25 = 0;
    goto LABEL_22;
  }

  v25 = (*(*(a1 + 40) + 16))(v12, v13, v11, v12, v13);
LABEL_23:

  return v25;
}

uint64_t __111__HDQuantitySampleValueEnumerator_orderedQuantityValuesBySeriesForPredicate_transaction_options_error_handler___block_invoke_294(uint64_t a1, double a2, double a3, float a4, __n128 a5)
{
  a5.n128_f64[0] = a2;
  if (a4 == -1.0)
  {
    a5.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
    v6 = a2;
  }

  else
  {
    v6 = a4 + a2;
  }

  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = (*(*(a1 + 32) + 16))(*(a1 + 96), *(a1 + 104), a3, a5, v6);
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v8;
  ++*(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) = v6;
  return *(*(*(a1 + 48) + 8) + 24);
}

+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate profile:(id)profile options:(int64_t)options error:(id *)error handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__HDQuantitySampleValueEnumerator_orderedQuantityValuesForPredicate_profile_options_error_handler___block_invoke;
  v18[3] = &unk_2786145D0;
  selfCopy = self;
  optionsCopy = options;
  v19 = predicateCopy;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = predicateCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

+ (BOOL)simplerOrderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler
{
  optionsCopy = options;
  v50 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v28 = predicateCopy;
  v32 = [(HDQuantitySampleValueEnumerator *)self _queryForEnumerationWithPredicate:predicateCopy transaction:transactionCopy options:optionsCopy];
  objc_opt_self();
  v45 = *MEMORY[0x277D10A40];
  v13 = v45;
  v46 = @"quantity";
  v47 = @"start_date";
  v48 = @"end_date";
  v49 = @"hfd_key";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:5];
  v15 = [v14 indexOfObject:v13];
  v16 = [v14 indexOfObject:@"quantity"];
  v17 = [v14 indexOfObject:@"start_date"];
  v18 = [v14 indexOfObject:@"end_date"];
  v19 = [v14 indexOfObject:@"hfd_key"];
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  LOBYTE(v48) = 1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __110__HDQuantitySampleValueEnumerator_simplerOrderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2;
  v33[3] = &unk_278625948;
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v30 = transactionCopy;
  v34 = v30;
  v21 = v20;
  v35 = v21;
  v36 = &__block_literal_global_163;
  selfCopy = self;
  v22 = handlerCopy;
  v37 = v22;
  v38 = &v45;
  if ([v32 enumerateProperties:v14 error:error enumerationHandler:v33])
  {
    if (LOBYTE(v46->length) == 1)
    {
      while (1)
      {
        if (![v21 count])
        {
          goto LABEL_10;
        }

        v23 = [v21 hk_firstSortedObjectWithComparison:&__block_literal_global_163];
        [v23 nextDatumTime];
        v25 = [(HDQuantitySampleValueEnumerator *)self _enumerateWithEnumerator:v23 endTime:error error:v22 sampleHandler:v24];
        if ([v23 done])
        {
          [v21 removeObject:v23];
        }

        if (!v25)
        {
          break;
        }

        if (v25 == 1)
        {
          v26 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      v26 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

LABEL_14:

  _Block_object_dispose(&v45, 8);
  return v26;
}

uint64_t __110__HDQuantitySampleValueEnumerator_simplerOrderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C50](a3, *(a1 + 80));
  v9 = MEMORY[0x22AAC6C50](a3, *(a1 + 88));
  v10 = MEMORY[0x22AAC6C50](a3, *(a1 + 96));
  v11 = MEMORY[0x22AAC6CD0](a3, *(a1 + 104));
  if (v11)
  {
    v12 = 0;
    while ([*(a1 + 40) count])
    {
      v13 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v11 || (v19 = v9, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v13 nextDatumTime];
        if (v9 >= v20)
        {
          v19 = v20;
        }

        else
        {
          v19 = v9;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v13 nextDatumTime];
      if (v19 < v21)
      {

        break;
      }

      v22 = [(HDQuantitySampleValueEnumerator *)*(a1 + 112) _enumerateWithEnumerator:v13 endTime:a4 error:*(a1 + 56) sampleHandler:v19];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v13 done])
      {
        [*(a1 + 40) removeObject:v13];
      }

      if (v22 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_24;
      }

LABEL_12:
    }

    if ((v11 | v12) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(v8, v9, v10);
    }

    v23 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v13 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v7 startTime:HDSQLiteColumnAsInt64() endTime:v9 HFDKey:v10];
    v25 = 0;
    v14 = [(HDQuantitySampleSeriesDataEnumerator *)v13 primeEnumeratorWithError:&v25];
    v15 = v25;
    v16 = v15;
    if (v14)
    {
      v12 = [(HDQuantitySampleSeriesDataEnumerator *)v13 done];
      if (!v12)
      {
        [*(a1 + 40) addObject:v13];
      }

      goto LABEL_12;
    }

    v17 = v15;
    if (v17)
    {
      if (a4)
      {
        v18 = v17;
        *a4 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v23 = 0;
  }

  return v23 & 1;
}

+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(double)error sampleHandler:
{
  v8 = a2;
  timeCopy = time;
  objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__131;
  v29 = __Block_byref_object_dispose__131;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sampleHandler___block_invoke;
  v19[3] = &unk_278625998;
  v22 = &v35;
  v23 = &v31;
  v10 = timeCopy;
  v21 = v10;
  v11 = v8;
  v20 = v11;
  v24 = &v25;
  v12 = [v11 enumerateDataToTime:enumerator error:v19 handler:error];
  v13 = v26[5];
  if (!v12)
  {
    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v15 = v13;
    v16 = v15;
    if (enumerator)
    {
      v17 = v15;
      *enumerator = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  if (*(v36 + 24) == 1 && *(v32 + 24) != 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

LABEL_12:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

+ (BOOL)orderedQuantityValuesForPredicate:(id)predicate transaction:(id)transaction options:(int64_t)options error:(id *)error handler:(id)handler
{
  optionsCopy = options;
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v29 = predicateCopy;
  v33 = [(HDQuantitySampleValueEnumerator *)self _queryForEnumerationWithPredicate:predicateCopy transaction:transactionCopy options:optionsCopy | 2];
  v13 = +[(HDQuantitySampleValueEnumerator *)self];
  v32 = [v13 indexOfObject:*MEMORY[0x277D10A40]];
  v31 = [v13 indexOfObject:@"uuid"];
  v30 = [v13 indexOfObject:@"data_type"];
  v14 = [v13 indexOfObject:@"quantity"];
  v15 = [v13 indexOfObject:@"data_provenances.source_id"];
  v16 = [v13 indexOfObject:@"start_date"];
  v17 = [v13 indexOfObject:@"end_date"];
  v18 = [v13 indexOfObject:@"count"];
  v19 = [v13 indexOfObject:@"hfd_key"];
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __103__HDQuantitySampleValueEnumerator_orderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2;
  v36[3] = &unk_278625970;
  v42 = v32;
  v43 = v31;
  v44 = v30;
  v45 = v14;
  v46 = v16;
  v47 = v17;
  v48 = v15;
  v49 = v18;
  v50 = v19;
  v21 = transactionCopy;
  v37 = v21;
  v22 = v20;
  v38 = v22;
  v39 = &__block_literal_global_301_2;
  selfCopy = self;
  v23 = handlerCopy;
  v40 = v23;
  v41 = &v52;
  if ([v33 enumerateProperties:v13 error:error enumerationHandler:v36])
  {
    if (*(v53 + 24) == 1)
    {
      while (1)
      {
        if (![v22 count])
        {
          goto LABEL_10;
        }

        v24 = [v22 hk_firstSortedObjectWithComparison:&__block_literal_global_301_2];
        [v24 nextDatumTime];
        v26 = [(HDQuantitySampleValueEnumerator *)self _enumerateWithEnumerator:v24 endTime:error error:v23 handler:v25];
        if ([v24 done])
        {
          [v22 removeObject:v24];
        }

        if (!v26)
        {
          break;
        }

        if (v26 == 1)
        {
          v27 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      v27 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

LABEL_14:

  _Block_object_dispose(&v52, 8);
  return v27;
}

uint64_t __103__HDQuantitySampleValueEnumerator_orderedQuantityValuesForPredicate_transaction_options_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = HDSQLiteColumnAsInt64();
  v30 = MEMORY[0x22AAC6C20](a3, *(a1 + 80));
  v8 = HDSQLiteColumnAsInt64();
  v9 = MEMORY[0x22AAC6C50](a3, *(a1 + 96));
  v10 = MEMORY[0x22AAC6C50](a3, *(a1 + 104));
  v11 = MEMORY[0x22AAC6C50](a3, *(a1 + 112));
  v12 = HDSQLiteColumnAsInt64();
  if (MEMORY[0x22AAC6CD0](a3, *(a1 + 128)))
  {
    v13 = 1;
  }

  else
  {
    v13 = HDSQLiteColumnAsInt64();
  }

  v14 = MEMORY[0x22AAC6CD0](a3, *(a1 + 136));
  if (v14)
  {
    v15 = v7;
    v16 = 0;
    while ([*(a1 + 40) count])
    {
      v17 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v14 || (v23 = v10, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v17 nextDatumTime];
        if (v10 >= v24)
        {
          v23 = v24;
        }

        else
        {
          v23 = v10;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v17 nextDatumTime];
      if (v23 < v25)
      {

        break;
      }

      v26 = [(HDQuantitySampleValueEnumerator *)*(a1 + 144) _enumerateWithEnumerator:v17 endTime:a4 error:*(a1 + 56) handler:v23];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v17 done])
      {
        [*(a1 + 40) removeObject:v17];
      }

      if (v26 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_27;
      }

LABEL_15:
    }

    if ((v14 | v16) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      if (v16)
      {
        v28 = 1;
      }

      else
      {
        v28 = v13;
      }

      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(*(a1 + 56), v15, v8, v30, v12, v28, 0, a4, v10, v11, v9, v10, v11);
    }

    v27 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v15 = v7;
    v17 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v7 dataTypeCode:v8 UUIDBytes:v30 startTime:v13 endTime:v12 count:v10 sourceID:v11 HFDKey:HDSQLiteColumnAsInt64() bufferSize:119];
    v31 = 0;
    v18 = [(HDQuantitySampleSeriesDataEnumerator *)v17 primeEnumeratorWithError:&v31];
    v19 = v31;
    v20 = v19;
    if (v18)
    {
      v16 = [(HDQuantitySampleSeriesDataEnumerator *)v17 done];
      if (!v16)
      {
        [*(a1 + 40) addObject:v17];
      }

      goto LABEL_15;
    }

    v21 = v19;
    if (v21)
    {
      if (a4)
      {
        v22 = v21;
        *a4 = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_27:
    v27 = 0;
  }

  return v27 & 1;
}

+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(double)error handler:
{
  v8 = a2;
  timeCopy = time;
  objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__131;
  v29 = __Block_byref_object_dispose__131;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_handler___block_invoke;
  v19[3] = &unk_278625998;
  v22 = &v35;
  v23 = &v31;
  v10 = timeCopy;
  v21 = v10;
  v11 = v8;
  v20 = v11;
  v24 = &v25;
  v12 = [v11 enumerateDataToTime:enumerator error:v19 handler:error];
  v13 = v26[5];
  if (!v12)
  {
    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v15 = v13;
    v16 = v15;
    if (enumerator)
    {
      v17 = v15;
      *enumerator = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  if (*(v36 + 24) == 1 && *(v32 + 24) != 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

LABEL_12:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

uint64_t __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sampleHandler___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) persistentID];
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  LOBYTE(v8) = (*(v8 + 16))(v8, v9, &obj, a4, a2, a3);
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v8;
  return *(*(*(a1 + 56) + 8) + 24);
}

+ (uint64_t)_enumerateWithEnumerator:(void *)enumerator endTime:(void *)time error:(double)error sourceHandler:
{
  v8 = a2;
  timeCopy = time;
  objc_opt_self();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__131;
  v29 = __Block_byref_object_dispose__131;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sourceHandler___block_invoke;
  v19[3] = &unk_278625998;
  v22 = &v35;
  v23 = &v31;
  v10 = timeCopy;
  v21 = v10;
  v11 = v8;
  v20 = v11;
  v24 = &v25;
  v12 = [v11 enumerateDataToTime:enumerator error:v19 handler:error];
  v13 = v26[5];
  if (!v12)
  {
    if (!v13)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v15 = v13;
    v16 = v15;
    if (enumerator)
    {
      v17 = v15;
      *enumerator = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  if (*(v36 + 24) == 1 && *(v32 + 24) != 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

LABEL_12:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

uint64_t __88__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_sourceHandler___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) persistentID];
  v12 = [*(a1 + 32) sourceID];
  v13 = *(*(a1 + 64) + 8);
  obj = *(v13 + 40);
  LOBYTE(a2) = (*(v10 + 16))(v10, v11, v12, a2, &obj, a5, a3, a4);
  objc_storeStrong((v13 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = a2;
  return *(*(*(a1 + 56) + 8) + 24);
}

uint64_t __82__HDQuantitySampleValueEnumerator__enumerateWithEnumerator_endTime_error_handler___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) persistentID];
  v12 = [*(a1 + 32) dataTypeCode];
  v13 = [*(a1 + 32) UUIDBytesPtr];
  [*(a1 + 32) startTime];
  v15 = v14;
  [*(a1 + 32) endTime];
  v17 = v16;
  v18 = [*(a1 + 32) sourceID];
  v19 = [*(a1 + 32) count];
  v20 = *(*(a1 + 64) + 8);
  obj = *(v20 + 40);
  LOBYTE(a2) = (*(v10 + 16))(v10, v11, v12, v13, v18, v19, a2, &obj, v15, v17, a5, a3, a4);
  objc_storeStrong((v20 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = a2;
  return *(*(*(a1 + 56) + 8) + 24);
}

+ (BOOL)quantityValuesWithSourceForType:(id)type from:(id)from to:(id)to dataInterval:(id)interval table:(id)table transaction:(id)transaction error:(id *)error handler:(id)self0
{
  typeCopy = type;
  fromCopy = from;
  toCopy = to;
  intervalCopy = interval;
  tableCopy = table;
  transactionCopy = transaction;
  handlerCopy = handler;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(typeCopy, "code")}];
  v66 = &stru_283BF39C8;
  v45 = handlerCopy;
  v57 = transactionCopy;
  if (fromCopy && toCopy)
  {
    v23 = v22;
    if (intervalCopy)
    {
      v24 = MEMORY[0x277CCACA8];
      [intervalCopy timeIntervalSinceReferenceDate];
      v66 = [v24 stringWithFormat:@"AND samples.start_date >= %f", v25 + -0.001];
    }
  }

  else
  {
    v23 = v22;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  workoutTempTableChanges = [features workoutTempTableChanges];

  v44 = typeCopy;
  v60 = tableCopy;
  v61 = v23;
  if (workoutTempTableChanges)
  {
    v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND (%@.sample_type = %@)", tableCopy, v23];
  }

  else
  {
    v65 = &stru_283BF39C8;
  }

  v58 = MEMORY[0x277CCACA8];
  v64 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v63 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v62 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v56 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v55 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v54 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v53 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v52 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v49 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v51 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v48 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v47 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v29 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v50 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v30 = *MEMORY[0x277D10A40];
  v31 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v32 = v43 = v30;
  v59 = [v58 stringWithFormat:@"SELECT                      %@.%@, %@.%@, %@.%@, %@.%@, %@.%@, %@.%@, %@.%@                      FROM %@                      INNER JOIN %@ USING(%@)                      INNER JOIN %@ USING(%@)                      INNER JOIN %@ USING(%@)                      LEFT JOIN %@ USING(%@)                      INNER JOIN %@ ON %@.%@=%@.%@                      WHERE(                     (%@.%@ = %@)                      %@                      %@                     )                      ORDER BY %@.%@ ASC", v64, @"data_id", v63, @"quantity", v62, @"source_id", v56, @"start_date", v55, @"end_date", v54, @"hfd_key", v53, @"insertion_era", tableCopy, v52, @"uuid", v49, @"data_id", v51, @"data_id", v48, @"data_id", v47, v29, @"provenance", v50, v43, v31, @"data_type", v23, v66, v65, v32, @"start_date"];

  v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 1;
  v34 = [v57 databaseForEntityClass:objc_opt_class()];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __120__HDQuantitySampleValueEnumerator_quantityValuesWithSourceForType_from_to_dataInterval_table_transaction_error_handler___block_invoke_2;
  v67[3] = &unk_2786259C0;
  v35 = v57;
  v68 = v35;
  v36 = v33;
  v69 = v36;
  v70 = &__block_literal_global_322_1;
  selfCopy = self;
  v37 = v45;
  v71 = v37;
  v72 = &v74;
  if ([v34 executeUncachedSQL:v59 error:error bindingHandler:0 enumerationHandler:v67])
  {
    if (*(v75 + 24) == 1)
    {
      while (1)
      {
        if (![v36 count])
        {
          goto LABEL_18;
        }

        v38 = [v36 hk_firstSortedObjectWithComparison:&__block_literal_global_322_1];
        [v38 nextDatumTime];
        v40 = [(HDQuantitySampleValueEnumerator *)self _enumerateWithEnumerator:v38 endTime:error error:v37 sourceHandler:v39];
        if ([v38 done])
        {
          [v36 removeObject:v38];
        }

        if (!v40)
        {
          break;
        }

        if (v40 == 1)
        {
          v41 = 1;
LABEL_21:

          goto LABEL_22;
        }
      }

      v41 = 0;
      goto LABEL_21;
    }

LABEL_18:
    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

LABEL_22:

  _Block_object_dispose(&v74, 8);
  return v41;
}

uint64_t __120__HDQuantitySampleValueEnumerator_quantityValuesWithSourceForType_from_to_dataInterval_table_transaction_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AAC6C50](a2, 1);
  HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C50](a2, 3);
  v9 = MEMORY[0x22AAC6C50](a2, 4);
  v10 = MEMORY[0x22AAC6CD0](a2, 5);
  if (v10)
  {
    v11 = 0;
    while ([*(a1 + 40) count])
    {
      v12 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v10 || (v18 = v8, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
        if (v8 >= v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = v8;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
      if (v18 < v20)
      {

        break;
      }

      v21 = [(HDQuantitySampleValueEnumerator *)*(a1 + 72) _enumerateWithEnumerator:v12 endTime:a3 error:*(a1 + 56) sourceHandler:v18];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v12 done])
      {
        [*(a1 + 40) removeObject:v12];
      }

      if (v21 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_24;
      }

LABEL_12:
    }

    if ((v10 | v11) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(v7, v8, v9);
    }

    v22 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v12 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v6 startTime:HDSQLiteColumnAsInt64() endTime:v8 HFDKey:v9];
    v24 = 0;
    v13 = [(HDQuantitySampleSeriesDataEnumerator *)v12 primeEnumeratorWithError:&v24];
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v11 = [(HDQuantitySampleSeriesDataEnumerator *)v12 done];
      if (!v11)
      {
        [*(a1 + 40) addObject:v12];
      }

      goto LABEL_12;
    }

    v16 = v14;
    if (v16)
    {
      if (a3)
      {
        v17 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v22 = 0;
  }

  return v22 & 1;
}

+ (BOOL)quantityValuesForType:(id)type from:(id)from to:(id)to transaction:(id)transaction error:(id *)error handler:(id)handler
{
  typeCopy = type;
  fromCopy = from;
  toCopy = to;
  transactionCopy = transaction;
  handlerCopy = handler;
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (toCopy)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"AND %@ <= %@", @"start_date", @"end_date"];
    [v16 appendString:v17];
  }

  v39 = toCopy;
  v40 = fromCopy;
  v43 = handlerCopy;
  if (fromCopy)
  {
    v18 = [fromCopy dateByAddingTimeInterval:-86400.0];
    v19 = MEMORY[0x277CCACA8];
    [v18 timeIntervalSinceReferenceDate];
    v21 = [v19 stringWithFormat:@" AND %@ >= %f", @"start_date", v20];
    [v16 appendString:v21];
    v22 = MEMORY[0x277CCACA8];
    [fromCopy timeIntervalSinceReferenceDate];
    v24 = [v22 stringWithFormat:@" AND %@ >= %f", @"end_date", v23];
    [v16 appendString:v24];
  }

  v41 = typeCopy;
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(typeCopy, "code")}];
  v56 = MEMORY[0x277CCACA8];
  v55 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v54 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v53 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v52 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v51 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v50 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v59 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v49 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v48 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v47 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v46 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v45 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v25 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v26 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v27 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
  v58 = [v56 stringWithFormat:@"SELECT %@.data_id, %@.quantity, sam.%@, sam.%@, %@.hfd_key                                                  FROM                                                     (SELECT %@, %@, %@                                                         FROM %@                                                         WHERE %@.data_type  = ?                                                         %@) sam                                                         INNER JOIN %@ USING(%@)                                                         LEFT JOIN %@ USING(%@)                                                                                                   UNION                                                                                                   SELECT sam.%@, %@.quantity, sam.%@, sam.%@, series.%@                                                  FROM                                                     (SELECT %@, %@                                                     FROM %@                                                     WHERE %@ is NOT NULL) series                                                  CROSS JOIN(                                                 SELECT %@.%@, %@.%@, %@.%@                                                  FROM %@                                                  WHERE %@.%@ = ?) sam ON sam.%@ = series.%@                                                  INNER JOIN %@ USING(%@)", v55, v54, @"start_date", @"end_date", v53, @"data_id", @"start_date", @"end_date", v52, v51, v16, v50, @"data_id", v59, @"data_id", @"data_id", v49, @"start_date", @"end_date", @"hfd_key", @"data_id", @"hfd_key", v48, @"insertion_era", v47, @"data_id", v46, @"start_date", v45, @"end_date", v25, v26, @"data_type", @"data_id", @"data_id", v27, @"data_id", 0];

  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v29 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_2;
  v68[3] = &unk_278614860;
  v30 = v42;
  v69 = v30;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_3;
  v61[3] = &unk_2786259C0;
  v31 = transactionCopy;
  v62 = v31;
  v32 = v28;
  v63 = v32;
  v64 = &__block_literal_global_335;
  selfCopy = self;
  v33 = v43;
  v65 = v33;
  v66 = &v70;
  if ([v29 executeSQL:v58 error:error bindingHandler:v68 enumerationHandler:v61])
  {
    if (*(v71 + 24) == 1)
    {
      while (1)
      {
        if (![v32 count])
        {
          goto LABEL_14;
        }

        v34 = [v32 hk_firstSortedObjectWithComparison:&__block_literal_global_335];
        [v34 nextDatumTime];
        v36 = [(HDQuantitySampleValueEnumerator *)self _enumerateWithEnumerator:v34 endTime:error error:v33 sampleHandler:v35];
        if ([v34 done])
        {
          [v32 removeObject:v34];
        }

        if (!v36)
        {
          break;
        }

        if (v36 == 1)
        {
          v37 = 1;
LABEL_17:

          goto LABEL_18;
        }
      }

      v37 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

LABEL_18:

  _Block_object_dispose(&v70, 8);
  return v37;
}

uint64_t __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  HDSQLiteBindFoundationValueToStatement();

  return HDSQLiteBindFoundationValueToStatement();
}

uint64_t __91__HDQuantitySampleValueEnumerator_quantityValuesForType_from_to_transaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = MEMORY[0x22AAC6C50](a2, 1);
  v8 = MEMORY[0x22AAC6C50](a2, 2);
  v9 = MEMORY[0x22AAC6C50](a2, 3);
  v10 = MEMORY[0x22AAC6CD0](a2, 4);
  if (v10)
  {
    v11 = 0;
    while ([*(a1 + 40) count])
    {
      v12 = [*(a1 + 40) hk_firstSortedObjectWithComparison:*(a1 + 48)];
      if (!v10 || (v18 = v8, [*(a1 + 40) count] != 1))
      {
        [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
        if (v8 >= v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = v8;
        }
      }

      [(HDQuantitySampleSeriesDataEnumerator *)v12 nextDatumTime];
      if (v18 < v20)
      {

        break;
      }

      v21 = [(HDQuantitySampleValueEnumerator *)*(a1 + 72) _enumerateWithEnumerator:v12 endTime:a3 error:*(a1 + 56) sampleHandler:v18];
      if ([(HDQuantitySampleSeriesDataEnumerator *)v12 done])
      {
        [*(a1 + 40) removeObject:v12];
      }

      if (v21 <= 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_24;
      }

LABEL_12:
    }

    if ((v10 | v11) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
    {
      *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 56) + 16))(v7, v8, v9);
    }

    v22 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v12 = [[HDQuantitySampleSeriesDataEnumerator alloc] initWithTransaction:*(a1 + 32) persistentID:v6 startTime:HDSQLiteColumnAsInt64() endTime:v8 HFDKey:v9];
    v24 = 0;
    v13 = [(HDQuantitySampleSeriesDataEnumerator *)v12 primeEnumeratorWithError:&v24];
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v11 = [(HDQuantitySampleSeriesDataEnumerator *)v12 done];
      if (!v11)
      {
        [*(a1 + 40) addObject:v12];
      }

      goto LABEL_12;
    }

    v16 = v14;
    if (v16)
    {
      if (a3)
      {
        v17 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_24:
    v22 = 0;
  }

  return v22 & 1;
}

@end