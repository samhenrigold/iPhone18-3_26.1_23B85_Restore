@interface ACAccountStore(AppleAccount)
- (BOOL)aa_isUsingiCloud;
- (id)aa_accountsEnabledForDataclass:()AppleAccount;
- (id)aa_accountsForAccountClass:()AppleAccount;
- (id)aa_appleAccountWithAltDSID:()AppleAccount;
- (id)aa_appleAccountWithPersonID:()AppleAccount;
- (id)aa_appleAccountWithUsername:()AppleAccount;
- (id)aa_appleAccounts;
- (id)aa_appleAccountsWithError:()AppleAccount;
- (id)aa_authKitAccountForAltDSID:()AppleAccount;
- (id)aa_dataSeparatedAccounts;
- (id)aa_grandSlamAccountForAltDSID:()AppleAccount;
- (id)aa_grandSlamAccountForiCloudAccount:()AppleAccount;
- (id)aa_primaryAppleAccount;
- (id)aa_primaryAppleAccountWithPreloadedDataclasses;
- (id)aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:()AppleAccount;
- (void)_performUpdateRequestWithAccount:()AppleAccount serverInfo:completion:;
- (void)aa_appleAccountsWithCompletion:()AppleAccount;
- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount delegateParams:withCompletion:;
- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount withCompletion:;
- (void)aa_primaryAppleAccountWithCompletion:()AppleAccount;
- (void)aa_registerAppleAccount:()AppleAccount withCompletion:;
- (void)aa_registerAppleAccountWithHSA:()AppleAccount completion:;
- (void)aa_updatePropertiesForAppleAccount:()AppleAccount options:serverInfo:completion:;
@end

@implementation ACAccountStore(AppleAccount)

- (id)aa_primaryAppleAccount
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69597F8];
  v1 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v3 = [v1 arrayWithObjects:&v7 count:1];
  v4 = [selfCopy accountsWithAccountTypeIdentifiers:v3 preloadedProperties:0 error:{0, v7, v8}];

  v5 = [v4 aaf_firstObjectPassingTest:&__block_literal_global_30];

  return v5;
}

- (BOOL)aa_isUsingiCloud
{
  aa_primaryAppleAccount = [self aa_primaryAppleAccount];
  v2 = aa_primaryAppleAccount != 0;

  return v2;
}

- (id)aa_appleAccounts
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69597F8];
  v1 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v3 = [v1 arrayWithObjects:&v6 count:1];
  v4 = [selfCopy accountsWithAccountTypeIdentifiers:v3 preloadedProperties:0 error:{0, v6, v7}];

  return v4;
}

- (id)aa_primaryAppleAccountWithPreloadedDataclasses
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69599E8];
  v11[0] = *MEMORY[0x1E69599F0];
  v11[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v12[0] = *MEMORY[0x1E69597F8];
  v4 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v6 = v3;
  v7 = [v4 arrayWithObjects:v12 count:1];
  v8 = [selfCopy accountsWithAccountTypeIdentifiers:v7 preloadedProperties:v6 error:0];

  v9 = [v8 aaf_firstObjectPassingTest:&__block_literal_global_32];

  return v9;
}

- (id)aa_dataSeparatedAccounts
{
  aa_appleAccounts = [self aa_appleAccounts];
  v2 = [aa_appleAccounts aaf_filter:&__block_literal_global_3];

  return v2;
}

- (id)aa_appleAccountsWithError:()AppleAccount
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69597F8];
  v4 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [selfCopy accountsWithAccountTypeIdentifiers:v6 preloadedProperties:0 error:{a3, v9, v10}];

  return v7;
}

- (id)aa_accountsForAccountClass:()AppleAccount
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14[0] = *MEMORY[0x1E69597F8];
  v5 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v7 = [v5 arrayWithObjects:v14 count:1];
  v8 = [selfCopy accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__ACAccountStore_AppleAccount__aa_accountsForAccountClass___block_invoke;
  v12[3] = &unk_1E7C9B248;
  v13 = v4;
  v9 = v4;
  v10 = [v8 aaf_filter:v12];

  return v10;
}

- (void)aa_appleAccountsWithCompletion:()AppleAccount
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69597F8];
  v4 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v6 = a3;
  v7 = [v4 arrayWithObjects:&v8 count:1];
  [selfCopy accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 completion:{v6, v8, v9}];
}

- (void)aa_primaryAppleAccountWithCompletion:()AppleAccount
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ACAccountStore_AppleAccount__aa_primaryAppleAccountWithCompletion___block_invoke;
  v9[3] = &unk_1E7C9B290;
  v10 = v4;
  v11[0] = *MEMORY[0x1E69597F8];
  v5 = MEMORY[0x1E695DEC8];
  selfCopy = self;
  v7 = v4;
  v8 = [v5 arrayWithObjects:v11 count:1];
  [selfCopy accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 completion:v9];
}

