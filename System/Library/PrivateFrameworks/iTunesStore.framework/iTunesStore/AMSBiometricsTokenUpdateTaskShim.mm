@interface AMSBiometricsTokenUpdateTaskShim
- (AMSBiometricsTokenUpdateTaskShim)initWithAccountIdentifier:(id)identifier;
- (void)runUpdateWithCompletionBlock:(id)block;
@end

@implementation AMSBiometricsTokenUpdateTaskShim

- (AMSBiometricsTokenUpdateTaskShim)initWithAccountIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = AMSBiometricsTokenUpdateTaskShim;
  v5 = [(AMSBiometricsTokenUpdateTaskShim *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(AMSBiometricsTokenUpdateTaskShim *)v5 setAccountIdentifier:identifierCopy];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = identifierCopy;
      v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "[%{public}@]: [%{public}@] AMSBiometricsTokenUpdateTaskShim is enabled for this biometrics token update with accountIdentifier=[%{public}@]", &v17, 32);

      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

- (void)runUpdateWithCompletionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = AMSSetLogKeyIfNeeded();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v22 = 138543618;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = v5;
    v10 = v23;
    v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "[%{public}@]: [%{public}@] Beginning a shimmed biometrics update token task", &v22, 22);

    if (!v11)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
  }

LABEL_13:
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  ams_activeiTunesAccount = [defaultStore ams_iTunesAccountWithDSID:self->_accountIdentifier];

  if (!ams_activeiTunesAccount)
  {
    defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
    ams_activeiTunesAccount = [defaultStore2 ams_activeiTunesAccount];
  }

  v15 = [objc_alloc(MEMORY[0x277CEE430]) initWithAccount:ams_activeiTunesAccount];
  performUpdate = [v15 performUpdate];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__AMSBiometricsTokenUpdateTaskShim_runUpdateWithCompletionBlock___block_invoke;
  v19[3] = &unk_27A6714A0;
  v19[4] = self;
  v20 = v5;
  v21 = blockCopy;
  v17 = blockCopy;
  v18 = v5;
  [performUpdate addFinishBlock:v19];
}

void __65__AMSBiometricsTokenUpdateTaskShim_runUpdateWithCompletionBlock___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    v11 = objc_opt_class();
    v12 = a1[5];
    v22 = 138543618;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v13 = v11;
    v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 1, "[%{public}@]: [%{public}@] Successfully provisioned biometrics.", &v22, 22);
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v16) = v15 | 2;
    }

    else
    {
      LODWORD(v16) = v15;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = objc_opt_class();
    v18 = a1[5];
    v19 = v17;
    v20 = AMSHashIfNeeded();
    v22 = 138543874;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v20;
    v14 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, v10, 16, "[%{public}@]: [%{public}@] Failed to provision biometrics. error = %{public}@", &v22, 32);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
  free(v14);
  SSFileLog();
LABEL_24:

LABEL_25:
  v21 = a1[6];
  if (v21)
  {
    (*(v21 + 16))(v21, a2, v5);
  }
}

@end