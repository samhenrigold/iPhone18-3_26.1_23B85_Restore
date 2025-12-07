@interface PPLocationStorage
- (BOOL)decayFeedbackCountsWithDecayRate:(double)rate shouldContinueBlock:(id)block;
- (BOOL)deleteAllLocationFeedbackCountRecordsOlderThanDate:(id)date;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id documentIds:(id)ids atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupIds:(id)ids atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsOlderThanDate:(id)date atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync error:(id *)error;
- (BOOL)iterLocationRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)pruneOrphanedLocationFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count isComplete:(BOOL *)complete;
- (PPLocationStorage)initWithDatabase:(id)database;
- (PPLocationStorage)initWithDatabase:(id)database maxRecords:(unsigned int)records dkStorage:(id)storage loadEmptyDatabaseFromDK:(BOOL)k trialWrapper:(id)wrapper;
- (id)sourceStats:(unint64_t)stats withExcludedAlgorithms:(id)algorithms;
- (id)tempViewForSourceIdsExcludedAlgorithms:(id)algorithms txnWitness:(id)witness;
- (void)_deleteLocationsWithRowIds:(void *)ids txnWitness:(uint64_t)witness atLeastOneLocationRemoved:(uint64_t)removed deletedCount:;
- (void)dealloc;
@end

@implementation PPLocationStorage

- (id)tempViewForSourceIdsExcludedAlgorithms:(id)algorithms txnWitness:(id)witness
{
  algorithmsCopy = algorithms;
  witnessCopy = witness;
  if ([algorithmsCopy count])
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    allObjects = [algorithmsCopy allObjects];
    v9 = [allObjects _pas_componentsJoinedByString:{@", "}];
    v10 = [v7 initWithFormat:@"SELECT source_id FROM loc_records WHERE algorithm NOT IN (%@)", v9];

    v11 = [PPSQLDatabase createTempViewContainingRowsFromQuery:v10 descriptiveTableName:@"loc_sourceids" txnWitness:witnessCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)pruneOrphanedLocationFeedbackCountRecordsWithLimit:(unint64_t)limit rowOffset:(unint64_t)offset deletedCount:(unint64_t *)count isComplete:(BOOL *)complete
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  db = self->_db;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__PPLocationStorage_pruneOrphanedLocationFeedbackCountRecordsWithLimit_rowOffset_deletedCount_isComplete___block_invoke;
  v9[3] = &unk_278978F88;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = limit;
  v9[7] = offset;
  v9[8] = count;
  v9[9] = complete;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v9];
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void *__106__PPLocationStorage_pruneOrphanedLocationFeedbackCountRecordsWithLimit_rowOffset_deletedCount_isComplete___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 32) pruneOrphanedFeedbackCountRecordsWithLimit:a1[6] rowOffset:a1[7] deletedCount:a1[8] txnWitness:a2 isComplete:a1[9]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)deleteAllLocationFeedbackCountRecordsOlderThanDate:(id)date
{
  dateCopy = date;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__PPLocationStorage_deleteAllLocationFeedbackCountRecordsOlderThanDate___block_invoke;
  v8[3] = &unk_278978F60;
  v10 = &v11;
  v8[4] = self;
  v6 = dateCopy;
  v9 = v6;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v8];
  LOBYTE(db) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return db;
}

void *__72__PPLocationStorage_deleteAllLocationFeedbackCountRecordsOlderThanDate___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 32) deleteFeedbackCountRecordsOlderThanDate:a1[5] txnWitness:a2];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)sourceStats:(unint64_t)stats withExcludedAlgorithms:(id)algorithms
{
  algorithmsCopy = algorithms;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24528;
  v19 = __Block_byref_object_dispose__24529;
  v20 = 0;
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__PPLocationStorage_sourceStats_withExcludedAlgorithms___block_invoke;
  v11[3] = &unk_278978F38;
  v11[4] = self;
  v8 = algorithmsCopy;
  v12 = v8;
  v13 = &v15;
  statsCopy = stats;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __56__PPLocationStorage_sourceStats_withExcludedAlgorithms___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) tempViewForSourceIdsExcludedAlgorithms:*(a1 + 40) txnWitness:v8];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"loc_records";
  }

  v5 = [*(*(a1 + 32) + 8) sourceStats:*(a1 + 56) forTableWithName:v4 txnWitness:v8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v3)
  {
    [PPSQLDatabase dropViewWithName:v3 txnWitness:v8];
  }
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThanDate:(id)date atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  db = self->_db;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __130__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_groupId_olderThanDate_atLeastOneLocationRemoved_deletedCount_error___block_invoke;
  v21[3] = &unk_278978F10;
  v21[4] = self;
  v22 = idCopy;
  v23 = groupIdCopy;
  v24 = dateCopy;
  removedCopy = removed;
  countCopy = count;
  v17 = dateCopy;
  v18 = groupIdCopy;
  v19 = idCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v21];

  return 1;
}

void __130__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_groupId_olderThanDate_atLeastOneLocationRemoved_deletedCount_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v8 = [v4 rowIdsForRecordsSourcedFromBundleId:v3 exactMatchGroupId:v5 olderThanDate:v6 txnWitness:v7];
  [(PPLocationStorage *)a1[4] _deleteLocationsWithRowIds:v8 txnWitness:v7 atLeastOneLocationRemoved:a1[8] deletedCount:a1[9]];
}