- (id)aa_appleAccountWithUsername:()AppleAccount
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20[0] = *MEMORY[0x1E69597F8];
    v5 = MEMORY[0x1E695DEC8];
    selfCopy = self;
    v7 = [v5 arrayWithObjects:v20 count:1];
    v8 = [selfCopy accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__ACAccountStore_AppleAccount__aa_appleAccountWithUsername___block_invoke;
    v18[3] = &unk_1E7C9B248;
    v19 = v4;
    v9 = [v8 aaf_firstObjectPassingTest:v18];
  }

  else
  {
    v8 = _AALogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v8 aa_appleAccountWithUsername:v10, v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  return v9;
}

- (id)aa_appleAccountWithPersonID:()AppleAccount
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20[0] = *MEMORY[0x1E69597F8];
    v5 = MEMORY[0x1E695DEC8];
    selfCopy = self;
    v7 = [v5 arrayWithObjects:v20 count:1];
    v8 = [selfCopy accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__ACAccountStore_AppleAccount__aa_appleAccountWithPersonID___block_invoke;
    v18[3] = &unk_1E7C9B248;
    v19 = v4;
    v9 = [v8 aaf_firstObjectPassingTest:v18];
  }

  else
  {
    v8 = _AALogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v8 aa_appleAccountWithPersonID:v10, v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  return v9;
}

- (id)aa_appleAccountWithAltDSID:()AppleAccount
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20[0] = *MEMORY[0x1E69597F8];
    v5 = MEMORY[0x1E695DEC8];
    selfCopy = self;
    v7 = [v5 arrayWithObjects:v20 count:1];
    v8 = [selfCopy accountsWithAccountTypeIdentifiers:v7 preloadedProperties:0 error:0];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__ACAccountStore_AppleAccount__aa_appleAccountWithAltDSID___block_invoke;
    v18[3] = &unk_1E7C9B248;
    v19 = v4;
    v9 = [v8 aaf_firstObjectPassingTest:v18];
  }

  else
  {
    v8 = _AALogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v8 aa_appleAccountWithAltDSID:v10, v11, v12, v13, v14, v15, v16];
    }

    v9 = 0;
  }

  return v9;
}

- (id)aa_accountsEnabledForDataclass:()AppleAccount
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [self accountIdentifiersEnabledForDataclass:v4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = v4;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [self accountWithIdentifier:v11 error:0];
          if (v12)
          {
            [v5 addObject:v12];
          }

          else
          {
            v13 = _AALogSystem(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v11;
              _os_log_error_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch enabled account with identifier: %@", buf, 0xCu);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
      v4 = v22;
    }
  }

  else
  {
    v6 = _AALogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v6 aa_accountsEnabledForDataclass:v14, v15, v16, v17, v18, v19, v20];
    }

    v5 = 0;
  }

  return v5;
}

