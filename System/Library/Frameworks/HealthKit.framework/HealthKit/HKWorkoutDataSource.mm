@interface HKWorkoutDataSource
+ (BOOL)_isBLECollectedDataType:(id)type indoorWorkout:(BOOL)workout;
+ (BOOL)_shouldCollectDistanceForActivityType:(unint64_t)type isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch;
+ (BOOL)_shouldCollectRunningMetricTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode connectedToFitnessMachine:(BOOL)machine isIndoor:(BOOL)indoor;
+ (BOOL)_shouldCollectSpeedForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine isAppleWatch:(BOOL)watch;
+ (id)_calorieAndEffortTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch;
+ (id)_connectedMachineTypesForActivityType:(unint64_t)type connectedToFitnessMachine:(BOOL)machine;
+ (id)_cyclingTypesForActivityType:(unint64_t)type isAppleWatch:(BOOL)watch;
+ (id)_distanceTypeForActivityType:(unint64_t)type isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch;
+ (id)_divingTypesForActivityType:(unint64_t)type isAppleWatch:(BOOL)watch;
+ (id)_heartRateTypeForActivityType:(unint64_t)type;
+ (id)_runningMetricTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode connectedToFitnessMachine:(BOOL)machine isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch;
+ (id)_sourcePredicateForSampleType:(id)type isIndoor:(BOOL)indoor;
+ (id)_speedTypeForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine isAppleWatch:(BOOL)watch;
+ (id)_stepCountTypeForActivityType:(unint64_t)type;
+ (id)_swimmmingTypesForActivityType:(unint64_t)type isAppleWatch:(BOOL)watch;
+ (id)defaultConfigurationWithWorkoutConfiguration:(id)configuration activityMoveMode:(int64_t)mode;
+ (id)observedTypesForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine activityMode:(int64_t)mode;
@end

@implementation HKWorkoutDataSource

+ (id)observedTypesForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine activityMode:(int64_t)mode
{
  machineCopy = machine;
  indoorCopy = indoor;
  v11 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v11 isAppleWatch];

  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = [self _heartRateTypeForActivityType:type];
  if (v14)
  {
    [v13 addObject:v14];
  }

  modeCopy = mode;
  v15 = [self _calorieAndEffortTypesForActivityType:type moveMode:mode isIndoor:indoorCopy isAppleWatch:isAppleWatch];
  if (v15)
  {
    [v13 addObjectsFromArray:v15];
  }

  v27 = v14;
  v16 = [self _distanceTypeForActivityType:type isIndoor:indoorCopy isAppleWatch:isAppleWatch];
  if (v16)
  {
    [v13 addObject:v16];
  }

  v26 = v15;
  v17 = [self _speedTypeForActivityType:type isIndoor:indoorCopy connectedToFitnessMachine:machineCopy isAppleWatch:isAppleWatch];
  if (v17)
  {
    [v13 addObject:v17];
  }

  v18 = [self _swimmmingTypesForActivityType:type isAppleWatch:isAppleWatch];
  if (v18)
  {
    [v13 addObjectsFromArray:v18];
  }

  v19 = [self _connectedMachineTypesForActivityType:type connectedToFitnessMachine:machineCopy];
  if (v19)
  {
    [v13 addObjectsFromArray:v19];
  }

  v20 = [self _runningMetricTypesForActivityType:type moveMode:modeCopy connectedToFitnessMachine:machineCopy isIndoor:indoorCopy isAppleWatch:isAppleWatch];
  if (v20)
  {
    [v13 addObjectsFromArray:v20];
  }

  v21 = [self _divingTypesForActivityType:type isAppleWatch:isAppleWatch];
  if (v21)
  {
    [v13 addObjectsFromArray:v21];
  }

  v22 = [self _cyclingTypesForActivityType:type isAppleWatch:isAppleWatch];
  if (v22)
  {
    [v13 addObjectsFromArray:v22];
  }

  v23 = [self _stepCountTypeForActivityType:type];
  if (v23)
  {
    [v13 addObject:v23];
  }

  return v13;
}

