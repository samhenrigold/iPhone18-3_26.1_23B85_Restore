@interface ScheduleSettingsController
- (BOOL)isExcludedAccountType:(id)type;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_makeMCCSpecifiers;
- (id)_mccSchedule:(id)schedule;
- (id)_specifierForMCCAccount:(id)account dataclasses:(id)dataclasses canPush:(BOOL)push canFetch:(BOOL)fetch canManual:(BOOL)manual;
- (id)_specifiersForMCCAccount:(id)account;
- (id)initForContentSize:(CGSize)size;
- (id)pushEnabled:(id)enabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int)styleForAccount:(id)account uniqueIdentifier:(id)identifier;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)_readScheduleSettings;
- (void)_setMCCSchedule:(id)schedule specifier:(id)specifier;
- (void)configureFetchDividerCell:(id)cell atIndexPath:(id)path;
- (void)dealloc;
- (void)listItemSelected:(id)selected;
- (void)setPollInterval:(id)interval specifier:(id)specifier;
- (void)setPushEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateRadioGroupText;
@end

@implementation ScheduleSettingsController

- (id)initForContentSize:(CGSize)size
{
  v6.receiver = self;
  v6.super_class = ScheduleSettingsController;
  v3 = [(ScheduleSettingsController *)&v6 init:size.width];
  if (v3)
  {
    v3->_accountStore = objc_alloc_init(MEMORY[0x277CB8F48]);
    v3->_isLowPowerMode = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__lowPowerModeChangedNotification_ name:*MEMORY[0x277CCA5E8] object:0];
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = ScheduleSettingsController;
  [(ScheduleSettingsController *)&v3 dealloc];
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  self->_isLowPowerMode = [objc_msgSend(MEMORY[0x277CCAC38] processInfo];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ScheduleSettingsController__lowPowerModeChangedNotification___block_invoke;
  block[3] = &unk_278BB4638;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)specifiers
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = MEMORY[0x277D3FF38];
  if (!v4)
  {
    v6 = [(ScheduleSettingsController *)self loadSpecifiersFromPlistName:@"ScheduleSettings" target:self];
    *(&self->super.super.super.super.super.isa + v3) = v6;
    if (self->_isLowPowerMode)
    {
      [-[objc_class specifierForID:](v6 specifierForID:{@"ENABLE_PUSH", "setProperty:forKey:", &unk_284EECBD8, *v5}];
      v7 = @"LPM_PUSH";
    }

    else
    {
      v7 = @"ENABLE_PUSH_TEXT";
    }

    v8 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", v7, &stru_284EEC2E8, @"ScheduleSettings"}];
    v9 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"pushSwitchGroup"];
    v10 = *MEMORY[0x277D3FF88];
    [v9 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
    LODWORD(v8) = [v8 _isNaturallyRTL];
    v11 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"pushSwitchGroup"];
    if (v8)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    v14 = *MEMORY[0x277D3FF40];
    [v11 setProperty:v13 forKey:*MEMORY[0x277D3FF40]];
    v15 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"fetchGroup"];
    [v15 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"WHEN_NOT_PUSHING_TEXT", &stru_284EEC2E8, @"ScheduleSettings", v10}];
    v16 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"fetchGroup"];
    [v16 setProperty:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v12), v14}];
    v17 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"fetchGroup"];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    [v17 setProperty:v18 forKey:*MEMORY[0x277D3FD78]];
    v19 = [*(&self->super.super.super.super.super.isa + v3) mutableCopy];
    v20 = [v19 indexOfObject:{objc_msgSend(*(&self->super.super.super.super.super.isa + v3), "specifierForID:", @"accountsGroup"}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = [-[ScheduleSettingsController _makeMCCSpecifiers](self "_makeMCCSpecifiers")];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v19 insertObject:*(*(&v31 + 1) + 8 * i) atIndex:v20 + 1];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
    }

    *(&self->super.super.super.super.super.isa + v3) = v19;
    if (([(ScheduleSettingsController *)self getGroup:&self->_radioGroup row:0 ofSpecifierID:@"radioGroup"]& 1) == 0)
    {
      NSLog(&cfstr_UnableToFindPo.isa);
    }

    [(ScheduleSettingsController *)self _readScheduleSettings];
    v4 = *(&self->super.super.super.super.super.isa + v3);
    v5 = MEMORY[0x277D3FF38];
    if (self->_isLowPowerMode)
    {
      v26 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"15_MINUTES"];
      v27 = *v5;
      v28 = MEMORY[0x277CBEC28];
      [v26 setProperty:MEMORY[0x277CBEC28] forKey:*v5];
      [objc_msgSend(*(&self->super.super.super.super.super.isa + v3) specifierForID:{@"30_MINUTES", "setProperty:forKey:", v28, v27}];
      [objc_msgSend(*(&self->super.super.super.super.super.isa + v3) specifierForID:{@"60_MINUTES", "setProperty:forKey:", v28, v27}];
      [objc_msgSend(*(&self->super.super.super.super.super.isa + v3) specifierForID:{@"AUTOMATICALLY", "setProperty:forKey:", v28, v27}];
      [objc_msgSend(*(&self->super.super.super.super.super.isa + v3) specifierForID:{@"MANUALLY", "setProperty:forKey:", v28, v27}];
      v4 = *(&self->super.super.super.super.super.isa + v3);
    }
  }

  self->_fetchDividerRow = [v4 indexOfObject:{objc_msgSend(v4, "specifierForID:", @"FETCH_DIVIDER"}];
  v29 = [*(&self->super.super.super.super.super.isa + v3) specifierForID:@"FETCH_DIVIDER"];
  [v29 setProperty:MEMORY[0x277CBEC28] forKey:*v5];
  return *(&self->super.super.super.super.super.isa + v3);
}

- (id)_makeMCCSpecifiers
{
  v29 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  allAccountTypes = [(ACAccountStore *)self->_accountStore allAccountTypes];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = allAccountTypes;
  v18 = [allAccountTypes countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        if (![(ScheduleSettingsController *)self isExcludedAccountType:v7])
        {
          v8 = [(ACAccountStore *)self->_accountStore accountsWithAccountType:v7];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v20;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v20 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v19 + 1) + 8 * j);
                v14 = [(ScheduleSettingsController *)self _specifiersForMCCAccount:v13];
                if ([v14 count])
                {
                  [array addObjectsFromArray:v14];
                  [v4 addObject:{objc_msgSend(v13, "identifier")}];
                }
              }

              v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v10);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  [v4 addObject:*MEMORY[0x277D3A1B8]];
  PCSettingsPurgeDictionariesExceptForCurrent();

  return array;
}

