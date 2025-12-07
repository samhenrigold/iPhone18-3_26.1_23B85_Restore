@interface HKLocationShifter
@end

@implementation HKLocationShifter

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v4 = CLLocationCoordinate2DMake(a2, a3);
  v5 = objc_alloc(MEMORY[0x1E6985C40]);
  [*(a1 + 32) altitude];
  v7 = v6;
  [*(a1 + 32) horizontalAccuracy];
  v9 = v8;
  [*(a1 + 32) verticalAccuracy];
  v11 = v10;
  [*(a1 + 32) course];
  v13 = v12;
  [*(a1 + 32) speed];
  v15 = v14;
  v16 = [*(a1 + 32) timestamp];
  v17 = [v5 initWithCoordinate:v16 altitude:v4.latitude horizontalAccuracy:v4.longitude verticalAccuracy:v7 course:v9 speed:v11 timestamp:{v13, v15}];

  [*(a1 + 40) replaceObjectAtIndex:*(a1 + 56) withObject:v17];
  dispatch_group_leave(*(a1 + 48));
}

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2_cold_1(a1, v3, v5);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x1E695DFB0] null];
  [v6 replaceObjectAtIndex:v7 withObject:v8];

  dispatch_group_leave(*(a1 + 40));
}

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_14(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v15}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v9 = [v2 count];
  v10 = [*(a1 + 40) count];
  if (v9 >= ceilf(vcvts_n_f32_u64(v10, 1uLL)))
  {
    _HKInitializeLogging(v10, v11);
    v12 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v2 count];
      *buf = 67109120;
      v20 = v14;
      _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[routes] Shifted %d valid locations", buf, 8u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __52___HKLocationShifter_shiftLocations_withCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4[0] = 67109378;
  v4[1] = v3;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[routes] Error shifting coordinate at index %d: %{public}@", v4, 0x12u);
}

@end