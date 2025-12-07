@interface SODaemon
- (BOOL)_doAKshouldProcessURL:(id)l;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SODaemon)initWithXPCConnection:(id)connection;
- (void)_doGetAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)_doPerformAuthorizationWithRequestParameters:(id)parameters profile:(id)profile completion:(id)completion;
- (void)_extensionCleanup;
- (void)_performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)_updateCallerPropertiesFromAuditTokenInParameters:(id)parameters;
- (void)_updateUsageOfInternalExtensionsInParameters:(id)parameters;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)beginAuthorizationWithCompletion:(id)completion;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)configurationWithCompletion:(id)completion;
- (void)connectionInvalidated;
- (void)debugHintsWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion;
- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion;
- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)realmsWithCompletion:(id)completion;
@end

@implementation SODaemon

- (SODaemon)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100001020(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SODaemon initWithXPCConnection:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = SODaemon;
  v6 = [(SODaemon *)&v8 init];
  if (v6)
  {
    if (qword_100015E28 != -1)
    {
      sub_100008A04();
    }

    objc_storeWeak(&v6->_xpcConnection, connectionCopy);
  }

  return v6;
}

- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v10 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316163;
    v12 = "[SODaemon getAuthorizationHintsWithURL:responseCode:completion:]";
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2117;
    v16 = lCopy;
    v17 = 1024;
    codeCopy = code;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@, responseCode: %d on %@", &v11, 0x30u);
  }

  [(SODaemon *)self _doGetAuthorizationHintsWithURL:lCopy responseCode:code completion:completionCopy];
}

- (void)_doGetAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v10 = [(SODaemon *)self _doAKshouldProcessURL:lCopy];
  if (v10)
  {
    v11 = +[SOExtensionManager sharedInstance];
    loadedInternalExtension = [v11 loadedInternalExtension];
  }

  else
  {
    v13 = +[SOConfigurationHost defaultManager];
    v11 = [v13 profileForURL:lCopy responseCode:code];

    if (!v11)
    {
      if (!completionCopy)
      {
LABEL_17:
        loadedInternalExtension = 0;
        goto LABEL_18;
      }

      v23 = [sub_100004B1C() invalidURLError:lCopy];
LABEL_16:
      v24 = v23;
      completionCopy[2](completionCopy, 0, v23);

      goto LABEL_17;
    }

    v14 = +[SOExtensionManager sharedInstance];
    extensionBundleIdentifier = [v11 extensionBundleIdentifier];
    loadedInternalExtension = [v14 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier];
  }

  if (!completionCopy)
  {
    goto LABEL_18;
  }

  if (!loadedInternalExtension)
  {
    v21 = sub_100004B1C();
    if (v10)
    {
      v22 = @"No AppSSO IdP extension found (internal extension)";
    }

    else
    {
      v22 = @"No AppSSO IdP extension found";
    }

    v23 = [v21 internalErrorWithMessage:v22];
    goto LABEL_16;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v16 = qword_100015E58;
  v29 = qword_100015E58;
  if (!qword_100015E58)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100008088;
    v25[3] = &unk_100010390;
    v25[4] = &v26;
    sub_100008088(v25);
    v16 = v27[3];
  }

  v17 = v16;
  _Block_object_dispose(&v26, 8);
  v18 = [v16 alloc];
  localizedExtensionDisplayName = [loadedInternalExtension localizedExtensionDisplayName];
  v20 = [v18 initWithLocalizedExtensionBundleDisplayName:localizedExtensionDisplayName];

  (completionCopy)[2](completionCopy, v20, 0);
LABEL_18:
}

- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v51 = "[SODaemon performAuthorizationWithRequestParameters:completion:]";
    v52 = 2114;
    v53 = parametersCopy;
    v54 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  v9 = [[SOAuthorizationRequestParameters alloc] initWithAuthorizationRequestParametersCore:parametersCopy];
  [(SODaemon *)self _updateUsageOfInternalExtensionsInParameters:v9];
  [(SODaemon *)self _updateCallerPropertiesFromAuditTokenInParameters:v9];
  authorizationOptions = [v9 authorizationOptions];
  v11 = [authorizationOptions objectForKeyedSubscript:SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier];

  if ([v9 useInternalExtensions])
  {
    v12 = +[SOExtensionManager internalExtensionBundleIdentifier];
    requestQueueIdentifier = self->_requestQueueIdentifier;
    self->_requestQueueIdentifier = v12;
  }

  else if ([v11 length])
  {
    objc_storeStrong(&self->_requestQueueIdentifier, v11);
  }

  else
  {
    v33 = +[SOConfigurationHost defaultManager];
    v34 = [v9 url];
    callerBundleIdentifier2 = [v33 profileForURL:v34 responseCode:{objc_msgSend(v9, "responseCode")}];

    if (!callerBundleIdentifier2)
    {
      if (!completionCopy)
      {
        goto LABEL_43;
      }

      v44 = sub_100004B1C();
      v30 = [v9 url];
      v45 = [v44 invalidURLError:v30];
      completionCopy[2](completionCopy, 0, v45);

      goto LABEL_42;
    }

    extensionBundleIdentifier = [callerBundleIdentifier2 extensionBundleIdentifier];
    v36 = self->_requestQueueIdentifier;
    self->_requestQueueIdentifier = extensionBundleIdentifier;

    if (![(NSString *)self->_requestQueueIdentifier length])
    {
      if (!completionCopy)
      {
        goto LABEL_43;
      }

      v43 = [sub_100004B1C() parameterErrorWithMessage:@"profile has no extension bundle identifier"];
      goto LABEL_41;
    }
  }

  requestedOperation = [v9 requestedOperation];
  v15 = [requestedOperation isEqualToString:SOAuthorizationOperationFetchNetworkCredentials];

  if (!v15 || (v16 = sub_10000521C(), v17 = objc_loadWeakRetained(&self->_xpcConnection), LOBYTE(v16) = [v16 checkEntitlementFromXPC:v17 entitlement:@"com.apple.private.AppSSO.FetchNetworkCredentials"], v17, (v16 & 1) != 0))
  {
    if ([v11 length] || (objc_msgSend(v9, "useInternalExtensions") & 1) != 0)
    {
LABEL_11:
      impersonationBundleIdentifier = [v9 impersonationBundleIdentifier];
      if (!impersonationBundleIdentifier || (v19 = impersonationBundleIdentifier, v20 = sub_10000521C(), WeakRetained = objc_loadWeakRetained(&self->_xpcConnection), LOBYTE(v20) = [v20 checkEntitlementFromXPC:WeakRetained entitlement:@"com.apple.private.network.socket-delegate"], WeakRetained, v19, (v20 & 1) != 0))
      {
        v22 = +[SOExtensionManager sharedInstance];
        v23 = [v22 loadedExtensionWithBundleIdentifier:self->_requestQueueIdentifier];
        extensionRequestsMode = [v23 extensionRequestsMode];

        v26 = sub_100001020(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_100008A40(&self->_requestQueueIdentifier, extensionRequestsMode);
        }

        if (extensionRequestsMode == 2)
        {
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000052FC;
          v48[3] = &unk_100010638;
          v49 = completionCopy;
          [(SODaemon *)self _performAuthorizationWithRequestParameters:v9 completion:v48];
          callerBundleIdentifier2 = v49;
LABEL_43:

          goto LABEL_44;
        }

        callerBundleIdentifier2 = [[SORequestQueueItem alloc] initWithService:self requestParameters:v9 completionBlock:completionCopy];
        v30 = [SORequestQueue requestQueueWithIdentifier:self->_requestQueueIdentifier];
        processItemBlock = [v30 processItemBlock];

        if (!processItemBlock)
        {
          v32 = +[SODaemon _processRequestBlock];
          [v30 setProcessItemBlock:v32];
        }

        [v30 enqueueRequest:callerBundleIdentifier2];
LABEL_42:

        goto LABEL_43;
      }

      if (completionCopy)
      {
        v28 = sub_100004B1C();
        v29 = @"com.apple.private.network.socket-delegate";
        goto LABEL_27;
      }

      goto LABEL_44;
    }

    v37 = +[SOConfigurationHost defaultManager];
    v38 = [v9 url];
    responseCode = [v9 responseCode];
    callerBundleIdentifier = [v9 callerBundleIdentifier];
    v41 = [v37 willHandleURL:v38 responseCode:responseCode callerBundleIdentifier:callerBundleIdentifier];

    if (v41 == 3)
    {
      if (!completionCopy)
      {
        goto LABEL_44;
      }

      v47 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 callerBundleIdentifier];
      v43 = [v47 deniedBundleIdentifier:callerBundleIdentifier2];
    }

    else if (v41 == 2)
    {
      if (!completionCopy)
      {
        goto LABEL_44;
      }

      v46 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 callerBundleIdentifier];
      v43 = [v46 doNotHandleBreakingRecursionWithCallerBundleIdentifier:callerBundleIdentifier2];
    }

    else
    {
      if (v41 != 1)
      {
        goto LABEL_11;
      }

      if (!completionCopy)
      {
        goto LABEL_44;
      }

      v42 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 url];
      v43 = [v42 invalidURLError:callerBundleIdentifier2];
    }

