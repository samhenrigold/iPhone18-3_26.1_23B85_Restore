@interface KSFuzzyPinyinController
- (NSArray)fuzzyPinyinPairSpecifiers;
- (id)keyboardPreferenceValue:(id)value;
- (id)readFuzzyPinyinPairs;
- (id)specifiers;
- (void)dealloc;
- (void)emitNavigationEventForFuzzyPinyinController;
- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation KSFuzzyPinyinController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSFuzzyPinyinController;
  [(KSFuzzyPinyinController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSFuzzyPinyinController;
  [(KSFuzzyPinyinController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = KSFuzzyPinyinController;
  [(KSFuzzyPinyinController *)&v4 viewDidAppear:appear];
  [(KSFuzzyPinyinController *)self emitNavigationEventForFuzzyPinyinController];
}

- (NSArray)fuzzyPinyinPairSpecifiers
{
  v27 = *MEMORY[0x277D85DE8];
  fuzzyPinyinPairSpecifiers = self->_fuzzyPinyinPairSpecifiers;
  if (!fuzzyPinyinPairSpecifiers)
  {
    [(KSFuzzyPinyinController *)self setFuzzyPinyinPairs:[(KSFuzzyPinyinController *)self readFuzzyPinyinPairs]];
    validFuzzyPinyinPairs = [MEMORY[0x277D6F338] validFuzzyPinyinPairs];
    fuzzyPinyinPairSpecifiers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = [validFuzzyPinyinPairs countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0x277CCA000uLL;
      v6 = *v23;
      v19 = *MEMORY[0x277D3FFB8];
      v18 = *MEMORY[0x277D3FFF0];
      v16 = *MEMORY[0x277D3FE58];
      v17 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(validFuzzyPinyinPairs);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [objc_msgSend(*(v5 + 2264) bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"FUZZY_PINYIN_PAIR_FORMAT", &stru_28679E3A8, @"Keyboard"}];
          if ([v8 count] != 2)
          {
            [KSFuzzyPinyinController fuzzyPinyinPairSpecifiers];
          }

          if ([v8 count] == 2)
          {
            v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, objc_msgSend(v8, "objectAtIndex:", 0), objc_msgSend(v8, "objectAtIndex:", 1)];
            v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];
            [v11 setProperty:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%@↔︎%@", objc_msgSend(v8, "objectAtIndexedSubscript:", 0), objc_msgSend(v8, "objectAtIndexedSubscript:", 1)), v19}];
            [v11 setProperty:v8 forKey:@"TISpecifierKeyFuzzyPinyinPair"];
            [v11 setProperty:&unk_2867A5028 forKey:v18];
            v12 = MEMORY[0x277CCABB0];
            v13 = [(NSMutableSet *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairs] containsObject:v8];
            v14 = v12;
            v5 = 0x277CCA000;
            [v11 setProperty:objc_msgSend(v14 forKey:{"numberWithBool:", v13), v17}];
            [v11 setProperty:objc_opt_class() forKey:v16];
            [(NSArray *)fuzzyPinyinPairSpecifiers addObject:v11];
          }
        }

        v4 = [validFuzzyPinyinPairs countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v4);
    }

    self->_fuzzyPinyinPairSpecifiers = fuzzyPinyinPairSpecifiers;
  }

  return fuzzyPinyinPairSpecifiers;
}

- (id)readFuzzyPinyinPairs
{
  v27 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [mEMORY[0x277D6F470] valueForPreferenceKey:*MEMORY[0x277D6F628]];
  validFuzzyPinyinPairs = [MEMORY[0x277D6F338] validFuzzyPinyinPairs];
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([validFuzzyPinyinPairs containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {
    defaultFuzzyPinyinPairs = [MEMORY[0x277D6F338] defaultFuzzyPinyinPairs];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [defaultFuzzyPinyinPairs countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(defaultFuzzyPinyinPairs);
          }

          [v5 addObject:*(*(&v17 + 1) + 8 * j)];
        }

        v13 = [defaultFuzzyPinyinPairs countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }

  return v5;
}

- (id)keyboardPreferenceValue:(id)value
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = *MEMORY[0x277D6F630];

  return [mEMORY[0x277D6F470] valueForPreferenceKey:v4];
}

- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:{@"FUZZY_PINYIN_PAIRS_GROUP", specifier}];
  bOOLValue = [value BOOLValue];
  fuzzyPinyinPairSpecifiers = [(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers];
  if (bOOLValue)
  {
    [(KSFuzzyPinyinController *)self insertContiguousSpecifiers:fuzzyPinyinPairSpecifiers afterSpecifier:v6 animated:1];
  }

  else
  {
    [(KSFuzzyPinyinController *)self removeContiguousSpecifiers:fuzzyPinyinPairSpecifiers animated:1];
    [(KSFuzzyPinyinController *)self setFuzzyPinyinPairSpecifiers:0];
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v10 = *MEMORY[0x277D6F630];

  [mEMORY[0x277D6F470] setValue:value forPreferenceKey:v10];
}

- (id)specifiers
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithID:", @"FUZZY_PINYIN_GROUP"}];
    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"FUZZY_PINYIN_OPTION" cell:&stru_28679E3A8 edit:{@"Keyboard", self, sel_setKeyboardPreferenceValue_forSpecifier_, sel_keyboardPreferenceValue_, 0, 6, 0}];
    v7 = *MEMORY[0x277D3FEF0];
    v17[0] = *MEMORY[0x277D3FEF8];
    v17[1] = v7;
    v18[0] = @"com.apple.InputModePreferences";
    v18[1] = @"0";
    v8 = *MEMORY[0x277D3FFF0];
    v17[2] = *MEMORY[0x277D3FFB8];
    v17[3] = v8;
    v18[2] = @"FuzzyPinyin";
    v18[3] = @"FuzzyPinyin";
    [v6 setProperties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v18, v17, 4)}];
    [array addObject:v6];
    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FUZZY_PINYIN_PAIRS_GROUP"];
    [array addObject:v9];
    v10 = [array indexOfObject:v9];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
      if ([mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F630]])
      {
        v13 = v11 + 1;
        v14 = [MEMORY[0x277CCAB58] indexSetWithIndex:v11 + 1];
        v15 = [(NSArray *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] count];
        if (v15)
        {
          v16 = v15;
          do
          {
            [v14 addIndex:v13++];
            --v16;
          }

          while (v16);
        }

        [array insertObjects:-[KSFuzzyPinyinController fuzzyPinyinPairSpecifiers](self atIndexes:{"fuzzyPinyinPairSpecifiers"), v14}];
      }
    }

    result = array;
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = KSFuzzyPinyinController;
  [KSFuzzyPinyinController tableView:sel_tableView_didSelectRowAtIndexPath_ didSelectRowAtIndexPath:?];
  if ([path section] == 1)
  {
    v7 = [path row];
    if (v7 < [(NSArray *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] count])
    {
      v8 = [(NSArray *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] objectAtIndex:v7];
      v9 = [view cellForRowAtIndexPath:path];
      accessoryType = [v9 accessoryType];
      if (accessoryType == 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }

      [v9 setAccessoryType:v11];
      v12 = [v8 propertyForKey:@"TISpecifierKeyFuzzyPinyinPair"];
      fuzzyPinyinPairs = [(KSFuzzyPinyinController *)self fuzzyPinyinPairs];
      if (accessoryType == 3)
      {
        [(NSMutableSet *)fuzzyPinyinPairs removeObject:v12];
      }

      else
      {
        [(NSMutableSet *)fuzzyPinyinPairs addObject:v12];
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInt:accessoryType != 3];
      [v8 setProperty:v14 forKey:*MEMORY[0x277D401A8]];
      mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
      allObjects = [(NSMutableSet *)[(KSFuzzyPinyinController *)self fuzzyPinyinPairs] allObjects];
      [mEMORY[0x277D6F470] setValue:allObjects forPreferenceKey:*MEMORY[0x277D6F628]];
    }
  }
}

- (void)emitNavigationEventForFuzzyPinyinController
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/FUZZY_PINYIN_OPTION"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7[0] = v4;
  -[KSFuzzyPinyinController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [v5 initWithKey:@"FUZZY_PINYIN_OPTION" table:@"Keyboard" locale:currentLocale bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}], objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 2), v3);
}

@end