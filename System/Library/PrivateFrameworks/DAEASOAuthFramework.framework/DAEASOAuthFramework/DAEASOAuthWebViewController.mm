@interface DAEASOAuthWebViewController
+ (void)_presentAlertWithAlertParameters:(id)parameters;
+ (void)presentInternetOfflineError;
+ (void)presentSSLError;
+ (void)presentUsernameMismatchAlert;
- (DAEASOAuthWebViewController)initWithAccount:(id)account accountStore:(id)store authURI:(id)i accountType:(unint64_t)type userName:(id)name accountDescription:(id)description isFirstTimeSetup:(BOOL)setup presentationBlock:(id)self0;
- (DAEASOAuthWebViewController)initWithAccount:(id)account isFirstTimeSetup:(BOOL)setup accountStore:(id)store presentationBlock:(id)block;
- (DAEASOAuthWebViewController)initWithAccountDescription:(id)description presentationBlock:(id)block;
- (DAEASOAuthWebViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_commonInitializationWithAccount:(id)account accountStore:(id)store username:(id)username accountDescription:(id)description presentationBlock:(id)block;
- (void)_didInstantiateRemoteViewController;
- (void)_dismissAndCompleteWithIdentity:(id)identity error:(id)error extensionCompletion:(id)completion;
- (void)_extensionRequestDidCompleteWithTokens:(id)tokens extensionCompletion:(id)completion;
- (void)loadView;
@end

@implementation DAEASOAuthWebViewController

- (DAEASOAuthWebViewController)initWithAccountDescription:(id)description presentationBlock:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = DAEASOAuthWebViewController;
  v8 = [(DAEASOAuthWebViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(DAEASOAuthWebViewController *)v8 _commonInitializationWithAccount:0 accountStore:0 username:0 accountDescription:descriptionCopy presentationBlock:blockCopy];
  }

  return v9;
}

- (DAEASOAuthWebViewController)initWithAccount:(id)account isFirstTimeSetup:(BOOL)setup accountStore:(id)store presentationBlock:(id)block
{
  accountCopy = account;
  storeCopy = store;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = DAEASOAuthWebViewController;
  v13 = [(DAEASOAuthWebViewController *)&v17 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    v13->_isFirstTimeSetup = setup;
    accountDescription = [accountCopy accountDescription];
    [(DAEASOAuthWebViewController *)v14 _commonInitializationWithAccount:accountCopy accountStore:storeCopy username:0 accountDescription:accountDescription presentationBlock:blockCopy];
  }

  return v14;
}

- (DAEASOAuthWebViewController)initWithAccount:(id)account accountStore:(id)store authURI:(id)i accountType:(unint64_t)type userName:(id)name accountDescription:(id)description isFirstTimeSetup:(BOOL)setup presentationBlock:(id)self0
{
  accountCopy = account;
  storeCopy = store;
  iCopy = i;
  nameCopy = name;
  descriptionCopy = description;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = DAEASOAuthWebViewController;
  v22 = [(DAEASOAuthWebViewController *)&v25 initWithNibName:0 bundle:0];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_authURI, i);
    v23->_oauthType = type;
    v23->_isFirstTimeSetup = setup;
    [(DAEASOAuthWebViewController *)v23 _commonInitializationWithAccount:accountCopy accountStore:storeCopy username:nameCopy accountDescription:descriptionCopy presentationBlock:blockCopy];
  }

  return v23;
}

- (DAEASOAuthWebViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = DAEASOAuthWebViewController;
  v4 = [(DAEASOAuthWebViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(DAEASOAuthWebViewController *)v4 _commonInitializationWithAccount:0 accountStore:0 username:0 accountDescription:0 presentationBlock:0];
  }

  return v5;
}

