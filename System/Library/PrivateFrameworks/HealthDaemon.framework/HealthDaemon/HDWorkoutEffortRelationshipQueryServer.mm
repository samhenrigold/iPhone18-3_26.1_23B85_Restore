@interface HDWorkoutEffortRelationshipQueryServer
- (HDWorkoutEffortRelationshipQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_fetchSamplesForWorkoutPID:(int64_t)d activity:(id)activity options:(int64_t)options limit:(unint64_t)limit sortDescending:(BOOL)descending error:(id *)error;
- (id)_filteredRelationships:(id)relationships anchor:(id)anchor;
- (id)_relationshipForWorkout:(id)workout activity:(id)activity samples:(id)samples;
- (int64_t)_batchObjectsWithError:(id *)error batchHandler:(id)handler;
- (void)_handleBatchedQueryResult:(int64_t)result error:(id)error;
- (void)_queue_fetchAssociatedEffortSamplesWithHandler:(id)handler;
- (void)_queue_start;
- (void)_queue_stop;
- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor;
@end

@implementation HDWorkoutEffortRelationshipQueryServer

- (HDWorkoutEffortRelationshipQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = HDWorkoutEffortRelationshipQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = objc_msgSend_copy(configurationCopy);
    ratingOfExertionAssociationQueryServerConfiguration = v11->_ratingOfExertionAssociationQueryServerConfiguration;
    v11->_ratingOfExertionAssociationQueryServerConfiguration = v12;

    anchor = [(_HKWorkoutEffortRelationshipQueryServerConfiguration *)v11->_ratingOfExertionAssociationQueryServerConfiguration anchor];
    v11->_anchor = [anchor _rowid];
  }

  return v11;
}

- (void)_queue_start
{
  v36.receiver = self;
  v36.super_class = HDWorkoutEffortRelationshipQueryServer;
  [(HDQueryServer *)&v36 _queue_start];
  profile = [(HDQueryServer *)self profile];
  associationManager = [profile associationManager];
  v5 = *MEMORY[0x277CCCB68];
  v6 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
  [associationManager addObserver:self forDataType:v6];

  profile2 = [(HDQueryServer *)self profile];
  associationManager2 = [profile2 associationManager];
  v9 = *MEMORY[0x277CCCCD8];
  v10 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCCD8]];
  [associationManager2 addObserver:self forDataType:v10];

  queryUUID = [(HDQueryServer *)self queryUUID];
  v12 = MEMORY[0x277CBEB98];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  v14 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v5];
  v15 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v9];
  v16 = [v12 setWithObjects:{workoutType, v14, v15, 0}];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  v35 = 0;
  v19 = [authorizationOracle authorizationStatusRecordsForTypes:v16 error:&v35];
  v20 = v35;

  if (v20)
  {
    queryClient = [(HDWorkoutEffortRelationshipQueryServer *)self queryClient];
    [queryClient client_deliverError:v20 forQuery:queryUUID];
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54__HDWorkoutEffortRelationshipQueryServer__queue_start__block_invoke;
    v26[3] = &unk_27862BEC0;
    v26[4] = &v31;
    v26[5] = &v27;
    [v19 enumerateKeysAndObjectsUsingBlock:v26];
    if (*(v32 + 24) == 1 && (v28[3] & 1) != 0)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __54__HDWorkoutEffortRelationshipQueryServer__queue_start__block_invoke_2;
      v24[3] = &unk_27862BEE8;
      v24[4] = self;
      v25 = queryUUID;
      [(HDWorkoutEffortRelationshipQueryServer *)self _queue_fetchAssociatedEffortSamplesWithHandler:v24];
    }

    else
    {
      queryClient2 = [(HDWorkoutEffortRelationshipQueryServer *)self queryClient];
      anchor = [(_HKWorkoutEffortRelationshipQueryServerConfiguration *)self->_ratingOfExertionAssociationQueryServerConfiguration anchor];
      [queryClient2 client_deliverWorkoutEffortRelationships:MEMORY[0x277CBEBF8] isFinalBatch:1 anchor:anchor forQuery:queryUUID];
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }
}

