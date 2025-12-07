@interface AppDelegate
- (_TtC16CoreIDVUIService11AppDelegate)init;
@end

@implementation AppDelegate

- (_TtC16CoreIDVUIService11AppDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  (*(v5 + 8))(v7, v4);
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(AppDelegate *)&v10 init];

  return v8;
}

@end