- (void)_commonInitializationWithAccount:(id)account accountStore:(id)store username:(id)username accountDescription:(id)description presentationBlock:(id)block
{
  v63 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  usernameCopy = username;
  descriptionCopy = description;
  blockCopy = block;
  objc_storeStrong(&self->_account, account);
  objc_storeStrong(&self->_accountStore, store);
  v16 = MEMORY[0x24C1BC830](blockCopy);
  presentationBlock = self->_presentationBlock;
  self->_presentationBlock = v16;

  v18 = MEMORY[0x277D03988];
  if (!self->_presentationBlock)
  {
    v19 = DALoggingwithCategory();
    v20 = *(v18 + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_247E05000, v19, v20, "DAEASOAuthWebViewController Client did not pass a presentationBlock to the init method. Your presentation animation will probably look horrible. Please pass a presentationBlock.", buf, 2u);
    }
  }

  [(DAEASOAuthWebViewController *)self setModalPresentationStyle:0];
  v57 = 0;
  v21 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.exchangesyncexpress.framework.EASOAuthService" error:&v57];
  v48 = v57;
  extension = self->_extension;
  self->_extension = v21;

  v23 = DALoggingwithCategory();
  v24 = *(v18 + 7);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = self->_extension;
    *buf = 138412290;
    v60 = v25;
    _os_log_impl(&dword_247E05000, v23, v24, "DAEASOAuthWebViewController got extension %@", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke;
  v54[3] = &unk_278EE0820;
  objc_copyWeak(&v55, &location);
  [(NSExtension *)self->_extension setRequestCancellationBlock:v54];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_24;
  v52[3] = &unk_278EE0870;
  objc_copyWeak(&v53, &location);
  [(NSExtension *)self->_extension set_requestPostCompletionBlockWithItems:v52];
  if (accountCopy)
  {
    accountDescription = [accountCopy accountDescription];

    descriptionCopy = accountDescription;
  }

  if (!descriptionCopy)
  {
    if (_os_feature_enabled_impl())
    {
      username = [accountCopy username];
      descriptionCopy = ACUIDescriptionFromEmailAddress();
    }

    else
    {
      descriptionCopy = @"Outlook";
    }
  }

  v28 = DALoggingwithCategory();
  if (os_log_type_enabled(v28, v24))
  {
    *buf = 138412546;
    v60 = descriptionCopy;
    v61 = 2112;
    v62 = usernameCopy;
    _os_log_impl(&dword_247E05000, v28, v24, "DAEASOAuthWebViewController initializing for description %@ username %@", buf, 0x16u);
  }

  v29 = objc_alloc_init(MEMORY[0x277CCA9D8]);
  v30 = [MEMORY[0x277CBEB38] dictionaryWithObject:descriptionCopy forKey:@"description"];
  if (accountCopy)
  {
    identifier = [accountCopy identifier];
    v32 = identifier == 0;

    if (!v32)
    {
      identifier2 = [accountCopy identifier];
      v34 = [identifier2 copy];
      [v30 setObject:v34 forKeyedSubscript:@"accountId"];
    }
  }

  oauthType = self->_oauthType;
  if (oauthType)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_oauthType];
  }

  else
  {
    v36 = &unk_2859F0868;
  }

  [v30 setObject:v36 forKeyedSubscript:@"oauthAccountType"];
  if (oauthType)
  {
  }

  username3 = usernameCopy;
  if (!usernameCopy)
  {
    username2 = [accountCopy username];
    v39 = username2 == 0;

    if (v39)
    {
      goto LABEL_28;
    }

    username3 = [accountCopy username];
  }

  [v30 setObject:username3 forKeyedSubscript:@"username"];
  if (!usernameCopy)
  {
  }

LABEL_28:
  authURI = self->_authURI;
  if (authURI)
  {
    [v30 setObject:authURI forKeyedSubscript:@"authURI"];
  }

  v41 = [(ACAccount *)self->_account objectForKeyedSubscript:*MEMORY[0x277D03820]];

  if (v41)
  {
    v42 = [(ACAccount *)self->_account objectForKeyedSubscript:*MEMORY[0x277D07A30]];
    [v30 setObject:v42 forKeyedSubscript:@"easEndPoint"];
  }

  v43 = *MEMORY[0x277D07AC8];
  v44 = [(ACAccount *)self->_account objectForKeyedSubscript:*MEMORY[0x277D07AC8]];

  if (v44)
  {
    v45 = [(ACAccount *)self->_account objectForKeyedSubscript:v43];
    [v30 setObject:v45 forKeyedSubscript:@"claimsChallenge"];
  }

  [v29 setUserInfo:v30];
  v46 = self->_extension;
  v58 = v29;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_58;
  v51[3] = &unk_278EE0898;
  v51[4] = self;
  [(NSExtension *)v46 instantiateViewControllerWithInputItems:v47 listenerEndpoint:0 connectionHandler:v51];

  objc_destroyWeak(&v53);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);
}

