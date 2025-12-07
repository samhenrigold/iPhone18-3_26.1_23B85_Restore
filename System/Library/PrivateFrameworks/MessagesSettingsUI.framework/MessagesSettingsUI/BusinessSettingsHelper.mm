@interface BusinessSettingsHelper
- (BOOL)areBusinessUpdatesEnabled;
- (void)setRCSBusinessMessagesEnabled:(BOOL)enabled;
@end

@implementation BusinessSettingsHelper

- (void)setRCSBusinessMessagesEnabled:(BOOL)enabled
{
  CFPreferencesSetAppValue(@"RCSForBusinessEnabled", [MEMORY[0x277CCABB0] numberWithBool:enabled], @"com.apple.madrid");
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.ReadReceiptsEnabled.changed", 0, 0, 1u);
}

- (BOOL)areBusinessUpdatesEnabled
{
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"RCSForBusinessEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

@end