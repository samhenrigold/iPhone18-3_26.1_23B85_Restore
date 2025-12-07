@interface BalanceWidgetSchedulingManager
- (_TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager)init;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation BalanceWidgetSchedulingManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *&self->widgetReloader[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider];
  v5 = swift_getObjectType();
  v6 = *(v4 + 16);
  selfCopy = self;
  swift_unknownObjectRetain();
  v6(selfCopy, &off_283BD4620, v5, v4);
  swift_unknownObjectRelease();

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(BalanceWidgetSchedulingManager *)&v8 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  selfCopy = self;
  sub_2288F37AC(readyCopy);
}

- (_TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end