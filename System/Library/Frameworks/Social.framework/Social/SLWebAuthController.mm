@interface SLWebAuthController
- (SLWebAuthController)init;
- (SLWebAuthController)initWithAccount:(id)account accountStore:(id)store presentationBlock:(id)block;
- (SLWebAuthController)initWithAccountDescription:(id)description presentationBlock:(id)block;
- (SLWebAuthController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_extensionItemForAccount:(id)account accountDescription:(id)description username:(id)username youTube:(BOOL)tube;
- (id)_init;
- (void)_commonInitializationWithAccount:(id)account accountStore:(id)store username:(id)username accountDescription:(id)description youTube:(BOOL)tube presentationBlock:(id)block;
- (void)_didInstantiateRemoteViewController;
- (void)_dismissAndCompleteWithIdentity:(id)identity error:(id)error extensionCompletion:(id)completion;
- (void)_extensionRequestDidCompleteWithTokens:(id)tokens extensionCompletion:(id)completion;
- (void)_presentInternetOfflineError;
- (void)_presentUsernameMismatchAlert;
- (void)loadView;
@end

@implementation SLWebAuthController

- (SLWebAuthController)initWithAccountDescription:(id)description presentationBlock:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = SLWebAuthController;
  v8 = [(SLWebAuthController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(SLWebAuthController *)v8 _commonInitializationWithAccount:0 accountStore:0 username:0 accountDescription:descriptionCopy youTube:0 presentationBlock:blockCopy];
  }

  return v9;
}

- (SLWebAuthController)initWithAccount:(id)account accountStore:(id)store presentationBlock:(id)block
{
  accountCopy = account;
  storeCopy = store;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = SLWebAuthController;
  v11 = [(SLWebAuthController *)&v14 initWithNibName:0 bundle:0];
  if (v11)
  {
    accountDescription = [accountCopy accountDescription];
    [(SLWebAuthController *)v11 _commonInitializationWithAccount:accountCopy accountStore:storeCopy username:0 accountDescription:accountDescription youTube:0 presentationBlock:blockCopy];
  }

  return v11;
}

- (SLWebAuthController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SLWebAuthController;
  v4 = [(SLWebAuthController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SLWebAuthController *)v4 _commonInitializationWithAccount:0 accountStore:0 username:0 accountDescription:0 youTube:0 presentationBlock:0];
  }

  return v5;
}

