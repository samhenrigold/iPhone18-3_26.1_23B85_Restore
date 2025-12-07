@interface HDMedicationScheduleSyncEntity
+ (BOOL)_insertCodableMedicationSchedules:(uint64_t)schedules version:(void *)version syncStore:(void *)store profile:(uint64_t)profile error:;
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_syncPredicate;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDMedicationScheduleSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  v40 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2050;
      *&buf[14] = var0;
      *&buf[22] = 2050;
      v39 = var1;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Generating sync objects for session with sync anchor: start=%{public}lld, end=%{public}lld", buf, 0x20u);
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v39 = -1;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v19 = [sessionCopy maxEncodedBytesPerCodableChangeForSyncEntityClass:self];
  database = [profileCopy database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v27[3] = &unk_2796CD250;
  v21 = profileCopy;
  v28 = v21;
  selfCopy = self;
  v22 = sessionCopy;
  v34 = var0;
  v35 = var1;
  v29 = v22;
  v31 = buf;
  v23 = v18;
  v30 = v23;
  v32 = v37;
  v36 = v19;
  LOBYTE(v19) = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:database error:error block:v27];

  if (v19)
  {
    v24 = [handlerCopy sendCodableChange:v23 version:0x200000000 resultAnchor:*(*&buf[8] + 24) sequence:0 done:1 error:error];
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(buf, 8);

  return v24;
}

BOOL __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationScheduleEntity entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:0 encodingOptions:0 authorizationFilter:0];
  v5 = [v4 orderedProperties];
  v6 = +[(HDMedicationScheduleSyncEntity *)*(a1];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v19[3] = &unk_2796CE5F0;
  v10 = *(a1 + 72);
  v20 = v4;
  v23 = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v21 = v11;
  v22 = v12;
  v24 = *(a1 + 96);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = v4;
  v16 = [(HDHealthEntity *)HDMedicationScheduleEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v8 syncAnchorRange:v14 limit:v13 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v19];

  return v16;
}

+ (id)_syncPredicate
{
  objc_opt_self();
  v1 = MEMORY[0x277D10B70];
  v2 = +[HDMedicationScheduleEntity availableSchedulePredicate];
  v3 = +[HDMedicationScheduleEntity compatibilityVersion0ScheduleTypesPredicate];
  v4 = [v1 compoundPredicateWithPredicate:v2 otherPredicate:v3];

  return v4;
}

BOOL __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID" error:{a3, a4, a5, a6), a4, a8}];
  [v10 setDuplicate:1];
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
    *(*(*(a1 + 48) + 8) + 24) += [v10 encodedByteCount];
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
    {
      *a7 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(a1, v11);
    }
  }

  return v10 != 0;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  sessionCopy = session;
  v12 = +[(HDMedicationScheduleSyncEntity *)self];
  database = [profileCopy database];

  v14 = [(HDHealthEntity *)HDMedicationScheduleEntity nextSyncAnchorWithStartAnchor:anchor predicate:v12 session:sessionCopy healthDatabase:database error:error];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableMedicationSchedule alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectsCopy, "count")}];
      v21 = 138544130;
      selfCopy = self;
      v23 = 2114;
      v24 = v20;
      v25 = 1026;
      var0 = version.var0;
      v27 = 1026;
      var1 = version.var1;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Received %{public}@ sync objects, for version: minimum=%{public}d, current=%{public}d", &v21, 0x22u);
    }
  }

  v18 = [(HDMedicationScheduleSyncEntity *)self _insertCodableMedicationSchedules:objectsCopy version:*&version syncStore:storeCopy profile:profileCopy error:error];

  return !v18;
}

+ (BOOL)_insertCodableMedicationSchedules:(uint64_t)schedules version:(void *)version syncStore:(void *)store profile:(uint64_t)profile error:
{
  schedulesCopy = schedules;
  v46 = *MEMORY[0x277D85DE8];
  v10 = a2;
  versionCopy = version;
  storeCopy = store;
  v13 = objc_opt_self();
  if (schedulesCopy < 3)
  {
    v20 = [MEMORY[0x277D11570] hd_medicationSchedulesFromCodables:v10 profile:storeCopy ignoreDuplicates:1];
    healthMedicationsProfileExtension = [storeCopy healthMedicationsProfileExtension];
    medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke;
    v32[3] = &unk_2796CE618;
    v33 = v20;
    v34 = medicationScheduleManager;
    v35 = versionCopy;
    v23 = medicationScheduleManager;
    v15 = v20;
    v24 = MEMORY[0x253084B70](v32);
    database = [storeCopy database];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke_2;
    v30[3] = &unk_2796CD2C8;
    v31 = v24;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke_3;
    v28[3] = &unk_2796CD2F0;
    v29 = v31;
    v26 = v31;
    v19 = [(HDHealthEntity *)HDMedicationScheduleEntity performWriteTransactionWithHealthDatabase:database error:profile block:v30 inaccessibilityHandler:v28];
  }

  else
  {
    v14 = v13;
    _HKInitializeLogging();
    v15 = HKLogMedication();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 count];
      v17 = HDSyncVersionRangeToString();
      v18 = HDSyncVersionRangeToString();
      *buf = 138544386;
      v37 = v14;
      v38 = 2048;
      v39 = v16;
      v40 = 2114;
      v41 = versionCopy;
      v42 = 2114;
      v43 = v17;
      v44 = 2114;
      v45 = v18;
      _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %lu sync objects from sync store %{public}@ with version %{public}@ because our current version is %{public}@", buf, 0x34u);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

uint64_t __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{v9, v16}];
        v12 = [*(a1 + 48) syncProvenance];
        v13 = [v9 entity];
        LODWORD(v10) = [v10 insertMedicationSchedules:v11 syncProvenance:v12 syncIdentity:objc_msgSend(v13 error:{"persistentID"), a2}];

        if (!v10)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

void __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_25181C000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Codeable is nil", &v3, 0xCu);
}

@end