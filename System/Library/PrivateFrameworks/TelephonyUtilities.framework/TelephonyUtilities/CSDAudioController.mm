@interface CSDAudioController
- (void)expediteDeferredEndInterruptionForCallWithUUID:(id)d;
@end

@implementation CSDAudioController

- (void)expediteDeferredEndInterruptionForCallWithUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100341520(v7);

  (*(v5 + 8))(v7, v4);
}

@end