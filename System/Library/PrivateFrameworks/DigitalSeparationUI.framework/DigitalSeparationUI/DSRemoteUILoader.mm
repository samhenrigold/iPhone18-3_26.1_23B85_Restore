@interface DSRemoteUILoader
+ (void)initialize;
- (DSNavigationDelegate)delegate;
- (DSRemoteUILoader)initWithAccountManager:(id)manager presenter:(id)presenter delegate:(id)delegate;
- (DSRemoteUILoader)initWithPresenter:(id)presenter delegate:(id)delegate;
- (DSRemoteUILoader)initWithPresenter:(id)presenter delegate:(id)delegate URL:(id)l;
- (id)accountsForAccountManager:(id)manager;
- (void)loadRemoteUI;
- (void)remoteUIDidEndFlow:(id)flow;
- (void)remoteUIDidReceiveHTTPResponse:(id)response;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)remoteUIWillLoadRequest:(id)request;
- (void)remoteUIWillPresentObjectModel:(id)model modally:(BOOL)modally;
@end

@implementation DSRemoteUILoader

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSRemoteUILoader");
    v3 = DSLog_0;
    DSLog_0 = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (DSRemoteUILoader)initWithPresenter:(id)presenter delegate:(id)delegate
{
  v6 = MEMORY[0x277CB8F48];
  delegateCopy = delegate;
  presenterCopy = presenter;
  defaultStore = [v6 defaultStore];
  v10 = [objc_alloc(MEMORY[0x277CED1D0]) initWithAccountStore:defaultStore];
  [v10 setDelegate:self];
  v11 = [(DSRemoteUILoader *)self initWithAccountManager:v10 presenter:presenterCopy delegate:delegateCopy];

  return v11;
}

- (DSRemoteUILoader)initWithPresenter:(id)presenter delegate:(id)delegate URL:(id)l
{
  lCopy = l;
  v9 = [(DSRemoteUILoader *)self initWithPresenter:presenter delegate:delegate];
  v10 = v9;
  if (lCopy && v9)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
    dynamicURL = v10->_dynamicURL;
    v10->_dynamicURL = v11;
  }

  return v10;
}

- (DSRemoteUILoader)initWithAccountManager:(id)manager presenter:(id)presenter delegate:(id)delegate
{
  v42[3] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  presenterCopy = presenter;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = DSRemoteUILoader;
  v12 = [(DSRemoteUILoader *)&v32 init];
  if (v12)
  {
    v13 = DSLog_0;
    if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C7E000, v13, OS_LOG_TYPE_INFO, "Initializing DSRemoteUILoader", buf, 2u);
    }

    objc_storeStrong(&v12->_accountManager, manager);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = objc_alloc_init(MEMORY[0x277D18728]);
    queryController = v12->_queryController;
    v12->_queryController = v14;

    accountStore = [managerCopy accountStore];
    aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
    currentAccount = v12->_currentAccount;
    v12->_currentAccount = aa_primaryAppleAccount;

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v19 = getAAUIAuthKitPasswordChangeHookClass_softClass;
    v41 = getAAUIAuthKitPasswordChangeHookClass_softClass;
    if (!getAAUIAuthKitPasswordChangeHookClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __getAAUIAuthKitPasswordChangeHookClass_block_invoke;
      v36 = &unk_278F75430;
      v37 = &v38;
      __getAAUIAuthKitPasswordChangeHookClass_block_invoke(buf);
      v19 = v39[3];
    }

    v20 = v19;
    _Block_object_dispose(&v38, 8);
    v21 = [v19 alloc];
    aa_altDSID = [(ACAccount *)v12->_currentAccount aa_altDSID];
    v23 = [v21 initWithAltDSID:aa_altDSID];

    v42[0] = v23;
    v24 = objc_opt_new();
    v42[1] = v24;
    v25 = objc_opt_new();
    v42[2] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];

    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v27 = getAAUIGrandSlamRemoteUIPresenterClass_softClass;
    v41 = getAAUIGrandSlamRemoteUIPresenterClass_softClass;
    if (!getAAUIGrandSlamRemoteUIPresenterClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke;
      v36 = &unk_278F75430;
      v37 = &v38;
      __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke(buf);
      v27 = v39[3];
    }

    v28 = v27;
    _Block_object_dispose(&v38, 8);
    v29 = [[v27 alloc] initWithAccountManager:v12->_accountManager presenter:presenterCopy hooks:v26];
    privacyRepairPresenter = v12->_privacyRepairPresenter;
    v12->_privacyRepairPresenter = v29;

    [(AAUIGrandSlamRemoteUIPresenter *)v12->_privacyRepairPresenter setDelegate:v12];
  }

  return v12;
}