uint64_t __54__HDWorkoutEffortRelationshipQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = MEMORY[0x277CCD720];
  v6 = a2;
  v7 = [v5 workoutType];

  if (v7 == v6)
  {
    v8 = [v13 canRead];

    if (v8)
    {
      v10 = 32;
      v11 = v13;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = [v13 canRead];
  v11 = v13;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = 40;
LABEL_7:
  *(*(*(a1 + v10) + 8) + 24) = 1;
LABEL_8:

  return MEMORY[0x2821F96F8](v9, v11);
}

void __54__HDWorkoutEffortRelationshipQueryServer__queue_start__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch associated effort samples: %{public}@", &v20, 0x16u);
    }

    v13 = [*(a1 + 32) queryClient];
    [v13 client_deliverError:v11 forQuery:*(a1 + 40)];
  }

  else
  {
    v14 = *(a1 + 32);
    if (v9)
    {
      v15 = [v14 _filteredRelationships:v9 anchor:v10];
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v20 = 138543619;
        v21 = v17;
        v22 = 2113;
        v23 = v15;
        _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Delivering relationships to client: %{private}@", &v20, 0x16u);
      }

      v18 = [*(a1 + 32) queryClient];
      [v18 client_deliverWorkoutEffortRelationships:v15 isFinalBatch:a4 anchor:v10 forQuery:*(a1 + 40)];
    }

    else
    {
      v15 = [v14 queryClient];
      [v15 client_deliverWorkoutEffortRelationships:MEMORY[0x277CBEBF8] isFinalBatch:a4 anchor:v10 forQuery:*(a1 + 40)];
    }
  }
}

- (id)_filteredRelationships:(id)relationships anchor:(id)anchor
{
  v39 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  anchorCopy = anchor;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = relationshipsCopy;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v9 = v7;
    v27 = *v31;
    *&v8 = 138543618;
    v24 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        samples = [v11 samples];

        if (samples)
        {
          client = [(HDQueryServer *)self client];
          authorizationOracle = [client authorizationOracle];
          samples2 = [v11 samples];
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(anchorCopy, "_rowid")}];
          v29 = 0;
          v17 = [authorizationOracle filteredObjectsForReadAuthorization:samples2 anchor:v16 error:&v29];
          v18 = v29;

          if (!v17)
          {
            _HKInitializeLogging();
            v19 = *MEMORY[0x277CCC308];
            if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
            {
              *buf = v24;
              selfCopy = self;
              v36 = 2112;
              v37 = v18;
              _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed for workout samples with error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v17 = 0;
        }

        workout = [v11 workout];
        activity = [v11 activity];
        v22 = [(HDWorkoutEffortRelationshipQueryServer *)self _relationshipForWorkout:workout activity:activity samples:v17];

        [v28 addObject:v22];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v9);
  }

  return v28;
}

- (void)_queue_stop
{
  v9.receiver = self;
  v9.super_class = HDWorkoutEffortRelationshipQueryServer;
  [(HDQueryServer *)&v9 _queue_stop];
  profile = [(HDQueryServer *)self profile];
  associationManager = [profile associationManager];
  v5 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
  [associationManager removeObserver:self forDataType:v5];

  profile2 = [(HDQueryServer *)self profile];
  associationManager2 = [profile2 associationManager];
  v8 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCCD8]];
  [associationManager2 removeObserver:self forDataType:v8];
}

