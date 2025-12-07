@interface SOKerberosContext
- (NSString)userPrincipalName;
- (SOKerberosContext)initWithRequest:(id)request extensionData:(id)data;
- (void)cancelRequest:(BOOL)request;
- (void)completeRequest;
- (void)completeRequestWithDoNotHandle;
- (void)completeRequestWithError:(id)error;
- (void)completeRequestWithHTTPResponse:(id)response httpBody:(id)body;
- (void)completeRequestWithHTTPResponseHeaders:(id)headers;
- (void)completeRequestWithHeaders:(id)headers;
- (void)finishRequest;
- (void)presentAuthorizationViewControllerWithCompletion:(id)completion;
- (void)setUserName:(id)name;
- (void)startRequest;
- (void)waitForCompletion;
@end

@implementation SOKerberosContext

- (SOKerberosContext)initWithRequest:(id)request extensionData:(id)data
{
  requestCopy = request;
  dataCopy = data;
  v65.receiver = self;
  v65.super_class = SOKerberosContext;
  v9 = [(SOKerberosContext *)&v65 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorizationRequest, request);
    localizedCallerDisplayName = [(ASAuthorizationProviderExtensionAuthorizationRequest *)v10->_authorizationRequest localizedCallerDisplayName];
    callerLocalizedName = v10->_callerLocalizedName;
    v10->_callerLocalizedName = localizedCallerDisplayName;

    realm = [requestCopy realm];
    uppercaseString = [realm uppercaseString];
    realm = v10->_realm;
    v10->_realm = uppercaseString;

    v16 = [requestCopy url];
    host = [v16 host];
    hostName = v10->_hostName;
    v10->_hostName = host;

    objc_storeStrong(&v10->_extensionData, data);
    v19 = objc_alloc_init(SOKerberosExtensionUserData);
    extensionUserData = v10->_extensionUserData;
    v10->_extensionUserData = v19;

    v10->_returnCredentialOnly = 0;
    v21 = dispatch_group_create();
    dispatchGroup = v10->_dispatchGroup;
    v10->_dispatchGroup = v21;

    callerBundleIdentifier = [(ASAuthorizationProviderExtensionAuthorizationRequest *)v10->_authorizationRequest callerBundleIdentifier];
    callerBundleIdentifier = v10->_callerBundleIdentifier;
    v10->_callerBundleIdentifier = callerBundleIdentifier;

    authorizationRequest = [(ASAuthorizationProviderExtensionAuthorizationRequest *)v10->_authorizationRequest authorizationRequest];
    impersonationBundleIdentifier = [authorizationRequest impersonationBundleIdentifier];
    impersonationBundleIdentifier = v10->_impersonationBundleIdentifier;
    v10->_impersonationBundleIdentifier = impersonationBundleIdentifier;

    if ([(NSString *)v10->_impersonationBundleIdentifier isEqualToString:&stru_285206D08])
    {
      v28 = v10->_impersonationBundleIdentifier;
      v10->_impersonationBundleIdentifier = 0;
    }

    v10->_isManagedApp = [requestCopy isCallerManaged];
    *&v10->_attemptedToGetCredsFromKeychain = 0;
    v10->_laContextFailureCount = 0;
    v10->_refreshCredential = 0;
    *&v10->_smartCardNeedsInsert = 0;
    v29 = dispatch_group_create();
    siteCodeGroup = v10->_siteCodeGroup;
    v10->_siteCodeGroup = v29;

    authorizationRequest2 = [requestCopy authorizationRequest];
    auditTokenData = [authorizationRequest2 auditTokenData];
    auditToken = v10->_auditToken;
    v10->_auditToken = auditTokenData;

    v10->_useKerberosPasswordInsteadOfMDMIdentity = 0;
    v34 = [SOKerberosRealmSettings alloc];
    realm2 = [(SOKerberosContext *)v10 realm];
    v36 = [(SOKerberosRealmSettings *)v34 initWithRealm:realm2];
    currentSettings = v10->_currentSettings;
    v10->_currentSettings = v36;

    [(SOKerberosRealmSettings *)v10->_currentSettings startListeningForPlatformSSOTGTChanges];
    v38 = v10->_currentSettings;
    if (v38)
    {
      credentialUUID = [(SOKerberosRealmSettings *)v38 credentialUUID];
      credentialUUID = v10->_credentialUUID;
      v10->_credentialUUID = credentialUUID;

      pkinitPersistentRef = [(SOKerberosRealmSettings *)v10->_currentSettings pkinitPersistentRef];
      pkinitPersistentRef = v10->_pkinitPersistentRef;
      v10->_pkinitPersistentRef = pkinitPersistentRef;

      smartCardTokenID = [(SOKerberosRealmSettings *)v10->_currentSettings smartCardTokenID];
      certificateTokenID = v10->_certificateTokenID;
      v10->_certificateTokenID = smartCardTokenID;

      userPrincipalName = [(SOKerberosRealmSettings *)v10->_currentSettings userPrincipalName];

      if (userPrincipalName)
      {
        v47 = SO_LOG_SOKerberosContext(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosContext initWithRequest:? extensionData:?];
        }

        userPrincipalName2 = [(SOKerberosRealmSettings *)v10->_currentSettings userPrincipalName];
        userPrincipalName = v10->_userPrincipalName;
        v10->_userPrincipalName = userPrincipalName2;

        userName = [(SOKerberosRealmSettings *)v10->_currentSettings userName];
        userName = v10->_userName;
        v10->_userName = userName;

        v10->_userNameIsReadOnly = 1;
      }

      else
      {
        principalName = [dataCopy principalName];

        if (principalName)
        {
          v54 = SO_LOG_SOKerberosContext(v53);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosContext initWithRequest:dataCopy extensionData:?];
          }

          principalName2 = [dataCopy principalName];
          v56 = v10->_userName;
          v10->_userName = principalName2;
        }

        else
        {
          httpHeaders = [requestCopy httpHeaders];
          v58 = [httpHeaders objectForKey:@"user_name"];
          v59 = v58;
          if (v58)
          {
            v60 = SO_LOG_SOKerberosContext(v58);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosContext initWithRequest:extensionData:];
            }

            objc_storeStrong(&v10->_userName, v59);
            v10->_userNameIsReadOnly = 1;
          }
        }
      }

      principalName3 = [dataCopy principalName];

      if (principalName3)
      {
        v63 = SO_LOG_SOKerberosContext(v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosContext initWithRequest:v63 extensionData:?];
        }

        v10->_userNameIsReadOnly = 1;
      }
    }
  }

  return v10;
}

