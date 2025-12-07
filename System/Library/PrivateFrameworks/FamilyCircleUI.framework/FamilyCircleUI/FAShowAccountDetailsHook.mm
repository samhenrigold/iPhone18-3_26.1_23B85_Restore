@interface FAShowAccountDetailsHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_showAccountDetailsFor:(id)for withCompletion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FAShowAccountDetailsHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:showAccountDetails"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:showAccountDetails"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  v9 = [attributes objectForKeyedSubscript:@"altDSID"];
  [(FAShowAccountDetailsHook *)self _showAccountDetailsFor:v9 withCompletion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  v7 = [clientInfo objectForKeyedSubscript:@"altDSID"];
  [(FAShowAccountDetailsHook *)self _showAccountDetailsFor:v7 withCompletion:completionCopy];
}

- (void)_showAccountDetailsFor:(id)for withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  completionCopy = completion;
  v8 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[FAShowAccountDetailsHook _showAccountDetailsFor:withCompletion:]";
    v18 = 2112;
    v19 = forCopy;
    _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "%s - show account details for %@", buf, 0x16u);
  }

  v9 = objc_opt_new();
  [v9 setCachePolicy:1];
  [v9 setQualityOfService:33];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke;
  v12[3] = &unk_2782F3DA0;
  objc_copyWeak(&v15, buf);
  v10 = completionCopy;
  v14 = v10;
  v11 = forCopy;
  v13 = v11;
  [v9 startRequestWithCompletionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (v6)
  {
    v9 = _FALogSystem(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_cold_1(v6, v9);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v10 = [v5 members];
    v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_13];
    v12 = [v10 filteredArrayUsingPredicate:v11];
    v13 = [v12 firstObject];

    v14 = v13;
    v15 = v14;
    if ([a1[4] length])
    {
      v16 = [v5 members];
      v17 = MEMORY[0x277CCAC30];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_2;
      v30[3] = &unk_2782F3D50;
      v31 = a1[4];
      v18 = [v17 predicateWithBlock:v30];
      v19 = [v16 filteredArrayUsingPredicate:v18];
      v15 = [v19 firstObject];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_3;
    block[3] = &unk_2782F3D78;
    v24 = v14;
    v25 = v15;
    v26 = v5;
    v27 = v8;
    v20 = a1[5];
    v28 = 0;
    v29 = v20;
    v21 = v15;
    v22 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 altDSID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider familyMemberAccountChangePasswordControllerWithMainAccount:a1[4] memberToShow:a1[5] familyCircle:a1[6]];
  WeakRetained = objc_loadWeakRetained((a1[7] + 8));
  v4 = [WeakRetained presentationContextForHook:a1[7]];

  v5 = _FALogSystem([v4 showViewController:v2 sender:0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 136315650;
    v9 = "[FAShowAccountDetailsHook _showAccountDetailsFor:withCompletion:]_block_invoke_3";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "%s - %@ Displaying member details for %@", &v8, 0x20u);
  }

  (*(a1[9] + 16))();
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __66__FAShowAccountDetailsHook__showAccountDetailsFor_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[FAShowAccountDetailsHook _showAccountDetailsFor:withCompletion:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error %s - %@", &v2, 0x16u);
}

@end