- (void)_queue_fetchAssociatedEffortSamplesWithHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  anchor = [(_HKWorkoutEffortRelationshipQueryServerConfiguration *)self->_ratingOfExertionAssociationQueryServerConfiguration anchor];
  profile = [(HDQueryServer *)self profile];
  database = [profile database];
  v33 = 0;
  v8 = [(HDHealthEntity *)HDAssociationEntity maxRowIDForPredicate:0 healthDatabase:database error:&v33];
  v9 = v33;

  if (v8)
  {
    v10 = [MEMORY[0x277CCD840] _anchorWithRowid:{objc_msgSend(v8, "longLongValue")}];
    *v38 = 0;
    *&v38[8] = v38;
    *&v38[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__179;
    v40 = __Block_byref_object_dispose__179;
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v11 = [(_HKWorkoutEffortRelationshipQueryServerConfiguration *)self->_ratingOfExertionAssociationQueryServerConfiguration options]== 1;
    v28 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __89__HDWorkoutEffortRelationshipQueryServer__queue_fetchAssociatedEffortSamplesWithHandler___block_invoke;
    v21 = &unk_27862BF38;
    v24 = &v29;
    selfCopy = self;
    v12 = anchor;
    v27 = v11;
    v23 = v12;
    v25 = v38;
    v26 = v11;
    v13 = [(HDWorkoutEffortRelationshipQueryServer *)self _batchObjectsWithError:&v28 batchHandler:&v18];
    v14 = v28;
    [(HDWorkoutEffortRelationshipQueryServer *)self _handleBatchedQueryResult:v13 error:v14, v18, v19, v20, v21, selfCopy];
    if (v14)
    {
      _HKInitializeLogging();
      v15 = HKLogWorkoutsCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v36 = 2114;
        v37 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[database] %{public}@: Failed to fetch relationships for associations: %{public}@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, 0, v12, 1, v14);
    }

    else
    {
      if (![*(*&v38[8] + 40) count])
      {
        _HKInitializeLogging();
        v17 = HKLogWorkoutsCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[database] %{public}@: No sample relationships found", buf, 0xCu);
        }
      }

      handlerCopy[2](handlerCopy, *(*&v38[8] + 40), v10, *(v30 + 24), 0);
      self->_anchor = [v8 longLongValue];
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(v38, 8);
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *v38 = 138543618;
      *&v38[4] = self;
      *&v38[12] = 2114;
      *&v38[14] = v9;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch max rowID for associations table: %{public}@", v38, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0, anchor, 1, v9);
  }
}

void __89__HDWorkoutEffortRelationshipQueryServer__queue_fetchAssociatedEffortSamplesWithHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v6 = [*(a1 + 32) profile];
  v7 = [v6 database];
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__HDWorkoutEffortRelationshipQueryServer__queue_fetchAssociatedEffortSamplesWithHandler___block_invoke_2;
  v14[3] = &unk_27862BF10;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v5;
  v16 = v8;
  v10 = v9;
  v11 = *(a1 + 64);
  v18 = *(a1 + 56);
  v19 = v11;
  v20 = *(a1 + 72);
  v17 = v10;
  v12 = v5;
  [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v7 error:&v21 block:v14];
  v13 = v21;
}

uint64_t __89__HDWorkoutEffortRelationshipQueryServer__queue_fetchAssociatedEffortSamplesWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = *(a1 + 32);
  v52 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v52)
  {
    v6 = *v60;
    v48 = v5;
    v49 = *v60;
    do
    {
      v7 = 0;
      do
      {
        if (*v60 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v7;
        v8 = *(*(&v59 + 1) + 8 * v7);
        v9 = [v5 protectedDatabase];
        v54 = v8;
        v10 = [v8 UUID];
        v11 = HDDataEntityPredicateForDataUUID();
        v12 = [HDDataEntity anyInDatabase:v9 predicate:v11 error:a3];

        v13 = v12;
        if (v12)
        {
          v14 = +[HDAssociationEntity countOfObjectsAssociatedWithObjectPID:excludeDeleted:associationType:behavior:anchor:transaction:error:](HDAssociationEntity, "countOfObjectsAssociatedWithObjectPID:excludeDeleted:associationType:behavior:anchor:transaction:error:", [v12 persistentID], 1, 1, 0, objc_msgSend(*(a1 + 48), "_rowid"), v5, a3);
          v15 = v14;
          if (v14)
          {
            v16 = v54;
            if ([v14 intValue])
            {
              v50 = v15;
              v17 = [v54 _subActivities];
              v18 = [v17 count];

              if (v18)
              {
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v19 = [v54 _subActivities];
                v20 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v56;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      v24 = a3;
                      if (*v56 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v25 = *(*(&v55 + 1) + 8 * i);
                      v26 = *(a1 + 40);
                      v27 = [v13 persistentID];
                      v28 = [*(*(a1 + 40) + 224) options];
                      v29 = v26;
                      a3 = v24;
                      v30 = [v29 _fetchSamplesForWorkoutPID:v27 activity:v25 options:v28 limit:*(a1 + 64) sortDescending:*(a1 + 72) error:v24];
                      v31 = [*(a1 + 40) _relationshipForWorkout:v54 activity:v25 samples:v30];
                      [*(*(*(a1 + 56) + 8) + 40) addObject:v31];
                    }

                    v21 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
                  }

                  while (v21);
                }

                v5 = v48;
                v6 = v49;
                v16 = v54;
              }

              v32 = [*(a1 + 40) _fetchSamplesForWorkoutPID:objc_msgSend(v13 activity:"persistentID") options:0 limit:objc_msgSend(*(*(a1 + 40) + 224) sortDescending:"options") error:{*(a1 + 64), *(a1 + 72), a3}];
              v33 = [*(a1 + 40) _relationshipForWorkout:v16 activity:0 samples:v32];
              [*(*(*(a1 + 56) + 8) + 40) addObject:v33];

              v15 = v50;
              goto LABEL_26;
            }

            _HKInitializeLogging();
            v44 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
            {
              v45 = *(a1 + 40);
              v41 = v44;
              v42 = [v54 UUID];
              v46 = [*(a1 + 48) _rowid];
              *buf = 138543874;
              v65 = v45;
              v6 = v49;
              v66 = 2114;
              v67 = v42;
              v68 = 2048;
              v69 = v46;
              _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_INFO, "%{public}@: No new sample associations found for workout: %{public}@, after anchor:%lld", buf, 0x20u);
LABEL_25:
            }
          }

          else
          {
            _HKInitializeLogging();
            v39 = *MEMORY[0x277CCC2A0];
            v16 = v54;
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              v40 = *(a1 + 40);
              v41 = v39;
              v42 = [v54 UUID];
              v43 = *a3;
              *buf = 138543874;
              v65 = v40;
              v6 = v49;
              v66 = 2114;
              v67 = v42;
              v68 = 2114;
              v69 = v43;
              _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get count of objects loosely associated to workout: %{public}@, %{public}@", buf, 0x20u);
              goto LABEL_25;
            }
          }

LABEL_26:

          goto LABEL_27;
        }

        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC2A0];
        v16 = v54;
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1 + 40);
          v36 = v34;
          v37 = [v54 UUID];
          v38 = *a3;
          *buf = 138543874;
          v65 = v35;
          v6 = v49;
          v66 = 2114;
          v67 = v37;
          v68 = 2114;
          v69 = v38;
          _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get persisted if for workout: %{public}@, %{public}@", buf, 0x20u);
        }

