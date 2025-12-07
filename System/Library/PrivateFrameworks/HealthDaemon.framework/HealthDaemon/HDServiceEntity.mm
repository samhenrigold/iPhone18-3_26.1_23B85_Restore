@interface HDServiceEntity
+ (BOOL)deleteService:(id)service healthDatabase:(id)database error:(id *)error;
+ (BOOL)healthUpdatesEnabledForDevice:(id)device inDatabase:(id)database error:(id *)error;
+ (BOOL)setHealthUpdatesEnabled:(BOOL)enabled forDevice:(id)device inDatabase:(id)database error:(id *)error;
+ (id)allServicesWithProfile:(id)profile error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertOrUpdateService:(id)service healthDatabase:(id)database error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDServiceEntity

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"device_uuid";
  v4[1] = @"device_service";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)insertOrUpdateService:(id)service healthDatabase:(id)database error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  databaseCopy = database;
  v10 = databaseCopy;
  if (serviceCopy && databaseCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy__62;
    v39 = __Block_byref_object_dispose__62;
    v40 = 0;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke;
    v28 = &unk_27861C150;
    selfCopy = self;
    v11 = serviceCopy;
    v29 = v11;
    v31 = buf;
    v30 = v10;
    if ([self performWriteTransactionWithHealthDatabase:v30 error:error block:&v25])
    {
      v12 = *(*&buf[8] + 40);
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        identifier = [v11 identifier];
        uUIDString = [identifier UUIDString];
        *v33 = 138543618;
        v34 = v22;
        v35 = 2114;
        v36 = uUIDString;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: cannot insert service %{public}@ into database", v33, 0x16u);
      }

      v12 = 0;
    }

    v14 = v12;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v17 = v13;
      v18 = objc_opt_class();
      v19 = v18;
      identifier2 = [serviceCopy identifier];
      uUIDString2 = [identifier2 UUIDString];
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = uUIDString2;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: invalid parameters, service: %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 56)];
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 56) disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", *MEMORY[0x277D10A40], @"device_last_connect", v8, @"device_uuid", @"device_service"];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_2;
  v40[3] = &unk_278614860;
  v41 = *(a1 + 32);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_3;
  v39[3] = &unk_27861C128;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v39[5] = &v42;
  v39[6] = v11;
  v39[4] = v10;
  if (([v6 executeSQL:v9 error:a3 bindingHandler:v40 enumerationHandler:v39] & 1) == 0)
  {
    v21 = 0;
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = *(a1 + 40);
      v34 = [v31 profile];
      v32 = [v34 daemon];
      v22 = [v32 analyticsSubmissionCoordinator];
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
      v24 = [v31 profile];
      [v22 healthService_reportServiceTypeAdded:v23 profileType:{objc_msgSend(v24, "profileType")}];
    }

    v47[0] = @"device_uuid";
    v47[1] = @"device_name";
    v47[2] = @"device_service";
    v47[3] = @"device_last_connect";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    v26 = *(a1 + 56);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_4;
    v36[3] = &unk_278616B10;
    v37 = *(a1 + 32);
    v38 = Current;
    v27 = [v26 insertOrReplaceEntity:0 database:v6 properties:v25 error:a3 bindingHandler:v36];
    v28 = *(*(a1 + 48) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = *(a1 + 40);
    v33 = [v13 profile];
    v14 = [v33 daemon];
    v15 = [v14 analyticsSubmissionCoordinator];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
    v17 = v43[3];
    v18 = [v13 profile];
    [v15 healthService_reportServiceType:v16 duration:objc_msgSend(v18 profileType:{"profileType"), Current - v17}];
  }

  v19 = *(*(*(a1 + 48) + 8) + 40);
  v46 = @"device_last_connect";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_5;
  v35[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  *&v35[4] = Current;
  v21 = [v19 updateProperties:v20 database:v6 error:a3 bindingHandler:v35];

  if (v21)
  {
LABEL_11:
    v21 = 1;
  }

LABEL_12:

  _Block_object_dispose(&v42, 8);
  return v21;
}

