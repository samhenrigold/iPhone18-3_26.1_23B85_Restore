@interface FTPasswordManager
+ (id)_loginUserNotificationForService:(id)service user:(id)user isForBadPassword:(BOOL)password showForgetPassword:(BOOL)forgetPassword shouldRememberPassword:(BOOL)rememberPassword;
+ (id)sharedInstance;
- (BOOL)_shouldForceSilentOnlyAuthForUsername:(id)username serviceIdentifier:(id)identifier;
- (BOOL)_usernameHasCorrespondingIdMSAccount:(id)account;
- (BOOL)isAuthTokenReceiptTime:(double)time withinGracePeriod:(double)period;
- (FTPasswordManager)init;
- (FTPasswordManager)initWithUserNotificationCenter:(id)center;
- (double)authTokenGracePeriod;
- (id)_accountBasedOnProfileID:(id)d orUsername:(id)username inStore:(id)store;
- (id)_accountOptionsDictForRenewCredentialsForService:(id)service username:(id)username shouldFailIfNotSilent:(BOOL)silent;
- (id)_accountWithProfileID:(id)d username:(id)username inStore:(id)store;
- (id)_accountWithProfileIDMatchingUser:(id)user inStore:(id)store;
- (id)_accountWithUsername:(id)username inStore:(id)store;
- (id)_accountWithUsernameAlias:(id)alias inStore:(id)store;
- (id)_credentialForAccount:(id)account;
- (id)_findAccountOfType:(id)type InStore:(id)store withCriteria:(id)criteria;
- (id)_findGameCenterAccountInStore:(id)store withCriteria:(id)criteria;
- (id)_findIDSAccountInStore:(id)store withCriteria:(id)criteria;
- (id)_findIDSAccountsInStore:(id)store withCriteria:(id)criteria;
- (id)_gameCenterAccountWithUsername:(id)username;
- (id)_keychainAuthTokenForUsername:(id)username service:(id)service;
- (id)_keychainPasswordForUsername:(id)username service:(id)service;
- (id)_profileIDForUsername:(id)username inStore:(id)store;
- (id)acAccountWithProfileID:(id)d username:(id)username accountStore:(id)store;
- (id)gameCenterPropertiesFromAccountWithUsername:(id)username;
- (id)profileIDForACAccount:(id)account;
- (void)_renewCredentialsIfPossibleForAccount:(id)account username:(id)username inServiceIdentifier:(id)identifier originalInServiceIdentifier:(id)serviceIdentifier serviceName:(id)name failIfNotSilent:(BOOL)silent renewHandler:(id)handler shortCircuitCompletionBlock:(id)self0;
- (void)_setKeychainAuthToken:(id)token forUsername:(id)username service:(id)service;
- (void)_updateStatus:(id)status onAccount:(id)account;
- (void)accountCredentialChanged:(id)changed;
- (void)accountWasRemoved:(id)removed;
- (void)cancelRequestID:(id)d serviceIdentifier:(id)identifier;
- (void)cleanUpAccountsBasedOnInUseUsernamesBlock:(id)block profileIDBlock:(id)dBlock completionBlock:(id)completionBlock;
- (void)cleanUpAccountsWithUsername:(id)username orProfileID:(id)d basedOnInUseUsernames:(id)usernames profileIDs:(id)ds completionBlock:(id)block;
- (void)fetchAuthTokenForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block;
- (void)fetchPasswordForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block;
- (void)performCleanUpWithCompletion:(id)completion;
- (void)removeAuthTokenAllowingGracePeriodForProfileID:(id)d username:(id)username;
- (void)requestAuthTokenForProfileID:(id)d username:(id)username service:(id)service badPassword:(BOOL)password showForgotPassword:(BOOL)forgotPassword forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent outRequestID:(id *)self0 completionBlock:(id)self1;
- (void)requestPasswordForUsername:(id)username service:(id)service badPassword:(BOOL)password showForgotPassword:(BOOL)forgotPassword shouldRememberPassword:(BOOL)rememberPassword outRequestID:(id *)d completionBlock:(id)block;
- (void)setAccountStatus:(id)status forProfileID:(id)d username:(id)username service:(id)service;
- (void)setAuthTokenForProfileID:(id)d username:(id)username service:(id)service authToken:(id)token selfHandle:(id)handle accountStatus:(id)status outRequestID:(id *)iD completionBlock:(id)self0;
- (void)setHandlesForProfileID:(id)d username:(id)username service:(id)service handles:(id)handles;
- (void)setPasswordForProfileID:(id)d username:(id)username service:(id)service password:(id)password outRequestID:(id *)iD completionBlock:(id)block;
- (void)updatePreviousUsername:(id)username toNewUsername:(id)newUsername;
@end

@implementation FTPasswordManager

+ (id)sharedInstance
{
  if (qword_1ED7687C8 != -1)
  {
    sub_19592A7D0();
  }

  v3 = qword_1ED768728;

  return v3;
}

- (FTPasswordManager)init
{
  mEMORY[0x1E69A6190] = [MEMORY[0x1E69A6190] sharedInstance];
  v4 = [(FTPasswordManager *)self initWithUserNotificationCenter:mEMORY[0x1E69A6190]];

  return v4;
}

- (FTPasswordManager)initWithUserNotificationCenter:(id)center
{
  centerCopy = center;
  v15.receiver = self;
  v15.super_class = FTPasswordManager;
  v6 = [(FTPasswordManager *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x19A8B8550](@"ACMonitoredAccountStore", @"Accounts"));
    v8 = MEMORY[0x1E695DFD8];
    v9 = sub_195956704(v7);
    v10 = sub_195956748(v9);
    v11 = [v8 setWithObjects:{v9, v10, 0}];
    v12 = [v7 initWithAccountTypes:v11 delegate:v6];
    accountStore = v6->_accountStore;
    v6->_accountStore = v12;

    objc_storeStrong(&v6->_userNotificationCenter, center);
  }

  return v6;
}

- (id)_keychainPasswordForUsername:(id)username service:(id)service
{
  usernameCopy = username;
  serviceCopy = service;
  IMGetKeychainPassword();
  v7 = 0;
  if (![v7 length])
  {
    v8 = IMGenerateLoginID();
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195964328();
    }

    IMGetKeychainPassword();
    v10 = v7;

    v7 = v10;
  }

  return v7;
}

- (void)_setKeychainAuthToken:(id)token forUsername:(id)username service:(id)service
{
  serviceCopy = service;
  tokenCopy = token;
  v8 = IMCanonicalFormForEmail();
  IMSetKeychainAuthToken();
}

- (id)_keychainAuthTokenForUsername:(id)username service:(id)service
{
  usernameCopy = username;
  serviceCopy = service;
  v7 = IMCanonicalFormForEmail();
  IMGetKeychainAuthToken();
  v8 = 0;
  if (![v8 length])
  {
    v9 = IMGenerateLoginID();
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195964328();
    }

    IMGetKeychainAuthToken();
    v11 = v8;

    v8 = v11;
  }

  return v8;
}

