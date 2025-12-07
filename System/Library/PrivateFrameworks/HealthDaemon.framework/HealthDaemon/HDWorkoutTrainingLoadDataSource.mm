@interface HDWorkoutTrainingLoadDataSource
- (BOOL)samplesForCalculatorWithHandler:(id)handler;
- (HDProfile)profile;
- (HDWorkoutTrainingLoadDataSource)init;
- (HDWorkoutTrainingLoadDataSource)initWithProfile:(id)profile quantityType:(id)type filter:(id)filter;
- (void)_queryEffortSampleValuesForWorkoutUUID:(uint64_t)d workoutPID:(void *)iD workoutStartDate:(void *)date workoutEndDate:(uint64_t)endDate workoutActivityType:(uint64_t)type workoutDuration:(void *)duration sourceID:(double)sourceID activity:(void *)self0 sampleHandler:;
@end

@implementation HDWorkoutTrainingLoadDataSource

- (HDWorkoutTrainingLoadDataSource)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDWorkoutTrainingLoadDataSource)initWithProfile:(id)profile quantityType:(id)type filter:(id)filter
{
  profileCopy = profile;
  typeCopy = type;
  filterCopy = filter;
  v19.receiver = self;
  v19.super_class = HDWorkoutTrainingLoadDataSource;
  v11 = [(HDWorkoutTrainingLoadDataSource *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    v13 = objc_msgSend_copy(typeCopy);
    quantityType = v12->_quantityType;
    v12->_quantityType = v13;

    v15 = objc_msgSend_copy(filterCopy);
    filter = v12->_filter;
    v12->_filter = v15;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12->_verboseLogging = [standardUserDefaults hk_BOOLForKey:@"HDWorkoutTrainingLoadNoisyLogging" defaultValue:0];
  }

  return v12;
}

- (BOOL)samplesForCalculatorWithHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HDWorkoutTrainingLoadDataSource_samplesForCalculatorWithHandler___block_invoke;
  v12[3] = &unk_278618368;
  v12[4] = self;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [(HDHealthEntity *)HDWorkoutEntity performReadTransactionWithHealthDatabase:database error:&v14 block:v12];
  v9 = v14;

  if (!v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Error querying workout samples: %{public}@", buf, 0xCu);
    }
  }

  return v8;
}

BOOL __67__HDWorkoutTrainingLoadDataSource_samplesForCalculatorWithHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v25[0] = @"uuid";
  v25[1] = @"start_date";
  v25[2] = @"end_date";
  v25[3] = @"provenance";
  v25[4] = @"activities.activity_type";
  v25[5] = @"activities.duration";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:6];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  WeakRetained = objc_loadWeakRetained((v6 + 16));
  v9 = [v7 predicateWithProfile:WeakRetained];
  v10 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v24 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v12 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v13 = [v12 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HDWorkoutTrainingLoadDataSource_samplesForCalculatorWithHandler___block_invoke_2;
  v20[3] = &unk_278618340;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v21 = v4;
  v22 = v14;
  v23 = v15;
  v16 = v4;
  v17 = [(HDHealthEntity *)HDWorkoutEntity enumerateProperties:v5 withPredicate:v9 orderingTerms:v11 groupBy:0 limit:0 healthDatabase:v13 error:a3 enumerationHandler:v20];

  return v17;
}

