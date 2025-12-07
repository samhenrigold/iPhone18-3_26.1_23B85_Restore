@interface Metric.MediaGroup.PreflightCheckLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithHomeUUID:(id)d;
- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
@end

@implementation Metric.MediaGroup.PreflightCheckLogEvent

- (NSString)coreAnalyticsEventName
{

  v2 = sub_22A4DD5AC();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_2297ECBCC();

  sub_22956540C();
  v3 = sub_22A4DD47C();

  return v3;
}

- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithHomeUUID:(id)d
{
  v3 = sub_22A4DB7DC();
  MEMORY[0x28223BE20](v3 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCOO13HomeKitDaemon6Metric10MediaGroup22PreflightCheckLogEvent)initWithStartTime:(double)time homeUUID:(id)d
{
  v4 = sub_22A4DB7DC();
  MEMORY[0x28223BE20](v4 - 8);
  sub_22A4DB79C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end