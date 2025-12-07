@interface AMSUIUpdateMultiUserTokenTask
+ (BOOL)_errorIsRecoverable:(id)recoverable;
- (AMSUIUpdateMultiUserTokenTask)initWithAccount:(id)account homeIdentifier:(id)identifier viewController:(id)controller;
- (id)performTask;
@end

@implementation AMSUIUpdateMultiUserTokenTask

- (AMSUIUpdateMultiUserTokenTask)initWithAccount:(id)account homeIdentifier:(id)identifier viewController:(id)controller
{
  accountCopy = account;
  identifierCopy = identifier;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = AMSUIUpdateMultiUserTokenTask;
  v12 = [(AMSTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_homeIdentifier, identifier);
    objc_storeStrong(&v13->_viewController, controller);
  }

  return v13;
}

- (id)performTask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSUIUpdateMultiUserTokenTask_performTask__block_invoke;
  v4[3] = &unk_1E7F24B00;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithBlock:v4];

  return v2;
}

uint64_t __44__AMSUIUpdateMultiUserTokenTask_performTask__block_invoke(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = [*(a1 + 32) account];
    v9 = AMSHashIfNeeded();
    v10 = [*(a1 + 32) homeIdentifier];
    v11 = AMSHashIfNeeded();
    *buf = 138544130;
    v70 = v6;
    v71 = 2114;
    v72 = v7;
    v73 = 2114;
    v74 = v9;
    v75 = 2114;
    v76 = v11;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating a Multi-User token. account = %{public}@ | homeIdentifier = %{public}@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v13 = [*(a1 + 32) account];
  v14 = [*(a1 + 32) homeIdentifier];
  v15 = [v12 ams_setiTunesAccount:v13 forHomeWithIdentifier:v14];
  v68 = 0;
  v16 = [v15 resultWithError:&v68];
  v17 = v68;

  if (v16)
  {
    v18 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v70 = v20;
      v71 = 2114;
      v72 = v21;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated the account's Multi-User token.", buf, 0x16u);
    }

    v22 = MEMORY[0x1E695E118];
  }

  else
  {
    v23 = [objc_opt_class() _errorIsRecoverable:v17];
    v24 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
    v25 = v24;
    if (v23)
    {
      if (!v24)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = AMSLogKey();
        *buf = 138543618;
        v70 = v27;
        v71 = 2114;
        v72 = v28;
        _os_log_impl(&dword_1BB036000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We must authenticate the iCloud account in order to generate a new Multi-User token.", buf, 0x16u);
      }

      v29 = objc_alloc_init(MEMORY[0x1E698C7B0]);
      [v29 setCanMakeAccountActive:0];
      [v29 setDebugReason:@"Updating a Multi-User Token"];
      v30 = [AMSUIAuthKitUpdateTask alloc];
      v31 = [v12 ams_activeiCloudAccount];
      v32 = [*(a1 + 32) viewController];
      v33 = [(AMSUIAuthKitUpdateTask *)v30 initWithAccount:v31 presentingViewController:v32 options:v29];

      v34 = [(AMSAuthKitUpdateTask *)v33 performAuthKitUpdate];
      v67 = 0;
      v35 = [v34 resultWithError:&v67];
      v36 = v67;

      if (v35)
      {
        v64 = v33;
        v65 = v35;
        v37 = [*(a1 + 32) account];
        v38 = [*(a1 + 32) homeIdentifier];
        v39 = [v12 ams_setiTunesAccount:v37 forHomeWithIdentifier:v38];
        v66 = v36;
        v40 = [v39 resultWithError:&v66];
        v17 = v66;

        v41 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
        v42 = v41;
        if (v40)
        {
          if (!v41)
          {
            v42 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v43 = [v42 OSLogObject];
          v35 = v65;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = objc_opt_class();
            v45 = AMSLogKey();
            *buf = 138543618;
            v70 = v44;
            v71 = 2114;
            v72 = v45;
            _os_log_impl(&dword_1BB036000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated the account's Multi-User token.", buf, 0x16u);
          }

          v22 = MEMORY[0x1E695E118];
          v33 = v64;
        }

        else
        {
          if (!v41)
          {
            v42 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v58 = [v42 OSLogObject];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = objc_opt_class();
            v60 = AMSLogKey();
            v61 = AMSHashIfNeeded();
            *buf = 138543874;
            v70 = v59;
            v71 = 2114;
            v72 = v60;
            v73 = 2114;
            v74 = v61;
            _os_log_impl(&dword_1BB036000, v58, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update the account's Multi-User token. error = %{public}@", buf, 0x20u);
          }

          v33 = v64;
          v35 = v65;
          if (a2)
          {
            v62 = v17;
            v22 = 0;
            *a2 = v17;
          }

          else
          {
            v22 = 0;
          }
        }
      }

      else
      {
        v51 = [MEMORY[0x1E698C968] sharedAccountsMultiUserConfig];
        if (!v51)
        {
          v51 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v52 = [v51 OSLogObject];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_opt_class();
          v54 = AMSLogKey();
          AMSHashIfNeeded();
          v56 = v55 = v33;
          *buf = 138543874;
          v70 = v53;
          v71 = 2114;
          v72 = v54;
          v73 = 2114;
          v74 = v56;
          _os_log_impl(&dword_1BB036000, v52, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to authenticate the iCloud account. error = %{public}@", buf, 0x20u);

          v33 = v55;
          v35 = 0;
        }

        if (a2)
        {
          v57 = v36;
          v22 = 0;
          *a2 = v36;
        }

        else
        {
          v22 = 0;
        }

        v17 = v36;
      }
    }

    else
    {
      if (!v24)
      {
        v25 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v46 = [v25 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = AMSLogKey();
        v49 = AMSHashIfNeeded();
        *buf = 138543874;
        v70 = v47;
        v71 = 2114;
        v72 = v48;
        v73 = 2114;
        v74 = v49;
        _os_log_impl(&dword_1BB036000, v46, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update the account's Multi-User token. error = %{public}@", buf, 0x20u);
      }

      if (a2)
      {
        v50 = v17;
        v22 = 0;
        *a2 = v17;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  return v22;
}

+ (BOOL)_errorIsRecoverable:(id)recoverable
{
  recoverableCopy = recoverable;
  if ([recoverableCopy ams_hasDomain:*MEMORY[0x1E698C548] code:108] && (objc_msgSend(recoverableCopy, "ams_underlyingErrorWithDomain:code:", *MEMORY[0x1E698DB28], -7013), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = [recoverableCopy ams_hasDomain:@"AMSDCloudDataErrorDomain" code:9];
  }

  return v5;
}

@end