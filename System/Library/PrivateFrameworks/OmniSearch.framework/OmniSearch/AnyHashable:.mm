@interface AnyHashable:
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v4 = *(self + 32);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v5, a3);
}

@end