- (NSString)userPrincipalName
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", self->_realm];
  userPrincipalName = self->_userPrincipalName;
  if (userPrincipalName && self->_realm)
  {
    v5 = [(NSString *)userPrincipalName hasSuffix:v3];
    v6 = self->_userPrincipalName;
    if (!v5)
    {
      lowercaseString = [(NSString *)v6 lowercaseString];
      lowercaseString2 = [v3 lowercaseString];
      v9 = [lowercaseString hasSuffix:lowercaseString2];

      if (v9)
      {
        v10 = self->_userPrincipalName;
LABEL_13:
        v13 = [(NSString *)v10 stringByReplacingOccurrencesOfString:v3 withString:v3 options:1 range:0, [(NSString *)v10 length]];
        goto LABEL_17;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = self->_userPrincipalName;
      goto LABEL_16;
    }
  }

  else
  {
    userName = self->_userName;
    if (!userName || !self->_realm)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v12 = [(NSString *)userName hasSuffix:v3];
    v6 = self->_userName;
    if (!v12)
    {
      lowercaseString3 = [(NSString *)v6 lowercaseString];
      lowercaseString4 = [v3 lowercaseString];
      v17 = [lowercaseString3 hasSuffix:lowercaseString4];

      if (v17)
      {
        v10 = self->_userName;
        goto LABEL_13;
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = self->_userName;
LABEL_16:
      v13 = [v18 stringWithFormat:@"%@@%@", v19, self->_realm];
      goto LABEL_17;
    }
  }

  v13 = v6;
LABEL_17:
  v14 = v13;
LABEL_18:

  return v14;
}

- (void)setUserName:(id)name
{
  nameCopy = name;
  if (!self->_userNameIsReadOnly)
  {
    v7 = nameCopy;
    objc_storeStrong(&self->_userName, name);
    userPrincipalName = self->_userPrincipalName;
    self->_userPrincipalName = 0;

    nameCopy = v7;
  }
}

- (void)startRequest
{
  v3 = SO_LOG_SOKerberosContext(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext startRequest];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestStarted = [(SOKerberosContext *)selfCopy requestStarted];
  if (requestStarted)
  {
    dispatchGroup = SO_LOG_SOKerberosContext(requestStarted);
    if (os_log_type_enabled(dispatchGroup, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosContext startRequest];
    }
  }

  else
  {
    [(SOKerberosContext *)selfCopy setRequestStarted:1];
    dispatchGroup = [(SOKerberosContext *)selfCopy dispatchGroup];
    dispatch_group_enter(dispatchGroup);
  }

  objc_sync_exit(selfCopy);
}

- (void)finishRequest
{
  v3 = SO_LOG_SOKerberosContext(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext finishRequest];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestStarted = [(SOKerberosContext *)selfCopy requestStarted];
  if (requestStarted)
  {
    [(SOKerberosContext *)selfCopy setRequestStarted:0];
    dispatchGroup = [(SOKerberosContext *)selfCopy dispatchGroup];
    dispatch_group_leave(dispatchGroup);
  }

  else
  {
    dispatchGroup = SO_LOG_SOKerberosContext(requestStarted);
    if (os_log_type_enabled(dispatchGroup, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosContext finishRequest];
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.KerberosExtension.requestFinished" object:selfCopy];

  objc_sync_exit(selfCopy);
}

- (void)waitForCompletion
{
  v3 = SO_LOG_SOKerberosContext(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext waitForCompletion];
  }

  requestStarted = [(SOKerberosContext *)self requestStarted];
  if (requestStarted)
  {
    dispatchGroup = [(SOKerberosContext *)self dispatchGroup];
    v6 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_group_wait(dispatchGroup, v6);
  }

  v7 = SO_LOG_SOKerberosContext(requestStarted);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext waitForCompletion];
  }
}

