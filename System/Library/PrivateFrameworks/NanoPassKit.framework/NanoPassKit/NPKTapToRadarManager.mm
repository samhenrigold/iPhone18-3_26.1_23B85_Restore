@interface NPKTapToRadarManager
- (void)_openTapToRadarWithRequest:(id)request completion:(id)completion;
- (void)_requestUserPermissionToFileRadarWithRequest:(id)request completion:(id)completion;
- (void)fileRadarWithRequest:(id)request requestUserPermission:(BOOL)permission completion:(id)completion;
@end

@implementation NPKTapToRadarManager

- (void)fileRadarWithRequest:(id)request requestUserPermission:(BOOL)permission completion:(id)completion
{
  permissionCopy = permission;
  requestCopy = request;
  completionCopy = completion;
  if (permissionCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__NPKTapToRadarManager_fileRadarWithRequest_requestUserPermission_completion___block_invoke;
    v10[3] = &unk_2799451C8;
    v10[4] = self;
    v11 = requestCopy;
    v12 = completionCopy;
    [(NPKTapToRadarManager *)self _requestUserPermissionToFileRadarWithRequest:v11 completion:v10];
  }

  else
  {
    [(NPKTapToRadarManager *)self _openTapToRadarWithRequest:requestCopy completion:completionCopy];
  }
}

uint64_t __78__NPKTapToRadarManager_fileRadarWithRequest_requestUserPermission_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _openTapToRadarWithRequest:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_requestUserPermissionToFileRadarWithRequest:(id)request completion:(id)completion
{
  v20[4] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = MEMORY[0x277CCACA8];
  title = [requestCopy title];
  v10 = [v8 stringWithFormat:@"(Internal Only)\n\nPlease file a radar to help us improve the product.\n\nIssue detected:\n%@", title];

  v11 = *MEMORY[0x277CBF198];
  v19[0] = *MEMORY[0x277CBF188];
  v19[1] = v11;
  v20[0] = @"Wallet detected an issue";
  v20[1] = v10;
  v12 = *MEMORY[0x277CBF1C0];
  v19[2] = *MEMORY[0x277CBF1E8];
  v19[3] = v12;
  v20[2] = @"Tap-To-Radar";
  v20[3] = @"Cancel";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__NPKTapToRadarManager__requestUserPermissionToFileRadarWithRequest_completion___block_invoke;
  v15[3] = &unk_279946828;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  NPKPresentUserNotification(v13, v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __80__NPKTapToRadarManager__requestUserPermissionToFileRadarWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_copyWeak(&to, (a1 + 40));
  v5 = objc_loadWeakRetained(&to);

  if (v5)
  {
    if (a3)
    {
      v7 = pk_General_log(v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v10 = pk_General_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: User rejected to Open Tap-To-Radar", v17, 2u);
        }
      }

      v11 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NPKTapToRadarManagerErrorDomain" code:0 userInfo:0];
      (*(v11 + 16))(v11, v12);
    }

    else
    {
      v13 = pk_General_log(v6);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v16 = pk_General_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: User accepted to Open Tap-To-Radar", buf, 2u);
        }
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  objc_destroyWeak(&to);
}

- (void)_openTapToRadarWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = pk_General_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Requested to Open Tap-To-Radar", buf, 2u);
    }
  }

  _applicationWorkSpace = [(NPKTapToRadarManager *)self _applicationWorkSpace];
  tapToRadarURL = [requestCopy tapToRadarURL];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__NPKTapToRadarManager__openTapToRadarWithRequest_completion___block_invoke;
  v16[3] = &unk_279946850;
  v17 = requestCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = requestCopy;
  [_applicationWorkSpace openURL:tapToRadarURL configuration:0 completionHandler:v16];
}

void __62__NPKTapToRadarManager__openTapToRadarWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v9[0] = @"requestURL";
    v6 = [*(a1 + 32) tapToRadarURL];
    v9[1] = *MEMORY[0x277CCA7E8];
    v10[0] = v6;
    v10[1] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v8 = [v5 errorWithDomain:@"NPKTapToRadarManagerErrorDomain" code:1 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

@end