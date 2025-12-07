@interface KSAddKeyboardController
+ (BOOL)shouldShowAddKeyboardControllerForInputModes:(id)modes;
- (id)keyboardTypeSpecifiers;
- (id)koreanEnglishBilingualInputModeIdentifier:(id)identifier enabledInputModes:(id)modes;
- (id)monolingualSpecifiers;
- (id)multilingualSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)addCheckedInputModes;
- (void)cancelButtonTapped;
- (void)doneButtonTapped;
- (void)enableMonolingualKeyboards:(id)keyboards;
- (void)enableMultilingualKeyboards:(id)keyboards;
- (void)setSpecifier:(id)specifier;
- (void)toggleInputMode:(id)mode;
- (void)toggleMultilingualInputMode:(id)mode;
- (void)updateDoneButton;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation KSAddKeyboardController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v7 viewWillAppear:appear];
  navigationItem = [(KSAddKeyboardController *)self navigationItem];
  specifier = [(KSAddKeyboardController *)self specifier];
  [navigationItem setTitle:{objc_msgSend(specifier, "propertyForKey:", *MEMORY[0x277D40170])}];
  [navigationItem setRightBarButtonItem:{objc_msgSend(objc_alloc(MEMORY[0x277D751E0]), "initWithBarButtonSystemItem:target:action:", 0, self, sel_doneButtonTapped)}];
  [objc_msgSend(navigationItem "rightBarButtonItem")];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_doneButtonTapped name:*MEMORY[0x277D76768] object:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v4 viewDidAppear:appear];
  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5.receiver = self;
  v5.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v5 viewDidDisappear:disappearCopy];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    result = [(KSAddKeyboardController *)self newSpecifiers];
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

uint64_t __66__KSAddKeyboardController_shouldAddInputMode_toEnabledInputModes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [TIInputModeGetLanguageWithRegion() isEqualToString:@"ja_JP"];
  if (result)
  {
    result = [TIInputModeGetVariant() hasPrefix:@"Kana"];
    if (result)
    {
      result = 1;
      *a4 = 1;
    }
  }

  return result;
}

+ (BOOL)shouldShowAddKeyboardControllerForInputModes:(id)modes
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = _os_feature_enabled_impl();
  [modes firstObject];
  v5 = TIGetAddKeyboardUsesPickerForInputMode();
  v6 = v4 | v5;
  if (v4 && (v5 & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [modes countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(modes);
          }

          NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
          if ([TIUIGetProposedMultilingualSetsForAddingInputMode(NormalizedIdentifier objc:"sharedInputModeController") msgSend(objc:{"enabledInputModeIdentifiers")), "count"}msgSend(MEMORY[0x277D75688]])
          {
            v6 = 1;
            return v6 & 1;
          }
        }

        v8 = [modes countByEnumeratingWithState:&v13 objects:v17 count:16];
        v6 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

- (void)setSpecifier:(id)specifier
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = KSAddKeyboardController;
  [(KSAddKeyboardController *)&v17 setSpecifier:specifier];
  v4 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D3FFB8]];
  if (_os_feature_enabled_impl())
  {
    v7 = [KSKeyboardListController supportedBaseInputModesForLanguage:v6];
    if (_os_feature_enabled_impl())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [array addObjectsFromArray:{TIUIGetProposedMultilingualSetsForAddingInputMode(*(*(&v13 + 1) + 8 * v11++), v4)}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [(KSAddKeyboardController *)self koreanEnglishBilingualInputModeIdentifier:v6 enabledInputModes:v4];
  }

  else
  {
    v12 = 0;
  }

  [(KSAddKeyboardController *)self setProposedMultilingualInputModes:array];
  [(KSAddKeyboardController *)self setKoreanEnglishBilingualInputModeIdentifier:v12];
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (-[KSAddKeyboardController supportsMultilingual](self, "supportsMultilingual") && ([v3 addObjectsFromArray:{-[KSAddKeyboardController keyboardTypeSpecifiers](self, "keyboardTypeSpecifiers")}], !-[KSAddKeyboardController showsMonolingualOption](self, "showsMonolingualOption")))
  {
    if ([(NSArray *)[(KSAddKeyboardController *)self proposedMultilingualInputModes] count]< 2)
    {
      return v3;
    }

    multilingualSpecifiers = [(KSAddKeyboardController *)self multilingualSpecifiers];
  }

  else
  {
    multilingualSpecifiers = [(KSAddKeyboardController *)self monolingualSpecifiers];
  }

  [v3 addObjectsFromArray:multilingualSpecifiers];
  return v3;
}