- (SLWebAuthController)init
{
  [(SLWebAuthController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SLWebAuthController;
  return [(SLWebAuthController *)&v3 initWithNibName:0 bundle:0];
}

- (id)_extensionItemForAccount:(id)account accountDescription:(id)description username:(id)username youTube:(BOOL)tube
{
  tubeCopy = tube;
  usernameCopy = username;
  descriptionCopy = description;
  _SLLog(v6, 5, @"SLWebAuthController initializing for description %@ username %@", v13, v14, v15, v16, v17, descriptionCopy);
  v18 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v19 = [MEMORY[0x1E695DF90] dictionaryWithObject:descriptionCopy forKey:@"description"];

  if (account)
  {
    [v19 setObject:usernameCopy forKeyedSubscript:@"username"];
  }

  if (tubeCopy)
  {
    [v19 setObject:@"YES" forKeyedSubscript:@"youTube"];
  }

  v20 = MEMORY[0x1E696ACC8];
  _webClient = [(SLWebAuthController *)self _webClient];
  v30 = 0;
  v22 = [v20 archivedDataWithRootObject:_webClient requiringSecureCoding:1 error:&v30];
  v23 = v30;
  [v19 setObject:v22 forKeyedSubscript:@"webClient"];

  if (v23)
  {
    _SLLog(v6, 3, @"Error while archiving we client, error: %@", v24, v25, v26, v27, v28, v23);
  }

  [v18 setUserInfo:v19];

  return v18;
}

- (void)_commonInitializationWithAccount:(id)account accountStore:(id)store username:(id)username accountDescription:(id)description youTube:(BOOL)tube presentationBlock:(id)block
{
  tubeCopy = tube;
  v51[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  usernameCopy = username;
  descriptionCopy = description;
  blockCopy = block;
  objc_storeStrong(&self->_account, account);
  objc_storeStrong(&self->_accountStore, store);
  v19 = MEMORY[0x1C6917BF0](blockCopy);
  presentationBlock = self->_presentationBlock;
  self->_presentationBlock = v19;

  if (!self->_presentationBlock)
  {
    _SLLog(v8, 3, @"SLWebAuthController Client did not pass a presentationBlock to the init method. Your presentation animation will probably look horrible. Please pass a presentationBlock.", v21, v22, v23, v24, v25, v40);
  }

  [(SLWebAuthController *)self setModalPresentationStyle:0];
  v26 = MEMORY[0x1E696ABD0];
  _extentionIdentifier = [(SLWebAuthController *)self _extentionIdentifier];
  v50 = 0;
  v28 = [v26 extensionWithIdentifier:_extentionIdentifier error:&v50];
  v41 = v50;
  extension = self->_extension;
  self->_extension = v28;

  _SLLog(v8, 7, @"SLWebAuthController got extension %@", v30, v31, v32, v33, v34, self->_extension);
  objc_initWeak(&location, self);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke;
  v47[3] = &unk_1E8175B70;
  objc_copyWeak(&v48, &location);
  [(NSExtension *)self->_extension setRequestCancellationBlock:v47];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_3;
  v45[3] = &unk_1E8175BC0;
  objc_copyWeak(&v46, &location);
  [(NSExtension *)self->_extension set_requestPostCompletionBlockWithItems:v45];
  if (accountCopy)
  {
    username = [accountCopy username];

    accountDescription = [accountCopy accountDescription];

    descriptionCopy = accountDescription;
    usernameCopy = username;
  }

  if (!descriptionCopy)
  {
    descriptionCopy = &stru_1F41EC300;
  }

  v37 = [(SLWebAuthController *)self _extensionItemForAccount:accountCopy accountDescription:descriptionCopy username:usernameCopy youTube:tubeCopy];
  v38 = self->_extension;
  v51[0] = v37;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_5;
  v44[3] = &unk_1E8175BE8;
  v44[4] = self;
  [(NSExtension *)v38 instantiateViewControllerWithInputItems:v39 listenerEndpoint:0 connectionHandler:v44];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&location);
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_2;
  block[3] = &unk_1E8175B48;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    _SLLog(v1, 7, @"SLWebAuthController extension requestCancellationBlock requestIdentifier %@ error %{public}@", v4, v5, v6, v7, v8, *(a1 + 32));
    [v9 _extensionRequestDidCancelWithError:*(a1 + 40)];
    WeakRetained = v9;
  }
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_4;
  v13[3] = &unk_1E8175B98;
  objc_copyWeak(&v17, (a1 + 32));
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v17);
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    _SLLog(v1, 7, @"SLWebAuthController extension _requestPostCompletionBlockWithItems requestIdentifier %@ items %@", v4, v5, v6, v7, v8, *(a1 + 32));
    [v9 _extensionRequestDidCompleteWithTokens:*(a1 + 40) extensionCompletion:*(a1 + 48)];
    WeakRetained = v9;
  }
}

void __123__SLWebAuthController__commonInitializationWithAccount_accountStore_username_accountDescription_youTube_presentationBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  _SLLog(v4, 5, @"SLWebAuthController finished instantiate remote view controller %@ error %{public}@ extension request identifier %@", v7, v8, v9, v10, v11, v6);
  v12 = *(a1 + 32);
  v13 = *(v12 + 1016);
  *(v12 + 1016) = v6;
  v14 = v6;

  [*(a1 + 32) _didInstantiateRemoteViewController];
}

