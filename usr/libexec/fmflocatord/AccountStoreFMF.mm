@interface AccountStoreFMF
- (id)_accountFromACAccount:(id)account;
- (id)accounts;
- (void)_fetchAppAuthToken:(id)token;
- (void)_fetchInternalAuthToken:(id)token;
- (void)_tokensForAccount:(id)account;
- (void)addAccount:(id)account;
- (void)dealloc;
- (void)loadExistingAccounts;
- (void)removeAccount:(id)account;
@end

@implementation AccountStoreFMF

- (void)dealloc
{
  [(AccountStoreFMF *)self setCurrentActiveAccount:0];
  v3.receiver = self;
  v3.super_class = AccountStoreFMF;
  [(AccountStoreFMF *)&v3 dealloc];
}

- (void)loadExistingAccounts
{
  accountsList = [(AccountStoreFMF *)self accountsList];

  if (!accountsList)
  {
    v4 = +[NSMutableArray array];
    [(AccountStoreFMF *)self setAccountsList:v4];

    v5 = +[AppleAccountManager sharedInstance];
    fmfACAccount = [v5 fmfACAccount];

    v7 = [(AccountStoreFMF *)self _accountFromACAccount:fmfACAccount];
    v8 = v7;
    if (v7)
    {
      accountsList2 = [(AccountStoreFMF *)self accountsList];
      [accountsList2 addObject:v8];

      v7 = [(AccountStoreFMF *)self setCurrentActiveAccount:v8];
    }

    v10 = sub_100002830(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      accountsList3 = [(AccountStoreFMF *)self accountsList];
      v15 = 134217984;
      v16 = [accountsList3 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found %ld FMF accounts in store", &v15, 0xCu);
    }

    currentActiveAccount = [(AccountStoreFMF *)self currentActiveAccount];
    v13 = currentActiveAccount == 0;

    if (!v13)
    {
      currentActiveAccount2 = [(AccountStoreFMF *)self currentActiveAccount];
      [(AccountStoreFMF *)self _tokensForAccount:currentActiveAccount2];
    }
  }
}

- (id)accounts
{
  accountsList = [(AccountStoreFMF *)self accountsList];
  v4 = [accountsList copy];

  refreshAuthTokens = [(AccountStoreFMF *)self refreshAuthTokens];
  if (refreshAuthTokens)
  {
    v6 = sub_100002830(refreshAuthTokens);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Looks like some auth tokens were not read successfully the last time. Re-reading them...", buf, 2u);
    }

    [(AccountStoreFMF *)self setRefreshAuthTokens:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012DD0;
    v8[3] = &unk_10005D320;
    v8[4] = self;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  return v4;
}

- (void)addAccount:(id)account
{
  accountCopy = account;
  accountsList = [(AccountStoreFMF *)self accountsList];
  [accountsList addObject:accountCopy];

  [(AccountStoreFMF *)self saveChanges];
}

- (void)removeAccount:(id)account
{
  accountCopy = account;
  accountsList = [(AccountStoreFMF *)self accountsList];
  [accountsList removeObject:accountCopy];

  [(AccountStoreFMF *)self saveChanges];
}

- (void)_tokensForAccount:(id)account
{
  accountCopy = account;
  [(AccountStoreFMF *)self _fetchAppAuthToken:accountCopy];
  [(AccountStoreFMF *)self _fetchInternalAuthToken:accountCopy];
}

- (void)_fetchAppAuthToken:(id)token
{
  tokenCopy = token;
  v5 = objc_alloc_init(ACAccountStore);
  v6 = +[AppleAccountManager sharedInstance];
  fmfACAccount = [v6 fmfACAccount];

  v17 = 0;
  v8 = [v5 credentialForAccount:fmfACAccount error:&v17];
  v9 = v17;
  v10 = v9;
  if (!v8)
  {
    v11 = sub_100002830(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100037014(fmfACAccount, v11);
    }
  }

  v12 = [v8 credentialItemForKey:ACFindMyFriendsAppTokenKey];
  v13 = v12;
  if (v10 || !v12)
  {
    v14 = sub_100002830(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      username = [tokenCopy username];
      appAuthTokenStatus = [tokenCopy appAuthTokenStatus];
      *buf = 138412802;
      v19 = username;
      v20 = 2048;
      v21 = appAuthTokenStatus;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not retrieve app token for FMF account %@(%ld). Error : %@", buf, 0x20u);
    }

    [tokenCopy setAppAuthTokenStatus:1];
    [(AccountStoreFMF *)self setRefreshAuthTokens:1];
  }

  else
  {
    [tokenCopy setAppAuthToken:v12];
    [tokenCopy setAppAuthTokenStatus:0];
  }
}

- (void)_fetchInternalAuthToken:(id)token
{
  tokenCopy = token;
  v5 = objc_alloc_init(ACAccountStore);
  v6 = +[AppleAccountManager sharedInstance];
  fmfACAccount = [v6 fmfACAccount];

  v15 = 0;
  v8 = [v5 credentialForAccount:fmfACAccount error:&v15];
  v9 = v15;
  v10 = [v8 credentialItemForKey:ACFindMyFriendsTokenKey];
  v11 = v10;
  if (v9 || !v10)
  {
    v12 = sub_100002830(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      username = [tokenCopy username];
      appAuthTokenStatus = [tokenCopy appAuthTokenStatus];
      *buf = 138412802;
      v17 = username;
      v18 = 2048;
      v19 = appAuthTokenStatus;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not retrieve internal token for FMF account %@ (%ld) Error : %@", buf, 0x20u);
    }

    [tokenCopy setInternalAuthTokenStatus:2];
    [(AccountStoreFMF *)self setRefreshAuthTokens:1];
  }

  else
  {
    [tokenCopy setInternalAuthToken:v10];
    [tokenCopy setInternalAuthTokenStatus:0];
  }
}

- (id)_accountFromACAccount:(id)account
{
  if (account)
  {
    accountCopy = account;
    v4 = objc_alloc_init(FMFAccount);
    parentAccount = [accountCopy parentAccount];

    [(FMFAccount *)v4 applyPropertiesFromACAccount:parentAccount includingTokens:0];
    [(Account *)v4 setIsActive:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end