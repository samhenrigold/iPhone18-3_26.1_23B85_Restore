@interface AMSUIWebClientContext
+ (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value domain:(__CFString *)domain;
+ (id)_createClientInfoFromAccount:(id)account clientInfo:(id)info;
+ (id)_sharedSnapshotCache;
- (AMSSnapshotBag)bag;
- (AMSUIWebActionRunnerDelegate)actionDelegate;
- (AMSUIWebClientContext)initWithAccount:(id)account clientInfo:(id)info backingBag:(id)bag;
- (AMSUIWebPageViewController)webPage;
- (BOOL)disableTrustedDomains;
- (NSString)URL;
- (id)JSAccountFromAccount:(id)account store:(id)store;
- (id)iTunesAccountFromJSAccount:(id)account;
- (id)iTunesAccountFromJSDSID:(id)d;
- (id)loadSnapshot;
- (void)replaceCurrentAccount:(id)account clientInfo:(id)info;
@end

@implementation AMSUIWebClientContext

- (AMSUIWebClientContext)initWithAccount:(id)account clientInfo:(id)info backingBag:(id)bag
{
  accountCopy = account;
  infoCopy = info;
  bagCopy = bag;
  v16.receiver = self;
  v16.super_class = AMSUIWebClientContext;
  v11 = [(AMSUIWebClientContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_backingBag, bag);
    objc_storeStrong(&v12->_clientInfo, info);
    v13 = +[AMSUIWebClientContext _sharedSnapshotCache];
    snapshotCache = v12->_snapshotCache;
    v12->_snapshotCache = v13;

    [(AMSUIWebClientContext *)v12 replaceCurrentAccount:accountCopy clientInfo:infoCopy];
  }

  return v12;
}

- (AMSSnapshotBag)bag
{
  v14 = *MEMORY[0x1E69E9840];
  bag = self->_bag;
  if (!bag)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] INVALID: Use of bag before bootstrap.", &v10, 0x16u);
    }

    bag = self->_backingBag;
  }

  v8 = bag;

  return v8;
}

- (BOOL)disableTrustedDomains
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = objc_opt_class();

    LOBYTE(has_internal_content) = [v3 _BOOLForKey:@"AMSUIWebDisableTrustedDomains" defaultValue:0 domain:@"com.apple.AppleMediaServices"];
  }

  return has_internal_content;
}

- (id)iTunesAccountFromJSAccount:(id)account
{
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = accountCopy;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    ams_localiTunesAccount = 0;
    goto LABEL_38;
  }

  v30 = [v7 objectForKeyedSubscript:@"DSID"];
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v30, "longLongValue")}];
  }

  else
  {
    v8 = 0;
  }

  v10 = [v7 objectForKeyedSubscript:@"altDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  ams_altDSID = [v7 objectForKeyedSubscript:@"username"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = ams_altDSID;
  }

  else
  {
    v13 = 0;
  }

  if (!v8)
  {
    if (v11)
    {
      goto LABEL_18;
    }

LABEL_22:
    v27 = ams_DSID;
    v28 = account;
    v15 = v13;
    if (!v13)
    {
      v16 = 0;
      selfCopy3 = self;
      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }

    goto LABEL_27;
  }

  account = [(AMSUIWebClientContext *)self account];
  ams_DSID = [account ams_DSID];
  if ([ams_DSID isEqualToNumber:v8])
  {
LABEL_20:

    goto LABEL_30;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_18:
  account2 = [(AMSUIWebClientContext *)self account];
  ams_altDSID = [account2 ams_altDSID];
  if (![ams_altDSID isEqualToString:v11])
  {
    v26 = account2;
    v27 = ams_DSID;
    v28 = account;
    v16 = v13;
    if (!v13)
    {
      selfCopy3 = self;
      LODWORD(v15) = 0;
      goto LABEL_32;
    }

    v15 = v13;
LABEL_27:
    selfCopy3 = self;
    account3 = [(AMSUIWebClientContext *)self account];
    username = [account3 username];
    v16 = v15;
    LODWORD(v15) = [username isEqualToString:v15];

    if (!v11)
    {
      if (v8)
      {
        goto LABEL_29;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v8)
    {
LABEL_29:

      self = selfCopy3;
      v13 = v16;
      if (v15)
      {
        goto LABEL_30;
      }

LABEL_34:
      v20 = MEMORY[0x1E6959A48];
      [(AMSUIWebClientContext *)self clientInfo];
      v22 = v21 = v13;
      accountMediaType = [v22 accountMediaType];
      v24 = [v20 ams_sharedAccountStoreForMediaType:accountMediaType];

      v13 = v21;
      ams_localiTunesAccount = [v24 ams_iTunesAccountWithAltDSID:v11 DSID:v8 username:v21];
      if (!ams_localiTunesAccount)
      {
        ams_localiTunesAccount = [v24 ams_localiTunesAccount];
      }

      goto LABEL_37;
    }

LABEL_33:
    self = selfCopy3;
    v13 = v16;
    if (v15)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v8)
  {
    goto LABEL_20;
  }

LABEL_30:
  account4 = [(AMSUIWebClientContext *)self account];
  [account4 reload];

  ams_localiTunesAccount = [(AMSUIWebClientContext *)self account];
LABEL_37:

LABEL_38:

  return ams_localiTunesAccount;
}

- (id)iTunesAccountFromJSDSID:(id)d
{
  v10[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (objc_opt_respondsToSelector())
  {
    v9 = @"DSID";
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "longLongValue")}];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AMSUIWebClientContext *)self iTunesAccountFromJSAccount:v6];

  return v7;
}

