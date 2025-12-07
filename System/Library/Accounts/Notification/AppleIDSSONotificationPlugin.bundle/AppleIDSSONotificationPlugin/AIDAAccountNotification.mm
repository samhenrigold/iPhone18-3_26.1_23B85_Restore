@interface AIDAAccountNotification
- (id)_appleIDAuthenticationAccountsMatchingAppleAccount:(id)account inStore:(id)store;
- (id)_supportedServiceIDs;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation AIDAAccountNotification

- (id)_supportedServiceIDs
{
  v6[4] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBF920];
  v6[0] = *MEMORY[0x29EDBF908];
  v6[1] = v2;
  v3 = *MEMORY[0x29EDBF910];
  v6[2] = *MEMORY[0x29EDBF918];
  v6[3] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:4];

  return v4;
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v51 = *MEMORY[0x29EDCA608];
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v10 = _AIDALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C89B000, v10, OS_LOG_TYPE_DEFAULT, "AIDA Notification plugin running", buf, 2u);
  }

  if (type == 3)
  {
    accountType = [oldAccountCopy accountType];
    identifier = [accountType identifier];
    v13 = [identifier isEqualToString:*MEMORY[0x29EDB81D0]];

    if (v13)
    {
      v35 = storeCopy;
      v14 = _AIDALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C89B000, v14, OS_LOG_TYPE_DEFAULT, "An Apple ID account was deleted", buf, 2u);
      }

      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v43 = 0u;
      _supportedServiceIDs = [(AIDAAccountNotification *)self _supportedServiceIDs];
      v16 = [_supportedServiceIDs countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v44;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(_supportedServiceIDs);
            }

            v20 = *(*(&v43 + 1) + 8 * i);
            v21 = _AIDALogSystem();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = v20;
              _os_log_impl(&dword_29C89B000, v21, OS_LOG_TYPE_DEFAULT, "Deleting %@ service token", buf, 0xCu);
            }

            v42 = 0;
            [MEMORY[0x29EDBDFF8] removeCredentialForAccount:oldAccountCopy clientID:v20 error:&v42];
            v22 = v42;
            if (v22)
            {
              v23 = _AIDALogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v49 = v20;
                _os_log_impl(&dword_29C89B000, v23, OS_LOG_TYPE_DEFAULT, "Error: Couldn't delete %@ credentials", buf, 0xCu);
              }
            }
          }

          v17 = [_supportedServiceIDs countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v17);
      }

      storeCopy = v35;
    }

    accountType2 = [oldAccountCopy accountType];
    identifier2 = [accountType2 identifier];
    v26 = [identifier2 isEqual:*MEMORY[0x29EDB81C8]];

    if (v26)
    {
      v27 = [(AIDAAccountNotification *)self _appleIDAuthenticationAccountsMatchingAppleAccount:oldAccountCopy inStore:storeCopy];
      if ([v27 count])
      {
        v36 = storeCopy;
        v28 = _AIDALogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_29C89B000, v28, OS_LOG_TYPE_DEFAULT, "iCloud account deleted, so removing all related AIDA accounts...", buf, 2u);
        }

        v29 = objc_alloc_init(MEMORY[0x29EDB83C8]);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v30 = v27;
        v31 = [v30 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v39;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v39 != v33)
              {
                objc_enumerationMutation(v30);
              }

              [v29 removeAccount:? withCompletionHandler:?];
            }

            v32 = [v30 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v32);
        }

        storeCopy = v36;
      }
    }
  }
}

- (id)_appleIDAuthenticationAccountsMatchingAppleAccount:(id)account inStore:(id)store
{
  v28 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  v19 = [storeCopy accountTypeWithAccountTypeIdentifier:*MEMORY[0x29EDB81D0]];
  v20 = storeCopy;
  v7 = [storeCopy _accountsWithAcountType:? error:?];
  v22 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        aida_alternateDSID = [v12 aida_alternateDSID];
        aida_alternateDSID2 = [accountCopy aida_alternateDSID];
        if ([aida_alternateDSID isEqualToString:aida_alternateDSID2])
        {
        }

        else
        {
          username = [v12 username];
          username2 = [accountCopy username];
          v17 = [username isEqualToString:username2];

          if (!v17)
          {
            continue;
          }
        }

        [v22 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v22;
}

@end