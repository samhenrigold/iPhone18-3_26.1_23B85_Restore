@interface ZoomHandGesturesActivationController
- (ZoomHandGesturesActivationController)init;
- (id)greyActivationGesture;
- (id)greyVisualIndicator;
- (id)specifiers;
- (void)setGreyVisualIndicator:(id)indicator;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ZoomHandGesturesActivationController

- (ZoomHandGesturesActivationController)init
{
  v7.receiver = self;
  v7.super_class = ZoomHandGesturesActivationController;
  v2 = [(AccessibilityBridgeBaseController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D2BA58]);
    v4 = [v3 initWithDomain:*MEMORY[0x277D81ED0]];
    zoomDomainAccessor = v2->_zoomDomainAccessor;
    v2->_zoomDomainAccessor = v4;
  }

  return v2;
}

- (id)specifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v30 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v6 = array;
    v29 = emptyGroupSpecifier;
    [array addObject:emptyGroupSpecifier];
    greyActivationGesture = [(ZoomHandGesturesActivationController *)self greyActivationGesture];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
    eligibleGreyActivationGestures = [mEMORY[0x277D7A910] eligibleGreyActivationGestures];

    obj = eligibleGreyActivationGestures;
    v9 = [eligibleGreyActivationGestures countByEnumeratingWithState:&v34 objects:v38 count:16];
    selfCopy = self;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v35;
      v13 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          integerValue = [v15 integerValue];
          v17 = MEMORY[0x277D3FAD8];
          v18 = WCNameForGreyEvent();
          v19 = [v17 preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v20 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
          [v19 setProperty:v20 forKey:v13];

          [v6 addObject:v19];
          if ([v15 isEqualToNumber:greyActivationGesture])
          {
            v21 = v19;

            v11 = v21;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    [v29 setProperty:v11 forKey:*MEMORY[0x277D40090]];
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addObject:emptyGroupSpecifier2];

    v23 = MEMORY[0x277D3FAD8];
    v24 = settingsLocString(@"GREY_VISUAL_INDICATOR_ROW_TITLE", @"AccessibilitySettings-watchcontrol");
    v25 = [v23 preferenceSpecifierNamed:v24 target:selfCopy set:sel_setGreyVisualIndicator_ get:sel_greyVisualIndicator detail:0 cell:6 edit:0];
    [v6 addObject:v25];

    v26 = *(&selfCopy->super.super.super.super.super.super.isa + v30);
    *(&selfCopy->super.super.super.super.super.super.isa + v30) = v6;
    v27 = v6;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v30);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = ZoomHandGesturesActivationController;
  [(AccessibilityBridgeBaseController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"GREY_GESTURE_TO_START_TITLE" table:@"AccessibilitySettings-watchcontrol" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"HAND_GESTURES" table:@"ZoomSettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"ZOOM_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL4 = [v3 bundleURL];
  v19 = [v16 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale4 bundleURL:bundleURL4];

  v20 = MEMORY[0x277CF3470];
  v24[0] = v19;
  v24[1] = v15;
  v24[2] = v11;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=ZOOM_ID/HandGestures/ACTIVATION_GESTURE_ID"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

- (id)greyActivationGesture
{
  v2 = MEMORY[0x277CCABB0];
  mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithInteger:{objc_msgSend(mEMORY[0x277D7A910], "greyActivationGesture")}];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = ZoomHandGesturesActivationController;
  pathCopy = path;
  [(ZoomHandGesturesActivationController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ZoomHandGesturesActivationController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(ZoomHandGesturesActivationController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(ZoomHandGesturesActivationController *)self specifierAtIndex:[(ZoomHandGesturesActivationController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      mEMORY[0x277D7A910] = [MEMORY[0x277D7A910] sharedInstance];
      [mEMORY[0x277D7A910] setGreyActivationGesture:{objc_msgSend(v14, "integerValue")}];

      [(ZoomHandGesturesActivationController *)self reloadSpecifiers];
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