- (void)_deleteLocationsWithRowIds:(void *)ids txnWitness:(uint64_t)witness atLeastOneLocationRemoved:(uint64_t)removed deletedCount:
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  idsCopy = ids;
  selfCopy = self;
  if (self)
  {
    if ([v7 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [&unk_284785E08 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(&unk_284785E08);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            v14 = [idsCopy db];
            v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE FROM %@ WHERE loc_id IN _pas_nsindexset(:rowIds)", v13];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __98__PPLocationStorage__deleteLocationsWithRowIds_txnWitness_atLeastOneLocationRemoved_deletedCount___block_invoke;
            v19[3] = &unk_278978CF8;
            v20 = v7;
            [v14 prepAndRunQuery:v15 onPrep:v19 onRow:0 onError:0];

            ++v12;
          }

          while (v10 != v12);
          v10 = [&unk_284785E08 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }
    }

    [*(selfCopy + 32) deleteRecordsForRowIds:v7 txnWitness:idsCopy atLeastOneClusterRemoved:witness deletedCount:removed];
  }
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __108__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_atLeastOneLocationRemoved_deletedCount_error___block_invoke;
  v13[3] = &unk_278978EC0;
  v13[4] = self;
  v14 = idCopy;
  removedCopy = removed;
  countCopy = count;
  v11 = idCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v13];

  return 1;
}

void __108__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_atLeastOneLocationRemoved_deletedCount_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(v3 + 32);
  v6 = a2;
  v7 = [v5 rowIdsForRecordsSourcedFromBundleId:v4 txnWitness:v6];
  [(PPLocationStorage *)v3 _deleteLocationsWithRowIds:v7 txnWitness:v6 atLeastOneLocationRemoved:a1[6] deletedCount:a1[7]];
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupIds:(id)ids atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  if ([idsCopy count])
  {
    db = self->_db;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __117__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_groupIds_atLeastOneLocationRemoved_deletedCount_error___block_invoke;
    v15[3] = &unk_278978EE8;
    v15[4] = self;
    v16 = idCopy;
    v17 = idsCopy;
    removedCopy = removed;
    countCopy = count;
    [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v15];
  }

  else
  {
    if (removed)
    {
      *removed = 0;
    }

    if (count)
    {
      *count = 0;
    }
  }

  return 1;
}

void __117__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_groupIds_atLeastOneLocationRemoved_deletedCount_error___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a2;
  v7 = [v4 rowIdsForRecordsSourcedFromBundleId:v3 groupIds:v5 txnWitness:v6];
  [(PPLocationStorage *)a1[4] _deleteLocationsWithRowIds:v7 txnWitness:v6 atLeastOneLocationRemoved:a1[7] deletedCount:a1[8]];
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id documentIds:(id)ids atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  db = self->_db;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __120__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_documentIds_atLeastOneLocationRemoved_deletedCount_error___block_invoke;
  v17[3] = &unk_278978EE8;
  v17[4] = self;
  v18 = idCopy;
  v19 = idsCopy;
  removedCopy = removed;
  countCopy = count;
  v14 = idsCopy;
  v15 = idCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v17];

  return 1;
}

void __120__PPLocationStorage_deleteAllLocationsFromSourcesWithBundleId_documentIds_atLeastOneLocationRemoved_deletedCount_error___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 32);
  v5 = a1[6];
  v6 = a2;
  v7 = [v4 rowIdsForRecordsSourcedFromBundleId:v3 documentIds:v5 txnWitness:v6];
  [(PPLocationStorage *)a1[4] _deleteLocationsWithRowIds:v7 txnWitness:v6 atLeastOneLocationRemoved:a1[7] deletedCount:a1[8]];
}

- (BOOL)deleteAllLocationsOlderThanDate:(id)date atLeastOneLocationRemoved:(BOOL *)removed deletedCount:(unint64_t *)count error:(id *)error
{
  dateCopy = date;
  db = self->_db;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__PPLocationStorage_deleteAllLocationsOlderThanDate_atLeastOneLocationRemoved_deletedCount_error___block_invoke;
  v13[3] = &unk_278978EC0;
  v13[4] = self;
  v14 = dateCopy;
  removedCopy = removed;
  countCopy = count;
  v11 = dateCopy;
  [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v13];

  return 1;
}

void __98__PPLocationStorage_deleteAllLocationsOlderThanDate_atLeastOneLocationRemoved_deletedCount_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(v3 + 32);
  v6 = a2;
  v7 = [v5 rowIdsForRecordsOlderThanDate:v4 txnWitness:v6];
  [(PPLocationStorage *)v3 _deleteLocationsWithRowIds:v7 txnWitness:v6 atLeastOneLocationRemoved:a1[6] deletedCount:a1[7]];
}

- (BOOL)decayFeedbackCountsWithDecayRate:(double)rate shouldContinueBlock:(id)block
{
  do
  {
    v7 = (*(block + 2))(block, a2);
  }

  while (v7 && ![(PPRecordStorageHelper *)self->_storageHelper decayFeedbackWithDatabase:self->_db client:5 decayRate:rate]);
  return v7;
}

