@interface AudioCallModelManager
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callStatusChanged:(id)changed;
- (void)secondTickNotification:(id)notification;
@end

@implementation AudioCallModelManager

- (void)secondTickNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v6, v3);
}

- (void)callStatusChanged:(id)changed
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001D7EDC();

  (*(v4 + 8))(v6, v3);
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{

  sub_1001D8E54();
}

@end