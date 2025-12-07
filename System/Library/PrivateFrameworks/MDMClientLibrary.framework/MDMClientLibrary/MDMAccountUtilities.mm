@interface MDMAccountUtilities
+ (BOOL)updateOrganizationName:(id)name rmAccountIdentifier:(id)identifier personaID:(id)d error:(id *)error;
+ (id)_createMissingBearerTokenError;
+ (id)_createMissingRMAccountError;
+ (id)_longLivedTokenFromRMAccount:(id)account inStore:(id)store;
+ (id)_shortLivedTokenFromRMAccount:(id)account inStore:(id)store;
+ (id)authenticatorForRMAccountID:(id)d;
+ (id)bearerTokenForRMAccountID:(id)d error:(id *)error;
+ (id)maidPropertiesForRMAccountID:(id)d;
+ (id)rmAccountWithIdentifier:(id)identifier fromStore:(id)store error:(id *)error;
+ (void)removeMAIDShortLivedTokenWithAccount:(id)account;
+ (void)stashMAIDShortLivedTokenWithAccount:(id)account authenticationResults:(id)results;
@end

@implementation MDMAccountUtilities

+ (id)rmAccountWithIdentifier:(id)identifier fromStore:(id)store error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeCopy = store;
  if (!storeCopy)
  {
    storeCopy = [MEMORY[0x277CB8F48] defaultStore];
  }

  v10 = [storeCopy dmc_remoteManagementAccountForIdentifier:identifierCopy];
  if (!v10)
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = identifierCopy;
      _os_log_impl(&dword_22E997000, v11, OS_LOG_TYPE_ERROR, "No RMAccount with ID: %{public}@", &v13, 0xCu);
    }

    if (error)
    {
      *error = [self _createMissingRMAccountError];
    }
  }

  return v10;
}

+ (void)stashMAIDShortLivedTokenWithAccount:(id)account authenticationResults:(id)results
{
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  resultsCopy = results;
  v7 = DMCAKAuthenticationIDMSTokenKey();
  v8 = [resultsCopy objectForKeyedSubscript:v7];

  v9 = [v8 objectForKeyedSubscript:@"com.apple.gs.mdm.auth"];
  v10 = *(DMCLogObjects() + 8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      v12 = v10;
      identifier = [accountCopy identifier];
      v17 = 138543618;
      v18 = @"com.apple.gs.mdm.auth";
      v19 = 2114;
      v20 = identifier;
      _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_DEBUG, "Stashing %{public}@ token on RMAccount with ID: %{public}@", &v17, 0x16u);
    }

    v14 = [v8 objectForKeyedSubscript:@"com.apple.gs.mdm.auth"];
    [accountCopy setObject:v14 forKeyedSubscript:@"MAIDShortLivedTokenField"];
  }

  else if (v11)
  {
    v15 = v10;
    identifier2 = [accountCopy identifier];
    v17 = 138543618;
    v18 = @"com.apple.gs.mdm.auth";
    v19 = 2114;
    v20 = identifier2;
    _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_DEBUG, "No %{public}@ token to stash on RMAccount with ID: %{public}@", &v17, 0x16u);
  }
}

+ (void)removeMAIDShortLivedTokenWithAccount:(id)account
{
  v11 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    identifier = [accountCopy identifier];
    v7 = 138543618;
    v8 = @"com.apple.gs.mdm.auth";
    v9 = 2114;
    v10 = identifier;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEBUG, "Removing stashed %{public}@ token from RMAccount with ID: %{public}@", &v7, 0x16u);
  }

  [accountCopy setObject:0 forKeyedSubscript:@"MAIDShortLivedTokenField"];
}

+ (id)authenticatorForRMAccountID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0;
  v5 = [self rmAccountWithIdentifier:dCopy fromStore:0 error:&v13];
  v6 = v13;
  if (!v5)
  {
    v10 = *(DMCLogObjects() + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v8 = 0;
      goto LABEL_18;
    }

    *buf = 138543362;
    v15 = dCopy;
    v11 = "Failed to find RM account: %{public}@";
LABEL_9:
    _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    goto LABEL_10;
  }

  dmc_enrollmentMethod = [v5 dmc_enrollmentMethod];
  v8 = 0;
  if (dmc_enrollmentMethod > 2)
  {
    if ((dmc_enrollmentMethod - 3) < 2)
    {
      goto LABEL_18;
    }

    if (dmc_enrollmentMethod == 5)
    {
      v9 = MDMOAuth2Authenticator;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!dmc_enrollmentMethod)
  {
    goto LABEL_18;
  }

  if (dmc_enrollmentMethod == 1)
  {
    v9 = MDMMAIDBearerTokenAuthenticator;
    goto LABEL_17;
  }

  if (dmc_enrollmentMethod != 2)
  {
LABEL_14:
    v10 = *(DMCLogObjects() + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 138543362;
    v15 = dCopy;
    v11 = "Failed to match RM account enrollment method: %{public}@";
    goto LABEL_9;
  }

  v9 = MDMBearerTokenAuthenticator;
LABEL_17:
  v8 = [[v9 alloc] initWithRMAccountID:dCopy];
LABEL_18:

  return v8;
}

+ (id)bearerTokenForRMAccountID:(id)d error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [self rmAccountWithIdentifier:dCopy fromStore:0 error:error];
  v8 = v7;
  if (v7)
  {
    dmc_bearerToken = [v7 dmc_bearerToken];
    if (!dmc_bearerToken)
    {
      v10 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = dCopy;
        _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, "No bearer token in RMAccount with ID: %{public}@", &v12, 0xCu);
      }

      if (error)
      {
        *error = [self _createMissingBearerTokenError];
      }
    }
  }

  else
  {
    dmc_bearerToken = 0;
  }

  return dmc_bearerToken;
}