- (void)_didInstantiateRemoteViewController
{
  v27[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58__SLWebAuthController__didInstantiateRemoteViewController__block_invoke;
    v21[3] = &unk_1E8175C10;
    objc_copyWeak(&v22, &location);
    [(UIViewController *)self->_serviceViewController setViewServiceTerminationBlock:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  serviceViewController = self->_serviceViewController;
  if (serviceViewController && !self->_extensionCancellationError)
  {
    [(UIViewController *)serviceViewController willMoveToParentViewController:self];
    [(SLWebAuthController *)self addChildViewController:self->_serviceViewController];
    view = [(SLWebAuthController *)self view];
    view2 = [(UIViewController *)self->_serviceViewController view];
    [view addSubview:view2];

    view3 = [(SLWebAuthController *)self view];
    view4 = [(UIViewController *)self->_serviceViewController view];
    [view3 bringSubviewToFront:view4];

    [(UIViewController *)self->_serviceViewController didMoveToParentViewController:self];
    view5 = [(UIViewController *)self->_serviceViewController view];
    [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E696ACD8];
    v26 = @"serviceView";
    view6 = [(UIViewController *)self->_serviceViewController view];
    v27[0] = view6;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v10 constraintsWithVisualFormat:@"H:|[serviceView]|" options:0 metrics:0 views:v12];
    [v9 addObjectsFromArray:v13];

    v14 = MEMORY[0x1E696ACD8];
    v24 = @"serviceView";
    view7 = [(UIViewController *)self->_serviceViewController view];
    v25 = view7;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [v14 constraintsWithVisualFormat:@"V:|[serviceView]|" options:0 metrics:0 views:v16];
    [v9 addObjectsFromArray:v17];

    [MEMORY[0x1E696ACD8] activateConstraints:v9];
    view8 = [(SLWebAuthController *)self view];
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

void __58__SLWebAuthController__didInstantiateRemoteViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[1040] & 1) == 0)
  {
    v9 = WeakRetained;
    _SLLog(v1, 3, @"SLWebAuthController observed unexpected extension termination. Probably a crash.", v3, v4, v5, v6, v7, v8);
    [v9 _extensionRequestDidCompleteWithTokens:0 extensionCompletion:0];
    WeakRetained = v9;
  }
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SLWebAuthController;
  [(SLWebAuthController *)&v6 loadView];
  view = [(SLWebAuthController *)self view];
  [view setOpaque:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view2 = [(SLWebAuthController *)self view];
  [view2 setBackgroundColor:clearColor];
}

- (void)_extensionRequestDidCompleteWithTokens:(id)tokens extensionCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  self->_extensionRequestDidComplete = 1;
  if (tokens)
  {
    v8 = [tokens objectAtIndexedSubscript:0];
    attachments = [v8 attachments];
    v10 = [attachments objectAtIndexedSubscript:0];

    v11 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2;
    block[3] = &unk_1E8175900;
    v14 = v10;
    selfCopy = self;
    v16 = v7;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke;
    v17[3] = &unk_1E81759A0;
    v17[4] = self;
    v18 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 1032);
  v9 = *(*(a1 + 32) + 1032);
  v13 = v3;
  if (v9)
  {
    v10 = [v9 domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A978]])
    {
      v11 = [*(*(a1 + 32) + 1032) code];

      v3 = v13;
      if (v11 == -1009)
      {
        _SLLog(v1, 3, @"SLWebAuthController will dismiss because not connected to internet.", v4, v5, v6, v7, v8, v12);
        [*(a1 + 32) _presentInternetOfflineError];

        goto LABEL_9;
      }
    }

    else
    {

      v3 = v13;
    }
  }

  if (v3)
  {
    _SLLog(v1, 3, @"SLWebAuthController will dismiss because of error %{public}@", v4, v5, v6, v7, v8, v3);
    goto LABEL_10;
  }

  _SLLog(v1, 5, @"SLWebAuthController will dismiss because of user cancel.", v4, v5, v6, v7, v8, v12);
LABEL_9:
  v13 = 0;
