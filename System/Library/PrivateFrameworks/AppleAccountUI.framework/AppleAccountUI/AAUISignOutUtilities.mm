@interface AAUISignOutUtilities
- (void)signOutServiceAccountsWithServiceOwnersManager:(id)manager forAltDSID:(id)d DSID:(id)iD context:(id)context completion:(id)completion;
@end

@implementation AAUISignOutUtilities

- (void)signOutServiceAccountsWithServiceOwnersManager:(id)manager forAltDSID:(id)d DSID:(id)iD context:(id)context completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  completionCopy = completion;
  v15 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v50 = dCopy;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Signing out service accounts with altDSID: %{sensitive}@", buf, 0xCu);
  }

  v35 = completionCopy;

  group = dispatch_group_create();
  supportedServices = [objc_opt_class() supportedServices];
  v17 = [supportedServices mutableCopy];

  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E698C218], *MEMORY[0x1E698C238], 0}];
  v18 = _AAUILogSystem([v17 removeObjectsInArray:?]);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [AAUISignOutUtilities signOutServiceAccountsWithServiceOwnersManager:v17 forAltDSID:v18 DSID:? context:? completion:?];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    v38 = iDCopy;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v45 + 1) + 8 * i);
        v24 = [managerCopy accountForService:v23];
        if (v24)
        {
          v25 = [managerCopy altDSIDForAccount:v24 service:v23];
          v26 = v25;
          if (dCopy)
          {
            v25 = [v25 isEqualToString:dCopy];
            if (v25)
            {
              v27 = _AAUILogSystem(v25);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v50 = v23;
                _os_log_impl(&dword_1C5355000, v27, OS_LOG_TYPE_DEFAULT, "Service account for %@ has matching altDSID...", buf, 0xCu);
              }

LABEL_22:

              v32 = _AAUILogSystem(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v50 = v23;
                v51 = 2112;
                v52 = v24;
                _os_log_impl(&dword_1C5355000, v32, OS_LOG_TYPE_DEFAULT, "Signing out service %@ with account %@...", buf, 0x16u);
              }

              dispatch_group_enter(group);
              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke;
              v43[3] = &unk_1E820CCC8;
              v43[4] = v23;
              v44 = group;
              [managerCopy signOutService:v23 withContext:contextCopy completion:v43];

              goto LABEL_30;
            }
          }

          v28 = _AAUILogSystem(v25);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412547;
            v50 = v23;
            v51 = 2117;
            v52 = v26;
            _os_log_impl(&dword_1C5355000, v28, OS_LOG_TYPE_DEFAULT, "Service account for %@ has altDSID (%{sensitive}@) that does not match, checking DSID...", buf, 0x16u);
          }

          v29 = [managerCopy DSIDForAccount:v24 service:v23];
          v27 = v29;
          if (iDCopy)
          {
            v29 = [v29 isEqualToString:iDCopy];
            if (v29)
            {
              v30 = _AAUILogSystem(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v50 = v23;
                _os_log_impl(&dword_1C5355000, v30, OS_LOG_TYPE_DEFAULT, "Service account for %@ has matching DSID...", buf, 0xCu);
              }

              iDCopy = v38;
              goto LABEL_22;
            }
          }

          v33 = _AAUILogSystem(v29);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412547;
            v50 = v23;
            v51 = 2117;
            v52 = v27;
            _os_log_impl(&dword_1C5355000, v33, OS_LOG_TYPE_DEFAULT, "Service account for %@ has DSID (%{sensitive}@) that does not match, bailing!", buf, 0x16u);
          }

          iDCopy = v38;
        }

        else
        {
          v26 = _AAUILogSystem(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v50 = v23;
            _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "No service account found for %@, no sign out necessary.", buf, 0xCu);
          }
        }

LABEL_30:
      }

      v20 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v20);
  }

  if (v35)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke_38;
    block[3] = &unk_1E820B780;
    v41 = obj;
    v42 = v35;
    dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
  }
}

void __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Signed out service %@ with success: %@, error: %@", &v9, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke_38(uint64_t a1)
{
  v2 = [MEMORY[0x1E698DC80] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  if (!v3)
  {
    v5 = _AAUILogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Primary AuthKit account is already removed. All retained services were likely removed.", v13, 2u);
    }

    goto LABEL_13;
  }

  v4 = [v2 servicesUsingAccount:v3];
  v5 = [v4 mutableCopy];

  v7 = _AAUILogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke_38_cold_1(v5, v7);
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  [v5 intersectSet:v8];

  v9 = [v5 count];
  v10 = _AAUILogSystem(v9);
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Removed set services as expected.", buf, 2u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke_38_cold_2(v11);
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignOutErrorDomain" code:-11002 userInfo:0];
LABEL_14:

  (*(*(a1 + 40) + 16))();
}

- (void)signOutServiceAccountsWithServiceOwnersManager:(uint64_t)a1 forAltDSID:(NSObject *)a2 DSID:context:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Attempting to remove services %@", &v2, 0xCu);
}

void __106__AAUISignOutUtilities_signOutServiceAccountsWithServiceOwnersManager_forAltDSID_DSID_context_completion___block_invoke_38_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Remaining services %@", &v2, 0xCu);
}

@end