- (id)_findAccountOfType:(id)type InStore:(id)store withCriteria:(id)criteria
{
  v48 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  storeCopy = store;
  criteriaCopy = criteria;
  v10 = criteriaCopy;
  if (storeCopy)
  {
    if (!typeCopy)
    {
      typeCopy = sub_195956704(criteriaCopy);
    }

    v11 = [storeCopy accountTypeWithAccountTypeIdentifier:typeCopy];
    [storeCopy accountsWithAccountType:v11];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = v11;
      v37 = storeCopy;
      v38 = typeCopy;
      v14 = *v42;
      v15 = v10 + 2;
      v16 = 0x1E69A6000uLL;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          registration = [*(v16 + 312) registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v18;
            _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Account: %@", buf, 0xCu);
          }

          registration2 = [*(v16 + 312) registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
          {
            username = [v18 username];
            *buf = 138412290;
            v46 = username;
            _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "            username: %@", buf, 0xCu);
          }

          registration3 = [*(v16 + 312) registration];
          if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
          {
            v23 = sub_195956E14(v18);
            *buf = 138412290;
            v46 = v23;
            _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "          profile ID: %@", buf, 0xCu);
          }

          registration4 = [*(v16 + 312) registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            v25 = sub_195956FA8(v18);
            sub_195956EDC(v25);
            v40 = v18;
            v26 = v16;
            v27 = v10;
            v28 = v13;
            v29 = v15;
            v31 = v30 = v14;
            *buf = 138412290;
            v46 = v31;
            _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "               token: %@", buf, 0xCu);

            v14 = v30;
            v15 = v29;
            v13 = v28;
            v10 = v27;
            v16 = v26;
            v18 = v40;
          }

          registration5 = [*(v16 + 312) registration];
          if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
          {
            v33 = sub_195957020(v18);
            *buf = 138412290;
            v46 = v33;
            _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "vetted email handles: %@", buf, 0xCu);
          }

          if ((v10)[2](v10, v18))
          {
            v34 = v18;
            goto LABEL_24;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v34 = 0;
LABEL_24:
      storeCopy = v37;
      typeCopy = v38;
      v11 = v36;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_findIDSAccountsInStore:(id)store withCriteria:(id)criteria
{
  v45 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  criteriaCopy = criteria;
  v7 = criteriaCopy;
  if (storeCopy)
  {
    v33 = sub_195956704(criteriaCopy);
    v8 = [storeCopy accountTypeWithAccountTypeIdentifier:?];
    [MEMORY[0x1E695DF70] array];
    v35 = v34 = storeCopy;
    v32 = v8;
    [storeCopy accountsWithAccountType:v8];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v9 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      v12 = v7 + 2;
      v13 = 0x1E69A6000uLL;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          registration = [*(v13 + 312) registration];
          if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v15;
            _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Account: %@", buf, 0xCu);
          }

          registration2 = [*(v13 + 312) registration];
          if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
          {
            username = [v15 username];
            *buf = 138412290;
            v43 = username;
            _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "            username: %@", buf, 0xCu);
          }

          registration3 = [*(v13 + 312) registration];
          if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_195956E14(v15);
            *buf = 138412290;
            v43 = v20;
            _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "          profile ID: %@", buf, 0xCu);
          }

          registration4 = [*(v13 + 312) registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_195956FA8(v15);
            sub_195956EDC(v22);
            v37 = v15;
            v23 = v13;
            v24 = v7;
            v25 = v10;
            v26 = v12;
            v28 = v27 = v11;
            *buf = 138412290;
            v43 = v28;
            _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "               token: %@", buf, 0xCu);

            v11 = v27;
            v12 = v26;
            v10 = v25;
            v7 = v24;
            v13 = v23;
            v15 = v37;
          }

          registration5 = [*(v13 + 312) registration];
          if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
          {
            v30 = sub_195957020(v15);
            *buf = 138412290;
            v43 = v30;
            _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "vetted email handles: %@", buf, 0xCu);
          }

          if ((v7)[2](v7, v15))
          {
            [v35 addObject:v15];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v10);
    }

    storeCopy = v34;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)_findIDSAccountInStore:(id)store withCriteria:(id)criteria
{
  criteriaCopy = criteria;
  storeCopy = store;
  v8 = sub_195956704(storeCopy);
  v9 = [(FTPasswordManager *)self _findAccountOfType:v8 InStore:storeCopy withCriteria:criteriaCopy];

  return v9;
}

- (id)_findGameCenterAccountInStore:(id)store withCriteria:(id)criteria
{
  criteriaCopy = criteria;
  storeCopy = store;
  v8 = sub_195956748(storeCopy);
  v9 = [(FTPasswordManager *)self _findAccountOfType:v8 InStore:storeCopy withCriteria:criteriaCopy];

  return v9;
}

- (id)_accountWithUsername:(id)username inStore:(id)store
{
  usernameCopy = username;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195957800;
  v10[3] = &unk_1E7435680;
  v11 = usernameCopy;
  v7 = usernameCopy;
  v8 = [(FTPasswordManager *)self _findIDSAccountInStore:store withCriteria:v10];

  return v8;
}

- (id)_gameCenterAccountWithUsername:(id)username
{
  usernameCopy = username;
  accountStore = self->_accountStore;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195957A88;
  v9[3] = &unk_1E7435680;
  v10 = usernameCopy;
  v6 = usernameCopy;
  v7 = [(FTPasswordManager *)self _findGameCenterAccountInStore:accountStore withCriteria:v9];

  return v7;
}

- (id)gameCenterPropertiesFromAccountWithUsername:(id)username
{
  v21 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = usernameCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Fetching GS account for username %@", &v19, 0xCu);
  }

  v6 = [(FTPasswordManager *)self _gameCenterAccountWithUsername:usernameCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 valueForKey:@"_properties"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    registration3 = v10;

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = registration3;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Properties on found account: %@", &v19, 0xCu);
    }

    v14 = objc_alloc(MEMORY[0x1E69A5278]);
    v15 = [registration3 objectForKey:*MEMORY[0x1E69A48C8]];
    v16 = [registration3 objectForKey:*MEMORY[0x1E69A48D8]];
    v17 = [registration3 objectForKey:*MEMORY[0x1E69A48D0]];
    v12 = [v14 initWithAssociationID:v15 sharingState:v16 lastUpdatedDate:v17];
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = usernameCopy;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Found no GameCenter account for username %@", &v19, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_accountWithUsernameAlias:(id)alias inStore:(id)store
{
  aliasCopy = alias;
  storeCopy = store;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195957EA4;
  v16[3] = &unk_1E7435680;
  v8 = aliasCopy;
  v17 = v8;
  v9 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v16];
  if (!v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195958084;
    v14[3] = &unk_1E7435680;
    v10 = v8;
    v15 = v10;
    v9 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v14];
    if (!v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_195958104;
      v12[3] = &unk_1E7435680;
      v13 = v10;
      v9 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v12];
    }
  }

  return v9;
}

- (id)_profileIDForUsername:(id)username inStore:(id)store
{
  v4 = [(FTPasswordManager *)self _accountWithUsername:username inStore:store];
  v5 = v4;
  if (v4)
  {
    v6 = sub_195956E14(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accountWithProfileID:(id)d username:(id)username inStore:(id)store
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  storeCopy = store;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = dCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Searching for profileID %@", buf, 0xCu);
  }

  if (!dCopy)
  {
    goto LABEL_17;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_195958560;
  v29[3] = &unk_1E7435680;
  v12 = dCopy;
  v30 = v12;
  v13 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v29];
  if (v13)
  {
    v14 = v13;
    registration5 = v30;
LABEL_20:

    goto LABEL_21;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Didn't find an authenticated account with a DSID; attempting to fall back to an unauthenticated match that has a password", buf, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1959585FC;
  v27[3] = &unk_1E7435680;
  v17 = v12;
  v28 = v17;
  v14 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v27];
  if (!v14)
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Didn't find a DISD match with a password; attempting to fall back to an unauthenticated DISD and username match", buf, 2u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1959586B8;
    v24[3] = &unk_1E74356A8;
    v19 = v17;
    v25 = v19;
    v26 = usernameCopy;
    v14 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v24];
    if (!v14)
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Didn't find an unauthenticated DISD and username match; attempting to fall back to an unauthenticated DSID match", buf, 2u);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_195958754;
      v22[3] = &unk_1E7435680;
      v23 = v19;
      v14 = [(FTPasswordManager *)self _findIDSAccountInStore:storeCopy withCriteria:v22];
    }
  }

  if (!v14)
  {
LABEL_17:
    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Didn't find a DSID match!", buf, 2u);
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_21:

  return v14;
}