- (BOOL)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  sourceCopy = source;
  entitiesCopy = entities;
  v17 = 1;
  if ([locationsCopy count])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    db = self->_db;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__PPLocationStorage_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke;
    v22[3] = &unk_278978E48;
    v26 = &v29;
    v22[4] = self;
    v23 = locationsCopy;
    v24 = sourceCopy;
    v25 = entitiesCopy;
    algorithmCopy = algorithm;
    syncCopy = sync;
    [(PPSQLDatabase *)db writeTransactionWithClient:5 block:v22];
    v17 = *(v30 + 24);
    if (error && (v30[3] & 1) == 0)
    {
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      v33 = *MEMORY[0x277CCA450];
      v34[0] = @"The donated data is invalid.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      *error = [v19 initWithDomain:*MEMORY[0x277D3A580] code:9 userInfo:v20];

      v17 = *(v30 + 24);
    }

    _Block_object_dispose(&v29, 8);
  }

  return v17 & 1;
}

void __94__PPLocationStorage_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v141 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v117 = *(a1 + 72);
  v7 = *(a1 + 74);
  v8 = *(a1 + 40);
  v9 = v5;
  v118 = v6;
  v10 = a2;
  if (v4)
  {
    v11 = [v8 count];
    v12 = v10;
    v13 = [v12 db];
    *buf = MEMORY[0x277D85DD0];
    v129 = 3221225472;
    v130 = __83__PPLocationStorage__truncateRecordsByDroppingOldestMakingRoomForCount_txnWitness___block_invoke;
    v131 = &unk_278978E70;
    v132 = v4;
    v134 = v11;
    v14 = v12;
    v133 = v14;
    [v13 writeTransaction:buf];

    v116 = v14;
    v115 = [*(v4 + 40) updateOrCreateRowForSource:v9 addingRefCount:objc_msgSend(v8 txnWitness:{"count"), v14}];
    v15 = v115 != 0x7FFFFFFFFFFFFFFFLL;
    if (v115 == 0x7FFFFFFFFFFFFFFFLL)
    {
      obj = pp_locations_log_handle();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, obj, OS_LOG_TYPE_ERROR, "Suppressing location donation due to source with bogus date.", buf, 2u);
      }
    }

    else
    {
      v16 = +[PPSettings sharedInstance];
      [v16 weightMultiplier];
      v18 = v17;

      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = v8;
      v119 = [obj countByEnumeratingWithState:&v124 objects:buf count:16];
      if (v119)
      {
        v107 = v10;
        v108 = v9;
        v109 = v8;
        v110 = v3;
        v113 = *v125;
        v114 = v4;
        if (v7)
        {
          v19 = &unk_284785148;
        }

        else
        {
          v19 = &unk_284785118;
        }

        v112 = v19;
        do
        {
          v20 = 0;
          do
          {
            if (*v125 != v113)
            {
              objc_enumerationMutation(obj);
            }

            v122 = v20;
            v21 = *(*(&v124 + 1) + 8 * v20);
            context = objc_autoreleasePoolPush();
            v22 = objc_opt_new();
            v135 = 0;
            v136 = 0;
            v120 = v22;
            [v22 getUUIDBytes:&v135];
            v123 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v135 length:16];
            v23 = objc_opt_new();
            v24 = [v21 location];
            v25 = [v24 placemark];
            v26 = [v25 location];
            [v23 setObject:v26 forKeyedSubscript:@"clp_location"];

            v27 = [v21 location];
            v28 = [v27 placemark];
            v29 = [v28 location];
            if (v29)
            {
              v30 = MEMORY[0x277CCABB0];
              v31 = [v21 location];
              v32 = [v31 placemark];
              v33 = [v32 location];
              [v33 coordinate];
              v34 = [v30 numberWithDouble:?];
              [v23 setObject:v34 forKeyedSubscript:@"cll_latitude_degrees"];
            }

            else
            {
              [v23 setObject:0 forKeyedSubscript:@"cll_latitude_degrees"];
            }

            v35 = [v21 location];
            v36 = [v35 placemark];
            v37 = [v36 location];
            if (v37)
            {
              v38 = MEMORY[0x277CCABB0];
              v39 = [v21 location];
              v40 = [v39 placemark];
              v41 = [v40 location];
              [v41 coordinate];
              v43 = [v38 numberWithDouble:v42];
              [v23 setObject:v43 forKeyedSubscript:@"cll_longitude_degrees"];
            }

            else
            {
              [v23 setObject:0 forKeyedSubscript:@"cll_longitude_degrees"];
            }

            v44 = [v21 location];
            v45 = [v44 placemark];
            v46 = [v45 name];
            [v23 setObject:v46 forKeyedSubscript:@"clp_name"];

            v47 = [v21 location];
            v48 = [v47 placemark];
            v49 = [v48 thoroughfare];
            [v23 setObject:v49 forKeyedSubscript:@"clp_thoroughfare"];

            v50 = [v21 location];
            v51 = [v50 placemark];
            v52 = [v51 subThoroughfare];
            [v23 setObject:v52 forKeyedSubscript:@"clp_subThoroughfare"];

            v53 = [v21 location];
            v54 = [v53 placemark];
            v55 = [v54 locality];
            [v23 setObject:v55 forKeyedSubscript:@"clp_locality"];

            v56 = [v21 location];
            v57 = [v56 placemark];
            v58 = [v57 subLocality];
            [v23 setObject:v58 forKeyedSubscript:@"clp_subLocality"];

            v59 = [v21 location];
            v60 = [v59 placemark];
            v61 = [v60 administrativeArea];
            [v23 setObject:v61 forKeyedSubscript:@"clp_administrativeArea"];

            v62 = [v21 location];
            v63 = [v62 placemark];
            v64 = [v63 subAdministrativeArea];
            [v23 setObject:v64 forKeyedSubscript:@"clp_subAdministrativeArea"];

            v65 = [v21 location];
            v66 = [v65 placemark];
            v67 = [v66 postalCode];
            [v23 setObject:v67 forKeyedSubscript:@"clp_postalCode"];

            v68 = [v21 location];
            v69 = [v68 placemark];
            v70 = [v69 ISOcountryCode];
            [v23 setObject:v70 forKeyedSubscript:@"clp_ISOcountryCode"];

            v71 = [v21 location];
            v72 = [v71 placemark];
            v73 = [v72 country];
            [v23 setObject:v73 forKeyedSubscript:@"clp_country"];

            v74 = [v21 location];
            v75 = [v74 placemark];
            v76 = [v75 inlandWater];
            [v23 setObject:v76 forKeyedSubscript:@"clp_inlandWater"];

            v77 = [v21 location];
            v78 = [v77 placemark];
            v79 = [v78 ocean];
            [v23 setObject:v79 forKeyedSubscript:@"clp_ocean"];

            [v23 setObject:v123 forKeyedSubscript:@"uuid"];
            v80 = MEMORY[0x277CCABB0];
            v81 = [v21 location];
            v82 = [v80 numberWithUnsignedShort:{objc_msgSend(v81, "category")}];
            [v23 setObject:v82 forKeyedSubscript:@"category"];

            v83 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v117];
            [v23 setObject:v83 forKeyedSubscript:@"algorithm"];

            v84 = MEMORY[0x277CCABB0];
            [v21 score];
            v86 = [v84 numberWithDouble:v18 * v85];
            [v23 setObject:v86 forKeyedSubscript:@"initial_score"];

            v87 = MEMORY[0x277CCABB0];
            [v21 sentimentScore];
            v88 = [v87 numberWithDouble:?];
            [v23 setObject:v88 forKeyedSubscript:@"sentiment_score"];

            v89 = [MEMORY[0x277D3A578] osBuild];
            [v23 setObject:v89 forKeyedSubscript:@"extraction_os_build"];

            v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(v114 + 48), "treatmentsHash")}];
            [v23 setObject:v90 forKeyedSubscript:@"extraction_asset_version"];

            v91 = [MEMORY[0x277CCABB0] numberWithLongLong:v115];
            [v23 setObject:v91 forKeyedSubscript:@"source_id"];

            [v23 setObject:&unk_284785118 forKeyedSubscript:@"is_remote"];
            [v23 setObject:&unk_284785130 forKeyedSubscript:@"decay_rate"];
            [v23 setObject:v112 forKeyedSubscript:@"is_sync_eligible"];
            v92 = [v21 location];
            v93 = [v92 clusterIdentifier];
            if (v93)
            {
              [v23 setObject:v93 forKeyedSubscript:@"lc_description"];
            }

            else
            {
              v94 = [v120 UUIDString];
              v95 = [v94 lowercaseString];
              [v23 setObject:v95 forKeyedSubscript:@"lc_description"];
            }

            v96 = [v116 db];
            [v96 insertIntoTable:@"loc_records" dictionary:v23];

            v97 = [v116 db];
            v98 = [v97 lastInsertRowId];

            v99 = v118;
            v100 = v116;
            if ([v99 count])
            {
              v101 = [v100 db];
              v135 = MEMORY[0x277D85DD0];
              v136 = 3221225472;
              v137 = __84__PPLocationStorage__insertContextualNamedEntities_forLocationWithRowId_txnWitness___block_invoke;
              v138 = &unk_278978E98;
              v140 = v98;
              v139 = v99;
              [v101 prepAndRunQuery:@"INSERT INTO loc_records_contextual_ne (loc_id onPrep:name) SELECT :locId onRow:value FROM _pas_nsset(:contextualNamedEntities)" onError:{&v135, 0, 0}];
            }

            v102 = [v21 location];
            v103 = [v102 placemark];
            v104 = [v103 areasOfInterest];
            v105 = v100;
            if ([v104 count])
            {
              v106 = [v105 db];
              v135 = MEMORY[0x277D85DD0];
              v136 = 3221225472;
              v137 = __76__PPLocationStorage__insertAreasOfInterest_forLocationWithRowId_txnWitness___block_invoke;
              v138 = &unk_278978E98;
              v140 = v98;
              v139 = v104;
              [v106 prepAndRunQuery:@"INSERT INTO loc_records_clp_areasOfInterest (loc_id onPrep:name) SELECT :locId onRow:value FROM _pas_nsarray(:areasOfInterest)" onError:{&v135, 0, 0}];
            }

            objc_autoreleasePoolPop(context);
            v20 = v122 + 1;
          }

          while (v119 != v122 + 1);
          v119 = [obj countByEnumeratingWithState:&v124 objects:buf count:16];
        }

        while (v119);
        v8 = v109;
        v3 = v110;
        v10 = v107;
        v9 = v108;
        v15 = v115 != 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  *(*(*(v3 + 64) + 8) + 24) = v15;
}

