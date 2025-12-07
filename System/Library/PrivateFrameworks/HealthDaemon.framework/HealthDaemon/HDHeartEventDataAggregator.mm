@interface HDHeartEventDataAggregator
- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error;
- (id)_categoryType;
- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error;
- (void)triggerImmediateCloudSyncWithReason:(void *)reason;
@end

@implementation HDHeartEventDataAggregator

- (id)_categoryType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error
{
  v5 = MEMORY[0x277CCD0B0];
  datumCopy = datum;
  _categoryType = [(HDHeartEventDataAggregator *)self _categoryType];
  dateInterval = [datumCopy dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [datumCopy dateInterval];
  endDate = [dateInterval2 endDate];
  if (datumCopy)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:datumCopy[6] forKeyedSubscript:*MEMORY[0x277CCE048]];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 _categorySamplesSplittingDurationWithType:_categoryType value:0 startDate:startDate endDate:endDate device:0 metadata:v12];

  return v13;
}

- (BOOL)didPersistObjects:(id)objects lastDatum:(id)datum collector:(id)collector error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  datumCopy = datum;
  collectorCopy = collector;
  v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  associatedSampleUUIDs = [datumCopy associatedSampleUUIDs];
  v15 = [associatedSampleUUIDs countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(associatedSampleUUIDs);
        }

        [v13 hk_appendBytesWithUUID:*(*(&v40 + 1) + 8 * i)];
      }

      v16 = [associatedSampleUUIDs countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v16);
  }

  if ([objectsCopy count] == 1)
  {
    v38 = collectorCopy;
    firstObject = [objectsCopy firstObject];
    uUID = [firstObject UUID];
    [(HDDataAggregator *)self dataCollectionManager];
    v22 = v21 = error;
    profile = [v22 profile];
    v24 = [HDAssociationEntity insertEntriesWithAssociationUUID:uUID objectUUIDsData:v13 type:0 behavior:0 destinationSubObjectReference:0 profile:profile error:v21];

    v25 = v21;
    if (!v24)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        v34 = v26;
        v35 = objc_opt_class();
        v36 = *v21;
        *buf = 138543874;
        v45 = v35;
        v46 = 2112;
        v47 = datumCopy;
        v48 = 2114;
        v49 = v36;
        v37 = v35;
        _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "%{public}@ Failed to associate heart event sample from sensor datum '%@': %{public}@", buf, 0x20u);
      }
    }

    v39.receiver = self;
    v39.super_class = HDHeartEventDataAggregator;
    collectorCopy = v38;
    v27 = [(HDDataAggregator *)&v39 didPersistObjects:objectsCopy lastDatum:datumCopy collector:v38 error:v25];
  }

  else
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v30 = v28;
      v31 = objc_opt_class();
      v32 = *error;
      *buf = 138544130;
      v45 = v31;
      v46 = 2112;
      v47 = objectsCopy;
      v48 = 2112;
      v49 = datumCopy;
      v50 = 2114;
      v51 = v32;
      v33 = v31;
      _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Not persisting unexpected objects [%@] from sensor datum'%@': %{public}@", buf, 0x2Au);
    }

    v27 = 0;
  }

  return v27;
}

- (void)triggerImmediateCloudSyncWithReason:(void *)reason
{
  v3 = a2;
  if (reason)
  {
    dataCollectionManager = [reason dataCollectionManager];
    profile = [dataCollectionManager profile];
    cloudSyncManager = [profile cloudSyncManager];

    v7 = objc_alloc(MEMORY[0x277CCD140]);
    v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
    v9 = [v7 initWithChangesSyncRequest:v8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HDHeartEventDataAggregator_triggerImmediateCloudSyncWithReason___block_invoke;
    v10[3] = &unk_278616020;
    v10[4] = reason;
    v11 = v3;
    [cloudSyncManager syncWithRequest:v9 reason:v11 completion:v10];
  }
}

void __66__HDHeartEventDataAggregator_triggerImmediateCloudSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  v7 = *MEMORY[0x277CCC298];
  if (!a2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v8 = v6;
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v5;
    v11 = v13;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to complete cloud sync request with %{public}@", &v12, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v11 = v9;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v12, 0x16u);
LABEL_4:
  }

LABEL_6:
}

@end