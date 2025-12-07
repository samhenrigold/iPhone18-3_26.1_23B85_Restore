@interface CSLPRFStingQuickSwitchModel
- (BOOL)isQuickSwitchEnabled;
- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)delegate;
- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)delegate settingsModel:(id)model;
- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)delegate settingsModel:(id)model settings:(id)settings;
- (CSLPRFStingQuickSwitchModelDelegate)delegate;
- (NSArray)availableQuickSwitchActions;
- (id)existingItemForActionType:(unint64_t)type;
- (void)lock_restoreFromSettings;
- (void)quickSwitchItemDidChange:(id)change;
- (void)restoreFromSettings;
- (void)setQuickSwitchEnabled:(BOOL)enabled;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation CSLPRFStingQuickSwitchModel

- (CSLPRFStingQuickSwitchModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  [(CSLPRFStingQuickSwitchModel *)self restoreFromSettings];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained quickSwitchModelDidChange:self];
}

- (void)quickSwitchItemDidChange:(id)change
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  obj = self;
  objc_sync_enter(obj);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = obj->_allQuickSwitchItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        actionType = [v10 actionType];
        if (actionType == [changeCopy actionType])
        {
          [v10 setAvailableForQuickSwitch:{objc_msgSend(changeCopy, "isAvailableForQuickSwitch")}];
        }

        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "isAvailableForQuickSwitch")}];
        settingsItem = [v10 settingsItem];
        identifier = [settingsItem identifier];
        [dictionary setObject:v12 forKeyedSubscript:identifier];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  quickSwitchSettings = obj->_quickSwitchSettings;
  v16 = [dictionary copy];
  [(CSLPRFStingQuickSwitchSettings *)quickSwitchSettings setQuickSwitchActionAvailability:v16];

  objc_sync_exit(obj);
  WeakRetained = objc_loadWeakRetained(&obj->_delegate);
  [WeakRetained quickSwitchModelDidChange:obj];
}

- (NSArray)availableQuickSwitchActions
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = selfCopy->_allQuickSwitchItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isAvailableForQuickSwitch])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)existingItemForActionType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = selfCopy->_allQuickSwitchItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 actionType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)setQuickSwitchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_quickSwitchEnabled == enabledCopy)
  {
    objc_sync_exit(obj);
    v4 = obj;
  }

  else
  {
    obj->_quickSwitchEnabled = enabledCopy;
    [(CSLPRFStingQuickSwitchSettings *)obj->_quickSwitchSettings setQuickSwitchEnabled:enabledCopy];
    objc_sync_exit(obj);

    WeakRetained = objc_loadWeakRetained(&obj->_delegate);
    [(CSLPRFStingQuickSwitchModel *)WeakRetained quickSwitchModelDidChange:obj];
    v4 = WeakRetained;
  }
}

- (BOOL)isQuickSwitchEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isQuickSwitchEnabled = [(CSLPRFStingQuickSwitchSettings *)selfCopy->_quickSwitchSettings isQuickSwitchEnabled];
  objc_sync_exit(selfCopy);

  return isQuickSwitchEnabled;
}

- (void)lock_restoreFromSettings
{
  v37 = *MEMORY[0x277D85DE8];
  self->_quickSwitchEnabled = [(CSLPRFStingQuickSwitchSettings *)self->_quickSwitchSettings isQuickSwitchEnabled];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  quickActionItems = [(CSLPRFStingSettingsModel *)self->_stingModel quickActionItems];
  v25 = [v3 initWithCapacity:{objc_msgSend(quickActionItems, "count")}];

  v5 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    quickActionItems2 = [(CSLPRFStingSettingsModel *)self->_stingModel quickActionItems];
    defaultQuickActionItems = [(CSLPRFStingSettingsModel *)self->_stingModel defaultQuickActionItems];
    *buf = 138412802;
    selfCopy2 = self;
    v33 = 2112;
    v34 = quickActionItems2;
    v35 = 2112;
    v36 = defaultQuickActionItems;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEFAULT, "%@: _settingsModel.quickActionItems %@ _settingsModel.defaultQuickActionItems %@", buf, 0x20u);
  }

  quickSwitchActionAvailability = [(CSLPRFStingQuickSwitchSettings *)self->_quickSwitchSettings quickSwitchActionAvailability];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(CSLPRFStingSettingsModel *)self->_stingModel quickActionItems];
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        linkActionType = [v13 linkActionType];
        if ((linkActionType - 1) > 0x29)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_278744510[linkActionType - 1];
        }

        v16 = v15;
        v17 = [quickSwitchActionAvailability objectForKeyedSubscript:v16];
        v18 = v17;
        if (v17)
        {
          bOOLValue = [v17 BOOLValue];
        }

        else
        {
          bOOLValue = 1;
        }

        v20 = -[CSLPRFStingQuickSwitchModel existingItemForActionType:](self, "existingItemForActionType:", [v13 linkActionType]);
        if (v20)
        {
          v21 = v20;
          [(CSLPRFStingQuickSwitchItem *)v20 setAvailableForQuickSwitch:bOOLValue];
        }

        else
        {
          v21 = [[CSLPRFStingQuickSwitchItem alloc] initWithDelegate:self settingsItem:v13 availability:bOOLValue];
        }

        [(NSArray *)v25 addObject:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v22 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&dword_22CE92000, v22, OS_LOG_TYPE_DEFAULT, "%@: allQuickSwitchItems %@", buf, 0x16u);
  }

  allQuickSwitchItems = self->_allQuickSwitchItems;
  self->_allQuickSwitchItems = v25;
}

- (void)restoreFromSettings
{
  obj = self;
  objc_sync_enter(obj);
  [(CSLPRFStingQuickSwitchModel *)obj lock_restoreFromSettings];
  objc_sync_exit(obj);
}

- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)delegate settingsModel:(id)model settings:(id)settings
{
  v21 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  modelCopy = model;
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = CSLPRFStingQuickSwitchModel;
  v11 = [(CSLPRFStingQuickSwitchModel *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_stingModel, model);
    objc_storeStrong(&v12->_quickSwitchSettings, settings);
    [(CSLPRFTwoWaySyncSetting *)v12->_quickSwitchSettings setDelegate:v12];
    v13 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      stingModel = v12->_stingModel;
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = stingModel;
      _os_log_debug_impl(&dword_22CE92000, v13, OS_LOG_TYPE_DEBUG, "%@: _settingsModel %@", buf, 0x16u);
    }

    [(CSLPRFStingQuickSwitchModel *)v12 restoreFromSettings];
  }

  return v12;
}

- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)delegate settingsModel:(id)model
{
  modelCopy = model;
  delegateCopy = delegate;
  v8 = +[CSLPRFStingQuickSwitchSettings fetchQuickSwitchSettings];
  v9 = [(CSLPRFStingQuickSwitchModel *)self initWithDelegate:delegateCopy settingsModel:modelCopy settings:v8];

  return v9;
}

- (CSLPRFStingQuickSwitchModel)initWithDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_alloc_init(CSLPRFStingConfiguration);
  v6 = objc_alloc_init(CSLPRFStingSettingsModel);
  v7 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEFAULT, "%@:configuration %@ settingsModel %@", &v10, 0x20u);
  }

  v8 = [(CSLPRFStingQuickSwitchModel *)self initWithDelegate:delegateCopy settingsModel:v6];
  return v8;
}

@end