+ (id)maidPropertiesForRMAccountID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CB8F48];
  dCopy = d;
  defaultStore = [v4 defaultStore];
  v7 = [self rmAccountWithIdentifier:dCopy fromStore:defaultStore error:0];

  if (v7)
  {
    v8 = objc_opt_new();
    username = [v7 username];
    [v8 setObject:username forKeyedSubscript:*MEMORY[0x277D03390]];

    dmc_altDSID = [v7 dmc_altDSID];
    [v8 setObject:dmc_altDSID forKeyedSubscript:*MEMORY[0x277D03370]];

    dmc_DSID = [v7 dmc_DSID];
    [v8 setObject:dmc_DSID forKeyedSubscript:*MEMORY[0x277D03378]];

    v12 = [self _shortLivedTokenFromRMAccount:v7 inStore:defaultStore];
    if (v12)
    {
      [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D03388]];
    }

    else
    {
      v13 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        dmc_altDSID2 = [v7 dmc_altDSID];
        v21 = 138543362;
        v22 = dmc_altDSID2;
        _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_ERROR, "Unable to find short lived token for RM account: %{public}@", &v21, 0xCu);
      }
    }

    v16 = [self _longLivedTokenFromRMAccount:v7 inStore:defaultStore];
    if (v16)
    {
      [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x277D03380]];
    }

    else
    {
      v17 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        dmc_altDSID3 = [v7 dmc_altDSID];
        v21 = 138543362;
        v22 = dmc_altDSID3;
        _os_log_impl(&dword_22E997000, v18, OS_LOG_TYPE_ERROR, "Unable to find long lived token for RM account: %{public}@", &v21, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_shortLivedTokenFromRMAccount:(id)account inStore:(id)store
{
  v27 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  v7 = [accountCopy objectForKeyedSubscript:@"MAIDShortLivedTokenField"];
  if (!v7)
  {
    dmc_altDSID = [accountCopy dmc_altDSID];
    v14 = [storeCopy aida_accountForAltDSID:dmc_altDSID];

    if (v14)
    {
      v15 = [v14 aida_tokenForService:@"com.apple.gs.mdm.auth"];
      if (v15)
      {
LABEL_12:
        v12 = v15;

        goto LABEL_13;
      }

      v16 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        dmc_altDSID2 = [accountCopy dmc_altDSID];
        v23 = 138543618;
        v24 = @"com.apple.gs.mdm.auth";
        v25 = 2114;
        v26 = dmc_altDSID2;
        _os_log_impl(&dword_22E997000, v17, OS_LOG_TYPE_DEBUG, "Unable to find %{public}@ token on idms account for RM account: %{public}@", &v23, 0x16u);
      }
    }

    else
    {
      v19 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = v19;
        dmc_altDSID3 = [accountCopy dmc_altDSID];
        v23 = 138543362;
        v24 = dmc_altDSID3;
        _os_log_impl(&dword_22E997000, v20, OS_LOG_TYPE_DEBUG, "Unable to find idms account for RM account: %{public}@", &v23, 0xCu);
      }
    }

    v15 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    dmc_altDSID4 = [accountCopy dmc_altDSID];
    v23 = 138543618;
    v24 = @"com.apple.gs.mdm.auth";
    v25 = 2114;
    v26 = dmc_altDSID4;
    _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_DEBUG, "Using stashed %{public}@ token on RM account: %{public}@", &v23, 0x16u);
  }

  v12 = v8;
LABEL_13:

  return v12;
}

+ (id)_longLivedTokenFromRMAccount:(id)account inStore:(id)store
{
  v16 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  dmc_altDSID = [accountCopy dmc_altDSID];
  v8 = [storeCopy dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:dmc_altDSID];

  if (!v8)
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      dmc_altDSID2 = [accountCopy dmc_altDSID];
      v14 = 138543362;
      v15 = dmc_altDSID2;
      _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, "Unable to find iCloud account for RM account: %{public}@", &v14, 0xCu);
    }
  }

  dmc_mdmServerToken = [v8 dmc_mdmServerToken];

  return dmc_mdmServerToken;
}