LABEL_27:

        v7 = v53 + 1;
      }

      while (v53 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v52);
  }

  return 1;
}

- (id)_fetchSamplesForWorkoutPID:(int64_t)d activity:(id)activity options:(int64_t)options limit:(unint64_t)limit sortDescending:(BOOL)descending error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCD720];
  v15 = *MEMORY[0x277CCCCD8];
  activityCopy = activity;
  v17 = [v14 quantityTypeForIdentifier:v15];
  v28[0] = v17;
  v18 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
  v28[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

  v20 = HDReferenceForAssociatableObject(activityCopy);

  profile = [(HDQueryServer *)self profile];
  LOBYTE(v26) = descending;
  v22 = [HDAssociationEntity objectsAssociatedWithObjectPID:d subObjectReference:v20 dataTypes:v19 associationType:1 behavior:0 limit:limit sortDescending:v26 profile:profile error:error];

  if (options == 1 && [v22 count] >= 2)
  {
    firstObject = [v22 firstObject];
    v27 = firstObject;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];

    v22 = v24;
  }

  return v22;
}

- (id)_relationshipForWorkout:(id)workout activity:(id)activity samples:(id)samples
{
  samplesCopy = MEMORY[0x277CBEBF8];
  if (samples)
  {
    samplesCopy = samples;
  }

  v9 = MEMORY[0x277CCDC58];
  v10 = samplesCopy;
  samplesCopy2 = samples;
  activityCopy = activity;
  workoutCopy = workout;
  v14 = [[v9 alloc] initWithWorkout:workoutCopy activity:activityCopy samples:v10];

  return v14;
}

