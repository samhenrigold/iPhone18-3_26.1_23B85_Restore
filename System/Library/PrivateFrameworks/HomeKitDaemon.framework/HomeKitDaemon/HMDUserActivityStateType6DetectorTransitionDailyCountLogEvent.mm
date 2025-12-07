@interface HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent
- (HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent)initWithCountNotStartedAndEndedAtHome:(id)home countStartedAndEndedAtHome:(id)atHome durationBetweenInitialETAAndActualArrivalTime:(id)time durationBetweenStartingComingHomeAndActualArrivalTime:(id)arrivalTime countStartedAndEndedNotAtHome:(id)notAtHome durationBetweenStartingComingHomeAndCancellingComingHome:(id)comingHome durationBetweenCancellingComingHomeAndEstimatedArrivalTime:(id)estimatedArrivalTime countEndDateUpdated:(id)self0 countPausedNotMakingProgress:(id)self1 durationBetweenStartingComingHomeAndPausingComingHome:(id)self2 durationBetweenPausingComingHomeAndEstimatedArrivalTime:(id)self3 countResumedAfterPaused:(id)self4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v18[12] = *MEMORY[0x277D85DE8];
  v17[0] = @"countNotStartedAndEndedAtHome";
  countNotStartedAndEndedAtHome = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countNotStartedAndEndedAtHome];
  v18[0] = countNotStartedAndEndedAtHome;
  v17[1] = @"countStartedAndEndedAtHome";
  countStartedAndEndedAtHome = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countStartedAndEndedAtHome];
  v18[1] = countStartedAndEndedAtHome;
  v17[2] = @"durationBetweenInitialETAAndActualArrivalTime";
  durationBetweenInitialETAAndActualArrivalTime = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenInitialETAAndActualArrivalTime];
  v18[2] = durationBetweenInitialETAAndActualArrivalTime;
  v17[3] = @"durationBetweenStartingComingHomeAndActualArrivalTime";
  durationBetweenStartingComingHomeAndActualArrivalTime = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenStartingComingHomeAndActualArrivalTime];
  v18[3] = durationBetweenStartingComingHomeAndActualArrivalTime;
  v17[4] = @"countStartedAndEndedNotAtHome";
  countStartedAndEndedNotAtHome = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countStartedAndEndedNotAtHome];
  v18[4] = countStartedAndEndedNotAtHome;
  v17[5] = @"durationBetweenStartingComingHomeAndCancellingComingHome";
  durationBetweenStartingComingHomeAndCancellingComingHome = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenStartingComingHomeAndCancellingComingHome];
  v18[5] = durationBetweenStartingComingHomeAndCancellingComingHome;
  v17[6] = @"durationBetweenCancellingComingHomeAndEstimatedArrivalTime";
  durationBetweenCancellingComingHomeAndEstimatedArrivalTime = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenCancellingComingHomeAndEstimatedArrivalTime];
  v18[6] = durationBetweenCancellingComingHomeAndEstimatedArrivalTime;
  v17[7] = @"countEndDateUpdated";
  countEndDateUpdated = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countEndDateUpdated];
  v18[7] = countEndDateUpdated;
  v17[8] = @"countPausedNotMakingProgress";
  countPausedNotMakingProgress = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countPausedNotMakingProgress];
  v18[8] = countPausedNotMakingProgress;
  v17[9] = @"durationBetweenStartingComingHomeAndPausingComingHome";
  durationBetweenStartingComingHomeAndPausingComingHome = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenStartingComingHomeAndPausingComingHome];
  v18[9] = durationBetweenStartingComingHomeAndPausingComingHome;
  v17[10] = @"durationBetweenPausingComingHomeAndEstimatedArrivalTime";
  durationBetweenPausingComingHomeAndEstimatedArrivalTime = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self durationBetweenPausingComingHomeAndEstimatedArrivalTime];
  v18[10] = durationBetweenPausingComingHomeAndEstimatedArrivalTime;
  v17[11] = @"countResumedAfterPaused";
  countResumedAfterPaused = [(HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent *)self countResumedAfterPaused];
  v18[11] = countResumedAfterPaused;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:12];

  return v12;
}

- (HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent)initWithCountNotStartedAndEndedAtHome:(id)home countStartedAndEndedAtHome:(id)atHome durationBetweenInitialETAAndActualArrivalTime:(id)time durationBetweenStartingComingHomeAndActualArrivalTime:(id)arrivalTime countStartedAndEndedNotAtHome:(id)notAtHome durationBetweenStartingComingHomeAndCancellingComingHome:(id)comingHome durationBetweenCancellingComingHomeAndEstimatedArrivalTime:(id)estimatedArrivalTime countEndDateUpdated:(id)self0 countPausedNotMakingProgress:(id)self1 durationBetweenStartingComingHomeAndPausingComingHome:(id)self2 durationBetweenPausingComingHomeAndEstimatedArrivalTime:(id)self3 countResumedAfterPaused:(id)self4
{
  homeCopy = home;
  atHomeCopy = atHome;
  atHomeCopy2 = atHome;
  timeCopy = time;
  timeCopy2 = time;
  arrivalTimeCopy = arrivalTime;
  arrivalTimeCopy2 = arrivalTime;
  notAtHomeCopy = notAtHome;
  comingHomeCopy = comingHome;
  estimatedArrivalTimeCopy = estimatedArrivalTime;
  updatedCopy = updated;
  progressCopy = progress;
  pausingComingHomeCopy = pausingComingHome;
  andEstimatedArrivalTimeCopy = andEstimatedArrivalTime;
  pausedCopy = paused;
  v39.receiver = self;
  v39.super_class = HMDUserActivityStateType6DetectorTransitionDailyCountLogEvent;
  v23 = [(HMMLogEvent *)&v39 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_countNotStartedAndEndedAtHome, home);
    objc_storeStrong(&v24->_countStartedAndEndedAtHome, atHomeCopy);
    objc_storeStrong(&v24->_durationBetweenInitialETAAndActualArrivalTime, timeCopy);
    objc_storeStrong(&v24->_durationBetweenStartingComingHomeAndActualArrivalTime, arrivalTimeCopy);
    objc_storeStrong(&v24->_countStartedAndEndedNotAtHome, notAtHome);
    objc_storeStrong(&v24->_durationBetweenStartingComingHomeAndCancellingComingHome, comingHome);
    objc_storeStrong(&v24->_durationBetweenCancellingComingHomeAndEstimatedArrivalTime, estimatedArrivalTime);
    objc_storeStrong(&v24->_countEndDateUpdated, updated);
    objc_storeStrong(&v24->_countPausedNotMakingProgress, progress);
    objc_storeStrong(&v24->_durationBetweenStartingComingHomeAndPausingComingHome, pausingComingHome);
    objc_storeStrong(&v24->_durationBetweenPausingComingHomeAndEstimatedArrivalTime, andEstimatedArrivalTime);
    objc_storeStrong(&v24->_countResumedAfterPaused, paused);
  }

  return v24;
}

@end