void __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_2;
  block[3] = &unk_278EE07F8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_247E05000, v3, v4, "DAEASOAuthWebViewController extension requestCancellationBlock requestIdentifier %@ error %@", &v7, 0x16u);
    }

    [WeakRetained _extensionRequestDidCancelWithError:*(a1 + 40)];
  }
}

void __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_2_25;
  v13[3] = &unk_278EE0848;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v17);
}

void __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_2_25(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_247E05000, v3, v4, "DAEASOAuthWebViewController extension _requestPostCompletionBlockWithItems requestIdentifier %@ items %@", &v7, 0x16u);
    }

    [WeakRetained _extensionRequestDidCompleteWithTokens:*(a1 + 40) extensionCompletion:*(a1 + 48)];
  }
}

void __123__DAEASOAuthWebViewController__commonInitializationWithAccount_accountStore_username_accountDescription_presentationBlock___block_invoke_58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v10, v11))
  {
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_247E05000, v10, v11, "DAEASOAuthWebViewController finished instantiate remote view controller %@ error %@ extension request identifier %@", &v15, 0x20u);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 1016);
  *(v12 + 1016) = v8;
  v14 = v8;

  [*(a1 + 32) _didInstantiateRemoteViewController];
}

- (void)_didInstantiateRemoteViewController
{
  v27[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__DAEASOAuthWebViewController__didInstantiateRemoteViewController__block_invoke;
    v21[3] = &unk_278EE08C0;
    objc_copyWeak(&v22, &location);
    [(UIViewController *)self->_serviceViewController setViewServiceTerminationBlock:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  serviceViewController = self->_serviceViewController;
  if (serviceViewController && !self->_extensionCancellationError)
  {
    [(UIViewController *)serviceViewController willMoveToParentViewController:self];
    [(DAEASOAuthWebViewController *)self addChildViewController:self->_serviceViewController];
    view = [(DAEASOAuthWebViewController *)self view];
    view2 = [(UIViewController *)self->_serviceViewController view];
    [view addSubview:view2];

    view3 = [(DAEASOAuthWebViewController *)self view];
    view4 = [(UIViewController *)self->_serviceViewController view];
    [view3 bringSubviewToFront:view4];

    [(UIViewController *)self->_serviceViewController didMoveToParentViewController:self];
    view5 = [(UIViewController *)self->_serviceViewController view];
    [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277CCAAD0];
    v26 = @"serviceView";
    view6 = [(UIViewController *)self->_serviceViewController view];
    v27[0] = view6;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v10 constraintsWithVisualFormat:@"H:|[serviceView]|" options:0 metrics:0 views:v12];
    [v9 addObjectsFromArray:v13];

    v14 = MEMORY[0x277CCAAD0];
    v24 = @"serviceView";
    view7 = [(UIViewController *)self->_serviceViewController view];
    v25 = view7;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [v14 constraintsWithVisualFormat:@"V:|[serviceView]|" options:0 metrics:0 views:v16];
    [v9 addObjectsFromArray:v17];

    [MEMORY[0x277CCAAD0] activateConstraints:v9];
    view8 = [(DAEASOAuthWebViewController *)self view];
    [view8 setNeedsLayout];

    presentationBlock = self->_presentationBlock;
    if (presentationBlock)
    {
      presentationBlock[2](presentationBlock, self);
    }
  }

  v20 = self->_presentationBlock;
  self->_presentationBlock = 0;
}

void __66__DAEASOAuthWebViewController__didInstantiateRemoteViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[1040] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained _extensionRequestDidCompleteWithTokens:0 extensionCompletion:0];
    WeakRetained = v2;
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = DAEASOAuthWebViewController;
  [(DAEASOAuthWebViewController *)&v6 loadView];
  view = [(DAEASOAuthWebViewController *)self view];
  [view setOpaque:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view2 = [(DAEASOAuthWebViewController *)self view];
  [view2 setBackgroundColor:clearColor];
}