+ (BOOL)updateOrganizationName:(id)name rmAccountIdentifier:(id)identifier personaID:(id)d error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  dCopy = d;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke;
  v76[3] = &unk_278856C58;
  v14 = nameCopy;
  v77 = v14;
  v47 = MEMORY[0x2318F0080](v76);
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy_;
  v74 = __Block_byref_object_dispose_;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v15 = [defaultStore dmc_remoteManagementAccountForIdentifier:identifierCopy];
  v16 = v15;
  if (v15)
  {
    accountDescription = [v15 accountDescription];
    v18 = [accountDescription isEqualToString:v14];

    if (v18)
    {
      v19 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v79 = identifierCopy;
        _os_log_impl(&dword_22E997000, v19, OS_LOG_TYPE_DEFAULT, "RM account organization name does not need to be changed: %{public}@", buf, 0xCu);
      }

      v20 = 1;
    }

    else
    {
      v23 = MEMORY[0x277D03550];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_7;
      v60[3] = &unk_278856C80;
      v64 = &v66;
      v24 = defaultStore;
      v61 = v24;
      v62 = identifierCopy;
      v65 = &v70;
      v25 = v47;
      v63 = v25;
      v26 = [v23 performBlockUnderPersona:dCopy block:v60];
      if (v67[3])
      {
        v27 = *DMCLogObjects();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22E997000, v27, OS_LOG_TYPE_DEFAULT, "RM Account Saved Successfully.", buf, 2u);
        }

        v28 = MEMORY[0x277D03550];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_9;
        v54[3] = &unk_278856C80;
        v58 = &v66;
        v29 = v24;
        v55 = v29;
        v30 = v16;
        v56 = v30;
        v59 = &v70;
        v31 = v25;
        v57 = v31;
        v32 = [v28 performBlockUnderPersona:dCopy block:v54];
        if (v67[3])
        {
          v33 = *DMCLogObjects();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22E997000, v33, OS_LOG_TYPE_DEFAULT, "iCloud Account Saved Successfully.", buf, 2u);
          }

          v34 = MEMORY[0x277D03550];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_10;
          v48[3] = &unk_278856C80;
          v52 = &v66;
          v49 = v29;
          v50 = v30;
          v53 = &v70;
          v51 = v31;
          v35 = [v34 performBlockUnderPersona:dCopy block:v48];
          v20 = *(v67 + 24);
          if (v20)
          {
            v36 = *DMCLogObjects();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22E997000, v36, OS_LOG_TYPE_DEFAULT, "iTunes Account Saved Successfully.", buf, 2u);
            }
          }

          else
          {
            v43 = *DMCLogObjects();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = v71[5];
              *buf = 138543362;
              v79 = v44;
              _os_log_impl(&dword_22E997000, v43, OS_LOG_TYPE_ERROR, "Error Updating iTunes Account: %{public}@", buf, 0xCu);
            }

            if (error)
            {
              v45 = v71[5];
              if (v45)
              {
                *error = v45;
              }
            }
          }
        }

        else
        {
          v40 = *DMCLogObjects();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = v71[5];
            *buf = 138543362;
            v79 = v41;
            _os_log_impl(&dword_22E997000, v40, OS_LOG_TYPE_ERROR, "Error Updating iCloud Account: %{public}@", buf, 0xCu);
          }

          if (error && (v42 = v71[5]) != 0)
          {
            v20 = 0;
            *error = v42;
          }

          else
          {
            v20 = 0;
          }
        }
      }

      else
      {
        v37 = *DMCLogObjects();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = v71[5];
          *buf = 138543362;
          v79 = v38;
          _os_log_impl(&dword_22E997000, v37, OS_LOG_TYPE_ERROR, "Error Updating RM Account: %{public}@", buf, 0xCu);
        }

        if (error && (v39 = v71[5]) != 0)
        {
          v20 = 0;
          *error = v39;
        }

        else
        {
          v20 = 0;
        }
      }
    }
  }

  else
  {
    v21 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = identifierCopy;
      _os_log_impl(&dword_22E997000, v21, OS_LOG_TYPE_ERROR, "Unable to find RM account: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      _createMissingRMAccountError = [self _createMissingRMAccountError];
      if (_createMissingRMAccountError)
      {
        _createMissingRMAccountError = _createMissingRMAccountError;
        *error = _createMissingRMAccountError;
      }
    }

    v20 = 0;
  }

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);

  return v20;
}

void __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_7(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 dmc_updateAccountWithIdentifier:v3 error:&obj updateBlock:v4];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_9(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8BA0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) dmc_altDSID];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  LOBYTE(v2) = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:*(a1 + 48)];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

void __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_10(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8D58];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) dmc_altDSID];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  LOBYTE(v2) = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:*(a1 + 48)];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

+ (id)_createMissingRMAccountError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15005 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingBearerTokenError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15006 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end