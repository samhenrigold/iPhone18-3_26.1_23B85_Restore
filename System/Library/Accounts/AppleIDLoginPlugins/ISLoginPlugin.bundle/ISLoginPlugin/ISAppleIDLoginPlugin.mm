@interface ISAppleIDLoginPlugin
- (ISAppleIDLoginPlugin)init;
- (id)_accountWithParameters:(id)parameters;
- (id)parametersForIdentityEstablishmentRequest;
- (id)parametersForLoginRequest;
- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier withCookieStorage:(id)storage;
- (void)_setupHomeSharingWithParameters:(id)parameters;
- (void)_setupITunesMatchWithParameters:(id)parameters;
- (void)_setupiTunesBiometricsWithParameters:(id)parameters;
- (void)handleLoginResponse:(id)response completion:(id)completion;
@end

@implementation ISAppleIDLoginPlugin

- (ISAppleIDLoginPlugin)init
{
  v6.receiver = self;
  v6.super_class = ISAppleIDLoginPlugin;
  v2 = [(ISAppleIDLoginPlugin *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ISAppleIDLoginPlugin", &_dispatch_queue_attr_concurrent);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)handleLoginResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  kdebug_trace();
  val = self;
  [(ISAppleIDLoginPlugin *)self setHandler:completionCopy];
  v67 = [NSMutableDictionary dictionaryWithDictionary:responseCopy];
  v9 = ISAppleIDPluginLogConfig([v67 removeObjectForKey:@"password"]);
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = shouldLog;
  }

  else
  {
    v12 = shouldLog & 2;
  }

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *from = 138543874;
    *&from[4] = v13;
    v83 = 2114;
    v84 = v15;
    v85 = 2112;
    v86 = v67;
    v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_0, oSLogObject, 0, "%{public}@: %{public}@ called. parameters = %@", from, 32);

    if (v16)
    {
      v17 = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }
  }

  else
  {
  }

  v65 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Cookies", @"com.apple.itunesstored.2.sqlitedb", 0}];
  v68 = [NSString pathWithComponents:v65];
  v64 = objc_alloc_init(NSFileManager);
  stringByDeletingLastPathComponent = [v68 stringByDeletingLastPathComponent];
  [v64 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

  v19 = [SSVCookieStorage alloc];
  v20 = [NSURL fileURLWithPath:v68];
  v63 = [v19 initWithStorageLocation:v20];

  v21 = [responseCopy objectForKey:@"dsid"];
  v69 = SSAccountGetUniqueIdentifierFromValue();

  if (!v69)
  {
    v24 = ISAppleIDPluginLogConfig(v22);
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      LODWORD(v26) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v26) = shouldLog2;
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v28 = objc_opt_class();
      *from = 138543362;
      *&from[4] = v28;
      v29 = v28;
      LODWORD(v61) = 12;
      v30 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_0, oSLogObject2, 16, "%{public}@: Failing to complete login. The dsID is missing.", from, v61);

      if (!v30)
      {
LABEL_27:

        v31 = [NSError errorWithDomain:@"ISAppleIDLoginErrorDomain" code:1 userInfo:0];
        v32 = 0;
        goto LABEL_36;
      }

      oSLogObject2 = [NSString stringWithCString:v30 encoding:4];
      free(v30);
      v60 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_27;
  }

  v23 = [responseCopy objectForKey:@"cookies"];
  if (v23)
  {
    [(ISAppleIDLoginPlugin *)val _setCookiesWithString:v23 userIdentifier:v69 withCookieStorage:v63];
  }

  else
  {
    v33 = [responseCopy objectForKey:@"pod"];
    [(ISAppleIDLoginPlugin *)val _setCookiesWithString:v33 userIdentifier:v69 withCookieStorage:v63];

    v34 = [responseCopy objectForKey:@"weak-token"];
    [(ISAppleIDLoginPlugin *)val _setCookiesWithString:v34 userIdentifier:v69 withCookieStorage:v63];
  }

  v32 = [(ISAppleIDLoginPlugin *)val _accountWithParameters:responseCopy];
  v35 = +[SSAccountStore defaultStore];
  [v35 saveAccount:v32 verifyCredentials:0 error:0];

  if ([v32 isActive])
  {
    +[SSAccountStore resetExpiration];
    v36 = [responseCopy objectForKey:@"storefront"];
    if (v36)
    {
      v37 = +[SSDevice currentDevice];
      [v37 setStoreFrontIdentifier:v36];
    }

    if (PSIsRunningInAssistant())
    {
      v38 = +[SSDevice currentDevice];
      [v38 enableAllAutomaticDownloadKindsWithCompletionBlock:0];
    }
  }

  v31 = 0;