void __76__PPLocationStorage__insertAreasOfInterest_forLocationWithRowId_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":locId" toInt64:v3];
  [v4 bindNamedParam:":areasOfInterest" toNSArray:*(a1 + 32)];
}

void __84__PPLocationStorage__insertContextualNamedEntities_forLocationWithRowId_txnWitness___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":locId" toInt64:v3];
  [v4 bindNamedParam:":contextualNamedEntities" toNSSet:*(a1 + 32)];
}

void __83__PPLocationStorage__truncateRecordsByDroppingOldestMakingRoomForCount_txnWitness___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) rowIdsForRecordsToDropMakingRoomForCount:*(a1 + 48) txnWitness:*(a1 + 40)];
  [(PPLocationStorage *)*(a1 + 32) _deleteLocationsWithRowIds:v2 txnWitness:*(a1 + 40) atLeastOneLocationRemoved:0 deletedCount:0];
}

void __49__PPLocationStorage_clearWithError_deletedCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 db];
  [v3 prepAndRunQuery:@"DELETE FROM loc_records_contextual_ne" onPrep:0 onRow:0 onError:0];

  v4 = [v2 db];

  [v4 prepAndRunQuery:@"DELETE FROM loc_records_clp_areasOfInterest" onPrep:0 onRow:0 onError:0];
}

