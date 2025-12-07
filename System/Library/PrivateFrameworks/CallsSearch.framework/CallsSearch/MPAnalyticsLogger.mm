@interface MPAnalyticsLogger
- (MPAnalyticsLogger)init;
- (void)logCustomGreetingUpdated;
- (void)logEvent:(id)event;
- (void)logEvent:(id)event withCoreAnalyticsDictionary:(id)dictionary;
- (void)logSIMLineSelection:(BOOL)selection;
@end

@implementation MPAnalyticsLogger

- (MPAnalyticsLogger)init
{
  v3.receiver = self;
  v3.super_class = MPAnalyticsLogger;
  return [(MPAnalyticsLogger *)&v3 init];
}

- (void)logEvent:(id)event withCoreAnalyticsDictionary:(id)dictionary
{
  v5 = sub_1CFB8FA90();
  v7 = v6;
  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v8 = sub_1CFB8FA40();
  selfCopy = self;
  _sSo17MPAnalyticsLoggerC11CallsSearchE8logEvent_27withCoreAnalyticsDictionaryySS_SDySSSo8NSObjectCGtF_0(v5, v7, v8);
}

- (void)logEvent:(id)event
{
  sub_1CFB5D38C(0, &qword_1EE04C150, 0x1E69E9BF8);
  eventCopy = event;
  v5 = sub_1CFB8FE10();
  v6 = sub_1CFB8FCB0();
  sub_1CFB8F790("MPAnalyticsLogger: logging core analytics view %@", 49, 2, &dword_1CFB5B000, v5, v6, MEMORY[0x1E69E7CC0]);

  v8[4] = sub_1CFB7B410;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CFB5DF28;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);
  AnalyticsSendEventLazy();
  _Block_release(v7);
}

- (void)logCustomGreetingUpdated
{
  selfCopy = self;
  MPAnalyticsLogger.logCustomGreetingUpdated()();
}

- (void)logSIMLineSelection:(BOOL)selection
{
  selfCopy = self;
  MPAnalyticsLogger.logSIMLineSelection(_:)(selection);
}

@end