+ (id)defaultConfigurationWithWorkoutConfiguration:(id)configuration activityMoveMode:(int64_t)mode
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (configurationCopy)
  {
    locationType = [configurationCopy locationType];
    v26 = v7;
    v9 = +[HKWorkoutDataSource observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:](HKWorkoutDataSource, "observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:", [v7 activityType], locationType == 2, 0, mode);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [self _sourcePredicateForSampleType:v15 isIndoor:locationType == 2];
          v17 = [MEMORY[0x1E695DFD8] setWithObject:v15];
          v18 = [v16 hk_filterRepresentationForDataTypes:v17];
          [v10 setObject:v18 forKeyedSubscript:v15];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v19 = [HKWorkoutDataSourceConfiguration alloc];
    v20 = [MEMORY[0x1E695DFD8] set];
    v7 = v26;
    v21 = [(HKWorkoutDataSourceConfiguration *)v19 initWithWorkoutConfiguration:v26 sampleTypesToCollect:obj filters:v10 eventTypesToCollect:v20 collectsDefaultTypes:1];
  }

  else
  {
    v22 = [HKWorkoutDataSourceConfiguration alloc];
    v23 = [MEMORY[0x1E695DFD8] set];
    v24 = [MEMORY[0x1E695DFD8] set];
    v21 = [(HKWorkoutDataSourceConfiguration *)v22 initWithWorkoutConfiguration:0 sampleTypesToCollect:v23 filters:MEMORY[0x1E695E0F8] eventTypesToCollect:v24 collectsDefaultTypes:1];
  }

  return v21;
}

+ (BOOL)_isBLECollectedDataType:(id)type indoorWorkout:(BOOL)workout
{
  workoutCopy = workout;
  typeCopy = type;
  if (_isBLECollectedDataType_indoorWorkout__onceToken != -1)
  {
    +[HKWorkoutDataSource _isBLECollectedDataType:indoorWorkout:];
  }

  v6 = _isBLECollectedDataType_indoorWorkout___bleCollectedTypes;
  identifier = [typeCopy identifier];
  v8 = [v6 containsObject:identifier];

  if ((v8 & 1) == 0 && workoutCopy)
  {
    identifier2 = [typeCopy identifier];
    v8 = identifier2 == @"HKQuantityTypeIdentifierDistanceCycling";
  }

  return v8;
}

void __61__HKWorkoutDataSource__isBLECollectedDataType_indoorWorkout___block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = +[_HKBehavior sharedBehavior];
  v1 = [v0 features];
  if (([v1 HRCoordinator] & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isRealityDevice];

  if (v3)
  {
LABEL_5:
    v9 = @"HKQuantityTypeIdentifierCyclingPower";
    v10 = @"HKQuantityTypeIdentifierCyclingCadence";
    v11 = @"HKQuantityTypeIdentifierCyclingSpeed";
    v12 = @"HKQuantityTypeIdentifierHeartRate";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v9;
    v6 = 4;
    goto LABEL_6;
  }

  v13 = @"HKQuantityTypeIdentifierCyclingPower";
  v14 = @"HKQuantityTypeIdentifierCyclingCadence";
  v15 = @"HKQuantityTypeIdentifierCyclingSpeed";
  v4 = MEMORY[0x1E695DEC8];
  v5 = &v13;
  v6 = 3;
LABEL_6:
  v7 = [v4 arrayWithObjects:v5 count:{v6, v9, v10, v11, v12, v13, v14, v15}];
  v8 = _isBLECollectedDataType_indoorWorkout___bleCollectedTypes;
  _isBLECollectedDataType_indoorWorkout___bleCollectedTypes = v7;
}

