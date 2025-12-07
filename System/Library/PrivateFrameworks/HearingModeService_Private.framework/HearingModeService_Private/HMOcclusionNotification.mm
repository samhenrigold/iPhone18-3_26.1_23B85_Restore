@interface HMOcclusionNotification
+ (HMOcclusionNotification)sharedInstance;
- (BOOL)_hasOcclusionNotificationsThresholdMet;
- (HMOcclusionNotification)init;
- (id)_deviceIconForProductID:(unsigned int)d;
- (id)_getStringPreferencesForKey:(id)key;
- (void)_hasOcclusionNotificationsThresholdMet;
- (void)_setPreferencesForKey:(id)key withStringValue:(id)value;
- (void)_showHearingProtectionOcclusionNotification:(unsigned int)notification;
- (void)invalidateHearingProtectionOcclusionNotification;
- (void)presentCleaningInfoArticle;
- (void)showHearingProtectionOcclusionNotification:(unsigned int)notification forAddress:(id)address;
@end

@implementation HMOcclusionNotification

+ (HMOcclusionNotification)sharedInstance
{
  if (sharedInstance_sOnce_2 != -1)
  {
    +[HMOcclusionNotification sharedInstance];
  }

  v3 = sharedInstance_sSelf_2;

  return v3;
}

