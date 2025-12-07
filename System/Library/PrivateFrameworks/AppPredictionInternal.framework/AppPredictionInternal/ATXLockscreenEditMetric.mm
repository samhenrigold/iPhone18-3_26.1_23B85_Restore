@interface ATXLockscreenEditMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenEditMetric

- (id)coreAnalyticsDictionary
{
  v25[12] = *MEMORY[0x277D85DE8];
  v24[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenEditMetric *)self lockscreenId];
  v4 = lockscreenId;
  if (!lockscreenId)
  {
    lockscreenId = [MEMORY[0x277CBEB68] null];
  }

  v23 = v4;
  v20 = lockscreenId;
  v25[0] = lockscreenId;
  v24[1] = @"entryPoint";
  entryPoint = [(ATXLockscreenEditMetric *)self entryPoint];
  v6 = entryPoint;
  if (!entryPoint)
  {
    entryPoint = [MEMORY[0x277CBEB68] null];
  }

  v19 = entryPoint;
  v25[1] = entryPoint;
  v24[2] = @"isNew";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric isNew](self, "isNew")}];
  v25[2] = v22;
  v24[3] = @"secondsSinceLastEdit";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenEditMetric secondsSinceLastEdit](self, "secondsSinceLastEdit")}];
  v25[3] = v21;
  v24[4] = @"outcome";
  outcome = [(ATXLockscreenEditMetric *)self outcome];
  v8 = outcome;
  if (!outcome)
  {
    outcome = [MEMORY[0x277CBEB68] null];
  }

  v25[4] = outcome;
  v24[5] = @"timeSpentEditing";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenEditMetric duration](self, "duration", outcome)}];
  v25[5] = v9;
  v24[6] = @"userChangedColor";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedColor](self, "userChangedColor")}];
  v25[6] = v10;
  v24[7] = @"userChangedFont";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedFont](self, "userChangedFont")}];
  v25[7] = v11;
  v24[8] = @"userChangedNumberingSystem";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedNumberingSystem](self, "userChangedNumberingSystem")}];
  v25[8] = v12;
  v24[9] = @"userChangedWidgets";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedWidgets](self, "userChangedWidgets")}];
  v25[9] = v13;
  v24[10] = @"userChangedPosterContent";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedPosterContent](self, "userChangedPosterContent")}];
  v25[10] = v14;
  v24[11] = @"didLockscreenHaveWidgetsBeforeEdit";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric didLockscreenHaveWidgetsBeforeEdit](self, "didLockscreenHaveWidgetsBeforeEdit")}];
  v25[11] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:12];

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v23)
  {
  }

  return v16;
}

@end