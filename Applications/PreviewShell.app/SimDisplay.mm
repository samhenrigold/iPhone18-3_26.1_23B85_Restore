@interface SimDisplay
- (FBSDisplayConfiguration)displayConfiguration;
- (NSString)name;
- (_TtC12PreviewShell10SimDisplay)init;
- (_TtC12PreviewShell10SimDisplay)initWithName:(id)name displayID:(unsigned int)d displayConfiguration:(id)configuration capabilitiesPath:(id)path;
@end

@implementation SimDisplay

- (NSString)name
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = [*(self + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities + 8) displayConfiguration];

  return displayConfiguration;
}

- (_TtC12PreviewShell10SimDisplay)initWithName:(id)name displayID:(unsigned int)d displayConfiguration:(id)configuration capabilitiesPath:(id)path
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (path)
  {
    path = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  configurationCopy = configuration;
  sub_10000FC78(v9, v11, d, configurationCopy, path, v13);
  v16 = v15;

  return v16;
}

- (_TtC12PreviewShell10SimDisplay)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end