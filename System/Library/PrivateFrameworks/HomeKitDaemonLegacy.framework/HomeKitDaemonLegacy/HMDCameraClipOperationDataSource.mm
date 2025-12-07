@interface HMDCameraClipOperationDataSource
- (double)operationTimeout;
- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options;
- (void)submitOperationEvent:(id)event;
@end

@implementation HMDCameraClipOperationDataSource

- (void)submitOperationEvent:(id)event
{
  eventCopy = event;
  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:eventCopy];
}

- (id)timerWithTimeInterval:(double)interval options:(unsigned int)options
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:*&options options:interval];

  return v4;
}

- (double)operationTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"clipModelOperationTimeout"];

  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

@end