- (BOOL)iterLocationRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  v76 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  if ([queryCopy limit])
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT * FROM sources AS src CROSS JOIN loc_records AS loc ON loc.source_id = src.id WHERE 1 "];
    v10 = objc_opt_new();
    fromDate = [queryCopy fromDate];

    if (fromDate)
    {
      if ([queryCopy filterByRelevanceDate])
      {
        v12 = @"AND COALESCE(src.relevance_seconds_from_1970, src.seconds_from_1970) >= :fromDateEpoch ";
      }

      else
      {
        v12 = @"AND src.seconds_from_1970 >= :fromDateEpoch ";
      }

      [v9 appendString:v12];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke;
      aBlock[3] = &unk_278978CF8;
      v73 = queryCopy;
      v13 = _Block_copy(aBlock);
      [v10 addObject:v13];
    }

    toDate = [queryCopy toDate];

    if (toDate)
    {
      if ([queryCopy filterByRelevanceDate])
      {
        v15 = @"AND COALESCE(src.relevance_seconds_from_1970, src.seconds_from_1970) <= :toDateEpoch ";
      }

      else
      {
        v15 = @"AND src.seconds_from_1970 <= :toDateEpoch ";
      }

      [v9 appendString:v15];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_2;
      v70[3] = &unk_278978CF8;
      v71 = queryCopy;
      v16 = _Block_copy(v70);
      [v10 addObject:v16];
    }

    if ([queryCopy deviceFilter])
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"AND loc.is_remote = %u ", objc_msgSend(queryCopy, "deviceFilter") == 2];
      [v9 appendString:v17];
    }

    if ([queryCopy excludingWithoutSentiment])
    {
      [v9 appendString:@"AND loc.sentiment_score != 0 "];
    }

    matchingSourceBundleIds = [queryCopy matchingSourceBundleIds];
    if ([matchingSourceBundleIds count])
    {
      [v9 appendString:@"AND src.bundle_id IN _pas_nsset(:matchingSourceBundleIds) "];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_3;
      v68[3] = &unk_278978CF8;
      v69 = matchingSourceBundleIds;
      v19 = _Block_copy(v68);
      [v10 addObject:v19];
    }

    excludingSourceBundleIds = [queryCopy excludingSourceBundleIds];
    if ([excludingSourceBundleIds count])
    {
      [v9 appendString:@"AND src.bundle_id NOT IN _pas_nsset(:excludingSourceBundleIds) "];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_4;
      v66[3] = &unk_278978CF8;
      v67 = excludingSourceBundleIds;
      v21 = _Block_copy(v66);
      [v10 addObject:v21];
    }

    matchingContactHandle = [queryCopy matchingContactHandle];
    v23 = [matchingContactHandle length] == 0;

    if (!v23)
    {
      v24 = [[PPContactStorage alloc] initWithDatabase:self->_db foundInAppsHarvestStoreGetter:&__block_literal_global_24663];
      matchingContactHandle2 = [queryCopy matchingContactHandle];
      v26 = [(PPContactStorage *)v24 sourcesForContactHandle:matchingContactHandle2];

      v27 = [(PPSourceStorage *)self->_sourceStorage whereSourceIdInSubclauseWithSourceIds:v26 tableNameAlias:@"src" binders:v10];
      [v9 appendString:v27];
    }

    matchingCategories = [queryCopy matchingCategories];
    if ([matchingCategories count])
    {
      [v9 appendString:@"AND loc.category IN _pas_nsset(:matchingCategories) "];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_6;
      v64[3] = &unk_278978CF8;
      v65 = matchingCategories;
      v29 = _Block_copy(v64);
      [v10 addObject:v29];
    }

    matchingAlgorithms = [queryCopy matchingAlgorithms];
    if ([matchingAlgorithms count])
    {
      [v9 appendString:@"AND loc.algorithm IN _pas_nsset(:matchingAlgorithms) "];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_7;
      v62[3] = &unk_278978CF8;
      v63 = matchingAlgorithms;
      v31 = _Block_copy(v62);
      [v10 addObject:v31];
    }

    excludingAlgorithms = [queryCopy excludingAlgorithms];
    if ([excludingAlgorithms count])
    {
      [v9 appendString:@"AND loc.algorithm NOT IN _pas_nsset(:excludingAlgorithms) "];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_8;
      v60[3] = &unk_278978CF8;
      v61 = excludingAlgorithms;
      v33 = _Block_copy(v60);
      [v10 addObject:v33];
    }

    fuzzyMatchingString = [queryCopy fuzzyMatchingString];

    if (fuzzyMatchingString)
    {
      [v9 appendString:@"AND loc.lc_description || loc.clp_locality || loc.clp_administrativeArea LIKE :fuzzyString "];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_9;
      v58[3] = &unk_278978CF8;
      v59 = queryCopy;
      v35 = _Block_copy(v58);
      [v10 addObject:v35];
    }

    if ([queryCopy orderByAscendingDate])
    {
      v36 = @"ORDER BY src.seconds_from_1970 ASC";
    }

    else
    {
      v36 = @"ORDER BY src.seconds_from_1970 DESC";
    }

    [v9 appendString:v36];
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__24528;
    v56 = __Block_byref_object_dispose__24529;
    v57 = 0;
    db = self->_db;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_191;
    v45[3] = &unk_278978D68;
    v38 = v9;
    v46 = v38;
    v39 = v10;
    v47 = v39;
    selfCopy = self;
    v51 = &v52;
    v50 = blockCopy;
    v49 = queryCopy;
    [(PPSQLDatabase *)db readTransactionWithClient:5 block:v45];
    if (v53[5])
    {
      v40 = pp_default_log_handle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        v43 = [v53[5] count];
        *buf = 134217984;
        v75 = v43;
        _os_log_fault_impl(&dword_23224A000, v40, OS_LOG_TYPE_FAULT, "iterLocationRecordsWithQuery encountered %tu sources which did not validate; deleting associated location records now.", buf, 0xCu);
      }

      v41 = self->_db;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_210;
      v44[3] = &unk_278978DE0;
      v44[4] = self;
      v44[5] = &v52;
      [(PPSQLDatabase *)v41 writeTransactionWithClient:5 block:v44];
    }

    _Block_object_dispose(&v52, 8);
  }

  return 1;
}