- (id)keyboardTypeSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0 name:&stru_28679E3A8];
  [v3 addObject:v4];
  if ([(KSAddKeyboardController *)self koreanEnglishBilingualInputModeIdentifier])
  {
    v5 = 0x277CCA000;
    if (![(KSAddKeyboardController *)self showsMonolingualOption])
    {
      v17 = [KSKeyboardListController keyboardDisplayNameForIdentifier:@"ko_KR"];
      v5 = 0x277CCA000uLL;
      [v4 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"localizedStringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_ADD_FOOTER", &stru_28679E3A8, @"Keyboard", v17), *MEMORY[0x277D3FF88]}];
    }

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(*(v5 + 3240) target:"localizedStringWithFormat:" set:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] get:"bundleForClass:" detail:objc_opt_class()) cell:"localizedStringForKey:value:table:" edit:{@"MULTILINGUAL_KEYBOARD_ADD_TITLE_WITH_LANGUAGE", &stru_28679E3A8, @"Keyboard", +[KSKeyboardListController keyboardDisplayNameForIdentifier:](KSKeyboardListController, "keyboardDisplayNameForIdentifier:", @"en", self, 0, 0, 0, 3, 0}];
    [v6 setButtonAction:sel_enableMultilingualKeyboards_];
    koreanEnglishBilingualInputModeIdentifier = [(KSAddKeyboardController *)self koreanEnglishBilingualInputModeIdentifier];
    v8 = *MEMORY[0x277D3FFB8];
    goto LABEL_10;
  }

  if ([(NSArray *)[(KSAddKeyboardController *)self proposedMultilingualInputModes] count]> 1)
  {
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"MULTILINGUAL_KEYBOARD_ADD_TITLE" cell:&stru_28679E3A8 edit:{@"Keyboard", self, 0, 0, 0, 3, 0}];
    [v6 setButtonAction:sel_enableMultilingualKeyboards_];
    v8 = *MEMORY[0x277D3FFB8];
    koreanEnglishBilingualInputModeIdentifier = @"Multilingual";
LABEL_10:
    [v6 setProperty:koreanEnglishBilingualInputModeIdentifier forKey:v8];
    [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    goto LABEL_11;
  }

  firstObject = [(NSArray *)[(KSAddKeyboardController *)self proposedMultilingualInputModes] firstObject];
  if (![(KSAddKeyboardController *)self showsMonolingualOption])
  {
    MultilingualSet = TIUIProposedInputModeGetMultilingualSet(firstObject);
    v12 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(MultilingualSet, 0);
    [v4 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"localizedStringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_ADD_FOOTER", &stru_28679E3A8, @"Keyboard", v12), *MEMORY[0x277D3FF88]}];
  }

  Current = TIUIProposedInputModeGetCurrent(firstObject, v10);
  v14 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(Current, 0);
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(MEMORY[0x277CCACA8] target:"localizedStringWithFormat:" set:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] get:"bundleForClass:" detail:objc_opt_class()) cell:"localizedStringForKey:value:table:" edit:{@"MULTILINGUAL_KEYBOARD_ADD_TITLE_WITH_LANGUAGE", &stru_28679E3A8, @"Keyboard", v14), self, 0, 0, 0, 3, 0}];
  [v6 setButtonAction:sel_enableMultilingualKeyboards_];
  [v6 setProperty:firstObject forKey:*MEMORY[0x277D401A8]];
  v8 = *MEMORY[0x277D3FFB8];
  [v6 setProperty:@"Multilingual" forKey:*MEMORY[0x277D3FFB8]];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v6 setUserInfo:&unk_2867A5100];
