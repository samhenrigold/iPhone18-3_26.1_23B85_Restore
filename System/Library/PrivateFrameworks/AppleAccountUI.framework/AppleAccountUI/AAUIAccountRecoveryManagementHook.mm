@interface AAUIAccountRecoveryManagementHook
- (AAUIAccountRecoveryManagementHook)initWithAccountManager:(id)manager recoveryContactsViewModel:(id)model;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (unint64_t)_presentationTypeForString:(id)string;
- (void)_presentWithBasePresentationMode:(id)mode fromCurrentViewController:(id)controller completion:(id)completion;
- (void)_showAccountRecoveryManagementWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIAccountRecoveryManagementHook

- (AAUIAccountRecoveryManagementHook)initWithAccountManager:(id)manager recoveryContactsViewModel:(id)model
{
  managerCopy = manager;
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = AAUIAccountRecoveryManagementHook;
  v9 = [(AAUIAccountRecoveryManagementHook *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeStrong(&v10->_recoveryContactsViewModel, model);
  }

  return v10;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"recoveryOptions:show"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:*MEMORY[0x1E69C7058]];
  v5 = [v4 isEqualToString:@"recoveryOptions:show"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(AAUIAccountRecoveryManagementHook *)self _showAccountRecoveryManagementWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_showAccountRecoveryManagementWithServerAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  objc_opt_class();
  v8 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69C7088]];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = _AAUILogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountRecoveryManagementHook _showAccountRecoveryManagementWithServerAttributes:v9 completion:v11];
  }

  self->_presentationType = [(AAUIAccountRecoveryManagementHook *)self _presentationTypeForString:v9];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = [WeakRetained presentationContextForHook:self];

  v13 = [[AAUID2DEncryptionFlowContext alloc] initWithType:2];
  v14 = [AAUIManateeStateValidator alloc];
  v15 = [(AAUIManateeStateValidator *)v14 initWithFlowContext:v13 withPresentingViewController:v25[5]];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke;
  v18[3] = &unk_1E820BFD0;
  v16 = v15;
  v19 = v16;
  objc_copyWeak(&v22, &location);
  v21 = &v24;
  v17 = completionCopy;
  v20 = v17;
  [(AAUIManateeStateValidator *)v16 repairIfPrimaryAppleAccountIsCDP:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v24, 8);
}

void __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = _AAUILogSystem(WeakRetained);
  v8 = v7;
  if (WeakRetained && a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_2(v8);
    }

    v9 = [AAUIRecoveryContactsViewFactory createWithViewModel:WeakRetained[2]];
    [*(*(*(a1 + 48) + 8) + 40) aaui_showViewController:v9 sender:WeakRetained];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_1((a1 + 56), v5, v8);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_presentWithBasePresentationMode:(id)mode fromCurrentViewController:(id)controller completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  controllerCopy = controller;
  completionCopy = completion;
  objc_opt_class();
  objc_opt_class();
  v10 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  objc_opt_class();
  objc_opt_class();
  hostViewController = [v11 hostViewController];
  if (objc_opt_isKindOfClass())
  {
    v13 = hostViewController;
  }

  else
  {
    v13 = 0;
  }

  v15 = _AAUILogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Base presentation was specified. Dismissing current vc %@ as modal %@ and showing on host %@.", buf, 0x20u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke;
  v20[3] = &unk_1E820BFF8;
  v21 = v10;
  v22 = v13;
  v23 = modeCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = modeCopy;
  v18 = v13;
  v19 = v10;
  [v19 dismissViewControllerAnimated:1 completion:v20];
}

uint64_t __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke_cold_1(a1, v3);
  }

  [*(a1 + 40) aaui_pushViewController:*(a1 + 48) animated:1];
  return (*(*(a1 + 56) + 16))();
}

- (unint64_t)_presentationTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E69C7078]])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69C7080]])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69C7090]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_showAccountRecoveryManagementWithServerAttributes:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Found presentation type %@ from attributes", &v2, 0xCu);
}

void __99__AAUIAccountRecoveryManagementHook__showAccountRecoveryManagementWithServerAttributes_completion___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C5355000, a3, OS_LOG_TYPE_ERROR, "%@ - Unable to validate CDP state. Stopping flow with error %@", &v6, 0x16u);
}

void __107__AAUIAccountRecoveryManagementHook__presentWithBasePresentationMode_fromCurrentViewController_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Finished dismissing currentViewController %@, now showing host %@", &v4, 0x16u);
}

@end