- (void)_extensionRequestDidCompleteWithTokens:(id)tokens extensionCompletion:(id)completion
{
  completionCopy = completion;
  v8 = completionCopy;
  self->_extensionRequestDidComplete = 1;
  if (tokens)
  {
    v9 = [tokens objectAtIndexedSubscript:0];
    attachments = [v9 attachments];
    v11 = [attachments objectAtIndexedSubscript:0];

    v12 = dispatch_get_global_queue(25, 0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2;
    v14[3] = &unk_278EE0960;
    v15 = v11;
    selfCopy = self;
    v18 = a2;
    v17 = v8;
    v13 = v11;
    dispatch_async(v12, v14);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke;
    block[3] = &unk_278EE06F8;
    block[4] = self;
    v20 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke(uint64_t a1)
{
  v8 = *(*(a1 + 32) + 1032);
  v2 = *(a1 + 32);
  if (*(v2 + 1032))
  {
    v3 = [*(v2 + 1032) domain];
    if ([v3 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v4 = [*(*(a1 + 32) + 1032) code];

      v2 = *(a1 + 32);
      if (v4 == -1009)
      {
        [objc_opt_class() presentInternetOfflineError];
        goto LABEL_9;
      }
    }

    else
    {

      v2 = *(a1 + 32);
    }
  }

  v5 = *(v2 + 1032);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v5 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CB8DC0]])
  {
    goto LABEL_10;
  }

  v7 = [*(*(a1 + 32) + 1032) code];

  if (v7 != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = v8;
  v8 = 0;
LABEL_10:

LABEL_11:
  [*(a1 + 32) _dismissAndCompleteWithIdentity:0 error:v8 extensionCompletion:*(a1 + 40)];
}

void __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__0;
  v89 = __Block_byref_object_dispose__0;
  v90 = 0;
  v3 = a1[4];
  v4 = *MEMORY[0x277CC2050];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_76;
  v82[3] = &unk_278EE08E8;
  v84 = &v85;
  v5 = v2;
  v83 = v5;
  [v3 loadItemForTypeIdentifier:v4 options:0 completionHandler:v82];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__0;
  v80 = __Block_byref_object_dispose__0;
  v81 = [v86[5] objectForKeyedSubscript:@"accessToken"];
  v6 = [v86[5] objectForKeyedSubscript:@"refreshToken"];
  v7 = [v86[5] objectForKeyedSubscript:@"username"];
  v8 = [v86[5] objectForKeyedSubscript:@"displayName"];
  v9 = [v86[5] objectForKeyedSubscript:@"oauthURI"];
  v10 = [v86[5] objectForKeyedSubscript:@"tokenRequestURI"];
  v11 = [v86[5] objectForKeyedSubscript:@"jwksURI"];
  v54 = v9;
  v55 = v8;
  v12 = [v86[5] objectForKeyedSubscript:@"issuer"];
  v13 = [v86[5] objectForKeyedSubscript:@"jwksData"];
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__0;
  v74[4] = __Block_byref_object_dispose__0;
  v75 = 0;
  v14 = a1[5];
  if ((*(v14 + 1064) & 1) == 0)
  {
    if (*(v14 + 1000))
    {
      v15 = *(v14 + 992);
      if (v15)
      {
        if (v77[5] && v6 && v7)
        {
          v16 = [v15 username];
          v17 = [v16 compare:v7 options:1];

          if (v17)
          {
            [objc_opt_class() presentUsernameMismatchAlert];
            v18 = v77[5];
            v77[5] = 0;
LABEL_18:

            goto LABEL_19;
          }

          v51 = [v86[5] objectForKeyedSubscript:@"oauthURI"];
          if (!v51)
          {
            goto LABEL_14;
          }

          v19 = [v86[5] objectForKeyedSubscript:@"tokenRequestURI"];
          if (v19)
          {
            v50 = [v86[5] objectForKeyedSubscript:@"jwksURI"];
            if (v50)
            {
              v20 = [v86[5] objectForKeyedSubscript:@"issuer"];
              if (v20)
              {
                v21 = v20;
                [v86[5] objectForKeyedSubscript:@"jwksData"];
                v22 = v49 = v19;

                if (v22)
                {
LABEL_15:
                  v24 = [v86[5] objectForKeyedSubscript:{@"oauthURI", v49}];
                  [*(a1[5] + 992) setObject:v24 forKeyedSubscript:*MEMORY[0x277D07AB0]];

                  v25 = [v86[5] objectForKeyedSubscript:@"tokenRequestURI"];
                  [*(a1[5] + 992) setObject:v25 forKeyedSubscript:*MEMORY[0x277D07AD0]];

                  v26 = [v86[5] objectForKeyedSubscript:@"jwksURI"];
                  [*(a1[5] + 992) setObject:v26 forKeyedSubscript:*MEMORY[0x277D07A90]];

                  v27 = [v86[5] objectForKeyedSubscript:@"issuer"];
                  [*(a1[5] + 992) setObject:v27 forKeyedSubscript:*MEMORY[0x277D07AA8]];

                  v28 = [v86[5] objectForKeyedSubscript:@"jwksData"];
                  [*(a1[5] + 992) setObject:v28 forKeyedSubscript:*MEMORY[0x277D07A80]];

                  v29 = MEMORY[0x277CCABB0];
                  v30 = [MEMORY[0x277CBEAA8] date];
                  [v30 timeIntervalSince1970];
                  v31 = [v29 numberWithDouble:?];
                  [*(a1[5] + 992) setObject:v31 forKeyedSubscript:*MEMORY[0x277D07A88]];

                  [*(a1[5] + 992) setObject:@"2" forKeyedSubscript:*MEMORY[0x277D07AB8]];
                  [*(a1[5] + 992) setObject:&stru_2859ED5C8 forKeyedSubscript:*MEMORY[0x277D07AC0]];
                  [*(a1[5] + 992) setObject:&stru_2859ED5C8 forKeyedSubscript:*MEMORY[0x277D07AC8]];
                  v32 = objc_alloc(MEMORY[0x277CB8F38]);
                  v33 = [v32 initWithOAuth2Token:v77[5] refreshToken:v6 expiryDate:0];
                  [*(a1[5] + 992) setCredential:v33];
                  v34 = DALoggingwithCategory();
                  v52 = v33;
                  v35 = *(MEMORY[0x277D03988] + 7);
                  if (os_log_type_enabled(v34, v35))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_247E05000, v34, v35, "DAEASOAuthWebViewController will save account with new credential", buf, 2u);
                  }

                  v36 = a1[5];
                  v37 = *(v36 + 1000);
                  v53 = *(v36 + 992);
                  v69[0] = MEMORY[0x277D85DD0];
                  v69[1] = 3221225472;
                  v69[2] = __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_121;
                  v69[3] = &unk_278EE0910;
                  v71 = v74;
                  v72 = &v76;
                  v38 = v5;
                  v70 = v38;
                  [v37 saveAccount:v53 withCompletionHandler:v69];
                  v18 = v52;
                  dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);

                  goto LABEL_18;
                }

LABEL_14:
                v23 = [MEMORY[0x277CCA890] currentHandler];
                [v23 handleFailureInMethod:a1[7] object:a1[5] file:@"DAEASOAuthWebViewController.m" lineNumber:286 description:{@"We have used these objects to fetch and verify the tokens, neither of these should be empty"}];

                goto LABEL_15;
              }
            }
          }

          goto LABEL_14;
        }
      }
    }
  }