- (id)_accountWithProfileIDMatchingUser:(id)user inStore:(id)store
{
  v17 = *MEMORY[0x1E69E9840];
  userCopy = user;
  storeCopy = store;
  v8 = [(FTPasswordManager *)self _profileIDForUsername:userCopy inStore:storeCopy];
  v9 = [(FTPasswordManager *)self _accountWithProfileID:v8 username:userCopy inStore:storeCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = userCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Couldn't match based on any known DSID of %@; attempting to fall back to a username match", &v15, 0xCu);
  }

  v9 = [(FTPasswordManager *)self _accountWithUsername:userCopy inStore:storeCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = userCopy;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Couldn't find a username match for %@; attempting to search aliases of known accounts", &v15, 0xCu);
  }

  v9 = [(FTPasswordManager *)self _accountWithUsernameAlias:userCopy inStore:storeCopy];
  if (v9)
  {
LABEL_8:
    v12 = v9;
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Didn't find any matching account!", &v15, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_accountBasedOnProfileID:(id)d orUsername:(id)username inStore:(id)store
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  storeCopy = store;
  v11 = [(FTPasswordManager *)self _accountWithProfileID:dCopy username:usernameCopy inStore:storeCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = dCopy;
      v19 = 2112;
      v20 = usernameCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Didn't find profileID %@; attempting to use username %@", &v17, 0x16u);
    }

    v13 = [(FTPasswordManager *)self _accountWithProfileIDMatchingUser:usernameCopy inStore:storeCopy];
  }

  v15 = v13;

  return v15;
}

- (void)updatePreviousUsername:(id)username toNewUsername:(id)newUsername
{
  v23 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  newUsernameCopy = newUsername;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = usernameCopy;
    v21 = 2112;
    v22 = newUsernameCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Updating username on accounts { previousUsername: %@, newUsername: %@ }", buf, 0x16u);
  }

  v10 = sub_195956704(v9);
  accountStore = self->_accountStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195958C90;
  v15[3] = &unk_1E7435720;
  v15[4] = self;
  v16 = usernameCopy;
  v17 = newUsernameCopy;
  v18 = v10;
  v12 = v10;
  v13 = newUsernameCopy;
  v14 = usernameCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v12 completion:v15];
}

- (BOOL)_shouldForceSilentOnlyAuthForUsername:(id)username serviceIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    v9 = [identifierCopy isEqualToString:@"com.apple.private.alloy.itunes"];
    v10 = 0;
    if (usernameCopy && v9)
    {
      v10 = ![(FTPasswordManager *)self _usernameHasCorrespondingIdMSAccount:usernameCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    v14 = 138412802;
    v15 = usernameCopy;
    v16 = 2112;
    if (v10)
    {
      v12 = @"YES";
    }

    v17 = v8;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined if we should force silent-only auth { username: %@, serviceIdentifier: %@, shouldForceSilentAuth: %@ }", &v14, 0x20u);
  }

  return v10;
}

- (BOOL)_usernameHasCorrespondingIdMSAccount:(id)account
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = accountCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checking if username has a corresponding IdMS ACAccount instance { username: %@ }", buf, 0xCu);
  }

  accountStore = self->_accountStore;
  if (qword_1EAED7740 != -1)
  {
    sub_195964508();
  }

  v24 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:qword_1EAED7768];
  [(ACAccountStore *)self->_accountStore accountsWithAccountType:?];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        username = [v12 username];
        v14 = [username isEqualToString:accountCopy];

        registration2 = [MEMORY[0x1E69A6138] registration];
        v16 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            identifier = [v12 identifier];
            username2 = [v12 username];
            *buf = 138412546;
            v30 = identifier;
            v31 = 2112;
            v32 = username2;
            _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "IdMS ACAccount instance matches { accountID: %@, accountUsername: %@ }", buf, 0x16u);
          }

          v20 = 1;
          registration3 = v7;
          goto LABEL_21;
        }

        if (v16)
        {
          identifier2 = [v12 identifier];
          username3 = [v12 username];
          *buf = 138412546;
          v30 = identifier2;
          v31 = 2112;
          v32 = username3;
          _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "IdMS ACAccount instance does not match { accountID: %@, accountUsername: %@ }", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  registration3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = accountCopy;
    _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Unable to find a corresponding IdMS ACAccount instance { username: %@ }", buf, 0xCu);
  }

  v20 = 0;
LABEL_21:

  return v20;
}

- (void)performCleanUpWithCompletion:(id)completion
{
  completionCopy = completion;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Performing clean-up on accounts", buf, 2u);
  }

  v7 = sub_195956704(v6);
  accountStore = self->_accountStore;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195959744;
  v11[3] = &unk_1E7435770;
  v12 = v7;
  v13 = completionCopy;
  v11[4] = self;
  v9 = v7;
  v10 = completionCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v9 completion:v11];
}

- (void)cleanUpAccountsWithUsername:(id)username orProfileID:(id)d basedOnInUseUsernames:(id)usernames profileIDs:(id)ds completionBlock:(id)block
{
  v42 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  dCopy = d;
  usernamesCopy = usernames;
  dsCopy = ds;
  blockCopy = block;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v35 = usernameCopy;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2112;
    v39 = usernamesCopy;
    v40 = 2112;
    v41 = dsCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Cleaning up accounts {username: %@, profileID: %@, inUseUsernames: %@, inUseProfileIDs: %@ }", buf, 0x2Au);
  }

  v19 = sub_195956704(v18);
  accountStore = self->_accountStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195959F3C;
  v27[3] = &unk_1E74357C0;
  v27[4] = self;
  v28 = usernameCopy;
  v29 = dCopy;
  v30 = usernamesCopy;
  v32 = v19;
  v33 = blockCopy;
  v31 = dsCopy;
  v21 = v19;
  v22 = blockCopy;
  v23 = dsCopy;
  v24 = usernamesCopy;
  v25 = dCopy;
  v26 = usernameCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v21 completion:v27];
}

- (void)cleanUpAccountsBasedOnInUseUsernamesBlock:(id)block profileIDBlock:(id)dBlock completionBlock:(id)completionBlock
{
  v30 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dBlockCopy = dBlock;
  completionBlockCopy = completionBlock;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8B8CC0](blockCopy);
    v13 = MEMORY[0x19A8B8CC0](dBlockCopy);
    *buf = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Begin cleaning up unused accounts { usernameBlock : %@, profileIDBlock : %@ }", buf, 0x16u);
  }

  v15 = sub_195956704(v14);
  accountStore = self->_accountStore;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_19595A930;
  v21[3] = &unk_1E7435810;
  v23 = blockCopy;
  v24 = dBlockCopy;
  v25 = completionBlockCopy;
  v21[4] = self;
  v22 = v15;
  v17 = v15;
  v18 = completionBlockCopy;
  v19 = dBlockCopy;
  v20 = blockCopy;
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v17 completion:v21];
}