uint64_t __41__HMOcclusionNotification_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMOcclusionNotification);
  v1 = sharedInstance_sSelf_2;
  sharedInstance_sSelf_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMOcclusionNotification)init
{
  v6.receiver = self;
  v6.super_class = HMOcclusionNotification;
  v2 = [(HMOcclusionNotification *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)invalidateHearingProtectionOcclusionNotification
{
  uiNotificationSessionHearingProtection = self->_uiNotificationSessionHearingProtection;
  if (uiNotificationSessionHearingProtection)
  {
    [(CUUserNotificationSession *)uiNotificationSessionHearingProtection invalidate];
    v4 = self->_uiNotificationSessionHearingProtection;
    self->_uiNotificationSessionHearingProtection = 0;
  }
}

- (void)presentCleaningInfoArticle
{
  presentCleaningInfoArticle = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://support.apple.com/120409?cid=mc-ols-airpods-article_120409-settings_ui-08232024"];
  v4 = presentCleaningInfoArticle;
  if (presentCleaningInfoArticle)
  {
    v7 = presentCleaningInfoArticle;
    if (gLogCategory_HMOcclusionNotification <= 30)
    {
      if (gLogCategory_HMOcclusionNotification != -1 || (presentCleaningInfoArticle = _LogCategory_Initialize(), presentCleaningInfoArticle))
      {
        [(HMOcclusionNotification *)presentCleaningInfoArticle presentCleaningInfoArticle];
      }
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v6 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/120409?cid=mc-ols-airpods-article_120409-settings_ui-08232024"];
    [defaultWorkspace openSensitiveURL:v6 withOptions:0];

    goto LABEL_6;
  }

  if (gLogCategory_HMOcclusionNotification <= 30)
  {
    v7 = 0;
    if (gLogCategory_HMOcclusionNotification != -1 || (presentCleaningInfoArticle = _LogCategory_Initialize(), v4 = 0, presentCleaningInfoArticle))
    {
      presentCleaningInfoArticle = [(HMOcclusionNotification *)presentCleaningInfoArticle presentCleaningInfoArticle];
LABEL_6:
      v4 = v7;
    }
  }

  MEMORY[0x2821F96F8](presentCleaningInfoArticle, v4);
}

- (void)showHearingProtectionOcclusionNotification:(unsigned int)notification forAddress:(id)address
{
  v4 = *&notification;
  objc_storeStrong(&self->_btAddress, address);

  [(HMOcclusionNotification *)self _showHearingProtectionOcclusionNotification:v4];
}

- (void)_showHearingProtectionOcclusionNotification:(unsigned int)notification
{
  v3 = *&notification;
  if (self->_uiNotificationSessionHearingProtection)
  {
    [(HMOcclusionNotification *)self invalidateHearingProtectionOcclusionNotification];
  }

  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.HearingModeUserNotifications.bundle"];
  v6 = objc_alloc_init(MEMORY[0x277D02948]);
  uiNotificationSessionHearingProtection = self->_uiNotificationSessionHearingProtection;
  self->_uiNotificationSessionHearingProtection = v6;

  [(CUUserNotificationSession *)v6 setBundleID:@"com.apple.HearingModeUserNotifications"];
  [(CUUserNotificationSession *)v6 setCategoryID:@"HearingModeUserNotifications"];
  [(CUUserNotificationSession *)v6 setDispatchQueue:self->_dispatchQueue];
  [(CUUserNotificationSession *)v6 setFlags:17];
  [(CUUserNotificationSession *)v6 setLabel:@"HearingMode"];
  v8 = CULocalizedStringEx();
  [(CUUserNotificationSession *)v6 setBodyKey:v8];

  v9 = CULocalizedStringEx();
  [(CUUserNotificationSession *)v6 setTitleKey:v9];

  v10 = [(HMOcclusionNotification *)self _deviceIconForProductID:v3];
  [(CUUserNotificationSession *)v6 setIcon:v10];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 pathForResource:@"NotificationAudioTone" ofType:@"wav"];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
  if (v13)
  {
    v14 = [MEMORY[0x277CE1F70] soundWithAlertType:16];
    [v14 setToneFileURL:v13];
    [(CUUserNotificationSession *)v6 setSound:v14];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke;
  v19[3] = &unk_2796F06C8;
  v19[4] = v6;
  v19[5] = self;
  [(CUUserNotificationSession *)v6 setActionHandler:v19];
  [(CUUserNotificationSession *)v6 activate];
  v15 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v15 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (gLogCategory_HMOcclusionNotification <= 30 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
  {
    [HMOcclusionNotification _showHearingProtectionOcclusionNotification:v15];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v17 = [v15 stringFromDate:date];
  [(HMOcclusionNotification *)self _setPreferencesForKey:@"OcclusionNotificationShownDate" withStringValue:v17];

  v18 = +[HMDeviceManager sharedInstance];
  [v18 occlusionIndicationShownForDeviceAddress:self->_btAddress featureID:2 type:1 action:0];
}

void __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    v8 = v5;
    if (gLogCategory_HMOcclusionNotification <= 30 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke_cold_1(v3, v8);
    }

    if (v3 == 1)
    {
      v7 = +[HMDeviceManager sharedInstance];
      [v7 occlusionIndicationShownForDeviceAddress:*(*(a1 + 40) + 16) featureID:2 type:1 action:3];

      [*(a1 + 40) presentCleaningInfoArticle];
    }

    else if (v3 != 5)
    {
      v5 = v8;
      if (v3 != 2)
      {
        goto LABEL_11;
      }

      v6 = +[HMDeviceManager sharedInstance];
      [v6 occlusionIndicationShownForDeviceAddress:*(*(a1 + 40) + 16) featureID:2 type:1 action:1];
    }

    [*(a1 + 40) invalidateHearingProtectionOcclusionNotification];
    v5 = v8;
  }

LABEL_11:
}

- (BOOL)_hasOcclusionNotificationsThresholdMet
{
  v2 = [(HMOcclusionNotification *)self _getStringPreferencesForKey:@"OcclusionNotificationShownDate"];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v6 = [v4 dateFromString:v2];

    v7 = objc_alloc(MEMORY[0x277CBEA80]);
    v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v9 = [v8 components:28 fromDate:v6 toDate:date options:0];
    if (gLogCategory_HMOcclusionNotification <= 30 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      [(HMOcclusionNotification *)v4 _hasOcclusionNotificationsThresholdMet];
    }

    v10 = [v9 year] > 0 || objc_msgSend(v9, "month") > 0 || objc_msgSend(v9, "day") > 14;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_setPreferencesForKey:(id)key withStringValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  [valueCopy UTF8String];
  [valueCopy length];

  CFPrefs_SetCString();

  CFPreferencesAppSynchronize(@"com.apple.HearingModeService");
}

- (id)_getStringPreferencesForKey:(id)key
{
  v6[13] = *MEMORY[0x277D85DE8];
  LODWORD(v6[0]) = 0;
  keyCopy = key;
  CFPreferencesAppSynchronize(@"com.apple.HearingModeService");
  CFPrefs_GetCString();

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v6 + 4, v6[0]}];

  return v4;
}

- (id)_deviceIconForProductID:(unsigned int)d
{
  v3 = *&d;
  v5 = [(HMOcclusionNotification *)self _iconTypeForProductID:?];
  if (v5)
  {
    goto LABEL_6;
  }

  if (gLogCategory_HMOcclusionNotification <= 90 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
  {
    [HMOcclusionNotification _deviceIconForProductID:v3];
  }

  v5 = [(HMOcclusionNotification *)self _iconTypeForProductID:8212];
  if (v5)
  {
LABEL_6:
    v6 = v5;
    v7 = MEMORY[0x277CE1FB0];
    identifier = [v5 identifier];
    v9 = [v7 iconWithUTI:identifier];
  }

  else
  {
    if (gLogCategory_HMOcclusionNotification <= 90 && (gLogCategory_HMOcclusionNotification != -1 || _LogCategory_Initialize()))
    {
      [HMOcclusionNotification _deviceIconForProductID:];
    }

    v9 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"airpods.pro"];
  }

  return v9;
}

- (void)_showHearingProtectionOcclusionNotification:(void *)a1 .cold.1(void *a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [a1 stringFromDate:v2];
  LogPrintF(&gLogCategory_HMOcclusionNotification, "[HMOcclusionNotification _showHearingProtectionOcclusionNotification:]", 30, "Hearing Protection Occlusion Notification shown at: %@", v3);
}

uint64_t __71__HMOcclusionNotification__showHearingProtectionOcclusionNotification___block_invoke_cold_1(unsigned int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_2796F06E8[a1];
  }

  return LogPrintF(&gLogCategory_HMOcclusionNotification, "[HMOcclusionNotification _showHearingProtectionOcclusionNotification:]_block_invoke", 30, "HearingModeUserNotifications UINotificationSession action: %s, %{error}", v4, a2, v2, v3);
}

- (void)_hasOcclusionNotificationsThresholdMet
{
  v7 = [self stringFromDate:a2];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [self stringFromDate:date];
  LogPrintF(&gLogCategory_HMOcclusionNotification, "-[HMOcclusionNotification _hasOcclusionNotificationsThresholdMet]", 30, "Previous shown date %@ current Date: %@ Difference in date components: days %i months %i years %i", v7, v6, [a3 day], objc_msgSend(a3, "month"), objc_msgSend(a3, "year"));
}

@end