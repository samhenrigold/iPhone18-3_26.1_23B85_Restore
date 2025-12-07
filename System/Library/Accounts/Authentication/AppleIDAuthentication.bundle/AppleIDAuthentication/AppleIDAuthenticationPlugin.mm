@interface AppleIDAuthenticationPlugin
+ (id)_grayModeWhitelist;
- (AppleIDAuthenticationPlugin)init;
- (BOOL)_clientHasEntitlement:(id)entitlement;
- (BOOL)_isProxiedAuthenticationWithContext:(id)context;
- (id)_accountTypeIDsThatReplacedAppleIDAccountType;
- (id)_authController;
- (id)_findAndRemoveOldFMIPTokenForAccount:(id)account;
- (id)_findAndRemoveOldiCloudTokenForAccount:(id)account;
- (id)_frontmostApplicationId;
- (id)_loginDelegatesParameters;
- (id)_parametersForProxiedAuthentication;
- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error;
- (void)_authenticateAccount:(id)account inStore:(id)store options:(id)options errorMessage:(id)message completion:(id)completion;
- (void)_beginPETBasedLoginWithAccount:(id)account PET:(id)t store:(id)store completion:(id)completion;
- (void)_convertPasswordToPETForAppleID:(id)d altDSID:(id)iD password:(id)password services:(id)services completion:(id)completion;
- (void)_fetchTokenForAccount:(id)account accountStore:(id)store forceFetch:(BOOL)fetch withHandler:(id)handler;
- (void)_getPasswordFromCompanionForAccount:(id)account store:(id)store options:(id)options completion:(id)completion;
- (void)_handleAuthenticationResults:(id)results error:(id)error forAccount:(id)account inStore:(id)store resetAuthenticatedOnAlertFailure:(BOOL)failure context:(id)context completion:(id)completion;
- (void)_handleDelegatesResponseForAccount:(id)account store:(id)store response:(id)response error:(id)error handler:(id)handler;
- (void)_handleRenewFailure:(id)failure forAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)_invokeDelegatesWithAuthenticationResponse:(id)response password:(id)password store:(id)store account:(id)account completion:(id)completion;
- (void)_isAccountReallyInGreyMode:(id)mode accountStore:(id)store completion:(id)completion;
- (void)_loginWithAccount:(id)account store:(id)store companionDevice:(id)device options:(id)options completion:(id)completion;
- (void)_migrateAppleIDTokensIfNeededForAccount:(id)account credential:(id *)credential store:(id)store;
- (void)_migrateFMIPTokenIfNeededForAccount:(id)account credential:(id)credential;
- (void)_migrateiCloudTokenIfNeededForAccount:(id)account credential:(id)credential;
- (void)_performLoginDelegatesRequestForAccount:(id)account store:(id)store handler:(id)handler;
- (void)_renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options errorMessage:(id)message completion:(id)completion;
- (void)_silentlyAuthenticateAppleID:(id)d altDSID:(id)iD companionDevice:(id)device services:(id)services completion:(id)completion;
- (void)_tryPasswordLoginWithAccount:(id)account store:(id)store services:(id)services completion:(id)completion;
- (void)_updateDSID:(id)d withRawPassword:(id)password suggestedAccount:(id)account store:(id)store completion:(id)completion;
- (void)_validateAuthenticationResults:(id)results error:(id)error forContext:(id)context completion:(id)completion;
- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion;
@end

@implementation AppleIDAuthenticationPlugin

+ (id)_grayModeWhitelist
{
  if (qword_2A1A10998 != -1)
  {
    sub_29C80A0C0();
  }

  v3 = qword_2A1A109A0;

  return v3;
}

- (AppleIDAuthenticationPlugin)init
{
  v8.receiver = self;
  v8.super_class = AppleIDAuthenticationPlugin;
  v2 = [(AppleIDAuthenticationPlugin *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    accountsAwaitingRemotePasswordEntry = v2->_accountsAwaitingRemotePasswordEntry;
    v2->_accountsAwaitingRemotePasswordEntry = v3;

    v5 = objc_alloc_init(MEMORY[0x29EDBE340]);
    followUpController = v2->_followUpController;
    v2->_followUpController = v5;
  }

  return v2;
}

- (BOOL)_clientHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_29C80A04C();
  }

  if ([entitlementCopy hasEntitlement:*MEMORY[0x29EDB83E0]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [entitlementCopy hasEntitlement:*MEMORY[0x29EDB83E8]];
  }

  return v5;
}

- (void)_isAccountReallyInGreyMode:(id)mode accountStore:(id)store completion:(id)completion
{
  modeCopy = mode;
  storeCopy = store;
  completionCopy = completion;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v10, OS_LOG_TYPE_DEFAULT, "Make a quick round-trip to the server to see if we really need to accept new terms", buf, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x29EDBA088]);
  v12 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, MEMORY[0x29EDCA578]);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3221225472;
  handler[2] = sub_29C7FF828;
  handler[3] = &unk_29F3255B8;
  v13 = v11;
  v37 = v13;
  v14 = v12;
  v38 = v14;
  dispatch_source_set_event_handler(v14, handler);
  v15 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  *buf = 0;
  v33 = buf;
  v34 = 0x2020000000;
  v35 = 1;
  v16 = [MEMORY[0x29EDBDFF8] credentialForAccount:modeCopy clientID:0];
  v17 = objc_alloc(MEMORY[0x29EDBE3D0]);
  token = [v16 token];
  v19 = [v17 initWithAccount:modeCopy token:token];

  v20 = objc_alloc(MEMORY[0x29EDBE388]);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = sub_29C7FF8A4;
  v26[3] = &unk_29F325608;
  v21 = completionCopy;
  v30 = v21;
  v31 = buf;
  v22 = modeCopy;
  v27 = v22;
  v23 = storeCopy;
  v28 = v23;
  v24 = v14;
  v29 = v24;
  v25 = [v20 initWithRequest:v19 handler:v26];
  [v13 addOperation:v25];
  dispatch_resume(v24);

  _Block_object_dispose(buf, 8);
}

- (id)_findAndRemoveOldiCloudTokenForAccount:(id)account
{
  accountCopy = account;
  v4 = MEMORY[0x29EDBE350];
  username = [accountCopy username];
  v6 = [v4 passwordForServiceName:@"com.apple.account.AppleID.appleid-token-icloud" username:username accessGroup:0];

  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Found an Apple ID iCloud token we can use", buf, 2u);
    }

    v8 = MEMORY[0x29EDBE350];
    username2 = [accountCopy username];
    v10 = @"com.apple.account.AppleID.appleid-token-icloud";
    v11 = v8;
    v12 = username2;
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x29EDBE350];
    username3 = [accountCopy username];
    v6 = [v14 passwordForServiceName:@"Apple-token-sync" username:username3 accessGroup:@"appleaccount"];

    if (!v6)
    {
      goto LABEL_10;
    }

    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "Found an old iCloud token we can use", v19, 2u);
    }

    v17 = MEMORY[0x29EDBE350];
    username2 = [accountCopy username];
    v10 = @"Apple-token-sync";
    v13 = @"appleaccount";
    v11 = v17;
    v12 = username2;
  }

  [v11 removePasswordForService:v10 username:v12 accessGroup:v13];

LABEL_10:

  return v6;
}

- (id)_findAndRemoveOldFMIPTokenForAccount:(id)account
{
  accountCopy = account;
  v4 = MEMORY[0x29EDBDFF8];
  parentAccount = [accountCopy parentAccount];
  v6 = [v4 credentialForAccount:parentAccount clientID:0];

  findMyiPhoneToken = [v6 findMyiPhoneToken];
  if (findMyiPhoneToken)
  {
    v8 = findMyiPhoneToken;
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, "Found an old FMIP token we can use, from the iCloud account", buf, 2u);
    }

    [v6 setFindMyiPhoneToken:0];
    parentAccount2 = [accountCopy parentAccount];
    [parentAccount2 setCredential:v6];

    v11 = MEMORY[0x29EDBDFF8];
    parentAccount3 = [accountCopy parentAccount];
    [v11 setCredentialForAccount:parentAccount3];
  }

  else
  {
    v13 = MEMORY[0x29EDBE350];
    username = [accountCopy username];
    v8 = [v13 passwordForServiceName:@"Apple-token-fmip" username:username accessGroup:@"appleaccount"];

    if (!v8)
    {
      goto LABEL_10;
    }

    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_29C7FE000, v15, OS_LOG_TYPE_DEFAULT, "Found an old FMIP token we can use", v18, 2u);
    }

    v16 = MEMORY[0x29EDBE350];
    parentAccount3 = [accountCopy username];
    [v16 removePasswordForService:@"Apple-token-fmip" username:parentAccount3 accessGroup:@"appleaccount"];
  }