- (void)loadRemoteUI
{
  v10 = *MEMORY[0x277D85DE8];
  dynamicURL = self->_dynamicURL;
  if (dynamicURL)
  {
    privacyRepairURL = dynamicURL;
  }

  else
  {
    v5 = [MEMORY[0x277CF02F0] bagForAltDSID:0];
    privacyRepairURL = [v5 privacyRepairURL];
  }

  v6 = objc_alloc_init(MEMORY[0x277CCAB70]);
  [v6 setURL:privacyRepairURL];
  [v6 setHTTPMethod:@"GET"];
  v7 = DSLog_0;
  if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_INFO, "Loading Remote UI request, %@", &v8, 0xCu);
  }

  [(AAUIGrandSlamRemoteUIPresenter *)self->_privacyRepairPresenter loadRequest:v6];
}

- (void)remoteUIWillLoadRequest:(id)request
{
  requestCopy = request;
  delegate = [(DSRemoteUILoader *)self delegate];
  if (([delegate isNetworkReachable] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DSRemoteUILoader_remoteUIWillLoadRequest___block_invoke;
    block[3] = &unk_278F75408;
    v7 = delegate;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [requestCopy setValue:@"digitalseparation" forHTTPHeaderField:@"X-Apple-I-App-Provided-Context"];
}

- (void)remoteUIDidReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  v5 = DSLog_0;
  if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_ERROR))
  {
    [(DSRemoteUILoader *)responseCopy remoteUIDidReceiveHTTPResponse:v5];
  }

  if ([responseCopy statusCode] == 401 || objc_msgSend(responseCopy, "statusCode") == 302 || (v6 = objc_msgSend(responseCopy, "statusCode"), !responseCopy) || v6 == 200)
  {
    [(IDSIDQueryController *)self->_queryController flushQueryCache];
  }

  else
  {
    v7 = MEMORY[0x277D75110];
    v8 = DSUILocStringForKey(@"REMOTEUI_ERROR_TITLE");
    v9 = DSUILocStringForKey(@"REMOTEUI_ERROR_DETAIL");
    v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = DSUILocStringForKey(@"REMOTEUI_ERROR_CONFIRMATION");
    v13 = [v11 actionWithTitle:v12 style:1 handler:&__block_literal_global_3];
    [v10 addAction:v13];

    delegate = [(DSRemoteUILoader *)self delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [delegate presentViewController:v10 animated:1 completion:0];
    }
  }
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = DSLog_0;
  if (errorCopy)
  {
    if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_ERROR))
    {
      [(DSRemoteUILoader *)completeCopy remoteUIRequestComplete:errorCopy error:v7];
    }
  }

  else if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = completeCopy;
    _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_INFO, "Loading Remote UI request, %@,  success", &v8, 0xCu);
  }
}

- (void)remoteUIDidEndFlow:(id)flow
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = DSLog_0;
  if (os_log_type_enabled(DSLog_0, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "%@, Ending the Remote UI flow and moving on", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushNextPane];
}

- (id)accountsForAccountManager:(id)manager
{
  v7[1] = *MEMORY[0x277D85DE8];
  currentAccount = self->_currentAccount;
  v6 = *MEMORY[0x277CED1A0];
  v7[0] = currentAccount;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)remoteUIWillPresentObjectModel:(id)model modally:(BOOL)modally
{
  v29 = *MEMORY[0x277D85DE8];
  if (modally)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allPages = [model allPages];
    v5 = [allPages countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(allPages);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          rightNavigationBarButtonItem = [v9 rightNavigationBarButtonItem];

          if (!rightNavigationBarButtonItem)
          {
            v11 = objc_alloc(MEMORY[0x277D461B8]);
            v26[0] = @"label";
            v12 = DSUILocStringForKey(@"QUICK_EXIT");
            v27[0] = v12;
            v27[1] = @"navigationBar";
            v26[1] = @"parentBar";
            v26[2] = @"position";
            v26[3] = @"type";
            v27[2] = @"right";
            v27[3] = @"linkBarItem";
            v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
            pageElement = [v9 pageElement];
            v15 = [v11 initWithAttributes:v13 parent:pageElement];
            [v9 setRightNavigationBarButtonItem:v15];

            rightNavigationBarButtonItem2 = [v9 rightNavigationBarButtonItem];
            barButtonItem = [rightNavigationBarButtonItem2 barButtonItem];
            [barButtonItem setAction:sel_quickExit];

            delegate = [(DSRemoteUILoader *)self delegate];
            rightNavigationBarButtonItem3 = [v9 rightNavigationBarButtonItem];
            barButtonItem2 = [rightNavigationBarButtonItem3 barButtonItem];
            [barButtonItem2 setTarget:delegate];
          }
        }

        v6 = [allPages countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v6);
    }
  }
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteUIDidReceiveHTTPResponse:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "Loading Remote UI request with response: %@", &v2, 0xCu);
}

- (void)remoteUIRequestComplete:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_248C7E000, log, OS_LOG_TYPE_ERROR, "Loading Remote UI request, %@, with error, %@", &v3, 0x16u);
}

@end