LABEL_36:
  objc_initWeak(&location, val);
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1A94;
  v75[3] = &unk_8400;
  v75[4] = val;
  objc_copyWeak(&v79, &location);
  v39 = responseCopy;
  v76 = v39;
  v40 = v32;
  v77 = v40;
  v80 = v69 != 0;
  v62 = v31;
  v78 = v62;
  v41 = objc_retainBlock(v75);
  v66 = [v39 objectForKeyedSubscript:@"password"];
  if (v40)
  {
    v42 = [v66 length];
    if (v42)
    {
      v43 = ISAppleIDPluginLogConfig(v42);
      if (!v43)
      {
        v43 = +[SSLogConfig sharedConfig];
      }

      v44 = v43;
      shouldLog3 = [v43 shouldLog];
      shouldLogToDisk = [v44 shouldLogToDisk];
      v47 = completionCopy;
      oSLogObject3 = [v44 OSLogObject];
      v49 = oSLogObject3;
      if (shouldLogToDisk)
      {
        shouldLog3 |= 2u;
      }

      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v50 = shouldLog3;
      }

      else
      {
        v50 = shouldLog3 & 2;
      }

      if (v50)
      {
        v51 = objc_opt_class();
        accountName = [v40 accountName];
        v53 = SSHashIfNeeded();
        *from = 138543618;
        *&from[4] = v51;
        v83 = 2114;
        v84 = v53;
        LODWORD(v61) = 22;
        v54 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_0, v49, 0, "%{public}@: Attempting to authenticate %{public}@. This will help ensure we have needed tokens.", from, v61);

        completionCopy = v47;
        if (!v54)
        {
LABEL_50:

          v55 = +[SSMutableAuthenticationContext contextForSignIn];
          accountName2 = [v40 accountName];
          [v55 setAccountName:accountName2];

          altDSID = [v40 altDSID];
          [v55 setAltDSID:altDSID];

          [v55 setAllowsRetry:0];
          [v55 setCanSetActiveAccount:0];
          [v55 setCanCreateNewAccount:0];
          uniqueIdentifier = [v40 uniqueIdentifier];
          [v55 setRequiredUniqueIdentifier:uniqueIdentifier];

          [v55 setShouldSuppressDialogs:1];
          [v55 setPasswordEquivalentToken:v66];
          [v55 setPromptStyle:1];
          v59 = [[SSAuthenticateRequest alloc] initWithAuthenticationContext:v55];
          objc_initWeak(from, val);
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_23E8;
          v71[3] = &unk_8428;
          objc_copyWeak(&v74, from);
          v72 = v40;
          v73 = v41;
          [v59 startWithAuthenticateResponseBlock:v71];

          objc_destroyWeak(&v74);
          objc_destroyWeak(from);

          goto LABEL_51;
        }

        v49 = [NSString stringWithCString:v54 encoding:4];
        free(v54);
        SSFileLog();
      }

      goto LABEL_50;
    }
  }

  (v41[2])(v41);
LABEL_51:

  objc_destroyWeak(&v79);
  objc_destroyWeak(&location);
}