BOOL __67__HDWorkoutTrainingLoadDataSource_samplesForCalculatorWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) databaseForEntityClass:objc_opt_class()];
  v9 = [HDWorkoutActivityEntity subActivitiesWithOwnerID:a2 database:v8 error:a5];
  if (v9)
  {
    v10 = HDSQLiteColumnWithNameAsInt64();
    v40 = HDSQLiteColumnWithNameAsUUID();
    v39 = HDSQLiteColumnWithNameAsDate();
    v38 = HDSQLiteColumnWithNameAsDate();
    v36 = HDSQLiteColumnWithNameAsInt64();
    v11 = HDSQLiteColumnWithNameAsInt64();
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v13 = [WeakRetained dataProvenanceManager];
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    v15 = [v13 originProvenanceForPersistentID:v14 transaction:*(a1 + 32) error:a5];

    v16 = v15 != 0;
    if (v15)
    {
      v17 = v36;
      if (v10 == 82)
      {
        v35 = v9;
        v37 = v8;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v22 = v9;
        v23 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v41 + 1) + 8 * i);
              v28 = [v27 workoutConfiguration];
              v29 = [v28 activityType];

              if (v29 != 83)
              {
                v30 = *(a1 + 40);
                v31 = [v15 sourceID];
                -[HDWorkoutTrainingLoadDataSource _queryEffortSampleValuesForWorkoutUUID:workoutPID:workoutStartDate:workoutEndDate:workoutActivityType:workoutDuration:sourceID:activity:sampleHandler:](v30, v40, a2, v39, v38, 82, [v31 longLongValue], v27, v17, *(a1 + 48));
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v24);
        }

        v9 = v35;
        v8 = v37;
        v16 = v15 != 0;
      }

      else if (v10 == 84)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 40);
          v20 = v18;
          v21 = _HKWorkoutActivityNameForActivityType();
          *buf = 138543618;
          v47 = v19;
          v48 = 2114;
          v49 = v21;
          _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_INFO, "%{public}@: Not retrieving rating of exertion samples for workout activity: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v32 = *(a1 + 40);
        v33 = [v15 sourceID];
        -[HDWorkoutTrainingLoadDataSource _queryEffortSampleValuesForWorkoutUUID:workoutPID:workoutStartDate:workoutEndDate:workoutActivityType:workoutDuration:sourceID:activity:sampleHandler:](v32, v40, a2, v39, v38, v10, [v33 longLongValue], 0, v17, *(a1 + 48));
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_queryEffortSampleValuesForWorkoutUUID:(uint64_t)d workoutPID:(void *)iD workoutStartDate:(void *)date workoutEndDate:(uint64_t)endDate workoutActivityType:(uint64_t)type workoutDuration:(void *)duration sourceID:(double)sourceID activity:(void *)self0 sampleHandler:
{
  v85 = *MEMORY[0x277D85DE8];
  v18 = a2;
  iDCopy = iD;
  dateCopy = date;
  durationCopy = duration;
  activityCopy = activity;
  if (self)
  {
    v50 = durationCopy != 0;
    v20 = @"IS NULL ";
    if (durationCopy)
    {
      v20 = @"= (SELECT workout_activities.ROWID FROM workout_activities WHERE workout_activities.uuid = ?) ";
    }

    selfCopy = self;
    v59 = v20;
    dCopy = d;
    typeCopy = type;
    v51 = durationCopy;
    if (durationCopy)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB28]);
      uUID = [durationCopy UUID];
      v49 = v21;
      [v21 hk_appendBytesWithUUID:uUID];
    }

    else
    {
      v49 = 0;
    }

    v23 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v24 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleEntity];
    v25 = MEMORY[0x277CCACA8];
    v26 = *MEMORY[0x277CCC750];
    v27 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
    v57 = v24;
    v28 = [v25 stringWithFormat:@"SELECT     workout_associations.sample_type, %@.%@ as sample_value FROM(    SELECT         %@.%@, %@.%@ as source_object_id, %@ as sample_type, %@.%@ as sample_creation_date, %@     FROM %@     INNER JOIN %@ AS child_id_samples ON %@.%@=%@     WHERE %@.%@ = ?         AND %@.%@ %@         AND %@.%@ = 0         AND %@ IN (?, ?)         AND %@.%@ = ?         AND %@.%@ = ?) workout_associations LEFT JOIN %@ ON workout_associations.%@ = %@.%@ ORDER BY workout_associations.sample_type DESC, workout_associations.sample_creation_date DESC LIMIT 1", v24, v26, v23, @"ROWID", v23, @"source_object_id", @"child_id_samples.data_type", v23, @"creation_date", @"child_id_samples.data_id", v23, v27, v23, @"source_object_id", @"child_id_samples.data_id", v23, @"destination_object_id", v23, @"destination_sub_object_id", v59, v23, @"deleted", @"child_id_samples.data_type", v23, @"type", v23, @"behavior", v24, @"data_id", v24, @"data_id"];;

    workoutConfiguration = [v51 workoutConfiguration];
    activityType = [workoutConfiguration activityType];
    if (activityType)
    {
      endDateCopy = activityType;
    }

    else
    {
      endDateCopy = endDate;
    }

    v32 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v32 setRequiresWrite:0];
    WeakRetained = objc_loadWeakRetained((selfCopy + 16));
    database = [WeakRetained database];
    v78 = 0;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke;
    v63[3] = &unk_2786183E0;
    v35 = v51;
    v64 = v35;
    sourceIDCopy = sourceID;
    v65 = iDCopy;
    v66 = dateCopy;
    v52 = v28;
    v67 = v52;
    v74 = dCopy;
    v77 = v50;
    v54 = v49;
    v68 = v54;
    v72 = activityCopy;
    v75 = typeCopy;
    v76 = endDateCopy;
    v36 = v18;
    v69 = v36;
    v70 = selfCopy;
    v71 = 0;
    v56 = v32;
    [database performTransactionWithContext:v32 error:&v78 block:v63 inaccessibilityHandler:&__block_literal_global_36];
    v37 = v78;

    v38 = v37;
    durationCopy = v51;
    if (v38)
    {
      _HKInitializeLogging();
      v39 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        v41 = _HKWorkoutActivityNameForActivityType();
        *buf = 138543874;
        v80 = selfCopy;
        v81 = 2114;
        v82 = v41;
        v83 = 2114;
        v84 = v38;
        _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving rating of exertion samples for workout activity %{public}@: %{public}@", buf, 0x20u);
      }

      goto LABEL_19;
    }

    v42 = *(selfCopy + 8);
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC330];
    v44 = *MEMORY[0x277CCC330];
    if (v42 == 1)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v43;
        uUID2 = [v35 UUID];
        *buf = 138543874;
        v80 = selfCopy;
        v81 = 2114;
        v82 = v36;
        v83 = 2114;
        v84 = uUID2;
        v47 = v45;
        v48 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
        _os_log_impl(&dword_228986000, v47, v48, "%{public}@: retrieved rating of exertion samples for workout <%{public}@>, activity %{public}@ successfully", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = v43;
      uUID2 = [v35 UUID];
      *buf = 138543874;
      v80 = selfCopy;
      v81 = 2114;
      v82 = v36;
      v83 = 2114;
      v84 = uUID2;
      v47 = v45;
      v48 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

LABEL_19:
  }
}

