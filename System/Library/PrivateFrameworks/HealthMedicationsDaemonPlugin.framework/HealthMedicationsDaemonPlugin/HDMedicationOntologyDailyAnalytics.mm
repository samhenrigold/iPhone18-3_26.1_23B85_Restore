@interface HDMedicationOntologyDailyAnalytics
- (HDMedicationOntologyDailyAnalytics)init;
- (HDMedicationOntologyDailyAnalytics)initWithProfile:(id)profile;
- (NSString)eventName;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)shardRegistry;
@end

@implementation HDMedicationOntologyDailyAnalytics

- (HDMedicationOntologyDailyAnalytics)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationOntologyDailyAnalytics)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDMedicationOntologyDailyAnalytics;
  v5 = [(HDMedicationOntologyDailyAnalytics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (NSString)eventName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:&unk_2863C2E40];
  v7 = MEMORY[0x277D10B20];
  v8 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v25[0] = v8;
  v9 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v25[1] = v9;
  v10 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v25[2] = v10;
  v11 = HDOntologyShardRegistryPredicateForCurrentSchemaEntry();
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v13 = [v7 predicateMatchingAnyPredicates:v12];

  shardRegistry = [(HDMedicationOntologyDailyAnalytics *)self shardRegistry];
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__HDMedicationOntologyDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke;
  v22[3] = &unk_2796CE878;
  v15 = v6;
  v23 = v15;
  LOBYTE(v10) = [shardRegistry enumerateEntriesWithPredicate:v13 orderingTerms:0 error:&v24 enumerationHandler:v22];
  v16 = v24;

  if (v10)
  {
    v17 = v15;
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogMedication();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationOntologyDailyAnalytics *)self makeUnrestrictedEventPayloadWithDataSource:v16 error:v18];
    }

    v19 = v16;
    if (v19)
    {
      if (error)
      {
        v20 = v19;
        *error = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

uint64_t __87__HDMedicationOntologyDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC5D8]];

  if (v5)
  {
    v6 = @"shardVersionCoreMeds";
    v7 = @"desiredStateCoreMeds";
    v8 = @"availableStateCoreMeds";
LABEL_9:
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "availableState")}];
    [*(a1 + 32) setObject:v15 forKeyedSubscript:v8];

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "desiredState")}];
    [*(a1 + 32) setObject:v16 forKeyedSubscript:v7];

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "currentVersion")}];
    [*(a1 + 32) setObject:v17 forKeyedSubscript:v6];

    goto LABEL_10;
  }

  v9 = [v3 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC600]];

  if (v10)
  {
    v6 = @"shardVersionMedsScaning";
    v7 = @"desiredStateMedsScanning";
    v8 = @"availableStateMedsScanning";
    goto LABEL_9;
  }

  v11 = [v3 identifier];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC5E0]];

  if (v12)
  {
    v6 = @"shardVersionInteractions";
    v7 = @"desiredStateInteractions";
    v8 = @"availableStateInteractions";
    goto LABEL_9;
  }

  v13 = [v3 identifier];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCC5F8]];

  if (v14)
  {
    v6 = @"shardVersionMedsEducation";
    v7 = @"desiredStateMedsEducation";
    v8 = @"availableStateMedsEducation";
    goto LABEL_9;
  }

LABEL_10:

  return 1;
}

- (id)shardRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
  shardRegistry = [ontologyUpdateCoordinator shardRegistry];

  return shardRegistry;
}

- (void)makeUnrestrictedEventPayloadWithDataSource:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_25181C000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error enumerating shard registry entries: %{public}@", &v3, 0x16u);
}

@end