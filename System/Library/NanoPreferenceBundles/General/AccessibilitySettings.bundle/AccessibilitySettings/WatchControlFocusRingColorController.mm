@interface WatchControlFocusRingColorController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WatchControlFocusRingColorController

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v20 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v19 = emptyGroupSpecifier;
    [array addObject:emptyGroupSpecifier];
    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    focusRingColor = [mEMORY[0x277D7A910] focusRingColor];

    v8 = 0;
    v9 = 0;
    v10 = *MEMORY[0x277D401A8];
    do
    {
      v11 = MEMORY[0x277D3FAD8];
      v12 = WCNameForCursorColor();
      v13 = [v11 preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      [v13 setProperty:v14 forKey:v10];

      [array addObject:v13];
      if (focusRingColor == v9)
      {
        v15 = v13;

        v8 = v15;
      }

      ++v9;
    }

    while (v9 != 8);
    [v19 setProperty:v8 forKey:*MEMORY[0x277D40090]];
    v16 = *(&self->super.super.super.super.super.super.isa + v20);
    *(&self->super.super.super.super.super.super.isa + v20) = array;
    v17 = array;

    v3 = *(&self->super.super.super.super.super.super.isa + v20);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = WatchControlFocusRingColorController;
  [(AccessibilityBridgeBaseController *)&v19 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"WATCH_CONTROL_FOCUS_RING_COLOR" table:@"AccessibilitySettings-watchcontrol" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"WATCH_CONTROL_ROW_TITLE" table:@"AccessibilitySettings-watchcontrol" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = MEMORY[0x277CF3470];
  v20[0] = v15;
  v20[1] = v11;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=WATCH_CONTROL_ROW_ID/COLOR_ID"];
  [v16 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v17 deepLink:v18];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = WatchControlFocusRingColorController;
  pathCopy = path;
  [(WatchControlFocusRingColorController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(WatchControlFocusRingColorController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(WatchControlFocusRingColorController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(WatchControlFocusRingColorController *)self specifierAtIndex:[(WatchControlFocusRingColorController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      [mEMORY[0x277D7A910] setFocusRingColor:{objc_msgSend(v14, "unsignedIntegerValue")}];

      [(WatchControlFocusRingColorController *)self reloadSpecifiers];
    }
  }
}

@end