- (id)aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:()AppleAccount
{
  v64[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier %@", buf, 0xCu);
  }

  aa_appleAccounts = [self aa_appleAccounts];
  if ([aa_appleAccounts count])
  {
    v7 = [v4 isEqualToString:*MEMORY[0x1E69597F8]];
    if (v7)
    {
      v8 = _AALogSystem(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier recommending nothing for an iCloud account because we already have one or more iCloud accounts.";
LABEL_14:
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if ([aa_appleAccounts count] != 1)
  {
    v13 = [aa_appleAccounts count];
    v8 = _AALogSystem(v13);
    v14 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v13 >= 2)
    {
      if (v14)
      {
        *buf = 0;
        v9 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found > 1 iCloud account. Recommending nothing.";
        goto LABEL_14;
      }

LABEL_15:

      firstObject = 0;
      goto LABEL_24;
    }

    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found zero iCloud accounts. Checking other account types...", buf, 2u);
    }

    v15 = *MEMORY[0x1E6959860];
    v64[0] = *MEMORY[0x1E69598B0];
    v64[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v58 = 0;
    v17 = [self accountsWithAccountTypeIdentifiers:v16 error:&v58];
    v18 = v58;
    v19 = v18;
    if (v18)
    {
      v20 = _AALogSystem(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v19;
        v21 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier recommending nothing after receiving error: %@";
        v22 = v20;
        v23 = 12;
LABEL_21:
        _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }

    else
    {
      if ([v17 count])
      {
        v28 = [v17 count];
        v29 = _AALogSystem(v28);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28 == 1)
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found exactly one IS/GC account. Using it.", buf, 2u);
          }

          firstObject = [v17 objectAtIndexedSubscript:0];
        }

        else
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found several IS/GC accounts. Checking their usernames...", buf, 2u);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v17;
          v31 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = 0;
            v34 = *v55;
            v51 = v17;
            v52 = v16;
            v50 = 0;
LABEL_40:
            v35 = 0;
            while (1)
            {
              if (*v55 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v54 + 1) + 8 * v35);
              username = [v36 username];
              v38 = username;
              if (v33)
              {
                v39 = [v33 isEqualToString:username];

                if ((v39 & 1) == 0)
                {
                  v48 = _AALogSystem(v40);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1B6F6A000, v48, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier IS/GC accounts contain several usernames. Recommending nothing.", buf, 2u);
                  }

LABEL_59:
                  v17 = v51;
                  v16 = v52;
                  v19 = v50;

                  firstObject = 0;
                  goto LABEL_60;
                }
              }

              else
              {
                v33 = username;
              }

              accountType = [v36 accountType];
              identifier = [accountType identifier];
              v43 = [v4 isEqualToString:identifier];

              if (v43)
              {
                v48 = _AALogSystem(v44);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  accountType2 = [v36 accountType];
                  *buf = 138412290;
                  v60 = accountType2;
                  _os_log_impl(&dword_1B6F6A000, v48, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier can't recommend a username that already has an account of type %@. Recommending nothing.", buf, 0xCu);
                }

                goto LABEL_59;
              }

              if (v32 == ++v35)
              {
                v32 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
                v17 = v51;
                v16 = v52;
                v19 = v50;
                if (v32)
                {
                  goto LABEL_40;
                }

                goto LABEL_52;
              }
            }
          }

          v33 = 0;
LABEL_52:

          v46 = _AALogSystem(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B6F6A000, v46, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier all IS/GC usernames are identical. Using that.", buf, 2u);
          }

          firstObject = [obj firstObject];
LABEL_60:
        }

        goto LABEL_23;
      }

      v20 = _AALogSystem(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v21 = "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found no IS/GC accounts. Recommending nothing.";
        v22 = v20;
        v23 = 2;
        goto LABEL_21;
      }
    }

    firstObject = 0;
LABEL_23:

    goto LABEL_24;
  }

  v10 = _AALogSystem(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier found exactly one iCloud account. Using it.", buf, 2u);
  }

  v11 = [aa_appleAccounts objectAtIndexedSubscript:0];
  firstObject = v11;
LABEL_24:
  v24 = _AALogSystem(v11);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    username2 = [firstObject username];
    *buf = 138412546;
    v60 = username2;
    v61 = 2112;
    v62 = firstObject;
    _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "aa_recommendedAppleIDForAccountSignInWithTypeIdentifier returning appleID %@ from account %@", buf, 0x16u);
  }

  username3 = [firstObject username];

  return username3;
}

- (void)aa_updatePropertiesForAppleAccount:()AppleAccount options:serverInfo:completion:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  identifier = [v10 identifier];
  if (identifier)
  {
    v15 = identifier;
    aa_authToken = [v10 aa_authToken];
    if (aa_authToken)
    {
    }

    else
    {
      aa_password = [v10 aa_password];

      if (!aa_password)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __97__ACAccountStore_AppleAccount__aa_updatePropertiesForAppleAccount_options_serverInfo_completion___block_invoke;
        v18[3] = &unk_1E7C9B2B8;
        v18[4] = self;
        v19 = v10;
        v20 = v12;
        v21 = v13;
        [self renewCredentialsForAccount:v19 options:v11 completion:v18];

        goto LABEL_6;
      }
    }
  }

  [self _performUpdateRequestWithAccount:v10 serverInfo:v12 completion:v13];
LABEL_6:
}

- (void)_performUpdateRequestWithAccount:()AppleAccount serverInfo:completion:
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    accountType = [v7 accountType];
    identifier = [accountType identifier];
    *buf = 138543362;
    v32 = identifier;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "GetAccountSettings", " AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0xCu);
  }

  v20 = _AASignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    accountType2 = [v7 accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218242;
    v32 = v11;
    v33 = 2114;
    v34 = identifier2;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GetAccountSettings  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v23 = [[AAUpdateProvisioningRequest alloc] initWithAccount:v7];
  [(AAUpdateProvisioningRequest *)v23 setServerInfo:v9];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__ACAccountStore_AppleAccount___performUpdateRequestWithAccount_serverInfo_completion___block_invoke;
  v26[3] = &unk_1E7C9B308;
  v29 = v11;
  v30 = v13;
  v27 = v7;
  v28 = v8;
  v24 = v8;
  v25 = v7;
  [(AARequest *)v23 performRequestWithHandler:v26];
}

- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount withCompletion:
{
  v6 = a4;
  v7 = a3;
  v8 = +[AAiCloudLoginAccountRequester delegateParamsForiCloudOnly];
  [self aa_loginAndUpdateiCloudAccount:v7 delegateParams:v8 withCompletion:v6];
}

- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount delegateParams:withCompletion:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  accountType = [v7 accountType];
  identifier = [accountType identifier];
  v12 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if ((v12 & 1) == 0)
  {
    v17 = _AALogSystem(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore(AppleAccount) aa_loginAndUpdateiCloudAccount:v7 delegateParams:v17 withCompletion:?];
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = -18;
    goto LABEL_10;
  }

  v14 = [v8 objectForKey:@"com.apple.mobileme"];

  if (!v14)
  {
    v20 = _AALogSystem(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore(AppleAccount) aa_loginAndUpdateiCloudAccount:v20 delegateParams:? withCompletion:?];
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = -3;
LABEL_10:
    v16 = [v18 aa_errorWithCode:v19];
    (*(v9 + 2))(v9, 0, 0, v16);
    goto LABEL_11;
  }

  v16 = objc_alloc_init(AAiCloudLoginAccountRequester);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__ACAccountStore_AppleAccount__aa_loginAndUpdateiCloudAccount_delegateParams_withCompletion___block_invoke;
  v21[3] = &unk_1E7C9B330;
  v23 = v9;
  v22 = v7;
  [(AAiCloudLoginAccountRequester *)v16 loginWithAccount:v22 forDelegates:v8 completion:v21];

LABEL_11:
}

- (void)aa_registerAppleAccount:()AppleAccount withCompletion:
{
  v5 = a4;
  v6 = a3;
  v7 = +[AARemoteServer sharedServer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ACAccountStore_AppleAccount__aa_registerAppleAccount_withCompletion___block_invoke;
  v9[3] = &unk_1E7C9B358;
  v10 = v5;
  v8 = v5;
  [v7 registerAccount:v6 withHSA:0 completion:v9];
}

- (void)aa_registerAppleAccountWithHSA:()AppleAccount completion:
{
  v5 = a4;
  v6 = a3;
  v7 = +[AARemoteServer sharedServer];
  [v7 registerAccount:v6 withHSA:1 completion:v5];
}

- (id)aa_grandSlamAccountForiCloudAccount:()AppleAccount
{
  if (a3)
  {
    v3 = [self aida_accountForiCloudAccount:?];
  }

  else
  {
    v4 = _AALogSystem(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v4 aa_grandSlamAccountForiCloudAccount:v5, v6, v7, v8, v9, v10, v11];
    }

    v3 = 0;
  }

  return v3;
}

- (id)aa_grandSlamAccountForAltDSID:()AppleAccount
{
  if (a3)
  {
    v3 = [self aida_accountForAltDSID:?];
  }

  else
  {
    v4 = _AALogSystem(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v4 aa_grandSlamAccountForAltDSID:v5, v6, v7, v8, v9, v10, v11];
    }

    v3 = 0;
  }

  return v3;
}

- (id)aa_authKitAccountForAltDSID:()AppleAccount
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v18[0] = *MEMORY[0x1E6959888];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v6 = [self accountsWithAccountTypeIdentifiers:v5 error:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__ACAccountStore_AppleAccount__aa_authKitAccountForAltDSID___block_invoke;
    v16[3] = &unk_1E7C9B248;
    v17 = v4;
    v7 = [v6 aaf_firstObjectPassingTest:v16];
  }

  else
  {
    v5 = _AALogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(AppleAccount) *)v5 aa_authKitAccountForAltDSID:v8, v9, v10, v11, v12, v13, v14];
    }

    v7 = 0;
  }

  return v7;
}

- (void)aa_appleAccountWithUsername:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_appleAccountWithUsername:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter username was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)aa_appleAccountWithPersonID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_appleAccountWithPersonID:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter personID was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)aa_appleAccountWithAltDSID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_appleAccountWithAltDSID:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter altDSID was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)aa_accountsEnabledForDataclass:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_accountsEnabledForDataclass:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter dataclass was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)aa_loginAndUpdateiCloudAccount:()AppleAccount delegateParams:withCompletion:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 accountType];
  v4 = [v3 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Rejecting attempt to call iCloud login on non-iCloud account of type %@", &v5, 0xCu);
}

- (void)aa_grandSlamAccountForiCloudAccount:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_grandSlamAccountForiCloudAccount:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter iCloudAccount was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)aa_grandSlamAccountForAltDSID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_grandSlamAccountForAltDSID:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter altDSID was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)aa_authKitAccountForAltDSID:()AppleAccount .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ACAccountStore(AppleAccount) aa_authKitAccountForAltDSID:]";
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a1, a3, "%s: Failing because parameter altDSID was not provided!", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end