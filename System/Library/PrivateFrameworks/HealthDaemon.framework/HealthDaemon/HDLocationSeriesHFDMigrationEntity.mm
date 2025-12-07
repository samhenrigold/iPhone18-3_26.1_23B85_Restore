@interface HDLocationSeriesHFDMigrationEntity
+ (BOOL)migrateDataFromDataStore:(const void *)store to:(void *)to database:(id)database recoveryAnalytics:(id)analytics error:(id *)error;
+ (BOOL)migrateDataToSQLFromStore:(const void *)store database:(id)database error:(id *)error;
+ (__n128)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
+ (double)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
+ (uint64_t)enumerateAllKeys:(uint64_t)keys error:(void *)error enumerationHandler:;
+ (uint64_t)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
+ (void)migrateDataFromDataStore:to:database:recoveryAnalytics:error:;
@end

@implementation HDLocationSeriesHFDMigrationEntity

+ (uint64_t)enumerateAllKeys:(uint64_t)keys error:(void *)error enumerationHandler:
{
  v6 = a2;
  errorCopy = error;
  objc_opt_self();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HDLocationSeriesHFDMigrationEntity_enumerateAllKeys_error_enumerationHandler___block_invoke;
  v11[3] = &unk_2786159F8;
  v8 = errorCopy;
  v12 = v8;
  v9 = [v6 executeUncachedSQL:@"SELECT data_series.hfd_key error:samples.start_date bindingHandler:samples.end_date FROM data_series LEFT JOIN samples ON data_series.data_id = samples.data_id WHERE (data_series.hfd_key IS NOT NULL)" enumerationHandler:{keys, 0, v11}];

  return v9;
}

uint64_t __80__HDLocationSeriesHFDMigrationEntity_enumerateAllKeys_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C50](a2, 1);
  v7.n128_f64[0] = MEMORY[0x22AAC6C50](a2, 2);
  v5 = *(*(a1 + 32) + 16);
  v6.n128_u64[0] = v7.n128_u64[0];
  v7.n128_f64[0] = v4;

  return v5(v7, v6);
}

+ (BOOL)migrateDataFromDataStore:(const void *)store to:(void *)to database:(id)database recoveryAnalytics:(id)analytics error:(id *)error
{
  analyticsCopy = analytics;
  v35 = 0;
  v36 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3321888768;
  v33[2] = __99__HDLocationSeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error___block_invoke;
  v33[3] = &__block_descriptor_72_ea8_32c112_ZTSKZ99__HDLocationSeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error__E3__0_e18_B40__0q8d16d24__32l;
  v33[4] = &v34;
  v33[5] = &v35;
  v33[6] = store;
  v33[7] = to;
  v33[8] = &v36;
  v34 = 0;
  v13 = [(HDLocationSeriesHFDMigrationEntity *)self enumerateAllKeys:database error:error enumerationHandler:v33];
  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [analyticsCopy objectForKeyedSubscript:@"workoutRouteRecoveredCount"];
    longLongValue = [v15 longLongValue];
    v17 = [v14 numberWithLongLong:v36 + longLongValue];
    [analyticsCopy setObject:v17 forKeyedSubscript:@"workoutRouteRecoveredCount"];

    v18 = MEMORY[0x277CCABB0];
    v19 = [analyticsCopy objectForKeyedSubscript:@"workoutRouteDiscardedCount"];
    longLongValue2 = [v19 longLongValue];
    v21 = [v18 numberWithLongLong:v35 + longLongValue2];
    [analyticsCopy setObject:v21 forKeyedSubscript:@"workoutRouteDiscardedCount"];

    v22 = MEMORY[0x277CCABB0];
    v23 = v34;
    if (v34)
    {
      v19 = [analyticsCopy objectForKeyedSubscript:@"workoutRouteRecoveredCount"];
      longLongValue3 = [v19 longLongValue];
      v25 = longLongValue3 / v34;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = [v22 numberWithDouble:v25];
    [analyticsCopy setObject:v26 forKeyedSubscript:@"workoutRouteMigrationFraction"];

    if (v23)
    {
    }

    v27 = MEMORY[0x277CCABB0];
    v28 = v34;
    if (v34)
    {
      v19 = [analyticsCopy objectForKeyedSubscript:@"workoutRouteDiscardedCount"];
      [v19 doubleValue];
      v30 = v29 / v34;
    }

    else
    {
      v30 = 1.0;
    }

    v31 = [v27 numberWithDouble:v30];
    [analyticsCopy setObject:v31 forKeyedSubscript:@"workoutRouteDiscardFraction"];

    if (v28)
    {
    }
  }

  return v13;
}

uint64_t __90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[4];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke_2;
  v16[3] = &unk_278615A20;
  v18 = a1[6];
  v19 = 0;
  v7 = v5;
  v17 = v7;
  v8 = [v6 executeSQL:@"INSERT OR REPLACE INTO location_series_data (series_identifier error:timestamp bindingHandler:latitude enumerationHandler:{longitude, altitude, speed, course, horizontal_accuracy, vertical_accuracy, speed_accuracy, course_accuracy, signal_environment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", &v19, v16, 0}];
  v9 = v19;
  v10 = v9;
  if ((v8 & 1) != 0 || ![v9 hd_isConstraintViolation])
  {
    v12 = v10;
    v13 = v12;
    if (v12)
    {
      if (a3)
      {
        v14 = v12;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[HFDToSQLite] Could not encode HFD location %@ in SQLite (%@); suppressing", buf, 0x16u);
    }

    v8 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }

  return v8;
}

