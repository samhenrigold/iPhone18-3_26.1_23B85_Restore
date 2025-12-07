@interface CSDGroupIDSPendingChat
- (CSDGroupIDSPendingChat)initWithUUID:(id)d handle:(id)handle;
- (TUHandle)handle;
@end

@implementation CSDGroupIDSPendingChat

- (TUHandle)handle
{
  v2 = sub_1003D539C();

  return v2;
}

- (CSDGroupIDSPendingChat)initWithUUID:(id)d handle:(id)handle
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1003D53A8(v7, handle);
}

@end