LABEL_10:
  [*(a1 + 32) _dismissAndCompleteWithIdentity:0 error:v13 extensionCompletion:*(a1 + 40)];
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2(uint64_t a1)
{
  v3 = dispatch_semaphore_create(0);
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy_;
  v69 = __Block_byref_object_dispose_;
  v70 = 0;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E6963798];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_73;
  v62[3] = &unk_1E8175C38;
  v64 = &v65;
  v6 = v3;
  v63 = v6;
  [v4 loadItemForTypeIdentifier:v5 options:0 completionHandler:v62];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = [v66[5] objectForKeyedSubscript:@"token"];
  v7 = [v66[5] objectForKeyedSubscript:@"refreshToken"];
  v8 = [v66[5] objectForKeyedSubscript:@"usernames"];
  v9 = [v66[5] objectForKeyedSubscript:@"displayName"];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy_;
  v54[4] = __Block_byref_object_dispose_;
  v55 = 0;
  v10 = *(*(a1 + 40) + 992);
  if (v10)
  {
    v11 = [v10 objectID];
    if (!v11 || !v57[5] || !v7)
    {
      goto LABEL_8;
    }

    v12 = [v8 firstObject];

    if (v12)
    {
      v13 = [*(*(a1 + 40) + 992) username];
      v14 = [v8 firstObject];
      v15 = [v13 compare:v14 options:1];

      if (v15)
      {
        v16 = [*(*(a1 + 40) + 992) username];
        v41 = [v8 firstObject];
        _SLLog(v1, 3, @"SLWebAuthController got mismatch between _account.username %@ and attempted username %@", v17, v18, v19, v20, v21, v16);

        [*(a1 + 40) _presentUsernameMismatchAlert];
        v11 = v57[5];
        v57[5] = 0;
LABEL_8:
      }
    }
  }

  v22 = *(*(a1 + 40) + 992);
  if (v22)
  {
    v23 = [v22 objectID];
    if (!v23 || !v57[5] || !v7)
    {
      goto LABEL_15;
    }

    v24 = [v8 firstObject];

    if (v24)
    {
      [*(*(a1 + 40) + 992) setAccountProperty:0 forKey:@"ACUISaysNotToSaveThis"];
      v25 = objc_alloc(MEMORY[0x1E6959A30]);
      v23 = [v25 initWithOAuth2Token:v57[5] refreshToken:v7 expiryDate:0];
      [*(*(a1 + 40) + 992) setCredential:v23];
      [*(*(a1 + 40) + 992) setSupportsAuthentication:1];
      _SLLog(v1, 5, @"SLWebAuthController will save account with new credential", v26, v27, v28, v29, v30, v40);
      v31 = *(a1 + 40);
      v32 = *(v31 + 1000);
      v33 = *(v31 + 992);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2_106;
      v50[3] = &unk_1E8175C60;
      v52 = v54;
      v53 = &v56;
      v34 = v6;
      v51 = v34;
      [v32 saveAccount:v33 withCompletionHandler:v50];
      dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);

LABEL_15:
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_3;
  block[3] = &unk_1E8175C88;
  v43 = v8;
  v44 = v9;
  v35 = *(a1 + 40);
  v36 = *(a1 + 48);
  v45 = v7;
  v46 = v35;
  v48 = &v56;
  v49 = v54;
  v47 = v36;
  v37 = v7;
  v38 = v9;
  v39 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v65, 8);
}

intptr_t __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_73(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 7;
  }

  v7 = a2;
  _SLLog(v3, v6, @"SLWebAuthController did loadItemForTypeIdentifier for response, got error %{public}@", v8, v9, v10, v11, v12, a3);
  v13 = MEMORY[0x1E696ACD0];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  objc_opt_class();
  v17 = [v14 setWithObjects:v15];
  v18 = [v13 unarchivedObjectOfClasses:v17 fromData:v7 error:0];

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _SLLog(v3, 3, @"SLWebAuthController loadItemForTypeIdentifier did not return a dictionary", v21, v22, v23, v24, v25, v16);
    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;
  }

  v28 = *(a1 + 32);

  return dispatch_semaphore_signal(v28);
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_2_106(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  _SLLog(v3, 5, @"SLWebAuthController did save account with success %@ error %{public}@", v8, v9, v10, v11, v12, v7);

  if ((a2 & 1) == 0)
  {
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __82__SLWebAuthController__extensionRequestDidCompleteWithTokens_extensionCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];

  if (v2)
  {
    v3 = [SLWebAuthIdentity alloc];
    v4 = [*(a1 + 32) firstObject];
    v5 = [(SLWebAuthIdentity *)v3 initWithUsername:v4 token:*(*(*(a1 + 72) + 8) + 40) displayName:*(a1 + 40) refreshToken:*(a1 + 48) youTubeUsername:0 idToken:0];
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 56) _dismissAndCompleteWithIdentity:v5 error:*(*(*(a1 + 80) + 8) + 40) extensionCompletion:*(a1 + 64)];
}