LABEL_10:

  return v8;
}

- (void)_migrateiCloudTokenIfNeededForAccount:(id)account credential:(id)credential
{
  accountCopy = account;
  credentialCopy = credential;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

  if (v10)
  {
    token = [credentialCopy token];
    if (!token)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't find the AppleAccount token in our keychain. Looking elsewhere.", v13, 2u);
      }

      token = [(AppleIDAuthenticationPlugin *)self _findAndRemoveOldiCloudTokenForAccount:accountCopy];
      if (token)
      {
        [credentialCopy setToken:token];
        [accountCopy setCredential:credentialCopy];
        [MEMORY[0x29EDBDFF8] setCredentialForAccount:accountCopy];
      }
    }
  }
}

- (void)_migrateFMIPTokenIfNeededForAccount:(id)account credential:(id)credential
{
  accountCopy = account;
  credentialCopy = credential;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x29EDB8208]];

  if (v10)
  {
    token = [credentialCopy token];
    if (!token)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "Couldn't find the FMIP token in our keychain. Looking elsewhere.", v13, 2u);
      }

      token = [(AppleIDAuthenticationPlugin *)self _findAndRemoveOldFMIPTokenForAccount:accountCopy];
      if (token)
      {
        [credentialCopy setToken:token];
        [accountCopy setCredential:credentialCopy];
        [MEMORY[0x29EDBDFF8] setCredentialForAccount:accountCopy error:0];
        [accountCopy setAuthenticated:1];
      }
    }
  }
}

- (void)_migrateAppleIDTokensIfNeededForAccount:(id)account credential:(id *)credential store:(id)store
{
  v28 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  _accountTypeIDsThatReplacedAppleIDAccountType = [(AppleIDAuthenticationPlugin *)self _accountTypeIDsThatReplacedAppleIDAccountType];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v13 = [_accountTypeIDsThatReplacedAppleIDAccountType containsObject:identifier];

  if (v13)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      accountType2 = [accountCopy accountType];
      identifier2 = [accountType2 identifier];
      v26 = 138412290;
      v27 = identifier2;
      _os_log_impl(&dword_29C7FE000, v14, OS_LOG_TYPE_DEFAULT, "The %@ account we're dealing with is a successor of Apple ID accounts. We'll check to see if its credential is still associated with the Apple ID account, and we'll migrate it if necessary.", &v26, 0xCu);
    }

    v17 = *MEMORY[0x29EDBE448];
    v18 = [accountCopy accountPropertyForKey:*MEMORY[0x29EDBE448]];
    if (v18)
    {
      v19 = objc_opt_new();
      v20 = [v19 migrateAppleIDBasedCredentialForAccount:accountCopy];
      v21 = _AALogSystem();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v22)
        {
          shortDebugName = [accountCopy shortDebugName];
          v26 = 138412290;
          v27 = shortDebugName;
          _os_log_impl(&dword_29C7FE000, v21, OS_LOG_TYPE_DEFAULT, "Success! We managed to find a credential for %@ that was associated with a stale AppleID account.", &v26, 0xCu);
        }

        v24 = v20;
        *credential = v20;
        [accountCopy setAccountProperty:0 forKey:v17];
        [storeCopy saveVerifiedAccount:accountCopy withCompletionHandler:&unk_2A23C7F10];
      }

      else
      {
        if (v22)
        {
          shortDebugName2 = [accountCopy shortDebugName];
          v26 = 138412290;
          v27 = shortDebugName2;
          _os_log_impl(&dword_29C7FE000, v21, OS_LOG_TYPE_DEFAULT, "Well, that didn't work. I guess the token for %@ really isn't there.", &v26, 0xCu);
        }
      }
    }
  }
}

- (id)_accountTypeIDsThatReplacedAppleIDAccountType
{
  v6[4] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDB8230];
  v6[0] = *MEMORY[0x29EDB8268];
  v6[1] = v2;
  v3 = *MEMORY[0x29EDB8270];
  v6[2] = *MEMORY[0x29EDB8218];
  v6[3] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:4];

  return v4;
}

- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error
{
  v63 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  clientCopy = client;
  storeCopy = store;
  v56 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:clientCopy];
  bundleID = [clientCopy bundleID];
  if (bundleID)
  {
    v14 = +[AppleIDAuthenticationPlugin _grayModeWhitelist];
    v15 = [v14 containsObject:bundleID];

    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (error)
  {
LABEL_3:
    *error = 0;
  }

LABEL_4:
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v18 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

  if (!v18)
  {
    selfCopy = self;
    v20 = clientCopy;
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    if (([identifier2 isEqualToString:*MEMORY[0x29EDB81F8]] & 1) == 0)
    {
      accountType3 = [accountCopy accountType];
      identifier3 = [accountType3 identifier];
      if (([identifier3 isEqualToString:*MEMORY[0x29EDB8208]] & 1) == 0)
      {
        [accountCopy accountType];
        v31 = v54 = bundleID;
        [v31 identifier];
        v32 = v53 = error;
        v52 = [v32 isEqualToString:*MEMORY[0x29EDB8220]];

        error = v53;
        bundleID = v54;

        clientCopy = v20;
        self = selfCopy;
        if ((v52 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

    clientCopy = v20;
    self = selfCopy;
LABEL_13:
    [accountCopy parentAccount];
    v26 = v25 = bundleID;
    v27 = [(AppleIDAuthenticationPlugin *)self _isAccountInGrayMode:v26];

    bundleID = v25;
    if (v15 & 1 | !v27)
    {
      goto LABEL_24;
    }

    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      bundleID2 = [clientCopy bundleID];
      *buf = 138412290;
      v60 = bundleID2;
      _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "%@ was denied credential access due to account being in Gray Mode", buf, 0xCu);

      bundleID = v25;
    }

    goto LABEL_21;
  }

  if (!v15)
  {
    if (![(AppleIDAuthenticationPlugin *)self _isAccountInGrayMode:accountCopy])
    {
      goto LABEL_24;
    }

    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      bundleID3 = [clientCopy bundleID];
      *buf = 138412290;
      v60 = bundleID3;
      _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "%@ was denied credential access due to account being in Gray Mode", buf, 0xCu);
    }

LABEL_21:

    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.appleaccount" code:-10 userInfo:0];
    }

    goto LABEL_30;
  }

  v19 = _AALogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, "Allowing whitelisted client free access to AppleAccount credential without checking for Gray Mode.", buf, 2u);
  }

