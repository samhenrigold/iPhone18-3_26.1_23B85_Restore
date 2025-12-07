@interface SFDefaults
+ (void)setHasSeenAnnounceNotifications:(BOOL)notifications;
+ (void)setSiriNotificationsPrompted:(unint64_t)prompted;
@end

@implementation SFDefaults

+ (void)setSiriNotificationsPrompted:(unint64_t)prompted
{
  CFPrefs_SetInt64();

  CFPreferencesAppSynchronize(@"com.apple.Sharing");
}

+ (void)setHasSeenAnnounceNotifications:(BOOL)notifications
{
  CFPrefs_SetValue();

  CFPreferencesAppSynchronize(@"com.apple.Sharing");
}

@end