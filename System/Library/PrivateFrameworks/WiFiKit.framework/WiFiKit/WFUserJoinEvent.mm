@interface WFUserJoinEvent
+ (id)joinEventWithSecurity:(int64_t)security error:(int64_t)error sectionCounts:(id)counts sectionName:(id)name didRun:(BOOL)run didPass:(BOOL)pass failedTests:(id)tests;
+ (id)joinEventWithType:(int64_t)type security:(int64_t)security error:(int64_t)error didRun:(BOOL)run didPass:(BOOL)pass failedTests:(id)tests;
- (WFUserJoinEvent)initWithType:(int64_t)type security:(int64_t)security error:(int64_t)error sectionCounts:(id)counts sectionName:(id)name didRunVelocityTests:(BOOL)tests didPassVelocityTests:(BOOL)velocityTests failedTests:(id)self0;
- (id)_eventTypeStringForType:(int64_t)type;
- (id)_sectionCountsToJSONString:(id)string;
@end

@implementation WFUserJoinEvent

+ (id)joinEventWithSecurity:(int64_t)security error:(int64_t)error sectionCounts:(id)counts sectionName:(id)name didRun:(BOOL)run didPass:(BOOL)pass failedTests:(id)tests
{
  runCopy = run;
  testsCopy = tests;
  nameCopy = name;
  countsCopy = counts;
  LOBYTE(v20) = pass;
  v18 = [[WFUserJoinEvent alloc] initWithType:0 security:security error:error sectionCounts:countsCopy sectionName:nameCopy didRunVelocityTests:runCopy didPassVelocityTests:v20 failedTests:testsCopy];

  return v18;
}

+ (id)joinEventWithType:(int64_t)type security:(int64_t)security error:(int64_t)error didRun:(BOOL)run didPass:(BOOL)pass failedTests:(id)tests
{
  runCopy = run;
  testsCopy = tests;
  LOBYTE(v16) = pass;
  v14 = [[WFUserJoinEvent alloc] initWithType:type security:security error:error sectionCounts:0 sectionName:0 didRunVelocityTests:runCopy didPassVelocityTests:v16 failedTests:testsCopy];

  return v14;
}

- (id)_sectionCountsToJSONString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v13 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:stringCopy options:0 error:&v13];
    v5 = v13;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    }

    else
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(1uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
      {
        *buf = 136315394;
        v15 = "[WFUserJoinEvent _sectionCountsToJSONString:]";
        v16 = 2112;
        v17 = stringCopy;
        _os_log_impl(&dword_273ECD000, v8, v10, "%s: failed to create json from dictionary %@", buf, 0x16u);
      }

      v6 = &stru_2882E4AD8;
    }

    v7 = v6;
  }

  else
  {
    v7 = &stru_2882E4AD8;
  }

  return v7;
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE680[type];
  }
}

- (WFUserJoinEvent)initWithType:(int64_t)type security:(int64_t)security error:(int64_t)error sectionCounts:(id)counts sectionName:(id)name didRunVelocityTests:(BOOL)tests didPassVelocityTests:(BOOL)velocityTests failedTests:(id)self0
{
  testsCopy = tests;
  v40[9] = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  nameCopy = name;
  failedTestsCopy = failedTests;
  v38.receiver = self;
  v38.super_class = WFUserJoinEvent;
  v18 = [(WFUserJoinEvent *)&v38 init];
  v19 = v18;
  if (v18)
  {
    v39[0] = @"type";
    v36 = [(WFUserJoinEvent *)v18 _eventTypeStringForType:type];
    v40[0] = v36;
    v39[1] = @"errorCode";
    v35 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    v40[1] = v35;
    v39[2] = @"securityType";
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:security];
    v21 = testsCopy;
    v22 = v20;
    v23 = &stru_2882E4AD8;
    if (nameCopy)
    {
      v23 = nameCopy;
    }

    v40[2] = v20;
    v40[3] = v23;
    v39[3] = @"value";
    v39[4] = @"context";
    v24 = [(WFUserJoinEvent *)v19 _sectionCountsToJSONString:countsCopy];
    v40[4] = v24;
    v39[5] = @"process";
    v25 = +[WFMetricsManager sharedManager];
    [v25 processName];
    v26 = nameCopy;
    v28 = v27 = countsCopy;
    v40[5] = v28;
    v39[6] = @"didRunVelocityTests";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    v40[6] = v29;
    v39[7] = @"didPassVelocityTests";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:velocityTests];
    v40[7] = v30;
    v39[8] = @"failedVelocityTests";
    numberArrayToJsonString = [failedTestsCopy numberArrayToJsonString];
    v40[8] = numberArrayToJsonString;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:9];
    eventDictionary = v19->_eventDictionary;
    v19->_eventDictionary = v32;

    countsCopy = v27;
    nameCopy = v26;
  }

  return v19;
}

@end