LABEL_24:
  if (v56)
  {
    errorCopy = error;
    v58 = 0;
    v34 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0 error:&v58];
    v35 = v58;
    if (v35)
    {
      v36 = storeCopy;
      v37 = _AALogSystem();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        [accountCopy accountType];
        v39 = v38 = bundleID;
        accountTypeDescription = [v39 accountTypeDescription];
        *buf = 138412546;
        v60 = accountTypeDescription;
        v61 = 2112;
        v62 = v35;
        _os_log_impl(&dword_29C7FE000, v37, OS_LOG_TYPE_DEFAULT, "Unable to get credential for %@ account! Error = %@", buf, 0x16u);

        bundleID = v38;
      }

      if (errorCopy)
      {
        v41 = v35;
        *errorCopy = v35;

        v42 = 0;
      }

      else
      {
        v42 = v34;
      }

      storeCopy = v36;
    }

    else
    {
      token = [v34 token];
      if (token)
      {

        v42 = v34;
      }

      else
      {
        v45 = bundleID;
        accountType4 = [accountCopy accountType];
        identifier4 = [accountType4 identifier];
        v48 = [identifier4 isEqualToString:*MEMORY[0x29EDB8220]];

        if (v48)
        {
          v42 = v34;
        }

        else
        {
          v49 = _AALogSystem();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_29C7FE000, v49, OS_LOG_TYPE_DEFAULT, "Try to migrate the credential", buf, 2u);
          }

          [(AppleIDAuthenticationPlugin *)self _migrateiCloudTokenIfNeededForAccount:accountCopy credential:v34];
          [(AppleIDAuthenticationPlugin *)self _migrateFMIPTokenIfNeededForAccount:accountCopy credential:v34];
          v57 = v34;
          [(AppleIDAuthenticationPlugin *)self _migrateAppleIDTokensIfNeededForAccount:accountCopy credential:&v57 store:storeCopy];
          v42 = v57;

          token2 = [v42 token];

          if (!token2)
          {
            v51 = _AALogSystem();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_29C7FE000, v51, OS_LOG_TYPE_DEFAULT, "We tried migrating the credentials for this account, it just doesn't exist", buf, 2u);
            }
          }
        }

        bundleID = v45;
      }
    }

    goto LABEL_37;
  }

LABEL_30:
  v35 = _ACDLogSystem();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = accountCopy;
    _os_log_impl(&dword_29C7FE000, v35, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin is withholding the credential for account %@.", buf, 0xCu);
  }

  v42 = 0;
LABEL_37:

  return v42;
}

- (void)discoverPropertiesForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v76 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  completionCopy = completion;
  v14 = _AASignpostLogSystem();
  v15 = _AASignpostCreate();
  v17 = v16;

  v18 = _AASignpostLogSystem();
  v19 = v18;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    [storeCopy client];
    v20 = v53 = optionsCopy;
    [v20 bundleID];
    selfCopy = self;
    v22 = v21 = accountCopy;
    accountType = [v21 accountType];
    identifier = [accountType identifier];
    *buf = 138543618;
    v71 = v22;
    v72 = 2114;
    v73 = identifier;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "DiscoverProperties", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);

    accountCopy = v21;
    self = selfCopy;

    optionsCopy = v53;
  }

  v25 = _AASignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [storeCopy client];
    v52 = storeCopy;
    v26 = v54 = optionsCopy;
    [v26 bundleID];
    v28 = v27 = v17;
    accountType2 = [accountCopy accountType];
    [accountType2 identifier];
    v30 = completionCopy;
    selfCopy2 = self;
    v33 = v32 = accountCopy;
    *buf = 134218498;
    v71 = v15;
    v72 = 2114;
    v73 = v28;
    v74 = 2114;
    v75 = v33;
    _os_log_impl(&dword_29C7FE000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DiscoverProperties  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);

    accountCopy = v32;
    self = selfCopy2;
    completionCopy = v30;

    v17 = v27;
    storeCopy = v52;
    optionsCopy = v54;
  }

  v60[0] = MEMORY[0x29EDCA5F8];
  v60[1] = 3221225472;
  v60[2] = sub_29C801148;
  v60[3] = &unk_29F325670;
  v62 = v15;
  v63 = v17;
  v34 = completionCopy;
  v61 = v34;
  v35 = MEMORY[0x29ED447A0](v60);
  client = [storeCopy client];
  v37 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:client];

  if (!v37)
  {
    v43 = MEMORY[0x29EDB9FA0];
    v44 = *MEMORY[0x29EDB8300];
    v68 = *MEMORY[0x29EDB9ED8];
    v69 = @"The application is not permitted to verify Apple ID accounts";
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v46 = v43;
    v47 = v44;
    v48 = 7;
LABEL_11:
    v42 = [v46 errorWithDomain:v47 code:v48 userInfo:v45];

    (v35)[2](v35, 0, v42);
    goto LABEL_12;
  }

  accountType3 = [accountCopy accountType];
  identifier2 = [accountType3 identifier];
  v40 = [identifier2 isEqualToString:*MEMORY[0x29EDB81C8]];

  if ((v40 & 1) == 0)
  {
    v49 = MEMORY[0x29EDB9FA0];
    v50 = *MEMORY[0x29EDB8300];
    v66 = *MEMORY[0x29EDB9ED8];
    v67 = @"Unsupported account type provided to -discoverPropertiesForAccount:accountStore:options:completion:";
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v46 = v49;
    v47 = v50;
    v48 = 4;
    goto LABEL_11;
  }

  v64 = *MEMORY[0x29EDB8450];
  v65 = MEMORY[0x29EDB8EB0];
  v41 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v55[2] = sub_29C80131C;
  v55[3] = &unk_29F3256C0;
  v56 = optionsCopy;
  v59 = v35;
  v57 = accountCopy;
  v58 = storeCopy;
  [v58 aa_updatePropertiesForAppleAccount:v57 options:v41 completion:v55];

  v42 = v56;
LABEL_12:
}

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v67 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  completionCopy = completion;
  v12 = _AASignpostLogSystem();
  v13 = _AASignpostCreate();
  v15 = v14;

  v16 = _AASignpostLogSystem();
  v17 = v16;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    client = [storeCopy client];
    bundleID = [client bundleID];
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    *buf = 138543618;
    v62 = bundleID;
    v63 = 2114;
    v64 = identifier;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VerifyCredentials", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v22 = _AASignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    client2 = [storeCopy client];
    bundleID2 = [client2 bundleID];
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218498;
    v62 = v13;
    v63 = 2114;
    v64 = bundleID2;
    v65 = 2114;
    v66 = identifier2;
    _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: VerifyCredentials  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);
  }

  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v55[2] = sub_29C801C74;
  v55[3] = &unk_29F325670;
  v57 = v13;
  v58 = v15;
  v27 = completionCopy;
  v56 = v27;
  v28 = MEMORY[0x29ED447A0](v55);
  client3 = [storeCopy client];
  v30 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:client3];

  if (v30)
  {
    v31 = +[AppleIDAuthenticationUtil doesRelyOnCompanionAccounts];
    v32 = _AALogSystem();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_29C7FE000, v32, OS_LOG_TYPE_DEFAULT, "Device relies on companion auth, proceeding...", buf, 2u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      accountsAwaitingRemotePasswordEntry = selfCopy->_accountsAwaitingRemotePasswordEntry;
      identifier3 = [accountCopy identifier];
      LODWORD(accountsAwaitingRemotePasswordEntry) = [(NSMutableSet *)accountsAwaitingRemotePasswordEntry containsObject:identifier3];

      objc_sync_exit(selfCopy);
      if (accountsAwaitingRemotePasswordEntry)
      {
        v37 = _AALogSystem();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = accountCopy;
          _os_log_impl(&dword_29C7FE000, v37, OS_LOG_TYPE_DEFAULT, "Warning! verifyCredentials is ignoring request for account %@ because we are waiting for a password for that account from ACRemoteDeviceProxy", buf, 0xCu);
        }

        v38 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.appleaccount" code:-4 userInfo:0];
        (v28)[2](v28, 0, v38);
      }

      else
      {
        passwordlessToken = selfCopy->_passwordlessToken;
        selfCopy->_passwordlessToken = 0;

        idmsDataToken = selfCopy->_idmsDataToken;
        selfCopy->_idmsDataToken = 0;

        if (optionsCopy)
        {
          v43 = _AALogSystem();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_29C7FE000, v43, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin will use provided options for login.", buf, 2u);
          }

          v44 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDBE438]];
          v45 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDBE440]];
          if (v44 | v45)
          {
            v38 = objc_alloc_init(MEMORY[0x29EDBFB60]);
            [v38 setServerFriendlyDescription:v44];
            [v38 setUniqueDeviceIdentifier:v45];
            [v38 setLinkType:2];
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v46 = _AALogSystem();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = accountCopy;
          _os_log_impl(&dword_29C7FE000, v46, OS_LOG_TYPE_DEFAULT, "Logging in with account %@....", buf, 0xCu);
        }

        v52[0] = MEMORY[0x29EDCA5F8];
        v52[1] = 3221225472;
        v52[2] = sub_29C801E48;
        v52[3] = &unk_29F3256E8;
        v54 = v28;
        v53 = accountCopy;
        [(AppleIDAuthenticationPlugin *)selfCopy _loginWithAccount:v53 store:storeCopy companionDevice:v38 options:optionsCopy completion:v52];
      }
    }

    else
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_29C7FE000, v32, OS_LOG_TYPE_DEFAULT, "Device suppoprts standalone auth, proceeding...", buf, 2u);
      }

      v49[0] = MEMORY[0x29EDCA5F8];
      v49[1] = 3221225472;
      v49[2] = sub_29C801E6C;
      v49[3] = &unk_29F3256E8;
      v51 = v28;
      v50 = accountCopy;
      [(AppleIDAuthenticationPlugin *)self _fetchTokenForAccount:v50 accountStore:storeCopy withHandler:v49];

      v38 = v51;
    }
  }

  else
  {
    v39 = MEMORY[0x29EDB9FA0];
    v59 = *MEMORY[0x29EDB9ED8];
    v60 = @"The application is not permitted to verify Apple ID accounts";
    v40 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v38 = [v39 errorWithDomain:*MEMORY[0x29EDB8300] code:7 userInfo:v40];

    (v28)[2](v28, 0, v38);
  }
}