LABEL_11:
  [v3 addObject:v6];
  v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"ADD_MONOLINGUAL_KEYBOARD_TITLE" cell:&stru_28679E3A8 edit:{@"Keyboard", self, 0, 0, 0, 3, 0}];
  [v15 setButtonAction:sel_enableMonolingualKeyboards_];
  [v15 setProperty:@"Monolingual" forKey:v8];
  [v3 addObject:v15];
  return v3;
}

- (id)multilingualSpecifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v17 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_TITLE", &stru_28679E3A8, @"Keyboard", self, 0, 0, 0, 0, 0)}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  obj = [(KSAddKeyboardController *)self proposedMultilingualInputModes];
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    v8 = *MEMORY[0x277D3FFB8];
    v9 = *MEMORY[0x277D401A8];
    v10 = *MEMORY[0x277D3FD80];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        Current = TIUIProposedInputModeGetCurrent(v12, v5);
        v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(Current target:0) set:selfCopy get:0 detail:0 cell:0 edit:{3, 0}];
        [v14 setButtonAction:sel_toggleMultilingualInputMode_];
        [v14 setProperty:@"Multilingual" forKey:v8];
        [v14 setProperty:v12 forKey:v9];
        [v14 setProperty:MEMORY[0x277CBEC38] forKey:v10];
        [v14 setUserInfo:&unk_2867A5128];
        [v17 addObject:v14];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (id)monolingualSpecifiers
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = *MEMORY[0x277D3FFB8];
  obj = +[KSKeyboardListController supportedBaseInputModesForLanguage:](KSKeyboardListController, "supportedBaseInputModesForLanguage:", [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:?]);
  if ([(KSAddKeyboardController *)self supportsMultilingual])
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"MONOLINGUAL_KEYBOARD_TITLE", &stru_28679E3A8, @"Keyboard"}];
  }

  else
  {
    v3 = 0;
  }

  [v29 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v3, self, 0, 0, 0, 0, 0)}];
  v31 = [obj count];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v25 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v25)
  {
    v24 = *v44;
    v4 = *MEMORY[0x277CBE720];
    v27 = *MEMORY[0x277D3FF38];
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * v5);
        v34 = [KSKeyboardListController softwareLayoutsForBaseInputMode:v6];
        [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
        v7 = UIKeyboardInputModesMatchingMode();
        SupportedSoftwareMultiscriptLayouts = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v6, v8);
        v26 = v5;
        v35 = v7;
        if ([v7 count])
        {
          [v7 firstObject];
          DefaultHardwareKeyboardForInputMode = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
        }

        else
        {
          DefaultHardwareKeyboardForInputMode = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
        }

        v33 = DefaultHardwareKeyboardForInputMode;
        if ([v34 count])
        {
          v30 = [v34 count];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v38 = [v34 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v38)
          {
            v36 = *v40;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v40 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v11 = *(*(&v39 + 1) + 8 * i);
                if (([SupportedSoftwareMultiscriptLayouts containsObject:v11] & 1) == 0)
                {
                  [TIInputModeGetComponentsFromIdentifier() valueForKey:v4];
                  v12 = TUIKeyboardTitle();
                  v13 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v11, &stru_28679E3A8, @"KeyboardLayouts"}];
                  v14 = [v12 length];
                  if (v14)
                  {
                    v15 = v12;
                  }

                  else
                  {
                    v15 = v13;
                  }

                  if (v14 && v31 >= 2 && v30 >= 2)
                  {
                    v32 = MEMORY[0x277CCACA8];
                    selfCopy = self;
                    v17 = MEMORY[0x277CCA8D8];
                    v18 = objc_opt_class();
                    v19 = v17;
                    self = selfCopy;
                    v15 = [v32 stringWithFormat:objc_msgSend(objc_msgSend(v19, "bundleForClass:", v18), "localizedStringForKey:value:table:", @"KEYBOARD_VARIANT_%@_WITH_LAYOUT_%@", &stru_28679E3A8, @"Keyboard", v12, v13];
                  }

                  v20 = UIKeyboardInputModeWithNewSWLayout();
                  if (v33)
                  {
                    v20 = UIKeyboardInputModeWithNewHWLayout();
                  }

                  if ([objc_opt_class() shouldAddInputMode:v20 toEnabledInputModes:v35])
                  {
                    v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];
                    [v21 setButtonAction:sel_toggleInputMode_];
                    [v21 setProperty:v20 forKey:v28];
                    if ([v35 containsObject:v20])
                    {
                      [v21 setProperty:MEMORY[0x277CBEC28] forKey:v27];
                    }

                    [v29 addObject:v21];
                  }
                }
              }

              v38 = [v34 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v38);
          }
        }

        v5 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v25);
  }

  return v29;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = KSAddKeyboardController;
  v6 = [(KSAddKeyboardController *)&v11 tableView:view cellForRowAtIndexPath:?];
  v7 = [(KSAddKeyboardController *)self specifierAtIndex:[(KSAddKeyboardController *)self indexForIndexPath:path]];
  v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
  [v6 setAccessibilityIdentifier:v8];
  if ([v6 isUserInteractionEnabled])
  {
    if ([v8 isEqualToString:@"Multilingual"] || -[KSAddKeyboardController koreanEnglishBilingualInputModeIdentifier](self, "koreanEnglishBilingualInputModeIdentifier") && objc_msgSend(v8, "isEqualToString:", -[KSAddKeyboardController koreanEnglishBilingualInputModeIdentifier](self, "koreanEnglishBilingualInputModeIdentifier")))
    {
      showsMonolingualOption = [(KSAddKeyboardController *)self showsMonolingualOption]^ 1;
    }

    else
    {
      if (![v8 isEqualToString:@"Monolingual"])
      {
        return v6;
      }

      showsMonolingualOption = [(KSAddKeyboardController *)self showsMonolingualOption];
    }
  }

  else
  {
    showsMonolingualOption = 1;
  }

  [v6 setChecked:showsMonolingualOption];
  return v6;
}

