@interface VoiceOverBrailleInputOutputController
- (BOOL)_isActivityMode;
- (BOOL)_isDisplayInput;
- (BOOL)_isGesturesInput;
- (BOOL)_shouldShowAutoTranslate;
- (BOOL)_shouldShowEightDotBraille;
- (id)gradeTwoAutoTranslatedEnabled:(id)enabled;
- (id)preCustomBrailleSpecifiers;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverBrailleInputOutputController

- (BOOL)_isDisplayInput
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:@"BrailleDisplayInput"];

  return v4;
}

- (BOOL)_isActivityMode
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:@"VoiceOverBrailleActivityModeID"];

  return v4;
}

- (BOOL)_isGesturesInput
{
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v4 = [v3 isEqualToString:@"BrailleGesturesInput"];

  return v4;
}

- (BOOL)_shouldShowEightDotBraille
{
  if ([(VoiceOverBrailleInputOutputController *)self _isGesturesInput])
  {

    JUMPOUT(0x23EEBA840);
  }

  return 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  v31[3] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = VoiceOverBrailleInputOutputController;
  [(AccessibilityBridgeBaseController *)&v30 viewWillAppear:appear];
  specifier = [(VoiceOverBrailleInputOutputController *)self specifier];
  v5 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];

  if ([v5 isEqualToString:@"BrailleDisplayOutput"])
  {
    specifier2 = [(VoiceOverBrailleInputOutputController *)self specifier];
    v7 = [specifier2 propertyForKey:@"BrailleDisplayInputOutputTitleKey"];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = @"BrailleInput";
    if (!@"BrailleInput")
    {
      goto LABEL_7;
    }
  }

  if (v5)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL = [v8 bundleURL];
    v29 = [v9 initWithKey:v7 table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

    v12 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL2 = [v8 bundleURL];
    v15 = [v12 initWithKey:@"BRAILLE" table:@"VoiceOverSettings" locale:currentLocale2 bundleURL:bundleURL2];

    v16 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL3 = [v8 bundleURL];
    v19 = [v16 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

    v20 = objc_alloc(MEMORY[0x277CCAEB8]);
    currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
    bundleURL4 = [v8 bundleURL];
    v23 = [v20 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale4 bundleURL:bundleURL4];

    v24 = MEMORY[0x277CF3470];
    v31[0] = v23;
    v31[1] = v19;
    v31[2] = v15;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
    v26 = MEMORY[0x277CBEBC0];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/BrailleRow/%@", v5];
    v28 = [v26 URLWithString:v27];
    [v24 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v29 localizedNavigationComponents:v25 deepLink:v28];
  }

LABEL_7:
}

