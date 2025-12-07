@interface AppDelegate
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (_TtC6Health11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)buildMenuWithBuilder:(id)builder;
- (void)setWindow:(id)window;
@end

@implementation AppDelegate

- (_TtC6Health11AppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate____lazy_storage___pluginNotificationRouter) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100003E7C(&unk_1000DC670, 255, type metadata accessor for LaunchOptionsKey, &unk_1000ADB2C);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_100003308();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

  return v9;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  applicationCopy = application;
  selfCopy = self;
  sub_10001CC90();
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10003A0E8(builder);
  swift_unknownObjectRelease();
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC6Health11AppDelegate_window) = window;
  windowCopy = window;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_100003E7C(&qword_1000DA758, 255, type metadata accessor for OpenURLOptionsKey, &unk_1000ADB70);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  v14 = sub_10005696C(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_100069AC8(application, v8, v10, optionsCopy);

  return v13 & 1;
}

@end