- (void)fetchPasswordForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block
{
  v53 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v46 = _os_activity_create(&dword_195925000, "Password manager fetch password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v46, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v48 = dCopy;
    v49 = 2112;
    v50 = usernameCopy;
    v51 = 2112;
    v52 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Fetching password for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v43 = [blockCopy copy];
  v16 = sub_19595B9DC(serviceCopy);

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = self->_runningQueries;
    self->_runningQueries = v19;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v21 = stringGUID;
    *iD = stringGUID;
  }

  if ([v16 isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    v22 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v22)
    {
      v41 = [(FTPasswordManager *)self _credentialForAccount:v22];
      v23 = sub_195956E14(v22);
      v24 = sub_19595BAB4(v22);
      password = [(__CFString *)v41 password];
      sub_19595BB78(v22);
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v22;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Found account: %@", buf, 0xCu);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v41;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "  Credential: %@", buf, 0xCu);
      }

      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        accountType = [(__CFString *)v22 accountType];
        identifier = [accountType identifier];
        *buf = 138412290;
        v48 = identifier;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "         => Type: %@", buf, 0xCu);
      }

      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
      {
        username = [(__CFString *)v22 username];
        *buf = 138412290;
        v48 = username;
        _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "     => Username: %@", buf, 0xCu);
      }

      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        password2 = [(__CFString *)v41 password];
        v34 = @"YES";
        if (!password2)
        {
          v34 = @"NO";
        }

        *buf = 138412290;
        v48 = v34;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "     => Password: %@", buf, 0xCu);
      }

      registration7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
      {
        token = [(__CFString *)v41 token];
        v37 = sub_195956EDC(token);
        *buf = 138412290;
        v48 = v37;
        _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
      }

      registration8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v23;
        _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
      }

      registration9 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v24;
        _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
      }
    }

    else
    {
      registration10 = [MEMORY[0x1E69A6138] registration];
      v41 = registration10;
      if (os_log_type_enabled(registration10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration10, OS_LOG_TYPE_DEFAULT, "Did not find an account to use! No password fetched.", buf, 2u);
      }

      password = 0;
      v24 = 0;
      v23 = 0;
    }
  }

  else
  {
    password = [(FTPasswordManager *)self _keychainPasswordForUsername:usernameCopy service:v16];
    v24 = 0;
    v23 = 0;
  }

  if ([(NSMutableSet *)self->_runningQueries containsObject:stringGUID])
  {
    if (v43)
    {
      (v43)[2](v43, stringGUID, usernameCopy, v16, v23, v24, password, 0, 0);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)fetchAuthTokenForProfileID:(id)d username:(id)username service:(id)service outRequestID:(id *)iD completionBlock:(id)block
{
  v73 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v66 = _os_activity_create(&dword_195925000, "Password manager fetch auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v66, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v68 = dCopy;
    v69 = 2112;
    v70 = usernameCopy;
    v71 = 2112;
    v72 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Fetching auth token for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v60 = [blockCopy copy];
  v61 = sub_19595B9DC(serviceCopy);

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = self->_runningQueries;
    self->_runningQueries = v17;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v19 = stringGUID;
    *iD = stringGUID;
  }

  p_cachedAuthTokenInfo = &self->_cachedAuthTokenInfo;
  cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
  if (cachedAuthTokenInfo && (-[_FTPasswordManagerCachedAuthTokenInfo profileID](cachedAuthTokenInfo, "profileID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToIgnoringCase:dCopy], v22, v23))
  {
    profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo profileID];
    selfID = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo selfID];
    token = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo token];
    alertInfo = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo alertInfo];
    status = [(_FTPasswordManagerCachedAuthTokenInfo *)*p_cachedAuthTokenInfo status];
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *p_cachedAuthTokenInfo;
      *buf = 138412290;
      v68 = v28;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Found cached account info: %@", buf, 0xCu);
    }

    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_195956EDC(token);
      *buf = 138412290;
      v68 = v30;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
    }

    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = profileID;
      _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
    }

    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = selfID;
      _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
    }
  }

  else
  {
    if (![v61 isEqualToString:*MEMORY[0x1E69A50B0]])
    {
      token = [(FTPasswordManager *)self _keychainAuthTokenForUsername:usernameCopy service:v61];
      status = 0;
      alertInfo = 0;
      selfID = 0;
      profileID = 0;
      goto LABEL_53;
    }

    registration5 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (registration5)
    {
      v57 = [(FTPasswordManager *)self _credentialForAccount:registration5];
      profileID = sub_195956E14(registration5);
      selfID = sub_19595BAB4(registration5);
      token = [v57 token];
      accountProperties = [registration5 accountProperties];
      v56 = [accountProperties objectForKey:*MEMORY[0x1E69A48F0]];

      if ([v56 integerValue] == 5100 || objc_msgSend(v56, "integerValue") == 5103)
      {
        status = v56;
        accountProperties2 = [registration5 accountProperties];
        v35 = [accountProperties2 objectForKey:@"alert"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          alertInfo = v35;
        }

        else
        {
          alertInfo = 0;
        }
      }

      else
      {
        status = 0;
        alertInfo = 0;
      }

      v37 = objc_alloc_init(_FTPasswordManagerCachedAuthTokenInfo);
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setProfileID:profileID];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setSelfID:selfID];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setToken:token];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setAlertInfo:alertInfo];
      [(_FTPasswordManagerCachedAuthTokenInfo *)v37 setStatus:status];
      objc_storeStrong(&self->_cachedAuthTokenInfo, v37);
      sub_19595BB78(registration5);
      accountStore = self->_accountStore;
      v64 = 0;
      [(ACAccountStore *)accountStore registerSynchronouslyWithError:&v64];
      v55 = v64;
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v55;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "  Monitor error: %@", buf, 0xCu);
      }

      registration7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = registration5;
        _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "  Found account: %@", buf, 0xCu);
      }

      registration8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v57;
        _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "  Credential: %@", buf, 0xCu);
      }

      registration9 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
      {
        accountType = [registration5 accountType];
        identifier = [accountType identifier];
        *buf = 138412290;
        v68 = identifier;
        _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "         => Type: %@", buf, 0xCu);
      }

      registration10 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration10, OS_LOG_TYPE_DEFAULT))
      {
        username = [registration5 username];
        *buf = 138412290;
        v68 = username;
        _os_log_impl(&dword_195925000, registration10, OS_LOG_TYPE_DEFAULT, "     => Username: %@", buf, 0xCu);
      }

      registration11 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration11, OS_LOG_TYPE_DEFAULT))
      {
        password = [v57 password];
        v49 = @"YES";
        if (!password)
        {
          v49 = @"NO";
        }

        *buf = 138412290;
        v68 = v49;
        _os_log_impl(&dword_195925000, registration11, OS_LOG_TYPE_DEFAULT, "     => Password: %@", buf, 0xCu);
      }

      registration12 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration12, OS_LOG_TYPE_DEFAULT))
      {
        token2 = [v57 token];
        v52 = sub_195956EDC(token2);
        *buf = 138412290;
        v68 = v52;
        _os_log_impl(&dword_195925000, registration12, OS_LOG_TYPE_DEFAULT, "   => Auth Token: %@", buf, 0xCu);
      }

      registration13 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = profileID;
        _os_log_impl(&dword_195925000, registration13, OS_LOG_TYPE_DEFAULT, "   => Profile ID: %@", buf, 0xCu);
      }

      registration14 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = selfID;
        _os_log_impl(&dword_195925000, registration14, OS_LOG_TYPE_DEFAULT, "      => Self ID: %@", buf, 0xCu);
      }
    }

    else
    {
      registration15 = [MEMORY[0x1E69A6138] registration];
      v57 = registration15;
      if (os_log_type_enabled(registration15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration15, OS_LOG_TYPE_DEFAULT, "Did not find an account to use! No auth token fetched.", buf, 2u);
      }

      status = 0;
      alertInfo = 0;
      token = 0;
      profileID = 0;
      selfID = 0;
    }
  }

LABEL_53:
  if ([(NSMutableSet *)self->_runningQueries containsObject:stringGUID])
  {
    if (v60)
    {
      (v60)[2](v60, stringGUID, usernameCopy, v61, profileID, selfID, token, alertInfo, status);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_credentialForAccount:(id)account
{
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    v9 = v5;
    v10 = v7;

    accountStore = self->_accountStore;
    v14 = 0;
    v5 = [(ACAccountStore *)accountStore credentialForAccount:accountCopy error:&v14];
    v6 = v14;

    if (!v6)
    {
      break;
    }

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v16 = accountCopy;
      v17 = 2112;
      v18 = v6;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = 2;
      _os_log_error_impl(&dword_195925000, registration, OS_LOG_TYPE_ERROR, "Credential for account: %@  failed with error: %@ {attemptCount: %d, kAttemptLimit: %d}", buf, 0x22u);
    }

    v7 = 0;
    v8 = 2;
  }

  while ((v10 & 1) != 0);

  return v5;
}

