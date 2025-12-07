@interface InteractionNotificationsManager
- (void)notificationTriggerDidPostWithNotification:(id)notification;
@end

@implementation InteractionNotificationsManager

- (void)notificationTriggerDidPostWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = specialized InteractionNotificationsManager.notificationTriggerDidPost(notification:)();
  (*(v4 + 8))(v6, v3, v7);
}

@end