- (BOOL)isExcludedAccountType:(id)type
{
  if (isExcludedAccountType__onceToken != -1)
  {
    [ScheduleSettingsController isExcludedAccountType:];
  }

  identifier = [type identifier];
  if (identifier)
  {
    v5 = isExcludedAccountType__excludedAccountTypeIdentifiers;
    identifier2 = [type identifier];

    LOBYTE(identifier) = [v5 containsObject:identifier2];
  }

  return identifier;
}

void *__52__ScheduleSettingsController_isExcludedAccountType___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  result = [v0 initWithObjects:{*MEMORY[0x277CB8CF8], 0}];
  isExcludedAccountType__excludedAccountTypeIdentifiers = result;
  return result;
}

- (id)_specifiersForMCCAccount:(id)account
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([account parentAccount])
  {
    return array;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  enabledDataclasses = [account enabledDataclasses];
  v8 = [enabledDataclasses countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {
    return array;
  }

  v9 = v8;
  v10 = *v17;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(enabledDataclasses);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (ScheduleSettingsDataclassIsFetchy_onceToken == -1)
      {
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        [ScheduleSettingsController _specifiersForMCCAccount:];
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      if ([ScheduleSettingsDataclassIsFetchy_fetchyDataclassSet containsObject:v12])
      {
        enabledDataclasses2 = [account enabledDataclasses];
        supportsPush = [account supportsPush];
        if ([enabledDataclasses2 count])
        {
          [array addObject:{-[ScheduleSettingsController _specifierForMCCAccount:dataclasses:canPush:canFetch:canManual:](self, "_specifierForMCCAccount:dataclasses:canPush:canFetch:canManual:", account, objc_msgSend(enabledDataclasses2, "allObjects"), supportsPush, 1, 1)}];
        }

        return array;
      }

LABEL_11:
      ++v11;
    }

    while (v9 != v11);
    v13 = [enabledDataclasses countByEnumeratingWithState:&v16 objects:v20 count:16];
    v9 = v13;
    if (v13)
    {
      continue;
    }

    return array;
  }
}

