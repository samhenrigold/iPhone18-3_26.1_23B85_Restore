@interface PhoneSettingsNetworksController
- (BOOL)_isInAutomaticMode;
- (BOOL)_isInManualMode;
- (PSSpecifier)automaticSpecifier;
- (PSSpecifier)networksGroupSpecifier;
- (PSSpecifier)searchingSpecifier;
- (PSSpecifier)titleSpecifier;
- (PhoneSettingsNetworksController)init;
- (id)descriptionDictionary;
- (id)getAutomaticSwitchStateForSpecifier:(id)specifier;
- (int)_currentNetworkSelectionState;
- (void)_autoSwitchTurnedOn;
- (void)_handleNetworkFetcherErrorNotification:(id)notification;
- (void)_handleNetworkFetcherStateChangedNotification:(id)notification;
- (void)_handleNetworkSettingsDisabledNotification:(id)notification;
- (void)_handleNetworksChangedNotification:(id)notification;
- (void)_handleRadioOffErrorNotification:(id)notification;
- (void)_handleSimChangedNotification:(id)notification;
- (void)_registerEventListeners;
- (void)_setAutomaticSwitchOn:(BOOL)on animated:(BOOL)animated;
- (void)_settingsResumed;
- (void)_updateCachedMobileIdentity;
- (void)dealloc;
- (void)listItemSelected:(id)selected;
- (void)setAutomaticSwitchState:(id)state forSpecifier:(id)specifier;
- (void)setShowNetworkList:(BOOL)list;
- (void)updateNetworkListSpecifierStates;
- (void)updateNetworkListSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PhoneSettingsNetworksController

- (PhoneSettingsNetworksController)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PhoneSettingsNetworksController;
  v2 = [(PhoneSettingsNetworksController *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(PhoneSettingsTelephony);
    telephonySettings = v2->_telephonySettings;
    v2->_telephonySettings = v3;

    [(PhoneSettingsNetworksController *)v2 _registerEventListeners];
    v5 = objc_alloc_init(PHNetworkFetcher);
    fetcher = v2->_fetcher;
    v2->_fetcher = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    networksSpecifiersArray = v2->_networksSpecifiersArray;
    v2->_networksSpecifiersArray = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    titleSpecifier = [(PhoneSettingsNetworksController *)v2 titleSpecifier];
    [v9 addObject:titleSpecifier];

    automaticSpecifier = [(PhoneSettingsNetworksController *)v2 automaticSpecifier];
    [v9 addObject:automaticSpecifier];

    v12 = *MEMORY[0x277D3FC48];
    v13 = *(&v2->super.super.super.super.super.super.isa + v12);
    *(&v2->super.super.super.super.super.super.isa + v12) = v9;

    v14 = PHDefaultLog([(PhoneSettingsNetworksController *)v2 _updateCachedMobileIdentity]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      descriptionDictionary = [(PhoneSettingsNetworksController *)v2 descriptionDictionary];
      *buf = 138412290;
      v19 = descriptionDictionary;
      _os_log_impl(&dword_23C12D000, v14, OS_LOG_TYPE_DEFAULT, "Initializing Phone Settings Network Controller: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PhoneSettingsNetworksController;
  [(PSListItemsController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PhoneSettingsNetworksController;
  [(PSListItemsController *)&v6 viewDidLoad];
  navigationItem = [(PhoneSettingsNetworksController *)self navigationItem];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Network Selection" value:&stru_284EE7748 table:@"Carrier"];
  [navigationItem setTitle:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PhoneSettingsNetworksController;
  [(PSListItemsController *)&v4 viewWillAppear:appear];
  if ([(PhoneSettingsNetworksController *)self _isInManualMode])
  {
    [(PhoneSettingsNetworksController *)self setShowNetworkList:1];
  }
}

- (void)listItemSelected:(id)selected
{
  v20 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  v5 = PHDefaultLog(selectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = selectedCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "IndexPath selected: %@", &v18, 0xCu);
  }

  if ([selectedCopy section] == 1)
  {
    v6 = [selectedCopy row];
    searchingSpecifier = [(PhoneSettingsNetworksController *)self searchingSpecifier];
    v8 = [(PhoneSettingsNetworksController *)self containsSpecifier:searchingSpecifier];

    v10 = v6 - v8;
    if (v10 < 0 || (-[PhoneSettingsNetworksController fetcher](self, "fetcher"), v11 = objc_claimAutoreleasedReturnValue(), [v11 networks], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v10 >= v13))
    {
      v16 = PHDefaultLog(v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(PhoneSettingsNetworksController *)v10 listItemSelected:v16];
      }
    }

    else
    {
      fetcher = [(PhoneSettingsNetworksController *)self fetcher];
      networks = [fetcher networks];
      v16 = [networks objectAtIndex:v10];

      fetcher2 = [(PhoneSettingsNetworksController *)self fetcher];
      [fetcher2 selectNetwork:v16];
    }
  }
}

- (void)_handleRadioOffErrorNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    descriptionDictionary = [(PhoneSettingsNetworksController *)self descriptionDictionary];
    v8 = 138412546;
    v9 = name;
    v10 = 2112;
    v11 = descriptionDictionary;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v8, 0x16u);
  }

  [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
}

- (void)_handleSimChangedNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    descriptionDictionary = [(PhoneSettingsNetworksController *)self descriptionDictionary];
    v10 = 138412546;
    v11 = name;
    v12 = 2112;
    v13 = descriptionDictionary;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v10, 0x16u);
  }

  telephonySettings = [(PhoneSettingsNetworksController *)self telephonySettings];
  simIsPresent = [telephonySettings simIsPresent];

  if ((simIsPresent & 1) == 0)
  {
    [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
  }
}

- (void)_handleNetworkSettingsDisabledNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    descriptionDictionary = [(PhoneSettingsNetworksController *)self descriptionDictionary];
    v8 = 138412546;
    v9 = name;
    v10 = 2112;
    v11 = descriptionDictionary;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v8, 0x16u);
  }

  [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
}

- (void)_handleNetworksChangedNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(PhoneSettingsNetworksController *)self updateNetworkListSpecifiers];
}

- (void)_handleNetworkFetcherStateChangedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = PHDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v14 = 138412290;
    v15 = name;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v14, 0xCu);
  }

  fetcher = [(PhoneSettingsNetworksController *)self fetcher];
  if ([fetcher state] == 1)
  {
    searchingSpecifier = [(PhoneSettingsNetworksController *)self searchingSpecifier];
    v9 = [(PhoneSettingsNetworksController *)self containsSpecifier:searchingSpecifier];

    if (v9)
    {
      searchingSpecifier2 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
      [(PhoneSettingsNetworksController *)self removeSpecifier:searchingSpecifier2 animated:1];
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
  }

  searchingSpecifier2 = [(PhoneSettingsNetworksController *)self fetcher];
  if ([searchingSpecifier2 state] != 2 || !-[PhoneSettingsNetworksController showNetworkList](self, "showNetworkList"))
  {
    goto LABEL_11;
  }

  searchingSpecifier3 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
  v12 = [(PhoneSettingsNetworksController *)self containsSpecifier:searchingSpecifier3];

  if ((v12 & 1) == 0)
  {
    searchingSpecifier2 = [(PhoneSettingsNetworksController *)self searchingSpecifier];
    networksGroupSpecifier = [(PhoneSettingsNetworksController *)self networksGroupSpecifier];
    [(PhoneSettingsNetworksController *)self insertSpecifier:searchingSpecifier2 afterSpecifier:networksGroupSpecifier];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_autoSwitchTurnedOn
{
  if (![(PhoneSettingsNetworksController *)self _isInAutomaticMode])
  {
    telephonySettings = [(PhoneSettingsNetworksController *)self telephonySettings];
    [telephonySettings enableAutomaticNetworkSelection];
  }

  [(PhoneSettingsNetworksController *)self setShowNetworkList:0];
}

- (void)setShowNetworkList:(BOOL)list
{
  if (self->_showNetworkList != list)
  {
    listCopy = list;
    if (list)
    {
      fetcher = [(PhoneSettingsNetworksController *)self fetcher];
      [fetcher fetchNetworkList];
    }

    [(PhoneSettingsNetworksController *)self updateNetworkListSpecifiers];
    [(PhoneSettingsNetworksController *)self updateNetworkListSpecifierStates];
    array = [MEMORY[0x277CBEB18] array];
    networksGroupSpecifier = [(PhoneSettingsNetworksController *)self networksGroupSpecifier];
    [array addObject:networksGroupSpecifier];

    fetcher2 = [(PhoneSettingsNetworksController *)self fetcher];
    state = [fetcher2 state];

    if (state == 2)
    {
      searchingSpecifier = [(PhoneSettingsNetworksController *)self searchingSpecifier];
      [array addObject:searchingSpecifier];

      v10 = [(PSSpecifier *)self->_searchingSpecifier propertyForKey:*MEMORY[0x277D40148]];
      [v10 setLoading:1];
    }

    networksSpecifiersArray = [(PhoneSettingsNetworksController *)self networksSpecifiersArray];
    [array addObjectsFromArray:networksSpecifiersArray];

    if (listCopy)
    {
      [(PhoneSettingsNetworksController *)self addSpecifiersFromArray:array animated:1];
    }

    else
    {
      [(PhoneSettingsNetworksController *)self removeContiguousSpecifiers:array animated:1];
    }

    self->_showNetworkList = listCopy;
  }
}

- (void)updateNetworkListSpecifiers
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  fetcher = [(PhoneSettingsNetworksController *)self fetcher];
  networks = [fetcher networks];

  v6 = [networks countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x277D3FE58];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(networks);
        }

        v11 = MEMORY[0x277D3FAD8];
        displayName = [*(*(&v20 + 1) + 8 * i) displayName];
        v13 = [v11 preferenceSpecifierNamed:displayName target:0 set:0 get:0 detail:0 cell:3 edit:0];

        [v13 setProperty:objc_opt_class() forKey:v9];
        [array addObject:v13];
      }

      v7 = [networks countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = PHDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = array;
    _os_log_impl(&dword_23C12D000, v15, OS_LOG_TYPE_DEFAULT, "Updating Carrier Specifiers with list: %@", buf, 0xCu);
  }

  if ([(PhoneSettingsNetworksController *)selfCopy showNetworkList])
  {
    networksSpecifiersArray = [(PhoneSettingsNetworksController *)selfCopy networksSpecifiersArray];
    v17 = [networksSpecifiersArray count];

    if (v17)
    {
      networksSpecifiersArray2 = [(PhoneSettingsNetworksController *)selfCopy networksSpecifiersArray];
      [(PhoneSettingsNetworksController *)selfCopy replaceContiguousSpecifiers:networksSpecifiersArray2 withSpecifiers:array];
    }

    else
    {
      [(PhoneSettingsNetworksController *)selfCopy addSpecifiersFromArray:array animated:1];
    }
  }

  [(PhoneSettingsNetworksController *)selfCopy setNetworksSpecifiersArray:array];
}

