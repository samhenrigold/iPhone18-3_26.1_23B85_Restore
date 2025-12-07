@interface LAContext
@end

@implementation LAContext

void __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 88) != 1 && ([MEMORY[0x277CD47F0] error:v6 hasCode:-1004] & 1) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_2;
    v10[3] = &unk_278A65570;
    objc_copyWeak(v16, (a1 + 64));
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v11 = v7;
    v16[1] = v8;
    v16[2] = v9;
    v12 = *(a1 + 40);
    v15 = *(a1 + 56);
    v13 = v6;
    v14 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v10);

    objc_destroyWeak(v16);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = LAViewControllerForPresentationContext(*(a1 + 32));
    if (v3)
    {
      v4 = objc_alloc_init(LAContextUIHelper);
      [WeakRetained setUiHelper:v4];
      v5 = LA_LOG([WeakRetained addContextObserver:v4]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 80);
        v7 = *(a1 + 88);
        v8 = *(a1 + 40);
        *buf = 138544130;
        v29 = v6;
        v30 = 1024;
        v31 = v7;
        v32 = 2114;
        v33 = v8;
        v34 = 2112;
        v35 = WeakRetained;
        _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "evaluateAccessControl:%{public}@ operation:%d options:%{public}@ on %@", buf, 0x26u);
      }

      v9 = objc_alloc(MEMORY[0x277CD4790]);
      v10 = [WeakRetained externalizedContext];
      v11 = [v9 initWithExternalizedContext:v10];

      v12 = [*(a1 + 48) userInfo];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CD4760]];
      v14 = v13;
      v15 = MEMORY[0x277CBEBF8];
      if (v13)
      {
        v15 = v13;
      }

      v16 = v15;

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_3;
      v21[3] = &unk_278A65548;
      objc_copyWeak(v27, (a1 + 72));
      v17 = *(a1 + 40);
      v18 = *(a1 + 80);
      v22 = v17;
      v27[1] = v18;
      v23 = v3;
      v19 = v11;
      v20 = *(a1 + 88);
      v24 = v19;
      v27[2] = v20;
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      [WeakRetained _validateAvailableMechanims:v16 completion:v21];

      objc_destroyWeak(v27);
    }

    else
    {
      [WeakRetained evaluateAccessControl:*(a1 + 80) operation:*(a1 + 88) options:*(a1 + 40) reply:*(a1 + 64)];
    }
  }
}

void __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _authenticateWithOptions:*(a1 + 32) acl:*(a1 + 80) availableMechanisms:v5 hostVC:*(a1 + 40) context:*(a1 + 48) operation:*(a1 + 88) updatedOptions:*(a1 + 56) reply:*(a1 + 64)];
  }
}

void __112__LAContext_UI___authenticateWithOptions_acl_availableMechanisms_hostVC_context_operation_updatedOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LA_LOG(v6);
  if (v6)
  {
    v8 = LALogTypeForInternalError();
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v7, v8))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    v11 = @"successfully";
    if (v6)
    {
      v11 = v6;
    }

    v14 = 138412546;
    v15 = WeakRetained;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_238BCD000, v7, v8, "evaluateAccessControl on %@ finished %{public}@", &v14, 0x16u);
  }

  v12 = objc_loadWeakRetained((a1 + 48));
  v13 = v12;
  if (v12)
  {
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [v12 evaluateAccessControl:*(a1 + 56) operation:*(a1 + 64) options:*(a1 + 32) reply:*(a1 + 40)];
    }
  }
}

void __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke_2;
  block[3] = &unk_278A655E8;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) mutableCopy];
    [v3 removeObject:&unk_284B87660];
    (*(*(a1 + 40) + 16))();
  }
}

@end