- (id)specifiers
{
  v32 = *MEMORY[0x277D85DE8];
  if (VOSCustomBrailleEnabled())
  {
    v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
    if (!v3)
    {
      v24 = *MEMORY[0x277D3FC48];
      array = [MEMORY[0x277CBEB18] array];
      v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      v25 = array;
      [array addObject:v5];
      selfCopy = self;
      accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v7 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = VOSBrailleTableForRotorItem();
            replacements = [v13 replacements];
            v15 = [replacements count];

            if (!v15)
            {
              v16 = MEMORY[0x277D3FAD8];
              localizedNameWithService = [v13 localizedNameWithService];
              v18 = [v16 preferenceSpecifierNamed:localizedNameWithService target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

              [v18 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
              [v18 setProperty:v13 forKey:@"Table"];
              identifier = [v13 identifier];
              [v18 setProperty:identifier forKey:@"TableIdentifier"];

              [v25 addObject:v18];
              v5 = v18;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v10);
      }

      v20 = *(&selfCopy->super.super.super.super.super.super.isa + v24);
      *(&selfCopy->super.super.super.super.super.super.isa + v24) = v25;
      v21 = v25;

      v3 = *(&selfCopy->super.super.super.super.super.super.isa + v24);
    }

    preCustomBrailleSpecifiers = v3;
  }

  else
  {
    preCustomBrailleSpecifiers = [(VoiceOverBrailleInputOutputController *)self preCustomBrailleSpecifiers];
  }

  return preCustomBrailleSpecifiers;
}

- (id)preCustomBrailleSpecifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v7 = [accessibilityDomainAccessor stringForKey:*MEMORY[0x277CE8010]];

    v8 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v7];
    v32 = v8;
    v33 = v7;
    if (v7)
    {
      v9 = v8;
      supportsTranslationModeContracted = [v8 supportsTranslationModeContracted];
      supportsTranslationMode8Dot = [v9 supportsTranslationMode8Dot];
    }

    else
    {
      supportsTranslationModeContracted = 1;
      supportsTranslationMode8Dot = 1;
    }

    v11 = MEMORY[0x277D3FAD8];
    v12 = settingsLocString(@"SIXDOT_MODE", @"VoiceOverSettings");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v14 = *MEMORY[0x277D3FFB8];
    [v13 setProperty:@"SixDotBraille" forKey:*MEMORY[0x277D3FFB8]];
    [array addObject:v13];
    if ([(VoiceOverBrailleInputOutputController *)self _shouldShowEightDotBraille])
    {
      v15 = MEMORY[0x277D3FAD8];
      v16 = settingsLocString(@"EIGHTDOT_MODE", @"VoiceOverSettings");
      v17 = [v15 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v17 setProperty:@"EightDotBraille" forKey:v14];
      v18 = [MEMORY[0x277CCABB0] numberWithBool:supportsTranslationMode8Dot];
      v34 = *MEMORY[0x277D3FF38];
      [v17 setProperty:v18 forKey:?];

      [array addObject:v17];
      v13 = v17;
    }

    else
    {
      v34 = *MEMORY[0x277D3FF38];
    }

    v19 = MEMORY[0x277D3FAD8];
    v20 = settingsLocString(@"CONTRACTION_MODE", @"VoiceOverSettings");
    v21 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v21 setProperty:@"ContractedBraille" forKey:v14];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:supportsTranslationModeContracted];
    [v21 setProperty:v22 forKey:v34];

    [array addObject:v21];
    if ([(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
    {
      v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      [array addObject:v23];
      v24 = MEMORY[0x277D3FAD8];
      v25 = settingsLocString(@"GRADE2_AUTO_TRANSLATE", @"VoiceOverSettings");
      v26 = [v24 preferenceSpecifierNamed:v25 target:self set:sel_setGradeTwoAutoTransateEnabled_specifier_ get:sel_gradeTwoAutoTranslatedEnabled_ detail:0 cell:6 edit:0];

      [v26 setProperty:@"GRADE2_AUTO_TRANSLATE" forKey:v14];
      [array addObject:v26];
      _shouldShowAutoTranslate = [(VoiceOverBrailleInputOutputController *)self _shouldShowAutoTranslate];
      v28 = [MEMORY[0x277CCABB0] numberWithBool:_shouldShowAutoTranslate];
      [v26 setProperty:v28 forKey:v34];

      v21 = v26;
    }

    v29 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (BOOL)_shouldShowAutoTranslate
{
  if ([(VoiceOverBrailleInputOutputController *)self _isActivityMode])
  {
    return 0;
  }

  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [accessibilityDomainAccessor integerForKey:*MEMORY[0x277CE7FE0]];

  return (v5 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

- (id)gradeTwoAutoTranslatedEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(accessibilityDomainAccessor, "BOOLForKey:", *MEMORY[0x277CE8020])}];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:path];
  if (VOSCustomBrailleEnabled())
  {
    v8 = [v7 propertyForKey:@"TableIdentifier"];
    _isDisplayInput = [(VoiceOverBrailleInputOutputController *)self _isDisplayInput];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v11 = accessibilityDomainAccessor;
    v12 = MEMORY[0x277CE7FE8];
    if (!_isDisplayInput)
    {
      v12 = MEMORY[0x277CE8000];
    }

    v13 = [accessibilityDomainAccessor objectForKey:*v12];

    if (v13 && ([v8 isEqualToString:v13] & 1) != 0)
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    [cellCopy setAccessoryType:v14];
  }

  else
  {
    v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
    if ([(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
    {
      v15 = +[VoiceOverBrailleController brailleSettingsInputValue];
    }

    else
    {
      v15 = +[VoiceOverBrailleController brailleSettingsOutputValue];
    }

    v16 = v15;
    if ([v8 isEqualToString:@"SixDotBraille"])
    {
      v17 = 1;
    }

    else
    {
      v18 = [v8 isEqualToString:@"EightDotBraille"];
      v17 = 2;
      if (!v18)
      {
        v17 = 3;
      }
    }

    if (v17 == v16)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [cellCopy setAccessoryType:v19];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v34 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  visibleCells = [viewCopy visibleCells];
  v9 = [visibleCells countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        v13 = __UIAccessibilitySafeClass();
        [v13 setChecked:0];
      }

      v10 = [visibleCells countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v15 = __UIAccessibilitySafeClass();

  [v15 setChecked:1];
  v16 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:pathCopy];
  if (!VOSCustomBrailleEnabled())
  {
    v20 = *MEMORY[0x277D3FFB8];
    v21 = [v16 propertyForKey:*MEMORY[0x277D3FFB8]];
    if ([v21 isEqualToString:@"SixDotBraille"])
    {
      v22 = 1;
    }

    else
    {
      v26 = [v16 propertyForKey:v20];
      if ([v26 isEqualToString:@"EightDotBraille"])
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }
    }

    _isDisplayInput = [(VoiceOverBrailleInputOutputController *)self _isDisplayInput];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
    if (_isDisplayInput)
    {
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:*MEMORY[0x277CE7FE0]];

      v17 = [(VoiceOverBrailleInputOutputController *)self specifierForID:@"GRADE2_AUTO_TRANSLATE"];
      v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[VoiceOverBrailleInputOutputController _shouldShowAutoTranslate](self, "_shouldShowAutoTranslate")}];
      [v17 setProperty:v28 forKey:*MEMORY[0x277D3FF38]];

      [(VoiceOverBrailleInputOutputController *)self reloadSpecifier:v17];
      goto LABEL_23;
    }

    v25 = MEMORY[0x277CE7FF8];
    goto LABEL_22;
  }

  v17 = [v16 propertyForKey:@"TableIdentifier"];
  if (![(VoiceOverBrailleInputOutputController *)self _isDisplayInput])
  {
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:*MEMORY[0x277CE8000]];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v24 = [accessibilityDomainAccessor BOOLForKey:*MEMORY[0x277CE8008]];

    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = MEMORY[0x277CE7FE8];
LABEL_22:
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:*v25];
    goto LABEL_23;
  }

  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v17 forKey:*MEMORY[0x277CE7FE8]];
  v18 = [(VoiceOverBrailleInputOutputController *)self specifierForID:@"GRADE2_AUTO_TRANSLATE"];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[VoiceOverBrailleInputOutputController _shouldShowAutoTranslate](self, "_shouldShowAutoTranslate")}];
  [v18 setProperty:v19 forKey:*MEMORY[0x277D3FF38]];

  [(VoiceOverBrailleInputOutputController *)self reloadSpecifier:v18];
LABEL_23:

  [(VoiceOverBrailleInputOutputController *)self reload];
}

@end