uint64_t __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) identifier];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [*(a1 + 32) type];

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(*(a1 + 48)) initWithPersistentID:HDSQLiteColumnAsInt64()];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = MEMORY[0x22AAC6C50](a2, 1);
  return 0;
}

void __62__HDServiceEntity_insertOrUpdateService_healthDatabase_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x22AAC6C00](a2, @"device_uuid", v4);

  v5 = [*(a1 + 32) name];
  MEMORY[0x22AAC6BD0](a2, @"device_name", v5);

  MEMORY[0x22AAC6B90](a2, @"device_service", [*(a1 + 32) type]);

  JUMPOUT(0x22AAC6B60);
}

+ (BOOL)deleteService:(id)service healthDatabase:(id)database error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  databaseCopy = database;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __54__HDServiceEntity_deleteService_healthDatabase_error___block_invoke;
  v23 = &unk_2786154B8;
  selfCopy = self;
  v11 = serviceCopy;
  v24 = v11;
  v12 = databaseCopy;
  v25 = v12;
  v27 = a2;
  v13 = [self performWriteTransactionWithHealthDatabase:v12 error:error block:&v20];
  if ((v13 & 1) == 0)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC318];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      identifier = [v11 identifier];
      uUIDString = [identifier UUIDString];
      v18 = uUIDString;
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      *buf = 138543618;
      v29 = uUIDString;
      v30 = 2114;
      v31 = v19;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Cannot delete service %{public}@ from database. Error: %{public}@", buf, 0x16u);
    }
  }

  return v13;
}

uint64_t __54__HDServiceEntity_deleteService_healthDatabase_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  objc_opt_self();
  v8 = MEMORY[0x277D10B18];
  v9 = [v7 identifier];
  v10 = _HDSQLiteValueForUUID();
  v11 = [v8 predicateWithProperty:@"device_uuid" equalToValue:v10];

  v12 = MEMORY[0x277D10B18];
  v13 = MEMORY[0x277CCABB0];
  v14 = [v7 type];

  v15 = [v13 numberWithInteger:v14];
  v16 = [v12 predicateWithProperty:@"device_service" equalToValue:v15];

  v17 = MEMORY[0x277D10B20];
  v29[0] = v11;
  v29[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v19 = [v17 predicateMatchingAllPredicates:v18];

  v20 = [v6 anyInDatabase:v5 predicate:v19 error:a3];

  if (!v20)
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:@"Could not find the health service in the database."];
      *a3 = v27 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v27 = 0;
    goto LABEL_9;
  }

  if (![v20 deleteFromDatabase:v5 error:a3])
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = *(a1 + 40);
    v22 = [v21 profile];
    v23 = [v22 daemon];
    v24 = [v23 analyticsSubmissionCoordinator];
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "type")}];
    v26 = [v21 profile];

    [v24 healthService_reportServiceTypeRemoved:v25 profileType:{objc_msgSend(v26, "profileType")}];
  }

  v27 = 1;
LABEL_9:

  return v27;
}

