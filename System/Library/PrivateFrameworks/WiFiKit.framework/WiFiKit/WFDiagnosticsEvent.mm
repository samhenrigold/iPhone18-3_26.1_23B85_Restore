@interface WFDiagnosticsEvent
- (WFDiagnosticsEvent)initWithDiagnosticsEventType:(int64_t)type didPassTest:(BOOL)test failedTests:(id)tests;
- (id)_testTypeToString:(int64_t)string;
@end

@implementation WFDiagnosticsEvent

- (id)_testTypeToString:(int64_t)string
{
  if (string > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE768[string];
  }
}

- (WFDiagnosticsEvent)initWithDiagnosticsEventType:(int64_t)type didPassTest:(BOOL)test failedTests:(id)tests
{
  testCopy = test;
  v19[3] = *MEMORY[0x277D85DE8];
  testsCopy = tests;
  v17.receiver = self;
  v17.super_class = WFDiagnosticsEvent;
  v9 = [(WFDiagnosticsEvent *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v18[0] = @"testType";
    v11 = [(WFDiagnosticsEvent *)v9 _testTypeToString:type];
    v19[0] = v11;
    v18[1] = @"testDidPass";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:testCopy];
    v19[1] = v12;
    v18[2] = @"failedTests";
    numberArrayToJsonString = [testsCopy numberArrayToJsonString];
    v19[2] = numberArrayToJsonString;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    eventDictionary = v10->_eventDictionary;
    v10->_eventDictionary = v14;
  }

  return v10;
}

@end