- (int64_t)_batchObjectsWithError:(id *)error batchHandler:(id)handler
{
  handlerCopy = handler;
  profile = [(HDQueryServer *)self profile];
  v8 = [(HDDataEntity *)HDWorkoutEntity entityEnumeratorWithProfile:profile];

  filter = [(HDQueryServer *)self filter];
  [v8 setFilter:filter];

  if (v8)
  {
    v10 = [(HDBatchedQueryServer *)self batchObjectsWithEnumerator:v8 error:error handler:handlerCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_handleBatchedQueryResult:(int64_t)result error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (result > 2)
  {
    if (result == 4)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC308];
      if (!os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v15 = 138543362;
      selfCopy4 = self;
      v12 = "%{public}@: Canceled during enumeration";
    }

    else
    {
      if (result != 3)
      {
        goto LABEL_19;
      }

      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC308];
      if (!os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v15 = 138543362;
      selfCopy4 = self;
      v12 = "%{public}@: Suspended during enumeration";
    }

    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, v12, &v15, 0xCu);
    goto LABEL_19;
  }

  if (result == 1)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      selfCopy4 = self;
      v17 = 2114;
      v18 = errorCopy;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error enumerating update results: %{public}@", &v15, 0x16u);
      if (errorCopy)
      {
        goto LABEL_14;
      }
    }

    else if (errorCopy)
    {
LABEL_14:
      queryClient = [(HDWorkoutEffortRelationshipQueryServer *)self queryClient];
      queryUUID = [(HDQueryServer *)self queryUUID];
      [queryClient client_deliverError:errorCopy forQuery:queryUUID];

LABEL_15:
      goto LABEL_19;
    }

    errorCopy = [MEMORY[0x277CCA9B8] hk_error:122 format:@"Sample enumeration failed without reporting an error."];
    goto LABEL_14;
  }

  if (result == 2)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: Client no longer authorized", &v15, 0xCu);
    }

    queryClient = [(HDWorkoutEffortRelationshipQueryServer *)self queryClient];
    anchor = [(_HKWorkoutEffortRelationshipQueryServerConfiguration *)self->_ratingOfExertionAssociationQueryServerConfiguration anchor];
    queryUUID2 = [(HDQueryServer *)self queryUUID];
    [queryClient client_deliverWorkoutEffortRelationships:MEMORY[0x277CBEBF8] isFinalBatch:1 anchor:anchor forQuery:queryUUID2];

    goto LABEL_15;
  }

LABEL_19:
}

- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  subObjectCopy = subObject;
  objectsCopy = objects;
  anchorCopy = anchor;
  clientProxy = [(HDQueryServer *)self clientProxy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 138543618;
    selfCopy2 = self;
    v29 = 2114;
    v30 = objectCopy;
    v19 = "%{public}@: Object is not a Workout: %{public}@";
LABEL_9:
    _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);
    goto LABEL_10;
  }

  if (subObjectCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 138543618;
      selfCopy2 = self;
      v29 = 2114;
      v30 = subObjectCopy;
      v19 = "%{public}@: SubObject is not a WorkoutActivity: %{public}@";
      goto LABEL_9;
    }
  }

  queryQueue = [(HDQueryServer *)self queryQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __110__HDWorkoutEffortRelationshipQueryServer_associationsUpdatedForObject_subObject_type_behavior_objects_anchor___block_invoke;
  v20[3] = &unk_278625448;
  v21 = anchorCopy;
  selfCopy3 = self;
  v23 = clientProxy;
  v24 = objectCopy;
  v25 = subObjectCopy;
  v26 = objectsCopy;
  dispatch_async(queryQueue, v20);

LABEL_10:
}

