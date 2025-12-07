@interface FAHomeUISoftLinking
+ (id)getURLScheme;
+ (void)getURLScheme;
- (FAHomeUISoftLinking)initWithHome:(id)home notificationName:(id)name;
- (void)addPeopleViewController:(id)controller didSendInvitations:(id)invitations;
@end

@implementation FAHomeUISoftLinking

- (FAHomeUISoftLinking)initWithHome:(id)home notificationName:(id)name
{
  homeCopy = home;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = FAHomeUISoftLinking;
  v8 = [(FAHomeUISoftLinking *)&v14 init];
  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = getHUAddPeopleViewControllerClass_softClass;
    v19 = getHUAddPeopleViewControllerClass_softClass;
    if (!getHUAddPeopleViewControllerClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getHUAddPeopleViewControllerClass_block_invoke;
      v15[3] = &unk_2782F2988;
      v15[4] = &v16;
      __getHUAddPeopleViewControllerClass_block_invoke(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = [[v9 alloc] initWithHome:homeCopy];
    addPeopleController = v8->_addPeopleController;
    v8->_addPeopleController = v11;

    [(HUAddPeopleViewController *)v8->_addPeopleController setDelegate:v8];
    objc_storeStrong(&v8->_homeReloadSignal, name);
  }

  return v8;
}

+ (id)getURLScheme
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getHFHomeURLSchemeSymbolLoc_ptr;
  v11 = getHFHomeURLSchemeSymbolLoc_ptr;
  if (!getHFHomeURLSchemeSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getHFHomeURLSchemeSymbolLoc_block_invoke;
    v7[3] = &unk_2782F2988;
    v7[4] = &v8;
    __getHFHomeURLSchemeSymbolLoc_block_invoke(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    +[FAHomeUISoftLinking getURLScheme];
    v6 = v5;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v3 = *v2;

  return v3;
}

- (void)addPeopleViewController:(id)controller didSendInvitations:(id)invitations
{
  [controller dismissViewControllerAnimated:1 completion:&__block_literal_global_24];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:self->_homeReloadSignal object:0];
}

+ (void)getURLScheme
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __getHUAddPeopleViewControllerClass_block_invoke_cold_1();
}

@end