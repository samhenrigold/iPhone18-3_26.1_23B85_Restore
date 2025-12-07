@interface PearlCoreAnalyticsMatchEvent
- (PearlCoreAnalyticsMatchEvent)init;
- (void)prepareEventDictionary:(BOOL)dictionary;
- (void)reset;
@end

@implementation PearlCoreAnalyticsMatchEvent

- (PearlCoreAnalyticsMatchEvent)init
{
  v18[1] = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = PearlCoreAnalyticsMatchEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v15 initWithName:@"com.apple.biometrickit.pearl.matchAttempt"];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x29EDBFD98];
    v5 = *(&v2->super.super.super.isa + v4);
    v18[0] = @"secureFaceDetectDict";
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:1];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = *(&v3->super.super.super.isa + v4);
    *(&v3->super.super.super.isa + v4) = v7;

    v9 = objc_alloc_init(AWDBiometricKitMatchAttempt);
    awdMetric = v3->super._awdMetric;
    v3->super._awdMetric = &v9->super;

    v16[0] = @"overallTimeBounded";
    v16[1] = @"overallTimeFaceDetectedBounded";
    v17[0] = 0x2A1E03978;
    v17[1] = 0x2A1E03978;
    v16[2] = @"faceDetectEndTimeBounded";
    v17[2] = 0x2A1E03978;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v12 = *MEMORY[0x29EDBFD88];
    v13 = *(&v3->super.super.super.isa + v12);
    *(&v3->super.super.super.isa + v12) = v11;
  }

  return v3;
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = PearlCoreAnalyticsMatchEvent;
  [(PearlCoreAnalyticsEvent *)&v5 reset];
  v3 = objc_alloc_init(AWDBiometricKitMatchAttempt);
  awdMetric = self->super._awdMetric;
  self->super._awdMetric = &v3->super;
}

- (void)prepareEventDictionary:(BOOL)dictionary
{
  v8.receiver = self;
  v8.super_class = PearlCoreAnalyticsMatchEvent;
  [(PearlCoreAnalyticsEvent *)&v8 prepareEventDictionary:dictionary];
  eventDictionary = self->super._eventDictionary;
  if (eventDictionary)
  {
    v5 = [(NSDictionary *)eventDictionary mutableCopy];
    [(NSDictionary *)v5 addEntriesFromDictionary:self->_secureFaceDetectDict];
    v6 = self->super._eventDictionary;
    self->super._eventDictionary = v5;
    v7 = v5;
  }

  else
  {
    [PearlCoreAnalyticsMatchEvent prepareEventDictionary:];
  }
}

- (void)prepareEventDictionary:.cold.1()
{
  v11 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136316162;
    v2 = "_eventDictionary";
    v3 = 2048;
    v4 = 0;
    v5 = 2080;
    v6 = &unk_296D32C0B;
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Pearl/PearlCoreAnalytics/CoreAnalyticsEvents/PearlCoreAnalyticsMatchEvent.m";
    v9 = 1024;
    v10 = 46;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v1, 0x30u);
  }
}

@end