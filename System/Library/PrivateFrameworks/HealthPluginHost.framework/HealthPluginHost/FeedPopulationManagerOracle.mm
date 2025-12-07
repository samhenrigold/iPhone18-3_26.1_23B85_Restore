@interface FeedPopulationManagerOracle
- (void)debuggingInfoRequestedWithNote:(id)note;
- (void)storeDidUpdateWithNote:(id)note;
@end

@implementation FeedPopulationManagerOracle

- (void)storeDidUpdateWithNote:(id)note
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100024C88();

  (*(v4 + 8))(v6, v3);
}

- (void)debuggingInfoRequestedWithNote:(id)note
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100025160();

  (*(v4 + 8))(v6, v3);
}

@end