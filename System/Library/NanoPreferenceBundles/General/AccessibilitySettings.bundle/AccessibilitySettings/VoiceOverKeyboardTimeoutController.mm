@interface VoiceOverKeyboardTimeoutController
- (double)valueForSpecifier:(id)specifier;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverKeyboardTimeoutController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverKeyboardTimeoutController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverKeyboardTimeoutControllerDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"KEYBOARD_TIMING_TIMEOUT_FOOTER", @"VoiceOverSettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
    [v8 setProperty:&unk_284E7E618 forKey:*MEMORY[0x277D401A8]];
    [array addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VoiceOverKeyboardTimeoutController;
  [(AccessibilityBridgeBaseController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"KEYBOARD_TIMING_TIMEOUT" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"KEYBOARDS" table:@"VoiceOverSettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL4 = [v3 bundleURL];
  v19 = [v16 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale4 bundleURL:bundleURL4];

  v20 = MEMORY[0x277CF3470];
  v24[0] = v19;
  v24[1] = v15;
  v24[2] = v11;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/KeyboardRow/KEYBOARD_TIMING_TIMEOUT_ID"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

- (double)valueForSpecifier:(id)specifier
{
  actionDetailControllerDelegate = [(VoiceOverKeyboardTimeoutController *)self actionDetailControllerDelegate];
  keyboardTimeout = [actionDetailControllerDelegate keyboardTimeout];
  [keyboardTimeout doubleValue];
  v6 = v5;

  return v6;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  actionDetailControllerDelegate = [(VoiceOverKeyboardTimeoutController *)self actionDetailControllerDelegate];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [actionDetailControllerDelegate setKeyboardTimeout:v5];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(VoiceOverKeyboardTimeoutController *)self valueForSpecifier:specifier];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end