LABEL_41:
    v30 = v43;
    completionCopy[2](completionCopy, 0, v43);
    goto LABEL_42;
  }

  if (completionCopy)
  {
    v28 = sub_100004B1C();
    v29 = @"com.apple.private.AppSSO.FetchNetworkCredentials";
LABEL_27:
    callerBundleIdentifier2 = [v28 missingEntitlementError:v29];
    completionCopy[2](completionCopy, 0, callerBundleIdentifier2);
    goto LABEL_43;
  }

LABEL_44:
}

- (void)_performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[SODaemon _performAuthorizationWithRequestParameters:completion:]";
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v24, 0x16u);
  }

  if ([parametersCopy useInternalExtensions])
  {
    v9 = 0;
LABEL_12:
    [(SODaemon *)self _doPerformAuthorizationWithRequestParameters:parametersCopy profile:v9 completion:completionCopy];
    v12 = v9;
    goto LABEL_13;
  }

  authorizationOptions = [parametersCopy authorizationOptions];
  v11 = SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier;
  v12 = [authorizationOptions objectForKeyedSubscript:SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier];

  if (v12)
  {
    authorizationOptions2 = [parametersCopy authorizationOptions];
    v14 = [authorizationOptions2 mutableCopy];

    [v14 removeObjectForKey:v11];
    [parametersCopy setAuthorizationOptions:v14];
  }

  v15 = [v12 length];
  v16 = +[SOConfigurationHost defaultManager];
  v17 = v16;
  if (v15)
  {
    v9 = [v16 removedProfileForExtensionBundleIdentifier:v12];
  }

  else
  {
    v18 = [parametersCopy url];
    v9 = [v17 profileForURL:v18 responseCode:{objc_msgSend(parametersCopy, "responseCode")}];
  }

  if (v9)
  {
    extensionData = [v9 extensionData];
    [parametersCopy setExtensionData:extensionData];

    realm = [v9 realm];
    [parametersCopy setRealm:realm];

    goto LABEL_12;
  }

  if (completionCopy)
  {
    v21 = sub_100004B1C();
    v22 = [parametersCopy url];
    v23 = [v21 invalidURLError:v22];
    completionCopy[2](completionCopy, 0, v23);
  }