- (void)requestPasswordForUsername:(id)username service:(id)service badPassword:(BOOL)password showForgotPassword:(BOOL)forgotPassword shouldRememberPassword:(BOOL)rememberPassword outRequestID:(id *)d completionBlock:(id)block
{
  rememberPasswordCopy = rememberPassword;
  forgotPasswordCopy = forgotPassword;
  passwordCopy = password;
  v43 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v38 = _os_activity_create(&dword_195925000, "Password manager request password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v38, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = usernameCopy;
    v41 = 2112;
    v42 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Requesting password for username: %@  service: %@", buf, 0x16u);
  }

  v19 = [blockCopy copy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23 = self->_runningQueries;
    self->_runningQueries = v22;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (d)
  {
    v24 = stringGUID;
    *d = stringGUID;
  }

  v25 = [FTPasswordManager _loginUserNotificationForService:serviceCopy user:usernameCopy isForBadPassword:passwordCopy showForgetPassword:forgotPasswordCopy shouldRememberPassword:rememberPasswordCopy];
  objc_initWeak(buf, self);
  userNotificationCenter = self->_userNotificationCenter;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_19595CB9C;
  v31[3] = &unk_1E7435838;
  objc_copyWeak(&v36, buf);
  v27 = stringGUID;
  v32 = v27;
  v28 = usernameCopy;
  v33 = v28;
  v29 = serviceCopy;
  v34 = v29;
  v30 = v19;
  v35 = v30;
  [(IMUserNotificationCenter *)userNotificationCenter addUserNotification:v25 listener:0 completionHandler:v31];

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)requestAuthTokenForProfileID:(id)d username:(id)username service:(id)service badPassword:(BOOL)password showForgotPassword:(BOOL)forgotPassword forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent outRequestID:(id *)self0 completionBlock:(id)self1
{
  renewalCopy = renewal;
  v99 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v90 = _os_activity_create(&dword_195925000, "Password manager request auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v90, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  v61 = renewalCopy;
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413058;
    v92 = dCopy;
    if (silent)
    {
      v20 = @"YES";
    }

    v93 = 2112;
    v94 = usernameCopy;
    v95 = 2112;
    v96 = serviceCopy;
    v97 = 2112;
    v98 = v20;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Requesting auth token for profileID: %@ username: %@ service: %@ failIfNotSilent: %@", buf, 0x2Au);
  }

  v65 = _UIStringForIDSRegistrationServiceType();
  v21 = [blockCopy copy];

  v22 = serviceCopy;
  v23 = sub_19595B9DC(v22);
  v64 = v22;

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v27 = self->_runningQueries;
    self->_runningQueries = v26;

    runningQueries = self->_runningQueries;
  }

  v28 = [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v28 = stringGUID;
    *iD = stringGUID;
  }

  accountStore = self->_accountStore;
  v30 = sub_195956704(v28);
  v63 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v30];

  v31 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
  if (!v31)
  {
    v31 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
    _stripFZIDPrefix = [(__CFString *)usernameCopy _stripFZIDPrefix];
    [(__CFString *)v31 setUsername:_stripFZIDPrefix];

    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v31;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "No account found, created new account: %@", buf, 0xCu);
    }

    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Adding and saving account", buf, 2u);
    }

    v35 = self->_accountStore;
    v88 = 0;
    v36 = [(ACAccountStore *)v35 saveVerifiedAccount:v31 error:&v88];
    v37 = v88;
    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
    {
      v39 = @"NO";
      if (v36)
      {
        v39 = @"YES";
      }

      *buf = 138412546;
      v92 = v39;
      v93 = 2112;
      v94 = v37;
      _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v37)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }
  }

  sub_19595BB78(v31);
  if (self->_cachedAuthTokenInfo)
  {
    v41 = sub_195956E14(v31);
    profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
    v43 = [v41 isEqualToIgnoringCase:profileID];
  }

  else
  {
    v43 = 0;
  }

  registration5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
  {
    v45 = @"NO";
    if (v43)
    {
      v45 = @"YES";
    }

    *buf = 138412546;
    v92 = v45;
    v93 = 2112;
    v94 = v31;
    _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Getting new auth token {shouldClearAccountCache: %@, account: %@}", buf, 0x16u);
  }

  v60 = [(FTPasswordManager *)self _credentialForAccount:v31];
  password = [v60 password];
  v47 = [password length] == 0;

  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_19595D74C;
  v85[3] = &unk_1E7435860;
  v87 = v43;
  v85[4] = self;
  v59 = v21;
  v86 = v59;
  v48 = MEMORY[0x19A8B8CC0](v85);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_19595D890;
  v77[3] = &unk_1E74358D8;
  v49 = dCopy;
  v78 = v49;
  v50 = v31;
  v79 = v50;
  v51 = usernameCopy;
  v80 = v51;
  v52 = v23;
  v81 = v52;
  selfCopy = self;
  v53 = stringGUID;
  v83 = v53;
  v54 = v48;
  v84 = v54;
  v55 = MEMORY[0x19A8B8CC0](v77);
  v56 = v55;
  if (v47 || v61)
  {
    [(FTPasswordManager *)self _renewCredentialsIfPossibleForAccount:v50 username:v51 inServiceIdentifier:v52 originalInServiceIdentifier:v64 serviceName:v65 failIfNotSilent:silent renewHandler:v55 shortCircuitCompletionBlock:v54];
  }

  else
  {
    v62 = [v55 copy];

    registration6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v50;
      _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Requesting verification for account: %@", buf, 0xCu);
    }

    v58 = self->_accountStore;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = sub_19595DF0C;
    v66[3] = &unk_1E7435978;
    v67 = v51;
    v68 = v52;
    v69 = v50;
    selfCopy2 = self;
    v71 = v53;
    v74 = v54;
    v72 = v65;
    v73 = v64;
    silentCopy = silent;
    v56 = v62;
    v75 = v56;
    [(ACAccountStore *)v58 verifyCredentialsForAccount:v69 withHandler:v66];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_renewCredentialsIfPossibleForAccount:(id)account username:(id)username inServiceIdentifier:(id)identifier originalInServiceIdentifier:(id)serviceIdentifier serviceName:(id)name failIfNotSilent:(BOOL)silent renewHandler:(id)handler shortCircuitCompletionBlock:(id)self0
{
  v40 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  usernameCopy = username;
  identifierCopy = identifier;
  serviceIdentifierCopy = serviceIdentifier;
  nameCopy = name;
  handlerCopy = handler;
  blockCopy = block;
  v20 = [accountCopy accountPropertyForKey:*MEMORY[0x1E69A48F0]];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    accountProperties = [accountCopy accountProperties];
    *buf = 138412802;
    v35 = accountCopy;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = accountProperties;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checking the current status of the account {foundAccount: %@, status: %@, properties: %@}", buf, 0x20u);
  }

  if (v20 && ([v20 integerValue] == 5100 || objc_msgSend(v20, "integerValue") == 5103))
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Not requesting renewal for a Managed AppleID account", buf, 2u);
    }

    v24 = usernameCopy;
    if (blockCopy)
    {
      BYTE2(v30) = 0;
      LOWORD(v30) = 256;
      (*(blockCopy + 2))(blockCopy, 0, usernameCopy, identifierCopy, 0, 0, 0, 0, v20, v30);
    }
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = accountCopy;
      v36 = 2112;
      v37 = nameCopy;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Requesting renewal for account: %@  service: %@", buf, 0x16u);
    }

    if (silent)
    {
      v26 = 1;
    }

    else
    {
      username = [accountCopy username];
      v26 = [(FTPasswordManager *)self _shouldForceSilentOnlyAuthForUsername:username serviceIdentifier:serviceIdentifierCopy];
    }

    username2 = [accountCopy username];
    v29 = [(FTPasswordManager *)self _accountOptionsDictForRenewCredentialsForService:nameCopy username:username2 shouldFailIfNotSilent:v26];

    IDSAuthenticationDelegateUpdateTimeOfLastRequestPost();
    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:accountCopy options:v29 completion:handlerCopy];

    v24 = usernameCopy;
  }
}

