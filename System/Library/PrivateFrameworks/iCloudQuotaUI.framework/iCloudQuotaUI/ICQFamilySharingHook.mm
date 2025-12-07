@interface ICQFamilySharingHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (ICQFamilySharingHook)initWithFlowDelegate:(id)delegate;
- (ICQServerHookDelegate)flowDelegate;
- (RUIServerHookDelegate)delegate;
- (void)_beginFamilySharingFlowWithCompletion:(id)completion;
@end

@implementation ICQFamilySharingHook

- (ICQFamilySharingHook)initWithFlowDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ICQFamilySharingHook;
  v5 = [(ICQFamilySharingHook *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_flowDelegate, delegateCopy);
  }

  return v6;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"ICQActionFamilySetup"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"OPEN_FAMILY_SETUP"];

  return v5;
}

- (void)_beginFamilySharingFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationContextForHook:self];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v7 = getFACircleStateControllerClass_softClass_0;
  v33 = getFACircleStateControllerClass_softClass_0;
  if (!getFACircleStateControllerClass_softClass_0)
  {
    location = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getFACircleStateControllerClass_block_invoke_0;
    v28 = &unk_27A65A9F8;
    v29 = &v30;
    __getFACircleStateControllerClass_block_invoke_0(&location);
    v7 = v31[3];
  }

  v8 = v7;
  _Block_object_dispose(&v30, 8);
  v9 = [[v7 alloc] initWithPresenter:v6];
  familyCircleStateController = self->_familyCircleStateController;
  self->_familyCircleStateController = v9;

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v11 = getFACircleContextClass_softClass_0;
  v33 = getFACircleContextClass_softClass_0;
  if (!getFACircleContextClass_softClass_0)
  {
    location = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getFACircleContextClass_block_invoke_0;
    v28 = &unk_27A65A9F8;
    v29 = &v30;
    __getFACircleContextClass_block_invoke_0(&location);
    v11 = v31[3];
  }

  v12 = v11;
  _Block_object_dispose(&v30, 8);
  v13 = [v11 alloc];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v14 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  v33 = getFACircleEventTypeInitiateSymbolLoc_ptr_0;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr_0)
  {
    location = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke_0;
    v28 = &unk_27A65A9F8;
    v29 = &v30;
    v15 = FamilyCircleUILibrary_0();
    v16 = dlsym(v15, "FACircleEventTypeInitiate");
    *(v29[1] + 24) = v16;
    getFACircleEventTypeInitiateSymbolLoc_ptr_0 = *(v29[1] + 24);
    v14 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v14)
  {
    [ICQFamilySharingHook _beginFamilySharingFlowWithCompletion:];
    v21 = v20;
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v21);
  }

  v17 = [v13 initWithEventType:*v14];
  [v17 setClientName:@"iCloudStorage"];
  objc_initWeak(&location, self);
  v18 = self->_familyCircleStateController;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__ICQFamilySharingHook__beginFamilySharingFlowWithCompletion___block_invoke;
  v22[3] = &unk_27A65B6E8;
  objc_copyWeak(&v24, &location);
  v19 = completionCopy;
  v23 = v19;
  [(FACircleStateController *)v18 performOperationWithContext:v17 completion:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __62__ICQFamilySharingHook__beginFamilySharingFlowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Family sharing flow completed with success: %d, error: %@", v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v8 = [WeakRetained flowDelegate];
  [v8 dismissUpgradeFlowWithSuccess:a2];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICQServerHookDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (void)_beginFamilySharingFlowWithCompletion:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[ICQQuotaRequestManager sharedManager];
}

@end