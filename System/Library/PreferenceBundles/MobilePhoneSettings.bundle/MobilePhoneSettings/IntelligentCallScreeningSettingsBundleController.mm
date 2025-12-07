@interface IntelligentCallScreeningSettingsBundleController
- (BOOL)getCallScreeningEnabled;
- (BOOL)isCurrentOption:(id)option;
- (IntelligentCallScreeningSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)createSpecifierForMenuOption:(id)option;
- (id)getCurrentlySelectedIntelligentCallScreeningSpecifier;
- (id)specifiersWithSpecifier:(id)specifier;
- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone;
- (void)refreshView:(id)view;
- (void)setCallScreeningEnabled:(BOOL)enabled;
- (void)setSelectedIntelligentCallScreeningOption:(id)option;
@end

@implementation IntelligentCallScreeningSettingsBundleController

- (IntelligentCallScreeningSettingsBundleController)initWithParentListController:(id)controller
{
  v16.receiver = self;
  v16.super_class = IntelligentCallScreeningSettingsBundleController;
  v3 = [(IntelligentCallScreeningSettingsBundleController *)&v16 initWithParentListController:controller];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v3->_featureFlags;
    v3->_featureFlags = v4;

    v6 = objc_alloc_init(MEMORY[0x277D6EE48]);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    specifiers = v3->_specifiers;
    v3->_specifiers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    intelligentCallScreeningMenuSpecifiers = v3->_intelligentCallScreeningMenuSpecifiers;
    v3->_intelligentCallScreeningMenuSpecifiers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    intelligentCallScreeningOptionToSpecifierMap = v3->_intelligentCallScreeningOptionToSpecifierMap;
    v3->_intelligentCallScreeningOptionToSpecifierMap = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_handleSettingDidChangeNotification_ name:@"IntelligentCallScreeningSettingsUserDidModifySelectionNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v33 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  isReceptionistAvailable = [configurationProvider isReceptionistAvailable];

  v7 = PHDefaultLog(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isReceptionistAvailable)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23C144000, v7, OS_LOG_TYPE_DEFAULT, "INTELLIGENT CALL SCREENING SETTINGS: We are in Phone Settings with receptionist available, so we will show Intelligent Call Screening group", buf, 2u);
    }

    v25 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:@"INTELLIGENT_CALL_SCREENING_MENU_TITLE"];
    v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:?];
    [v9 setIdentifier:@"INTELLIGENT_CALL_SCREENING_MENU_TITLE"];
    [(NSArray *)array addObject:v9];
    v24 = v9;
    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v10 = +[IntelligentCallScreeningMenuCellOption optionMenuItems];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [(IntelligentCallScreeningSettingsBundleController *)self createSpecifierForMenuOption:v15];
          if (v16)
          {
            [(NSArray *)array addObject:v16];
            [(NSMutableArray *)self->_intelligentCallScreeningMenuSpecifiers addObject:v16];
            optionID = [v15 optionID];
            integerValue = [optionID integerValue];

            intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
            v20 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
            [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap setObject:v16 forKey:v20];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    specifiers = self->_specifiers;
    self->_specifiers = array;
    v22 = array;

    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:0];
    array = [(NSArray *)self->_specifiers copy];

    v7 = v25;
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_23C144000, v7, OS_LOG_TYPE_DEFAULT, "INTELLIGENT CALL SCREENING SETTINGS: We are NOT in Phone Settings with receptionist available, so we will NOT show Intelligent Call Screening group, we must show Silence Unknown Callers toggle instead", buf, 2u);
  }

  return array;
}

- (id)createSpecifierForMenuOption:(id)option
{
  v4 = MEMORY[0x277D3FAD8];
  optionCopy = option;
  v6 = objc_alloc_init(v4);
  titleKey = [optionCopy titleKey];
  explanationKey = [optionCopy explanationKey];
  v9 = objc_opt_class();
  objc_storeWeak(&v6[*MEMORY[0x277D3FCB8]], self);
  *&v6[*MEMORY[0x277D3FC90]] = 3;
  *&v6[*MEMORY[0x277D3FCA8]] = 0;
  [v6 setProperty:titleKey forKey:*MEMORY[0x277D40170]];
  [v6 setProperty:v9 forKey:*MEMORY[0x277D3FE58]];
  [v6 setButtonAction:sel_setSelectedIntelligentCallScreeningOption_];
  v10 = NSStringFromSelector(sel_setSelectedIntelligentCallScreeningOption_);
  [v6 setProperty:v10 forKey:*MEMORY[0x277D3FE10]];

  v11 = NSStringFromSelector(0);
  [v6 setProperty:v11 forKey:*MEMORY[0x277D3FF98]];

  [v6 setProperty:explanationKey forKey:*MEMORY[0x277D40160]];
  optionID = [optionCopy optionID];

  [v6 setProperty:optionID forKey:*MEMORY[0x277D3FFB8]];

  return v6;
}

