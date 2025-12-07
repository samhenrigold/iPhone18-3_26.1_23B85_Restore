@interface AssistantSiriInCallController
+ (BOOL)isSettingEnabled;
+ (BOOL)isSettingSupported;
+ (Class)_config;
+ (id)bundle;
+ (id)localizedSettingName;
- (id)_localizedFooterText;
- (id)_localizedHangUpTriggerPhrase;
- (id)enabled:(id)enabled;
- (id)specifiers;
- (void)_localizedHangUpTriggerPhrase;
- (void)setEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AssistantSiriInCallController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle;
  if (!bundle_sAssistantBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle;
    bundle_sAssistantBundle = v3;

    v2 = bundle_sAssistantBundle;
  }

  return v2;
}

+ (BOOL)isSettingSupported
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  _config = [self _config];

  return [_config supported];
}

+ (BOOL)isSettingEnabled
{
  _config = [self _config];

  return [_config enabled];
}

+ (id)localizedSettingName
{
  bundle = [self bundle];
  v4 = [objc_msgSend(self "_config")];
  v5 = [bundle localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantSettings"];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = AssistantSiriInCallController;
  [(AssistantSiriInCallController *)&v3 viewWillAppear:appear];
}

- (id)specifiers
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SIRI_IN_CALL_GROUP"];
    _localizedFooterText = [(AssistantSiriInCallController *)self _localizedFooterText];
    [v5 setProperty:_localizedFooterText forKey:*MEMORY[0x277D3FF88]];

    v7 = MEMORY[0x277D3FAD8];
    v8 = +[AssistantSiriInCallController localizedSettingName];
    v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setEnabled_specifier_ get:sel_enabled_ detail:0 cell:6 edit:0];

    v13[0] = v5;
    v13[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v11 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v10;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = AssistantSiriInCallController;
  [(AssistantSiriInCallController *)&v23 viewDidAppear:appear];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Siri/SIRI_IN_CALL_ID"];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"Call Hang Up" table:0 locale:currentLocale bundleURL:bundleURL];

  v9 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  LODWORD(v6) = [v9 deviceSupported];

  if (v6)
  {
    v10 = @"Apple Intelligence & Siri";
  }

  else
  {
    v10 = @"Siri";
  }

  v11 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v13 bundleURL];
  v15 = [v11 initWithKey:v10 table:0 locale:currentLocale2 bundleURL:bundleURL2];

  v16 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL3 = [v18 bundleURL];
  v20 = [v16 initWithKey:@"Call Hang Up" table:0 locale:currentLocale3 bundleURL:bundleURL3];

  v24[0] = v15;
  v24[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [(AssistantSiriInCallController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.siri" title:v8 localizedNavigationComponents:v21 deepLink:v22];
}

+ (Class)_config
{
  v2 = objc_opt_class();
  if (AFSupportsSiriInCall())
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (id)enabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(objc_class *)+[AssistantSiriInCallController enabled:enabled]];

  return [v3 numberWithBool:v4];
}

- (void)setEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = +[AssistantSiriInCallController _config];
  bOOLValue = [enabledCopy BOOLValue];

  [(objc_class *)v5 setEnabled:bOOLValue];
}

- (id)_localizedFooterText
{
  localizationFooterKey = [(objc_class *)+[AssistantSiriInCallController _config](AssistantSiriInCallController localizationFooterKey];
  v4 = [localizationFooterKey stringByAppendingString:@"_EXPLANATION"];

  if ((MEMORY[0x245CE5E80]() & 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@"_HEADPHONES_ONLY"];

    v4 = v5;
  }

  bundle = [(AssistantSiriInCallController *)self bundle];
  v7 = [bundle localizedStringForKey:v4 value:&stru_285317CF0 table:@"AssistantSettings"];

  v8 = +[AssistantSiriInCallController _config];
  if (v8 == objc_opt_class())
  {
    _localizedHangUpTriggerPhrase = [(AssistantSiriInCallController *)self _localizedHangUpTriggerPhrase];
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, _localizedHangUpTriggerPhrase];

    v7 = v10;
  }

  return v7;
}

- (id)_localizedHangUpTriggerPhrase
{
  v21 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  v6 = [mEMORY[0x277D7A8D0] localizedTriggerPhraseForLanguageCode:languageCode];

  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  bundle = [(AssistantSiriInCallController *)self bundle];
  v9 = [mEMORY[0x277CEF2D8] localizedStringForKey:@"CALL_HANG_UP_TRIGGER_PHRASE" table:@"AssistantSettings" bundle:bundle languageCode:languageCode];

  if ([v6 length] && objc_msgSend(v9, "length"))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v6];
    v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[AssistantSiriInCallController _localizedHangUpTriggerPhrase]";
      v17 = 2112;
      v18 = languageCode;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2413B9000, v12, OS_LOG_TYPE_DEFAULT, "%s languageCode: %@, triggerPhrase: %@", buf, 0x20u);
    }
  }

  else
  {
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AssistantSiriInCallController *)languageCode _localizedHangUpTriggerPhrase];
    }

    v11 = &stru_285317CF0;
  }

  return v11;
}

- (void)_localizedHangUpTriggerPhrase
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[AssistantSiriInCallController _localizedHangUpTriggerPhrase]";
  v4 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_2413B9000, a2, OS_LOG_TYPE_ERROR, "%s Missing localization for trigger phrase, languageCode: %@", &v2, 0x16u);
}

@end