@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC13PCViewService11AppDelegate)init;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10002C94C();
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_10002C7D4(optionsCopy);

  return v9 & 1;
}

- (_TtC13PCViewService11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end