- (id)koreanEnglishBilingualInputModeIdentifier:(id)identifier enabledInputModes:(id)modes
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [KSKeyboardListController supportedBaseInputModesForLanguage:identifier];
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v16)
  {
    return 0;
  }

  v17 = *v23;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v22 + 1) + 8 * i);
      if (![modes count] || (objc_msgSend(modes, "firstObject"), (DefaultHardwareKeyboardForInputMode = objc_msgSend(TIInputModeGetComponentsFromIdentifier(), "objectForKey:", @"hw")) == 0))
      {
        DefaultHardwareKeyboardForInputMode = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
      }

      v8 = [KSKeyboardListController softwareLayoutsForBaseInputMode:v6];
      if ([v8 count])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
LABEL_12:
          v12 = 0;
          while (1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if ([*(*(&v18 + 1) + 8 * v12) isEqualToString:@"Korean-With-QWERTY"])
            {
              v13 = UIKeyboardInputModeWithNewSWLayout();
              if (DefaultHardwareKeyboardForInputMode)
              {
                v13 = UIKeyboardInputModeWithNewHWLayout();
              }

              if (![modes containsObject:v13])
              {
                return v13;
              }
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v10)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }
      }
    }

    v13 = 0;
    v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      continue;
    }

    return v13;
  }
}

