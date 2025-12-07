@interface PARBagConfigFactory
- (id)loadWithData:(id)data userAgent:(id)agent userDefaults:(id)defaults;
- (id)loadWithUrl:(id)url userAgent:(id)agent userDefaults:(id)defaults;
@end

@implementation PARBagConfigFactory

- (id)loadWithUrl:(id)url userAgent:(id)agent userDefaults:(id)defaults
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (agent)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    agent = v13;
  }

  else
  {
    v12 = 0;
  }

  defaultsCopy = defaults;
  selfCopy = self;
  v16 = sub_1001019D8(v11, v12, agent, defaults);

  (*(v9 + 8))(v11, v8);

  return v16;
}

- (id)loadWithData:(id)data userAgent:(id)agent userDefaults:(id)defaults
{
  dataCopy = data;
  selfCopy = self;
  agentCopy = agent;
  defaultsCopy = defaults;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (agentCopy)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = sub_100101C2C(v12, v14, v15, v17, defaultsCopy);

  sub_100014A40(v12, v14);

  return v18;
}

@end