@interface HDMedicationDoseEventSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
@end

@implementation HDMedicationDoseEventSyncEntity

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)_basePruningPredicateForDate:(id)date profile:(id)profile
{
  v14[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    v14[0] = medicationDoseEventType;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v12 = [currentCalendar hd_predicateForSamplesWithTypes:v11 endingBeforeDate:dateCopy minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  profileCopy = profile;
  v16 = [self _predicateForSyncSession:sessionCopy];
  v17 = [objc_msgSend(self "healthEntityClass")];

  syncStore = [sessionCopy syncStore];
  syncStoreType = [syncStore syncStoreType];

  if (syncStoreType == 1)
  {
    _HKInitializeLogging();
    v20 = HKLogMedication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HKStringFromBool();
      *buf = 138544642;
      selfCopy = self;
      v25 = 2048;
      v26 = start;
      v27 = 2048;
      v28 = end;
      v29 = 2114;
      v30 = v21;
      v31 = 2114;
      v32 = sessionCopy;
      v33 = 2114;
      v34 = v16;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: objects for (%ld, %ld) %{public}@ session %{public}@ predicate %{public}@", buf, 0x3Eu);
    }
  }

  return v17;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  profileCopy = profile;
  v12 = [self _predicateForSyncSession:sessionCopy];
  healthEntityClass = [self healthEntityClass];
  database = [profileCopy database];

  v15 = [healthEntityClass nextSyncAnchorWithStartAnchor:anchor predicate:v12 session:sessionCopy healthDatabase:database error:error];
  syncStore = [sessionCopy syncStore];
  syncStoreType = [syncStore syncStoreType];

  if (syncStoreType == 1)
  {
    _HKInitializeLogging();
    v18 = HKLogMedication();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138544386;
      selfCopy = self;
      v22 = 2048;
      v23 = v15;
      v24 = 2048;
      anchorCopy = anchor;
      v26 = 2114;
      v27 = sessionCopy;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: next %ld for start %ld session %{public}@ predicate %{public}@", &v20, 0x34u);
    }
  }

  return v15;
}

@end