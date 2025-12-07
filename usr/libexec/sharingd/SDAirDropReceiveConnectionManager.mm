@interface SDAirDropReceiveConnectionManager
- (void)contactHashsesChangedWithNotification:(id)notification;
@end

@implementation SDAirDropReceiveConnectionManager

- (void)contactHashsesChangedWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10036B918();

  (*(v4 + 8))(v6, v3);
}

@end