+ (id)_sourcePredicateForSampleType:(id)type isIndoor:(BOOL)indoor
{
  indoorCopy = indoor;
  typeCopy = type;
  if (_sourcePredicateForSampleType_isIndoor__onceToken != -1)
  {
    +[HKWorkoutDataSource _sourcePredicateForSampleType:isIndoor:];
  }

  if ([typeCopy code] == 5)
  {
    v7 = &_sourcePredicateForSampleType_isIndoor__allHRSourcesPredicate;
  }

  else if ([self _isBLECollectedDataType:typeCopy indoorWorkout:indoorCopy])
  {
    v8 = +[_HKBehavior isCollectBLETypesFromLocalSourceEnabled];
    v7 = &_sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
    if (v8)
    {
      v7 = &_sourcePredicateForSampleType_isIndoor__bleOrLocalSourcePredicate;
    }
  }

  else
  {
    v7 = &_sourcePredicateForSampleType_isIndoor__defaultPredicate;
  }

  v9 = *v7;
  v10 = *v7;

  return v9;
}

void __62__HKWorkoutDataSource__sourcePredicateForSampleType_isIndoor___block_invoke()
{
  v20[2] = *MEMORY[0x1E69E9840];
  v0 = +[HKSource _localDeviceSource];
  v1 = [HKQuery predicateForObjectsFromSource:v0];
  v2 = _sourcePredicateForSampleType_isIndoor__defaultPredicate;
  _sourcePredicateForSampleType_isIndoor__defaultPredicate = v1;

  v3 = +[HKSource _blePeripheralSource];
  v4 = [HKQuery predicateForObjectsFromSource:v3];
  v5 = _sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
  _sourcePredicateForSampleType_isIndoor__bleSourcePredicate = v4;

  v6 = +[HKSource _hrCoordinatorSource];
  v7 = [HKQuery predicateForObjectsFromSource:v6];
  v8 = _sourcePredicateForSampleType_isIndoor__hrCoordinatorSourcePredicate;
  _sourcePredicateForSampleType_isIndoor__hrCoordinatorSourcePredicate = v7;

  v9 = +[HKQuery _predicateForObjectsFromLocalSyncIdentity];
  v10 = _sourcePredicateForSampleType_isIndoor__localSyncIdentityPredicate;
  _sourcePredicateForSampleType_isIndoor__localSyncIdentityPredicate = v9;

  v11 = MEMORY[0x1E696AB28];
  v20[0] = _sourcePredicateForSampleType_isIndoor__defaultPredicate;
  v20[1] = _sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v13 = [v11 orPredicateWithSubpredicates:v12];
  v14 = _sourcePredicateForSampleType_isIndoor__bleOrLocalSourcePredicate;
  _sourcePredicateForSampleType_isIndoor__bleOrLocalSourcePredicate = v13;

  v15 = MEMORY[0x1E696AB28];
  v19[0] = _sourcePredicateForSampleType_isIndoor__defaultPredicate;
  v19[1] = _sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
  v19[2] = _sourcePredicateForSampleType_isIndoor__hrCoordinatorSourcePredicate;
  v19[3] = _sourcePredicateForSampleType_isIndoor__localSyncIdentityPredicate;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v17 = [v15 orPredicateWithSubpredicates:v16];
  v18 = _sourcePredicateForSampleType_isIndoor__allHRSourcesPredicate;
  _sourcePredicateForSampleType_isIndoor__allHRSourcesPredicate = v17;
}

