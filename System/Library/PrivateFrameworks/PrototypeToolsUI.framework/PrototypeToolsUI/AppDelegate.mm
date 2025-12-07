@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC10prototyped11AppDelegate)init;
- (void)killSpringBoard;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000B4E8(&qword_10001F9C0, type metadata accessor for LaunchOptionsKey, &unk_100013C44);
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_10000A800(options);

  return v9 & 1;
}

- (_TtC10prototyped11AppDelegate)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController) = 0;
  v4 = OBJC_IVAR____TtC10prototyped11AppDelegate_listener;
  *(&self->super.isa + v4) = [objc_allocWithZone(type metadata accessor for Listener()) init];
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(AppDelegate *)&v7 init];

  return v5;
}

- (void)killSpringBoard
{
  sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  selfCopy = self;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = selfCopy;
  sub_100008460(0, 0, v4, &unk_100013A68, v8);
}

@end