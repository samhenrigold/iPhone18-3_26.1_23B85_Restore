@interface KSSoftwareLayoutDetailControllerViewController
- (NSArray)multilingualSet;
- (NSString)inputMode;
- (id)newSpecifiers;
- (id)newSpecifiersForChineseShuangpin;
- (id)newSpecifiersForChineseWubi;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)reloadKeyboardSpecifiers;
- (void)reloadSoftwareLayoutSpecifiersWithMultilingualSet:(id)set;
- (void)removeInputModeInMultilingualSet:(id)set;
- (void)setShuangpinType:(id)type;
- (void)setSoftwareLayout:(id)layout;
- (void)setWubiStandard:(int)standard;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTitle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation KSSoftwareLayoutDetailControllerViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSSoftwareLayoutDetailControllerViewController;
  [(KSSoftwareLayoutDetailControllerViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSSoftwareLayoutDetailControllerViewController;
  [(KSSoftwareLayoutDetailControllerViewController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (void)updateTitle
{
  if ([(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] count]< 2)
  {
    [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
    v3 = [KSKeyboardListController keyboardDisplayNameForIdentifier:TIInputModeGetLanguageWithRegion()];
  }

  else
  {
    v3 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModes([(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet]);
  }

  v4 = v3;
  navigationItem = [(KSSoftwareLayoutDetailControllerViewController *)self navigationItem];

  [navigationItem setTitle:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = KSSoftwareLayoutDetailControllerViewController;
  [(KSSoftwareLayoutDetailControllerViewController *)&v4 viewWillAppear:appear];
  [(KSSoftwareLayoutDetailControllerViewController *)self updateTitle];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    result = [(KSSoftwareLayoutDetailControllerViewController *)self newSpecifiers];
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (id)newSpecifiers
{
  v95 = *MEMORY[0x277D85DE8];
  inputMode = [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
  if (KSInputModeIsChineseShuangpin(inputMode))
  {

    return [(KSSoftwareLayoutDetailControllerViewController *)self newSpecifiersForChineseShuangpin];
  }

  if (KSInputModeIsChineseWubi(inputMode))
  {

    return [(KSSoftwareLayoutDetailControllerViewController *)self newSpecifiersForChineseWubi];
  }

  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  v69 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
  multilingualSet = [(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet];
  if (_os_feature_enabled_impl())
  {
    v6 = [(NSArray *)multilingualSet count]> 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CBEB40];
  TIInputModeGetNormalizedIdentifier();
  v8 = [v7 orderedSetWithArray:UIKeyboardGetSupportedSoftwareKeyboardsForInputMode()];
  v68 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count") + 1}];
  v60 = NormalizedIdentifier;
  if (_os_feature_enabled_impl())
  {
    v9 = [TIUIGetAddableInputModesForMultilingualSet(multilingualSet) count] != 0;
  }

  else
  {
    v9 = 0;
  }

  [(KSSoftwareLayoutDetailControllerViewController *)self setShowingLanguagesSection:v9 || v6];
  if (_os_feature_enabled_impl())
  {
    IsMultiscriptInput = TIUIMultilingualSetIsMultiscriptInput(multilingualSet, 0);
  }

  else
  {
    IsMultiscriptInput = 0;
  }

  v10 = MEMORY[0x277CBEB70];
  v11 = TIInputModeGetNormalizedIdentifier();
  v62 = [v10 orderedSetWithArray:{TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v11, v12)}];
  v61 = v9 || v6;
  if (v9 || v6)
  {
    if (IsMultiscriptInput)
    {
      v8 = [v62 mutableCopy];
    }

    else if ((TIUIMultilingualSetContainsTransliterationInputModes(multilingualSet) & 1) == 0)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v20 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v86 objects:v94 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v87;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v87 != v22)
            {
              objc_enumerationMutation(multilingualSet);
            }

            TIInputModeGetNormalizedIdentifier();
            [v8 addObjectsFromArray:UIKeyboardGetSupportedSoftwareKeyboardsForInputMode()];
          }

          v21 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v86 objects:v94 count:16];
        }

        while (v21);
      }
    }

    v63 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
    obj = v8;
    v57 = v9;
    v58 = v6;
    if (v6)
    {
      v24 = [(NSArray *)multilingualSet count]!= 2 || v9;
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v24)
      {
        v26 = @"MULTILINGUAL_DETAIL_FOOTER_3";
      }

      else
      {
        v26 = @"MULTILINGUAL_DETAIL_FOOTER_2";
      }
    }

    else
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = @"MULTILINGUAL_DETAIL_FOOTER_1";
    }

    v27 = [v25 localizedStringForKey:v26 value:&stru_28679E3A8 table:@"Keyboard"];
    [v63 setProperty:v27 forKey:*MEMORY[0x277D3FF88]];
    [v68 addObject:v63];
    [(NSArray *)multilingualSet firstObject];
    [MEMORY[0x277CBEAF8] preferredLanguages];
    MultilingualSetFromInputModesWithPreferredLanguages = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();
    v82 = 0u;
    v83 = 0u;
    v59 = multilingualSet;
    if ([(NSArray *)MultilingualSetFromInputModesWithPreferredLanguages count])
    {
      v29 = MultilingualSetFromInputModesWithPreferredLanguages;
    }

    else
    {
      v29 = multilingualSet;
    }

    v84 = 0uLL;
    v85 = 0uLL;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v83;
      v33 = *MEMORY[0x277D3FFB8];
      v34 = *MEMORY[0x277D401A8];
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v83 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v82 + 1) + 8 * j);
          if ((TIInputModeIsMultilingualOnly() & 1) == 0)
          {
            v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:+[KSKeyboardListController keyboardDisplayNameForIdentifier:](KSKeyboardListController target:"keyboardDisplayNameForIdentifier:" set:TIInputModeGetLanguageWithRegion()) get:0 detail:0 cell:0 edit:{0, 3, 0}];
            [v37 setProperty:v36 forKey:v33];
            [v37 setProperty:@"language" forKey:v34];
            [v68 addObject:v37];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
      }

      while (v31);
    }

    if (v57)
    {
      v38 = MEMORY[0x277D3FAD8];
      v39 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_ADD_LANGUAGE", &stru_28679E3A8, @"Keyboard"}];
      v40 = [v38 preferenceSpecifierNamed:v39 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
      [v40 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      [v68 addObject:v40];
    }

    multilingualSet = v59;
    if (v58)
    {
      goto LABEL_66;
    }

LABEL_22:
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v13 = +[KSKeyboardListController inputModes];
    v14 = [v13 countByEnumeratingWithState:&v74 objects:v91 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v75;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v75 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v74 + 1) + 8 * k);
          if (!_os_feature_enabled_impl() || [TIUIInputModeGetMultilingualSet(v18) count] <= 1)
          {
            if ([v60 isEqualToString:TIInputModeGetNormalizedIdentifier()])
            {
              v19 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
              if (([v19 isEqualToString:v69] & 1) == 0)
              {
                [obj removeObject:v19];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v74 objects:v91 count:16];
      }

      while (v15);
    }

    goto LABEL_76;
  }

  obj = v8;
  v63 = 0;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_66:
  v41 = [MEMORY[0x277D75680] multilingualSetsFromInputModeIdentifiers:{+[KSKeyboardListController inputModes](KSKeyboardListController, "inputModes")}];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v42 = [v41 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v79;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v79 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [*(*(&v78 + 1) + 8 * m) identifier];
        MultilingualSet = TIInputModeGetMultilingualSet();
        if (TIUIGetMultlingualSetsAreEqual(multilingualSet, MultilingualSet))
        {
          [MultilingualSet firstObject];
          v47 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
          if (([v47 isEqualToString:v69] & 1) == 0)
          {
            [obj removeObject:v47];
          }
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v43);
  }