- (id)JSAccountFromAccount:(id)account store:(id)store
{
  v53[11] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  v8 = MEMORY[0x1E695E0F8];
  if (!accountCopy)
  {
    goto LABEL_37;
  }

  if ([accountCopy ams_isiTunesAccount])
  {
    ams_isSandboxAccount = [accountCopy ams_isSandboxAccount];
    v10 = @"iTunes";
    v11 = @"iTunes.sandbox";
    goto LABEL_4;
  }

  if ([accountCopy ams_isLocalAccount])
  {
    v10 = @"local";
  }

  else
  {
    if (([accountCopy ams_isiCloudAccount] & 1) == 0)
    {
      ams_isSandboxAccount = [accountCopy ams_isIDMSAccount];
      v10 = @"unknown";
      v11 = @"IDMS";
LABEL_4:
      if (ams_isSandboxAccount)
      {
        v10 = v11;
      }

      goto LABEL_11;
    }

    v10 = @"iCloud";
  }

LABEL_11:
  v48 = v10;
  v12 = v8;
  ams_DSID = [accountCopy ams_DSID];
  v14 = ams_DSID;
  v15 = &unk_1F394A678;
  if (ams_DSID)
  {
    v15 = ams_DSID;
  }

  v47 = v15;

  ams_altDSID = [accountCopy ams_altDSID];
  v17 = ams_altDSID;
  v18 = &stru_1F3921360;
  if (ams_altDSID)
  {
    v18 = ams_altDSID;
  }

  v51 = v18;

  if (!storeCopy)
  {
    v19 = MEMORY[0x1E6959A48];
    clientInfo = [(AMSUIWebClientContext *)self clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    storeCopy = [v19 ams_sharedAccountStoreForMediaType:accountMediaType];
  }

  v49 = storeCopy;
  v22 = [storeCopy ams_iTunesAccountForAccount:accountCopy];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = accountCopy;
  }

  v25 = v24;

  ams_creditsString = [v25 ams_creditsString];
  ams_firstName = [v25 ams_firstName];
  ams_lastName = [v25 ams_lastName];
  ams_storefront = [v25 ams_storefront];
  username = [v25 username];
  v52[0] = @"accountFlags";
  ams_accountFlags = [accountCopy ams_accountFlags];
  v31 = ams_accountFlags;
  if (ams_accountFlags)
  {
    v32 = ams_accountFlags;
  }

  else
  {
    v32 = v12;
  }

  v53[0] = v32;
  v52[1] = @"active";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(accountCopy, "isActive")}];
  v53[1] = v33;
  v53[2] = v51;
  v52[2] = @"altDSID";
  v52[3] = @"credits";
  v34 = ams_creditsString;
  if (!ams_creditsString)
  {
    v34 = &stru_1F3921360;
  }

  v53[3] = v34;
  v52[4] = @"DSID";
  stringValue = [v47 stringValue];

  v46 = ams_firstName;
  if (ams_firstName)
  {
    v36 = ams_firstName;
  }

  else
  {
    v36 = &stru_1F3921360;
  }

  v53[4] = stringValue;
  v53[5] = v36;
  v52[5] = @"firstName";
  v52[6] = @"lastName";
  v37 = ams_lastName;
  if (!ams_lastName)
  {
    v37 = &stru_1F3921360;
  }

  v53[6] = v37;
  v52[7] = @"isManagedAppleID";
  v38 = MEMORY[0x1E696AD98];
  ams_isManagedAppleID = [accountCopy ams_isManagedAppleID];

  v40 = v38;
  storeCopy = v49;
  v41 = [v40 numberWithBool:ams_isManagedAppleID];
  v42 = v41;
  if (ams_storefront)
  {
    v43 = ams_storefront;
  }

  else
  {
    v43 = &stru_1F3921360;
  }

  v53[7] = v41;
  v53[8] = v43;
  v52[8] = @"storefront";
  v52[9] = @"type";
  v52[10] = @"username";
  if (username)
  {
    v44 = username;
  }

  else
  {
    v44 = &stru_1F3921360;
  }

  v53[9] = v48;
  v53[10] = v44;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:11];

