@interface TapticChimesScheduleController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TapticChimesScheduleController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TapticChimesScheduleController;
  [(AccessibilityBridgeBaseController *)&v5 viewDidLoad];
  mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
  tapticChimesScheduleLocalizedTitle = [mEMORY[0x277CE6FA8] tapticChimesScheduleLocalizedTitle];
  [(TapticChimesScheduleController *)self setTitle:tapticChimesScheduleLocalizedTitle];
}

- (id)specifiers
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v24 = *MEMORY[0x277D3FC48];
    selfCopy = self;
    mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
    tapticChimesFrequencyOptions = [mEMORY[0x277CE6FA8] tapticChimesFrequencyOptions];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tapticChimesFrequencyOptions, "count") + 1}];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v23 = emptyGroupSpecifier;
    [v6 addObject:emptyGroupSpecifier];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = tapticChimesFrequencyOptions;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v28;
      v12 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          integerValue = [*(*(&v27 + 1) + 8 * i) integerValue];
          v15 = MEMORY[0x277D3FAD8];
          v16 = [mEMORY[0x277CE6FA8] localizedStringForTapticChimesFrequencyEncoding:integerValue];
          v17 = [v15 preferenceSpecifierNamed:v16 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
          [v17 setProperty:v18 forKey:v12];

          [v6 addObject:v17];
          if ([mEMORY[0x277CE6FA8] voiceOverTapticChimesFrequencyEncoding] == integerValue)
          {
            v19 = v17;

            v10 = v19;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [v23 setProperty:v10 forKey:*MEMORY[0x277D40090]];
    v20 = *(&selfCopy->super.super.super.super.super.super.isa + v24);
    *(&selfCopy->super.super.super.super.super.super.isa + v24) = v6;
    v21 = v6;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v24);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TapticChimesScheduleController;
  [(AccessibilityBridgeBaseController *)&v21 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (([v3 isLoaded] & 1) == 0)
  {
    [v3 load];
  }

  bundleURL = [v3 bundleURL];

  if (bundleURL)
  {
    v5 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL2 = [v3 bundleURL];
    v8 = [v5 initWithKey:@"TAPTIC_CHIMES_SCHEDULE_TITLE" table:@"Localizable" locale:currentLocale bundleURL:bundleURL2];

    v9 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL3 = [v3 bundleURL];
    v12 = [v9 initWithKey:@"TAPTIC_CHIMES_TITLE" table:@"Localizable" locale:currentLocale2 bundleURL:bundleURL3];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL4 = [v13 bundleURL];
    v17 = [v14 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL4];

    v18 = MEMORY[0x277CF3470];
    v22[0] = v17;
    v22[1] = v12;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v20 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=TapticChimesCell/CHIMES_SCHEDULE_ID"];
    [v18 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v8 localizedNavigationComponents:v19 deepLink:v20];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = TapticChimesScheduleController;
  pathCopy = path;
  [(TapticChimesScheduleController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(TapticChimesScheduleController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];
  specifiers = [(TapticChimesScheduleController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(TapticChimesScheduleController *)self specifierAtIndex:[(TapticChimesScheduleController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    v15 = v14;
    if (v14)
    {
      integerValue = [v14 integerValue];
      mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
      [mEMORY[0x277CE6FA8] setVoiceOverTapticChimesFrequencyEncoding:integerValue];

      [(TapticChimesScheduleController *)self reloadSpecifiers];
    }
  }
}

@end