LABEL_19:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_123;
  block[3] = &unk_278EE0938;
  v57 = v6;
  v58 = v55;
  v59 = v7;
  v60 = v54;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v39 = a1[5];
  v40 = a1[6];
  v67 = &v76;
  v65 = v39;
  v68 = v74;
  v66 = v40;
  v41 = v13;
  v42 = v12;
  v43 = v11;
  v44 = v10;
  v45 = v54;
  v46 = v7;
  v47 = v55;
  v48 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v85, 8);
}

void __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_247E05000, v7, v8, "DAEASOAuthWebViewController did loadItemForTypeIdentifier for response, got error %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = v5;
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = MEMORY[0x277CCAAC8];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
      v23 = 0;
      v14 = [v9 unarchivedObjectOfClasses:v13 fromData:v7 error:&v23];
      v15 = v23;
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v14;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_247E05000, v18, v19, "Unable to decode response: %@", buf, 0xCu);
        }

        v20 = *(*(a1 + 40) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;
      }
    }

    else
    {
      v15 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v15, v22))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&dword_247E05000, v15, v22, "DAEASOAuthWebViewController did loadItemForTypeIdentifier for response, got invalid response %@", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_121(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v12[0] = 67109378;
    v12[1] = a2;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_247E05000, v7, v8, "DAEASOAuthWebViewController did save account with success %d error %@", v12, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __90__DAEASOAuthWebViewController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_123(uint64_t a1)
{
  if (*(*(*(a1 + 112) + 8) + 40) && *(a1 + 32))
  {
    v2 = objc_alloc_init(DAEASOAuthIdentity);
    [(DAEASOAuthIdentity *)v2 setDisplayName:*(a1 + 40)];
    [(DAEASOAuthIdentity *)v2 setUsername:*(a1 + 48)];
    [(DAEASOAuthIdentity *)v2 setAccessToken:*(*(*(a1 + 112) + 8) + 40)];
    [(DAEASOAuthIdentity *)v2 setRefreshToken:*(a1 + 32)];
    [(DAEASOAuthIdentity *)v2 setOauthURI:*(a1 + 56)];
    [(DAEASOAuthIdentity *)v2 setTokenRequestURI:*(a1 + 64)];
    [(DAEASOAuthIdentity *)v2 setJwksURI:*(a1 + 72)];
    [(DAEASOAuthIdentity *)v2 setIssuer:*(a1 + 80)];
    [(DAEASOAuthIdentity *)v2 setJwksData:*(a1 + 88)];
  }

  else if (*(a1 + 48))
  {
    v2 = objc_alloc_init(DAEASOAuthIdentity);
    [(DAEASOAuthIdentity *)v2 setUsername:*(a1 + 48)];
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 96) _dismissAndCompleteWithIdentity:v2 error:*(*(*(a1 + 120) + 8) + 40) extensionCompletion:*(a1 + 104)];
}

