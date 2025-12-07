@interface VoiceOverDelayUntilSpeakController
- (double)valueForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverDelayUntilSpeakController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"DELAY_TO_SPEAK_FOOTER", @"VoiceOverSettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
    [array addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = VoiceOverDelayUntilSpeakController;
  [(AccessibilityBridgeBaseController *)&v19 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"DELAY_TO_SPEAK" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = MEMORY[0x277CF3470];
  v20[0] = v15;
  v20[1] = v11;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/VoiceOverDelayUntilSpeak"];
  [v16 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v17 deepLink:v18];
}

- (double)valueForSpecifier:(id)specifier
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [accessibilityDomainAccessor doubleForKey:*MEMORY[0x277CE7F50]];
  v5 = v4;

  result = 0.0;
  if (v5 >= 0.0)
  {
    return v5;
  }

  return result;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{specifier, value}];
  v5 = *MEMORY[0x277CE7F50];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v7 forKey:v5 domainAccessor:accessibilityDomainAccessor];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(VoiceOverDelayUntilSpeakController *)self valueForSpecifier:specifier];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end