- (void)_dismissAndCompleteWithIdentity:(id)identity error:(id)error extensionCompletion:(id)completion
{
  identityCopy = identity;
  errorCopy = error;
  completionCopy = completion;
  _SLLog(v5, 5, @"SLWebAuthController will dismiss", v12, v13, v14, v15, v16, v21[0]);
  presentingViewController = [(SLWebAuthController *)self presentingViewController];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke;
  v21[3] = &unk_1E8175CB0;
  v22 = errorCopy;
  v23 = identityCopy;
  selfCopy = self;
  v25 = completionCopy;
  v18 = identityCopy;
  v19 = errorCopy;
  v20 = completionCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v21];
}

void __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  _SLLog(v8, 5, @"SLWebAuthController did dismiss", a4, a5, a6, a7, a8, v24);
  v15 = a1[7];
  if (v15)
  {
    (*(v15 + 16))();
  }

  if (a1[4])
  {
    v16 = 3;
  }

  else
  {
    v16 = 5;
  }

  _SLLog(v8, v16, @"SLWebAuthController completing with success %d error %{public}@", v10, v11, v12, v13, v14, a1[5] != 0);
  v17 = a1[4];
  v18 = _ACLogSystem();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke_cold_1(a1 + 5, a1 + 4, v19);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a1[5] != 0;
    *buf = 67109120;
    v26 = v20;
    _os_log_impl(&dword_1C23AF000, v19, OS_LOG_TYPE_DEFAULT, "SLWebAuthController completing with success %d", buf, 8u);
  }

  v21 = *(a1[6] + 1048);
  if (v21)
  {
    (*(v21 + 16))(v21, a1[5], a1[4]);
    v22 = a1[6];
    v23 = *(v22 + 1048);
    *(v22 + 1048) = 0;
  }
}

- (void)_presentUsernameMismatchAlert
{
  v14 = MEMORY[0x1E695DF90];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v15 localizedStringForKey:@"_EMAIL_MISMATCH_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
  v13 = *MEMORY[0x1E695EE58];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"_EMAIL_MISMATCH_MESSAGE" value:&stru_1F41EC300 table:@"Localizable"];
  v5 = *MEMORY[0x1E695EE60];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"_EMAIL_MISMATCH_OK" value:&stru_1F41EC300 table:@"Localizable"];
  v8 = *MEMORY[0x1E695EE78];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v9 resourceURL];
  v11 = [v14 dictionaryWithObjectsAndKeys:{v2, v13, v4, v5, v7, v8, resourceURL, *MEMORY[0x1E695EE90], 0}];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v11);
  if (v18[3])
  {
    v12 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__SLWebAuthController__presentUsernameMismatchAlert__block_invoke;
    block[3] = &unk_1E8175CD8;
    block[4] = &v17;
    dispatch_async(v12, block);
  }

  _Block_object_dispose(&v17, 8);
}

void __52__SLWebAuthController__presentUsernameMismatchAlert__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

- (void)_presentInternetOfflineError
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = *MEMORY[0x1E695EE58];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_1F41EC300 table:@"Localizable"];
  v18[0] = v3;
  v17[1] = *MEMORY[0x1E695EE60];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SIGN_IN_ERROR_MESSAGE_NO_CONNECTION" value:&stru_1F41EC300 table:@"Localizable"];
  v18[1] = v5;
  v17[2] = *MEMORY[0x1E695EE78];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SIGN_IN_ERROR_OK" value:&stru_1F41EC300 table:@"Localizable"];
  v18[2] = v7;
  v17[3] = *MEMORY[0x1E695EE90];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v8 resourceURL];
  v18[3] = resourceURL;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v10);
  if (v14[3])
  {
    v11 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SLWebAuthController__presentInternetOfflineError__block_invoke;
    v12[3] = &unk_1E8175CD8;
    v12[4] = &v13;
    dispatch_async(v11, v12);
  }

  _Block_object_dispose(&v13, 8);
}

void __51__SLWebAuthController__presentInternetOfflineError__block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 32) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

void __81__SLWebAuthController__dismissAndCompleteWithIdentity_error_extensionCompletion___block_invoke_cold_1(void *a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1 != 0;
  v4 = *a2;
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&dword_1C23AF000, log, OS_LOG_TYPE_ERROR, "SLWebAuthController completing with success %d error %{public}@", v5, 0x12u);
}

@end