+ (id)allServicesWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__62;
  v29 = __Block_byref_object_dispose__62;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__62;
  v23 = __Block_byref_object_dispose__62;
  v24 = 0;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__HDServiceEntity_allServicesWithProfile_error___block_invoke;
  v14[3] = &unk_27861C178;
  v16 = &v25;
  selfCopy = self;
  v8 = profileCopy;
  v15 = v8;
  v17 = &v19;
  v9 = [self performReadTransactionWithHealthDatabase:database error:error block:v14];

  if (v9)
  {
    if ([v20[5] count])
    {
      database2 = [v8 database];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__HDServiceEntity_allServicesWithProfile_error___block_invoke_2;
      v13[3] = &unk_27861C1A0;
      v13[4] = &v19;
      v13[5] = self;
      [self performWriteTransactionWithHealthDatabase:database2 error:error block:v13];
    }

    v11 = v26[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

uint64_t __48__HDServiceEntity_allServicesWithProfile_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v8 = a2;
  v9 = v3;
  v10 = objc_opt_self();
  v11 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v11 setEntityClass:v10];
  [v11 setLimitCount:*MEMORY[0x277D10C08]];
  v12 = objc_alloc(MEMORY[0x277D10B78]);
  v13 = [v8 databaseForEntityClass:v10];
  v14 = [v12 initWithDatabase:v13 descriptor:v11];

  v26 = v9;
  v15 = [v10 entityEncoderForProfile:v9 transaction:v8 purpose:1 encodingOptions:0 authorizationFilter:0];
  v16 = [MEMORY[0x277CBEB18] array];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__62;
  v35 = __Block_byref_object_dispose__62;
  v36 = 0;
  v17 = [v15 orderedProperties];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__HDServiceEntity__servicesWithDatabaseTransaction_profile_removals___block_invoke;
  v27[3] = &unk_27861C1E8;
  v18 = v15;
  v28 = v18;
  v30 = &v31;
  v19 = v16;
  v29 = v19;
  [v14 enumeratePersistentIDsAndProperties:v17 error:0 enumerationHandler:v27];

  v20 = v32[5];
  if (v20)
  {
    v6 = v20;
  }

  v21 = v29;
  v22 = v19;

  _Block_object_dispose(&v31, 8);
  objc_storeStrong(v5, v6);
  v23 = *(a1[5] + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  return 1;
}

uint64_t __48__HDServiceEntity_allServicesWithProfile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [a2 databaseForEntityClass:*(a1 + 40)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [*(a1 + 40) entityWithPersistentID:{v10, v16}];
        v17 = 0;
        v12 = [v11 deleteFromDatabase:v3 error:&v17];
        v13 = v17;
        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = *MEMORY[0x277CCC318];
          if (os_log_type_enabled(*MEMORY[0x277CCC318], OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v23 = v10;
            v24 = 2114;
            v25 = v13;
            _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_INFO, "Failed to delete expired service with id %@: %{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  return 1;
}

+ (BOOL)healthUpdatesEnabledForDevice:(id)device inDatabase:(id)database error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  databaseCopy = database;
  if (databaseCopy)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v9 = MEMORY[0x277D10B18];
    v10 = _HDSQLiteValueForUUID();
    v11 = [v9 predicateWithProperty:@"device_uuid" equalToValue:v10];

    v12 = objc_opt_class();
    v25[0] = @"device_enabled";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__HDServiceEntity_healthUpdatesEnabledForDevice_inDatabase_error___block_invoke;
    v16[3] = &unk_278619EE8;
    v16[4] = &v21;
    v16[5] = &v17;
    LOBYTE(v12) = [v12 enumerateProperties:v13 withPredicate:v11 healthDatabase:databaseCopy error:error enumerationHandler:v16];

    if (v12)
    {
      if ((v18[3] & 1) == 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:313 description:@"device not found"];
      }

      v14 = *(v22 + 24);
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t __66__HDServiceEntity_healthUpdatesEnabledForDevice_inDatabase_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = MEMORY[0x22AAC6C10](a4, 0, a3);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return 0;
}

+ (BOOL)setHealthUpdatesEnabled:(BOOL)enabled forDevice:(id)device inDatabase:(id)database error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D10B18];
  databaseCopy = database;
  v11 = _HDSQLiteValueForUUID();
  v12 = [v9 predicateWithProperty:@"device_uuid" equalToValue:v11];

  v17[0] = @"device_enabled";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HDServiceEntity_setHealthUpdatesEnabled_forDevice_inDatabase_error___block_invoke;
  v15[3] = &__block_descriptor_33_e34_v16__0__HDSQLiteStatementBinder__8l;
  enabledCopy = enabled;
  LOBYTE(error) = [self updateProperties:v13 predicate:v12 healthDatabase:databaseCopy error:error bindingHandler:v15];

  return error;
}

uint64_t __69__HDServiceEntity__servicesWithDatabaseTransaction_profile_removals___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v17 = 0;
  v7 = [v6 objectForPersistentID:a2 row:a4 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else if (v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to instantiate non-deprecated service: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (!v11)
    {
      v12 = [MEMORY[0x277CBEB18] array];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(*(a1 + 48) + 8) + 40);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [v11 addObject:v15];
  }

  return 1;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDServiceEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end