LABEL_76:
  if ((IsMultiscriptInput & 1) == 0)
  {
    [obj minusOrderedSet:v62];
  }

  if ([obj count] >= 2)
  {
    v48 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
    [v48 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v65 = v48;
    [v68 addObject:v48];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v49 = [obj countByEnumeratingWithState:&v70 objects:v90 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v71;
      v52 = *MEMORY[0x277D3FFB8];
      v53 = *MEMORY[0x277D40090];
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v71 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v70 + 1) + 8 * n);
          v56 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:v55 cell:&stru_28679E3A8 edit:{@"KeyboardLayouts", self, 0, 0, 0, 3, 0}];
          [v56 setProperty:v55 forKey:v52];
          if ([v69 isEqualToString:v55])
          {
            [v65 setProperty:v56 forKey:v53];
          }

          [v68 addObject:v56];
        }

        v50 = [obj countByEnumeratingWithState:&v70 objects:v90 count:16];
      }

      while (v50);
    }

    if (v61)
    {
      [v63 setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_LANGUAGES_TITLE", &stru_28679E3A8, @"Keyboard"}];
      [v65 setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_LAYOUTS_TITLE", &stru_28679E3A8, @"Keyboard"}];
    }
  }

  return v68;
}

- (id)newSpecifiersForChineseShuangpin
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = KSGetShuangpinTypes();
  v4 = KSGetCurrentShuangpinType();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v17 = v6;
  [v5 addObject:v6];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v7 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = *MEMORY[0x277D3FFB8];
    v16 = *MEMORY[0x277D40090];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        integerValue = [v12 integerValue];
        v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:KSGetShuangpinNameFromType(integerValue) target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_msgSend(v12 forKey:{"stringValue"), v10}];
        if (v4 == integerValue)
        {
          [v17 setProperty:v14 forKey:v16];
        }

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)newSpecifiersForChineseWubi
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = KSGetWubiStandards();
  v4 = KSGetCurrentWubiStandard();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v17 = v6;
  [v5 addObject:v6];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v7 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = *MEMORY[0x277D3FFB8];
    v16 = *MEMORY[0x277D40090];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        integerValue = [v12 integerValue];
        v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:KSGetWubiStandardName(integerValue) target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_msgSend(v12 forKey:{"stringValue"), v10}];
        if (v4 == integerValue)
        {
          [v17 setProperty:v14 forKey:v16];
        }

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = KSSoftwareLayoutDetailControllerViewController;
  [KSSoftwareLayoutDetailControllerViewController tableView:sel_tableView_didSelectRowAtIndexPath_ didSelectRowAtIndexPath:?];
  v7 = [view cellForRowAtIndexPath:path];
  if (v7)
  {
    v8 = v7;
    if (KSInputModeIsChineseShuangpin([(KSSoftwareLayoutDetailControllerViewController *)self inputMode]))
    {
      specifier = [v8 specifier];
      v10 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
      if (v11)
      {
        [(KSSoftwareLayoutDetailControllerViewController *)self setShuangpinType:v11];
      }
    }

    else
    {
      v12 = KSInputModeIsChineseWubi([(KSSoftwareLayoutDetailControllerViewController *)self inputMode]);
      specifier2 = [v8 specifier];
      v14 = [specifier2 propertyForKey:*MEMORY[0x277D3FFB8]];
      v15 = v14;
      if (v12)
      {
        if (v14)
        {
          -[KSSoftwareLayoutDetailControllerViewController setWubiStandard:](self, "setWubiStandard:", [v14 integerValue]);
        }
      }

      else if ([v14 length])
      {
        [(KSSoftwareLayoutDetailControllerViewController *)self setSoftwareLayout:v15];
      }
    }
  }
}