- (void)cancelRequest:(BOOL)request
{
  v4 = SO_LOG_SOKerberosContext(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext cancelRequest:];
  }

  [(SOKerberosContext *)self setRequestCancelled:1];
  [(SOKerberosContext *)self finishRequest];
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  [authorizationRequest cancel];
}

- (void)completeRequest
{
  v3 = SO_LOG_SOKerberosContext(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequest];
  }

  [(SOKerberosContext *)self finishRequest];
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  [authorizationRequest complete];
}

- (void)completeRequestWithHeaders:(id)headers
{
  headersCopy = headers;
  v5 = SO_LOG_SOKerberosContext(headersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithHeaders:];
  }

  [(SOKerberosContext *)self finishRequest];
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  [authorizationRequest completeWithHTTPAuthorizationHeaders:headersCopy];
}

- (void)completeRequestWithHTTPResponseHeaders:(id)headers
{
  headersCopy = headers;
  v5 = SO_LOG_SOKerberosContext(headersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithHTTPResponseHeaders:];
  }

  v6 = objc_alloc(MEMORY[0x277CCAA40]);
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  v8 = [authorizationRequest url];
  v9 = [v6 initWithURL:v8 statusCode:200 HTTPVersion:@"HTTP/1.1" headerFields:headersCopy];

  v10 = objc_opt_new();
  [(SOKerberosContext *)self completeRequestWithHTTPResponse:v9 httpBody:v10];
}

- (void)completeRequestWithHTTPResponse:(id)response httpBody:(id)body
{
  bodyCopy = body;
  responseCopy = response;
  v8 = SO_LOG_SOKerberosContext(responseCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithHTTPResponse:httpBody:];
  }

  [(SOKerberosContext *)self finishRequest];
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  [authorizationRequest completeWithHTTPResponse:responseCopy httpBody:bodyCopy];
}

- (void)completeRequestWithError:(id)error
{
  errorCopy = error;
  v5 = SO_LOG_SOKerberosContext(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithError:];
  }

  [(SOKerberosContext *)self finishRequest];
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  [authorizationRequest completeWithError:errorCopy];
}

- (void)completeRequestWithDoNotHandle
{
  v3 = SO_LOG_SOKerberosContext(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext completeRequestWithDoNotHandle];
  }

  [(SOKerberosContext *)self finishRequest];
  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  [authorizationRequest doNotHandle];
}

- (void)presentAuthorizationViewControllerWithCompletion:(id)completion
{
  v10[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = SO_LOG_SOKerberosContext(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosContext presentAuthorizationViewControllerWithCompletion:];
  }

  authorizationRequest = [(SOKerberosContext *)self authorizationRequest];
  v6AuthorizationRequest = [authorizationRequest authorizationRequest];
  v9 = &unk_28520B9A0;
  v10[0] = &unk_28520B9A0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v6AuthorizationRequest presentAuthorizationViewControllerWithHints:v8 completion:completionCopy];
}

- (void)initWithRequest:(id *)a1 extensionData:.cold.1(id *a1)
{
  v1 = [*a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_24006C000, v2, v3, "user principal name is set in saved settings: %@", v4, v5, v6, v7);
}

- (void)initWithRequest:(void *)a1 extensionData:.cold.2(void *a1)
{
  v1 = [a1 principalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_24006C000, v2, v3, "user name is set in extensiondata: %@", v4, v5, v6, v7);
}

@end