- (id)_specifierForMCCAccount:(id)account dataclasses:(id)dataclasses canPush:(BOOL)push canFetch:(BOOL)fetch canManual:(BOOL)manual
{
  manualCopy = manual;
  fetchCopy = fetch;
  pushCopy = push;
  v19[3] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CE8568] specifierWithStyle:3 account:account detailControllerClass:objc_opt_class() presentationStyle:1];
  v19[0] = dataclasses;
  v18[0] = @"ScheduleSettingsDataclassesKey";
  v18[1] = @"ScheduleSettingsAccountUniqueIdentifierKey";
  v18[2] = @"ScheduleSettingsAccountKey";
  v19[1] = [account identifier];
  v19[2] = account;
  [v13 setUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 3)}];
  [v13 setTarget:self];
  *&v13[*MEMORY[0x277D3FCA8]] = sel__mccSchedule_;
  *&v13[*MEMORY[0x277D3FCB0]] = sel__setMCCSchedule_specifier_;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (pushCopy && !self->_isLowPowerMode)
  {
    [v14 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", 0)}];
    [v15 addObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PUSH", &stru_284EEC2E8, @"ScheduleSettings"}];
  }

  if (fetchCopy && !self->_isLowPowerMode)
  {
    [v14 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", 1)}];
    [v15 addObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"FETCH", &stru_284EEC2E8, @"ScheduleSettings"}];
  }

  if (manualCopy && !self->_isLowPowerMode)
  {
    [v14 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", 2)}];
    [v15 addObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MANUAL", &stru_284EEC2E8, @"ScheduleSettings"}];
  }

  if (self->_isLowPowerMode)
  {
    [v14 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", 2)}];
    [v15 addObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"LOW_POWER", &stru_284EEC2E8, @"ScheduleSettings"}];
  }

  [v13 setValues:v14 titles:v15];
  if (self->_isLowPowerMode)
  {
    v16 = &unk_284EECBD8;
  }

  else
  {
    v16 = &unk_284EECBF0;
  }

  [v13 setProperty:v16 forKey:*MEMORY[0x277D3FF38]];

  return v13;
}

- (int)styleForAccount:(id)account uniqueIdentifier:(id)identifier
{
  if (!identifier)
  {
    return [account supportsPush] ^ 1;
  }

  result = _PCSettingsGetStyle();
  if (!result)
  {
    return [account supportsPush] ^ 1;
  }

  return result;
}

- (id)_mccSchedule:(id)schedule
{
  userInfo = [schedule userInfo];
  v5 = [userInfo objectForKey:@"ScheduleSettingsAccountKey"];
  v6 = [userInfo objectForKey:@"ScheduleSettingsAccountUniqueIdentifierKey"];
  v7 = MEMORY[0x277CCABB0];
  if (self->_isLowPowerMode)
  {
    v8 = 2;
  }

  else
  {
    v8 = [(ScheduleSettingsController *)self styleForAccount:v5 uniqueIdentifier:v6];
  }

  return [v7 numberWithLong:v8];
}

- (void)_setMCCSchedule:(id)schedule specifier:(id)specifier
{
  v7 = [objc_msgSend(specifier "userInfo")];
  intValue = [schedule intValue];
  if (v7 && [-[ScheduleSettingsController _mccSchedule:](self _mccSchedule:{specifier), "longValue"}] != intValue)
  {
    PCSettingsSetStyle();
  }

  table = [(ScheduleSettingsController *)self table];

  [table reloadData];
}

- (void)_readScheduleSettings
{
  v18 = *MEMORY[0x277D85DE8];
  ClassPollInterval = PCSettingsGetClassPollInterval();

  self->_checkedSpecifier = 0;
  if (!self->_isLowPowerMode)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *MEMORY[0x277D3FC48];
    v6 = *(&self->super.super.super.super.super.isa + v5);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [v11 propertyForKey:@"interval"];
        if (v12)
        {
          if ([v12 integerValue] == ClassPollInterval)
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      checkedSpecifier = v11;
      self->_checkedSpecifier = checkedSpecifier;
      if (checkedSpecifier)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_12:
      checkedSpecifier = self->_checkedSpecifier;
      if (checkedSpecifier)
      {
        goto LABEL_16;
      }
    }

    checkedSpecifier = [(ScheduleSettingsController *)self specifierForID:@"MANUALLY"];
    self->_checkedSpecifier = checkedSpecifier;
    goto LABEL_16;
  }

  checkedSpecifier = [(ScheduleSettingsController *)self specifierForID:@"MANUALLY"];
  self->_checkedSpecifier = checkedSpecifier;
  v5 = *MEMORY[0x277D3FC48];
LABEL_16:
  self->_rowToSelect = [*(&self->super.super.super.super.super.isa + v5) indexOfObject:checkedSpecifier];
  [(ScheduleSettingsController *)self updateRadioGroupText];
}

- (id)pushEnabled:(id)enabled
{
  if (self->_isLowPowerMode)
  {
    return &unk_284EECBD8;
  }

  v5 = MEMORY[0x277CCABB0];
  v6 = PCSettingsGetClassPushEnabled() != 0;

  return [v5 numberWithBool:v6];
}

- (void)setPushEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];
  PCSettingsSetClassPushEnabled();
  v5 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]);
  v6 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);

  [v5 reloadSpecifier:v6];
}

