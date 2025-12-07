@interface MetricDetailViewModel
- (void)checLoadingStateWithNotification:(id)notification;
@end

@implementation MetricDetailViewModel

- (void)checLoadingStateWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(*self->metrics + 16);

  sub_1002502B8(v8);

  (*(v5 + 8))(v7, v4);
}

@end