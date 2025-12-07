@interface AVSSettings
+ (BOOL)avsFeatureEnabled;
+ (BOOL)shouldHideAudioDonationPrompt;
+ (void)setAvsFeatureEnabled:(BOOL)enabled;
+ (void)setShouldHideAudioDonationPrompt:(BOOL)prompt;
+ (void)setVocalShortcutsEnabled:(BOOL)enabled source:(id)source;
- (AVSSettings)init;
@end

@implementation AVSSettings

+ (BOOL)avsFeatureEnabled
{
  sharedInstance = [objc_opt_self() sharedInstance];
  isAdaptiveVoiceShortcutsEnabled = [sharedInstance isAdaptiveVoiceShortcutsEnabled];

  return isAdaptiveVoiceShortcutsEnabled;
}

+ (void)setAvsFeatureEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance setAdaptiveVoiceShortcutsEnabled:enabledCopy source:*MEMORY[0x277CE7CE0]];
}

+ (void)setVocalShortcutsEnabled:(BOOL)enabled source:(id)source
{
  enabledCopy = enabled;
  v6 = objc_opt_self();
  sourceCopy = source;
  sharedInstance = [v6 sharedInstance];
  [sharedInstance setAdaptiveVoiceShortcutsEnabled:enabledCopy source:sourceCopy];
}

+ (BOOL)shouldHideAudioDonationPrompt
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_23E82EA5C();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

+ (void)setShouldHideAudioDonationPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v5 = sub_23E82EA5C();
  [standardUserDefaults setBool:promptCopy forKey:v5];
}

- (AVSSettings)init
{
  v3.receiver = self;
  v3.super_class = AVSSettings;
  return [(AVSSettings *)&v3 init];
}

@end