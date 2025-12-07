@interface HDFitnessFriendWorkoutEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)enumerateWorkoutsWithPredicate:(id)predicate anchor:(id *)anchor profile:(id)profile error:(id *)error handler:(id)handler;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDFitnessFriendWorkoutEntity

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDFitnessFriendWorkoutEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v27[17] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDFitnessFriendWorkoutEntity.m" lineNumber:108 description:{@"Subclasses must override %s", "+[HDFitnessFriendWorkoutEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v27[0] = @"data_id";
  v27[1] = @"friend_uuid";
  v27[2] = @"duration";
  v27[3] = @"total_energy_burned";
  v27[4] = @"total_basal_energy_burned";
  v27[5] = @"total_distance";
  v27[6] = @"activity_type";
  v27[7] = @"goal_type";
  v27[8] = @"goal";
  v27[9] = @"bundle_id";
  v27[10] = @"is_watch_workout";
  v27[11] = @"is_indoor_workout";
  v27[12] = @"device_manufacturer";
  v27[13] = @"device_model";
  v27[14] = @"activity_move_mode";
  v27[15] = @"seymour_catalog_workout_identifier";
  v27[16] = @"seymour_media_type";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:17];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__HDFitnessFriendWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v24[3] = &unk_278613DE8;
  v25 = dCopy;
  v26 = objectCopy;
  v17 = objectCopy;
  v18 = dCopy;
  v19 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v16 error:error bindingHandler:v24];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

void __94__HDFitnessFriendWorkoutEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) friendUUID];
  MEMORY[0x22AAC6C00](a2, @"friend_uuid", v4);

  [*(a1 + 40) duration];
  MEMORY[0x22AAC6B60](a2, @"duration");
  MEMORY[0x22AAC6B90](a2, @"activity_type", [*(a1 + 40) workoutActivityType]);
  MEMORY[0x22AAC6B90](a2, @"goal_type", [*(a1 + 40) goalType]);
  v5 = [*(a1 + 40) bundleID];
  MEMORY[0x22AAC6BD0](a2, @"bundle_id", v5);

  MEMORY[0x22AAC6B90](a2, @"is_watch_workout", [*(a1 + 40) isWatchWorkout]);
  MEMORY[0x22AAC6B90](a2, @"is_indoor_workout", [*(a1 + 40) isIndoorWorkout]);
  MEMORY[0x22AAC6B90](a2, @"activity_move_mode", [*(a1 + 40) amm]);
  v6 = [*(a1 + 40) totalEnergyBurned];

  if (v6)
  {
    v7 = [*(a1 + 40) totalEnergyBurned];
    v8 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [v7 doubleValueForUnit:v8];
    MEMORY[0x22AAC6B60](a2, @"total_energy_burned");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"total_energy_burned");
  }

  v9 = [*(a1 + 40) totalBasalEnergyBurned];

  if (v9)
  {
    v10 = [*(a1 + 40) totalBasalEnergyBurned];
    v11 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [v10 doubleValueForUnit:v11];
    MEMORY[0x22AAC6B60](a2, @"total_basal_energy_burned");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"total_basal_energy_burned");
  }

  v12 = [*(a1 + 40) totalDistance];

  if (v12)
  {
    v13 = [*(a1 + 40) totalDistance];
    v14 = _HKWorkoutCanonicalDistanceUnit();
    [v13 doubleValueForUnit:v14];
    MEMORY[0x22AAC6B60](a2, @"total_distance");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"total_distance");
  }

  v15 = [*(a1 + 40) goal];
  if (v15 && (v16 = v15, [*(a1 + 40) goalType], IsValidForGoal = _HKWorkoutGoalTypeIsValidForGoal(), v16, IsValidForGoal))
  {
    v18 = [*(a1 + 40) goal];
    [*(a1 + 40) goalType];
    v19 = _HKWorkoutCanonicalUnitForGoalType();
    [v18 doubleValueForUnit:v19];
    MEMORY[0x22AAC6B60](a2, @"goal");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"goal");
  }

  v20 = [*(a1 + 40) deviceManufacturer];

  if (v20)
  {
    v21 = [*(a1 + 40) deviceManufacturer];
    MEMORY[0x22AAC6BD0](a2, @"device_manufacturer", v21);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"device_manufacturer");
  }

  v22 = [*(a1 + 40) deviceModel];

  if (v22)
  {
    v23 = [*(a1 + 40) deviceModel];
    MEMORY[0x22AAC6BD0](a2, @"device_model", v23);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"device_model");
  }

  v24 = [*(a1 + 40) seymourCatalogWorkoutIdentifier];

  if (v24)
  {
    v25 = [*(a1 + 40) seymourCatalogWorkoutIdentifier];
    MEMORY[0x22AAC6BD0](a2, @"seymour_catalog_workout_identifier", v25);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"seymour_catalog_workout_identifier");
  }

  v26 = [*(a1 + 40) seymourMediaType];

  if (!v26)
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v27 = [*(a1 + 40) seymourMediaType];
  MEMORY[0x22AAC6BD0](a2, @"seymour_media_type", v27);
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addFitnessFriendWorkouts:object];
  }

  return object != 0;
}

+ (BOOL)enumerateWorkoutsWithPredicate:(id)predicate anchor:(id *)anchor profile:(id)profile error:(id *)error handler:(id)handler
{
  v32[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  profileCopy = profile;
  handlerCopy = handler;
  if (anchor)
  {
    v13 = *anchor;
    v14 = *MEMORY[0x277D10A40];
    if (v13)
    {
      v15 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10A40] greaterThanValue:v13];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v14 = *MEMORY[0x277D10A40];
  }

  fitnessFriendWorkoutType = [MEMORY[0x277CCD720] fitnessFriendWorkoutType];
  v17 = [(HDSampleEntity *)HDFitnessFriendWorkoutEntity entityEnumeratorWithType:fitnessFriendWorkoutType profile:profileCopy];

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:predicateCopy otherPredicate:v15];
  [v17 setPredicate:v18];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  longLongValue = [v13 longLongValue];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:v14 entityClass:objc_opt_class() ascending:1];
  v32[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [v17 setOrderingTerms:v20];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__HDFitnessFriendWorkoutEntity_enumerateWorkoutsWithPredicate_anchor_profile_error_handler___block_invoke;
  v25[3] = &unk_278622330;
  v27 = &v28;
  v21 = handlerCopy;
  v26 = v21;
  v22 = [v17 enumerateWithError:error handler:v25];
  if (anchor)
  {
    *anchor = [MEMORY[0x277CCABB0] numberWithLongLong:v29[3]];
  }

  _Block_object_dispose(&v28, 8);
  return v22;
}

uint64_t __92__HDFitnessFriendWorkoutEntity_enumerateWorkoutsWithPredicate_anchor_profile_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v4 <= a3)
  {
    v4 = a3;
  }

  *(v3 + 24) = v4;
  return (*(*(a1 + 32) + 16))();
}

@end