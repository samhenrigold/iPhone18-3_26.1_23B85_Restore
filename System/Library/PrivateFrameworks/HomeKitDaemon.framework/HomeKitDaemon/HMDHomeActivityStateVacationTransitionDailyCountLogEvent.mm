@interface HMDHomeActivityStateVacationTransitionDailyCountLogEvent
- (HMDHomeActivityStateVacationTransitionDailyCountLogEvent)initWithDetectorInitiatedCount:(id)count timerFiredCount:(id)firedCount;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)totalCount;
@end

@implementation HMDHomeActivityStateVacationTransitionDailyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"detectorInitiatedCount";
  detectorInitiatedCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self detectorInitiatedCount];
  v9[0] = detectorInitiatedCount;
  v8[1] = @"timerFiredCount";
  timerFiredCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self timerFiredCount];
  v9[1] = timerFiredCount;
  v8[2] = @"totalCount";
  totalCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self totalCount];
  v9[2] = totalCount;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)totalCount
{
  v3 = MEMORY[0x277CCABB0];
  detectorInitiatedCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self detectorInitiatedCount];
  intValue = [detectorInitiatedCount intValue];
  timerFiredCount = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)self timerFiredCount];
  v7 = [v3 numberWithInt:{objc_msgSend(timerFiredCount, "intValue") + intValue}];

  return v7;
}

- (HMDHomeActivityStateVacationTransitionDailyCountLogEvent)initWithDetectorInitiatedCount:(id)count timerFiredCount:(id)firedCount
{
  countCopy = count;
  firedCountCopy = firedCount;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateVacationTransitionDailyCountLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_detectorInitiatedCount, count);
    objc_storeStrong(&v10->_timerFiredCount, firedCount);
  }

  return v10;
}

@end