- (void)setPasswordForProfileID:(id)d username:(id)username service:(id)service password:(id)password outRequestID:(id *)iD completionBlock:(id)block
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  passwordCopy = password;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v48 = _os_activity_create(&dword_195925000, "Password manager set password", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v48, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v50 = dCopy;
    v51 = 2112;
    v52 = usernameCopy;
    v53 = 2112;
    v54 = serviceCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting password for profileID: %@ username: %@ service: %@", buf, 0x20u);
  }

  v18 = sub_19595B9DC(serviceCopy);

  v19 = [blockCopy copy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23 = self->_runningQueries;
    self->_runningQueries = v22;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v24 = stringGUID;
    *iD = stringGUID;
  }

  v25 = [v18 isEqualToString:*MEMORY[0x1E69A50B0]];
  if (v25)
  {
    accountStore = self->_accountStore;
    v27 = sub_195956704(v25);
    v43 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v27];

    v28 = [(FTPasswordManager *)self _accountWithUsername:usernameCopy inStore:self->_accountStore];
    if (v28)
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v50 = v28;
      v30 = "Using account: %@";
    }

    else
    {
      v28 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v28 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v50 = v28;
      v30 = "No account found, created new account: %@";
    }

    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
LABEL_16:

    v32 = [(FTPasswordManager *)self _credentialForAccount:v28];
    sub_19595BB78(v28);
    if (v32)
    {
      [(__CFString *)v32 setPassword:passwordCopy];
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v32;
        v34 = "Updated credential: %@";
LABEL_21:
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
      }
    }

    else
    {
      v32 = [MEMORY[0x19A8B8550](@"ACAccountCredential" @"Accounts")];
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v32;
        v34 = "Creating credential: %@";
        goto LABEL_21;
      }
    }

    registration4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEBUG))
    {
      sub_195964A34();
    }

    [(__CFString *)v28 setCredential:v32];
    [(__CFString *)v28 setAccountProperty:0 forKey:*MEMORY[0x1E69A48F0]];
    registration5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Saving account", buf, 2u);
    }

    v37 = self->_accountStore;
    v46 = 0;
    v38 = [(ACAccountStore *)v37 saveVerifiedAccount:v28 error:&v46];
    v39 = v46;
    registration6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
    {
      v41 = @"NO";
      if (v38)
      {
        v41 = @"YES";
      }

      *buf = 138412546;
      v50 = v41;
      v51 = 2112;
      v52 = v39;
      _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v39)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }

    if (v19)
    {
      (v19)[2](v19, stringGUID, usernameCopy, v18, v38);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];

    goto LABEL_37;
  }

  [(FTPasswordManager *)self _setKeychainPassword:passwordCopy forUsername:usernameCopy service:v18];
  if (v19)
  {
    (v19)[2](v19, stringGUID, usernameCopy, v18, 1);
  }

LABEL_37:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (BOOL)isAuthTokenReceiptTime:(double)time withinGracePeriod:(double)period
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = v6 - time;
  v9 = v6 - time < period && v6 > time;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v13 = 138413314;
    if (v9)
    {
      v11 = @"YES";
    }

    v14 = v11;
    v15 = 2048;
    timeCopy = time;
    v17 = 2048;
    periodCopy = period;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Checked auth token receipt date against grace period {isAuthTokenWithinGracePeriod: %@, authTokenReceiptTime: %f, gracePeriod: %f, now: %f, delta: %f}", &v13, 0x34u);
  }

  return v9;
}

- (double)authTokenGracePeriod
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ds-session-token-grace-period"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 6.0;
  }

  return v5;
}

- (void)removeAuthTokenAllowingGracePeriodForProfileID:(id)d username:(id)username
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = dCopy;
    v36 = 2112;
    v37 = usernameCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Removing auth token using grace period for profileID: %@ username: %@", buf, 0x16u);
  }

  v9 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
  registration2 = [MEMORY[0x1E69A6138] registration];
  v11 = os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Using account: %@", buf, 0xCu);
    }

    v12 = [v9 accountPropertyForKey:*MEMORY[0x1E69A4910]];
    registration2 = v12;
    if (v12 && ([v12 doubleValue], v14 = v13, [(FTPasswordManager *)self authTokenGracePeriod], [(FTPasswordManager *)self isAuthTokenReceiptTime:v14 withinGracePeriod:v15]))
    {
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = registration2;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Auth token receipt date falls within grace period -- skipping removal {authTokenReceiptTime: %@}", buf, 0xCu);
      }
    }

    else
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = registration2;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Auth token receipt date falls outside of grace period -- removing auth token {authTokenReceiptTime: %@}", buf, 0xCu);
      }

      v18 = [(FTPasswordManager *)self _credentialForAccount:v9];
      if (!v18)
      {
        v18 = objc_alloc_init(MEMORY[0x19A8B8550](@"ACAccountCredential", @"Accounts"));
      }

      registration3 = v18;
      [v18 setToken:0];
      if (self->_cachedAuthTokenInfo)
      {
        v19 = sub_195956E14(v9);
        profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
        v21 = [v19 isEqualToIgnoringCase:profileID];

        if (v21)
        {
          cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
          self->_cachedAuthTokenInfo = 0;
        }
      }

      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = registration3;
        _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Updating credential %@", buf, 0xCu);
      }

      [v9 setCredential:registration3];
      [v9 setAuthenticated:0];
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v9;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
      }

      registration7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
      {
        if ([v9 isAuthenticated])
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *buf = 138412290;
        v35 = v26;
        _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "      Authenticated: %@", buf, 0xCu);
      }

      accountStore = self->_accountStore;
      v33 = 0;
      v28 = [(ACAccountStore *)accountStore saveVerifiedAccount:v9 error:&v33];
      v29 = v33;
      registration8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
      {
        v31 = @"YES";
        if (!v28)
        {
          v31 = @"NO";
        }

        *buf = 138412546;
        v35 = v31;
        v36 = 2112;
        v37 = v29;
        _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
      }

      if (v29)
      {
        warning = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
        {
          sub_195964628();
        }
      }
    }
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "No account found for auth token removal -- ignoring request", buf, 2u);
  }
}

- (void)setAuthTokenForProfileID:(id)d username:(id)username service:(id)service authToken:(id)token selfHandle:(id)handle accountStatus:(id)status outRequestID:(id *)iD completionBlock:(id)self0
{
  v75 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  tokenCopy = token;
  handleCopy = handle;
  statusCopy = status;
  blockCopy = block;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v66 = _os_activity_create(&dword_195925000, "Password manager set auth token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v66, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v68 = dCopy;
    v69 = 2112;
    v70 = usernameCopy;
    v71 = 2112;
    v72 = serviceCopy;
    v73 = 2112;
    v74 = tokenCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting auth token for profileID: %@ username: %@ service: %@  (%@)", buf, 0x2Au);
  }

  v20 = sub_19595B9DC(serviceCopy);

  v21 = [blockCopy copy];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  runningQueries = self->_runningQueries;
  if (!runningQueries)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = self->_runningQueries;
    self->_runningQueries = v24;

    runningQueries = self->_runningQueries;
  }

  [(NSMutableSet *)runningQueries addObject:stringGUID];
  if (iD)
  {
    v26 = stringGUID;
    *iD = stringGUID;
  }

  v27 = [v20 isEqualToString:*MEMORY[0x1E69A50B0]];
  if (v27)
  {
    accountStore = self->_accountStore;
    v29 = sub_195956704(v27);
    v59 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v29];

    v30 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v30)
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v30;
        v32 = "Using account: %@";