- (BOOL)isCurrentOption:(id)option
{
  optionCopy = option;
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [(IntelligentCallScreeningSettingsBundleController *)self getSelectedIntelligentCallScreeningMenuOptionForPhone];
  integerValue = [optionCopy integerValue];

  return getSelectedIntelligentCallScreeningMenuOptionForPhone == integerValue;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));

  return WeakRetained;
}

- (void)refreshView:(id)view
{
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (!viewCopy)
  {
    viewCopy = [(IntelligentCallScreeningSettingsBundleController *)self getCurrentlySelectedIntelligentCallScreeningSpecifier];
  }

  [viewCopy setProperty:MEMORY[0x277CBEC38] forKey:@"specifier-checked"];
  parentListController = [(IntelligentCallScreeningSettingsBundleController *)self parentListController];
  [parentListController reloadSpecifier:viewCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v6 = self->_specifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([v12 isEqualToSpecifier:viewCopy] & 1) == 0)
        {
          v13 = [v12 propertyForKey:@"specifier-checked"];
          v14 = [v13 isEqual:v10];

          if (v14)
          {
            [v12 setProperty:MEMORY[0x277CBEC28] forKey:@"specifier-checked"];
            parentListController2 = [(IntelligentCallScreeningSettingsBundleController *)selfCopy parentListController];
            [parentListController2 reloadSpecifier:v12];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone
{
  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [configurationProvider getSelectedIntelligentCallScreeningMenuOptionForPhone];

  return getSelectedIntelligentCallScreeningMenuOptionForPhone;
}

- (id)getCurrentlySelectedIntelligentCallScreeningSpecifier
{
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [(IntelligentCallScreeningSettingsBundleController *)self getSelectedIntelligentCallScreeningMenuOptionForPhone];
  intelligentCallScreeningOptionToSpecifierMap = self->_intelligentCallScreeningOptionToSpecifierMap;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:getSelectedIntelligentCallScreeningMenuOptionForPhone];
  v6 = [(NSMutableDictionary *)intelligentCallScreeningOptionToSpecifierMap objectForKey:v5];

  return v6;
}

- (void)setSelectedIntelligentCallScreeningOption:(id)option
{
  optionCopy = option;
  identifier = [optionCopy identifier];
  v6 = [(IntelligentCallScreeningSettingsBundleController *)self isCurrentOption:identifier];

  if (!v6)
  {
    [(IntelligentCallScreeningSettingsBundleController *)self refreshView:optionCopy];
    identifier2 = [optionCopy identifier];
    stringValue = [&unk_284EEBF60 stringValue];
    if ([identifier2 isEqualToString:stringValue])
    {
      getCallScreeningEnabled = [(IntelligentCallScreeningSettingsBundleController *)self getCallScreeningEnabled];

      if (getCallScreeningEnabled)
      {
LABEL_9:
        v12 = dispatch_get_global_queue(33, 0);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __94__IntelligentCallScreeningSettingsBundleController_setSelectedIntelligentCallScreeningOption___block_invoke;
        v13[3] = &unk_278BB3588;
        v14 = optionCopy;
        selfCopy = self;
        dispatch_async(v12, v13);

        goto LABEL_10;
      }

      v11 = PHDefaultLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C144000, v11, OS_LOG_TYPE_DEFAULT, "Turning on Live Voicemail due to Receptionist turning on", buf, 2u);
      }

      [(IntelligentCallScreeningSettingsBundleController *)self setCallScreeningEnabled:1];
      identifier2 = [MEMORY[0x277CCAB98] defaultCenter];
      [identifier2 postNotificationName:@"TUCallScreeningSettingsChangedNotification" object:0];
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __94__IntelligentCallScreeningSettingsBundleController_setSelectedIntelligentCallScreeningOption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 integerValue];

  v4 = [*(a1 + 40) configurationProvider];
  [v4 setSelectedIntelligentCallScreeningMenuOptionForPhone:v3];
}

- (BOOL)getCallScreeningEnabled
{
  featureFlags = [(IntelligentCallScreeningSettingsBundleController *)self featureFlags];
  deviceExpertMigrationEnabled = [featureFlags deviceExpertMigrationEnabled];

  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  v6 = configurationProvider;
  if (deviceExpertMigrationEnabled)
  {
    isCallScreeningEnabled = [configurationProvider isCallScreeningEnabled];
  }

  else
  {
    isCallScreeningEnabled = [configurationProvider getSelectedIntelligentCallScreeningMenuOptionForPhone] != 0;
  }

  return isCallScreeningEnabled;
}

- (void)setCallScreeningEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  configurationProvider = [(IntelligentCallScreeningSettingsBundleController *)self configurationProvider];
  [configurationProvider setCallScreeningEnabled:enabledCopy];
}

@end