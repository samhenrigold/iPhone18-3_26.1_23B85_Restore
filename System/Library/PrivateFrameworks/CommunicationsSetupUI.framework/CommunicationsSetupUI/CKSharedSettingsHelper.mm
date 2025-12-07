@interface CKSharedSettingsHelper
- (id)_syncManager;
- (void)setConversationListFilteringEnabled:(BOOL)enabled;
- (void)setReadReceiptsEnabled:(BOOL)enabled;
@end

@implementation CKSharedSettingsHelper

- (void)setReadReceiptsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = MEMORY[0x245D4CF30](@"com.apple.madrid", @"GlobalReadReceiptVersionID");
  v10 = v5;
  if (v5)
  {
    v6 = [v5 integerValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  CFPreferencesSetAppValue(@"GlobalReadReceiptVersionID", [MEMORY[0x277CCABB0] numberWithInteger:v6], @"com.apple.madrid");
  CFPreferencesSetAppValue(@"ReadReceiptsEnabled", [MEMORY[0x277CCABB0] numberWithBool:enabledCopy], @"com.apple.madrid");
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.ReadReceiptsEnabled.changed", 0, 0, 1u);
  notify_post("com.apple.MobileSMS.ReadReceiptsEnabled.shouldUpdateDevices");
  if (PSIsNanoMirroringDomain())
  {
    _syncManager = [(CKSharedSettingsHelper *)self _syncManager];
    v9 = [MEMORY[0x277CBEB98] setWithObject:@"ReadReceiptsEnabled"];
    [_syncManager synchronizeUserDefaultsDomain:@"com.apple.madrid" keys:v9];
  }
}

- (void)setConversationListFilteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    v7 = +[CKSettingsMessagesController syncedSettingsManager];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    [v7 setSettingValue:v8 forKey:4];
  }

  else
  {
    CFPreferencesSetAppValue(@"IncomingMessageAlertFiltration", [MEMORY[0x277CCABB0] numberWithBool:enabledCopy], @"com.apple.MobileSMS");
    CFPreferencesSetAppValue(@"IncomingMessageAlertFiltrationForcedOn", *MEMORY[0x277CBED10], @"com.apple.MobileSMS");
    CFPreferencesSetAppValue(@"MessageFilteringSettingsConfirmed", *MEMORY[0x277CBED28], @"com.apple.MobileSMS");
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertFiltration.changed", 0, 0, 1u);
  v10 = CUTWeakLinkSymbol();
  if (v10)
  {
    v10();
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled2 = [mEMORY[0x277D1A9B8]2 isIntroductionsEnabled];

  if ((isIntroductionsEnabled2 & 1) == 0)
  {
    _syncManager = [(CKSharedSettingsHelper *)self _syncManager];
    v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"IncomingMessageAlertFiltration", @"IncomingMessageAlertFiltrationForcedOn", @"MessageFilteringSettingsConfirmed", 0}];
    [_syncManager synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v13];
  }
}

- (id)_syncManager
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    v2 = objc_alloc_init(v2);
  }

  return v2;
}

@end