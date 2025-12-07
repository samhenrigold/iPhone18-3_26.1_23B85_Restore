@interface ATXLockscreenConfigurationMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenConfigurationMetric

- (id)coreAnalyticsDictionary
{
  v30[11] = *MEMORY[0x277D85DE8];
  v29[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenConfigurationMetric *)self lockscreenId];
  v4 = lockscreenId;
  if (!lockscreenId)
  {
    lockscreenId = [MEMORY[0x277CBEB68] null];
  }

  v28 = v4;
  v25 = lockscreenId;
  v30[0] = lockscreenId;
  v29[1] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenConfigurationMetric *)self extensionBundleId];
  v6 = extensionBundleId;
  if (!extensionBundleId)
  {
    extensionBundleId = [MEMORY[0x277CBEB68] null];
  }

  v24 = extensionBundleId;
  v30[1] = extensionBundleId;
  v29[2] = @"source";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric source](self, "source")}];
  v30[2] = v26;
  v29[3] = @"font";
  font = [(ATXLockscreenConfigurationMetric *)self font];
  v8 = font;
  if (!font)
  {
    font = [MEMORY[0x277CBEB68] null];
  }

  v27 = v6;
  v23 = font;
  v30[3] = font;
  v29[4] = @"color";
  color = [(ATXLockscreenConfigurationMetric *)self color];
  v10 = color;
  if (!color)
  {
    color = [MEMORY[0x277CBEB68] null];
  }

  v22 = color;
  v30[4] = color;
  v29[5] = @"numberingSystem";
  numberingSystem = [(ATXLockscreenConfigurationMetric *)self numberingSystem];
  v12 = numberingSystem;
  if (!numberingSystem)
  {
    numberingSystem = [MEMORY[0x277CBEB68] null];
  }

  v30[5] = numberingSystem;
  v29[6] = @"numWidgets";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric numWidgets](self, "numWidgets", numberingSystem)}];
  v30[6] = v13;
  v29[7] = @"numLandscapeWidgets";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric numLandscapeWidgets](self, "numLandscapeWidgets")}];
  v30[7] = v14;
  v29[8] = @"hasCustomInlineComplication";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenConfigurationMetric hasCustomInlineComplication](self, "hasCustomInlineComplication")}];
  v30[8] = v15;
  v29[9] = @"relatedFocus";
  relatedFocus = [(ATXLockscreenConfigurationMetric *)self relatedFocus];
  null = relatedFocus;
  if (!relatedFocus)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v30[9] = null;
  v29[10] = @"isSelected";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenConfigurationMetric isSelected](self, "isSelected")}];
  v30[10] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];

  if (!relatedFocus)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  return v19;
}

@end