- (NSString)inputMode
{
  result = self->_inputMode;
  if (!result)
  {
    specifier = [(KSSoftwareLayoutDetailControllerViewController *)self specifier];
    result = [objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFB8]), "copy"}];
    self->_inputMode = result;
  }

  return result;
}

- (NSArray)multilingualSet
{
  v6[1] = *MEMORY[0x277D85DE8];
  result = self->_multilingualSet;
  if (!result)
  {
    specifier = [(KSSoftwareLayoutDetailControllerViewController *)self specifier];
    v5 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
    if (!v5)
    {
      v6[0] = [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    }

    result = v5;
    self->_multilingualSet = result;
  }

  return result;
}

- (void)setSoftwareLayout:(id)layout
{
  v5 = [+[KSKeyboardListController inputModes](KSKeyboardListController "inputModes")];
  if (![v5 count])
  {
    [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
  }

  if ([v5 count])
  {
    v6 = [v5 indexOfObject:{-[KSSoftwareLayoutDetailControllerViewController inputMode](self, "inputMode")}];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
    }

    v7 = v6;
    if (!_os_feature_enabled_impl() || [(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] count]< 2)
    {
      [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
      v11 = [TIInputModeGetComponentsFromIdentifier() mutableCopy];
      v12 = [v11 objectForKey:@"sw"];
      if (v12 && ([v12 isEqualToString:layout] & 1) != 0)
      {
        return;
      }

      [v11 setObject:layout forKey:@"sw"];
      IdentifierFromComponents = UIKeyboardInputModeGetIdentifierFromComponents();
      [v5 replaceObjectAtIndex:v7 withObject:IdentifierFromComponents];
      [(KSSoftwareLayoutDetailControllerViewController *)self setInputMode:IdentifierFromComponents];
      goto LABEL_20;
    }

    [(KSSoftwareLayoutDetailControllerViewController *)self inputMode];
    MultilingualID = TIInputModeGetMultilingualID();
    if (![MultilingualID length])
    {
      [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
    }

    if ([MultilingualID length] && objc_msgSend(v5, "count"))
    {
      v9 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        [v5 objectAtIndexedSubscript:v9];
        if ([TIInputModeGetMultilingualID() isEqualToString:MultilingualID])
        {
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v9;
          }

          [v5 objectAtIndexedSubscript:v9];
          TIInputModeGetNormalizedIdentifier();
          if ([UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() containsObject:layout])
          {
            break;
          }
        }

        if (++v9 >= [v5 count])
        {
          return;
        }
      }

      [v5 objectAtIndexedSubscript:v9];
      v14 = UIKeyboardInputModeWithNewSWLayout();
      if (v9 == v10)
      {
        [v5 replaceObjectAtIndex:v9 withObject:v14];
      }

      else
      {
        if (v9 <= v10)
        {
          [KSSoftwareLayoutDetailControllerViewController setSoftwareLayout:];
        }

        [v5 removeObjectAtIndex:v9];
        [v5 insertObject:v14 atIndex:v10];
      }

      [(KSSoftwareLayoutDetailControllerViewController *)self setInputMode:v14];
      [(KSSoftwareLayoutDetailControllerViewController *)self setMultilingualSet:TIInputModeGetMultilingualSetFromInputModes()];
LABEL_20:

      [KSKeyboardListController setInputModes:v5];
    }
  }
}

- (void)setShuangpinType:(id)type
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  [mEMORY[0x277D6F470] setValue:type forPreferenceKey:*MEMORY[0x277D6FA70]];
  KSUpdateShuangpinSWLayout();

  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (void)setWubiStandard:(int)standard
{
  v3 = *&standard;
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [mEMORY[0x277D6F470] setValue:v6 forPreferenceKey:*MEMORY[0x277D6FD18]];

  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (void)removeInputModeInMultilingualSet:(id)set
{
  v38 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  setCopy = set;
  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  obj = TIUIGetPairedInputModesForInputMode(NormalizedIdentifier);
  v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        selfCopy = self;
        multilingualSet = [(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet];
        v13 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          do
          {
            v16 = 0;
            do
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(multilingualSet);
              }

              v17 = *(*(&v27 + 1) + 8 * v16);
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:v10])
              {
                [array addObject:v17];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v14);
        }

        ++v9;
        self = selfCopy;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v26 = 0;
  if (TIUIMultilingualSetIsMultiscriptInput([(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet], &v26))
  {
    v18 = [(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] copy];
    [v18 firstObject];
    TIInputModeGetNormalizedIdentifier();
    if (![UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() firstObject])
    {
      [KSSoftwareLayoutDetailControllerViewController removeInputModeInMultilingualSet:];
    }

    v35 = UIKeyboardInputModeWithNewSWLayout();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
    v18 = MEMORY[0x277CBEBF8];
  }

  v20 = [(NSArray *)[(KSSoftwareLayoutDetailControllerViewController *)self multilingualSet] mutableCopy];
  [v20 removeObject:v23];
  [v20 removeObjectsInArray:array];
  [v20 removeObjectsInArray:v18];
  [v20 addObjectsFromArray:v19];
  -[KSSoftwareLayoutDetailControllerViewController setInputMode:](self, "setInputMode:", [v20 firstObject]);
  [(KSSoftwareLayoutDetailControllerViewController *)self setMultilingualSet:v20];
  v21 = [+[KSKeyboardListController inputModes](KSKeyboardListController "inputModes")];
  [v21 removeObject:v23];
  [v21 removeObjectsInArray:array];
  [v21 removeObjectsInArray:v18];
  [v21 addObjectsFromArray:v19];
  [KSKeyboardListController setInputModes:v21];
  [(KSSoftwareLayoutDetailControllerViewController *)self reloadSpecifiers];
  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
  [(KSSoftwareLayoutDetailControllerViewController *)self updateTitle];
}

- (void)reloadKeyboardSpecifiers
{
  v2 = [-[KSSoftwareLayoutDetailControllerViewController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {

    [v2 setNeedsReloadSpecifiers:1];
  }
}

- (void)reloadSoftwareLayoutSpecifiersWithMultilingualSet:(id)set
{
  -[KSSoftwareLayoutDetailControllerViewController setInputMode:](self, "setInputMode:", [set firstObject]);
  [(KSSoftwareLayoutDetailControllerViewController *)self setMultilingualSet:set];
  [(KSSoftwareLayoutDetailControllerViewController *)self reloadSpecifiers];

  [(KSSoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  result = 0;
  if ([(KSSoftwareLayoutDetailControllerViewController *)self showingLanguagesSection])
  {
    if (![path section] && objc_msgSend(path, "row") >= 1)
    {
      v7 = [-[KSSoftwareLayoutDetailControllerViewController specifiers](self "specifiers")];
      if ([objc_msgSend(v7 propertyForKey:{*MEMORY[0x277D401A8]), "isEqual:", @"language"}])
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    if ([(KSSoftwareLayoutDetailControllerViewController *)self showingLanguagesSection])
    {
      if (![path section] && objc_msgSend(path, "row") >= 1)
      {
        v7 = [-[KSSoftwareLayoutDetailControllerViewController specifiers](self "specifiers")];
        if ([objc_msgSend(v7 propertyForKey:{*MEMORY[0x277D401A8]), "isEqual:", @"language"}])
        {
          v8 = [v7 propertyForKey:*MEMORY[0x277D3FFB8]];
          [(KSSoftwareLayoutDetailControllerViewController *)self removeSpecifier:v7 animated:1];

          [(KSSoftwareLayoutDetailControllerViewController *)self removeInputModeInMultilingualSet:v8];
        }
      }
    }
  }
}

@end