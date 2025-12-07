@interface SUScriptAMSViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)DSID;
- (NSString)URL;
- (SUScriptAMSViewController)initWithPrimaryAccount:(id)account;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (void)setDSID:(id)d;
- (void)setURL:(id)l;
@end

@implementation SUScriptAMSViewController

- (SUScriptAMSViewController)initWithPrimaryAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = SUScriptAMSViewController;
  v6 = [(SUScriptObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryAccount, account);
  }

  return v7;
}

- (id)newNativeViewController
{
  v46 = *MEMORY[0x1E69E9840];
  lock = [(SUScriptObject *)self lock];
  bagSubProfile = [getAMSUIWebViewControllerClass(lock) bagSubProfile];
  bagSubProfileVersion = [(objc_class *)(getAMSUIWebViewControllerClass)() bagSubProfileVersion];
  v6 = MEMORY[0x1E698C7E0];
  bagKeySet = [(objc_class *)(getAMSUIWebViewControllerClass)() bagKeySet];
  [v6 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v8 = [MEMORY[0x1E698C7D8] bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];
  DSID = self->_DSID;
  if (!DSID || ([MEMORY[0x1E696AD98] numberWithInteger:{-[NSString integerValue](DSID, "integerValue")}], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E6959A48], "ams_sharedAccountStore"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "ams_iTunesAccountWithDSID:", v10), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    primaryAccount = [(SUScriptAMSViewController *)self primaryAccount];
    account = [primaryAccount account];
    uniqueIdentifier = [account uniqueIdentifier];

    if (!uniqueIdentifier || ([MEMORY[0x1E6959A48] ams_sharedAccountStore], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "ams_iTunesAccountWithDSID:", uniqueIdentifier), v12 = objc_claimAutoreleasedReturnValue(), v16, uniqueIdentifier, !v12))
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      if (!mEMORY[0x1E69D4938])
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        LODWORD(v19) = shouldLog | 2;
      }

      else
      {
        LODWORD(v19) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = v19;
      }

      else
      {
        v19 &= 2u;
      }

      if (v19)
      {
        v21 = objc_opt_class();
        v22 = self->_DSID;
        v40 = 138543618;
        v41 = v21;
        v42 = 2112;
        v43 = v22;
        v23 = v21;
        v24 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: Failed to locate account for DSID: %@", &v40, 22);

        if (!v24)
        {
LABEL_17:

          v12 = 0;
          goto LABEL_18;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
        free(v24);
        v38 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!mEMORY[0x1E69D4938]2)
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    LODWORD(v27) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v27) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v27;
  }

  else
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_29;
  }

  v29 = objc_opt_class();
  URL = self->_URL;
  v40 = 138543874;
  v41 = v29;
  v42 = 2112;
  v43 = URL;
  v44 = 2112;
  v45 = v12;
  v31 = v29;
  LODWORD(v39) = 32;
  v32 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%{public}@: Creating AMS view controller. URL: %@ account: %@", &v40, v39);

  if (v32)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v32 encoding:4];
    free(v32);
    SSFileLog();
LABEL_29:
  }

  v34 = [objc_alloc(getAMSUIWebViewControllerClass(v33)) initWithBag:v8 account:v12 clientInfo:0];
  v35 = [MEMORY[0x1E695DFF8] URLWithString:self->_URL];
  v36 = [v34 loadURL:v35];

  [(SUScriptObject *)self unlock];
  return v34;
}

- (NSString)DSID
{
  [(SUScriptObject *)self lock];
  v3 = self->_DSID;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)setDSID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    dCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v4 = [dCopy copy];
    DSID = self->_DSID;
    self->_DSID = v4;

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)setURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    lCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptObject *)self lock];
    v4 = [lCopy copy];
    URL = self->_URL;
    self->_URL = v4;

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (NSString)URL
{
  [(SUScriptObject *)self lock];
  v3 = self->_URL;
  [(SUScriptObject *)self unlock];

  return v3;
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_81 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptAMSViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_61, 0);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptAMSViewController;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptAMSViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_81 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_81 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"DSID", @"URL", @"URL", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end