LABEL_13:
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 136315650;
    v46 = "[SODaemon beginAuthorizationWithRequestParameters:completion:]";
    v47 = 2112;
    v48 = parametersCopy;
    v49 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@ on %@", &v45, 0x20u);
  }

  v9 = [[SOAuthorizationRequestParameters alloc] initWithAuthorizationRequestParametersCore:parametersCopy];
  [(SODaemon *)self _updateUsageOfInternalExtensionsInParameters:v9];
  [(SODaemon *)self _updateCallerPropertiesFromAuditTokenInParameters:v9];
  requestedOperation = [v9 requestedOperation];
  v11 = [requestedOperation isEqualToString:SOAuthorizationOperationFetchNetworkCredentials];

  if (v11)
  {
    v12 = sub_10000521C();
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    LOBYTE(v12) = [v12 checkEntitlementFromXPC:WeakRetained entitlement:@"com.apple.private.AppSSO.FetchNetworkCredentials"];

    if ((v12 & 1) == 0)
    {
      if (completionCopy)
      {
        callerBundleIdentifier2 = [sub_100004B1C() missingEntitlementError:@"com.apple.private.AppSSO.FetchNetworkCredentials"];
        (*(completionCopy + 2))(completionCopy, 0, 0, callerBundleIdentifier2);
LABEL_34:
        loadedInternalExtension = 0;
        v16 = 0;
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  if (([v9 useInternalExtensions] & 1) == 0)
  {
    v17 = +[SOConfigurationHost defaultManager];
    v18 = [v9 url];
    responseCode = [v9 responseCode];
    callerBundleIdentifier = [v9 callerBundleIdentifier];
    v21 = [v17 willHandleURL:v18 responseCode:responseCode callerBundleIdentifier:callerBundleIdentifier];

    if (v21 == 3)
    {
      if (completionCopy)
      {
        v43 = sub_100004B1C();
        callerBundleIdentifier2 = [v9 callerBundleIdentifier];
        v41 = [v43 deniedBundleIdentifier:callerBundleIdentifier2];
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    if (v21 == 2)
    {
      if (completionCopy)
      {
        v42 = sub_100004B1C();
        callerBundleIdentifier2 = [v9 callerBundleIdentifier];
        v41 = [v42 doNotHandleBreakingRecursionWithCallerBundleIdentifier:callerBundleIdentifier2];
        goto LABEL_33;
      }

LABEL_36:
      loadedInternalExtension = 0;
      v16 = 0;
      goto LABEL_37;
    }

    if (v21 == 1)
    {
      goto LABEL_25;
    }
  }

  if ([v9 useInternalExtensions])
  {
    v14 = +[SOExtensionManager sharedInstance];
    loadedInternalExtension = [v14 loadedInternalExtension];
    v16 = 0;
    goto LABEL_16;
  }

  v23 = +[SOConfigurationHost defaultManager];
  v24 = [v9 url];
  v16 = [v23 profileForURL:v24 responseCode:{objc_msgSend(v9, "responseCode")}];

  if (!v16)
  {
LABEL_25:
    if (completionCopy)
    {
      v40 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 url];
      v41 = [v40 invalidURLError:callerBundleIdentifier2];
LABEL_33:
      v44 = v41;
      (*(completionCopy + 2))(completionCopy, 0, 0, v41);

      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v14 = +[SOExtensionManager sharedInstance];
  extensionBundleIdentifier = [v16 extensionBundleIdentifier];
  loadedInternalExtension = [v14 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier];

LABEL_16:
  v27 = sub_100001020(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    localizedExtensionDisplayName = [loadedInternalExtension localizedExtensionDisplayName];
    v45 = 138543362;
    v46 = localizedExtensionDisplayName;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", &v45, 0xCu);
  }

  if (!loadedInternalExtension)
  {
    if (!completionCopy)
    {
      loadedInternalExtension = 0;
      goto LABEL_37;
    }

    callerBundleIdentifier2 = [sub_100004B1C() internalErrorWithMessage:@"No AppSSO IdP extension found"];
    (*(completionCopy + 2))(completionCopy, 0, 0, callerBundleIdentifier2);
    loadedInternalExtension = 0;
    goto LABEL_35;
  }

  impersonationBundleIdentifier = [v9 impersonationBundleIdentifier];
  if (impersonationBundleIdentifier)
  {
    v30 = impersonationBundleIdentifier;
    v31 = sub_10000521C();
    v32 = objc_loadWeakRetained(&self->_xpcConnection);
    LOBYTE(v31) = [v31 checkEntitlementFromXPC:v32 entitlement:@"com.apple.private.network.socket-delegate"];

    if ((v31 & 1) == 0)
    {
      if (!completionCopy)
      {
        goto LABEL_37;
      }

      callerBundleIdentifier2 = [sub_100004B1C() missingEntitlementError:@"com.apple.private.network.socket-delegate"];
      (*(completionCopy + 2))(completionCopy, 0, 0, callerBundleIdentifier2);
      goto LABEL_35;
    }
  }

  objc_storeStrong(&self->_requestParameters, v9);
  extensionData = [v16 extensionData];
  [(SOAuthorizationRequestParameters *)self->_requestParameters setExtensionData:extensionData];

  realm = [v16 realm];
  [(SOAuthorizationRequestParameters *)self->_requestParameters setRealm:realm];

  v35 = +[NSXPCListener anonymousListener];
  p_extensionXpcListener = &self->_extensionXpcListener;
  extensionXpcListener = self->_extensionXpcListener;
  self->_extensionXpcListener = v35;

  [(NSXPCListener *)self->_extensionXpcListener setDelegate:self];
  v38 = sub_100001020([(NSXPCListener *)self->_extensionXpcListener resume]);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_100008AEC(loadedInternalExtension, p_extensionXpcListener);
  }

  if (completionCopy)
  {
    callerBundleIdentifier2 = [loadedInternalExtension extensionBundleIdentifier];
    endpoint = [(NSXPCListener *)*p_extensionXpcListener endpoint];
    (*(completionCopy + 2))(completionCopy, callerBundleIdentifier2, endpoint, 0);

LABEL_35:
  }

LABEL_37:
}

- (void)_doPerformAuthorizationWithRequestParameters:(id)parameters profile:(id)profile completion:(id)completion
{
  parametersCopy = parameters;
  profileCopy = profile;
  completionCopy = completion;
  v11 = objc_retainBlock(completionCopy);
  authenticateCompletion = self->_authenticateCompletion;
  self->_authenticateCompletion = v11;

  if ([parametersCopy isUserInteractionEnabled])
  {
    v13 = objc_opt_new();
    daemonUIManager = self->_daemonUIManager;
    self->_daemonUIManager = v13;

    [(SODaemonUIManager *)self->_daemonUIManager setDelegate:self];
    v15 = self->_daemonUIManager;
    v32 = 0;
    v16 = [(SODaemonUIManager *)v15 beginAuthorizationWithRequestParameters:parametersCopy profile:profileCopy error:&v32];
    identifier = v32;
    if ((v16 & 1) == 0)
    {
      v18 = self->_authenticateCompletion;
      self->_authenticateCompletion = 0;

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, identifier);
      }
    }

    goto LABEL_13;
  }

  useInternalExtensions = [parametersCopy useInternalExtensions];
  v20 = +[SOExtensionManager sharedInstance];
  v21 = v20;
  if (useInternalExtensions)
  {
    loadInternalExtension = [v20 loadInternalExtension];
    extension = self->_extension;
    self->_extension = loadInternalExtension;
  }

  else
  {
    extension = [profileCopy extensionBundleIdentifier];
    v24 = [v21 loadExtensionWithBundleIdentifier:extension];
    v25 = self->_extension;
    self->_extension = v24;
  }

  v27 = sub_100001020(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    localizedExtensionDisplayName = [(SOExtension *)self->_extension localizedExtensionDisplayName];
    *buf = 138543362;
    v36 = localizedExtensionDisplayName;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", buf, 0xCu);
  }

  v29 = self->_extension;
  identifier = [parametersCopy identifier];
  if (!v29)
  {
    v31 = [sub_100004B1C() internalErrorWithMessage:@"No active AppSSO IdP extension"];
    [(SODaemon *)self authorization:identifier didCompleteWithCredential:0 error:v31];

LABEL_13:
    goto LABEL_14;
  }

  [(SOExtension *)v29 saveDelegate:self forRequestIdentifier:identifier];

  v30 = self->_extension;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100005E90;
  v33[3] = &unk_100010660;
  v33[4] = self;
  v34 = parametersCopy;
  [(SOExtension *)v30 setupNonUISessionWithCompletion:v33];

LABEL_14:
}

- (BOOL)_doAKshouldProcessURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    lCopy = [AKAuthorizationController shouldProcessURL:lCopy];
    v6 = lCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100001020(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[SODaemon _doAKshouldProcessURL:]";
    v12 = 2160;
    v9 = @"NO";
    v13 = 1752392040;
    v14 = 2117;
    v10 = 136316163;
    if (v6)
    {
      v9 = @"YES";
    }

    v15 = v5;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s URL = %{sensitive, mask.hash}@, result = %@ on %@", &v10, 0x34u);
  }

  return v6;
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SODaemon cancelAuthorization:completion:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extension = self->_extension;
  if (extension)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100006464;
    v16[3] = &unk_100010688;
    v16[4] = self;
    v17 = authorizationCopy;
    v18 = completionCopy;
    [(SOExtension *)extension cancelAuthorization:v17 completion:v16];
  }

  else
  {
    daemonUIManager = self->_daemonUIManager;
    v15 = 0;
    v11 = [(SODaemonUIManager *)daemonUIManager cancelAuthorization:authorizationCopy error:&v15];
    v12 = v15;
    if (!v11 && self->_requestQueueIdentifier)
    {
      v13 = [SORequestQueue requestQueueWithIdentifier:?];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000064CC;
      v14[3] = &unk_1000106B0;
      v14[4] = self;
      [v13 removeRequestWithIdentifier:authorizationCopy block:v14];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v11, v12);
    }
  }
}