- (void)setPollInterval:(id)interval specifier:(id)specifier
{
  checkedSpecifier = self->_checkedSpecifier;
  if (checkedSpecifier != specifier)
  {
    v7 = [(PSSpecifier *)checkedSpecifier propertyForKey:*MEMORY[0x277D40148]];
    [v7 setChecked:0];
    [v7 setValue:0];

    specifierCopy = specifier;
    self->_checkedSpecifier = specifierCopy;
    self->_rowToSelect = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) indexOfObject:specifierCopy];
    [-[PSSpecifier propertyForKey:](self->_checkedSpecifier propertyForKey:{@"interval", "intValue"}];
    PCSettingsSetClassPollInterval();
    [(ScheduleSettingsController *)self updateRadioGroupText];
    v9 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]);
    v10 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);

    [v9 reloadSpecifier:v10];
  }
}

- (void)updateRadioGroupText
{
  v3 = [(ScheduleSettingsController *)self specifierForID:@"radioGroup"];
  if (v3)
  {
    v4 = v3;
    v5 = [(PSSpecifier *)self->_checkedSpecifier propertyForKey:@"interval"];
    if (v5 && ![v5 integerValue])
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_284EEC2E8 table:@"ScheduleSettings"];
      _isNaturallyRTL = [v7 _isNaturallyRTL];
      [v4 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
      if (_isNaturallyRTL)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      [v4 setProperty:v10 forKey:*MEMORY[0x277D3FF40]];
      v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      [v4 setProperty:v11 forKey:*MEMORY[0x277D3FD78]];
    }

    else
    {
      [v4 removePropertyForKey:*MEMORY[0x277D3FF88]];
    }

    [(ScheduleSettingsController *)self reloadSpecifier:v4];
  }
}