LABEL_15:
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
      }
    }

    else
    {
      v30 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v30 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v30;
        v32 = "No account found, created new account: %@";
        goto LABEL_15;
      }
    }

    sub_19595BB78(v30);
    v34 = [(FTPasswordManager *)self _credentialForAccount:v30];
    v35 = v34;
    if (v34)
    {
      [(__CFString *)v34 setToken:tokenCopy];
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x19A8B8550](@"ACAccountCredential", @"Accounts"));
      [(__CFString *)v35 setToken:tokenCopy];
    }

    [(FTPasswordManager *)self _updateStatus:statusCopy onAccount:v30];
    if (self->_cachedAuthTokenInfo)
    {
      v36 = sub_195956E14(v30);
      profileID = [(_FTPasswordManagerCachedAuthTokenInfo *)self->_cachedAuthTokenInfo profileID];
      v38 = [v36 isEqualToIgnoringCase:profileID];

      if (v38)
      {
        cachedAuthTokenInfo = self->_cachedAuthTokenInfo;
        self->_cachedAuthTokenInfo = 0;
      }
    }

    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v35;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Updating credential %@", buf, 0xCu);
    }

    v41 = [tokenCopy length];
    [(__CFString *)v30 setCredential:v35];
    [(__CFString *)v30 setAuthenticated:v41 != 0];
    if (v41)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v43 = v42;
      v44 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(__CFString *)v30 setAccountProperty:v44 forKey:*MEMORY[0x1E69A4910]];

      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v68 = v43;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Updated auth token receipt time {receiptTime: %f}", buf, 0xCu);
      }
    }

    if ([(__CFString *)dCopy length])
    {
      v46 = sub_195956E14(v30);
      if (([v46 isEqualToIgnoringCase:dCopy] & 1) == 0)
      {
        registration5 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = dCopy;
          _os_log_impl(&dword_195925000, registration5, OS_LOG_TYPE_DEFAULT, "Setting profile ID on account: %@", buf, 0xCu);
        }

        [(__CFString *)v30 setAccountProperty:dCopy forKey:@"profile-id"];
      }
    }

    if ([(__CFString *)handleCopy length])
    {
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = handleCopy;
        _os_log_impl(&dword_195925000, registration6, OS_LOG_TYPE_DEFAULT, "Setting self handle on account: %@", buf, 0xCu);
      }

      [(__CFString *)v30 setAccountProperty:handleCopy forKey:@"self-handle"];
    }

    registration7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v30;
      _os_log_impl(&dword_195925000, registration7, OS_LOG_TYPE_DEFAULT, "Saving account: %@", buf, 0xCu);
    }

    registration8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration8, OS_LOG_TYPE_DEFAULT))
    {
      isAuthenticated = [(__CFString *)v30 isAuthenticated];
      v52 = @"NO";
      if (isAuthenticated)
      {
        v52 = @"YES";
      }

      *buf = 138412290;
      v68 = v52;
      _os_log_impl(&dword_195925000, registration8, OS_LOG_TYPE_DEFAULT, "      Authenticated: %@", buf, 0xCu);
    }

    v53 = self->_accountStore;
    v64 = 0;
    v54 = [(ACAccountStore *)v53 saveVerifiedAccount:v30 error:&v64];
    v55 = v64;
    registration9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration9, OS_LOG_TYPE_DEFAULT))
    {
      v57 = @"NO";
      if (v54)
      {
        v57 = @"YES";
      }

      *buf = 138412546;
      v68 = v57;
      v69 = 2112;
      v70 = v55;
      _os_log_impl(&dword_195925000, registration9, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v55)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }

    if (v21)
    {
      (v21)[2](v21, stringGUID, usernameCopy, v20, v54);
    }

    [(NSMutableSet *)self->_runningQueries removeObject:stringGUID];

    goto LABEL_55;
  }

  [(FTPasswordManager *)self _setKeychainAuthToken:tokenCopy forUsername:usernameCopy service:v20];
  if (v21)
  {
    (v21)[2](v21, stringGUID, usernameCopy, v20, 1);
  }

LABEL_55:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_updateStatus:(id)status onAccount:(id)account
{
  statusCopy = status;
  accountCopy = account;
  if (statusCopy)
  {
    integerValue = [statusCopy integerValue];
    if (integerValue == 5103 || integerValue == 5100)
    {
      v7 = *MEMORY[0x1E69A48F0];
      v8 = accountCopy;
      v9 = statusCopy;
    }

    else
    {
      if (integerValue)
      {
        goto LABEL_8;
      }

      [accountCopy setAccountProperty:0 forKey:*MEMORY[0x1E69A48F0]];
      v7 = *MEMORY[0x1E69A48E0];
      v8 = accountCopy;
      v9 = 0;
    }

    [v8 setAccountProperty:v9 forKey:v7];
  }

LABEL_8:
}

- (void)setAccountStatus:(id)status forProfileID:(id)d username:(id)username service:(id)service
{
  v40 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = dCopy;
    v34 = 2112;
    v35 = usernameCopy;
    v36 = 2112;
    v37 = serviceCopy;
    v38 = 2112;
    v39 = statusCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting account status {profileID: %@, username: %@, service: %@, accountStatus: %@}", buf, 0x2Au);
  }

  v15 = sub_19595B9DC(serviceCopy);

  v16 = [v15 isEqualToString:*MEMORY[0x1E69A50B0]];
  if (v16)
  {
    accountStore = self->_accountStore;
    v18 = sub_195956704(v16);
    v19 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v18];

    v20 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v20)
    {
      v21 = v20;
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v21;
        v23 = "Using account: %@";
LABEL_9:
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v21 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v21;
        v23 = "No account found, created new account: %@";
        goto LABEL_9;
      }
    }

    sub_19595BB78(v21);
    [(FTPasswordManager *)self _updateStatus:statusCopy onAccount:v21];
    v25 = self->_accountStore;
    v31 = 0;
    v26 = [(ACAccountStore *)v25 saveVerifiedAccount:v21 error:&v31];
    v27 = v31;
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"NO";
      if (v26)
      {
        v29 = @"YES";
      }

      *buf = 138412546;
      v33 = v29;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v27)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
      {
        sub_195964A9C();
      }
    }
  }
}

- (void)setHandlesForProfileID:(id)d username:(id)username service:(id)service handles:(id)handles
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  usernameCopy = username;
  serviceCopy = service;
  handlesCopy = handles;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = dCopy;
    v34 = 2112;
    v35 = usernameCopy;
    v36 = 2112;
    v37 = serviceCopy;
    v38 = 2112;
    v39 = handlesCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Setting handles dictionary for profileID: %@ username: %@ service: %@  (%@)", buf, 0x2Au);
  }

  v15 = sub_19595B9DC(serviceCopy);

  v16 = [v15 isEqualToString:*MEMORY[0x1E69A50B0]];
  if (v16)
  {
    accountStore = self->_accountStore;
    v18 = sub_195956704(v16);
    v19 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v18];

    v20 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:self->_accountStore];
    if (v20)
    {
      v21 = v20;
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v21;
        v23 = "Using account: %@";
LABEL_9:
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x19A8B8550](@"ACAccount" @"Accounts"))];
      _stripFZIDPrefix = [usernameCopy _stripFZIDPrefix];
      [(__CFString *)v21 setUsername:_stripFZIDPrefix];

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v21;
        v23 = "No account found, created new account: %@";
        goto LABEL_9;
      }
    }

    sub_19595BB78(v21);
    [(__CFString *)v21 setAccountProperty:handlesCopy forKey:@"handles"];
    v25 = self->_accountStore;
    v31 = 0;
    v26 = [(ACAccountStore *)v25 saveVerifiedAccount:v21 error:&v31];
    v27 = v31;
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"NO";
      if (v26)
      {
        v29 = @"YES";
      }

      *buf = 138412546;
      v33 = v29;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", buf, 0x16u);
    }

    if (v27)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195964628();
      }
    }
  }
}

