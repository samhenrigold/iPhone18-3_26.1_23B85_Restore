@interface ATXLockscreenWidgetMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenWidgetMetric

- (id)coreAnalyticsDictionary
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenWidgetMetric *)self lockscreenId];
  null = lockscreenId;
  if (!lockscreenId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = null;
  v14[1] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenWidgetMetric *)self extensionBundleId];
  null2 = extensionBundleId;
  if (!extensionBundleId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = null2;
  v14[2] = @"kind";
  kind = [(ATXLockscreenWidgetMetric *)self kind];
  null3 = kind;
  if (!kind)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v15[2] = null3;
  v14[3] = @"source";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetMetric source](self, "source")}];
  v15[3] = v9;
  v14[4] = @"family";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetMetric family](self, "family")}];
  v15[4] = v10;
  v14[5] = @"isLandscape";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenWidgetMetric isLandscape](self, "isLandscape")}];
  v15[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  if (!kind)
  {
  }

  if (!extensionBundleId)
  {
  }

  if (!lockscreenId)
  {
  }

  return v12;
}

@end