- (void)listItemSelected:(id)selected
{
  v5 = [(ScheduleSettingsController *)self indexForIndexPath:?];
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v5];
  if ([(ScheduleSettingsController *)self indexForIndexPath:selected]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x277D3FC60];
    if (self->_rowToSelect != 0x7FFFFFFFFFFFFFFFLL)
    {
      [objc_msgSend(*(&self->super.super.super.super.super.isa + v7) cellForRowAtIndexPath:{-[ScheduleSettingsController indexPathForIndex:](self, "indexPathForIndex:")), "setChecked:", 0}];
    }

    [objc_msgSend(*(&self->super.super.super.super.super.isa + v7) cellForRowAtIndexPath:{selected), "setChecked:", 1}];
  }

  v8 = MEMORY[0x277D3FCB0];
  if (*&v6[*MEMORY[0x277D3FCB0]])
  {
    v9 = MEMORY[0x277D3FCB8];
    if (objc_opt_respondsToSelector())
    {
      values = [v6 values];
      v11 = [values count];
      v12 = *&v6[*v9];
      v13 = *&v6[*v8];
      if (v11)
      {
        v14 = [values objectAtIndex:0];
      }

      else
      {
        v14 = [v6 propertyForKey:*MEMORY[0x277D40170]];
      }

      [v12 performSelector:v13 withObject:v14 withObject:v6];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = ScheduleSettingsController;
  v6 = [(ScheduleSettingsController *)&v9 tableView:view cellForRowAtIndexPath:?];
  v7 = [(ScheduleSettingsController *)self indexForIndexPath:path];
  if (v7 == self->_fetchDividerRow)
  {
    [(ScheduleSettingsController *)self configureFetchDividerCell:v6 atIndexPath:path];
  }

  if (([v6 tag] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [v6 setChecked:v7 == self->_rowToSelect];
    [v6 setCellAction:sel_listItemSelected_];
    [v6 setCellTarget:self];
  }

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = [(ScheduleSettingsController *)self indexForIndexPath:path];
  fetchDividerRow = self->_fetchDividerRow;
  if (v7 == fetchDividerRow || v7 + 1 == fetchDividerRow)
  {

    [cell _setShouldHaveFullLengthBottomSeparator:1];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7 = [(ScheduleSettingsController *)self specifierAtIndex:[(ScheduleSettingsController *)self indexForIndexPath:path]];
  if (*(v7 + *MEMORY[0x277D3FC90]) == 3)
  {
    [(ScheduleSettingsController *)self listItemSelected:path];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ScheduleSettingsController;
    [(ScheduleSettingsController *)&v8 tableView:view didSelectRowAtIndexPath:path];
  }

  [view deselectRowAtIndexPath:path animated:1];
}

- (void)configureFetchDividerCell:(id)cell atIndexPath:(id)path
{
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [objc_msgSend(cell "contentView")];
  v6 = [v5 initWithFrame:?];
  [v6 setAutoresizingMask:18];
  [v6 setContentMode:4];
  [v6 setBackgroundColor:{objc_msgSend(MEMORY[0x277D75348], "tableSeparatorLightColor")}];
  contentView = [cell contentView];

  [contentView addSubview:v6];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = ScheduleSettingsController;
  [(ScheduleSettingsController *)&v10 tableView:view heightForRowAtIndexPath:?];
  v7 = v6;
  v8 = [(ScheduleSettingsController *)self indexForIndexPath:path];
  result = 1.0;
  if (v8 != self->_fetchDividerRow)
  {
    return v7;
  }

  return result;
}

@end