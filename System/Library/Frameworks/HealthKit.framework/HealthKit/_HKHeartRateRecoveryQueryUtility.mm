@interface _HKHeartRateRecoveryQueryUtility
+ (id)perMinuteWorkoutRecoveryHeartRateFromReadings:(id)readings workoutEndDate:(id)date;
+ (id)predicateForWorkoutRecoveryTimeWithWorkout:(id)workout;
+ (id)recoveryDateIntervalWithWorkout:(id)workout;
+ (id)workoutRecoveryDateIntervalForWorkout:(id)workout overlappingWorkouts:(id)workouts;
+ (id)workoutRecoveryHeartRatesForWorkout:(id)workout recoveryDateInterval:(id)interval readings:(id)readings;
- (_HKHeartRateRecoveryQueryUtility)initWithHealthStore:(id)store workout:(id)workout handler:(id)handler;
- (void)_heartRatesPostWorkout:(id)workout workoutRecoveryTimePredicate:(id)predicate completionHandler:(id)handler;
- (void)_setupQueries;
- (void)dealloc;
- (void)stop;
@end

@implementation _HKHeartRateRecoveryQueryUtility

- (_HKHeartRateRecoveryQueryUtility)initWithHealthStore:(id)store workout:(id)workout handler:(id)handler
{
  storeCopy = store;
  workoutCopy = workout;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = _HKHeartRateRecoveryQueryUtility;
  v12 = [(_HKHeartRateRecoveryQueryUtility *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, store);
    objc_storeStrong(&v13->_workout, workout);
    v14 = [handlerCopy copy];
    handler = v13->_handler;
    v13->_handler = v14;

    [(_HKHeartRateRecoveryQueryUtility *)v13 _setupQueries];
  }

  return v13;
}

- (void)dealloc
{
  [(_HKSampleQueryUtility *)self->_workoutQueryUtility stop];
  [(HKHealthStore *)self->_healthStore stopQuery:self->_heartRateQuery];
  v3.receiver = self;
  v3.super_class = _HKHeartRateRecoveryQueryUtility;
  [(_HKHeartRateRecoveryQueryUtility *)&v3 dealloc];
}

- (void)stop
{
  [(_HKSampleQueryUtility *)self->_workoutQueryUtility stop];
  if (self->_heartRateQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    heartRateQuery = self->_heartRateQuery;
    self->_heartRateQuery = 0;
  }
}

- (void)_setupQueries
{
  v3 = [objc_opt_class() predicateForWorkoutRecoveryTimeWithWorkout:self->_workout];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v4 = [_HKSampleQueryUtility alloc];
  healthStore = self->_healthStore;
  v6 = +[HKObjectType workoutType];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___HKHeartRateRecoveryQueryUtility__setupQueries__block_invoke;
  v10[3] = &unk_1E737DDA8;
  v10[4] = self;
  v12 = v13;
  v7 = v3;
  v11 = v7;
  v8 = [(_HKSampleQueryUtility *)v4 initWithHealthStore:healthStore sampleType:v6 predicate:v7 resultsHandler:v10];
  workoutQueryUtility = self->_workoutQueryUtility;
  self->_workoutQueryUtility = v8;

  [(_HKSampleQueryUtility *)self->_workoutQueryUtility setSortStartDateAscending:1];
  _Block_object_dispose(v13, 8);
}

- (void)_heartRatesPostWorkout:(id)workout workoutRecoveryTimePredicate:(id)predicate completionHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  workoutCopy = workout;
  v11 = [objc_opt_class() recoveryDateIntervalWithWorkout:workoutCopy];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [HKQuantitySeriesSampleQuery alloc];
  v14 = [(HKObjectType *)HKSampleType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106___HKHeartRateRecoveryQueryUtility__heartRatesPostWorkout_workoutRecoveryTimePredicate_completionHandler___block_invoke;
  v20[3] = &unk_1E737DDD0;
  v21 = v11;
  v22 = v12;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = v12;
  v17 = v11;
  v18 = [(HKQuantitySeriesSampleQuery *)v13 initWithQuantityType:v14 predicate:predicateCopy quantityHandler:v20];

  heartRateQuery = self->_heartRateQuery;
  self->_heartRateQuery = v18;

  [(HKHealthStore *)self->_healthStore executeQuery:self->_heartRateQuery];
}