- (id)parametersForIdentityEstablishmentRequest
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[SSAccountStore defaultStore];
  activeAccount = [v3 activeAccount];

  if (activeAccount)
  {
    [v2 setObject:&__kCFBooleanTrue forKey:@"account-exists"];
    accountName = [activeAccount accountName];
    if (accountName)
    {
      [v2 setObject:accountName forKey:@"apple-id"];
    }

    secureToken = [activeAccount secureToken];

    if (secureToken)
    {
      [v2 setObject:secureToken forKey:@"auth-token"];
    }

    uniqueIdentifier = [activeAccount uniqueIdentifier];

    if (uniqueIdentifier)
    {
      [v2 setObject:uniqueIdentifier forKey:@"dsid"];
    }
  }

  else
  {
    [v2 setObject:&__kCFBooleanFalse forKey:@"account-exists"];
  }

  return v2;
}

- (id)parametersForLoginRequest
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"iTunes" forKey:@"drm-client"];
  v3 = +[ISDevice sharedInstance];
  hardwareName = [v3 hardwareName];
  v5 = hardwareName;
  if (hardwareName)
  {
    lowercaseString = [hardwareName lowercaseString];
    [v2 setObject:lowercaseString forKey:@"drm-type"];
  }

  guid = [v3 guid];

  if (guid)
  {
    [v2 setObject:guid forKey:@"guid"];
  }

  deviceName = [v3 deviceName];

  if (deviceName)
  {
    [v2 setObject:deviceName forKey:@"device-name"];
  }

  v9 = +[SSDevice currentDevice];
  productVersion = [v9 productVersion];

  if (productVersion)
  {
    [v2 setObject:productVersion forKey:@"drm-version"];
  }

  userAgent = [v9 userAgent];

  if (userAgent)
  {
    [v2 setObject:userAgent forKey:@"user-agent"];
  }

  return v2;
}

- (id)_accountWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [parametersCopy objectForKeyedSubscript:@"dsid"];
  v5 = SSAccountGetUniqueIdentifierFromValue();

  v6 = +[SSAccountStore defaultStore];
  v90 = v5;
  v7 = [v6 accountWithUniqueIdentifier:v5];

  v9 = ISAppleIDPluginLogConfig(v8);
  v10 = v9;
  v11 = &ISWeakLinkedClassForString_ptr;
  if (!v7)
  {
    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v22) = shouldLog | 2;
    }

    else
    {
      LODWORD(v22) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [v90 description];
      v27 = SSHashIfNeeded();
      v91 = 138543618;
      v92 = v24;
      v93 = 2114;
      v94 = v27;
      v28 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_0, oSLogObject, 0, "%{public}@: No account with DSID %{public}@ exists. We'll create a new one.", &v91, 22);

      v11 = &ISWeakLinkedClassForString_ptr;
      if (!v28)
      {
LABEL_27:

        v7 = objc_alloc_init(SSAccount);
        goto LABEL_28;
      }

      oSLogObject = [NSString stringWithCString:v28 encoding:4];
      free(v28);
      v83 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_27;
  }

  if (!v9)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v13 = shouldLog2 | 2;
  }

  else
  {
    v13 = shouldLog2;
  }

  oSLogObject2 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = objc_opt_class();
  v17 = v16;
  v18 = [v90 description];
  v19 = SSHashIfNeeded();
  v91 = 138543618;
  v92 = v16;
  v11 = &ISWeakLinkedClassForString_ptr;
  v93 = 2114;
  v94 = v19;
  v20 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_0, oSLogObject2, 0, "%{public}@: An account with DSID %{public}@ already exists. A merge will take place.", &v91, 22);

  if (v20)
  {
    oSLogObject2 = [NSString stringWithCString:v20 encoding:4];
    free(v20);
    v83 = oSLogObject2;
    SSFileLog();
LABEL_13:
  }