LABEL_37:

  return v8;
}

- (id)loadSnapshot
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698C7F0]);
  if (self->_bag)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      *buf = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Snapshot already loaded.", buf, 0x16u);
    }

    [v3 finishWithSuccess];
  }

  else
  {
    objc_initWeak(buf, self);
    backingBag = [(AMSUIWebClientContext *)self backingBag];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__AMSUIWebClientContext_loadSnapshot__block_invoke;
    v10[3] = &unk_1E7F25E80;
    objc_copyWeak(&v12, buf);
    v11 = v3;
    [backingBag createSnapshotWithCompletion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __37__AMSUIWebClientContext_loadSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, a2);
    v10 = [v6 BOOLForKey:@"disableSettingsNavigationProxy"];
    v11 = [v10 valueWithError:0];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v6 BOOLForKey:@"disableSettingsNavigationProxy"];
      v13 = [v12 valueWithError:0];
      v9[9] = [v13 BOOLValue];
    }

    else
    {
      v9[9] = 0;
    }

    if ([v9 disableSettingsNavigationProxy])
    {
      v16 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v16)
      {
        v16 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = AMSLogKey();
        v19 = 138543362;
        v20 = v18;
        _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] DisableSettingsNavigationProxy present, Settings nav proxy will be disabled.", &v19, 0xCu);
      }
    }

    [*(a1 + 32) finishWithSuccess:v7 == 0 error:v7];
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = AMSError();
    [v14 finishWithError:v15];
  }
}

- (void)replaceCurrentAccount:(id)account clientInfo:(id)info
{
  v62 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  infoCopy = info;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  v55 = infoCopy;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v4 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = AMSHashIfNeeded();
    v17 = AMSHashIfNeeded();
    *buf = 138543874;
    v57 = v15;
    v58 = 2114;
    v59 = v16;
    v60 = 2114;
    v61 = v17;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@Replacing current account with account: %{public}@ | clientInfo: %{public}@", buf, 0x20u);
    if (v11)
    {

      v15 = v4;
    }

    infoCopy = v55;
  }

  clientInfo = [(AMSUIWebClientContext *)self clientInfo];
  v54 = [objc_opt_class() _createClientInfoFromAccount:accountCopy clientInfo:infoCopy];
  objc_storeStrong(&self->_clientInfo, v54);
  if (accountCopy)
  {
    v19 = accountCopy;
    account = self->_account;
    self->_account = v19;
  }

  else
  {
    v21 = MEMORY[0x1E6959A48];
    account = [(AMSUIWebClientContext *)self clientInfo];
    v22 = [v21 ams_sharedAccountStoreForClient:account];
    ams_localiTunesAccount = [v22 ams_localiTunesAccount];
    v24 = self->_account;
    self->_account = ams_localiTunesAccount;
  }

  backingBag = [(AMSUIWebClientContext *)self backingBag];
  v26 = objc_opt_respondsToSelector();

  if ((v26 & 1) != 0 && (-[AMSUIWebClientContext backingBag](self, "backingBag"), v27 = objc_claimAutoreleasedReturnValue(), [v27 processInfo], v28 = objc_claimAutoreleasedReturnValue(), v27, objc_msgSend(v28, "accountMediaType"), v29 = objc_claimAutoreleasedReturnValue(), v28, v29))
  {
    v30 = 0;
    if (!clientInfo)
    {
      goto LABEL_31;
    }
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      v34 = AMSLogKey();
      *buf = 138543618;
      v57 = v33;
      v58 = 2114;
      v59 = v34;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unable to locate bag media type", buf, 0x16u);
    }

    v29 = 0;
    v30 = 1;
    if (!clientInfo)
    {
      goto LABEL_31;
    }
  }

  clientInfo2 = [(AMSUIWebClientContext *)self clientInfo];
  accountMediaType = [clientInfo2 accountMediaType];
  v37 = accountMediaType;
  if (v30)
  {
    accountMediaType2 = [clientInfo accountMediaType];
    v39 = [v37 isEqualToString:accountMediaType2];

    if (v39)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v40 = [accountMediaType isEqualToString:v29];

    if (v40)
    {
      goto LABEL_31;
    }
  }

  mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]3)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    v44 = AMSLogKey();
    *buf = 138543618;
    v57 = v43;
    v58 = 2114;
    v59 = v44;
    _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating bag to match new account type", buf, 0x16u);
  }

  v45 = MEMORY[0x1E698C7D8];
  backingBag2 = [(AMSUIWebClientContext *)self backingBag];
  profile = [backingBag2 profile];
  backingBag3 = [(AMSUIWebClientContext *)self backingBag];
  profileVersion = [backingBag3 profileVersion];
  clientInfo3 = [(AMSUIWebClientContext *)self clientInfo];
  v51 = [v45 bagForProfile:profile profileVersion:profileVersion processInfo:clientInfo3];
  [(AMSUIWebClientContext *)self updateBackingBag:v51];

