@interface CallHangUpSettingConfig
+ (BOOL)enabled;
+ (id)localizationFooterKey;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation CallHangUpSettingConfig

+ (id)localizationFooterKey
{
  v3 = +[AssistantUtilities deviceIsiPhone];
  v4 = @"_IPAD";
  if (v3)
  {
    v4 = @"_IPHONE";
  }

  v5 = v4;
  localizationKey = [self localizationKey];
  v7 = [localizationKey stringByAppendingString:v5];

  return v7;
}

+ (BOOL)enabled
{
  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  canUseVoiceTriggerDuringPhoneCall = [mEMORY[0x277D7A8D0] canUseVoiceTriggerDuringPhoneCall];

  return canUseVoiceTriggerDuringPhoneCall;
}

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v4 = objc_alloc_init(AssistantSettingsSignalEmitter);
    [(AssistantSettingsSignalEmitter *)v4 emitCallHangUpEnabledSignal];
  }

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  [mEMORY[0x277D7A8D0] setCanUseVoiceTriggerDuringPhoneCall:enabledCopy];
}

@end