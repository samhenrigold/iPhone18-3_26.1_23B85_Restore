@interface PSUINetworkSettingsSubgroup
- (PSListController)listController;
- (PSSpecifier)parentSpecifier;
- (PSUINetworkSettingsSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUINetworkSettingsSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier;
- (id)specifiers;
@end

@implementation PSUINetworkSettingsSubgroup

- (PSUINetworkSettingsSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier
{
  controllerCopy = controller;
  parentSpecifierCopy = parentSpecifier;
  v12.receiver = self;
  v12.super_class = PSUINetworkSettingsSubgroup;
  v9 = [(PSUINetworkSettingsSubgroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_listController, controllerCopy);
    objc_storeWeak(&v10->_parentSpecifier, parentSpecifierCopy);
  }

  return v10;
}

- (PSUINetworkSettingsSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)specifiers
{
  v36[1] = *MEMORY[0x277D85DE8];
  v30 = objc_opt_new();
  v3 = objc_opt_new();
  bundleControllers = self->_bundleControllers;
  self->_bundleControllers = v3;

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [(PSUIVoiceAndDataSpecifier *)mEMORY[0x277D4D868] subscriptionContexts];
  if ([subscriptionContexts count] <= 1)
  {
  }

  else
  {
    v29 = +[PSUICellularPlanManagerCache sharedInstance];
    planItems = [v29 planItems];
    v8 = [planItems count];
    v9 = +[PSUICellularPlanManagerCache sharedInstance];
    danglingPlanItems = [v9 danglingPlanItems];
    v11 = [danglingPlanItems count] + v8;
    v12 = +[PSUICellularPlanManagerCache sharedInstance];
    plansPendingTransfer = [v12 plansPendingTransfer];
    v14 = v11 + [plansPendingTransfer count];

    if (v14 < 2)
    {
      goto LABEL_7;
    }

    v15 = [PSUIVoiceAndDataSpecifier alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v17 = objc_loadWeakRetained(&self->_parentSpecifier);
    v18 = [v17 propertyForKey:*MEMORY[0x277D40128]];
    mEMORY[0x277D4D868] = [(PSUIVoiceAndDataSpecifier *)v15 initWithHostController:WeakRetained subscriptionContext:v18 groupSpecifierToUpdateFooterFor:0];

    if (mEMORY[0x277D4D868])
    {
      [v30 addObject:mEMORY[0x277D4D868]];
    }
  }

LABEL_7:
  v35 = *MEMORY[0x277D3FE08];
  v36[0] = @"EDGESettings";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v32 = v19;
  v33 = @"items";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v34 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v22 = objc_loadWeakRetained(&self->_parentSpecifier);
  v23 = objc_loadWeakRetained(&self->_listController);
  bundle = [v23 bundle];
  v25 = objc_loadWeakRetained(&self->_listController);
  v31 = 0;
  v26 = SpecifiersFromPlist();

  v27 = v31;
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v27, &v31];
  [v30 addObjectsFromArray:v26];

  return v30;
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