LABEL_31:
  dataProvider = [(AMSUIWebClientContext *)self dataProvider];
  syncProperties = [dataProvider syncProperties];
}

+ (id)_sharedSnapshotCache
{
  if (_sharedSnapshotCache_ams_once_token___COUNTER__ != -1)
  {
    +[AMSUIWebClientContext _sharedSnapshotCache];
  }

  v3 = _sharedSnapshotCache_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __45__AMSUIWebClientContext__sharedSnapshotCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698C950]) initWithMaxSize:5];
  v1 = _sharedSnapshotCache_ams_once_object___COUNTER__;
  _sharedSnapshotCache_ams_once_object___COUNTER__ = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)_BOOLForKey:(id)key defaultValue:(BOOL)value domain:(__CFString *)domain
{
  keyCopy = key;
  CFPreferencesAppSynchronize(domain);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(keyCopy, domain, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return value;
  }
}

+ (id)_createClientInfoFromAccount:(id)account clientInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  infoCopy = info;
  v7 = [infoCopy copy];
  v8 = v7;
  if (v7)
  {
    currentProcess = v7;
  }

  else
  {
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  }

  v10 = currentProcess;

  if ([accountCopy ams_isSandboxAccount])
  {
    [v10 setAccountMediaType:*MEMORY[0x1E698C4C8]];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v29 = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Switching to sandbox media type", &v29, 0x16u);
    }
  }

  accountMediaType = [v10 accountMediaType];
  if (!accountMediaType)
  {
LABEL_14:
    v19 = objc_alloc(MEMORY[0x1E698CAC8]);
    bundleIdentifier = [infoCopy bundleIdentifier];
    v16 = [v19 initWithBundleIdentifier:bundleIdentifier];

    accountMediaType2 = [v16 accountMediaType];
    if (accountMediaType2)
    {
      [v10 setAccountMediaType:accountMediaType2];
    }

    else
    {
      defaultMediaTypeForCurrentProcess = [MEMORY[0x1E698CAC8] defaultMediaTypeForCurrentProcess];
      [v10 setAccountMediaType:defaultMediaTypeForCurrentProcess];
    }

    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      accountMediaType3 = [v10 accountMediaType];
      v29 = 138543874;
      v30 = v25;
      v31 = 2114;
      v32 = v26;
      v33 = 2114;
      v34 = accountMediaType3;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Switching to media type: %{public}@", &v29, 0x20u);
    }

    goto LABEL_22;
  }

  v16 = accountMediaType;
  if (accountCopy && ([accountCopy ams_isSandboxAccount] & 1) == 0)
  {
    accountMediaType4 = [infoCopy accountMediaType];
    v18 = [accountMediaType4 isEqualToString:*MEMORY[0x1E698C4C8]];

    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_22:

LABEL_23:

  return v10;
}

- (AMSUIWebActionRunnerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (AMSUIWebPageViewController)webPage
{
  WeakRetained = objc_loadWeakRetained(&self->_webPage);

  return WeakRetained;
}

- (NSString)URL
{
  WeakRetained = objc_loadWeakRetained(&self->_URL);

  return WeakRetained;
}

@end