+ (id)workoutRecoveryDateIntervalForWorkout:(id)workout overlappingWorkouts:(id)workouts
{
  v42 = *MEMORY[0x1E69E9840];
  workoutCopy = workout;
  workoutsCopy = workouts;
  endDate = [workoutCopy endDate];
  v9 = [self _recoveryEndDateWithStartDate:endDate];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __94___HKHeartRateRecoveryQueryUtility_workoutRecoveryDateIntervalForWorkout_overlappingWorkouts___block_invoke;
  v37[3] = &unk_1E737DDF8;
  v10 = workoutCopy;
  v38 = v10;
  v11 = v9;
  v39 = v11;
  v31 = endDate;
  v32 = workoutsCopy;
  v40 = v31;
  v12 = [workoutsCopy hk_filter:v37];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        startDate = [v19 startDate];
        v21 = [startDate hk_isBeforeOrEqualToDate:distantFuture];

        if (v21)
        {
          startDate2 = [v19 startDate];

          distantFuture = startDate2;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v16);
  }

  if ([distantFuture hk_isBeforeOrEqualToDate:v11])
  {
    v23 = distantFuture;
  }

  else
  {
    v23 = v11;
  }

  v24 = v23;
  endDate2 = [v10 endDate];
  v26 = [endDate2 compare:v24];

  if (v26 == 1)
  {
    v27 = 0;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x1E696AB80]);
    endDate3 = [v10 endDate];
    v27 = [v28 initWithStartDate:endDate3 endDate:v24];
  }

  return v27;
}

+ (id)workoutRecoveryHeartRatesForWorkout:(id)workout recoveryDateInterval:(id)interval readings:(id)readings
{
  intervalCopy = interval;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102___HKHeartRateRecoveryQueryUtility_workoutRecoveryHeartRatesForWorkout_recoveryDateInterval_readings___block_invoke;
  v10[3] = &unk_1E737DE20;
  v11 = intervalCopy;
  v7 = intervalCopy;
  v8 = [readings hk_filter:v10];

  return v8;
}

+ (id)perMinuteWorkoutRecoveryHeartRateFromReadings:(id)readings workoutEndDate:(id)date
{
  v37 = *MEMORY[0x1E69E9840];
  readingsCopy = readings;
  dateCopy = date;
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc(MEMORY[0x1E696AB80]);
  v9 = [self _recoveryEndDateWithStartDate:dateCopy];
  v26 = [v8 initWithStartDate:dateCopy endDate:v9];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = readingsCopy;
  v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v27)
  {
    v25 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v10;
        v30 = *(*(&v32 + 1) + 8 * v10);
        date = [v30 date];
        if ([v26 containsDate:date])
        {
          v12 = 0;
          for (i = 0; i != 3; ++i)
          {
            v14 = [dateCopy dateByAddingTimeInterval:v12];
            [date timeIntervalSinceDate:v14];
            v16 = fabs(v15);
            v17 = [MEMORY[0x1E696AD98] numberWithInt:i];
            v18 = [v31 objectForKeyedSubscript:v17];

            if (v16 < 20.0)
            {
              if (!v18 || ([v18 doubleValue], v16 < v19))
              {
                v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
                v21 = [MEMORY[0x1E696AD98] numberWithInt:i];
                [v31 setObject:v20 forKeyedSubscript:v21];

                v22 = [MEMORY[0x1E696AD98] numberWithInt:i];
                [v29 setObject:v30 forKeyedSubscript:v22];
              }
            }

            v12 += 60;
          }
        }

        v10 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v27);
  }

  return v29;
}

+ (id)predicateForWorkoutRecoveryTimeWithWorkout:(id)workout
{
  v3 = [self recoveryDateIntervalWithWorkout:workout];
  startDate = [v3 startDate];
  endDate = [v3 endDate];
  v6 = [HKQuery predicateForSamplesWithStartDate:startDate endDate:endDate inclusiveEndDates:1 options:0];

  return v6;
}

+ (id)recoveryDateIntervalWithWorkout:(id)workout
{
  v4 = MEMORY[0x1E696AB80];
  workoutCopy = workout;
  v6 = [v4 alloc];
  endDate = [workoutCopy endDate];
  endDate2 = [workoutCopy endDate];

  v9 = [self _recoveryEndDateWithStartDate:endDate2];
  v10 = [v6 initWithStartDate:endDate endDate:v9];

  return v10;
}

@end