LABEL_28:
  v29 = [parametersCopy objectForKeyedSubscript:{@"email", v83}];
  [v7 setAccountName:v29];

  v30 = [parametersCopy objectForKeyedSubscript:@"altDSID"];
  [v7 setAltDSID:v30];

  [v7 setAuthenticated:1];
  v31 = [parametersCopy objectForKeyedSubscript:@"firstName"];
  [v7 setFirstName:v31];

  v32 = [parametersCopy objectForKeyedSubscript:@"lastName"];
  [v7 setLastName:v32];

  v33 = [parametersCopy objectForKey:@"is-managed-id"];
  v89 = v33;
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v33 BOOLValue];
    if (bOOLValue)
    {
      v35 = ISAppleIDPluginLogConfig(bOOLValue);
      if (!v35)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v37 = shouldLog3 | 2;
      }

      else
      {
        v37 = shouldLog3;
      }

      oSLogObject3 = [v35 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 2;
      }

      if (v39)
      {
        v40 = objc_opt_class();
        v91 = 138543362;
        v92 = v40;
        v41 = v40;
        LODWORD(v86) = 12;
        v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_0, oSLogObject3, 0, "%{public}@: This is a managed account.", &v91, v86);

        if (!v42)
        {
LABEL_42:

          v43 = 1;
          v11 = &ISWeakLinkedClassForString_ptr;
          goto LABEL_44;
        }

        oSLogObject3 = [NSString stringWithCString:v42 encoding:4];
        free(v42);
        v84 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_42;
    }
  }

  v43 = 0;
LABEL_44:
  [v7 setManagedAppleID:{v43, v84}];
  v44 = [parametersCopy objectForKeyedSubscript:@"newCustomer"];
  [v7 setNewCustomer:{objc_msgSend(v44, "BOOLValue")}];

  v45 = [parametersCopy objectForKeyedSubscript:@"strong-token"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v45 = 0;
  }

  v88 = v45;
  [v7 setSecureToken:v45];
  v46 = [parametersCopy objectForKeyedSubscript:@"storefront"];
  v47 = ISAppleIDPluginLogConfig(v46);
  if (!v47)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    v49 = shouldLog4 | 2;
  }

  else
  {
    v49 = shouldLog4;
  }

  oSLogObject4 = [v47 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v51 = v49;
  }

  else
  {
    v51 = v49 & 2;
  }

  if (v51)
  {
    v52 = objc_opt_class();
    v53 = v52;
    v54 = SSHashIfNeeded();
    v91 = 138543618;
    v92 = v52;
    v93 = 2114;
    v94 = v54;
    LODWORD(v86) = 22;
    v55 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_0, oSLogObject4, 0, "%{public}@: Setting up storefront ID: %{public}@", &v91, v86);

    if (!v55)
    {
      goto LABEL_58;
    }

    oSLogObject4 = [v11[92] stringWithCString:v55 encoding:4];
    free(v55);
    v85 = oSLogObject4;
    SSFileLog();
  }

LABEL_58:
  [v7 setStoreFrontIdentifier:v46];
  [v7 setUniqueIdentifier:v90];
  v56 = +[SSAccountStore defaultStore];
  activeAccount = [v56 activeAccount];

  if (activeAccount)
  {
    v87 = v46;
    uniqueIdentifier = [activeAccount uniqueIdentifier];
    uniqueIdentifier2 = [v7 uniqueIdentifier];
    v61 = [uniqueIdentifier isEqualToNumber:uniqueIdentifier2];

    v63 = ISAppleIDPluginLogConfig(v62);
    v64 = v63;
    if (v61)
    {
      if (!v63)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v65) = [v64 shouldLog];
      if ([v64 shouldLogToDisk])
      {
        LODWORD(v65) = v65 | 2;
      }

      oSLogObject5 = [v64 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v65;
      }

      else
      {
        v65 &= 2u;
      }

      if (v65)
      {
        v67 = objc_opt_class();
        v68 = v67;
        accountName = [v7 accountName];
        v70 = SSHashIfNeeded();
        v91 = 138543618;
        v92 = v67;
        v93 = 2114;
        v94 = v70;
        LODWORD(v86) = 22;
        v71 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &dword_0, oSLogObject5, 0, "%{public}@: %{public}@ is already the active account.", &v91, v86);
        goto LABEL_78;
      }

      v75 = 1;
    }

    else
    {
      if (!v63)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v76) = [v64 shouldLog];
      if ([v64 shouldLogToDisk])
      {
        LODWORD(v76) = v76 | 2;
      }

      oSLogObject5 = [v64 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v76;
      }

      else
      {
        v76 &= 2u;
      }

      if (v76)
      {
        v77 = objc_opt_class();
        v78 = v77;
        accountName2 = [v7 accountName];
        v80 = SSHashIfNeeded();
        v91 = 138543618;
        v92 = v77;
        v93 = 2114;
        v94 = v80;
        LODWORD(v86) = 22;
        v74 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_0, oSLogObject5, 0, "%{public}@: There's already an active account. We'll add %{public}@ as inactive.", &v91, v86);

        v75 = 0;
        if (v74)
        {
          goto LABEL_79;
        }