- (void)_loginWithAccount:(id)account store:(id)store companionDevice:(id)device options:(id)options completion:(id)completion
{
  v32 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  v15 = *MEMORY[0x29EDB8448];
  deviceCopy = device;
  v17 = [options objectForKeyedSubscript:v15];
  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = accountCopy;
    _os_log_impl(&dword_29C7FE000, v18, OS_LOG_TYPE_DEFAULT, "Trying password-less login with account %@ with the help of Companion's Anisette data.", buf, 0xCu);
  }

  username = [accountCopy username];
  aa_altDSID = [accountCopy aa_altDSID];
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_29C802084;
  v25[3] = &unk_29F325710;
  v25[4] = self;
  v26 = accountCopy;
  v27 = storeCopy;
  v28 = v17;
  v29 = completionCopy;
  v21 = completionCopy;
  v22 = v17;
  v23 = storeCopy;
  v24 = accountCopy;
  [(AppleIDAuthenticationPlugin *)self _silentlyAuthenticateAppleID:username altDSID:aa_altDSID companionDevice:deviceCopy services:v22 completion:v25];
}

- (void)_tryPasswordLoginWithAccount:(id)account store:(id)store services:(id)services completion:(id)completion
{
  v30 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  servicesCopy = services;
  completionCopy = completion;
  credential = [accountCopy credential];
  _parametersForProxiedAuthentication = [credential credentialItemForKey:*MEMORY[0x29EDB8378]];

  if (_parametersForProxiedAuthentication)
  {
    goto LABEL_5;
  }

  v16 = _AALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_29C80A240();
  }

  credential2 = [accountCopy credential];
  _parametersForProxiedAuthentication = [credential2 credentialItemForKey:*MEMORY[0x29EDB8340]];

  if (_parametersForProxiedAuthentication)
  {
LABEL_5:
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = accountCopy;
      _os_log_impl(&dword_29C7FE000, v18, OS_LOG_TYPE_DEFAULT, "Trying password-based login for account %@...", buf, 0xCu);
    }

    username = [accountCopy username];
    aa_altDSID = [accountCopy aa_altDSID];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = sub_29C802600;
    v24[3] = &unk_29F325738;
    v24[4] = self;
    v25 = accountCopy;
    v26 = storeCopy;
    v27 = completionCopy;
    [(AppleIDAuthenticationPlugin *)self _convertPasswordToPETForAppleID:username altDSID:aa_altDSID password:_parametersForProxiedAuthentication services:servicesCopy completion:v24];
  }

  else
  {
    v21 = _AALogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = accountCopy;
      _os_log_impl(&dword_29C7FE000, v21, OS_LOG_TYPE_DEFAULT, "_tryPasswordLoginWithAccount: we do not have a password for %@. Login has officially failed.", buf, 0xCu);
    }

    v22 = MEMORY[0x29EDB9FA0];
    _parametersForProxiedAuthentication = [(AppleIDAuthenticationPlugin *)self _parametersForProxiedAuthentication];
    v23 = [v22 errorWithDomain:@"com.apple.appleaccount" code:-7 userInfo:_parametersForProxiedAuthentication];
    (*(completionCopy + 2))(completionCopy, 0, v23);
  }
}

- (void)_silentlyAuthenticateAppleID:(id)d altDSID:(id)iD companionDevice:(id)device services:(id)services completion:(id)completion
{
  v11 = MEMORY[0x29EDBFB48];
  completionCopy = completion;
  servicesCopy = services;
  deviceCopy = device;
  iDCopy = iD;
  dCopy = d;
  v18 = objc_alloc_init(v11);
  [v18 setAltDSID:iDCopy];

  [v18 setCompanionDevice:deviceCopy];
  [v18 setIsUsernameEditable:0];
  [v18 setAuthenticationType:1];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  [v18 setServiceIdentifiers:servicesCopy];

  [v18 setUsername:dCopy];
  v17 = objc_alloc_init(MEMORY[0x29EDBFB50]);
  [v17 authenticateWithContext:v18 completion:completionCopy];
}

- (void)_convertPasswordToPETForAppleID:(id)d altDSID:(id)iD password:(id)password services:(id)services completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v13 = MEMORY[0x29EDBFB48];
  servicesCopy = services;
  passwordCopy = password;
  iDCopy = iD;
  v17 = objc_alloc_init(v13);
  [v17 setAltDSID:iDCopy];

  [v17 setIsUsernameEditable:0];
  [v17 setServiceIdentifiers:servicesCopy];

  [v17 setAuthenticationType:1];
  [v17 setShouldUpdatePersistentServiceTokens:1];
  [v17 setUsername:dCopy];
  [v17 _setPassword:passwordCopy];

  [v17 _setProxyingForApp:1];
  v18 = objc_alloc_init(MEMORY[0x29EDBFB50]);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = sub_29C802994;
  v21[3] = &unk_29F325760;
  v22 = dCopy;
  v23 = completionCopy;
  v19 = dCopy;
  v20 = completionCopy;
  [v18 authenticateWithContext:v17 completion:v21];
}

- (id)_parametersForProxiedAuthentication
{
  v10[1] = *MEMORY[0x29EDCA608];
  currentDevice = [MEMORY[0x29EDBFB60] currentDevice];
  [currentDevice setLinkType:2];
  serializedData = [currentDevice serializedData];
  v4 = serializedData;
  if (serializedData)
  {
    v9 = *MEMORY[0x29EDBE3F0];
    v10[0] = serializedData;
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "Failed to encode AKDevice! Proxied auth is doomed.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_beginPETBasedLoginWithAccount:(id)account PET:(id)t store:(id)store completion:(id)completion
{
  v42 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  [accountCopy aa_setPassword:t];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v15 = [identifier isEqual:*MEMORY[0x29EDB81C8]];

  v16 = _AALogSystem();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "iCloud account. Will talk to SetupService now...", buf, 2u);
    }

    shouldUseUnifiedLoginEndpoint = [MEMORY[0x29EDBE378] shouldUseUnifiedLoginEndpoint];
    v19 = _AASignpostLogSystem();
    v20 = _AASignpostCreate();
    v22 = v21;

    v23 = _AASignpostLogSystem();
    v24 = v23;
    if (shouldUseUnifiedLoginEndpoint)
    {
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29C7FE000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "LoginAndUpdateAccount", " enableTelemetry=YES ", buf, 2u);
      }

      v25 = _AASignpostLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v41 = v20;
        _os_log_impl(&dword_29C7FE000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginAndUpdateAccount  enableTelemetry=YES ", buf, 0xCu);
      }

      _loginDelegatesParameters = [(AppleIDAuthenticationPlugin *)self _loginDelegatesParameters];
      v34[0] = MEMORY[0x29EDCA5F8];
      v34[1] = 3221225472;
      v34[2] = sub_29C803050;
      v34[3] = &unk_29F325788;
      v38 = v20;
      v39 = v22;
      v34[4] = self;
      v35 = accountCopy;
      v36 = storeCopy;
      v37 = completionCopy;
      [v36 aa_loginAndUpdateiCloudAccount:v35 delegateParams:_loginDelegatesParameters withCompletion:v34];
    }

    else
    {
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29C7FE000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "SignInRegisterAccount", " enableTelemetry=YES ", buf, 2u);
      }

      v27 = _AASignpostLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v41 = v20;
        _os_log_impl(&dword_29C7FE000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInRegisterAccount  enableTelemetry=YES ", buf, 0xCu);
      }

      v28[0] = MEMORY[0x29EDCA5F8];
      v28[1] = 3221225472;
      v28[2] = sub_29C80322C;
      v28[3] = &unk_29F3257B0;
      v32 = v20;
      v33 = v22;
      v28[4] = self;
      v29 = accountCopy;
      v30 = storeCopy;
      v31 = completionCopy;
      [v30 aa_registerAppleAccountWithHSA:v29 completion:v28];
    }
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "Not an iCloud account. Going straight to delegate login...", buf, 2u);
    }

    [(AppleIDAuthenticationPlugin *)self _fetchTokenForAccount:accountCopy accountStore:storeCopy withHandler:completionCopy];
  }
}