- (void)addCheckedInputModes
{
  v23 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  [mEMORY[0x277D75688] setDisableFloatingKeyboardFilter:1];
  enabledInputModeIdentifiers = [mEMORY[0x277D75688] enabledInputModeIdentifiers];
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  specifiers = [(KSAddKeyboardController *)self specifiers];
  v5 = [specifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x277D40148];
    v9 = *MEMORY[0x277D3FFB8];
    v14 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(specifiers);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 propertyForKey:{v8, v14}];
        v13 = [v11 propertyForKey:v9];
        if ((![v13 isEqualToString:@"Multilingual"] || -[NSArray count](-[KSAddKeyboardController proposedMultilingualInputModes](selfCopy, "proposedMultilingualInputModes"), "count") <= 1) && (objc_msgSend(v13, "isEqualToString:", @"Monolingual") & 1) == 0 && objc_msgSend(v12, "isChecked"))
        {
          if (_os_feature_enabled_impl() && [objc_msgSend(objc_msgSend(v11 "userInfo")])
          {
            enabledInputModeIdentifiers = TIUIGetInputModesByAddingProposedInputMode([v11 propertyForKey:v14], enabledInputModeIdentifiers);
          }

          else if (([enabledInputModeIdentifiers containsObject:v13] & 1) == 0)
          {
            [array addObject:v13];
          }
        }
      }

      v6 = [specifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  +[KSKeyboardListController setInputModes:](KSKeyboardListController, "setInputModes:", [enabledInputModeIdentifiers arrayByAddingObjectsFromArray:array]);
}

- (void)updateDoneButton
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  specifiers = [(KSAddKeyboardController *)self specifiers];
  v3 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = *MEMORY[0x277D3FFB8];
    v7 = *MEMORY[0x277D40148];
    v8 = *MEMORY[0x277D3FF38];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 propertyForKey:v6];
        if (([v11 isEqualToString:@"Monolingual"] & 1) == 0 && (!objc_msgSend(v11, "isEqualToString:", @"Multilingual") || -[NSArray count](-[KSAddKeyboardController proposedMultilingualInputModes](self, "proposedMultilingualInputModes"), "count") <= 1))
        {
          v12 = [v10 propertyForKey:v7];
          v13 = [v10 propertyForKey:v8];
          if ([v12 isChecked])
          {
            if (!v13 || ([v13 BOOLValue] & 1) != 0)
            {
              v14 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v4 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_16:
  [objc_msgSend(-[KSAddKeyboardController navigationItem](self "navigationItem")];
}

- (void)enableMultilingualKeyboards:(id)keyboards
{
  [(KSAddKeyboardController *)self setShowsMonolingualOption:0];
  [(KSAddKeyboardController *)self reloadSpecifiers];

  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)enableMonolingualKeyboards:(id)keyboards
{
  [(KSAddKeyboardController *)self setShowsMonolingualOption:1];
  [(KSAddKeyboardController *)self reloadSpecifiers];

  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)toggleInputMode:(id)mode
{
  v4 = [mode propertyForKey:*MEMORY[0x277D40148]];
  [v4 setChecked:{objc_msgSend(v4, "isChecked") ^ 1}];

  [(KSAddKeyboardController *)self updateDoneButton];
}

- (void)toggleMultilingualInputMode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  specifiers = [(KSAddKeyboardController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = *MEMORY[0x277D40148];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 propertyForKey:v9];
        if ([objc_msgSend(objc_msgSend(v11 "userInfo")])
        {
          [v12 setChecked:0];
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(KSAddKeyboardController *)self toggleInputMode:mode];
}

- (void)cancelButtonTapped
{
  navigationController = [(KSAddKeyboardController *)self navigationController];

  [navigationController popViewControllerAnimated:1];
}

- (void)doneButtonTapped
{
  [(KSAddKeyboardController *)self addCheckedInputModes];
  parentController = [(KSAddKeyboardController *)self parentController];

  [parentController dismissForDone];
}

@end