void __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fromDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":fromDateEpoch" toDouble:?];
}

void __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toDate];
  [v4 timeIntervalSince1970];
  [v3 bindNamedParam:":toDateEpoch" toDouble:?];
}

void __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v7 = [*(a1 + 32) fuzzyMatchingString];
  v6 = [v5 initWithFormat:@"%%%@%%", v7];
  [v4 bindNamedParam:":fuzzyString" toNSString:v6];
}

void __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_191(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v4 = [v3 db];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_2_192;
  v14[3] = &unk_278978CF8;
  v5 = *(a1 + 32);
  v15 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_3_193;
  v9[3] = &unk_278978D40;
  v9[4] = *(a1 + 48);
  v6 = v3;
  v10 = v6;
  v8 = *(a1 + 64);
  v7 = v8;
  v12 = v8;
  v13 = v16;
  v11 = *(a1 + 56);
  [v4 prepAndRunQuery:v5 onPrep:v14 onRow:v9 onError:0];

  _Block_object_dispose(v16, 8);
}

void __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_2_215;
  v9[3] = &unk_278978D90;
  v9[4] = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_3_217;
  v7[3] = &unk_278978DB8;
  v8 = v4;
  v6 = v4;
  [v5 prepAndRunQuery:@"SELECT id FROM loc_records WHERE source_id IN _pas_nsset(:sourceIds)" onPrep:v9 onRow:v7 onError:0];

  [(PPLocationStorage *)*(a1 + 32) _deleteLocationsWithRowIds:v6 txnWitness:v3 atLeastOneLocationRemoved:0 deletedCount:0];
}

