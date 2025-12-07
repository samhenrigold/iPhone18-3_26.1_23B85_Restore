@interface ATXDigestOnboardingAppSelectionMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingAppSelectionMetrics

- (id)coreAnalyticsDictionary
{
  v17[8] = *MEMORY[0x277D85DE8];
  v16[0] = @"sessionUUID";
  sessionUUID = [(ATXDigestOnboardingAppSelectionMetrics *)self sessionUUID];
  v4 = sessionUUID;
  if (!sessionUUID)
  {
    sessionUUID = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = sessionUUID;
  v16[1] = @"bundleId";
  bundleId = [(ATXDigestOnboardingAppSelectionMetrics *)self bundleId];
  null = bundleId;
  if (!bundleId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = null;
  v16[2] = @"basicNotifications";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics avgNumBasicNotifications](self, "avgNumBasicNotifications")}];
  v17[2] = v7;
  v16[3] = @"messageNotifications";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics avgNumMessageNotfications](self, "avgNumMessageNotfications")}];
  v17[3] = v8;
  v16[4] = @"timeSensitiveNotifications";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics avgNumTimeSensitiveNonMessageNotifications](self, "avgNumTimeSensitiveNonMessageNotifications")}];
  v17[4] = v9;
  v16[5] = @"rank";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics rank](self, "rank")}];
  v17[5] = v10;
  v16[6] = @"addedToDigest";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestOnboardingAppSelectionMetrics addedToDigest](self, "addedToDigest")}];
  v17[6] = v11;
  v16[7] = @"wasShownInDigest";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestOnboardingAppSelectionMetrics wasShownInDigestOnboarding](self, "wasShownInDigestOnboarding")}];
  v17[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:8];

  if (!bundleId)
  {
  }

  if (!v4)
  {
  }

  return v13;
}

@end