@interface ZoomHandGesturesActionDetailController
- (id)_mapZoomActionToWCImage:(unint64_t)image;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ZoomHandGesturesActionDetailController

- (id)actionDetailControllerDelegate
{
  specifier = [(ZoomHandGesturesActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"ZoomHandGesturesActionDetailDelegate"];

  return v4;
}

- (id)specifiers
{
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v25 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    actionDetailControllerDelegate = [(ZoomHandGesturesActionDetailController *)selfCopy actionDetailControllerDelegate];
    v30 = [actionDetailControllerDelegate selectedActionForDetailController:selfCopy];

    array2 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [MEMORY[0x277D7EA40] defaultActions];
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v28 = *v32;
      v29 = 0;
      v27 = *MEMORY[0x277D3FFC0];
      v8 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v10 = selfCopy;
          if (*v32 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          v13 = [MEMORY[0x277D7EA40] nameForAction:unsignedIntegerValue];
          v14 = MEMORY[0x277D3FAD8];
          v15 = settingsLocString(v13, @"ZoomSettings");
          v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          selfCopy = v10;
          v17 = [(ZoomHandGesturesActionDetailController *)v10 _mapZoomActionToWCImage:unsignedIntegerValue];
          [v16 setProperty:v17 forKey:v27];
          [v16 setProperty:v11 forKey:v8];
          if ([v11 isEqualToNumber:v30])
          {
            v18 = v16;

            v29 = v18;
          }

          [array2 addObject:v16];
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }

    else
    {
      v29 = 0;
    }

    if ([array2 count])
    {
      v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];
      [v19 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [array addObject:v19];
      if (v29)
      {
        [v19 setProperty:v29 forKey:*MEMORY[0x277D40090]];
      }

      [array addObjectsFromArray:array2];
    }

    v20 = selfCopy;
    v21 = *(&selfCopy->super.super.super.super.super.super.isa + v25);
    *(&v20->super.super.super.super.super.super.isa + v25) = array;
    v22 = array;

    v3 = *(&v20->super.super.super.super.super.super.isa + v25);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v29[3] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = ZoomHandGesturesActionDetailController;
  [(AccessibilityBridgeBaseController *)&v28 viewWillAppear:appear];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  specifier = [(ZoomHandGesturesActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"ZoomHandGesturesGreyEventKey"];

  if (v7)
  {
    v8 = +[WatchControlStringLookup stringResourceForAXHandGestures:](WatchControlStringLookup, "stringResourceForAXHandGestures:", [v7 integerValue]);
    specifier2 = [(ZoomHandGesturesActionDetailController *)self specifier];
    identifier = [specifier2 identifier];

    if (v8 && identifier)
    {
      v11 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL = [v4 bundleURL];
      v27 = [v11 initWithKey:@"HAND_GESTURES" table:@"ZoomSettings" locale:currentLocale bundleURL:bundleURL];

      v14 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL2 = [v4 bundleURL];
      v17 = [v14 initWithKey:@"ZOOM_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

      v18 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL3 = [v4 bundleURL];
      v21 = [v18 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

      v22 = MEMORY[0x277CF3470];
      v29[0] = v21;
      v29[1] = v17;
      v29[2] = v27;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
      v24 = MEMORY[0x277CBEBC0];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"bridge:root=ACCESSIBILITY_ID&path=ZOOM_ID/HandGestures/%@", identifier];
      v26 = [v24 URLWithString:v25];
      [v22 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v8 localizedNavigationComponents:v23 deepLink:v26];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = ZoomHandGesturesActionDetailController;
  pathCopy = path;
  [(ZoomHandGesturesActionDetailController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ZoomHandGesturesActionDetailController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(ZoomHandGesturesActionDetailController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(ZoomHandGesturesActionDetailController *)self specifierAtIndex:[(ZoomHandGesturesActionDetailController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      actionDetailControllerDelegate = [(ZoomHandGesturesActionDetailController *)self actionDetailControllerDelegate];
      [actionDetailControllerDelegate setAction:v14 forDetailController:self];

      [(ZoomHandGesturesActionDetailController *)self reloadSpecifiers];
    }
  }
}

- (id)_mapZoomActionToWCImage:(unint64_t)image
{
  v3 = 0;
  if (image > 1)
  {
    if (image != 2 && image != 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v3 = WCImageForAction();
    goto LABEL_8;
  }

  if (!image)
  {
    goto LABEL_7;
  }

  if (image == 1)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277D7EA40] symbolNameForAction:?];
    v6 = [v4 _systemImageNamed:v5];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v3 = [v6 imageWithTintColor:whiteColor renderingMode:1];
  }

LABEL_8:

  return v3;
}

@end