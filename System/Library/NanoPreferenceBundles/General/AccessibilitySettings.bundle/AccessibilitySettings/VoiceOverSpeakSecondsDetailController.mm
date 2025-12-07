@interface VoiceOverSpeakSecondsDetailController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_selectedEncoding;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTableCheckedSelection:(id)selection;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverSpeakSecondsDetailController

- (id)specifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v17 = *MEMORY[0x277D3FC48];
    selfCopy = self;
    [(VoiceOverSpeakSecondsDetailController *)self loadSpecifiersFromPlistName:@"SpeakSecondsSettings" target:?];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v23 = 0u;
    v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          identifier = [v8 identifier];
          v10 = [identifier isEqualToString:@"VOICEOVER_SPEAK_SECONDS_ALWAYS"];

          if (v10)
          {
            [v8 setProperty:&unk_284E7E5D0 forKey:@"SpeakSecondsEncoding"];
          }

          identifier2 = [v8 identifier];
          v12 = [identifier2 isEqualToString:@"VOICEOVER_SPEAK_SECONDS_IF_DISPLAYED"];

          if (v12)
          {
            [v8 setProperty:&unk_284E7E5E8 forKey:@"SpeakSecondsEncoding"];
          }

          identifier3 = [v8 identifier];
          v14 = [identifier3 isEqualToString:@"VOICEOVER_SPEAK_SECONDS_NEVER"];

          if (v14)
          {
            [v8 setProperty:&unk_284E7E600 forKey:@"SpeakSecondsEncoding"];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }

    v15 = *(&selfCopy->super.super.super.super.super.super.isa + v17);
    *(&selfCopy->super.super.super.super.super.super.isa + v17) = obj;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v17);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = VoiceOverSpeakSecondsDetailController;
  [(AccessibilityBridgeBaseController *)&v19 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"VOICEOVER_SPEAK_SECONDS" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

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
  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/SpeakSeconds"];
  [v16 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v17 deepLink:v18];
}

- (int64_t)_selectedEncoding
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v3 = [accessibilityDomainAccessor objectForKey:@"VoiceOverSpeakSecondsEncoding"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = VoiceOverSpeakSecondsDetailController;
  v5 = [(VoiceOverSpeakSecondsDetailController *)&v10 tableView:view cellForRowAtIndexPath:path];
  _selectedEncoding = [(VoiceOverSpeakSecondsDetailController *)self _selectedEncoding];
  specifier = [v5 specifier];
  v8 = [specifier propertyForKey:@"SpeakSecondsEncoding"];

  if (v8)
  {
    [v5 setChecked:{_selectedEncoding == objc_msgSend(v8, "intValue")}];
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = VoiceOverSpeakSecondsDetailController;
  [(VoiceOverSpeakSecondsDetailController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v12.receiver = self;
  v12.super_class = VoiceOverSpeakSecondsDetailController;
  v8 = [(VoiceOverSpeakSecondsDetailController *)&v12 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:@"SpeakSecondsEncoding"];

  if (v10)
  {
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v10 forKey:@"VoiceOverSpeakSecondsEncoding"];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [(VoiceOverSpeakSecondsDetailController *)self updateTableCheckedSelection:pathCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AXVoiceOverReloadNotification" object:0];
  }
}

- (void)updateTableCheckedSelection:(id)selection
{
  selectionCopy = selection;
  v5 = *MEMORY[0x277D3FC60];
  v11 = selectionCopy;
  v6 = [*(&self->super.super.super.super.super.super.isa + v5) numberOfRowsInSection:{objc_msgSend(selectionCopy, "section")}];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{objc_msgSend(v11, "section")}];
      v10 = [*(&self->super.super.super.super.super.super.isa + v5) cellForRowAtIndexPath:v9];
      [v10 setChecked:{objc_msgSend(v9, "isEqual:", v11)}];
    }
  }
}

@end