+ (id)_heartRateTypeForActivityType:(unint64_t)type
{
  if ([self _shouldCollectHeartRateForActivityType:type])
  {
    v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_calorieAndEffortTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch
{
  indoorCopy = indoor;
  if ([self _shouldCollectCaloriesForMoveMode:mode isAppleWatch:watch])
  {
    v8 = [HKWorkoutUtilities calorieAndEffortTypesForActivityType:type isIndoor:indoorCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_distanceTypeForActivityType:(unint64_t)type isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch
{
  if ([self _shouldCollectDistanceForActivityType:type isIndoor:indoor isAppleWatch:watch])
  {
    v6 = [HKWorkoutUtilities distanceTypeForActivityType:type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_speedTypeForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine isAppleWatch:(BOOL)watch
{
  if ([self _shouldCollectSpeedForActivityType:type isIndoor:indoor connectedToFitnessMachine:machine isAppleWatch:watch])
  {
    v7 = [HKWorkoutUtilities speedTypeForActivityType:type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_swimmmingTypesForActivityType:(unint64_t)type isAppleWatch:(BOOL)watch
{
  if ([self _shouldCollectSwimmingTypesForActivityType:type isAppleWatch:watch])
  {
    v4 = +[HKWorkoutUtilities swimmingTypes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_connectedMachineTypesForActivityType:(unint64_t)type connectedToFitnessMachine:(BOOL)machine
{
  if ([self _shouldCollectConnectedMachineTypesForActivityType:type connectedToFitnessMachine:machine])
  {
    v4 = +[HKWorkoutUtilities gymKitTypes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_runningMetricTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode connectedToFitnessMachine:(BOOL)machine isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch
{
  if ([self _shouldCollectRunningMetricTypesForActivityType:type moveMode:mode connectedToFitnessMachine:machine isIndoor:{indoor, watch}])
  {
    v7 = +[HKWorkoutUtilities runningTypes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_divingTypesForActivityType:(unint64_t)type isAppleWatch:(BOOL)watch
{
  if ([self _shouldCollectDivingTypesForActivityType:{type, watch}])
  {
    v4 = +[HKWorkoutUtilities divingTypes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_cyclingTypesForActivityType:(unint64_t)type isAppleWatch:(BOOL)watch
{
  if ([self _shouldCollectCyclingTypesForActivityType:type isAppleWatch:watch])
  {
    v4 = +[HKWorkoutUtilities cyclingTypes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stepCountTypeForActivityType:(unint64_t)type
{
  if ([self _shouldCollectStepCountTypesForActivityType:type])
  {
    v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierStepCount"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_shouldCollectDistanceForActivityType:(unint64_t)type isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch
{
  v5 = type - 16;
  if (type - 16 > 0x37)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0xC0100000888200) == 0)
  {
    if (((1 << v5) & 0x30000010000001) != 0)
    {
      return 0;
    }

LABEL_14:
    if (watch)
    {
      return 1;
    }

    goto LABEL_5;
  }

  result = !indoor;
  if (!indoor && !watch)
  {
LABEL_5:
    v7 = type - 13;
    if (type - 13 > 0x3A)
    {
      return 0;
    }

    if (((1 << v7) & 0x600000004440001) != 0)
    {
      return !indoor;
    }

    return ((1 << v7) & 0x808001000800) != 0;
  }

  return result;
}

+ (BOOL)_shouldCollectSpeedForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine isAppleWatch:(BOOL)watch
{
  indoorCopy = indoor;
  if (type <= 34)
  {
    if (type == 13)
    {
      if (indoor)
      {
        goto LABEL_14;
      }

      return 0;
    }

    if (type != 31)
    {
      goto LABEL_14;
    }

LABEL_8:
    if (!indoor)
    {
      goto LABEL_14;
    }

    return 0;
  }

  switch(type)
  {
    case '<':
      goto LABEL_8;
    case '%':
      result = 0;
      if (indoor || machine)
      {
        return result;
      }

      break;
    case '#':
      goto LABEL_8;
  }

LABEL_14:
  v9 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v9 isAppleWatch];

  return (isAppleWatch & 1) != 0 || type <= 0x3C && ((1 << type) & 0x100000A880000000) != 0 && !indoorCopy;
}

+ (BOOL)_shouldCollectRunningMetricTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode connectedToFitnessMachine:(BOOL)machine isIndoor:(BOOL)indoor
{
  result = 0;
  if (mode != 2 && !indoor && !machine)
  {
    return type == 37 && (HKCoreMotionSupportsRunningMetrics() & 1) != 0;
  }

  return result;
}

@end