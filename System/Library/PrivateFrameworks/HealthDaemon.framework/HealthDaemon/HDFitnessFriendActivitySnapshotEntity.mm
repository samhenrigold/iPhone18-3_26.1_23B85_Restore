@interface HDFitnessFriendActivitySnapshotEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)enumerateSnapshotsWithPredicate:(id)predicate anchor:(id *)anchor profile:(id)profile error:(id *)error handler:(id)handler;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler;
+ (id)uniquedColumns;
@end

@implementation HDFitnessFriendActivitySnapshotEntity

+ (id)uniquedColumns
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"friend_uuid";
  v4[1] = @"snapshot_index";
  v4[2] = @"source_uuid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDFitnessFriendActivitySnapshotEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  v27[19] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDFitnessFriendActivitySnapshotEntity.m" lineNumber:121 description:{@"Subclasses must override %s", "+[HDFitnessFriendActivitySnapshotEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v27[0] = @"data_id";
  v27[1] = @"friend_uuid";
  v27[2] = @"active_hours";
  v27[3] = @"active_hours_goal";
  v27[4] = @"brisk_minutes";
  v27[5] = @"brisk_minutes_goal";
  v27[6] = @"energy_burned";
  v27[7] = @"energy_burned_goal";
  v27[8] = @"move_minutes";
  v27[9] = @"move_minutes_goal";
  v27[10] = @"activity_move_mode";
  v27[11] = @"walk_run_distance";
  v27[12] = @"steps";
  v27[13] = @"snapshot_index";
  v27[14] = @"source_uuid";
  v27[15] = @"uploaded_date";
  v27[16] = @"vulcan_count";
  v27[17] = @"vulcan_condition";
  v27[18] = @"timezone_offset";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:19];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __103__HDFitnessFriendActivitySnapshotEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __103__HDFitnessFriendActivitySnapshotEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) friendUUID];
  MEMORY[0x22AAC6C00](a2, @"friend_uuid", v4);

  [*(a1 + 40) activeHours];
  MEMORY[0x22AAC6B60](a2, @"active_hours");
  [*(a1 + 40) activeHoursGoal];
  MEMORY[0x22AAC6B60](a2, @"active_hours_goal");
  [*(a1 + 40) briskMinutes];
  MEMORY[0x22AAC6B60](a2, @"brisk_minutes");
  [*(a1 + 40) briskMinutesGoal];
  MEMORY[0x22AAC6B60](a2, @"brisk_minutes_goal");
  [*(a1 + 40) energyBurned];
  MEMORY[0x22AAC6B60](a2, @"energy_burned");
  [*(a1 + 40) energyBurnedGoal];
  MEMORY[0x22AAC6B60](a2, @"energy_burned_goal");
  [*(a1 + 40) mmv];
  MEMORY[0x22AAC6B60](a2, @"move_minutes");
  [*(a1 + 40) mmg];
  MEMORY[0x22AAC6B60](a2, @"move_minutes_goal");
  MEMORY[0x22AAC6B90](a2, @"activity_move_mode", [*(a1 + 40) amm]);
  [*(a1 + 40) stepCount];
  MEMORY[0x22AAC6B60](a2, @"steps");
  [*(a1 + 40) walkingAndRunningDistance];
  MEMORY[0x22AAC6B60](a2, @"walk_run_distance");
  MEMORY[0x22AAC6B90](a2, @"snapshot_index", [*(a1 + 40) snapshotIndex]);
  v5 = [*(a1 + 40) sourceUUID];
  MEMORY[0x22AAC6C00](a2, @"source_uuid", v5);

  v6 = [*(a1 + 40) snapshotUploadedDate];
  MEMORY[0x22AAC6B50](a2, @"uploaded_date", v6);

  [*(a1 + 40) pushCount];
  MEMORY[0x22AAC6B60](a2, @"vulcan_count");
  MEMORY[0x22AAC6B90](a2, @"vulcan_condition", [*(a1 + 40) wheelchairUse]);
  v7 = [*(a1 + 40) timeZoneOffsetFromUTCForNoon];

  if (!v7)
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v8 = [*(a1 + 40) timeZoneOffsetFromUTCForNoon];
  MEMORY[0x22AAC6B90](a2, @"timezone_offset", [v8 integerValue]);
}

+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler
{
  v46[3] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  provenanceCopy = provenance;
  profileCopy = profile;
  transactionCopy = transaction;
  handlerCopy = handler;
  friendUUID = [objectCopy friendUUID];
  v18 = HDFitnessFriendActivitySnapshotEntityPredicateForFriendUUID(friendUUID);

  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(objectCopy, "snapshotIndex")}];
  v20 = [MEMORY[0x277D10B18] predicateWithProperty:@"snapshot_index" equalToValue:v19];

  v21 = MEMORY[0x277D10B18];
  sourceUUID = [objectCopy sourceUUID];
  v23 = _HDSQLiteValueForUUID();
  v24 = [v21 predicateWithProperty:@"source_uuid" equalToValue:v23];

  v25 = MEMORY[0x277D10B20];
  v46[0] = v18;
  v46[1] = v20;
  v46[2] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v27 = [v25 predicateMatchingAllPredicates:v26];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__105;
  v40 = __Block_byref_object_dispose__105;
  v41 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __108__HDFitnessFriendActivitySnapshotEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke;
  v35[3] = &unk_278622358;
  v35[4] = &v42;
  v35[5] = &v36;
  [self deleteSamplesWithPredicate:v27 limit:0 generateDeletedObjects:0 transaction:transactionCopy profile:profileCopy recursiveDeleteAuthorizationBlock:0 completionHandler:v35];
  if (v43[3])
  {
    v28 = handlerCopy[2](handlerCopy, objectCopy, error);
  }

  else
  {
    v29 = v37[5];
    v30 = v29;
    if (v29)
    {
      if (error)
      {
        v31 = v29;
        *error = v30;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v28 = 0;
  }

  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v28;
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addFitnessFriendActivitySnapshots:object];
  }

  return object != 0;
}

+ (BOOL)enumerateSnapshotsWithPredicate:(id)predicate anchor:(id *)anchor profile:(id)profile error:(id *)error handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
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

  v16 = [(HDDataEntity *)HDFitnessFriendActivitySnapshotEntity entityEnumeratorWithProfile:profileCopy];
  v17 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:predicateCopy otherPredicate:v15];
  [v16 setPredicate:v17];

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  longLongValue = [v13 longLongValue];
  v18 = [MEMORY[0x277D10B68] orderingTermWithProperty:v14 entityClass:objc_opt_class() ascending:1];
  v31[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v16 setOrderingTerms:v19];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__HDFitnessFriendActivitySnapshotEntity_enumerateSnapshotsWithPredicate_anchor_profile_error_handler___block_invoke;
  v24[3] = &unk_278622330;
  v26 = &v27;
  v20 = handlerCopy;
  v25 = v20;
  v21 = [v16 enumerateWithError:error handler:v24];
  if (anchor)
  {
    *anchor = [MEMORY[0x277CCABB0] numberWithLongLong:v28[3]];
  }

  _Block_object_dispose(&v27, 8);
  return v21;
}

uint64_t __102__HDFitnessFriendActivitySnapshotEntity_enumerateSnapshotsWithPredicate_anchor_profile_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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