LABEL_89:
        v81 = v89;
        v46 = v87;
        goto LABEL_96;
      }

      v75 = 0;
    }

    v81 = v89;
    goto LABEL_95;
  }

  v64 = ISAppleIDPluginLogConfig(v58);
  if (!v64)
  {
    v64 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v72) = [v64 shouldLog];
  if ([v64 shouldLogToDisk])
  {
    LODWORD(v72) = v72 | 2;
  }

  oSLogObject5 = [v64 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v72 = v72;
  }

  else
  {
    v72 &= 2u;
  }

  if (!v72)
  {
    v75 = 1;
    goto LABEL_91;
  }

  v87 = v46;
  v73 = objc_opt_class();
  v68 = v73;
  accountName = [v7 accountName];
  v70 = SSHashIfNeeded();
  v91 = 138543618;
  v92 = v73;
  v93 = 2114;
  v94 = v70;
  LODWORD(v86) = 22;
  v71 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &dword_0, oSLogObject5, 0, "%{public}@: There's no active account. We'll set %{public}@ as active.", &v91, v86);
LABEL_78:
  v74 = v71;

  v75 = 1;
  if (!v74)
  {
    goto LABEL_89;
  }

LABEL_79:
  v46 = v87;
  oSLogObject5 = [NSString stringWithCString:v74 encoding:4];
  free(v74);
  SSFileLog();
LABEL_91:
  v81 = v89;
LABEL_95:

LABEL_96:
  [v7 setActive:v75];

  return v7;
}

- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier withCookieStorage:(id)storage
{
  stringCopy = string;
  if (stringCopy)
  {
    storageCopy = storage;
    identifierCopy = identifier;
    v10 = ISAppleIDPluginLogConfig(identifierCopy);
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = stringCopy;
      v14 = v20;
      v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_0, oSLogObject, 0, "%{public}@: Setting cookies: %@", &v19, 22);

      if (!v15)
      {
LABEL_14:

        v16 = [[NSDictionary alloc] initWithObjectsAndKeys:{stringCopy, @"Set-Cookie", 0}];
        v17 = [NSURL URLWithString:@"https://itunes.apple.com"];
        v18 = [NSHTTPCookie cookiesWithResponseHeaderFields:v16 forURL:v17];

        [storageCopy setCookies:v18 forUserIdentifier:identifierCopy];
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_setupHomeSharingWithParameters:(id)parameters
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3740;
  block[3] = &unk_8478;
  parametersCopy = parameters;
  v8 = dispatch_semaphore_create(0);
  selfCopy = self;
  v4 = v8;
  v5 = parametersCopy;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_setupiTunesBiometricsWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[MCProfileConnection sharedConnection];
  isPasscodeSet = [v5 isPasscodeSet];

  if (isPasscodeSet)
  {
    manager = [ISWeakLinkedClassForString() manager];
    oSLogObject4 = [manager identities:0];
    if (![oSLogObject4 count])
    {
      oSLogObject3 = ISAppleIDPluginLogConfig(0);
      if (!oSLogObject3)
      {
        oSLogObject3 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [oSLogObject3 shouldLog];
      if ([oSLogObject3 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog;
      }

      oSLogObject = [oSLogObject3 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v34 = 138543362;
        v35 = objc_opt_class();
        v27 = v35;
        v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_0, oSLogObject, 0, "%{public}@: Biometric setup failed for no enrolled identities", &v34, 12);

        if (!v28)
        {
          goto LABEL_51;
        }

        oSLogObject = [NSString stringWithCString:v28 encoding:4];
        free(v28);
        SSFileLog();
      }

      goto LABEL_51;
    }

    v10 = [parametersCopy objectForKey:@"dsid"];
    manager = SSAccountGetUniqueIdentifierFromValue();

    v12 = ISAppleIDPluginLogConfig(v11);
    oSLogObject4 = v12;
    if (manager)
    {
      if (!v12)
      {
        oSLogObject4 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject4 shouldLog];
      if ([oSLogObject4 shouldLogToDisk])
      {
        LODWORD(v14) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v14) = shouldLog2;
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v34 = 138543618;
        v35 = objc_opt_class();
        v36 = 2114;
        v37 = manager;
        v16 = v35;
        v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_0, oSLogObject2, 0, "%{public}@: Attempting to enable biometrics for DSID: %{public}@", &v34, 22);

        if (!v17)
        {
LABEL_16:

          oSLogObject4 = objc_opt_new();
          [oSLogObject4 setBiometricState:2];
          [oSLogObject4 saveIdentityMapForAccountIdentifier:manager];
          [oSLogObject4 registerAccountIdentifier:manager];
          oSLogObject3 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:manager];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_4008;
          v33[3] = &unk_84A0;
          v33[4] = self;
          [oSLogObject3 setResultBlock:v33];
          v19 = +[ISOperationQueue mainQueue];
          [v19 addOperation:oSLogObject3];

LABEL_51:
          goto LABEL_52;
        }

        oSLogObject2 = [NSString stringWithCString:v17 encoding:4];
        free(v17);
        SSFileLog();
      }

      goto LABEL_16;
    }

    if (!v12)
    {
      oSLogObject4 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [oSLogObject4 shouldLog];
    if ([oSLogObject4 shouldLogToDisk])
    {
      LODWORD(v30) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v30) = shouldLog3;
    }

    oSLogObject3 = [oSLogObject4 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (!v30)
    {
      goto LABEL_51;
    }

    v34 = 138543362;
    v35 = objc_opt_class();
    v31 = v35;
    v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_0, oSLogObject3, 0, "%{public}@: Biometric setup failed for no DSID", &v34, 12);

    if (v32)
    {
      oSLogObject3 = [NSString stringWithCString:v32 encoding:4];
      free(v32);
      SSFileLog();
      goto LABEL_51;
    }

LABEL_52:

    goto LABEL_53;
  }

  manager = ISAppleIDPluginLogConfig(v7);
  if (!manager)
  {
    manager = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [manager shouldLog];
  if ([manager shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog4;
  }

  oSLogObject4 = [manager OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_52;
  }

  v34 = 138543362;
  v35 = objc_opt_class();
  v22 = v35;
  v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_0, oSLogObject4, 0, "%{public}@: Biometric setup failed for no device passcode", &v34, 12);

  if (v23)
  {
    oSLogObject4 = [NSString stringWithCString:v23 encoding:4];
    free(v23);
    SSFileLog();
    goto LABEL_52;
  }

LABEL_53:
}

