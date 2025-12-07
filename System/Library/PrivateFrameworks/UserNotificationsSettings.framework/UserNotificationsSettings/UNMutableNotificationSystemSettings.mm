@interface UNMutableNotificationSystemSettings
- (void)setScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
@end

@implementation UNMutableNotificationSystemSettings

- (void)setScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  v3 = self->super._modifiedSettings | 0x40;
  self->super._scheduledDeliveryShowNextSummarySetting = setting;
  self->super._modifiedSettings = v3;
}

@end