void __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_2_192(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

uint64_t __62__PPLocationStorage_iterLocationRecordsWithQuery_error_block___block_invoke_3_193(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v60 = a1;
  v7 = v3;
  v8 = v7;
  if (!v6)
  {

LABEL_55:
    v29 = 0;
    v44 = *MEMORY[0x277D42690];
    goto LABEL_56;
  }

  v59 = v6;
  v9 = v5;
  v10 = [v8 getNSDataForColumnName:"clp_location" table:"loc_records"];
  v64 = v4;
  if (v10)
  {
    v70 = 0;
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v70];
    v12 = v70;
    if (!v11)
    {
      v13 = pp_locations_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "Unable to decode CLLocation from field clp_location: %@", &buf, 0xCu);
      }
    }

    v63 = v11;
  }

  else
  {
    v63 = 0;
  }

  v62 = [v8 getNSStringForColumnName:"clp_name" table:"loc_records"];
  v69 = [v8 getNSStringForColumnName:"clp_thoroughfare" table:"loc_records"];
  v68 = [v8 getNSStringForColumnName:"clp_subThoroughfare" table:"loc_records"];
  v67 = [v8 getNSStringForColumnName:"clp_locality" table:"loc_records"];
  v61 = [v8 getNSStringForColumnName:"clp_subLocality" table:"loc_records"];
  v14 = [v8 getNSStringForColumnName:"clp_administrativeArea" table:"loc_records"];
  v15 = [v8 getNSStringForColumnName:"clp_subAdministrativeArea" table:"loc_records"];
  v66 = [v8 getNSStringForColumnName:"clp_postalCode" table:"loc_records"];
  v65 = [v8 getNSStringForColumnName:"clp_ISOcountryCode" table:"loc_records"];
  v16 = [v8 getNSStringForColumnName:"clp_country" table:"loc_records"];
  v17 = [v8 getNSStringForColumnName:"clp_inlandWater" table:"loc_records"];
  v18 = [v8 getNSStringForColumnName:"clp_ocean" table:"loc_records"];
  v19 = [v8 getInt64ForColumnName:"id" table:"loc_records"];
  v20 = v9;
  v21 = objc_opt_new();
  v22 = [v20 db];

  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v77 = __68__PPLocationStorage__areasOfInterestForLocationRecordId_txnWitness___block_invoke;
  v78 = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v79 = v19;
  v71 = MEMORY[0x277D85DD0];
  v72 = 3221225472;
  v73 = __68__PPLocationStorage__areasOfInterestForLocationRecordId_txnWitness___block_invoke_2;
  v74 = &unk_278978DB8;
  v75 = v21;
  v23 = v21;
  [v22 prepAndRunQuery:@"SELECT name FROM loc_records_clp_areasOfInterest WHERE loc_id = :locId" onPrep:&buf onRow:&v71 onError:0];

  v24 = v14;
  if (!v63 && ![v62 length] && !objc_msgSend(v69, "length") && !objc_msgSend(v68, "length") && !objc_msgSend(v67, "length") && !objc_msgSend(v61, "length") && !objc_msgSend(v14, "length") && !objc_msgSend(v15, "length") && !objc_msgSend(v66, "length") && !objc_msgSend(v65, "length") && !objc_msgSend(v16, "length") && !objc_msgSend(v17, "length") && !objc_msgSend(v18, "length") || (objc_msgSend(MEMORY[0x277D3A3F8], "placemarkWithLocation:name:thoroughfare:subthoroughFare:locality:subLocality:administrativeArea:subAdministrativeArea:postalCode:countryCode:country:inlandWater:ocean:areasOfInterest:", v63, v62, v69, v68, v67, v61, v14, v15, v66, v65, v16, v17, v18, 0), (v25 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v26 = [*(v59 + 32) uuidForStatement:v8 columnName:"uuid" tableName:"loc_records"];
    v27 = pp_locations_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "loc_records row %@ has empty placemark.", &buf, 0xCu);
    }

    v25 = 0;
    v24 = v14;
  }

  v4 = v64;
  if (!v25)
  {
    goto LABEL_55;
  }

  v28 = [v8 getInt64ForColumnName:"category" table:"loc_records"];
  v29 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v25 category:v28 mostRelevantRecord:0];

  if (!v29)
  {
    goto LABEL_55;
  }

  v30 = [*(*(v60 + 32) + 40) createSourceWithStatement:v8 txnWitness:*(v60 + 40)];
  if (v30)
  {
    v31 = objc_opt_new();
    v32 = [*(*(v60 + 32) + 32) uuidForStatement:v8 columnName:"uuid" tableName:"loc_records"];
    [v31 setUuid:v32];

    [v31 setLocation:v29];
    [v31 setSource:v30];
    [v31 setAlgorithm:{objc_msgSend(v8, "getInt64ForColumnName:table:", "algorithm", "loc_records")}];
    [v8 getDoubleForColumnName:"initial_score" table:"loc_records"];
    [v31 setInitialScore:?];
    [v31 initialScore];
    [v31 initialScore];
    if (fabs(v33) == INFINITY)
    {
      [v31 setInitialScore:0.0];
    }

    [v8 getDoubleForColumnName:"decay_rate" table:"loc_records"];
    [v31 setDecayRate:?];
    [v31 decayRate];
    [v31 decayRate];
    if (fabs(v34) == INFINITY)
    {
      [v31 setDecayRate:*MEMORY[0x277D3A758]];
    }

    [v8 getDoubleForColumnName:"sentiment_score" table:"loc_records"];
    [v31 setSentimentScore:?];
    [v31 sentimentScore];
    [v31 sentimentScore];
    if (fabs(v35) == INFINITY)
    {
      [v31 setSentimentScore:0.0];
    }

    v36 = [v8 getNSStringForColumnName:"extraction_os_build" table:"loc_records"];
    [v31 setExtractionOsBuild:v36];

    if ([v8 isNullForColumnName:"extraction_asset_version" table:"loc_records"])
    {
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      v37 = [v8 getInt64ForColumnName:"extraction_asset_version" table:"loc_records"];
    }

    [v31 setExtractionAssetVersion:v37];
    v45 = [v8 getInt64ForColumnName:"id" table:"loc_records"];
    if (*(v60 + 32))
    {
      v46 = v45;
      v47 = *(v60 + 40);
      v48 = objc_opt_new();
      v49 = [v47 db];

      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v77 = __76__PPLocationStorage__contextualNamedEntitiesForLocationRecordId_txnWitness___block_invoke;
      v78 = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
      v79 = v46;
      v71 = MEMORY[0x277D85DD0];
      v72 = 3221225472;
      v73 = __76__PPLocationStorage__contextualNamedEntitiesForLocationRecordId_txnWitness___block_invoke_2;
      v74 = &unk_278978DB8;
      v75 = v48;
      v50 = v48;
      [v49 prepAndRunQuery:@"SELECT name FROM loc_records_contextual_ne WHERE loc_id = :locId" onPrep:&buf onRow:&v71 onError:0];

      if ([v50 count])
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    [v31 setContextualNamedEntities:v52];

    LOBYTE(buf) = 0;
    v53 = *(v60 + 56);
    v54 = [v31 copy];
    (*(v53 + 16))(v53, v54, &buf);

    v55 = ++*(*(*(v60 + 72) + 8) + 24);
    v56 = [*(v60 + 48) limit];
    if (buf)
    {
      v57 = *MEMORY[0x277D42698];
    }

    else
    {
      v57 = *MEMORY[0x277D42690];
    }

    if (v55 >= v56)
    {
      v44 = *MEMORY[0x277D42698];
    }

    else
    {
      v44 = v57;
    }
  }

  else
  {
    if (!*(*(*(v60 + 64) + 8) + 40))
    {
      v38 = objc_opt_new();
      v39 = *(*(v60 + 64) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    v41 = [v8 getInt64ForColumnName:"id" table:"sources"];
    v42 = *(*(*(v60 + 64) + 8) + 40);
    v43 = [MEMORY[0x277CCABB0] numberWithLongLong:v41];
    [v42 addObject:v43];

    v44 = *MEMORY[0x277D42690];
  }

LABEL_56:
  objc_autoreleasePoolPop(v4);

  return v44;
}

uint64_t __76__PPLocationStorage__contextualNamedEntitiesForLocationRecordId_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 nonnullNSStringForColumn:0];
  [*(a1 + 32) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __68__PPLocationStorage__areasOfInterestForLocationRecordId_txnWitness___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 nonnullNSStringForColumn:0];
  [*(a1 + 32) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

- (void)dealloc
{
  [(PPDKStorage *)self->_dkStorage removeObserver:self->_deletionObserver];
  v3.receiver = self;
  v3.super_class = PPLocationStorage;
  [(PPLocationStorage *)&v3 dealloc];
}

- (PPLocationStorage)initWithDatabase:(id)database
{
  databaseCopy = database;
  v5 = [PPTrialWrapper alloc];
  v6 = objc_opt_new();
  v7 = +[PPTrialWrapper sharedTrialClient];
  v8 = [(PPTrialWrapper *)v5 initWithSettings:v6 database:databaseCopy trialClient:v7];

  v9 = [(PPLocationStorage *)self initWithDatabase:databaseCopy maxRecords:1000 dkStorage:0 loadEmptyDatabaseFromDK:0 trialWrapper:v8];
  return v9;
}

- (PPLocationStorage)initWithDatabase:(id)database maxRecords:(unsigned int)records dkStorage:(id)storage loadEmptyDatabaseFromDK:(BOOL)k trialWrapper:(id)wrapper
{
  v9 = *&records;
  databaseCopy = database;
  storageCopy = storage;
  wrapperCopy = wrapper;
  if (databaseCopy)
  {
    if (!storageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocationStorage.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"database"}];

    if (!storageCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocationStorage.m" lineNumber:64 description:@"_DK sync not yet supported for this store"];

LABEL_3:
  v25.receiver = self;
  v25.super_class = PPLocationStorage;
  v16 = [(PPLocationStorage *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_db, database);
    objc_storeStrong(&v17->_dkStorage, storage);
    v18 = [[PPSourceStorage alloc] initWithDatabase:v17->_db];
    sourceStorage = v17->_sourceStorage;
    v17->_sourceStorage = v18;

    v20 = [[PPRecordStorageHelper alloc] initWithName:@"Location" table:@"loc_records" clusterIdentifierColumn:@"lc_description" maxRecords:v9 duetStorage:v17->_dkStorage duetStream:0 sourceStorage:v17->_sourceStorage];
    storageHelper = v17->_storageHelper;
    v17->_storageHelper = v20;

    objc_storeStrong(&v17->_trialWrapper, wrapper);
  }

  return v17;
}

@end