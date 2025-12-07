@interface OffloadConnectionEstablished
- (NSDictionary)dictionaryRepresentation;
- (NSString)name;
- (void)setName:(id)name;
@end

@implementation OffloadConnectionEstablished

- (NSString)name
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_beginAccess();
  *(self + 3) = v4;
  *(self + 4) = v6;
}

- (NSDictionary)dictionaryRepresentation
{

  sub_1000DF7A8();

  sub_1000C8C30(&unk_1001BD630, &unk_10015DAA0);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end