uint64_t __90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_msgSend_clientLocation(v4);
    v5 = v16;
  }

  else
  {
    v5 = 0.0;
  }

  sqlite3_bind_double(a2, 2, v5);
  [*(a1 + 32) coordinate];
  sqlite3_bind_double(a2, 3, v6);
  [*(a1 + 32) coordinate];
  sqlite3_bind_double(a2, 4, v7);
  [*(a1 + 32) altitude];
  sqlite3_bind_double(a2, 5, v8);
  [*(a1 + 32) speed];
  sqlite3_bind_double(a2, 6, v9);
  [*(a1 + 32) course];
  sqlite3_bind_double(a2, 7, v10);
  [*(a1 + 32) horizontalAccuracy];
  sqlite3_bind_double(a2, 8, v11);
  [*(a1 + 32) verticalAccuracy];
  sqlite3_bind_double(a2, 9, v12);
  [*(a1 + 32) speedAccuracy];
  sqlite3_bind_double(a2, 10, v13);
  [*(a1 + 32) courseAccuracy];
  sqlite3_bind_double(a2, 11, v14);
  return sqlite3_bind_int(a2, 12, [*(a1 + 32) signalEnvironmentType]);
}

void __90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke_314(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v3 = 0;
  v2 = a1[7];
  *buf = 0;
  v7 = v2;
  v5 = 0;
  operator new();
}

+ (BOOL)migrateDataToSQLFromStore:(const void *)store database:(id)database error:(id *)error
{
  databaseCopy = database;
  if ([databaseCopy executeUncachedSQL:@"DELETE FROM location_series_data" error:error])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__HDLocationSeriesHFDMigrationEntity_migrateDataToSQLFromStore_database_error___block_invoke;
    v12[3] = &unk_278628560;
    storeCopy = store;
    selfCopy = self;
    v9 = databaseCopy;
    v13 = v9;
    if (([(HDLocationSeriesHFDMigrationEntity *)self enumerateAllKeys:v9 error:error enumerationHandler:v12]& 1) != 0)
    {
      v10 = [v9 executeUncachedSQL:@"UPDATE data_series SET series_location = 2" error:error];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __79__HDLocationSeriesHFDMigrationEntity_migrateDataToSQLFromStore_database_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  objc_opt_self();
  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error___block_invoke;
  aBlock[3] = &unk_278628510;
  v6 = v5;
  v16 = buf;
  v17 = a2;
  v15 = v6;
  v13 = _Block_copy(aBlock);
  v7 = v13;
  LOBYTE(a2) = HKWithAutoreleasePool();

  _Block_object_dispose(buf, 8);
  v8 = 0;

  if ((a2 & 1) == 0)
  {
    v9 = v8;
    v10 = v9;
    if (v9)
    {
      if (a3)
      {
        v11 = v9;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }

      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  return 1;
}

+ (__n128)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  *a2 = &unk_283BEC1D0;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

+ (void)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = (self + 8);
  v4 = **(self + 8);
  v14 = 0;
  v15 = v4;
  v17 = *(a2 + 32);
  v18 = a2;
  health::bplustree::Tree<health::BlockAccessFile::ReadTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v17, &v14, 0, buf);
  v5 = *v3;
  v6 = **v3;
  v7 = *(self + 40);
  if (v26 == 1)
  {
    *&v17 = &unk_283BEBE00;
    *(&v17 + 1) = v7;
    v18 = v5;
    v19 = &v17;
    v8 = *(self + 48);
    v14 = &unk_283BEBE90;
    v15 = v8;
    v16 = &v14;
    v12 = 0;
    v13 = v6;
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v22 = 0;
      v23 = 2048;
      v24 = v6;
      _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "HFD rebuild: Migrating (%lld, %llu)", buf, 0x16u);
    }

    v20 = 0;
    v25 = 0;
    operator new();
  }

  *&v17 = &unk_283BEC1D0;
  *(&v17 + 1) = v7;
  v18 = v5;
  v19 = &v17;
  v10 = *(self + 48);
  v14 = &unk_283BEC260;
  v15 = v10;
  v16 = &v14;
  v12 = 3;
  v13 = v6;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v22 = 3;
    v23 = 2048;
    v24 = v6;
    _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "HFD rebuild: Migrating (%lld, %llu)", buf, 0x16u);
  }

  v20 = 0;
  v25 = 0;
  operator new();
}

+ (uint64_t)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

+ (double)migrateDataFromDataStore:to:database:recoveryAnalytics:error:
{
  v4 = *a2;
  v5 = a3[1];
  *a4 = *a3;
  a4[1] = v5;
  a4[2] = a3[2];
  return +[HDLocationSeriesHFDMigrationEntity migrateDataFromDataStore:to:database:recoveryAnalytics:error:]::$_0::operator() const(long long,double,double,NSError * {__autoreleasing}*)::{lambda(double,long long)#1}::operator()(*(self + 8), **(self + 16), v4);
}

@end