- (void)renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v70 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  completionCopy = completion;
  v14 = _AASignpostLogSystem();
  v15 = _AASignpostCreate();
  v17 = v16;

  v18 = _AASignpostLogSystem();
  v19 = v18;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    client = [storeCopy client];
    bundleID = [client bundleID];
    [accountCopy accountType];
    v20 = v51 = v17;
    [v20 identifier];
    v53 = completionCopy;
    v21 = optionsCopy;
    v23 = v22 = self;
    v24 = *MEMORY[0x29EDB8458];
    v25 = v21;
    v26 = [v25 objectForKeyedSubscript:v24];
    [v26 BOOLValue];

    v27 = [v25 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
    [v27 BOOLValue];

    v28 = [v25 objectForKeyedSubscript:@"AARenewShouldForceInteraction"];

    [v28 BOOLValue];
    *buf = 138543874;
    v63 = bundleID;
    v64 = 2114;
    v65 = v23;
    v66 = 1026;
    LODWORD(v67) = 0;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RenewCredentials", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  Options=%{public,signpost.telemetry:number1,name=Options}d  enableTelemetry=YES ", buf, 0x1Cu);

    self = v22;
    optionsCopy = v21;
    completionCopy = v53;

    v17 = v51;
  }

  v29 = _AASignpostLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    client2 = [storeCopy client];
    bundleID2 = [client2 bundleID];
    [accountCopy accountType];
    v50 = v54 = self;
    identifier = [v50 identifier];
    v31 = v15;
    v32 = completionCopy;
    v33 = storeCopy;
    v34 = accountCopy;
    v35 = *MEMORY[0x29EDB8458];
    v36 = v17;
    v37 = optionsCopy;
    v38 = optionsCopy;
    v39 = [v38 objectForKeyedSubscript:v35];
    [v39 BOOLValue];

    v40 = [v38 objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
    [v40 BOOLValue];

    v41 = [v38 objectForKeyedSubscript:@"AARenewShouldForceInteraction"];

    optionsCopy = v37;
    v17 = v36;
    [v41 BOOLValue];

    accountCopy = v34;
    storeCopy = v33;
    completionCopy = v32;
    v15 = v31;
    *buf = 134218754;
    v63 = v31;
    v64 = 2114;
    v65 = bundleID2;
    v66 = 2114;
    v67 = identifier;
    v68 = 1026;
    v69 = 0;
    _os_log_impl(&dword_29C7FE000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RenewCredentials  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  Options=%{public,signpost.telemetry:number1,name=Options}d  enableTelemetry=YES ", buf, 0x26u);

    self = v54;
  }

  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v55[2] = sub_29C803878;
  v55[3] = &unk_29F3257D8;
  v60 = v15;
  v61 = v17;
  v55[4] = self;
  v56 = accountCopy;
  v57 = storeCopy;
  v58 = optionsCopy;
  v59 = completionCopy;
  v42 = completionCopy;
  v43 = optionsCopy;
  v44 = storeCopy;
  v45 = accountCopy;
  v46 = MEMORY[0x29ED447A0](v55);
  [(AppleIDAuthenticationPlugin *)self _renewCredentialsForAccount:v45 accountStore:v44 options:v43 errorMessage:0 completion:v46];
}

- (void)_handleRenewFailure:(id)failure forAccount:(id)account accountStore:(id)store options:(id)options completion:(id)completion
{
  v36 = *MEMORY[0x29EDCA608];
  failureCopy = failure;
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  completionCopy = completion;
  if (!+[AppleIDAuthenticationUtil doesRelyOnCompanionAccounts])
  {
    goto LABEL_10;
  }

  if ([failureCopy ak_isAuthenticationErrorWithCode:-7026])
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_29C80A2DC();
    }

LABEL_9:

LABEL_10:
    completionCopy[2](completionCopy, 2, failureCopy);
    goto LABEL_11;
  }

  if (([failureCopy ak_isServiceError] & 1) != 0 || objc_msgSend(failureCopy, "ak_isAuthenticationErrorWithCode:", -7065))
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_29C80A274();
    }

    goto LABEL_9;
  }

  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = sub_29C803D4C;
  v30[3] = &unk_29F325828;
  v30[4] = self;
  v18 = accountCopy;
  v31 = v18;
  v23 = storeCopy;
  v32 = v23;
  v19 = completionCopy;
  v33 = v19;
  v20 = MEMORY[0x29ED447A0](v30);
  v21 = _AALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v18;
    _os_log_impl(&dword_29C7FE000, v21, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: could not silently obtain PET for account %@", buf, 0xCu);
  }

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = sub_29C803E14;
  v24[3] = &unk_29F325878;
  v28 = v19;
  v25 = optionsCopy;
  selfCopy = self;
  v27 = v18;
  v29 = v20;
  v22 = v20;
  [(AppleIDAuthenticationPlugin *)self _getPasswordFromCompanionForAccount:v27 store:v23 options:v25 completion:v24];

LABEL_11:
}

- (void)_getPasswordFromCompanionForAccount:(id)account store:(id)store options:(id)options completion:(id)completion
{
  v45[4] = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  completionCopy = completion;
  v34 = optionsCopy;
  v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  LODWORD(optionsCopy) = [v12 BOOLValue];

  if (optionsCopy)
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "Can't get password from companion, told to avoid UI", buf, 2u);
    }

    v14 = [MEMORY[0x29EDB9FA0] aa_errorWithCode:-4405 underlyingError:0];
    completionCopy[2](completionCopy, 0, v14);
    goto LABEL_16;
  }

  v44[0] = *MEMORY[0x29EDB9040];
  v15 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PASSWORD_ENTRY_REQUIRED_TITLE" value:&stru_2A23C8230 table:@"Localizable"];
  v45[0] = v16;
  v44[1] = *MEMORY[0x29EDB9048];
  v17 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"PASSWORD_ENTRY_REQUIRED_MESSAGE" value:&stru_2A23C8230 table:@"Localizable"];
  v45[1] = v18;
  v44[2] = *MEMORY[0x29EDB9060];
  v19 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PASSWORD_ENTRY_DISMISS_BUTTON" value:&stru_2A23C8230 table:@"Localizable"];
  v45[2] = v20;
  v44[3] = *MEMORY[0x29EDB9050];
  v45[3] = MEMORY[0x29EDB8EB0];
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v45 forKeys:v44 count:4];

  v21 = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0, 0, v14);
  v22 = _AALogSystem();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      *buf = 0;
      v24 = "Showing renew-credentials prompt...";