- (void)configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SODaemon configurationWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = +[SOConfigurationHost defaultManager];
  v9 = 0;
  v7 = [v6 configurationForClientWithError:&v9];
  v8 = v9;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v7, v8);
  }
}

- (void)realmsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SODaemon realmsWithCompletion:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = +[SOConfigurationHost defaultManager];
  realms = [v6 realms];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, realms, 0);
  }
}

- (void)debugHintsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SODaemon debugHintsWithCompletion:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v6 = +[SODebugHints sharedInstance];
  [v6 debugHintsWithCompletion:completionCopy];
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requestQueueIdentifier = self->_requestQueueIdentifier;
    extension = self->_extension;
    *buf = 136315906;
    v30 = "[SODaemon finishAuthorization:completion:]";
    v31 = 2114;
    v32 = extension;
    v33 = 2114;
    v34 = requestQueueIdentifier;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@, queue = %{public}@ on %@", buf, 0x2Au);
  }

  [(SOExtension *)self->_extension removeDelegateForRequestIdentifier:authorizationCopy];
  if (self->_requestQueueIdentifier)
  {
    v11 = [SORequestQueue requestQueueWithIdentifier:?];
  }

  else
  {
    v11 = 0;
  }

  daemonUIManager = self->_extension;
  if (daemonUIManager)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100006AB0;
    v26[3] = &unk_1000106D8;
    v13 = v27;
    v27[0] = v11;
    v27[1] = self;
    v14 = &v28;
    v28 = completionCopy;
    v15 = completionCopy;
    v16 = v11;
    v17 = v26;
  }

  else
  {
    daemonUIManager = self->_daemonUIManager;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100006B6C;
    v23 = &unk_1000106D8;
    v13 = v24;
    v24[0] = v11;
    v24[1] = self;
    v14 = &v25;
    v25 = completionCopy;
    v18 = completionCopy;
    v19 = v11;
    v17 = &v20;
  }

  [daemonUIManager finishAuthorization:authorizationCopy completion:{v17, v20, v21, v22, v23}];
}

- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 136315394;
    *&v20[4] = "[SODaemon isExtensionProcessWithAuditToken:completion:]";
    *&v20[12] = 2112;
    *&v20[14] = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", v20, 0x16u);
  }

  v8 = sub_10000521C();
  v9 = *&token->var0[4];
  *v20 = *token->var0;
  *&v20[16] = v9;
  v10 = [v8 pidFromAuditToken:v20];
  v11 = sub_10000521C();
  v12 = *&token->var0[4];
  *v20 = *token->var0;
  *&v20[16] = v12;
  v13 = [v11 bundleIdentifierFromAuditToken:v20];
  v14 = v13;
  if (v13)
  {
    v15 = +[SOExtensionManager sharedInstance];
    v16 = [v15 loadedExtensionWithBundleIdentifier:v14];
    v17 = v16 != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100001020(v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    *v20 = 138478339;
    *&v20[4] = v14;
    if (v17)
    {
      v19 = @"YES";
    }

    *&v20[12] = 1024;
    *&v20[14] = v10;
    *&v20[18] = 2114;
    *&v20[20] = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{private}@(%u) isExtensionProcess = %{public}@", v20, 0x1Cu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17, 0);
  }
}

- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = sub_100001020(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SODaemon isConfigurationActiveForExtensionIdentifier:completion:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = +[SOConfigurationHost defaultManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006FE0;
  v11[3] = &unk_100010740;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 isConfigurationActiveForExtensionIdentifier:identifierCopy runningAsAgent:1 completion:v11];
}

- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  v11 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_retainBlock(self->_authenticateCompletion);
    *buf = 136315650;
    *&buf[4] = "[SODaemon authorizationDidCompleteWithCredential:error:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s authenticateCompletion = %@ on %@", buf, 0x20u);
  }

  authenticateCompletion = self->_authenticateCompletion;
  if (authenticateCompletion)
  {
    if (credentialCopy)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v14 = qword_100015E68;
      v23 = qword_100015E68;
      if (!qword_100015E68)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100008138;
        selfCopy = &unk_100010390;
        v26 = &v20;
        sub_100008138(buf);
        v14 = v21[3];
      }

      v15 = v14;
      _Block_object_dispose(&v20, 8);
      v16 = [v14 alloc];
      v17 = [v16 initWithAuthorizationCredential:{credentialCopy, v20}];
      authenticateCompletion = self->_authenticateCompletion;
    }

    else
    {
      v17 = 0;
    }

    authenticateCompletion[2](authenticateCompletion, v17, errorCopy);
    v19 = self->_authenticateCompletion;
    self->_authenticateCompletion = 0;

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_15;
  }

  v18 = sub_100001020(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "authorization already finished => ignoring complete request", buf, 2u);
  }

  if (completionCopy)
  {
    v17 = [sub_100004B1C() silentInternalErrorWithMessage:@"authorization already finished => ignoring complete request"];
    (completionCopy)[2](completionCopy, 0, v17);
LABEL_15:
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100001020(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SODaemon listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v9 = qword_100015E70;
  v19 = qword_100015E70;
  if (!qword_100015E70)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100008190;
    v21 = &unk_100010390;
    v22 = &v16;
    sub_100008190(buf);
    v9 = v17[3];
  }

  v10 = v9;
  _Block_object_dispose(&v16, 8);
  v11 = [v9 interfaceWithInternalProtocol:&OBJC_PROTOCOL___SORemoteExtensionServiceProtocol];
  [connectionCopy setExportedInterface:v11];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007518;
  v14[3] = &unk_100010328;
  objc_copyWeak(&v15, buf);
  [(SODaemon *)self setInvalidationHandler:v14];
  invalidationHandler = [(SODaemon *)self invalidationHandler];
  [connectionCopy setInvalidationHandler:invalidationHandler];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return 1;
}

- (void)connectionInvalidated
{
  v3 = sub_100001020(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SODaemon connectionInvalidated]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)beginAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SODaemon beginAuthorizationWithCompletion:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, self->_requestParameters, 0);
  }
}

