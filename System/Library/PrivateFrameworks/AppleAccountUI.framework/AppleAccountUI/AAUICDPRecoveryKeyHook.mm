@interface AAUICDPRecoveryKeyHook
+ (id)helperWithPresenter:(id)presenter forceInline:(BOOL)inline;
- (BOOL)_shouldMatchAction:(id)action;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_deleteRecoveryKey:(id)key;
- (void)_generateRecoveryKeyWithType:(int64_t)type attributes:(id)attributes completion:(id)completion;
- (void)_verifyRecoveryKeyWithType:(int64_t)type attributes:(id)attributes completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUICDPRecoveryKeyHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  LOBYTE(self) = [(AAUICDPRecoveryKeyHook *)self _shouldMatchAction:name];

  return self;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];

  v6 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AAUICDPRecoveryKeyHook *)self _shouldMatchAction:v7];
  return v8;
}

- (BOOL)_shouldMatchAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"rk:regenerate"] & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"rk:enable") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"rk:disable"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [actionCopy isEqualToString:@"rk:verify"];
  }

  return v4;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  elementCopy = element;
  attributesCopy = attributes;
  completionCopy = completion;
  name = [elementCopy name];
  v12 = [name isEqualToString:@"rk:regenerate"];

  if (v12)
  {
    selfCopy2 = self;
    v14 = 4;
LABEL_5:
    [(AAUICDPRecoveryKeyHook *)selfCopy2 _generateRecoveryKeyWithType:v14 attributes:attributesCopy completion:completionCopy];
    goto LABEL_6;
  }

  name2 = [elementCopy name];
  v16 = [name2 isEqualToString:@"rk:enable"];

  if (v16)
  {
    selfCopy2 = self;
    v14 = 5;
    goto LABEL_5;
  }

  name3 = [elementCopy name];
  v18 = [name3 isEqualToString:@"rk:disable"];

  if (v18)
  {
    [(AAUICDPRecoveryKeyHook *)self _deleteRecoveryKey:completionCopy];
  }

LABEL_6:
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  objc_opt_class();
  clientInfo = [modelCopy clientInfo];
  v8 = [clientInfo objectForKeyedSubscript:*MEMORY[0x1E69C7058]];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 isEqualToString:@"rk:regenerate"])
  {
    clientInfo2 = [modelCopy clientInfo];
    selfCopy2 = self;
    v12 = 4;
LABEL_8:
    [(AAUICDPRecoveryKeyHook *)selfCopy2 _generateRecoveryKeyWithType:v12 attributes:clientInfo2 completion:completionCopy];
LABEL_9:

    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"rk:enable"])
  {
    clientInfo2 = [modelCopy clientInfo];
    selfCopy2 = self;
    v12 = 5;
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"rk:verify"])
  {
    clientInfo2 = [modelCopy clientInfo];
    [(AAUICDPRecoveryKeyHook *)self _verifyRecoveryKeyWithType:8 attributes:clientInfo2 completion:completionCopy];
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"rk:disable"])
  {
    [(AAUICDPRecoveryKeyHook *)self _deleteRecoveryKey:completionCopy];
  }

LABEL_10:
}

- (void)_deleteRecoveryKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc(MEMORY[0x1E6997800]);
  v5 = +[AAUICDPHelper cdpContextForPrimaryAccount];
  v6 = [v4 initWithContext:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke;
  v8[3] = &unk_1E820C308;
  v9 = keyCopy;
  v7 = keyCopy;
  [v6 deleteRecoveryKey:v8];
}

void __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_cold_1();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    v7 = objc_alloc_init(MEMORY[0x1E698B850]);
    [v7 startHealthCheckWithCompletion:&__block_literal_global_6];
  }

LABEL_7:
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v6);
  }
}

void __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _AAUILogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49_cold_1();
    }
  }
}

- (void)_generateRecoveryKeyWithType:(int64_t)type attributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v10 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to generate recovery key", buf, 2u);
  }

  objc_opt_class();
  v11 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v13 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained presentationContextForHook:self];
  v27 = [v13 helperWithPresenter:v15 forceInline:{objc_msgSend(v12, "BOOLValue")}];

  cdpStateControllerForPrimaryAccount = [*(v23 + 5) cdpStateControllerForPrimaryAccount];
  context = [cdpStateControllerForPrimaryAccount context];
  [context setType:type];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke;
  v19[3] = &unk_1E820C408;
  v18 = completionCopy;
  v20 = v18;
  v21 = buf;
  [cdpStateControllerForPrimaryAccount generateNewRecoveryKey:v19];

  _Block_object_dispose(buf, 8);
}

void __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    v7 = objc_alloc_init(MEMORY[0x1E698B850]);
    [v7 startHealthCheckWithCompletion:&__block_literal_global_54];
  }

LABEL_7:
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v6);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void __77__AAUICDPRecoveryKeyHook__generateRecoveryKeyWithType_attributes_completion___block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _AAUILogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__AAUICDPRecoveryKeyHook__deleteRecoveryKey___block_invoke_49_cold_1();
    }
  }
}

- (void)_verifyRecoveryKeyWithType:(int64_t)type attributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v10 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to verify recovery key", buf, 2u);
  }

  objc_opt_class();
  v11 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v13 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained presentationContextForHook:self];
  v32 = [v13 helperWithPresenter:v15 forceInline:{objc_msgSend(v12, "BOOLValue")}];

  cdpStateControllerForPrimaryAccount = [*(v28 + 5) cdpStateControllerForPrimaryAccount];
  v26 = 0;
  LOBYTE(v15) = [cdpStateControllerForPrimaryAccount isRecoveryKeyAvailableWithError:&v26];
  v17 = v26;
  v18 = v17;
  if (v15)
  {
    context = [cdpStateControllerForPrimaryAccount context];
    [context setType:type];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__AAUICDPRecoveryKeyHook__verifyRecoveryKeyWithType_attributes_completion___block_invoke;
    v21[3] = &unk_1E820C430;
    v21[4] = self;
    v22 = attributesCopy;
    v23 = completionCopy;
    v24 = buf;
    [cdpStateControllerForPrimaryAccount verifyRecoveryKey:v21];
  }

  else
  {
    v20 = _AAUILogSystem(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "Recovery key missing - returning early, nothing to verify", v25, 2u);
    }

    if (!v18)
    {
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5211 userInfo:0];
    }

    (*(completionCopy + 2))(completionCopy, 0, v18);
  }

  _Block_object_dispose(buf, 8);
}

void __75__AAUICDPRecoveryKeyHook__verifyRecoveryKeyWithType_attributes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "_verifyRecoveryKeyWithType completed with: %d, %@", v12, 0x12u);
  }

  v7 = [v5 cdp_isCDPErrorWithCode:-5308];
  if (v7)
  {
    v8 = _AAUILogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "User reported forgot recovery key in verify recovery flow - will attempt to generate a recovery key", v12, 2u);
    }

    [*(a1 + 32) _generateRecoveryKeyWithType:4 attributes:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, a2, v5);
    }

    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

+ (id)helperWithPresenter:(id)presenter forceInline:(BOOL)inline
{
  inlineCopy = inline;
  v13 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  v6 = _AAUILogSystem(presenterCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:inlineCopy];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "creating controller with inline forced: %@", &v11, 0xCu);
  }

  v8 = [AAUICDPHelper helperWithPresenter:presenterCopy];
  if (inlineCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  [v8 setForceInline:isKindOfClass & 1];

  return v8;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end