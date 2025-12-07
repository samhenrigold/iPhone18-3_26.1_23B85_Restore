@interface ICSMessageStoreClient
- (void)urlForVideoMessageWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation ICSMessageStoreClient

- (void)urlForVideoMessageWithUUID:(id)d completionHandler:(id)handler
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_100154C28(v9, sub_100155C2C, v11);

  (*(v7 + 8))(v9, v6);
}

@end