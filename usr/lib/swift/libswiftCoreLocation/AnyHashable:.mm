@interface AnyHashable:
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v3 = *(self + 32);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3(v4, v6, v7);
}

@end