- (void)updateNetworkListSpecifierStates
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Updating list specifier states", buf, 2u);
  }

  fetcher = [(PhoneSettingsNetworksController *)self fetcher];
  networks = [fetcher networks];
  v6 = [networks count];

  if (v6)
  {
    v8 = 0;
    *&v7 = 138412290;
    v25 = v7;
    v9 = MEMORY[0x277D3FC60];
    do
    {
      fetcher2 = [(PhoneSettingsNetworksController *)self fetcher];
      networks2 = [fetcher2 networks];
      v12 = [networks2 objectAtIndexedSubscript:v8];

      v14 = PHDefaultLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v25;
        v27 = v12;
        _os_log_impl(&dword_23C12D000, v14, OS_LOG_TYPE_DEFAULT, "Updating list specifier for network: %@", buf, 0xCu);
      }

      searchingSpecifier = [(PhoneSettingsNetworksController *)self searchingSpecifier];
      v16 = [(PhoneSettingsNetworksController *)self containsSpecifier:searchingSpecifier];

      v17 = v8 + v16;
      v18 = *(&self->super.super.super.super.super.super.isa + *v9);
      v19 = 1;
      v20 = [MEMORY[0x277CCAA70] indexPathForRow:v17 inSection:1];
      v21 = [v18 cellForRowAtIndexPath:v20];

      if ([v12 state] != 3)
      {
        v19 = [v12 state] == 2;
      }

      [v21 setReallyChecked:v19];

      ++v8;
      fetcher3 = [(PhoneSettingsNetworksController *)self fetcher];
      networks3 = [fetcher3 networks];
      v24 = [networks3 count];
    }

    while (v24 > v8);
  }
}