LABEL_10:
      _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    }
  }

  else if (v23)
  {
    *buf = 0;
    v24 = "CFUserNotificationCreate in renewCredentials!";
    goto LABEL_10;
  }

  v25 = [v34 mutableCopy];
  _parametersForProxiedAuthentication = [(AppleIDAuthenticationPlugin *)self _parametersForProxiedAuthentication];
  if (_parametersForProxiedAuthentication)
  {
    [v25 addEntriesFromDictionary:_parametersForProxiedAuthentication];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  accountsAwaitingRemotePasswordEntry = selfCopy->_accountsAwaitingRemotePasswordEntry;
  identifier = [accountCopy identifier];
  [(NSMutableSet *)accountsAwaitingRemotePasswordEntry addObject:identifier];

  objc_sync_exit(selfCopy);
  v30 = _AALogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = accountCopy;
    v42 = 2112;
    v43 = v25;
    _os_log_impl(&dword_29C7FE000, v30, OS_LOG_TYPE_DEFAULT, "Asking ACRemoteDeviceProxy to obtain password for account %@ with options: %@", buf, 0x16u);
  }

  remoteDeviceProxy = [storeCopy remoteDeviceProxy];
  v32 = *MEMORY[0x29EDB8428];
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = sub_29C804544;
  v36[3] = &unk_29F3258A0;
  v39 = v21;
  v36[4] = selfCopy;
  v37 = accountCopy;
  v38 = completionCopy;
  [remoteDeviceProxy sendCommand:v32 withAccount:v37 options:v25 completion:v36];

LABEL_16:
}

- (void)_renewCredentialsForAccount:(id)account accountStore:(id)store options:(id)options errorMessage:(id)message completion:(id)completion
{
  v46[1] = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  messageCopy = message;
  completionCopy = completion;
  client = [storeCopy client];
  v18 = [(AppleIDAuthenticationPlugin *)self _clientHasEntitlement:client];

  if (v18)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v19 = off_2A1A10988;
    v40 = off_2A1A10988;
    if (!off_2A1A10988)
    {
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 3221225472;
      v36[2] = sub_29C8091B0;
      v36[3] = &unk_29F325BE8;
      v36[4] = &v37;
      sub_29C8091B0(v36);
      v19 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v19)
    {
      sub_29C80A31C();
    }

    if (v19())
    {
      v20 = MEMORY[0x29EDB9FA0];
      v43 = *MEMORY[0x29EDB9ED8];
      v44 = @"SetupAssistant is running SLT upgrade, force-failing credential renewal.";
      v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x29EDB8300] code:17 userInfo:v21];

      completionCopy[2](completionCopy, 2, v22);
    }

    else if (DMIsMigrationNeeded())
    {
      v25 = MEMORY[0x29EDB9FA0];
      v41 = *MEMORY[0x29EDB9ED8];
      v42 = @"DataMigration is needed, force-failing credential renewal.";
      v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v22 = [v25 errorWithDomain:*MEMORY[0x29EDB8300] code:17 userInfo:v26];

      completionCopy[2](completionCopy, 2, v22);
    }

    else
    {
      v22 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0];
      token = [v22 token];
      if (token)
      {
        v28 = 0;
      }

      else
      {
        password = [v22 password];
        v28 = password == 0;
      }

      if (v28 | ![(AppleIDAuthenticationPlugin *)self _isAccountInGrayMode:accountCopy])
      {
        [(AppleIDAuthenticationPlugin *)self _authenticateAccount:accountCopy inStore:storeCopy options:optionsCopy errorMessage:messageCopy completion:completionCopy];
      }

      else
      {
        v30[0] = MEMORY[0x29EDCA5F8];
        v30[1] = 3221225472;
        v30[2] = sub_29C804CBC;
        v30[3] = &unk_29F3258C8;
        v35 = completionCopy;
        v30[4] = self;
        v31 = accountCopy;
        v32 = storeCopy;
        v33 = optionsCopy;
        v34 = messageCopy;
        [(AppleIDAuthenticationPlugin *)self _isAccountReallyInGreyMode:v31 accountStore:v32 completion:v30];
      }
    }
  }

  else
  {
    v23 = MEMORY[0x29EDB9FA0];
    v45 = *MEMORY[0x29EDB9ED8];
    v46[0] = @"The application is not permitted to renew Apple ID account credentials.";
    v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v22 = [v23 errorWithDomain:*MEMORY[0x29EDB8300] code:7 userInfo:v24];

    completionCopy[2](completionCopy, 2, v22);
  }
}

- (id)_frontmostApplicationId
{
  v2 = SBSCopyFrontmostApplicationDisplayIdentifier();

  return v2;
}

- (void)_authenticateAccount:(id)account inStore:(id)store options:(id)options errorMessage:(id)message completion:(id)completion
{
  v74 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  optionsCopy = options;
  messageCopy = message;
  completionCopy = completion;
  v46 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8440]];
  v14 = [optionsCopy objectForKeyedSubscript:@"AARenewShouldForceInteraction"];
  v48 = storeCopy;
  if (([v14 BOOLValue] & 1) == 0)
  {

    goto LABEL_7;
  }

  client = [storeCopy client];
  name = [client name];
  v17 = [name isEqualToString:@"findmydeviced"];

  if (!v17)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v18 = _AALogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    client2 = [storeCopy client];
    name2 = [client2 name];
    *buf = 138412290;
    v71 = name2;
    _os_log_impl(&dword_29C7FE000, v18, OS_LOG_TYPE_DEFAULT, "Allow %@ to force interactive auth.", buf, 0xCu);
  }

  v21 = 1;
LABEL_8:
  v22 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8450]];
  bOOLValue = [v22 BOOLValue];

  v23 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8438]];
  v24 = *MEMORY[0x29EDB8430];
  v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8430]];
  v43 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDB8448]];
  v45 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x29EDBE3F0]];
  v26 = [MEMORY[0x29EDBFB60] deviceWithSerializedData:?];
  v47 = v25;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v28 = _AALogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v71 = v24;
      v72 = 2112;
      v73 = v25;
      _os_log_impl(&dword_29C7FE000, v28, OS_LOG_TYPE_DEFAULT, "Error! Invalid value type for key %@ in renewCredentials options: %@.", buf, 0x16u);
    }

    integerValue = 0;
  }

  else
  {
    integerValue = [v25 integerValue];
  }

  isAuthenticated = [accountCopy isAuthenticated];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v32 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

  v54[0] = MEMORY[0x29EDCA5F8];
  v54[1] = 3221225472;
  v54[2] = sub_29C8053D0;
  v54[3] = &unk_29F3259B8;
  v33 = accountCopy;
  v55 = v33;
  v34 = v46;
  v56 = v34;
  v66 = v21;
  v35 = v48;
  v57 = v35;
  v36 = v23;
  v58 = v36;
  v37 = v26;
  v67 = bOOLValue;
  v59 = v37;
  v65 = integerValue;
  v68 = v32;
  v38 = v43;
  v60 = v38;
  selfCopy = self;
  v39 = optionsCopy;
  v62 = v39;
  v40 = messageCopy;
  v63 = v40;
  v41 = completionCopy;
  v64 = v41;
  v69 = isAuthenticated;
  v42 = MEMORY[0x29ED447A0](v54);
  if ([v33 isAuthenticated])
  {
    [v33 setAuthenticated:0];
    v52[0] = MEMORY[0x29EDCA5F8];
    v52[1] = 3221225472;
    v52[2] = sub_29C806050;
    v52[3] = &unk_29F3259E0;
    v53 = v42;
    [v35 saveAccount:v33 withHandler:v52];
  }

  else
  {
    v42[2](v42);
  }
}

- (void)_validateAuthenticationResults:(id)results error:(id)error forContext:(id)context completion:(id)completion
{
  v34 = *MEMORY[0x29EDCA608];
  resultsCopy = results;
  contextCopy = context;
  completionCopy = completion;
  v13 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x29EDBFB18]];
  clientInfo = [contextCopy clientInfo];
  v15 = [clientInfo objectForKeyedSubscript:@"account"];
  v16 = [clientInfo objectForKeyedSubscript:@"accountStore"];
  if ([contextCopy serviceType] == 2)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AppleIDAuthenticationPlugin: will not try to log in delegates, because this is an iTunes login.";
LABEL_14:
      _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v13)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || v16 == 0)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "AppleIDAuthenticationPlugin: will not call loginDelegates, because we are missing critical info.";
      goto LABEL_14;
    }

LABEL_15:

LABEL_16:
    completionCopy[2](completionCopy, error == 0);
    goto LABEL_17;
  }

  selfCopy = self;
  proxiedDevice = [contextCopy proxiedDevice];

  v22 = _AALogSystem();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (proxiedDevice)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will not call loginDelegates, because this is a proxied device authentication.", buf, 2u);
    }

    goto LABEL_16;
  }

  if (v23)
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will attempt loginDelegates...", buf, 2u);
  }

  credential = [v15 credential];

  if (credential)
  {
    credential2 = [v15 credential];
    [credential2 setPassword:v13];
  }

  else
  {
    credential2 = [MEMORY[0x29EDB83C0] credentialWithPassword:v13];
    [v15 setCredential:credential2];
  }

  v26 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x29EDBFB20]];
  v27 = _AALogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v15;
    _os_log_impl(&dword_29C7FE000, v27, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will set raw password for account %@ so that our plugins will be happy.", buf, 0xCu);
  }

  if (v26)
  {
    [v15 _aa_setRawPassword:v26];
  }

  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 3221225472;
  v29[2] = sub_29C806408;
  v29[3] = &unk_29F325A08;
  v30 = v15;
  v31 = completionCopy;
  [(AppleIDAuthenticationPlugin *)selfCopy _fetchTokenForAccount:v30 accountStore:v16 withHandler:v29];

LABEL_17:
}

- (void)_handleAuthenticationResults:(id)results error:(id)error forAccount:(id)account inStore:(id)store resetAuthenticatedOnAlertFailure:(BOOL)failure context:(id)context completion:(id)completion
{
  failureCopy = failure;
  resultsCopy = results;
  errorCopy = error;
  accountCopy = account;
  storeCopy = store;
  contextCopy = context;
  completionCopy = completion;
  if (errorCopy && ![errorCopy ak_isAuthenticationErrorWithCode:-7033])
  {
    v30 = MEMORY[0x29EDBE318];
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 3221225472;
    v32[2] = sub_29C806DDC;
    v32[3] = &unk_29F325AD0;
    v33 = completionCopy;
    v28 = completionCopy;
    [v30 handleAuthenticationError:errorCopy resetAuthenticatedOnAlertFailure:failureCopy forAccount:accountCopy inStore:storeCopy completion:v32];
    v21 = v33;
  }

  else
  {
    v31 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x29EDBFB20]];
    v21 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x29EDBFB08]];
    v34[0] = MEMORY[0x29EDCA5F8];
    v34[1] = 3221225472;
    v34[2] = sub_29C806764;
    v34[3] = &unk_29F325AA8;
    v34[4] = self;
    v35 = contextCopy;
    v39 = completionCopy;
    v36 = resultsCopy;
    v22 = accountCopy;
    v23 = accountCopy;
    v24 = contextCopy;
    v25 = v22;
    v37 = v22;
    v38 = storeCopy;
    v26 = completionCopy;
    selfCopy = self;
    v28 = v31;
    v29 = v25;
    contextCopy = v24;
    accountCopy = v23;
    [(AppleIDAuthenticationPlugin *)selfCopy _updateDSID:v21 withRawPassword:v31 suggestedAccount:v29 store:v38 completion:v34];
  }
}

- (void)_updateDSID:(id)d withRawPassword:(id)password suggestedAccount:(id)account store:(id)store completion:(id)completion
{
  v32 = *MEMORY[0x29EDCA608];
  dCopy = d;
  passwordCopy = password;
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  if (passwordCopy)
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v18 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];

    if (v18)
    {
      goto LABEL_7;
    }

    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = dCopy;
      _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: Looking for iCloud account with DSID %{mask}@ for raw password update.", buf, 0xCu);
    }

    if (!dCopy)
    {
LABEL_7:
      v21 = 0;
    }

    else
    {
      v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", objc_msgSend(dCopy, "longLongValue")];
      v21 = [storeCopy aa_appleAccountWithPersonID:v20];
    }

    v22 = _AALogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = accountCopy;
      _os_log_impl(&dword_29C7FE000, v22, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin setting raw password for account %@", buf, 0xCu);
    }

    [accountCopy _aa_setRawPassword:passwordCopy];
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = sub_29C8070B8;
    v25[3] = &unk_29F325AF8;
    v26 = v21;
    v27 = passwordCopy;
    v28 = storeCopy;
    v29 = completionCopy;
    v23 = v21;
    [v28 saveVerifiedAccount:accountCopy withCompletionHandler:v25];
  }

  else
  {
    v24 = _AALogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_29C80A394();
    }

    completionCopy[2](completionCopy);
  }
}

- (void)_invokeDelegatesWithAuthenticationResponse:(id)response password:(id)password store:(id)store account:(id)account completion:(id)completion
{
  v83 = *MEMORY[0x29EDCA608];
  responseCopy = response;
  passwordCopy = password;
  storeCopy = store;
  accountCopy = account;
  completionCopy = completion;
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "_invokeDelegatesWithAuthenticationResponse start", buf, 2u);
  }

  v55 = completionCopy;
  if (qword_2A1A109B0 != -1)
  {
    sub_29C80A3C8();
  }

  v14 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(qword_2A1A109A8, "count")}];
  v15 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(qword_2A1A109A8, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = qword_2A1A109A8;
  v17 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v72;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v72 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = objc_alloc_init(*(*(&v71 + 1) + 8 * i));
        [v14 addObject:v21];
        [v15 addObject:objc_opt_class()];
      }

      v18 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v18);
  }

  if ([v14 count])
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v51 = v14;
    obj = v14;
    v22 = v55;
    v59 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v59)
    {
      v56 = *v68;
      v52 = *MEMORY[0x29EDBE418];
      v54 = responseCopy;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v68 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v67 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            delegateServiceIdentifier = [v24 delegateServiceIdentifier];
            responseParameters2 = [responseCopy responseParametersForServiceIdentifier:delegateServiceIdentifier];
            v27 = [responseParameters2 objectForKeyedSubscript:@"service-data"];
            if (v27 || [(__CFString *)delegateServiceIdentifier isEqualToString:v52]&& (v27 = responseParameters2) != 0)
            {
              responseParameters = v27;
              v29 = _AALogSystem();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = objc_opt_class();
                *buf = 138412546;
                v76 = v30;
                v77 = 2112;
                v78 = delegateServiceIdentifier;
                v31 = v30;
                _os_log_impl(&dword_29C7FE000, v29, OS_LOG_TYPE_DEFAULT, "%@ wants just the dictionary for delegateIdentifier %@", buf, 0x16u);
              }

              v32 = [responseParameters mutableCopy];
              dsid = [responseCopy dsid];
              [v32 setObject:dsid forKey:@"dsid"];
            }

            else
            {
              responseParameters = [responseCopy responseParameters];
              v32 = [responseParameters mutableCopy];
            }
          }

          else
          {
            responseParameters2 = [responseCopy responseParameters];
            v32 = [responseParameters2 mutableCopy];
            delegateServiceIdentifier = @"Unknown";
          }

          [v32 setObject:passwordCopy forKey:@"password"];
          v34 = _AALogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = objc_opt_class();
            *buf = 138412290;
            v76 = v35;
            v36 = v35;
            _os_log_impl(&dword_29C7FE000, v34, OS_LOG_TYPE_DEFAULT, "calling delegate %@", buf, 0xCu);
          }

          v37 = _AASignpostLogSystem();
          v38 = _AASignpostCreate();
          v40 = v39;

          v41 = _AASignpostLogSystem();
          v42 = v41;
          if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            accountType = [accountCopy accountType];
            identifier = [accountType identifier];
            *buf = 138543618;
            v76 = delegateServiceIdentifier;
            v77 = 2114;
            v78 = identifier;
            _os_signpost_emit_with_name_impl(&dword_29C7FE000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v38, "InvokeDelegateWithAuthResponse", " DelegateIdentifier=%{public,signpost.telemetry:string1,name=DelegateIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);

            v22 = v55;
            responseCopy = v54;
          }

          v45 = _AASignpostLogSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            accountType2 = [accountCopy accountType];
            identifier2 = [accountType2 identifier];
            *buf = 134218498;
            v76 = v38;
            v77 = 2114;
            v78 = delegateServiceIdentifier;
            v79 = 2114;
            v80 = identifier2;
            _os_log_impl(&dword_29C7FE000, v45, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: InvokeDelegateWithAuthResponse  DelegateIdentifier=%{public,signpost.telemetry:string1,name=DelegateIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);

            responseCopy = v54;
            v22 = v55;
          }

          v61[0] = MEMORY[0x29EDCA5F8];
          v61[1] = 3221225472;
          v61[2] = sub_29C807CB4;
          v61[3] = &unk_29F325B20;
          v61[4] = v24;
          v65 = v38;
          v66 = v40;
          v48 = v32;
          v62 = v48;
          v63 = v15;
          v64 = v22;
          v49 = MEMORY[0x29ED447A0](v61);
          if (objc_opt_respondsToSelector())
          {
            [v24 didReceiveAuthenticationResponseParameters:v48 accountStore:storeCopy account:accountCopy completion:v49];
          }

          else
          {
            [v24 didReceiveAuthenticationResponseParameters:v48 accountStore:storeCopy completion:v49];
          }
        }

        v59 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v59);
    }

    v14 = v51;
  }

  else
  {
    v50 = _AALogSystem();
    v22 = v55;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v50, OS_LOG_TYPE_DEFAULT, "_invokeDelegatesWithAuthenticationResponse completing – no delegates to call", buf, 2u);
    }

    v55[2](v55);
  }
}