- (void)_setupITunesMatchWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"slot-acquired"];
  if (objc_opt_respondsToSelector())
  {
    if ([v5 BOOLValue])
    {
      v6 = +[ML3MusicLibrary sharedLibrary];
      isLibraryEmpty = [v6 isLibraryEmpty];

      if (isLibraryEmpty)
      {
        v8 = +[SSAccountStore defaultStore];
        activeAccount = [v8 activeAccount];
        uniqueIdentifier = [activeAccount uniqueIdentifier];

        v11 = ISAppleIDPluginLogConfig(v10);
        if (!v11)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject = [v11 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v14 = shouldLog;
        }

        else
        {
          v14 = shouldLog & 2;
        }

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = v15;
          v17 = [uniqueIdentifier description];
          v18 = SSHashIfNeeded();
          *v55 = 138543618;
          *&v55[4] = v15;
          *&v55[12] = 2114;
          *&v55[14] = v18;
          v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_0, oSLogObject, 0, "%{public}@: Loading URL bag for dsID %{public}@.", v55, 22);

          if (v19)
          {
            v20 = [NSString stringWithCString:v19 encoding:4];
            free(v19);
            v43 = v20;
            SSFileLog();
          }
        }

        else
        {
        }

        v46 = [SSURLBagContext contextWithBagType:0];
        if (uniqueIdentifier)
        {
          [v46 setUserIdentifier:uniqueIdentifier];
        }

        v21 = [[SSURLBag alloc] initWithURLBagContext:v46];
        [v21 invalidate];
        *v55 = 0;
        *&v55[8] = v55;
        *&v55[16] = 0x2020000000;
        v56 = 0;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_495C;
        v50[3] = &unk_84C8;
        v50[4] = self;
        v52 = v55;
        v22 = dispatch_semaphore_create(0);
        v51 = v22;
        [v21 loadWithCompletionBlock:v50];
        v23 = dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
        if (*(*&v55[8] + 24) != 1)
        {
          v35 = ISAppleIDPluginLogConfig(v23);
          if (!v35)
          {
            v35 = +[SSLogConfig sharedConfig];
          }

          v24 = v35;
          shouldLog2 = [v35 shouldLog];
          shouldLogToDisk = [v24 shouldLogToDisk];
          oSLogObject2 = [v24 OSLogObject];
          v34 = oSLogObject2;
          if (shouldLogToDisk)
          {
            shouldLog2 |= 2u;
          }

          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v39 = shouldLog2;
          }

          else
          {
            v39 = shouldLog2 & 2;
          }

          if (v39)
          {
            v40 = objc_opt_class();
            v53 = 138543362;
            v54 = v40;
            v41 = v40;
            LODWORD(v44) = 12;
            v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_0, v34, 0, "%{public}@: iCloud Music Library isn't available.", &v53, v44);

            if (!v42)
            {
LABEL_41:

              _Block_object_dispose(v55, 8);
              goto LABEL_42;
            }

            v34 = [NSString stringWithCString:v42 encoding:4];
            free(v42);
            SSFileLog();
          }

LABEL_40:

          goto LABEL_41;
        }

        v24 = objc_alloc_init(HSCloudClient);
        v45 = dispatch_semaphore_create(0);
        v25 = ISAppleIDPluginLogConfig(v45);
        if (!v25)
        {
          v25 = +[SSLogConfig sharedConfig];
        }

        v26 = v25;
        LODWORD(v27) = [v25 shouldLog];
        shouldLogToDisk2 = [v26 shouldLogToDisk];
        oSLogObject3 = [v26 OSLogObject];
        v30 = oSLogObject3;
        if (shouldLogToDisk2)
        {
          LODWORD(v27) = v27 | 2;
        }

        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v27;
        }

        else
        {
          v27 &= 2u;
        }

        if (v27)
        {
          v31 = objc_opt_class();
          v53 = 138543362;
          v54 = v31;
          v32 = v31;
          LODWORD(v44) = 12;
          v33 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_0, v30, 0, "%{public}@: Authenticating for iCloud Music Library.", &v53, v44);

          if (!v33)
          {
LABEL_29:

            v48[0] = _NSConcreteStackBlock;
            v48[1] = 3221225472;
            v48[2] = sub_4B6C;
            v48[3] = &unk_84F0;
            v34 = v45;
            v49 = v34;
            [v24 authenticateWithCompletionHandler:v48];
            dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);

            goto LABEL_40;
          }

          v30 = [NSString stringWithCString:v33 encoding:4];
          free(v33);
          SSFileLog();
        }

        goto LABEL_29;
      }
    }
  }

LABEL_42:
}

@end