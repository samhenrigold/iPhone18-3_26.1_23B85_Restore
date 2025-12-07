@interface CAFDAgent
- (NSString)domain;
- (_TtC13caraccessoryd9CAFDAgent)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation CAFDAgent

- (_TtC13caraccessoryd9CAFDAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized CAFDAgent.listener(_:didReceive:withContext:)(connectionCopy);

  swift_unknownObjectRelease();
}

- (NSString)domain
{
  type metadata accessor for CAFDAgent.Configuration(0);

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end