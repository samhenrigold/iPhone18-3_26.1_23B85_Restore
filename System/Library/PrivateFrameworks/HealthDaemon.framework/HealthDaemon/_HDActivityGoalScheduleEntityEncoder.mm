@interface _HDActivityGoalScheduleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)_quantityForRow:(void *)row unit:(uint64_t)unit columnName:;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDActivityGoalScheduleEntityEncoder

- (id)orderedProperties
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = @"goal_type";
  v8[1] = @"unit_string";
  v8[2] = @"monday_goal";
  v8[3] = @"tuesday_goal";
  v8[4] = @"wednesday_goal";
  v8[5] = @"thursday_goal";
  v8[6] = @"friday_goal";
  v8[7] = @"saturday_goal";
  v8[8] = @"sunday_goal";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCCFA8]) _init];

  return _init;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableActivityGoalSchedule);
    [(HDCodableActivityGoalSchedule *)v10 setSample:v9];
    [(HDCodableActivityGoalSchedule *)v10 setGoalType:HDSQLiteColumnWithNameAsInt64()];
    v11 = HDSQLiteColumnWithNameAsString();
    [(HDCodableActivityGoalSchedule *)v10 setUnitString:v11];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setMondayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setTuesdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setWednesdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setThursdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setFridayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setSaturdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setSundayGoal:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    [objectCopy setGoalType:HDSQLiteColumnWithNameAsInt64()];
    v22 = HDSQLiteColumnWithNameAsString();
    v13 = [MEMORY[0x277CCDAB0] unitFromString:v22];
    v21 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"monday_goal"];
    [objectCopy setMondayGoal:v21];
    v14 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"tuesday_goal"];
    [objectCopy setTuesdayGoal:v14];
    v15 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"wednesday_goal"];
    [objectCopy setWednesdayGoal:v15];
    v16 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"thursday_goal"];
    [objectCopy setThursdayGoal:v16];
    v17 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"friday_goal"];
    [objectCopy setFridayGoal:v17];
    v18 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"saturday_goal"];
    [objectCopy setSaturdayGoal:v18];
    v19 = [(_HDActivityGoalScheduleEntityEncoder *)self _quantityForRow:row unit:v13 columnName:@"sunday_goal"];
    [objectCopy setSundayGoal:v19];
  }

  return v12;
}

- (id)_quantityForRow:(void *)row unit:(uint64_t)unit columnName:
{
  if (self)
  {
    rowCopy = row;
    HDSQLiteColumnWithNameAsDouble();
    v5 = [MEMORY[0x277CCD7E8] quantityWithUnit:rowCopy doubleValue:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end