- (id)_accountOptionsDictForRenewCredentialsForService:(id)service username:(id)username shouldFailIfNotSilent:(BOOL)silent
{
  silentCopy = silent;
  v30 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v8 = MEMORY[0x1E696AAE8];
  usernameCopy = username;
  v10 = [v8 bundleForClass:objc_opt_class()];
  if ([serviceCopy isEqualToString:@"iMessage"])
  {
    v11 = *MEMORY[0x1E69A6540];
    v12 = @"iMessage";
    v13 = 4;
    goto LABEL_6;
  }

  if (([serviceCopy isEqualToIgnoringCase:@"FaceTime"] & 1) != 0 || objc_msgSend(serviceCopy, "isEqualToIgnoringCase:", @"Calling"))
  {
    v11 = *MEMORY[0x1E69A61B8];
    v12 = @"FaceTime";
    v13 = 5;
    goto LABEL_6;
  }

  if ([serviceCopy isEqualToString:@"iTunes"])
  {
    v13 = 2;
  }

  else
  {
    v12 = @"iCloud";
    v13 = 1;
    if ([serviceCopy isEqualToString:@"iCloud"])
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  v11 = 0;
  v12 = @"account services";
LABEL_6:
  v14 = MEMORY[0x1E69A60B8];
  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  model = [mEMORY[0x1E69A60B8] model];
  v17 = [v14 marketingNameForModel:model];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enter the password for your Apple Account to continue using %@ on this %@:\n%%@", v12, v17];
  v19 = IMLocalizedStringFromTableInBundle();
  usernameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v19, usernameCopy];

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (qword_1EAED7720 != -1)
  {
    sub_195964B14();
  }

  CFDictionarySetValue(v21, qword_1EAED7748, MEMORY[0x1E695E118]);
  v22 = usernameCopy;
  if (v22)
  {
    if (qword_1EAED7728 != -1)
    {
      sub_195964B28();
    }

    CFDictionarySetValue(v21, qword_1EAED7750, v22);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  if (v23)
  {
    if (qword_1EAED7738 != -1)
    {
      sub_195964B3C();
    }

    CFDictionarySetValue(v21, qword_1EAED7760, v23);
  }

  v24 = v11;
  if (v24)
  {
    if (qword_1EAED7730 != -1)
    {
      sub_195964B50();
    }

    CFDictionarySetValue(v21, qword_1EAED7758, v24);
  }

  if (silentCopy)
  {
    if (qword_1EAED7848 != -1)
    {
      sub_195964B64();
    }

    v25 = qword_1EAED7850;
  }

  else
  {
    v25 = @"AARenewShouldPostFollowUp";
  }

  CFDictionarySetValue(v21, v25, MEMORY[0x1E695E118]);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v21;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Verification Options Dictionary Contains: %@", buf, 0xCu);
  }

  return v21;
}

- (void)cancelRequestID:(id)d serviceIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  if (dCopy)
  {
    [(NSMutableSet *)self->_runningQueries removeObject:dCopy];
    if (![(NSMutableSet *)self->_runningQueries count])
    {
      runningQueries = self->_runningQueries;
      self->_runningQueries = 0;
    }
  }

  if (identifierCopy)
  {
    mEMORY[0x1E69A6190] = [MEMORY[0x1E69A6190] sharedInstance];
    [mEMORY[0x1E69A6190] removeNotificationsForServiceIdentifier:identifierCopy];
  }
}

+ (id)_loginUserNotificationForService:(id)service user:(id)user isForBadPassword:(BOOL)password showForgetPassword:(BOOL)forgetPassword shouldRememberPassword:(BOOL)rememberPassword
{
  passwordCopy = password;
  serviceCopy = service;
  userCopy = user;
  if ([serviceCopy isEqualToString:*MEMORY[0x1E69A50B0]])
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = IMLocalizedStringFromTableInBundle();

    serviceCopy = v11;
  }

  stringByRemovingWhitespace = [userCopy stringByRemovingWhitespace];
  v13 = [stringByRemovingWhitespace length];

  if (qword_1EAED7858 != -1)
  {
    sub_195964B78();
  }

  v14 = qword_1EAED7860;
  if (v13)
  {
    v15 = IMLocalizedStringFromTableInBundle();
    v16 = IMLocalizedStringFromTableInBundle();
    v17 = IMLocalizedStringFromTableInBundle();
    v18 = IMLocalizedStringFromTableInBundle();

    serviceCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v15, serviceCopy];
    v20 = userCopy;
    if (!userCopy)
    {
      v20 = serviceCopy;
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v20];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&stru_1F09C7808, 0}];
    v23 = v16;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v16, 0}];
    v39 = v18;
    v47 = v17;
    v38 = v17;
    v25 = v18;
    v26 = v21;
    v46 = serviceCopy;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{serviceCopy, *MEMORY[0x1E69A60A8], v21, *MEMORY[0x1E69A6088], v22, *MEMORY[0x1E69A60A0], v24, *MEMORY[0x1E69A6098], v38, *MEMORY[0x1E69A6078], v39, *MEMORY[0x1E69A6068], 0, *MEMORY[0x1E69A6080], 0, 0}];
    v28 = 0x10000;
  }

  else
  {
    v42 = IMLocalizedStringFromTableInBundle();
    v29 = IMLocalizedStringFromTableInBundle();
    v40 = v29;
    v47 = IMLocalizedStringFromTableInBundle();
    v45 = IMLocalizedStringFromTableInBundle();
    v46 = IMLocalizedStringFromTableInBundle();
    v44 = IMLocalizedStringFromTableInBundle();
    v22 = IMLocalizedStringFromTableInBundle();
    v24 = IMLocalizedStringFromTableInBundle();
    v30 = IMLocalizedStringFromTableInBundle();
    v43 = v30;

    serviceCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:v42, serviceCopy];
    if (passwordCopy)
    {
      v31 = v24;
    }

    else
    {
      v31 = v30;
    }

    serviceCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:v31, serviceCopy];
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:{userCopy, &stru_1F09C7808, 0}];
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v29, v47, 0}];
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v22, 0}];
    v26 = v44;
    v25 = v45;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{serviceCopy2, *MEMORY[0x1E69A60A8], serviceCopy3, *MEMORY[0x1E69A6088], v33, *MEMORY[0x1E69A60A0], v34, *MEMORY[0x1E69A6098], v35, *MEMORY[0x1E69A6070], v45, *MEMORY[0x1E69A6078], v44, *MEMORY[0x1E69A6068], 0, *MEMORY[0x1E69A6090], 0, *MEMORY[0x1E69A6080], 0, 0}];

    v23 = v40;
    v15 = v42;

    v28 = 0x20000;
  }

  v36 = [MEMORY[0x1E69A6188] userNotificationWithIdentifier:@"__ksPasswordPromptUserNotificationIdentifier" timeout:3 alertLevel:v28 displayFlags:v27 displayInformation:0.0];

  return v36;
}

- (id)acAccountWithProfileID:(id)d username:(id)username accountStore:(id)store
{
  dCopy = d;
  usernameCopy = username;
  storeCopy = store;
  v11 = [dCopy length];
  if (storeCopy && v11)
  {
    v12 = [(FTPasswordManager *)self _accountBasedOnProfileID:dCopy orUsername:usernameCopy inStore:storeCopy];
  }

  else
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195964B8C();
    }

    v12 = 0;
  }

  return v12;
}

- (id)profileIDForACAccount:(id)account
{
  if (account)
  {
    v3 = sub_195956E14(account);
    _stripFZIDPrefix = [v3 _stripFZIDPrefix];
  }

  else
  {
    _stripFZIDPrefix = 0;
  }

  return _stripFZIDPrefix;
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  v5 = im_primary_queue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19596165C;
  v7[3] = &unk_1E74351D0;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(v5, v7);
}

- (void)accountCredentialChanged:(id)changed
{
  changedCopy = changed;
  v5 = im_primary_queue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1959617A0;
  v7[3] = &unk_1E74351D0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(v5, v7);
}

@end