uint64_t __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) duration];
  v5 = v4;
  if (v4 == 0.0)
  {
    v5 = *(a1 + 104);
  }

  v6 = [*(a1 + 32) startDate];
  v7 = v6;
  if (!v6)
  {
    v7 = *(a1 + 40);
  }

  v8 = v7;

  v9 = [*(a1 + 32) endDate];
  v10 = v9;
  if (!v9)
  {
    v10 = *(a1 + 48);
  }

  v11 = v10;

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v12 = [v3 protectedDatabase];
  v42 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke_2;
  v38[3] = &unk_278618390;
  v40 = *(a1 + 112);
  v41 = *(a1 + 136);
  v13 = *(a1 + 56);
  v39 = *(a1 + 64);
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke_3;
  v30 = &unk_2786183B8;
  v36 = v5;
  v34 = *(a1 + 96);
  v14 = v8;
  v31 = v14;
  v15 = v11;
  v32 = v15;
  v37 = *(a1 + 120);
  v33 = *(a1 + 72);
  v35 = &v43;
  v16 = [v12 executeSQL:v13 error:&v42 bindingHandler:v38 enumerationHandler:&v27];
  v17 = v42;

  if (v16)
  {
    if (*(v44 + 24) == 1)
    {
      v18 = *(a1 + 96);
      [v14 timeIntervalSinceReferenceDate];
      v20 = v19;
      [v15 timeIntervalSinceReferenceDate];
      (*(v18 + 16))(v18, *(a1 + 120), *(a1 + 128), *(a1 + 72), 0, 0.0, v20, v21);
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 80);
      v25 = _HKWorkoutActivityNameForActivityType();
      v26 = *(a1 + 88);
      *buf = 138543874;
      v48 = v24;
      v49 = 2114;
      v50 = v25;
      v51 = 2114;
      v52 = v26;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving rating of exertion samples for workout activity %{public}@: %{public}@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v43, 8);
  return v16;
}

uint64_t __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    sqlite3_bind_blob(a2, 2, [*(a1 + 32) bytes], 16, 0xFFFFFFFFFFFFFFFFLL);
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  sqlite3_bind_int64(a2, v4, 304);
  sqlite3_bind_int64(a2, v4 + 1, 298);
  sqlite3_bind_int64(a2, v4 + 2, 1);

  return sqlite3_bind_int64(a2, v4 + 3, 0);
}

uint64_t __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72) * round(MEMORY[0x22AAC6C50](a2, 1));
  v4 = *(a1 + 56);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v6 = v5;
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  (*(v4 + 16))(v4, *(a1 + 80), *(a1 + 88), *(a1 + 48), 0, v3, v6, v7);
  *(*(*(a1 + 64) + 8) + 24) = 0;
  return 1;
}

uint64_t __185__HDWorkoutTrainingLoadDataSource__queryEffortSampleValuesForWorkoutUUID_workoutPID_workoutStartDate_workoutEndDate_workoutActivityType_workoutDuration_sourceID_activity_sampleHandler___block_invoke_326(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (v4)
  {
    if (a3)
    {
      v5 = v4;
      *a3 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end