void __110__HDWorkoutEffortRelationshipQueryServer_associationsUpdatedForObject_subObject_type_behavior_objects_anchor___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) longLongValue];
  v3 = *(a1 + 40);
  if (v2 <= v3[29])
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "%{public}@: Anchor is less then or equal to anchor returned in initial results. Skipping update", &buf, 0xCu);
    }
  }

  else
  {
    v4 = [v3 queryUUID];
    v5 = MEMORY[0x277CBEB98];
    v6 = [MEMORY[0x277CCD720] workoutType];
    v7 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
    v8 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCCD8]];
    v9 = [v5 setWithObjects:{v6, v7, v8, 0}];

    v10 = [*(a1 + 40) client];
    v11 = [v10 authorizationOracle];
    v54 = 0;
    v12 = [v11 authorizationStatusRecordsForTypes:v9 error:&v54];
    v13 = v54;

    if (v13)
    {
      [*(a1 + 48) client_deliverError:v13 forQuery:v4];
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v63 = 0x2020000000;
      v64 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 0;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __110__HDWorkoutEffortRelationshipQueryServer_associationsUpdatedForObject_subObject_type_behavior_objects_anchor___block_invoke_316;
      v49[3] = &unk_27862BEC0;
      v49[4] = &buf;
      v49[5] = &v50;
      [v12 enumerateKeysAndObjectsUsingBlock:v49];
      if (*(*(&buf + 1) + 24) == 1 && (v51[3] & 1) != 0)
      {
        v16 = [*(a1 + 56) UUID];
        v17 = HDDataEntityPredicateForDataUUID();
        v18 = [*(a1 + 40) profile];
        v19 = [v18 database];
        v48 = 0;
        v45 = [(HDHealthEntity *)HDDataEntity anyWithPredicate:v17 healthDatabase:v19 error:&v48];
        v20 = v48;

        if (!v45)
        {
          _HKInitializeLogging();
          v21 = HKLogWorkoutsCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v40 = *(a1 + 40);
            v41 = [*(a1 + 56) UUID];
            *v56 = 138543874;
            v57 = v40;
            v58 = 2114;
            v59 = v41;
            v60 = 2114;
            v61 = v20;
            _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[database] %{public}@: Failed to get persisted entity for workout: %{public}@, %{public}@", v56, 0x20u);
          }

          [*(a1 + 48) client_deliverError:v20 forQuery:v4];
        }

        v22 = *(a1 + 40);
        v23 = [v45 persistentID];
        v24 = *(a1 + 64);
        v25 = [*(a1 + 72) count];
        v47 = v20;
        v26 = [v22 _fetchSamplesForWorkoutPID:v23 activity:v24 options:1 limit:v25 sortDescending:1 error:&v47];
        v27 = v47;

        if (v27)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v39 = *(a1 + 40);
            *v56 = 138543618;
            v57 = v39;
            v58 = 2114;
            v59 = v27;
            _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch associated effort samples: %{public}@", v56, 0x16u);
          }

          [*(a1 + 48) client_deliverError:v27 forQuery:v4];
        }

        else
        {
          v30 = [*(a1 + 40) client];
          v31 = [v30 authorizationOracle];
          v32 = *(a1 + 32);
          v46 = 0;
          v44 = [v31 filteredObjectsForReadAuthorization:v26 anchor:v32 error:&v46];
          v27 = v46;

          if (v44)
          {
            v43 = [objc_alloc(MEMORY[0x277CCDC58]) initWithWorkout:*(a1 + 56) activity:*(a1 + 64) samples:v44];
            _HKInitializeLogging();
            v33 = HKLogWorkoutsCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1 + 40);
              *v56 = 138543619;
              v57 = v34;
              v58 = 2113;
              v59 = v43;
              _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[query] %{public}@: Delivering relationships to client: %{private}@", v56, 0x16u);
            }

            v35 = *(a1 + 48);
            v55 = v43;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
            v37 = [MEMORY[0x277CCD840] anchorFromValue:{objc_msgSend(*(a1 + 32), "longLongValue")}];
            [v35 client_deliverWorkoutEffortRelationships:v36 isFinalBatch:1 anchor:v37 forQuery:v4];
          }

          else
          {
            _HKInitializeLogging();
            v38 = HKLogWorkoutsCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v42 = *(a1 + 40);
              *v56 = 138543618;
              v57 = v42;
              v58 = 2114;
              v59 = v27;
              _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "[query] %{public}@: Failed to filter samples for authorization: %{public}@", v56, 0x16u);
            }

            [*(a1 + 48) client_deliverError:v27 forQuery:v4];
          }
        }
      }

      else
      {
        v29 = *(a1 + 48);
        v27 = [MEMORY[0x277CCD840] anchorFromValue:{objc_msgSend(*(a1 + 32), "longLongValue")}];
        [v29 client_deliverWorkoutEffortRelationships:MEMORY[0x277CBEBF8] isFinalBatch:1 anchor:v27 forQuery:v4];
      }

      _Block_object_dispose(&v50, 8);
      _Block_object_dispose(&buf, 8);
    }
  }
}

uint64_t __110__HDWorkoutEffortRelationshipQueryServer_associationsUpdatedForObject_subObject_type_behavior_objects_anchor___block_invoke_316(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = MEMORY[0x277CCD720];
  v6 = a2;
  v7 = [v5 workoutType];

  if (v7 == v6)
  {
    v8 = [v13 canRead];

    if (v8)
    {
      v10 = 32;
      v11 = v13;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = [v13 canRead];
  v11 = v13;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = 40;
LABEL_7:
  *(*(*(a1 + v10) + 8) + 24) = 1;
LABEL_8:

  return MEMORY[0x2821F96F8](v9, v11);
}

@end