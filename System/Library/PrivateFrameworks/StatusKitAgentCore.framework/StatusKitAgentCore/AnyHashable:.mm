@interface AnyHashable:
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v5 = a3;
  v6 = *(self + 32);
  if (a2)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

@end