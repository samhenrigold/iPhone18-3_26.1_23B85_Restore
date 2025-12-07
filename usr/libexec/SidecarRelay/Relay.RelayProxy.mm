@interface Relay.RelayProxy
- (void)closeDisplayServiceSessionsWithPeerIdentifier:(id)identifier;
- (void)setDisplayServiceSessionsChangedListener:(id)listener;
@end

@implementation Relay.RelayProxy

- (void)setDisplayServiceSessionsChangedListener:(id)listener
{
  v4 = _Block_copy(listener);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10002AA14(sub_100048414, v5);
}

- (void)closeDisplayServiceSessionsWithPeerIdentifier:(id)identifier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10002AC68(v7);

  (*(v5 + 8))(v7, v4);
}

@end