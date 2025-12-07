@interface ACUISAddAccountHelperSetupController
- (ACUISAddAccountHelperSetupController)init;
- (void)_dismissAndNotifyParent;
- (void)controller:(id)controller didFinishSettingUpAccount:(id)account;
@end

@implementation ACUISAddAccountHelperSetupController

- (ACUISAddAccountHelperSetupController)init
{
  v5.receiver = self;
  v5.super_class = ACUISAddAccountHelperSetupController;
  v2 = [(PSSetupController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ACUISAddAccountHelperSetupController *)v2 setRanDataclassSetup:0];
  }

  return v3;
}

- (void)controller:(id)controller didFinishSettingUpAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  v8 = _ACUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ACUISAddAccountHelperSetupController *)controllerCopy controller:accountCopy didFinishSettingUpAccount:v8];
  }

  specifier = [controllerCopy specifier];
  userInfo = [specifier userInfo];

  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE8558]];
  [v11 BOOLValue];

  if (self->_ranDataclassSetup)
  {
    goto LABEL_4;
  }

  self->_ranDataclassSetup = 1;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277CE8598];
  specifier2 = [controllerCopy specifier];
  name = [specifier2 name];
  specifier3 = [controllerCopy specifier];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __77__ACUISAddAccountHelperSetupController_controller_didFinishSettingUpAccount___block_invoke;
  v26 = &unk_278BFD1E8;
  objc_copyWeak(&v29, &location);
  v27 = accountCopy;
  selfCopy = self;
  v19 = [v15 dataclassConfigurationControllerForAccount:v27 name:name specifier:specifier3 completion:&v23];

  if (!v19)
  {

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
LABEL_4:
    v12 = _ACUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACUISAddAccountHelperSetupController controller:didFinishSettingUpAccount:];
    }

    completion = self->_completion;
    if (completion)
    {
      completion[2](completion, accountCopy);
      v14 = self->_completion;
      self->_completion = 0;
    }

    [(ACUISAddAccountHelperSetupController *)self _dismissAndNotifyParent:v23];
    goto LABEL_13;
  }

  v20 = _ACUILogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACUISAddAccountHelperSetupController controller:didFinishSettingUpAccount:];
  }

  v21 = [(ACUISAddAccountHelperSetupController *)self topViewController:v23];
  [v19 setParentController:v21];
  rootController = [(PSRootController *)self rootController];
  [v19 setRootController:rootController];

  [v21 pushController:v19];
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
LABEL_13:
}

void __77__ACUISAddAccountHelperSetupController_controller_didFinishSettingUpAccount___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained completion];

  if (v4)
  {
    v5 = [WeakRetained completion];
    v6 = v5;
    if (a2)
    {
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    (*(v5 + 16))(v5, v7);

    [WeakRetained setCompletion:0];
    [*(a1 + 40) _dismissAndNotifyParent];
  }
}

- (void)_dismissAndNotifyParent
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  *(&v1[3] + 2) = 100;
  _os_log_debug_impl(&dword_23DCDB000, v0, OS_LOG_TYPE_DEBUG, "%s (%d) Dismissing ACUISAddAccountHelperSetupController", v1, 0x12u);
}

- (void)controller:(NSObject *)a3 didFinishSettingUpAccount:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = [a2 username];
  v9[0] = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  v10 = v5;
  v11 = v7;
  v12 = v8;
  _os_log_debug_impl(&dword_23DCDB000, a3, OS_LOG_TYPE_DEBUG, "%s (%d) Controller %@ reports being finished with setting up account %@.", v9, 0x26u);
}

- (void)controller:didFinishSettingUpAccount:.cold.2()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23DCDB000, v0, v1, "%s (%d) Pushing dataclass configuration controller for %@.", v2, v3, v4, v5, v6);
}

- (void)controller:didFinishSettingUpAccount:.cold.3()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23DCDB000, v0, v1, "%s (%d) Didn't push dataclass configuration controller for %@. Considering it done", v2, v3, v4, v5, v6);
}

@end