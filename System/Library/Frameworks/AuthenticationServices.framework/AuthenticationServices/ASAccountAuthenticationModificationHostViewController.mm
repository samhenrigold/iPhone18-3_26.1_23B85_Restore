@interface ASAccountAuthenticationModificationHostViewController
@end

@implementation ASAccountAuthenticationModificationHostViewController

void __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_2;
  aBlock[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = _Block_copy(aBlock);
  objc_storeStrong((*(a1 + 32) + 1072), a2);
  v6 = *(a1 + 32);
  v7 = v6[132];
  if (v7 == 1)
  {
    [v4 prepareInterfaceToUpgradeCredentialToSignInWithApple:v6[130] serviceIdentifier:v6[129] userInfo:v6[135] completion:v5];
  }

  else if (!v7)
  {
    [v4 prepareInterfaceToUpdatePasswordForServiceIdentifier:v6[129] existingCredential:v6[130] newPassword:v6[131] userInfo:v6[135] completion:v5];
  }

  objc_destroyWeak(&v9);
}

void __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_3;
  block[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 136);
    if (objc_opt_respondsToSelector())
    {
      [v2 presentUIForAccountModificationHostViewController:v3];
    }

    WeakRetained = v3;
  }
}

void __142___ASAccountAuthenticationModificationHostViewController_prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext_userInfo_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1088));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewControllerDidCompleteUpgradeToSignInWithApple:a1[4] userInfo:a1[5] completion:a1[6]];
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void __136___ASAccountAuthenticationModificationHostViewController_prepareToCompleteRequestWithHostContext_updatedCredential_userInfo_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1088));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewController:a1[4] didFinishWithCredential:a1[5] userInfo:a1[6] completion:a1[7]];
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

void __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v5, v6);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_DEFAULT, "Authorization controller successfully revoked the upgrade authorization.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke_cold_1(v8, v5);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11.receiver = *(a1 + 40);
  v11.super_class = _ASAccountAuthenticationModificationHostViewController;
  objc_msgSendSuper2(&v11, sel_prepareToCancelRequestWithHostContext_error_completion_, v9, v5, v10);
}

void __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 133, a2);
      v11 = [v6 credential];
      v12 = [v11 authenticationServicesCredential];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (v7)
      {
        v17 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(WeakRetained, v9);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke_cold_1(v17, v7);
        }
      }

      v18 = *(a1 + 32);
      v19 = *MEMORY[0x1E698DB28];
      v20 = v7;
      v21 = [v20 safari_matchesErrorDomain:v19 andCode:-7003];
      v22 = MEMORY[0x1E696ABC0];
      if (v21)
      {
        v23 = *MEMORY[0x1E696AA08];
        v29[0] = *MEMORY[0x1E696A588];
        v29[1] = v23;
        v30[0] = @"User tapped cancel on Sign in with Apple sheet.";
        v30[1] = v20;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
        v25 = v22;
        v26 = 1;
      }

      else
      {
        v29[0] = *MEMORY[0x1E696AA08];
        v30[0] = v20;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:1];
        v25 = v22;
        v26 = 0;
      }

      v12 = [v25 errorWithDomain:@"ASExtensionErrorDomain" code:v26 userInfo:v24];

      (*(v18 + 16))(v18, 0, v12);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"Host view controller deallocated.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v16 = [v14 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v15];
    (*(v13 + 16))(v13, 0, v16);
  }
}

void __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Authorization controller attempted to revoke upgrade authorization and failed with error: %@", v7, v8, v9, v10);
}

void __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Error when creating Sign in with Apple Authorization: %{public}@", v7, v8, v9, v10);
}

@end