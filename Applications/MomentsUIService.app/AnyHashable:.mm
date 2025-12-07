@interface AnyHashable:
- (double)Any;
- (void)Any;
@end

@implementation AnyHashable:

- (double)Any
{
  v6 = *(self + 32);
  if (a4)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a3;
  v6(a2, a3, v7);

  return result;
}

- (void)Any
{
  v4 = *(self + 32);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a2;
  v4(a2, v5);
}

@end