- (void)_fetchTokenForAccount:(id)account accountStore:(id)store forceFetch:(BOOL)fetch withHandler:(id)handler
{
  fetchCopy = fetch;
  v30 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 3221225472;
  v22 = sub_29C808168;
  v23 = &unk_29F325B70;
  selfCopy = self;
  v13 = accountCopy;
  v25 = v13;
  v14 = storeCopy;
  v26 = v14;
  v15 = handlerCopy;
  v27 = v15;
  v16 = MEMORY[0x29ED447A0](&v20);
  v17 = _AALogSystem();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (fetchCopy)
  {
    if (v18)
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, "Being forced to skip cached login for account (%@)", buf, 0xCu);
    }

    v16[2](v16, 0, 0);
  }

  else
  {
    if (v18)
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_29C7FE000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to fetch cached login response for account (%@)", buf, 0xCu);
    }

    v19 = objc_alloc_init(MEMORY[0x29EDBE320]);
    [v19 fetchCachedLoginResponseForAccount:v13 completion:{v16, v20, v21, v22, v23, selfCopy, v25, v26}];
  }
}

- (void)_performLoginDelegatesRequestForAccount:(id)account store:(id)store handler:(id)handler
{
  v56 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  _loginDelegatesParameters = [(AppleIDAuthenticationPlugin *)self _loginDelegatesParameters];
  v12 = [objc_alloc(MEMORY[0x29EDBE358]) initWithAccount:accountCopy parameters:_loginDelegatesParameters];
  aa_personID = [accountCopy aa_personID];

  if (aa_personID)
  {
    v14 = objc_alloc(MEMORY[0x29EDBE338]);
    aa_personID2 = [accountCopy aa_personID];
    v16 = [v14 initWithDSID:aa_personID2];

    [v16 addProvisioningInfoToAARequest:v12];
  }

  v17 = _AASignpostLogSystem();
  v18 = _AASignpostCreate();
  v20 = v19;

  v21 = _AASignpostLogSystem();
  v22 = v21;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    client = [storeCopy client];
    [client bundleID];
    v23 = v42 = handlerCopy;
    [accountCopy accountType];
    v40 = v20;
    v25 = v24 = _loginDelegatesParameters;
    identifier = [v25 identifier];
    *buf = 138543618;
    v51 = v23;
    v52 = 2114;
    v53 = identifier;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LoginDelegates", " Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);

    _loginDelegatesParameters = v24;
    v20 = v40;

    handlerCopy = v42;
  }

  v27 = _AASignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    [storeCopy client];
    selfCopy = self;
    v43 = v12;
    v28 = v39 = _loginDelegatesParameters;
    [v28 bundleID];
    v29 = storeCopy;
    v31 = v30 = handlerCopy;
    accountType = [accountCopy accountType];
    [accountType identifier];
    v34 = v33 = v20;
    *buf = 134218498;
    v51 = v18;
    v52 = 2114;
    v53 = v31;
    v54 = 2114;
    v55 = v34;
    _os_log_impl(&dword_29C7FE000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginDelegates  Client=%{public,signpost.telemetry:string1,name=Client}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x20u);

    v20 = v33;
    handlerCopy = v30;
    storeCopy = v29;

    _loginDelegatesParameters = v39;
    self = selfCopy;
    v12 = v43;
  }

  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 3221225472;
  v44[2] = sub_29C808884;
  v44[3] = &unk_29F325B98;
  v48 = v18;
  v49 = v20;
  v44[4] = self;
  v45 = accountCopy;
  v46 = storeCopy;
  v47 = handlerCopy;
  v35 = handlerCopy;
  v36 = storeCopy;
  v37 = accountCopy;
  [v12 performRequestWithHandler:v44];
}

- (void)_handleDelegatesResponseForAccount:(id)account store:(id)store response:(id)response error:(id)error handler:(id)handler
{
  v35[1] = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  status = [responseCopy status];
  integerValue = [status integerValue];

  if (errorCopy || integerValue)
  {
    statusMessage = [responseCopy statusMessage];
    v21 = statusMessage;
    if (statusMessage)
    {
      v23 = MEMORY[0x29EDB9FA0];
      v34 = *MEMORY[0x29EDB9ED8];
      v35[0] = statusMessage;
      v24 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v25 = [v23 errorWithDomain:@"com.apple.appleaccount" code:integerValue userInfo:v24];

      errorCopy = v25;
    }

    credential = [accountCopy credential];
    [credential setPassword:0];

    handlerCopy[2](handlerCopy, 0, errorCopy);
  }

  else
  {
    credential2 = [accountCopy credential];
    password = [credential2 password];

    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = sub_29C808CBC;
    v27[3] = &unk_29F325BC0;
    v28 = accountCopy;
    v29 = password;
    selfCopy = self;
    v31 = responseCopy;
    v32 = 0;
    v33 = handlerCopy;
    errorCopy = password;
    [(AppleIDAuthenticationPlugin *)self _invokeDelegatesWithAuthenticationResponse:v31 password:errorCopy store:storeCopy account:v28 completion:v27];

    v21 = v28;
  }
}

- (id)_loginDelegatesParameters
{
  v12[3] = *MEMORY[0x29EDCA608];
  mEMORY[0x29EDC1130] = [MEMORY[0x29EDC1130] sharedInstance];
  needsLostModeExitAuth = [mEMORY[0x29EDC1130] needsLostModeExitAuth];

  v4 = MEMORY[0x29EDB8EA0];
  v5 = MEMORY[0x29EDB8EA0];
  if (needsLostModeExitAuth)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "FMDFMIPManager says we need a lost-mode exit token.", v10, 2u);
    }

    v5 = &unk_2A23C8A00;
  }

  v7 = *MEMORY[0x29EDBE418];
  v11[0] = *MEMORY[0x29EDBE408];
  v11[1] = v7;
  v12[0] = v4;
  v12[1] = v5;
  v11[2] = *MEMORY[0x29EDBE410];
  v12[2] = &unk_2A23C8A28;
  v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v8;
}

- (BOOL)_isProxiedAuthenticationWithContext:(id)context
{
  v12 = *MEMORY[0x29EDCA608];
  contextCopy = context;
  v4 = contextCopy;
  v5 = contextCopy != 0;
  if (contextCopy)
  {
    proxiedDevice = [contextCopy proxiedDevice];

    if (!proxiedDevice)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      proxiedDevice2 = [v4 proxiedDevice];
      v10 = 138412290;
      v11 = proxiedDevice2;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Proxied authentication detected: proxiedDevice = %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Missing Authentication Context.", &v10, 2u);
    }
  }

LABEL_9:
  return v5;
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBFB50]);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

@end