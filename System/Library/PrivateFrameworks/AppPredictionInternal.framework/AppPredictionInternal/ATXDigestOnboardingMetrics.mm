@interface ATXDigestOnboardingMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingMetrics

- (id)coreAnalyticsDictionary
{
  v26[10] = *MEMORY[0x277D85DE8];
  v25[0] = @"sessionUUID";
  sessionUUID = [(ATXDigestOnboardingMetrics *)self sessionUUID];
  v4 = sessionUUID;
  if (!sessionUUID)
  {
    sessionUUID = [MEMORY[0x277CBEB68] null];
  }

  v23 = sessionUUID;
  v26[0] = sessionUUID;
  v25[1] = @"entrySource";
  entrySource = [(ATXDigestOnboardingMetrics *)self entrySource];
  v6 = entrySource;
  if (!entrySource)
  {
    entrySource = [MEMORY[0x277CBEB68] null];
  }

  v22 = entrySource;
  v26[1] = entrySource;
  v25[2] = @"digestOnboardingOutcome";
  digestOnboardingOutcome = [(ATXDigestOnboardingMetrics *)self digestOnboardingOutcome];
  v8 = digestOnboardingOutcome;
  if (!digestOnboardingOutcome)
  {
    digestOnboardingOutcome = [MEMORY[0x277CBEB68] null];
  }

  v24 = v4;
  v21 = digestOnboardingOutcome;
  v26[2] = digestOnboardingOutcome;
  v25[3] = @"finalUIShown";
  finalUIShown = [(ATXDigestOnboardingMetrics *)self finalUIShown];
  v10 = finalUIShown;
  if (!finalUIShown)
  {
    finalUIShown = [MEMORY[0x277CBEB68] null];
  }

  v20 = finalUIShown;
  v26[3] = finalUIShown;
  v25[4] = @"didSelectShowMore";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestOnboardingMetrics didSelectShowMore](self, "didSelectShowMore")}];
  v26[4] = v11;
  v25[5] = @"timeTaken";
  v12 = MEMORY[0x277CCABB0];
  [(ATXDigestOnboardingMetrics *)self timeTaken];
  v13 = [v12 numberWithDouble:?];
  v26[5] = v13;
  v25[6] = @"deliveryTime1";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXDigestOnboardingMetrics deliveryTime1](self, "deliveryTime1")}];
  v26[6] = v14;
  v25[7] = @"deliveryTime2";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXDigestOnboardingMetrics deliveryTime2](self, "deliveryTime2")}];
  v26[7] = v15;
  v25[8] = @"deliveryTime3";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXDigestOnboardingMetrics deliveryTime3](self, "deliveryTime3")}];
  v26[8] = v16;
  v25[9] = @"numScheduledDeliveries";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingMetrics numScheduledDeliveries](self, "numScheduledDeliveries")}];
  v26[9] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:10];

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v24)
  {
  }

  return v18;
}

@end