- (void)_handleNetworkFetcherErrorNotification:(id)notification
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v4 localizedStringForKey:@"LIST_LOAD_ERROR" value:&stru_284EE7748 table:@"Carrier"];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v10 preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_284EE7748 table:@"Carrier"];
  v9 = [v6 actionWithTitle:v8 style:0 handler:0];
  [v5 addAction:v9];

  [(PhoneSettingsNetworksController *)self presentViewController:v5 animated:1 completion:0];
}

- (id)descriptionDictionary
{
  telephonySettings = [(PhoneSettingsNetworksController *)self telephonySettings];
  manuallySelectedNetworkDictionary = [telephonySettings manuallySelectedNetworkDictionary];

  v5 = MEMORY[0x277CBEAC0];
  if (manuallySelectedNetworkDictionary)
  {
    v6 = manuallySelectedNetworkDictionary;
  }

  else
  {
    v6 = @"--Nil--";
  }

  v7 = MEMORY[0x277CCABB0];
  telephonySettings2 = [(PhoneSettingsNetworksController *)self telephonySettings];
  v9 = [v7 numberWithInt:{objc_msgSend(telephonySettings2, "networkSelectionMode")}];
  v10 = CTRegistrationCopyLocalizedOperatorName();
  v11 = [v5 dictionaryWithObjectsAndKeys:{v6, @"ManuallySelectedNetworkDictionary", v9, @"NetworkSelectionMode", v10, @"CTRegistrationCopyLocalizedOperatorName", CTRegistrationGetStatus(), @"CTRegistrationGetStatus", 0}];
  v12 = [v5 dictionaryWithObject:v11 forKey:@"PhoneSettingsNetworkState"];

  return v12;
}

- (void)_registerEventListeners
{
  [(PhoneSettingsTelephony *)self->_telephonySettings startWatching];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleRadioOffErrorNotification_ name:@"SettingsTelephonyRadioModuleOffErrorNotification" object:self->_telephonySettings];
  [defaultCenter addObserver:self selector:sel__handleSimChangedNotification_ name:@"SettingsTelephonySIMRemoved" object:self->_telephonySettings];
  [defaultCenter addObserver:self selector:sel__handleNetworkSettingsDisabledNotification_ name:@"SettingsTelephonyNetworkSettingsDisabledNotification" object:self->_telephonySettings];
  [defaultCenter addObserver:self selector:sel__handleNetworksChangedNotification_ name:@"PHNetworkFetcherNetworksChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleNetworkFetcherStateChangedNotification_ name:@"PHNetworkFetcherStateChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleNetworkFetcherNetworkSelectionStateChangedNotification_ name:@"PHNetworkFetcherNetworkSelectionChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleNetworkFetcherErrorNotification_ name:@"PHNetworkFetcherErrorNotification" object:0];
  [defaultCenter addObserver:self selector:sel__settingsResumed name:*MEMORY[0x277D76758] object:0];
}

- (void)setAutomaticSwitchState:(id)state forSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  specifierCopy = specifier;
  automaticSpecifier = [(PhoneSettingsNetworksController *)self automaticSpecifier];

  if (automaticSpecifier == specifierCopy)
  {
    bOOLValue = [stateCopy BOOLValue];
    v10 = bOOLValue;
    v11 = PHDefaultLog(bOOLValue);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (v10)
      {
        v12 = @"YES";
      }

      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_23C12D000, v11, OS_LOG_TYPE_DEFAULT, "Setting automatic switch to %@", &v13, 0xCu);
    }

    if (v10)
    {
      [(PhoneSettingsNetworksController *)self _autoSwitchTurnedOn];
    }

    else
    {
      [(PhoneSettingsNetworksController *)self _autoSwitchTurnedOff];
    }
  }
}

- (id)getAutomaticSwitchStateForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  automaticSpecifier = [(PhoneSettingsNetworksController *)self automaticSpecifier];

  v6 = automaticSpecifier == specifierCopy && [(PhoneSettingsNetworksController *)self _isInAutomaticMode];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (void)_setAutomaticSwitchOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  v15 = *MEMORY[0x277D85DE8];
  automaticSpecifier = [(PhoneSettingsNetworksController *)self automaticSpecifier];
  v7 = [automaticSpecifier propertyForKey:*MEMORY[0x277D40148]];
  control = [v7 control];
  v9 = PHDefaultLog(control);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (onCopy)
    {
      v10 = @"YES";
    }

    v11 = 138412546;
    v12 = control;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "Updating automatic switch UI %@ to %@", &v11, 0x16u);
  }

  [control setOn:onCopy animated:animatedCopy];
}

