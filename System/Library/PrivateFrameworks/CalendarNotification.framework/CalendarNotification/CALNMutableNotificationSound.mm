@interface CALNMutableNotificationSound
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlertTopic:(id)topic;
@end

@implementation CALNMutableNotificationSound

- (void)setAlertTopic:(id)topic
{
  self->super._alertTopic = [topic copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CALNNotificationSound allocWithZone:zone];
  alertType = [(CALNNotificationSound *)self alertType];
  alertTopic = [(CALNNotificationSound *)self alertTopic];
  v7 = [(CALNNotificationSound *)v4 _initWithAlertType:alertType alertTopic:alertTopic];

  return v7;
}

@end