@interface PSUICallingSubgroup
- (PSListController)listController;
- (PSSpecifier)parentSpecifier;
- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier;
- (id)specifiers;
- (void)setWifiCallingSpecifiers:(id)specifiers;
- (void)viewWillAppear;
@end

@implementation PSUICallingSubgroup

- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier
{
  controllerCopy = controller;
  parentSpecifierCopy = parentSpecifier;
  v14.receiver = self;
  v14.super_class = PSUICallingSubgroup;
  v9 = [(PSUICallingSubgroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_listController, controllerCopy);
    v11 = objc_storeWeak(&v10->_parentSpecifier, parentSpecifierCopy);
    v12 = [parentSpecifierCopy propertyForKey:*MEMORY[0x277D40128]];

    v10->_supportsWiFiCalling = [SettingsCellularUtils supportsWiFiCalling:v12];
  }

  return v10;
}

- (PSUICallingSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)viewWillAppear
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_wifiCallingSpecifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_listController);
        [WeakRetained reloadSpecifier:{v8, v10}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)specifiers
{
  v38[1] = *MEMORY[0x277D85DE8];
  v25 = objc_opt_new();
  v3 = objc_opt_new();
  bundleControllers = self->_bundleControllers;
  self->_bundleControllers = v3;

  v37 = *MEMORY[0x277D3FE08];
  v22 = v37;
  v38[0] = @"WiFiCallingTelephonySettings";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v34 = v26;
  v35 = @"items";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v36 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v8 = objc_loadWeakRetained(&self->_listController);
  bundle = [v8 bundle];
  v10 = objc_loadWeakRetained(&self->_listController);
  v28 = 0;
  v11 = SpecifiersFromPlist();

  v24 = v28;
  v12 = [v11 copy];
  [(PSUICallingSubgroup *)self setWifiCallingSpecifiers:v12];

  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v24];
  [v25 addObjectsFromArray:self->_wifiCallingSpecifiers];
  v32 = v22;
  v33 = @"PrimaryCloudCallingSettingsBundle";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v29 = v23;
  v30 = @"items";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v31 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v15 = objc_loadWeakRetained(&self->_parentSpecifier);
  v16 = objc_loadWeakRetained(&self->_listController);
  bundle2 = [v16 bundle];
  v18 = objc_loadWeakRetained(&self->_listController);
  v27 = 0;
  v19 = SpecifiersFromPlist();

  v20 = v27;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v20, &v27];
  [v25 addObjectsFromArray:v19];

  return v25;
}

- (void)setWifiCallingSpecifiers:(id)specifiers
{
  v10 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  if (self->_supportsWiFiCalling)
  {
    objc_storeStrong(&self->_wifiCallingSpecifiers, specifiers);
    p_super = [(PSUICallingSubgroup *)self getLogger];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PSUICallingSubgroup setWifiCallingSpecifiers:]";
      _os_log_impl(&dword_2658DE000, p_super, OS_LOG_TYPE_DEFAULT, "%s WiFi calling is supported, adding specifiers", &v8, 0xCu);
    }
  }

  else
  {
    getLogger = [(PSUICallingSubgroup *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PSUICallingSubgroup setWifiCallingSpecifiers:]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s WiFi calling is not supported, omitting specifiers", &v8, 0xCu);
    }

    p_super = &self->_wifiCallingSpecifiers->super;
    self->_wifiCallingSpecifiers = 0;
  }
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

@end