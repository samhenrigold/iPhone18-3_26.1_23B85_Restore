@interface AAUIAccountMigrationHook
- (AAUIAccountMigrationHook)initWithAltDSID:(id)d;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_invokeShieldMigrationFlowWithPendingDOB:(id)b completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUIAccountMigrationHook

- (AAUIAccountMigrationHook)initWithAltDSID:(id)d
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = AAUIAccountMigrationHook;
  v6 = [(AAUIAccountMigrationHook *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_altDSID, d);
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v9 = [defaultStore aa_appleAccountWithAltDSID:dCopy];
    appleAccount = v7->_appleAccount;
    v7->_appleAccount = v9;

    v11 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    authController = v7->_authController;
    v7->_authController = v11;
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"age:migration"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v5 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 isEqualToString:@"age:migration"];
  return v7;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  attributesCopy = attributes;
  objc_opt_class();
  v10 = [attributesCopy objectForKeyedSubscript:@"birthday"];

  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v14 = _AAUILogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountMigrationHook processElement:v12 attributes:v14 objectModel:? completion:?];
  }

  [(AAUIAccountMigrationHook *)self _invokeShieldMigrationFlowWithPendingDOB:v12 completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v9 = [clientInfo objectForKeyedSubscript:@"birthday"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v12 = _AAUILogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [AAUIAccountMigrationHook processElement:v10 attributes:v12 objectModel:? completion:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__AAUIAccountMigrationHook_processObjectModel_completion___block_invoke;
  v16[3] = &unk_1E820B708;
  v16[4] = self;
  v17 = v10;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v10;
  [WeakRetained dismissObjectModelsAnimated:1 completion:v16];
}

- (void)_invokeShieldMigrationFlowWithPendingDOB:(id)b completion:(id)completion
{
  bCopy = b;
  completionCopy = completion;
  appleAccount = [(AAUIAccountMigrationHook *)self appleAccount];

  if (appleAccount)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698DE80]);
    [v10 setAuthenticationType:2];
    [v10 setIsUsernameEditable:0];
    [v10 setAltDSID:self->_altDSID];
    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v11 setDateFormat:@"yyyy-MM-dd"];
    v12 = [v11 dateFromString:bCopy];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E698DC88]) initWithPendingDOB:v12];
      [v10 setAccountMigrationContext:v13];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      authController = [(AAUIAccountMigrationHook *)self authController];
      v14 = v21[5];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke;
      v17[3] = &unk_1E820B730;
      v19 = &v20;
      v18 = completionCopy;
      [v14 authenticateWithContext:v10 completion:v17];

      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v16 = _AAUILogSystem(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AAUIAccountMigrationHook _invokeShieldMigrationFlowWithPendingDOB:bCopy completion:v16];
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }
  }

  else
  {
    v15 = _AAUILogSystem(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AAUIAccountMigrationHook _invokeShieldMigrationFlowWithPendingDOB:v15 completion:?];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v10 = _AAUILogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke_cold_1(v5 != 0, v6, v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v5 != 0, v6);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processElement:(uint64_t)a1 attributes:(NSObject *)a2 objectModel:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Received migration hook with dob: %@", &v2, 0xCu);
}

- (void)_invokeShieldMigrationFlowWithPendingDOB:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to parse date from string: %@", &v2, 0xCu);
}

void __80__AAUIAccountMigrationHook__invokeShieldMigrationFlowWithPendingDOB_completion___block_invoke_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "AAUIAccountMigrationHook - authentication came back with success: %@, %@", &v4, 0x16u);
}

@end