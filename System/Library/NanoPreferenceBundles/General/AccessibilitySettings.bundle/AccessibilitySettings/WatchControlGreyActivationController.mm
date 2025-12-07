@interface WatchControlGreyActivationController
- (id)greyVisualIndicator;
- (id)specifiers;
- (void)setGreyVisualIndicator:(id)indicator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WatchControlGreyActivationController

- (id)specifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v31 = *MEMORY[0x277D3FC48];
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v6 = array;
    v30 = emptyGroupSpecifier;
    [array addObject:emptyGroupSpecifier];
    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    greyActivationGesture = [mEMORY[0x277D7A910] greyActivationGesture];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    mEMORY[0x277D7A910]2 = [MEMORY[0x277D7A910] sharedInstance];
    eligibleGreyActivationGestures = [mEMORY[0x277D7A910]2 eligibleGreyActivationGestures];

    obj = eligibleGreyActivationGestures;
    v11 = [eligibleGreyActivationGestures countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v35;
      v15 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          integerValue = [*(*(&v34 + 1) + 8 * i) integerValue];
          v18 = MEMORY[0x277D3FAD8];
          v19 = WCNameForGreyEvent();
          v20 = [v18 preferenceSpecifierNamed:v19 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v21 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
          [v20 setProperty:v21 forKey:v15];

          [v6 addObject:v20];
          if (integerValue == greyActivationGesture)
          {
            v22 = v20;

            v13 = v22;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    [v30 setProperty:v13 forKey:*MEMORY[0x277D40090]];
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:emptyGroupSpecifier2];

    v24 = MEMORY[0x277D3FAD8];
    v25 = settingsLocString(@"GREY_VISUAL_INDICATOR_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
    v26 = [v24 preferenceSpecifierNamed:v25 target:selfCopy set:sel_setGreyVisualIndicator_ get:sel_greyVisualIndicator detail:0 cell:6 edit:0];
    [v6 addObject:v26];

    v27 = *(&selfCopy->super.super.super.super.super.super.isa + v31);
    *(&selfCopy->super.super.super.super.super.super.isa + v31) = v6;
    v28 = v6;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v31);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = WatchControlGreyActivationController;
  [(AccessibilityBridgeBaseController *)&v20 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"GREY_GESTURE_TO_START_TITLE" table:@"AccessibilitySettings-watchcontrol" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"WATCH_CONTROL_ROW_TITLE" table:@"AccessibilitySettings-watchcontrol" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = [WatchControlStringLookup stringResourceForKey:@"input.source.grey"];
  v17 = MEMORY[0x277CF3470];
  v21[0] = v11;
  v21[1] = v15;
  v21[2] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v19 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=WATCH_CONTROL_ROW_ID/GREY_INPUT_ID/ACTIVATION_GESTURE_ID"];
  [v17 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v18 deepLink:v19];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = WatchControlGreyActivationController;
  pathCopy = path;
  [(WatchControlGreyActivationController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(WatchControlGreyActivationController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(WatchControlGreyActivationController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(WatchControlGreyActivationController *)self specifierAtIndex:[(WatchControlGreyActivationController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      [mEMORY[0x277D7A910] setGreyActivationGesture:{objc_msgSend(v14, "integerValue")}];

      [(WatchControlGreyActivationController *)self reloadSpecifiers];
      if ([v14 integerValue] == 3)
      {
        [(AccessibilityBridgeBaseController *)self presentQuickActionsDisabledAlertIfNeeded];
      }
    }
  }
}

- (id)greyVisualIndicator
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(mEMORY[0x277D7A910], "showGestureRecognizerIndicator")}];

  return v4;
}

- (void)setGreyVisualIndicator:(id)indicator
{
  v3 = MEMORY[0x277D7A910];
  indicatorCopy = indicator;
  sharedInstance = [v3 sharedInstance];
  bOOLValue = [indicatorCopy BOOLValue];

  [sharedInstance setShowGestureRecognizerIndicator:bOOLValue];
}

@end