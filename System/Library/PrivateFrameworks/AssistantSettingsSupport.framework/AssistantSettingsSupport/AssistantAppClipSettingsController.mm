@interface AssistantAppClipSettingsController
+ (id)bundle;
- (AssistantAppClipSettingsController)init;
- (id)learnFromAppClipsEnabled:(id)enabled;
- (id)showInSearchEnabled:(id)enabled;
- (id)specifiers;
- (id)suggestAppClipsEnabled:(id)enabled;
- (void)setLearnFromAppClipsEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowInSearchEnabled:(id)enabled specifier:(id)specifier;
- (void)setSuggestAppClipsEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AssistantAppClipSettingsController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_1;
  if (!bundle_sAssistantBundle_1)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_1;
    bundle_sAssistantBundle_1 = v3;

    v2 = bundle_sAssistantBundle_1;
  }

  return v2;
}

- (AssistantAppClipSettingsController)init
{
  v3.receiver = self;
  v3.super_class = AssistantAppClipSettingsController;
  return [(AssistantAppClipSettingsController *)&v3 init];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = AssistantAppClipSettingsController;
  [(AssistantAppClipSettingsController *)&v3 viewWillAppear:appear];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AssistantAppClipSettingsController;
  [(AssistantAppClipSettingsController *)&v5 viewDidLoad];
  bundle = [objc_opt_class() bundle];
  v4 = [bundle localizedStringForKey:@"APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  [(AssistantAppClipSettingsController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = AssistantAppClipSettingsController;
  [(AssistantAppClipSettingsController *)&v24 viewDidAppear:appear];
  v23 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Siri/ASSISTANT_APP_CLIPS_SETTINGS_ID"];
  v4 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v4 deviceSupported];

  if (deviceSupported)
  {
    v6 = @"Apple Intelligence & Siri";
  }

  else
  {
    v6 = @"Siri";
  }

  v7 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v9 bundleURL];
  v11 = [v7 initWithKey:v6 table:0 locale:currentLocale bundleURL:bundleURL];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v14 bundleURL];
  v16 = [v12 initWithKey:@"App Clips" table:0 locale:currentLocale2 bundleURL:bundleURL2];

  v17 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL3 = [v19 bundleURL];
  v21 = [v17 initWithKey:v6 table:0 locale:currentLocale3 bundleURL:bundleURL3];

  v25[0] = v11;
  v25[1] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [(AssistantAppClipSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.siri" title:v21 localizedNavigationComponents:v22 deepLink:v23];
}

- (id)specifiers
{
  v40[5] = *MEMORY[0x277D85DE8];
  if (!self->_appClipsSuggestionsController)
  {
    mEMORY[0x277CEF5F8] = [MEMORY[0x277CEF5F8] sharedController];
    appClipsSuggestionsController = self->_appClipsSuggestionsController;
    self->_appClipsSuggestionsController = mEMORY[0x277CEF5F8];
  }

  v5 = MEMORY[0x277D3FAD8];
  bundle = [objc_opt_class() bundle];
  v7 = [bundle localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v39 = [v5 groupSpecifierWithName:v7];

  bundle2 = [objc_opt_class() bundle];
  v9 = [bundle2 localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v10 = *MEMORY[0x277D3FF88];
  [v39 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v11 = MEMORY[0x277D3FAD8];
  bundle3 = [objc_opt_class() bundle];
  v13 = [bundle3 localizedStringForKey:@"APP_CLIPS_LEARN_FROM_APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v37 = [v11 preferenceSpecifierNamed:v13 target:self set:sel_setLearnFromAppClipsEnabled_specifier_ get:sel_learnFromAppClipsEnabled_ detail:0 cell:6 edit:0];

  v14 = *MEMORY[0x277D3FD80];
  v15 = MEMORY[0x277CBEC38];
  [v37 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v16 = *MEMORY[0x277D3FF38];
  [v37 setProperty:v15 forKey:*MEMORY[0x277D3FF38]];
  v17 = MEMORY[0x277D3FAD8];
  bundle4 = [objc_opt_class() bundle];
  v19 = [bundle4 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_ONHOMESCREEN_HEADER" value:&stru_285317CF0 table:@"AssistantSettings"];
  v38 = [v17 groupSpecifierWithName:v19];

  bundle5 = [objc_opt_class() bundle];
  v21 = [bundle5 localizedStringForKey:@"APP_CLIPS_IN_SEARCH_FOOTER" value:&stru_285317CF0 table:@"AssistantSettings"];
  [v38 setObject:v21 forKeyedSubscript:v10];

  v22 = MEMORY[0x277D3FAD8];
  bundle6 = [objc_opt_class() bundle];
  v24 = [bundle6 localizedStringForKey:@"APP_CLIPS_SHOW_IN_SEARCH" value:&stru_285317CF0 table:@"AssistantSettings"];
  v25 = [v22 preferenceSpecifierNamed:v24 target:self set:sel_setShowInSearchEnabled_specifier_ get:sel_showInSearchEnabled_ detail:0 cell:6 edit:0];

  v26 = MEMORY[0x277CBEC38];
  [v25 setProperty:MEMORY[0x277CBEC38] forKey:v14];
  [v25 setProperty:v26 forKey:v16];
  v27 = MEMORY[0x277D3FAD8];
  bundle7 = [objc_opt_class() bundle];
  v29 = [bundle7 localizedStringForKey:@"APP_CLIPS_SUGGEST_APP_CLIPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v30 = [v27 preferenceSpecifierNamed:v29 target:self set:sel_setSuggestAppClipsEnabled_specifier_ get:sel_suggestAppClipsEnabled_ detail:0 cell:6 edit:0];

  [v30 setProperty:v26 forKey:v14];
  [v30 setProperty:v26 forKey:v16];
  v40[0] = v39;
  v40[1] = v37;
  v40[2] = v38;
  v40[3] = v25;
  v40[4] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
  v32 = *MEMORY[0x277D3FC48];
  v33 = *(&self->super.super.super.super.super.isa + v32);
  *(&self->super.super.super.super.super.isa + v32) = v31;

  v34 = *(&self->super.super.super.super.super.isa + v32);
  v35 = v34;

  return v34;
}

- (void)setLearnFromAppClipsEnabled:(id)enabled specifier:(id)specifier
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  bOOLValue = [enabled BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setLearnFromAppClipsEnabled:bOOLValue];
}

- (id)learnFromAppClipsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  learnFromAppClipsEnabled = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController learnFromAppClipsEnabled];

  return [v3 numberWithBool:learnFromAppClipsEnabled];
}

- (void)setShowInSearchEnabled:(id)enabled specifier:(id)specifier
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  bOOLValue = [enabled BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setShowInSearchEnabled:bOOLValue];
}

- (id)showInSearchEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  showInSearchEnabled = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController showInSearchEnabled];

  return [v3 numberWithBool:showInSearchEnabled];
}

- (void)setSuggestAppClipsEnabled:(id)enabled specifier:(id)specifier
{
  appClipsSuggestionsController = self->_appClipsSuggestionsController;
  bOOLValue = [enabled BOOLValue];

  [(ASFAppClipsSuggestionsController *)appClipsSuggestionsController setSuggestAppClipsEnabled:bOOLValue];
}

- (id)suggestAppClipsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  suggestAppClipsEnabled = [(ASFAppClipsSuggestionsController *)self->_appClipsSuggestionsController suggestAppClipsEnabled];

  return [v3 numberWithBool:suggestAppClipsEnabled];
}

@end