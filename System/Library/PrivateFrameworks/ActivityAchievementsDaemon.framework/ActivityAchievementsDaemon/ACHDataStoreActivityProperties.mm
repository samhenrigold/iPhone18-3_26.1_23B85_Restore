@interface ACHDataStoreActivityProperties
- (NSArray)dictionaryKeys;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation ACHDataStoreActivityProperties

- (NSArray)dictionaryKeys
{
  if (dictionaryKeys_onceToken != -1)
  {
    [ACHDataStoreActivityProperties dictionaryKeys];
  }

  v3 = dictionaryKeys_keys;

  return v3;
}

void __48__ACHDataStoreActivityProperties_dictionaryKeys__block_invoke()
{
  v31[29] = *MEMORY[0x277D85DE8];
  v30 = NSStringFromSelector(sel_currentMoveStreak);
  v31[0] = v30;
  v29 = NSStringFromSelector(sel_currentWeekMoveStreak);
  v31[1] = v29;
  v28 = NSStringFromSelector(sel_currentMonthMoveStreak);
  v31[2] = v28;
  v27 = NSStringFromSelector(sel_bestMoveStreak);
  v31[3] = v27;
  v26 = NSStringFromSelector(sel_totalMoveGoalsMade);
  v31[4] = v26;
  v25 = NSStringFromSelector(sel_totalMoveGoalsAttempted);
  v31[5] = v25;
  v24 = NSStringFromSelector(sel_bestMoveValue);
  v31[6] = v24;
  v23 = NSStringFromSelector(sel_bestMoveGoalValue);
  v31[7] = v23;
  v22 = NSStringFromSelector(sel_bestMoveTimeValue);
  v31[8] = v22;
  v21 = NSStringFromSelector(sel_bestMoveTimeGoalValue);
  v31[9] = v21;
  v20 = NSStringFromSelector(sel_currentExerciseStreak);
  v31[10] = v20;
  v19 = NSStringFromSelector(sel_currentWeekExerciseStreak);
  v31[11] = v19;
  v18 = NSStringFromSelector(sel_bestExerciseStreak);
  v31[12] = v18;
  v17 = NSStringFromSelector(sel_totalExerciseGoalsMade);
  v31[13] = v17;
  v16 = NSStringFromSelector(sel_totalExerciseGoalsAttempted);
  v31[14] = v16;
  v15 = NSStringFromSelector(sel_bestExerciseValue);
  v31[15] = v15;
  v14 = NSStringFromSelector(sel_bestExerciseGoalValue);
  v31[16] = v14;
  v13 = NSStringFromSelector(sel_currentStandStreak);
  v31[17] = v13;
  v12 = NSStringFromSelector(sel_currentWeekStandStreak);
  v31[18] = v12;
  v0 = NSStringFromSelector(sel_bestStandStreak);
  v31[19] = v0;
  v1 = NSStringFromSelector(sel_totalStandGoalsMade);
  v31[20] = v1;
  v2 = NSStringFromSelector(sel_totalStandGoalsAttempted);
  v31[21] = v2;
  v3 = NSStringFromSelector(sel_bestStandValue);
  v31[22] = v3;
  v4 = NSStringFromSelector(sel_bestStandGoalValue);
  v31[23] = v4;
  v5 = NSStringFromSelector(sel_totalAllGoalsMade);
  v31[24] = v5;
  v6 = NSStringFromSelector(sel_mostRecentAllGoalsMadeIndex);
  v31[25] = v6;
  v7 = NSStringFromSelector(sel_lastStepCount);
  v31[26] = v7;
  v8 = NSStringFromSelector(sel_bestStepCount);
  v31[27] = v8;
  v9 = NSStringFromSelector(sel_storeValuesValidBeforeSummaryIndex);
  v31[28] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:29];
  v11 = dictionaryKeys_keys;
  dictionaryKeys_keys = v10;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionaryKeys = [(ACHDataStoreActivityProperties *)self dictionaryKeys];
  v4 = [(ACHDataStoreActivityProperties *)self dictionaryWithValuesForKeys:dictionaryKeys];

  return v4;
}

@end