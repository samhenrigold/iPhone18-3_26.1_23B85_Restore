@interface HKWorkoutRouteStore
@end

@implementation HKWorkoutRouteStore

uint64_t __46___HKWorkoutRouteStore__setLocations_forUUID___block_invoke(void *a1)
{
  [*(a1[4] + 8) setObject:a1[5] forKey:a1[6]];
  v2 = a1[4];

  return [v2 _queue_checkAndReturnIfLocationsLoaded];
}

uint64_t __41___HKWorkoutRouteStore_setWorkoutRoutes___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_addWorkoutRoutes:v3];
}

void __59___HKWorkoutRouteStore__fetchAllLocationsFromSeriesSample___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v13 = v11;
  if (v11)
  {
    _HKInitializeLogging(v11, v12);
    v14 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __59___HKWorkoutRouteStore__fetchAllLocationsFromSeriesSample___block_invoke_cold_1(a1, v13, v14);
    }
  }

  v15 = [*(a1 + 40) addObjectsFromArray:v10];
  if (a4)
  {
    _HKInitializeLogging(v15, v16);
    v17 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = v17;
      LODWORD(v18) = [v18 count];
      v20 = [*(a1 + 32) UUID];
      v24[0] = 67109378;
      v24[1] = v18;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_19197B000, v19, OS_LOG_TYPE_DEFAULT, "[routes] Fetched %d locations for series: %@. ", v24, 0x12u);
    }

    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v23 = [*(a1 + 32) UUID];
    [v21 _setLocations:v22 forUUID:v23];
  }
}

uint64_t __31___HKWorkoutRouteStore_samples__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __40___HKWorkoutRouteStore__queue_locations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __59___HKWorkoutRouteStore__fetchAllLocationsFromSeriesSample___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[routes] Error occurred while querying locations for series %@: %@", &v4, 0x16u);
}

@end