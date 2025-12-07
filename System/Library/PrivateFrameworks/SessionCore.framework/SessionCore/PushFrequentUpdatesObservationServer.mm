@interface PushFrequentUpdatesObservationServer
- (_TtC11SessionCore36PushFrequentUpdatesObservationServer)init;
- (id)activitiesExceedingReducedPushBudget;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation PushFrequentUpdatesObservationServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CEEB84C(connectionCopy);

  swift_unknownObjectRelease();
}

- (id)activitiesExceedingReducedPushBudget
{
  selfCopy = self;
  v3 = sub_22D015EAC();
  sub_22CEECE5C(v3);

  v4 = sub_22D01684C();

  return v4;
}

- (_TtC11SessionCore36PushFrequentUpdatesObservationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end