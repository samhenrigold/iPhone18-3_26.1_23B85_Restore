@interface VoiceOverHandGesturesActionDetailController
- (VoiceOverHandGesturesActionDetailControllerDelegate)delegate;
- (id)_mapVOTActionToWCImage:(id)image;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverHandGesturesActionDetailController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverHandGesturesActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverHandGesturesActionDetailDelegate"];

  return v4;
}

- (id)specifiers
{
  selfCopy = self;
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v23 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    actionDetailControllerDelegate = [(VoiceOverHandGesturesActionDetailController *)selfCopy actionDetailControllerDelegate];
    v29 = [actionDetailControllerDelegate selectedActionForDetailController:selfCopy];

    array2 = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [MEMORY[0x277D798D0] defaultActions];
    v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v26 = *v31;
      v27 = 0;
      v25 = *MEMORY[0x277D3FFC0];
      v7 = *MEMORY[0x277D401A8];
      v8 = *MEMORY[0x277D3FD80];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [MEMORY[0x277D798D0] nameForAction:v10];
          v12 = settingsLocString(v11, @"VoiceOverSettings");
          if (([v11 isEqualToString:*MEMORY[0x277D79908]] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", *MEMORY[0x277D79900]))
          {
            v13 = WCNameForAction();

            v12 = v13;
          }

          v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          v15 = selfCopy;
          v16 = [(VoiceOverHandGesturesActionDetailController *)selfCopy _mapVOTActionToWCImage:v10];
          [v14 setProperty:v16 forKey:v25];
          [v14 setProperty:v10 forKey:v7];
          [v14 setProperty:MEMORY[0x277CBEC38] forKey:v8];
          if ([v10 isEqualToString:v29])
          {
            v17 = v14;

            v27 = v17;
          }

          [array2 addObject:v14];

          selfCopy = v15;
        }

        v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v6);
    }

    else
    {
      v27 = 0;
    }

    if ([array2 count])
    {
      v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];
      [v18 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [array addObject:v18];
      if (v27)
      {
        [v18 setProperty:v27 forKey:*MEMORY[0x277D40090]];
      }

      [array addObjectsFromArray:array2];
    }

    v19 = *(&selfCopy->super.super.super.super.super.super.isa + v23);
    *(&selfCopy->super.super.super.super.super.super.isa + v23) = array;
    v20 = array;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v23);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v29[3] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = VoiceOverHandGesturesActionDetailController;
  [(AccessibilityBridgeBaseController *)&v28 viewWillAppear:appear];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  specifier = [(VoiceOverHandGesturesActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"VoiceOverHandGesturesGreyEventKey"];

  if (v7)
  {
    v8 = +[WatchControlStringLookup stringResourceForAXHandGestures:](WatchControlStringLookup, "stringResourceForAXHandGestures:", [v7 integerValue]);
    specifier2 = [(VoiceOverHandGesturesActionDetailController *)self specifier];
    identifier = [specifier2 identifier];

    if (v8 && identifier)
    {
      v11 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL = [v4 bundleURL];
      v27 = [v11 initWithKey:@"HAND_GESTURES" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

      v14 = objc_alloc(MEMORY[0x277CCAEB8]);
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      bundleURL2 = [v4 bundleURL];
      v17 = [v14 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

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
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/HandGestures/%@", identifier];
      v26 = [v24 URLWithString:v25];
      [v22 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v8 localizedNavigationComponents:v23 deepLink:v26];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = VoiceOverHandGesturesActionDetailController;
  pathCopy = path;
  [(VoiceOverHandGesturesActionDetailController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverHandGesturesActionDetailController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(VoiceOverHandGesturesActionDetailController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(VoiceOverHandGesturesActionDetailController *)self specifierAtIndex:[(VoiceOverHandGesturesActionDetailController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      actionDetailControllerDelegate = [(VoiceOverHandGesturesActionDetailController *)self actionDetailControllerDelegate];
      [actionDetailControllerDelegate setAction:v14 forDetailController:self];

      [(VoiceOverHandGesturesActionDetailController *)self reloadSpecifiers];
    }
  }
}

- (id)_mapVOTActionToWCImage:(id)image
{
  imageCopy = image;
  if ([imageCopy isEqualToString:*MEMORY[0x277D798D8]] || objc_msgSend(imageCopy, "isEqualToString:", *MEMORY[0x277D798F0]) || objc_msgSend(imageCopy, "isEqualToString:", *MEMORY[0x277D798E0]) || objc_msgSend(imageCopy, "isEqualToString:", *MEMORY[0x277D798E8]))
  {
    goto LABEL_5;
  }

  if (([imageCopy isEqualToString:*MEMORY[0x277D79910]] & 1) != 0 || objc_msgSend(imageCopy, "isEqualToString:", *MEMORY[0x277D798F8]))
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277D798D0] symbolNameForAction:imageCopy];
    v8 = [v6 systemImageNamed:v7];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v4 = [v8 imageWithTintColor:whiteColor renderingMode:1];
  }

  else
  {
    if ([imageCopy isEqualToString:*MEMORY[0x277D79908]] || objc_msgSend(imageCopy, "isEqualToString:", *MEMORY[0x277D79900]))
    {
LABEL_5:
      v4 = WCImageForAction();
      goto LABEL_6;
    }

    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (VoiceOverHandGesturesActionDetailControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end