- (void)_updateUsageOfInternalExtensionsInParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([parametersCopy useInternalExtensions])
  {
    v4 = [parametersCopy url];
    [parametersCopy setUseInternalExtensions:{-[SODaemon _doAKshouldProcessURL:](self, "_doAKshouldProcessURL:", v4)}];
  }
}

- (void)_updateCallerPropertiesFromAuditTokenInParameters:(id)parameters
{
  parametersCopy = parameters;
  v28 = 0u;
  v29 = 0u;
  auditTokenData = [parametersCopy auditTokenData];

  if (!auditTokenData || (v6 = sub_10000521C(), [parametersCopy auditTokenData], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "auditTokenFromData:auditToken:", v7, &v28), v7, (v6 & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      objc_msgSend_auditToken(WeakRetained);
    }

    else
    {
      memset(buf, 0, 32);
    }

    v28 = *buf;
    v29 = *&buf[16];

    v10 = [NSData dataWithBytes:&v28 length:32];
    [parametersCopy setAuditTokenData:v10];
  }

  v11 = sub_10000521C();
  *buf = v28;
  *&buf[16] = v29;
  v12 = [v11 bundleIdentifierFromAuditToken:buf];
  [parametersCopy setCallerBundleIdentifier:v12];

  v13 = sub_10000521C();
  *buf = v28;
  *&buf[16] = v29;
  v14 = [v13 pidFromAuditToken:buf];
  callerBundleIdentifier = [parametersCopy callerBundleIdentifier];
  [parametersCopy setCallerManaged:{+[SODaemonUtils isAppManagedWithBundleIdentifier:](SODaemonUtils, "isAppManagedWithBundleIdentifier:", callerBundleIdentifier)}];

  v16 = sub_10000521C();
  *buf = v28;
  *&buf[16] = v29;
  v17 = [v16 teamIdentifierFromAuditToken:buf];
  [parametersCopy setCallerTeamIdentifier:v17];

  callerBundleIdentifier2 = [parametersCopy callerBundleIdentifier];
  v19 = [SODaemonUtils localizedAppNameWithBundleIdentifier:callerBundleIdentifier2 pid:v14];
  [parametersCopy setLocalizedCallerDisplayName:v19];

  v21 = sub_100001020(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    auditTokenData2 = [parametersCopy auditTokenData];
    if (auditTokenData2)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    callerBundleIdentifier3 = [parametersCopy callerBundleIdentifier];
    if ([parametersCopy isCallerManaged])
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    callerTeamIdentifier = [parametersCopy callerTeamIdentifier];
    localizedCallerDisplayName = [parametersCopy localizedCallerDisplayName];
    *buf = 67110402;
    *&buf[4] = v14;
    *&buf[8] = 2112;
    *&buf[10] = v23;
    *&buf[18] = 2112;
    *&buf[20] = callerBundleIdentifier3;
    *&buf[28] = 2112;
    *&buf[30] = v25;
    v31 = 2112;
    v32 = callerTeamIdentifier;
    v33 = 2112;
    v34 = localizedCallerDisplayName;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "PID: %u has auditToken: %@, callerBundleIdentifier: %@, callerManaged: %@, callerTeamIdentifier: %@, localizedCallerDisplayName: %@", buf, 0x3Au);
  }
}

- (void)_extensionCleanup
{
  v3 = sub_100001020(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v7 = 136315650;
    v8 = "[SODaemon _extensionCleanup]";
    v9 = 2114;
    v10 = extension;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@ on %@", &v7, 0x20u);
  }

  v5 = self->_extension;
  if (v5)
  {
    [(SOExtension *)v5 unload];
    v6 = self->_extension;
    self->_extension = 0;
  }
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  v9 = sub_100001020(errorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v12 = "[SODaemon authorization:didCompleteWithCredential:error:]";
    v13 = 2114;
    v14 = credentialCopy;
    v15 = 2114;
    v16 = errorCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s credential: %{public}@, %{public}@ on %@", buf, 0x2Au);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007CA4;
  v10[3] = &unk_100010768;
  v10[4] = self;
  [(SODaemon *)self authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:v10];
}

@end