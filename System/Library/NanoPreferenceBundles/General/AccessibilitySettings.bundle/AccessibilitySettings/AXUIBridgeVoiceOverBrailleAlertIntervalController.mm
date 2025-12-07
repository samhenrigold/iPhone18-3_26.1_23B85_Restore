@interface AXUIBridgeVoiceOverBrailleAlertIntervalController
- (double)numericalPreferenceValue;
- (void)setNumericalPreferenceValueFromUser:(double)user;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXUIBridgeVoiceOverBrailleAlertIntervalController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXUIBridgeVoiceOverBrailleAlertIntervalController;
  [(AXUISettingsNumericalPickerViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_nanoSettingsChanged_ name:@"AXNanoPreferencesSettingsChangedNotification" object:0];
}

- (double)numericalPreferenceValue
{
  v2 = +[AccessibilityBridgeBaseController accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FD8]];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x277CE69D8];
  }

  return v5;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:user];
  [v4 setGizmoAccessibilityPref:v5 forKey:*MEMORY[0x277CE7FD8]];
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = AXUIBridgeVoiceOverBrailleAlertIntervalController;
  [(AXUIBridgeVoiceOverBrailleAlertIntervalController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"BRAILLE_DISPLAY_TIMEOUT" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"BRAILLE" table:@"VoiceOverSettings" locale:currentLocale2 bundleURL:bundleURL2];

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
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/BrailleRow/voiceOverBrailleAlertDisplayDuration"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

@end