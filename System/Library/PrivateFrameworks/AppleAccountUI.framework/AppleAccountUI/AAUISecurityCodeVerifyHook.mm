@interface AAUISecurityCodeVerifyHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_verifySecurityCodeWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUISecurityCodeVerifyHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"icsc:verify"];

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

  v7 = [v6 isEqualToString:@"icsc:verify"];
  return v7;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(AAUISecurityCodeVerifyHook *)self _verifySecurityCodeWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_verifySecurityCodeWithServerAttributes:(id)attributes completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  completionCopy = completion;
  v8 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = attributesCopy;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Verifying security code with server attributes (%@)", buf, 0xCu);
  }

  delegate = [(AAUISecurityCodeVerifyHook *)self delegate];
  v10 = [delegate presentationContextForHook:self];

  v11 = [[AAUID2DEncryptionFlowContext alloc] initWithType:7];
  objc_opt_class();
  v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  bOOLValue = [v13 BOOLValue];
  if (bOOLValue)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  [(CDPUIDeviceToDeviceEncryptionFlowContext *)v11 setForceInlinePresentation:isKindOfClass & 1];
  v16 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v11 withPresentingViewController:v10];
  v17 = objc_alloc_init(MEMORY[0x1E69C7038]);
  serverHookResponse = self->_serverHookResponse;
  self->_serverHookResponse = v17;

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke;
  v21[3] = &unk_1E820C960;
  v22 = v11;
  selfCopy = self;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = v11;
  [(AAUIManateeStateValidator *)v16 verifyAndRepairManateeWithCompletion:v21];
}

void __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Successfully verified or repaired security code, will attempt to respond with PET", &v16, 2u);
    }

    v8 = [*(a1 + 32) repairContext];
    v9 = [v8 cachedLocalSecret];

    v10 = [*(a1 + 32) repairContext];
    v7 = [v10 passwordEquivToken];

    v12 = _AAUILogSystem(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9 && v7)
    {
      if (v13)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Determined that local secret was created or validated, attaching PET to server hook response", &v16, 2u);
      }

      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"password"];
      [*(*(a1 + 40) + 16) setAdditionalPayload:v12];
    }

    else if (v13)
    {
      v14 = @"NO";
      if (v9)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (v7)
      {
        v14 = @"YES";
      }

      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Unable to attach PET to server hook response (hasCachedLocalSecret: %@, hasPET: %@)", &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke_cold_1(v5, v7);
  }

  (*(*(a1 + 48) + 16))();
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__AAUISecurityCodeVerifyHook__verifySecurityCodeWithServerAttributes_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to verify and repair security code with error: %@", &v2, 0xCu);
}

@end