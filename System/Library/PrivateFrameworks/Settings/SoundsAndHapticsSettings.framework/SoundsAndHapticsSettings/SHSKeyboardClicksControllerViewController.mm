@interface SHSKeyboardClicksControllerViewController
+ (NSString)combinedDescription;
- (id)_hapticValue:(id)value;
- (id)specifiers;
- (void)_setHapticValue:(id)value specifier:(id)specifier;
- (void)_setSoundValue:(id)value specifier:(id)specifier;
- (void)_updateReloadSpecifierInParentController;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SHSKeyboardClicksControllerViewController

+ (NSString)combinedDescription
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"keyboard-audio", @"com.apple.preferences.sounds", &keyExistsAndHasValidFormat))
  {
    v2 = 1;
  }

  else
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  v3 = v2;
  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  visceral = [mEMORY[0x277D756A0] visceral];

  v6 = @"SOUND";
  v7 = @"NONE";
  if (visceral)
  {
    v7 = @"HAPTIC";
  }

  if ((v3 & (visceral != 0)) != 0)
  {
    v6 = @"SOUND_AND_HAPTIC";
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = SHS_LocalizedStringForSounds(v8);

  return v9;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SHSKeyboardClicksControllerViewController;
  [(SHSKeyboardClicksControllerViewController *)&v4 loadView];
  v3 = SHS_LocalizedStringForSounds(@"KEYBOARD_FEEDBACK");
  [(SHSKeyboardClicksControllerViewController *)self setTitle:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SHSKeyboardClicksControllerViewController;
  [(SHSKeyboardClicksControllerViewController *)&v4 viewWillAppear:appear];
  [(SHSKeyboardClicksControllerViewController *)self reloadSpecifiers];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SHSKeyboardClicksControllerViewController;
  [(SHSKeyboardClicksControllerViewController *)&v12 viewDidAppear:appear];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = SHS_BundleForSoundsAndHapticsSettingsFramework(currentLocale);
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"KEYBOARD_FEEDBACK" table:@"Sounds" locale:currentLocale bundleURL:bundleURL];

  shs_rootPaneComponent = [MEMORY[0x277CCAEB8] shs_rootPaneComponent];
  v13[0] = shs_rootPaneComponent;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Sounds/KEYBOARD_FEEDBACK"];
  [(SHSKeyboardClicksControllerViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.sound" title:v8 localizedNavigationComponents:v10 deepLink:v11];
}

- (id)specifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = MEMORY[0x277D3FAD8];
    v6 = SHS_LocalizedStringForSounds(@"SOUND");
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:sel__setSoundValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];

    [v7 setProperty:@"com.apple.preferences.sounds" forKey:*MEMORY[0x277D3FEF8]];
    [v7 setProperty:@"keyboard-audio" forKey:*MEMORY[0x277D3FFF0]];
    [v7 setProperty:@"com.apple.preferences.sounds.changed" forKey:*MEMORY[0x277D401A0]];
    [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEF0]];
    v8 = MEMORY[0x277D3FAD8];
    v9 = SHS_LocalizedStringForSounds(@"HAPTIC");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel__setHapticValue_specifier_ get:sel__hapticValue_ detail:0 cell:6 edit:0];

    v14[0] = v7;
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v12 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v11;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_setSoundValue:(id)value specifier:(id)specifier
{
  [(SHSKeyboardClicksControllerViewController *)self setPreferenceValue:value specifier:specifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277CCA858];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [defaultCenter postNotificationName:v6 object:standardUserDefaults];

  [(SHSKeyboardClicksControllerViewController *)self _updateReloadSpecifierInParentController];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.preferences.sounds.keyboard-audio.changed", 0, 0, 1u);
}

- (id)_hapticValue:(id)value
{
  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  v4 = [mEMORY[0x277D756A0] visceral] != 0;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v4];

  return v5;
}

- (void)_setHapticValue:(id)value specifier:(id)specifier
{
  if ([value BOOLValue])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  mEMORY[0x277D756A0] = [MEMORY[0x277D756A0] sharedPreferencesController];
  [mEMORY[0x277D756A0] setVisceral:v5];
  [(SHSKeyboardClicksControllerViewController *)self _updateReloadSpecifierInParentController];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.keyboard.preferences.haptic-feedback.changed", 0, 0, 1u);
}

- (void)_updateReloadSpecifierInParentController
{
  parentController = [(SHSKeyboardClicksControllerViewController *)self parentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentController;
    specifier = [(SHSKeyboardClicksControllerViewController *)self specifier];
    [v3 reloadSpecifier:specifier];
  }
}

@end