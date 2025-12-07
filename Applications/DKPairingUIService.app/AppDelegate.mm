@interface AppDelegate
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (_TtC18DKPairingUIService11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:role];

  return v9;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_10000E6BC(v8, v9, v10, v11, v12);
  (*(v6 + 8))(v8, v5);
  return v13 & 1;
}

- (_TtC18DKPairingUIService11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end