@interface CSDNearbySessionManager
- (CSDNearbySessionManager)initWithAdvertisementID:(id)d;
- (CSDNearbySessionManagerDelegate)delegate;
- (void)advertiseGroupActivityWithAdvertisementID:(id)d;
- (void)setDelegate:(id)delegate;
- (void)stopAdvertisingGroupActivity;
@end

@implementation CSDNearbySessionManager

- (CSDNearbySessionManagerDelegate)delegate
{
  v2 = NearbySessionManager.delegate.getter(self, a2);

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  NearbySessionManager.delegate.setter(delegate);
}

- (CSDNearbySessionManager)initWithAdvertisementID:(id)d
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return NearbySessionManager.init(advertisementID:)(v5);
}

- (void)advertiseGroupActivityWithAdvertisementID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002FD050(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)stopAdvertisingGroupActivity
{
  selfCopy = self;
  sub_1002FDD10();
}

@end