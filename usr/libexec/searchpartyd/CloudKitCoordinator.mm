@interface CloudKitCoordinator
- (void)accountDidChange:(id)change;
@end

@implementation CloudKitCoordinator

- (void)accountDidChange:(id)change
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v8 = v7;
    swift_once();
    v7 = v8;
  }

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C388, "CKAccountChanged notification received", 38, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();

  (*(v4 + 8))(v6, v3);
}

@end