- (BOOL)_isInAutomaticMode
{
  telephonySettings = [(PhoneSettingsNetworksController *)self telephonySettings];
  networkSelectionMode = [telephonySettings networkSelectionMode];

  return networkSelectionMode == 0;
}

- (BOOL)_isInManualMode
{
  telephonySettings = [(PhoneSettingsNetworksController *)self telephonySettings];
  networkSelectionMode = [telephonySettings networkSelectionMode];

  return networkSelectionMode == 1;
}

- (int)_currentNetworkSelectionState
{
  telephonySettings = [(PhoneSettingsNetworksController *)self telephonySettings];
  currentNetworkSelectionState = [telephonySettings currentNetworkSelectionState];

  return currentNetworkSelectionState;
}

- (void)_settingsResumed
{
  v4 = [(NSString *)self->_cachedMobileIdentity copy];
  _updateCachedMobileIdentity = [(PhoneSettingsNetworksController *)self _updateCachedMobileIdentity];
  if (v4)
  {
    _updateCachedMobileIdentity = [v4 isEqualToString:self->_cachedMobileIdentity];
    if ((_updateCachedMobileIdentity & 1) == 0)
    {
      _updateCachedMobileIdentity = [(PhoneSettingsNetworksController *)self isViewLoaded];
      if (_updateCachedMobileIdentity)
      {
        _updateCachedMobileIdentity = [(PhoneSettingsNetworksController *)self popRecursivelyToRootController];
      }
    }
  }

  MEMORY[0x2821F96F8](_updateCachedMobileIdentity);
}

- (void)_updateCachedMobileIdentity
{
  v3 = _CTServerConnectionCreate();
  cachedMobileIdentity = self->_cachedMobileIdentity;
  self->_cachedMobileIdentity = 0;

  if (v3)
  {
    _CTServerConnectionCopyMobileEquipmentInfo();
    CFRelease(v3);
  }
}

- (PSSpecifier)titleSpecifier
{
  titleSpecifier = self->_titleSpecifier;
  if (!titleSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CARRIER_LIST_TITLE" value:&stru_284EE7748 table:@"Carrier"];
    v7 = [v4 groupSpecifierWithName:v6];
    v8 = self->_titleSpecifier;
    self->_titleSpecifier = v7;

    [(PSSpecifier *)self->_titleSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    titleSpecifier = self->_titleSpecifier;
  }

  return titleSpecifier;
}

- (PSSpecifier)automaticSpecifier
{
  automaticSpecifier = self->_automaticSpecifier;
  if (!automaticSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Automatic" value:&stru_284EE7748 table:@"Carrier"];
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:sel_setAutomaticSwitchState_forSpecifier_ get:sel_getAutomaticSwitchStateForSpecifier_ detail:0 cell:6 edit:0];
    v8 = self->_automaticSpecifier;
    self->_automaticSpecifier = v7;

    automaticSpecifier = self->_automaticSpecifier;
  }

  return automaticSpecifier;
}

- (PSSpecifier)searchingSpecifier
{
  searchingSpecifier = self->_searchingSpecifier;
  if (!searchingSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SEARCHING" value:&stru_284EE7748 table:@"Carrier"];
    v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:4 edit:0];
    v8 = self->_searchingSpecifier;
    self->_searchingSpecifier = v7;

    [(PSSpecifier *)self->_searchingSpecifier setProperty:*MEMORY[0x277CBED10] forKey:*MEMORY[0x277D3FF38]];
    [(PSSpecifier *)self->_searchingSpecifier setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    searchingSpecifier = self->_searchingSpecifier;
  }

  return searchingSpecifier;
}

- (PSSpecifier)networksGroupSpecifier
{
  networksGroupSpecifier = self->_networksGroupSpecifier;
  if (!networksGroupSpecifier)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v5 = self->_networksGroupSpecifier;
    self->_networksGroupSpecifier = emptyGroupSpecifier;

    networksGroupSpecifier = self->_networksGroupSpecifier;
  }

  return networksGroupSpecifier;
}

- (void)listItemSelected:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_23C12D000, a2, OS_LOG_TYPE_ERROR, "No network found at index %ld", &v2, 0xCu);
}

@end