- (void)_dismissAndCompleteWithIdentity:(id)identity error:(id)error extensionCompletion:(id)completion
{
  identityCopy = identity;
  errorCopy = error;
  completionCopy = completion;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 0;
    _os_log_impl(&dword_247E05000, v11, v12, "DAEASOAuthWebViewController will dismiss", buf, 2u);
  }

  presentingViewController = [(DAEASOAuthWebViewController *)self presentingViewController];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__DAEASOAuthWebViewController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke;
  v17[3] = &unk_278EE0988;
  v17[4] = self;
  v18 = identityCopy;
  v19 = errorCopy;
  v20 = completionCopy;
  v14 = errorCopy;
  v15 = identityCopy;
  v16 = completionCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v17];
}

void __89__DAEASOAuthWebViewController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke(void *a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    *v8 = 0;
    _os_log_impl(&dword_247E05000, v2, v3, "DAEASOAuthWebViewController did dismiss", v8, 2u);
  }

  v4 = a1[7];
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1[4] + 1072);
  if (v5)
  {
    (*(v5 + 16))(v5, a1[5], a1[6]);
    v6 = a1[4];
    v7 = *(v6 + 1072);
    *(v6 + 1072) = 0;
  }
}

+ (void)presentUsernameMismatchAlert
{
  v11 = MEMORY[0x277CBEB38];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HOTMAIL_EMAIL_MISMATCH_TITLE" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v4 = *MEMORY[0x277CBF188];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOTMAIL_EMAIL_MISMATCH_MESSAGE" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v7 = *MEMORY[0x277CBF198];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HOTMAIL_EMAIL_MISMATCH_OK" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v12 = [v11 dictionaryWithObjectsAndKeys:{v3, v4, v6, v7, v9, *MEMORY[0x277CBF1E8], 0}];

  [self _presentAlertWithAlertParameters:v12];
}

+ (void)presentInternetOfflineError
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CBF188];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v11[0] = v4;
  v10[1] = *MEMORY[0x277CBF198];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SIGN_IN_ERROR_MESSAGE_NO_CONNECTION" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v11[1] = v6;
  v10[2] = *MEMORY[0x277CBF1E8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SIGN_IN_ERROR_OK" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [self _presentAlertWithAlertParameters:v9];
}

+ (void)presentSSLError
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CBF188];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v11[0] = v4;
  v10[1] = *MEMORY[0x277CBF198];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SIGN_IN_ERROR_MESSAGE_SSL_ERROR" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v11[1] = v6;
  v10[2] = *MEMORY[0x277CBF1E8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SIGN_IN_ERROR_OK" value:&stru_2859ED5C8 table:@"EASOAuthSupport"];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [self _presentAlertWithAlertParameters:v9];
}

+ (void)_presentAlertWithAlertParameters:(id)parameters
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, parameters);
  if (v6[3])
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__DAEASOAuthWebViewController__presentAlertWithAlertParameters___block_invoke;
    block[3] = &unk_278EE09B0;
    block[4] = &v5;
    dispatch_async(v3, block);
  }

  _Block_object_dispose(&v5, 8);
}

void __64__DAEASOAuthWebViewController__presentAlertWithAlertParameters___block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

@end