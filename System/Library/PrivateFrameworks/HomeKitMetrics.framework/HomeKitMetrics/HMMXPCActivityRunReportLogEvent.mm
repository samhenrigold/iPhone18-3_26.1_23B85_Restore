@interface HMMXPCActivityRunReportLogEvent
- (HMMXPCActivityRunReportLogEvent)initWithActivityName:(id)name definedInterval:(double)interval activityShouldWake:(BOOL)wake timeSinceLastRun:(double)run;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMMXPCActivityRunReportLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"activityName";
  activityName = [(HMMXPCActivityRunReportLogEvent *)self activityName];
  v11[0] = activityName;
  v10[1] = @"activityShouldWake";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMMXPCActivityRunReportLogEvent activityShouldWake](self, "activityShouldWake")}];
  v11[1] = v4;
  v10[2] = @"activityDefinedIntervalInMinutes";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMXPCActivityRunReportLogEvent activityDefinedIntervalInMinutes](self, "activityDefinedIntervalInMinutes")}];
  v11[2] = v5;
  v10[3] = @"activityRunHourOfDay";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMXPCActivityRunReportLogEvent activityRunHourOfDay](self, "activityRunHourOfDay")}];
  v11[3] = v6;
  v10[4] = @"activityTimeSinceLastRunInMinutes";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMXPCActivityRunReportLogEvent activityTimeSinceLastRunInMinutes](self, "activityTimeSinceLastRunInMinutes")}];
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (HMMXPCActivityRunReportLogEvent)initWithActivityName:(id)name definedInterval:(double)interval activityShouldWake:(BOOL)wake timeSinceLastRun:(double)run
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = HMMXPCActivityRunReportLogEvent;
  v12 = [(HMMLogEvent *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityName, name);
    v13->_activityDefinedIntervalInMinutes = (interval / 3600.0);
    v13->_activityShouldWake = wake;
    v14 = [MEMORY[0x277CBEAA8] now];
    hmf_dateComponents = [v14 hmf_dateComponents];
    v13->_activityRunHourOfDay = [hmf_dateComponents hour];

    v13->_activityTimeSinceLastRunInMinutes = (run / 60.0);
  }

  return v13;
}

@end