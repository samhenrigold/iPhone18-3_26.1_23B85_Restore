@interface DashboardViewModel
- (void)checLoadingStateWithNotification:(id)notification;
- (void)reloadDataWithNotification:(id)notification;
@end

@implementation DashboardViewModel

- (void)reloadDataWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100273BB0(v7);

  (*(v4 + 8))(v6, v3);
}

- (void)checLoadingStateWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(*&self->metrics[7] + 16);

  sub_100274800(v8, 0);

  (*(v5 + 8))(v7, v4);
}

@end