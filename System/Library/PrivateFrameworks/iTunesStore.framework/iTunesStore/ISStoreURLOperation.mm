@interface ISStoreURLOperation
+ (BOOL)_operationWaitsForPurchases:(id)purchases;
+ (id)_authKitSession;
+ (id)_restrictionsHeaderValue;
+ (id)_ssBag_copyExtraHeadersForURL:(id)l bag:(id)bag;
+ (id)_ssBag_copyHeaderPatternsFromBag:(id)bag;
+ (id)_storeFrontIdentifierForAccount:(id)account;
+ (id)itemPingOperationWithIdentifier:(unint64_t)identifier urlBagKey:(id)key;
+ (id)pingOperationWithUrl:(id)url;
+ (id)propertyListOperationWithURLBagKey:(id)key;
+ (void)_addAccountDSID:(id)d toRequest:(id)request;
+ (void)_addPrimaryiCloudDSIDToRequest:(id)request;
+ (void)_addiTunesStoreHeadersToRequest:(id)request withAccount:(id)account appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)identifier extraHeaders:(id)extraHeaders storefrontSuffix:(id)suffix;
+ (void)_addiTunesStoreHeadersToRequest:(id)request withSSBag:(id)bag account:(id)account appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)identifier;
+ (void)_addiTunesStoreHeadersToRequest:(id)request withSSBag:(id)bag accountIdentifier:(id)identifier appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)bundleIdentifier;
+ (void)_addiTunesStoreHeadersToRequest:(id)request withURLBag:(id)bag account:(id)account appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)identifier;
+ (void)_addiTunesStoreHeadersToRequest:(id)request withURLBag:(id)bag accountIdentifier:(id)identifier appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)bundleIdentifier;
+ (void)_appendStorefront:(id)storefront toRequestURL:(id)l;
+ (void)_handleResponseHeaders:(id)headers response:(id)response request:(id)request account:(id)account performsMachineDataActions:(BOOL)actions shouldRetry:(BOOL *)retry;
+ (void)_performMachineDataRequest:(id)request requestProperties:(id)properties completion:(id)completion;
+ (void)addITunesStoreHeadersToRequest:(id)request withAccountIdentifier:(id)identifier;
+ (void)handleITunesStoreResponseHeaders:(id)headers request:(id)request withAccountIdentifier:(id)identifier shouldRetry:(BOOL *)retry;
- (BOOL)_authenticateWithContext:(id)context error:(id *)error;
- (BOOL)_canSendTokenToURL:(id)l;
- (BOOL)_isErrorTokenError:(id)error;
- (BOOL)_performMachineDataRequest:(id)request;
- (BOOL)_processResponseData:(id)data error:(id *)error;
- (BOOL)_shouldRetryForAbsintheWithResponse:(id)response;
- (BOOL)_shouldRetryForTouchIDChallengeWithError:(id)error;
- (BOOL)_ssBag_shouldSendGUIDForURL:(id)l withBag:(id)bag;
- (BOOL)canSendGUIDParameter;
- (BOOL)handleRedirectFromDataProvider:(id)provider error:(id *)error;
- (BOOL)ignorePreexistingSecureToken;
- (BOOL)performsMachineDataActions;
- (BOOL)shouldFollowRedirectWithRequest:(id)request returningError:(id *)error;
- (BOOL)shouldSendXTokenHeader;
- (ISBiometricSessionDelegate)biometricSessionDelegate;
- (ISStoreURLOperation)init;
- (SSURLBagContext)URLBagContext;
- (SSVFairPlaySAPSession)SAPSession;
- (id)_absintheHeaders;
- (id)_account;
- (id)_buyParams;
- (id)_copyAuthenticationContext;
- (id)_copyAuthenticationContextForAttemptNumber:(int64_t)number;
- (id)_loadURLBagInterpreterWithRequest:(id)request requestProperties:(id)properties;
- (id)_resolvedURLInBagContext:(id)context bagTrusted:(BOOL *)trusted;
- (id)_ssBag_copyGUIDPatternsFromBag:(id)bag;
- (id)_ssBag_copyGUIDSchemesFromBag:(id)bag;
- (id)_urlBagForContext:(id)context;
- (id)authenticatedAccountDSID;
- (id)logKey;
- (id)newRequestWithURL:(id)l;
- (void)_addStandardQueryParametersForURL:(id)l;
- (void)_applyAnalyticsCookiesToRequest:(id)request withBag:(id)bag oldBag:(id)oldBag;
- (void)_continueTouchIDSession;
- (void)_runURLOperation;
- (void)_setStoreFrontIdentifier:(id)identifier isTransient:(BOOL)transient;
- (void)_willSendRequest:(id)request;
- (void)handleResponse:(id)response;
- (void)run;
- (void)sender:(id)sender didFallbackToPassword:(BOOL)password;
- (void)setCanSendGUIDParameter:(BOOL)parameter;
- (void)setIgnorePreexistingSecureToken:(BOOL)token;
- (void)setPerformsMachineDataActions:(BOOL)actions;
- (void)setSAPSession:(id)session;
- (void)setShouldSendXTokenHeader:(BOOL)header;
@end

@implementation ISStoreURLOperation

- (ISStoreURLOperation)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISStoreURLOperation.m", 147, a2);
  v7.receiver = self;
  v7.super_class = ISStoreURLOperation;
  v3 = [(ISURLOperation *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D69A68]);
    biometricAuthenticationContext = v3->_biometricAuthenticationContext;
    v3->_biometricAuthenticationContext = v4;

    v3->_canSendGUIDParameter = 1;
    v3->_machineDataStyle = 2;
    v3->_needsURLBag = 1;
    v3->_shouldAppendAuthKitHeaders = 1;
    v3->_shouldAppendStorefrontToURL = 0;
    v3->_shouldCancelBiometricTokenUpdate = 0;
    v3->_shouldSuppressUserInfo = 0;
  }

  return v3;
}

+ (void)addITunesStoreHeadersToRequest:(id)request withAccountIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  v7 = [MEMORY[0x277D69C90] contextWithBagType:0];
  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  userAgent = [currentDevice userAgent];
  [v7 setValue:userAgent forHTTPHeaderField:*MEMORY[0x277D6A130]];

  v10 = +[ISURLBagCache sharedCache];
  v11 = [v10 URLBagForContext:v7];

  if (!identifierCopy)
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    identifierCopy = [activeAccount uniqueIdentifier];
  }

  [self _addiTunesStoreHeadersToRequest:requestCopy withURLBag:v11 accountIdentifier:identifierCopy appendAuthKitHeaders:1 appendStorefrontToURL:0 clientBundleIdentifier:0];
}

+ (void)handleITunesStoreResponseHeaders:(id)headers request:(id)request withAccountIdentifier:(id)identifier shouldRetry:(BOOL *)retry
{
  v9 = MEMORY[0x277D69A20];
  identifierCopy = identifier;
  requestCopy = request;
  headersCopy = headers;
  defaultStore = [v9 defaultStore];
  v13 = [defaultStore accountWithUniqueIdentifier:identifierCopy];

  [ISStoreURLOperation _handleResponseHeaders:0 response:headersCopy request:requestCopy account:v13 performsMachineDataActions:1 shouldRetry:retry];
}

+ (id)itemPingOperationWithIdentifier:(unint64_t)identifier urlBagKey:(id)key
{
  keyCopy = key;
  v6 = objc_alloc_init(objc_opt_class());
  [v6 setQueuePriority:-8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = +[ISDevice sharedInstance];
  guid = [v8 guid];

  if (guid)
  {
    [v7 setObject:guid forKey:@"machine-id"];
  }

  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", identifier];
  [v7 setObject:identifier forKey:@"songId"];

  v11 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v11 setRequestParameters:v7];
  [v11 setURLBagKey:keyCopy];

  [v6 setRequestProperties:v11];

  return v6;
}

+ (id)pingOperationWithUrl:(id)url
{
  urlCopy = url;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setQueuePriority:-8];
  [v4 setUrlKnownToBeTrusted:1];
  v5 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v6 = +[ISURLBagCache sharedCache];
  v7 = [v6 URLBagForContext:v5];

  v8 = [v7 valueForKey:*MEMORY[0x277D6A4F8]];
  v9 = [v8 objectForKey:@"metricsUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    host = [urlCopy host];
    host2 = [v10 host];
    v13 = [host isEqualToString:host2];

    if (v13)
    {
      path = [urlCopy path];
      v29 = v10;
      path2 = [v10 path];
      v16 = MEMORY[0x277CBEBC0];
      query = [urlCopy query];
      v18 = [v16 copyDictionaryForQueryString:query unescapedValues:1];

      v30 = path;
      v19 = path;
      v20 = path2;
      if ([v19 hasPrefix:path2])
      {
        v21 = [v18 objectForKey:@"eventTime"];

        if (v21)
        {
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSince1970];
          v24 = v23;

          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", (v24 * 1000.0)];
          [v18 setObject:v25 forKey:@"eventTime"];
          v26 = [urlCopy urlBySettingQueryStringDictionary:v18];

          urlCopy = v26;
        }
      }

      v10 = v29;
    }
  }

  v27 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:urlCopy];
  [v27 setAllowedRetryCount:0];
  [v27 setTimeoutInterval:20.0];
  [v4 setRequestProperties:v27];

  return v4;
}

+ (id)propertyListOperationWithURLBagKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = +[(ISDataProvider *)ISProtocolDataProvider];
  [v4 setDataProvider:v5];

  v6 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v6 setURLBagKey:keyCopy];

  [v4 setRequestProperties:v6];

  return v4;
}

- (BOOL)canSendGUIDParameter
{
  [(ISOperation *)self lock];
  canSendGUIDParameter = self->_canSendGUIDParameter;
  [(ISOperation *)self unlock];
  return canSendGUIDParameter;
}

- (id)logKey
{
  authenticationContext = [(ISURLOperation *)self authenticationContext];
  logUUID = [authenticationContext logUUID];

  if (logUUID)
  {
    authenticationContext2 = [(ISURLOperation *)self authenticationContext];
    logUUID2 = [authenticationContext2 logUUID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ISStoreURLOperation;
    logUUID2 = [(ISURLOperation *)&v8 logKey];
  }

  return logUUID2;
}

- (BOOL)ignorePreexistingSecureToken
{
  [(ISOperation *)self lock];
  ignorePreexistingSecureToken = self->_ignorePreexistingSecureToken;
  [(ISOperation *)self unlock];
  return ignorePreexistingSecureToken;
}

- (BOOL)performsMachineDataActions
{
  [(ISOperation *)self lock];
  v3 = self->_machineDataStyle != 0;
  [(ISOperation *)self unlock];
  return v3;
}

- (SSVFairPlaySAPSession)SAPSession
{
  [(ISOperation *)self lock];
  v3 = self->_sapSession;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setCanSendGUIDParameter:(BOOL)parameter
{
  [(ISOperation *)self lock];
  self->_canSendGUIDParameter = parameter;

  [(ISOperation *)self unlock];
}

- (void)setIgnorePreexistingSecureToken:(BOOL)token
{
  [(ISOperation *)self lock];
  self->_ignorePreexistingSecureToken = token;

  [(ISOperation *)self unlock];
}

- (void)setPerformsMachineDataActions:(BOOL)actions
{
  actionsCopy = actions;
  [(ISOperation *)self lock];
  if (actionsCopy)
  {
    if (self->_machineDataStyle)
    {
      goto LABEL_6;
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_machineDataStyle = v5;
LABEL_6:

  [(ISOperation *)self unlock];
}

- (void)setSAPSession:(id)session
{
  sessionCopy = session;
  [(ISOperation *)self lock];
  if (self->_sapSession != sessionCopy)
  {
    objc_storeStrong(&self->_sapSession, session);
  }

  [(ISOperation *)self unlock];
}

- (void)setShouldSendXTokenHeader:(BOOL)header
{
  [(ISOperation *)self lock];
  self->_shouldSendXTokenHeader = header;

  [(ISOperation *)self unlock];
}

- (BOOL)shouldSendXTokenHeader
{
  [(ISOperation *)self lock];
  shouldSendXTokenHeader = self->_shouldSendXTokenHeader;
  [(ISOperation *)self unlock];
  return shouldSendXTokenHeader;
}

- (SSURLBagContext)URLBagContext
{
  v3 = objc_alloc_init(MEMORY[0x277D69C90]);
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [v3 setAllowsBootstrapCellularData:{objc_msgSend(_requestProperties, "allowsBootstrapCellularData")}];
  [v3 setBagType:{objc_msgSend(_requestProperties, "URLBagType")}];
  clientAuditTokenData = [_requestProperties clientAuditTokenData];
  [v3 setClientAuditTokenData:clientAuditTokenData];

  hTTPHeaders = [_requestProperties HTTPHeaders];
  v7 = *MEMORY[0x277D6A130];
  v8 = [hTTPHeaders objectForKey:*MEMORY[0x277D6A130]];

  if (v8)
  {
    [v3 setValue:v8 forHTTPHeaderField:v7];
  }

  else
  {
    v9 = [v3 valueForHTTPHeaderField:v7];

    if (!v9)
    {
      currentDevice = [MEMORY[0x277D69A80] currentDevice];
      userAgent = [currentDevice userAgent];
      [v3 setValue:userAgent forHTTPHeaderField:v7];
    }
  }

  if ([(ISStoreURLOperation *)self needsAuthentication]|| [(ISStoreURLOperation *)self useUserSpecificURLBag])
  {
    _account = [(ISStoreURLOperation *)self _account];
    uniqueIdentifier = [_account uniqueIdentifier];
    [v3 setUserIdentifier:uniqueIdentifier];
  }

  return v3;
}

- (id)authenticatedAccountDSID
{
  authenticatedDSID = [(ISStoreURLOperation *)self authenticatedDSID];
  v4 = authenticatedDSID;
  if (authenticatedDSID)
  {
    authenticatedAccountDSID = authenticatedDSID;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ISStoreURLOperation;
    authenticatedAccountDSID = [(ISOperation *)&v8 authenticatedAccountDSID];
  }

  v6 = authenticatedAccountDSID;

  return v6;
}

- (id)_copyAuthenticationContext
{
  v14.receiver = self;
  v14.super_class = ISStoreURLOperation;
  _copyAuthenticationContext = [(ISURLOperation *)&v14 _copyAuthenticationContext];
  if (!_copyAuthenticationContext)
  {
    v4 = objc_alloc(MEMORY[0x277D69BC8]);
    _account = [(ISStoreURLOperation *)self _account];
    _copyAuthenticationContext = [v4 initWithAccount:_account];

    logKey = [(ISStoreURLOperation *)self logKey];
    [_copyAuthenticationContext setLogUUID:logKey];

    [_copyAuthenticationContext setCanSetActiveAccount:0];
  }

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [_requestProperties URLBagType];
  [_copyAuthenticationContext setAccountScope:SSAccountScopeForURLBagType()];
  [_copyAuthenticationContext setAllowsBootstrapCellularData:{objc_msgSend(_requestProperties, "allowsBootstrapCellularData")}];
  clientIdentifier = [_requestProperties clientIdentifier];
  [_copyAuthenticationContext setClientIdentifierHeader:clientIdentifier];

  hTTPHeaders = [_requestProperties HTTPHeaders];
  v10 = *MEMORY[0x277D6A130];
  v11 = [hTTPHeaders objectForKey:*MEMORY[0x277D6A130]];

  if (v11)
  {
    [_copyAuthenticationContext setValue:v11 forHTTPHeaderField:v10];
  }

  userAgentComponents = [_requestProperties userAgentComponents];
  if (userAgentComponents)
  {
    [_copyAuthenticationContext setUserAgentComponents:userAgentComponents];
  }

  [(ISOperation *)self lock];
  if (self->_ignorePreexistingSecureToken)
  {
    [_copyAuthenticationContext setPersistsPasswordFallback:1];
  }

  [(ISOperation *)self unlock];

  return _copyAuthenticationContext;
}

- (BOOL)handleRedirectFromDataProvider:(id)provider error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  authenticatedAccountDSID = [providerCopy authenticatedAccountDSID];
  if (authenticatedAccountDSID)
  {
    [(ISStoreURLOperation *)self setAuthenticatedDSID:authenticatedAccountDSID];
    [(ISStoreURLOperation *)self setNeedsAuthentication:1];
  }

  redirectURL = [providerCopy redirectURL];
  schemeSwizzledURL = [redirectURL schemeSwizzledURL];

  if ([(ISStoreURLOperation *)self needsAuthentication]&& ![(ISStoreURLOperation *)self _canSendTokenToURL:schemeSwizzledURL])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v26 = shouldLog | 2;
    }

    else
    {
      v26 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      v29 = objc_opt_class();
      v38 = v29;
      [(ISURLOperation *)self _sanitizedURLForURL:schemeSwizzledURL];
      v31 = v30 = schemeSwizzledURL;
      v41 = 138412546;
      v42 = v29;
      v43 = 2112;
      v44 = v31;
      v32 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Won't authenticate for non-https URL: %@", &v41, 22);

      schemeSwizzledURL = v30;
      if (!v32)
      {
LABEL_30:

        v13 = ISError(3, 0, 0);
        v12 = 0;
        goto LABEL_33;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:4];
      free(v32);
      SSFileLog();
    }

    goto LABEL_30;
  }

  uRLBagContext = [(ISStoreURLOperation *)self URLBagContext];
  v11 = [(ISStoreURLOperation *)self _urlBagForContext:uRLBagContext];
  if ([v11 urlIsTrusted:schemeSwizzledURL])
  {

    v39.receiver = self;
    v39.super_class = ISStoreURLOperation;
    v40 = 0;
    v12 = [(ISURLOperation *)&v39 handleRedirectFromDataProvider:providerCopy error:&v40];
    v13 = v40;
  }

  else
  {
    v37 = schemeSwizzledURL;
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v16 = shouldLog2 | 2;
    }

    else
    {
      v16 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v35 = v19;
      [(ISURLOperation *)self _sanitizedURLForURL:v37];
      v36 = authenticatedAccountDSID;
      v21 = v20 = error;
      v41 = 138412546;
      v42 = v19;
      v43 = 2112;
      v44 = v21;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%@: URL is not trusted: %@", &v41, 22);

      error = v20;
      authenticatedAccountDSID = v36;

      if (v22)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
        free(v22);
        SSFileLog();
      }
    }

    else
    {
    }

    v13 = ISError(3, 0, 0);

    v12 = 0;
    schemeSwizzledURL = v37;
  }

LABEL_33:
  if (error && !v12)
  {
    v33 = v13;
    *error = v13;
  }

  return v12;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    activeURLRequest = [(ISURLOperation *)self activeURLRequest];
    _account = [(ISStoreURLOperation *)self _account];
    [ISStoreURLOperation _handleResponseHeaders:self response:responseCopy request:activeURLRequest account:_account performsMachineDataActions:0 shouldRetry:&v8];

    if (v8 == 1)
    {
      [(ISURLOperation *)self _retry];
    }
  }

  v7.receiver = self;
  v7.super_class = ISStoreURLOperation;
  [(ISURLOperation *)&v7 handleResponse:responseCopy];
}

- (id)newRequestWithURL:(id)l
{
  v62 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([(ISStoreURLOperation *)self shouldSuppressUserInfo])
  {
    [(ISURLOperation *)self _setUsesPrivateCookieStore:0];
    v60.receiver = self;
    v60.super_class = ISStoreURLOperation;
    v5 = [(ISURLOperation *)&v60 newRequestWithURL:lCopy];
    [v5 setHTTPShouldHandleCookies:0];
  }

  else
  {
    v59.receiver = self;
    v59.super_class = ISStoreURLOperation;
    v5 = [(ISURLOperation *)&v59 newRequestWithURL:lCopy];
  }

  v6 = [v5 URL];

  if (self->_bag)
  {
    if (![(ISStoreURLOperation *)self isURLBagRequest])
    {
      v9 = self->_bag;
      v7 = 0;
      goto LABEL_10;
    }

    v7 = 0;
  }

  else
  {
    uRLBagContext = [(ISStoreURLOperation *)self URLBagContext];
    v7 = [(ISStoreURLOperation *)self _urlBagForContext:uRLBagContext];
  }

  v9 = 0;
LABEL_10:
  [(ISStoreURLOperation *)self _applyAnalyticsCookiesToRequest:v5 withBag:v9 oldBag:v7];
  if ([(ISStoreURLOperation *)self canSendGUIDParameter])
  {
    hTTPMethod = [v5 HTTPMethod];
    v11 = [hTTPMethod isEqualToString:@"POST"];

    if ((v11 & 1) == 0)
    {
      if (v9)
      {
        if (![(ISStoreURLOperation *)self _ssBag_shouldSendGUIDForURL:v6 withBag:v9])
        {
          goto LABEL_19;
        }
      }

      else if (![v7 shouldSendGUIDForURL:v6])
      {
        goto LABEL_19;
      }

      v12 = +[ISDevice sharedInstance];
      guid = [v12 guid];

      if (guid)
      {
        v14 = [v6 URLByAppendingQueryParameter:@"guid" value:guid];

        [v5 setURL:v14];
        v6 = v14;
      }
    }
  }

LABEL_19:
  _account = [(ISStoreURLOperation *)self _account];
  v54 = v9;
  if (v9)
  {
    v16 = v7;
    v17 = v6;
    if (_account)
    {
      v18 = objc_opt_class();
      shouldAppendAuthKitHeaders = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
      shouldAppendStorefrontToURL = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
      clientBundleIdentifier = [0 clientBundleIdentifier];
      [v18 _addiTunesStoreHeadersToRequest:v5 withSSBag:v9 account:_account appendAuthKitHeaders:shouldAppendAuthKitHeaders appendStorefrontToURL:shouldAppendStorefrontToURL clientBundleIdentifier:clientBundleIdentifier];
    }

    else
    {
      clientBundleIdentifier = objc_msgSend__accountIdentifier(self);
      v25 = objc_opt_class();
      shouldAppendAuthKitHeaders2 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
      shouldAppendStorefrontToURL2 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
      clientBundleIdentifier2 = [0 clientBundleIdentifier];
      [v25 _addiTunesStoreHeadersToRequest:v5 withSSBag:v54 accountIdentifier:clientBundleIdentifier appendAuthKitHeaders:shouldAppendAuthKitHeaders2 appendStorefrontToURL:shouldAppendStorefrontToURL2 clientBundleIdentifier:clientBundleIdentifier2];
    }

    v6 = v17;
    v7 = v16;
  }

  else if (_account)
  {
    v22 = objc_opt_class();
    shouldAppendAuthKitHeaders3 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
    shouldAppendStorefrontToURL3 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
    clientBundleIdentifier = [0 clientBundleIdentifier];
    [v22 _addiTunesStoreHeadersToRequest:v5 withURLBag:v7 account:_account appendAuthKitHeaders:shouldAppendAuthKitHeaders3 appendStorefrontToURL:shouldAppendStorefrontToURL3 clientBundleIdentifier:clientBundleIdentifier];
  }

  else
  {
    clientBundleIdentifier = objc_msgSend__accountIdentifier(self);
    v48 = objc_opt_class();
    shouldAppendAuthKitHeaders4 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
    shouldAppendStorefrontToURL4 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
    [0 clientBundleIdentifier];
    v52 = v51 = v6;
    [v48 _addiTunesStoreHeadersToRequest:v5 withURLBag:v7 accountIdentifier:clientBundleIdentifier appendAuthKitHeaders:shouldAppendAuthKitHeaders4 appendStorefrontToURL:shouldAppendStorefrontToURL4 clientBundleIdentifier:v52];

    v6 = v51;
  }

  if ([(ISStoreURLOperation *)self shouldSuppressUserInfo])
  {
    [v5 setValue:0 forHTTPHeaderField:*MEMORY[0x277D6A160]];
    [v5 setValue:0 forHTTPHeaderField:*MEMORY[0x277D6A128]];
  }

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  clientIdentifier = [_requestProperties clientIdentifier];

  if (clientIdentifier)
  {
    v31 = [clientIdentifier copy];
    [v5 setValue:v31 forHTTPHeaderField:*MEMORY[0x277D6A158]];
  }

  if ([(ISStoreURLOperation *)self needsAuthentication]|| [(ISStoreURLOperation *)self shouldSendXTokenHeader])
  {
    [(ISOperation *)self lock];
    if ([(ISStoreURLOperation *)self needsAuthentication])
    {
      authenticatedDSID = [(ISStoreURLOperation *)self authenticatedDSID];
      v33 = authenticatedDSID != 0;
    }

    else
    {
      v33 = 1;
    }

    biometricAuthenticationContext = [(ISStoreURLOperation *)self biometricAuthenticationContext];
    didFallbackToPassword = [biometricAuthenticationContext didFallbackToPassword];

    LODWORD(biometricAuthenticationContext) = self->_ignorePreexistingSecureToken;
    [(ISOperation *)self unlock];
    if (biometricAuthenticationContext != 1 || (didFallbackToPassword & v33) != 0)
    {
      secureToken = [_account secureToken];
      if ((SSIsDaemon() & 1) == 0 && !secureToken)
      {
        _requestProperties2 = [(ISURLOperation *)self _requestProperties];
        uRLBagKey = [_requestProperties2 URLBagKey];
        v39 = [uRLBagKey isEqualToString:@"buyProduct"];

        if (v39)
        {
          defaultStore = [MEMORY[0x277D69A20] defaultStore];
          accounts = [defaultStore accounts];

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v42 = accounts;
          secureToken = [v42 countByEnumeratingWithState:&v55 objects:v61 count:16];
          if (secureToken)
          {
            v43 = v7;
            v44 = v6;
            v45 = *v56;
            while (2)
            {
              for (i = 0; i != secureToken; i = i + 1)
              {
                if (*v56 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v55 + 1) + 8 * i);
                if ([_account isEqual:v47])
                {
                  secureToken = [v47 secureToken];
                  goto LABEL_52;
                }
              }

              secureToken = [v42 countByEnumeratingWithState:&v55 objects:v61 count:16];
              if (secureToken)
              {
                continue;
              }

              break;
            }

LABEL_52:
            v6 = v44;
            v7 = v43;
          }
        }

        else
        {
          secureToken = 0;
        }
      }

      [v5 setValue:secureToken forHTTPHeaderField:*MEMORY[0x277D6A1D8]];
    }
  }

  return v5;
}

- (BOOL)_processResponseData:(id)data error:(id *)error
{
  dataCopy = data;
  sAPSession = [(ISStoreURLOperation *)self SAPSession];
  if (!sAPSession)
  {
    v18 = 0;
    goto LABEL_8;
  }

  activeURLRequest = [(ISURLOperation *)self activeURLRequest];
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  v10 = [(ISStoreURLOperation *)self _loadURLBagInterpreterWithRequest:activeURLRequest requestProperties:_requestProperties];

  response = [(ISURLOperation *)self response];
  v12 = [response URL];
  v13 = [v10 mescalSignaturePolicyForResponseURL:v12];

  if (v13 && [v13 policyType])
  {
    allHeaderFields = [response allHeaderFields];
    v15 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A150]);

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
      v21 = 0;
      v17 = [sAPSession verifyData:dataCopy withSignature:v16 error:&v21];
      v18 = v21;

LABEL_13:
      goto LABEL_14;
    }

    v18 = SSError();
    if (([response statusCode] - 400) > 0x257 || !-[ISURLOperation _loadsHTTPFailures](self, "_loadsHTTPFailures"))
    {
      v17 = 0;
      goto LABEL_13;
    }

LABEL_8:
    v17 = 1;
    goto LABEL_17;
  }

  v18 = 0;
  v17 = 1;
LABEL_14:

  if (error && (v17 & 1) == 0)
  {
    v19 = v18;
    v17 = 0;
    *error = v18;
  }

LABEL_17:

  return v17;
}

- (void)run
{
  v141 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  if (!self->_isURLBagRequest && !self->_sapSession)
  {
    if (SSIsDaemon())
    {
      [MEMORY[0x277D69CC0] sharedDefaultSession];
    }

    else
    {
      [MEMORY[0x277D69CC0] sharedPrimeSession];
    }
    v3 = ;
    sapSession = self->_sapSession;
    self->_sapSession = v3;
  }

  if (self->_isURLBagRequest)
  {
    machineDataStyle = 0;
  }

  else
  {
    machineDataStyle = self->_machineDataStyle;
  }

  self->_activeMachineDataStyle = machineDataStyle;
  [(ISOperation *)self unlock];
  if ([(ISStoreURLOperation *)self needsAuthentication])
  {
    LODWORD(v126) = ![(ISStoreURLOperation *)self ignorePreexistingSecureToken];
  }

  else
  {
    LOBYTE(v126) = 0;
  }

  v127 = 0;
  v128 = 0;
  v6 = 0x277D69000uLL;
  v117 = *MEMORY[0x277D6A140];
  v118 = *MEMORY[0x277D6A138];
  v119 = *MEMORY[0x277D6A0F8];
  while (1)
  {
    v131 = objc_autoreleasePoolPush();
    if (v128 < 1)
    {
      goto LABEL_27;
    }

    sharedAccountsAuthenticationConfig = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig)
    {
      sharedAccountsAuthenticationConfig = [*(v6 + 2872) sharedConfig];
    }

    LODWORD(v8) = [sharedAccountsAuthenticationConfig shouldLog];
    if ([sharedAccountsAuthenticationConfig shouldLogToDisk])
    {
      LODWORD(v8) = v8 | 2;
    }

    oSLogObject = [sharedAccountsAuthenticationConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_25;
    }

    v10 = objc_opt_class();
    v11 = v10;
    requestProperties = [(ISURLOperation *)self requestProperties];
    v13 = [requestProperties URL];
    v135 = 138543618;
    v136 = v10;
    v137 = 2114;
    v138 = v13;
    LODWORD(v111) = 22;
    v14 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Re-executing %{public}@ because we had to reprovision machine data.", &v135, v111);

    if (v14)
    {
      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
      free(v14);
      v108 = oSLogObject;
      SSFileLog();
LABEL_25:
    }

LABEL_27:
    v108 = [(ISStoreURLOperation *)self _copyAuthenticationContextForAttemptNumber:v127, v108];
    if (v126)
    {
      v134 = 0;
      v16 = [(ISStoreURLOperation *)self _authenticateWithContext:v108 error:&v134];
      v17 = v134;
      if (!v16)
      {
        sharediTunesStoreConfig = [*(v6 + 2872) sharediTunesStoreConfig];
        sharedConfig = sharediTunesStoreConfig;
        if (!sharediTunesStoreConfig)
        {
          sharedConfig = [*(v6 + 2872) sharedConfig];
        }

        LODWORD(v94) = [sharedConfig shouldLog];
        if ([sharedConfig shouldLogToDisk])
        {
          LODWORD(v94) = v94 | 2;
        }

        oSLogObject2 = [sharedConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v94 = v94;
        }

        else
        {
          v94 &= 2u;
        }

        if (v94)
        {
          v96 = objc_opt_class();
          v97 = v96;
          [(ISURLOperation *)self _sanitizedDescriptionForObject:v17];
          v99 = v98 = v108;
          v135 = 138412546;
          v136 = v96;
          v137 = 2112;
          v138 = v99;
          LODWORD(v111) = 22;
          v100 = _os_log_send_and_compose_impl(v94, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Authentication failed: %@", &v135, v111);

          v108 = v98;
          if (!v100)
          {
LABEL_156:

            [(ISOperation *)self setError:v17];
LABEL_169:
            v25 = v17;
            goto LABEL_170;
          }

          oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v100 encoding:4];
          free(v100);
          SSFileLog();
        }

        goto LABEL_156;
      }
    }

    else
    {
      v17 = 0;
    }

    v132 = v108;
    if (![(ISStoreURLOperation *)self needsTermsAndConditionsAcceptance])
    {
      v25 = v17;
      goto LABEL_53;
    }

    v18 = objc_alloc(NSClassFromString(&cfstr_Accepttermsand.isa));
    _account = [(ISStoreURLOperation *)self _account];
    v20 = [v18 initWithAccount:_account];

    if (!v20)
    {
      sharediTunesStoreConfig2 = [*(v6 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig2)
      {
        sharediTunesStoreConfig2 = [*(v6 + 2872) sharedConfig];
      }

      LODWORD(v102) = [sharediTunesStoreConfig2 shouldLog];
      if ([sharediTunesStoreConfig2 shouldLogToDisk])
      {
        LODWORD(v102) = v102 | 2;
      }

      oSLogObject3 = [sharediTunesStoreConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v102;
      }

      else
      {
        v102 &= 2u;
      }

      v108 = v132;
      if (v102)
      {
        v104 = objc_opt_class();
        v135 = 138412290;
        v136 = v104;
        v105 = v104;
        LODWORD(v111) = 12;
        v106 = _os_log_send_and_compose_impl(v102, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: Could not create term acceptance operation", &v135, v111);

        if (v106)
        {
          oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v106 encoding:4];
          free(v106);
          SSFileLog();
          goto LABEL_167;
        }
      }

      else
      {
LABEL_167:
      }

      v107 = ISError(0, 0, 0);
      [(ISOperation *)self setError:v107];

      goto LABEL_169;
    }

    v133 = v17;
    v21 = [(ISOperation *)self runSubOperation:v20 returningError:&v133];
    v22 = v133;

    if (!v21)
    {
      v24 = 0;
      goto LABEL_41;
    }

    isUserAccepted = [v20 isUserAccepted];
    if (!isUserAccepted)
    {
      break;
    }

    v24 = isUserAccepted;
    if (!v22)
    {

      v25 = 0;
      v108 = v132;
      goto LABEL_53;
    }

LABEL_41:
    sharediTunesStoreConfig3 = [*(v6 + 2872) sharediTunesStoreConfig];
    if (!sharediTunesStoreConfig3)
    {
      sharediTunesStoreConfig3 = [*(v6 + 2872) sharedConfig];
    }

    LODWORD(v28) = [sharediTunesStoreConfig3 shouldLog];
    if ([sharediTunesStoreConfig3 shouldLogToDisk])
    {
      LODWORD(v28) = v28 | 2;
    }

    oSLogObject4 = [sharediTunesStoreConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = [(ISURLOperation *)self _sanitizedDescriptionForObject:v22];
      v135 = 138412546;
      v136 = v30;
      v137 = 2112;
      v138 = v32;
      LODWORD(v111) = 22;
      v33 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_275BC3000, oSLogObject4, 16, "%@: Terms and conditions acceptance failed: %@", &v135, v111);

      v6 = 0x277D69000uLL;
      if (!v33)
      {
        goto LABEL_52;
      }

      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:4];
      free(v33);
      v109 = oSLogObject4;
      SSFileLog();
    }

LABEL_52:
    v25 = v22;
    [(ISOperation *)self setError:v22];

    v108 = v132;
    if ((v24 & 1) == 0)
    {
      goto LABEL_170;
    }

LABEL_53:
    [(ISStoreURLOperation *)self _runURLOperation];
    error = [(ISOperation *)self error];
    response = [(ISURLOperation *)self response];
    if (!response || ![(ISStoreURLOperation *)self machineDataStyle])
    {
      v39 = 0;
      goto LABEL_88;
    }

    v36 = [objc_alloc(MEMORY[0x277D69B58]) initWithURLResponse:response];
    if (v36)
    {
      v124 = v25;
      if (![(ISStoreURLOperation *)self _performMachineDataRequest:v36])
      {
        goto LABEL_62;
      }

      actionName = [v36 actionName];
      v38 = [actionName isEqualToString:@"RP"];

      if (v38)
      {
        v128 = 0;
        goto LABEL_72;
      }

      v40 = v128++;
      if (v40 <= 0)
      {
LABEL_72:
        v129 = response;
        sharedAccountsAuthenticationConfig2 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
        if (!sharedAccountsAuthenticationConfig2)
        {
          sharedAccountsAuthenticationConfig2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [sharedAccountsAuthenticationConfig2 shouldLog];
        if ([sharedAccountsAuthenticationConfig2 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject5 = [sharedAccountsAuthenticationConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v49 = shouldLog;
        }

        else
        {
          v49 = shouldLog & 2;
        }

        if (v49)
        {
          v50 = objc_opt_class();
          v121 = v50;
          requestProperties2 = [(ISURLOperation *)self requestProperties];
          v51 = [requestProperties2 URL];
          _account2 = [(ISStoreURLOperation *)self _account];
          accountName = [_account2 accountName];
          v53 = SSHashIfNeeded();
          v135 = 138543874;
          v136 = v50;
          v137 = 2114;
          v138 = v51;
          v139 = 2114;
          v140 = v53;
          LODWORD(v111) = 32;
          v47 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &dword_275BC3000, oSLogObject5, 0, "%{public}@: Asked to reprovision machine data while executing %{public}@. We'll re-run the request. account = %{public}@", &v135, v111);

          v39 = 1;
          if (!v47)
          {
            goto LABEL_81;
          }

LABEL_71:
          v108 = v132;
          oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v47 encoding:4];
          free(v47);
          v110 = oSLogObject5;
          SSFileLog();
        }

        else
        {
          v39 = 1;
        }

        response = v129;
      }

      else
      {
LABEL_62:
        sharedAccountsAuthenticationConfig2 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
        if (!sharedAccountsAuthenticationConfig2)
        {
          sharedAccountsAuthenticationConfig2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        LODWORD(v42) = [sharedAccountsAuthenticationConfig2 shouldLog];
        if ([sharedAccountsAuthenticationConfig2 shouldLogToDisk])
        {
          LODWORD(v42) = v42 | 2;
        }

        oSLogObject5 = [sharedAccountsAuthenticationConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v42 = v42;
        }

        else
        {
          v42 &= 2u;
        }

        if (v42)
        {
          v129 = response;
          v44 = objc_opt_class();
          v120 = v44;
          requestProperties3 = [(ISURLOperation *)self requestProperties];
          v46 = [requestProperties3 URL];
          v135 = 138543618;
          v136 = v44;
          v137 = 2114;
          v138 = v46;
          LODWORD(v111) = 22;
          v47 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_275BC3000, oSLogObject5, 16, "%{public}@: Asked to reprovision machine data while executing %{public}@, but we've re-run the request too many times. The request will fail.", &v135, v111);

          v39 = 0;
          if (v47)
          {
            goto LABEL_71;
          }

LABEL_81:
          v108 = v132;
          v25 = v124;
          response = v129;
LABEL_86:

          v6 = 0x277D69000uLL;
          goto LABEL_87;
        }

        v39 = 0;
      }

      v25 = v124;
      goto LABEL_86;
    }

    v39 = 0;
LABEL_87:

LABEL_88:
    biometricAuthenticationContext = [(ISStoreURLOperation *)self biometricAuthenticationContext];
    challenge = [biometricAuthenticationContext challenge];

    if (challenge)
    {
      v56 = [(ISStoreURLOperation *)self _shouldRetryForTouchIDChallengeWithError:error];
      if ((v39 | [(ISStoreURLOperation *)self _shouldRetryForAbsintheWithResponse:response]))
      {
        goto LABEL_127;
      }

      if (v56)
      {
        v130 = response;
        [(ISStoreURLOperation *)self _continueTouchIDSession];
        if ([(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didBuyParamsChange])
        {
          biometricSessionDelegate = [(ISStoreURLOperation *)self biometricSessionDelegate];
          if (objc_opt_respondsToSelector())
          {
            [biometricSessionDelegate sender:self didFallbackToPassword:{-[SSBiometricAuthenticationContext didFallbackToPassword](self->_biometricAuthenticationContext, "didFallbackToPassword")}];
          }

          if (objc_opt_respondsToSelector())
          {
            [biometricSessionDelegate sender:self shouldContinueTouchIDSession:1];
          }

          if (objc_opt_respondsToSelector())
          {
            challenge2 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
            signature = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
            paymentTokenData = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext paymentTokenData];
            fpanID = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext fpanID];
            isExtendedAction = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isExtendedAction];
            isPayment = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isPayment];
            v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
            xAppleAMDHeader = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext xAppleAMDHeader];
            if (xAppleAMDHeader)
            {
              [v60 setObject:xAppleAMDHeader forKeyedSubscript:v118];
            }

            xAppleAMDMHeader = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext xAppleAMDMHeader];
            if (xAppleAMDMHeader)
            {
              [v60 setObject:xAppleAMDMHeader forKeyedSubscript:v117];
            }

            LOBYTE(v108) = isPayment;
            [biometricSessionDelegate sender:self willSendChallenge:challenge2 andSignature:signature andPaymentTokenData:paymentTokenData andFpanID:fpanID isExtendedAction:isExtendedAction isPayment:v108 additionalHeaders:v60];

            v63 = 0;
LABEL_137:
            response = v130;
LABEL_139:

            v6 = 0x277D69000;
LABEL_142:

            goto LABEL_143;
          }

          v63 = 0;
LABEL_141:
          response = v130;
          goto LABEL_142;
        }

LABEL_126:
        response = v130;
LABEL_127:
        biometricSessionDelegate = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
        if (!biometricSessionDelegate)
        {
          biometricSessionDelegate = [*(v6 + 2872) sharedConfig];
        }

        LODWORD(v84) = [biometricSessionDelegate shouldLog];
        if ([biometricSessionDelegate shouldLogToDisk])
        {
          LODWORD(v84) = v84 | 2;
        }

        challenge2 = [biometricSessionDelegate OSLogObject];
        if (os_log_type_enabled(challenge2, OS_LOG_TYPE_DEFAULT))
        {
          v84 = v84;
        }

        else
        {
          v84 &= 2u;
        }

        if (!v84)
        {
          v63 = 1;
          goto LABEL_139;
        }

        v130 = response;
        v85 = error;
        v86 = v25;
        v87 = objc_opt_class();
        v88 = v87;
        error2 = [(ISOperation *)self error];
        v90 = [(ISURLOperation *)self _sanitizedDescriptionForObject:error2];
        v135 = 138543618;
        v136 = v87;
        v137 = 2112;
        v138 = v90;
        LODWORD(v111) = 22;
        v91 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &dword_275BC3000, challenge2, 0, "%{public}@: Attempt retry after token error. error = %@", &v135, v111);

        if (v91)
        {
          challenge2 = [MEMORY[0x277CCACA8] stringWithCString:v91 encoding:4];
          free(v91);
          v108 = challenge2;
          SSFileLog();
          v63 = 1;
          v25 = v86;
          error = v85;
          v108 = v132;
          goto LABEL_137;
        }

        v63 = 1;
        v6 = 0x277D69000;
        v25 = v86;
        error = v85;
        v108 = v132;
        goto LABEL_141;
      }
    }

    else if ((v39 | [(ISStoreURLOperation *)self _shouldRetryForAbsintheWithResponse:response]))
    {
      goto LABEL_127;
    }

    if (-[ISOperation success](self, "success") || !-[ISStoreURLOperation _isErrorTokenError:](self, "_isErrorTokenError:", error) || (-[ISURLOperation authenticationContext](self, "authenticationContext"), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 promptStyle], v64, v65 == 1000))
    {
      v63 = 0;
      goto LABEL_143;
    }

    v125 = v25;
    _account3 = [(ISStoreURLOperation *)self _account];
    sharedAccountsAuthenticationConfig3 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
    if (!sharedAccountsAuthenticationConfig3)
    {
      sharedAccountsAuthenticationConfig3 = [*(v6 + 2872) sharedConfig];
    }

    v130 = response;
    shouldLog2 = [sharedAccountsAuthenticationConfig3 shouldLog];
    if ([sharedAccountsAuthenticationConfig3 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject6 = [sharedAccountsAuthenticationConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v70 = shouldLog2;
    }

    else
    {
      v70 = shouldLog2 & 2;
    }

    v126 = _account3;
    if (v70)
    {
      v71 = objc_opt_class();
      v123 = v71;
      requestProperties4 = [(ISURLOperation *)self requestProperties];
      v73 = [requestProperties4 URL];
      accountName2 = [_account3 accountName];
      v75 = SSHashIfNeeded();
      v135 = 138543874;
      v136 = v71;
      v137 = 2114;
      v138 = v73;
      v139 = 2114;
      v140 = v75;
      LODWORD(v111) = 32;
      v76 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &dword_275BC3000, oSLogObject6, 16, "%{public}@: Request, %{public}@, failed. We're setting authentication to NO for %{public}@.", &v135, v111);

      _account3 = v126;
      v108 = v132;

      if (!v76)
      {
        goto LABEL_118;
      }

      oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v76 encoding:4];
      free(v76);
      v108 = oSLogObject6;
      SSFileLog();
    }

LABEL_118:
    [_account3 setAuthenticated:0];
    [_account3 setSecureToken:0];
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    [defaultStore saveAccount:_account3 verifyCredentials:0 error:0];

    [(ISStoreURLOperation *)self setNeedsAuthentication:1];
    userInfo = [error userInfo];
    v79 = [userInfo objectForKey:v119];

    if (v79)
    {
      if (([v79 BOOLValue] & 1) == 0)
      {
        authenticationContext = [(ISURLOperation *)self authenticationContext];
        promptStyle = [authenticationContext promptStyle];

        if (promptStyle != 1)
        {
          [(ISStoreURLOperation *)self setIgnorePreexistingSecureToken:0];
        }
      }
    }

    hTTPArchive = [(ISURLOperation *)self HTTPArchive];
    v6 = 0x277D69000uLL;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    [hTTPArchive writeToDiskWithLogConfig:mEMORY[0x277D69B38] compressed:0 error:0];

    LOBYTE(v126) = 1;
    v25 = v125;
    if (v127 <= 0)
    {
      ++v127;
      goto LABEL_126;
    }

    v63 = 0;
    ++v127;
    response = v130;
LABEL_143:

    objc_autoreleasePoolPop(v131);
    if ((v63 & 1) == 0)
    {
      return;
    }
  }

  v26 = ISError(16, 0, 0);

  if (v26)
  {
    v24 = 0;
    v22 = v26;
    goto LABEL_41;
  }

  v25 = v20;
  v108 = v132;
LABEL_170:

  objc_autoreleasePoolPop(v131);
}

- (BOOL)shouldFollowRedirectWithRequest:(id)request returningError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(ISStoreURLOperation *)self urlKnownToBeTrusted])
  {
    v7 = 1;
  }

  else
  {
    uRLBagContext = [(ISStoreURLOperation *)self URLBagContext];
    v9 = [(ISOperation *)self loadedURLBagWithContext:uRLBagContext returningError:0];
    v10 = [requestCopy URL];
    v7 = [v9 urlIsTrusted:v10];

    if ((v7 & 1) == 0)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 2;
      }

      if (v15)
      {
        v23 = uRLBagContext;
        v16 = objc_opt_class();
        v22 = v16;
        v17 = [requestCopy URL];
        [(ISURLOperation *)self _sanitizedURLForURL:v17];
        v18 = v24 = error;
        v25 = 138412546;
        v26 = v16;
        uRLBagContext = v23;
        v27 = 2112;
        v28 = v18;
        v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: URL is not trusted: %@", &v25, 22);

        error = v24;
        if (v19)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
          free(v19);
          SSFileLog();
        }
      }

      else
      {
      }

      if (error)
      {
        *error = ISError(3, 0, 0);
      }
    }
  }

  return v7;
}

- (void)_willSendRequest:(id)request
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  activeMachineDataStyle = self->_activeMachineDataStyle;
  if (activeMachineDataStyle == 3)
  {
    SSVAnisetteAddHeadersToURLRequest();
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (activeMachineDataStyle != 2)
  {
    if (activeMachineDataStyle == 1)
    {
      _account = [(ISStoreURLOperation *)self _account];
      v8 = _account;
      if (_account)
      {
        uniqueIdentifier = [_account uniqueIdentifier];
        [uniqueIdentifier unsignedLongLongValue];
        SSVAnisetteAddHeadersToURLRequest();
      }
    }

    goto LABEL_10;
  }

  v10 = [(ISStoreURLOperation *)self _loadURLBagInterpreterWithRequest:requestCopy requestProperties:_requestProperties];
  v11 = [requestCopy URL];
  v12 = [v10 shouldSendAnonymousMachineIdentifierForURL:v11];

  if (v12)
  {
    SSVAnisetteAddHeadersToURLRequest();
  }

LABEL_11:
  _absintheHeaders = [(ISStoreURLOperation *)self _absintheHeaders];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __40__ISStoreURLOperation__willSendRequest___block_invoke;
  v49[3] = &unk_27A670B38;
  v14 = requestCopy;
  v50 = v14;
  [_absintheHeaders enumerateKeysAndObjectsUsingBlock:v49];
  sAPSession = [(ISStoreURLOperation *)self SAPSession];
  if (sAPSession)
  {
    if (!v10)
    {
      v10 = [(ISStoreURLOperation *)self _loadURLBagInterpreterWithRequest:v14 requestProperties:_requestProperties];
    }

    v16 = [v14 URL];
    v17 = [v10 mescalSignaturePolicyForRequestURL:v16];

    if (v17 && [v17 policyType])
    {
      v18 = [v17 dataToSignWithURLRequest:v14];
      sAPSession2 = [(ISStoreURLOperation *)self SAPSession];
      v20 = [sAPSession2 signatureWithData:v18 error:0];

      if (v20)
      {
        v21 = [v20 base64EncodedStringWithOptions:0];
        [v14 setValue:v21 forHTTPHeaderField:*MEMORY[0x277D6A150]];
      }
    }
  }

  if ([(ISStoreURLOperation *)self shouldSendAKClientInfoHeaders])
  {
    [v14 ak_addClientInfoHeader];
  }

  if ([(ISStoreURLOperation *)self shouldSendAKPRKRequestHeader])
  {
    [v14 ak_addPRKRequestHeader];
  }

  if ((SSIsDaemon() & 1) != 0 || ISBiometricsHasEntitlement(@"adi-client"))
  {
    biometricAuthenticationContext = [(ISStoreURLOperation *)self biometricAuthenticationContext];
    oSLogObject = objc_msgSend__accountIdentifier(self);
    if (oSLogObject)
    {
      signature = [biometricAuthenticationContext signature];
      v25 = signature != 0;

      ISBiometricsAddHeadersForTouchIDRequestToURLRequest(v14, oSLogObject, v25, [biometricAuthenticationContext isExtendedAction], 0);
      if ([biometricAuthenticationContext shouldSendFallbackHeader])
      {
        [v14 setValue:@"FB" forHTTPHeaderField:*MEMORY[0x277D6A198]];
      }

      else
      {
        signature2 = [biometricAuthenticationContext signature];

        if (signature2)
        {
          v41 = sAPSession;
          v45 = _requestProperties;
          challenge = [biometricAuthenticationContext challenge];
          signature3 = [biometricAuthenticationContext signature];
          paymentTokenData = [biometricAuthenticationContext paymentTokenData];
          fpanID = [biometricAuthenticationContext fpanID];
          isExtendedAction = [biometricAuthenticationContext isExtendedAction];
          isPayment = [biometricAuthenticationContext isPayment];
          biometricSessionDelegate = [(ISStoreURLOperation *)self biometricSessionDelegate];
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          allHTTPHeaderFields = [v14 allHTTPHeaderFields];
          v33 = *MEMORY[0x277D6A138];
          v34 = [allHTTPHeaderFields objectForKeyedSubscript:*MEMORY[0x277D6A138]];

          if (v34)
          {
            [biometricAuthenticationContext setXAppleAMDHeader:v34];
            [v31 setObject:v34 forKeyedSubscript:v33];
          }

          v48 = v31;
          allHTTPHeaderFields2 = [v14 allHTTPHeaderFields];
          v36 = *MEMORY[0x277D6A140];
          v37 = [allHTTPHeaderFields2 objectForKeyedSubscript:*MEMORY[0x277D6A140]];

          if (v37)
          {
            [biometricAuthenticationContext setXAppleAMDMHeader:v37];
            [v48 setObject:v37 forKeyedSubscript:v36];
          }

          if (objc_opt_respondsToSelector())
          {
            LOBYTE(v38) = isPayment;
            [biometricSessionDelegate sender:self willSendChallenge:challenge andSignature:signature3 andPaymentTokenData:paymentTokenData andFpanID:fpanID isExtendedAction:isExtendedAction isPayment:v38 additionalHeaders:v48];
          }

          ISBiometricsAddHeadersForTouchIDSignatureToURLRequest(v14, challenge, signature3);
          [biometricAuthenticationContext setChallenge:0];
          [biometricAuthenticationContext setSignature:0];

          _requestProperties = v45;
          sAPSession = v41;
        }
      }
    }

    goto LABEL_47;
  }

  biometricAuthenticationContext = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!biometricAuthenticationContext)
  {
    biometricAuthenticationContext = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v26) = [biometricAuthenticationContext shouldLog];
  if ([biometricAuthenticationContext shouldLogToDisk])
  {
    LODWORD(v26) = v26 | 2;
  }

  oSLogObject = [biometricAuthenticationContext OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v26 = v26;
  }

  else
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_47;
  }

  v27 = objc_opt_class();
  v51 = 138412290;
  v52 = v27;
  v28 = v27;
  v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: ADI client entitlement failed", &v51, 12);

  if (v29)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
    free(v29);
    SSFileLog();
LABEL_47:
  }
}

- (void)sender:(id)sender didFallbackToPassword:(BOOL)password
{
  passwordCopy = password;
  biometricSessionDelegate = [(ISStoreURLOperation *)self biometricSessionDelegate];
  [biometricSessionDelegate sender:self didFallbackToPassword:passwordCopy];
}

- (id)_ssBag_copyGUIDSchemesFromBag:(id)bag
{
  v3 = [bag dictionaryForKey:@"guid-urls" error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"schemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v6 = v5;

    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_5:
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
    goto LABEL_9;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"https", 0}];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_ssBag_copyGUIDPatternsFromBag:(id)bag
{
  v22 = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0;
  v5 = [bagCopy dictionaryForKey:@"guid-urls" error:&v20];
  v6 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"/WebObjects/MZ(Buy|Finance|FastFinance)[.]woa/" options:1 error:0];
    if (v7)
    {
      [v4 addObject:v7];
    }
  }

  else
  {
    v7 = [v5 objectForKey:@"regex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v7;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            v13 = objc_alloc(MEMORY[0x277CCAC68]);
            v14 = [v13 initWithPattern:v12 options:1 error:{0, v16}];
            if (v14)
            {
              [v4 addObject:v14];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v9);
      }
    }
  }

  return v4;
}

- (BOOL)_ssBag_shouldSendGUIDForURL:(id)l withBag:(id)bag
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  bagCopy = bag;
  if (SSDebugAlwaysSendGUID())
  {
    v8 = 1;
  }

  else
  {
    v9 = [(ISStoreURLOperation *)self _ssBag_copyGUIDPatternsFromBag:bagCopy];
    v10 = [(ISStoreURLOperation *)self _ssBag_copyGUIDSchemesFromBag:bagCopy];
    scheme = [lCopy scheme];
    v12 = [v10 containsObject:scheme];

    if (v12)
    {
      if ([v9 count])
      {
        absoluteString = [lCopy absoluteString];
        v14 = [absoluteString length];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = v9;
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          v17 = v16;
          v21 = v9;
          v18 = *v23;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if ([*(*(&v22 + 1) + 8 * i) rangeOfFirstMatchInString:absoluteString options:0 range:{0, v14}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v8 = 1;
                goto LABEL_16;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

          v8 = 0;
LABEL_16:
          v9 = v21;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)_ssBag_copyHeaderPatternsFromBag:(id)bag
{
  v21 = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [bagCopy arrayForKey:@"send-content-restrictions-header" error:0];
  if ([v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x277CCAC68]);
          v14 = [v13 initWithPattern:v12 options:1 error:{0, v16}];
          if (v14)
          {
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      [v4 setObject:v6 forKey:@"X-Apple-Restrictions"];
    }
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  return v4;
}

+ (id)_ssBag_copyExtraHeadersForURL:(id)l bag:(id)bag
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [self _ssBag_copyHeaderPatternsFromBag:bag];
  if (v7)
  {
    v20 = lCopy;
    absoluteString = [lCopy absoluteString];
    v9 = [absoluteString length];
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v7;
    v23 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v22 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v10);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v10 objectForKey:v12];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                if ([*(*(&v24 + 1) + 8 * j) rangeOfFirstMatchInString:absoluteString options:0 range:{0, v9}] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v21 addObject:v12];
                  goto LABEL_17;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v23 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }

    lCopy = v20;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (void)_addiTunesStoreHeadersToRequest:(id)request withSSBag:(id)bag accountIdentifier:(id)identifier appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)bundleIdentifier
{
  lCopy = l;
  headersCopy = headers;
  requestCopy = request;
  bagCopy = bag;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (identifierCopy)
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    v18 = [defaultStore accountWithUniqueIdentifier:identifierCopy];

    if (v18)
    {
      goto LABEL_6;
    }

    v19 = *MEMORY[0x277D6A160];
    v20 = [requestCopy valueForHTTPHeaderField:*MEMORY[0x277D6A160]];

    if (!v20)
    {
      stringValue = [identifierCopy stringValue];
      [requestCopy setValue:stringValue forHTTPHeaderField:v19];
    }
  }

  v18 = 0;
LABEL_6:
  [self _addiTunesStoreHeadersToRequest:requestCopy withSSBag:bagCopy account:v18 appendAuthKitHeaders:headersCopy appendStorefrontToURL:lCopy clientBundleIdentifier:bundleIdentifierCopy];
}

+ (void)_addiTunesStoreHeadersToRequest:(id)request withSSBag:(id)bag account:(id)account appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)identifier
{
  lCopy = l;
  headersCopy = headers;
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  requestCopy = request;
  v18 = [requestCopy URL];
  v20 = [self _ssBag_copyExtraHeadersForURL:v18 bag:bagCopy];

  v19 = [bagCopy stringForKey:@"storefront-header-suffix" error:0];

  [self _addiTunesStoreHeadersToRequest:requestCopy withAccount:accountCopy appendAuthKitHeaders:headersCopy appendStorefrontToURL:lCopy clientBundleIdentifier:identifierCopy extraHeaders:v20 storefrontSuffix:v19];
}

+ (void)_addiTunesStoreHeadersToRequest:(id)request withURLBag:(id)bag accountIdentifier:(id)identifier appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)bundleIdentifier
{
  lCopy = l;
  headersCopy = headers;
  requestCopy = request;
  bagCopy = bag;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (identifierCopy)
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    v18 = [defaultStore accountWithUniqueIdentifier:identifierCopy];

    if (v18)
    {
      goto LABEL_6;
    }

    v19 = *MEMORY[0x277D6A160];
    v20 = [requestCopy valueForHTTPHeaderField:*MEMORY[0x277D6A160]];

    if (!v20)
    {
      stringValue = [identifierCopy stringValue];
      [requestCopy setValue:stringValue forHTTPHeaderField:v19];
    }
  }

  v18 = 0;
LABEL_6:
  [self _addiTunesStoreHeadersToRequest:requestCopy withURLBag:bagCopy account:v18 appendAuthKitHeaders:headersCopy appendStorefrontToURL:lCopy clientBundleIdentifier:bundleIdentifierCopy];
}

- (void)_setStoreFrontIdentifier:(id)identifier isTransient:(BOOL)transient
{
  v5 = MEMORY[0x277D69A80];
  identifierCopy = identifier;
  currentDevice = [v5 currentDevice];
  _account = [(ISStoreURLOperation *)self _account];
  [currentDevice setStoreFrontIdentifier:identifierCopy account:_account];
}

- (id)_absintheHeaders
{
  v33 = *MEMORY[0x277D85DE8];
  logKey = [(ISStoreURLOperation *)self logKey];
  v4 = AMSSetLogKey();

  v5 = [(ISStoreURLOperation *)self bag];

  if (v5)
  {
    v6 = [ISAMSBagShim alloc];
    v7 = [(ISStoreURLOperation *)self bag];
    v8 = [(ISAMSBagShim *)v6 initWithBag:v7];
  }

  else
  {
    uRLBagContext = [(ISStoreURLOperation *)self URLBagContext];
    v7 = [(ISStoreURLOperation *)self _urlBagForContext:uRLBagContext];

    v8 = [[ISAMSBagShim alloc] initWithURLBag:v7];
  }

  v10 = v8;

  _buyParams = [(ISStoreURLOperation *)self _buyParams];
  if (_buyParams)
  {
    v12 = [objc_alloc(MEMORY[0x277CEE438]) initWithString:_buyParams];
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x277CEE3C8];
  activeURLRequest = [(ISURLOperation *)self activeURLRequest];
  v15 = [v13 headersForRequest:activeURLRequest buyParams:v12 bag:v10];
  v26 = 0;
  v16 = [v15 resultWithError:&v26];
  v17 = v26;

  if (v17)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v27 = 138543874;
      v28 = v22;
      v29 = 2114;
      v30 = v23;
      v31 = 2114;
      v32 = v17;
      v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: [%{public}@] Absinthe failed. Error: %{public}@", &v27, 32);

      if (!v24)
      {
LABEL_20:

        goto LABEL_21;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    goto LABEL_20;
  }

LABEL_21:

  return v16;
}

+ (void)_addAccountDSID:(id)d toRequest:(id)request
{
  dCopy = d;
  requestCopy = request;
  v6 = *MEMORY[0x277D6A160];
  v7 = [requestCopy valueForHTTPHeaderField:*MEMORY[0x277D6A160]];

  if (!v7)
  {
    uniqueIdentifier = [dCopy uniqueIdentifier];
    v9 = uniqueIdentifier;
    if (uniqueIdentifier && [uniqueIdentifier unsignedLongLongValue])
    {
      stringValue = [v9 stringValue];
      [requestCopy setValue:stringValue forHTTPHeaderField:v6];
    }
  }
}

+ (void)_addiTunesStoreHeadersToRequest:(id)request withAccount:(id)account appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)identifier extraHeaders:(id)extraHeaders storefrontSuffix:(id)suffix
{
  lCopy = l;
  headersCopy = headers;
  v127 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  accountCopy = account;
  identifierCopy = identifier;
  extraHeadersCopy = extraHeaders;
  suffixCopy = suffix;
  [self _addAccountDSID:accountCopy toRequest:requestCopy];
  [self _addPrimaryiCloudDSIDToRequest:requestCopy];
  v103 = accountCopy;
  v16 = [ISStoreURLOperation _storeFrontIdentifierForAccount:accountCopy];
  v17 = 0x277D69000uLL;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v20 = shouldLog | 2;
  }

  else
  {
    v20 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (v22)
  {
    v23 = objc_opt_class();
    v94 = v23;
    [requestCopy URL];
    v24 = v98 = lCopy;
    SSHashIfNeeded();
    v26 = v25 = v16;
    hashedDescription = [v103 hashedDescription];
    v119 = 138544130;
    v120 = v23;
    v121 = 2114;
    v122 = v24;
    v123 = 2114;
    v124 = v26;
    v125 = 2114;
    v126 = hashedDescription;
    v28 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%{public}@: Attempted to get the storefront in order to run %{public}@. storefront = %{public}@ | account = %{public}@", &v119, 42);

    v16 = v25;
    v17 = 0x277D69000;

    lCopy = v98;
    if (v28)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
      free(v28);
      v92 = v29;
      SSFileLog();
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = *MEMORY[0x277D6A190];
    v31 = [requestCopy valueForHTTPHeaderField:*MEMORY[0x277D6A190]];
    if (!v31)
    {
      if ([suffixCopy length])
      {
        v41 = suffixCopy;
      }

      else
      {
        v42 = identifierCopy;
        if (!identifierCopy)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];

          v42 = bundleIdentifier;
        }

        identifierCopy = v42;
        v41 = [ISLoadURLBagOperation storeFrontHeaderSuffixForBundleIdentifier:v92];
      }

      suffixCopy = v41;
      if ([v41 length])
      {
        v45 = [v16 stringByAppendingString:v41];

        v16 = v45;
      }

      v40 = v16;
      v16 = [v16 copy];
      [requestCopy setValue:v16 forHTTPHeaderField:v30];
      goto LABEL_35;
    }

    sharedAccountsStorefrontConfig = [*(v17 + 2872) sharedAccountsStorefrontConfig];
    if (!sharedAccountsStorefrontConfig)
    {
      sharedAccountsStorefrontConfig = [*(v17 + 2872) sharedConfig];
    }

    shouldLog2 = [sharedAccountsStorefrontConfig shouldLog];
    if ([sharedAccountsStorefrontConfig shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [sharedAccountsStorefrontConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v35 = shouldLog2;
    }

    else
    {
      v35 = shouldLog2 & 2;
    }

    if (v35)
    {
      v36 = objc_opt_class();
      v99 = v36;
      SSHashIfNeeded();
      v38 = v37 = lCopy;
      v119 = 138543618;
      v120 = v36;
      v121 = 2114;
      v122 = v38;
      LODWORD(v93) = 22;
      v39 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_275BC3000, oSLogObject2, 2, "%{public}@: The request already has a storefront. We'll use it to run the request. existingStorefront = %{public}@", &v119, v93);

      lCopy = v37;
      if (!v39)
      {
LABEL_26:

        v40 = v31;
        v17 = 0x277D69000;
LABEL_35:

        v16 = v40;
        goto LABEL_36;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v39 encoding:4];
      free(v39);
      v92 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_26;
  }

LABEL_36:
  if (!lCopy)
  {
    goto LABEL_49;
  }

  sharedAccountsStorefrontConfig2 = [*(v17 + 2872) sharedAccountsStorefrontConfig];
  if (!sharedAccountsStorefrontConfig2)
  {
    sharedAccountsStorefrontConfig2 = [*(v17 + 2872) sharedConfig];
  }

  shouldLog3 = [sharedAccountsStorefrontConfig2 shouldLog];
  if ([sharedAccountsStorefrontConfig2 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [sharedAccountsStorefrontConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
  {
    v49 = shouldLog3;
  }

  else
  {
    v49 = shouldLog3 & 2;
  }

  if (!v49)
  {
    goto LABEL_47;
  }

  v50 = objc_opt_class();
  v119 = 138543362;
  v120 = v50;
  v51 = v50;
  LODWORD(v93) = 12;
  v52 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &dword_275BC3000, oSLogObject3, 2, "%{public}@: We were told to append the storefront to the URL.", &v119, v93);

  if (v52)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v52 encoding:4];
    free(v52);
    v92 = oSLogObject3;
    SSFileLog();
LABEL_47:
  }

  [self _appendStorefront:v16 toRequestURL:requestCopy];
LABEL_49:
  v53 = +[ISClient currentClient];
  partnerHeader = [v53 partnerHeader];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = [partnerHeader copy];
    [requestCopy setValue:v55 forHTTPHeaderField:@"X-Apple-Partner"];
  }

  v56 = +[ISNetworkObserver sharedInstance];
  connectionTypeHeader = [v56 connectionTypeHeader];

  if ([connectionTypeHeader length])
  {
    v58 = [connectionTypeHeader copy];
    [requestCopy setValue:v58 forHTTPHeaderField:@"X-Apple-Connection-Type"];
  }

  if (SSIsAppStoreDaemon())
  {
    softwareLibraryIdentifier = connectionTypeHeader;
  }

  else
  {
    currentDevice = [MEMORY[0x277D69A80] currentDevice];
    softwareLibraryIdentifier = [currentDevice softwareLibraryIdentifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [softwareLibraryIdentifier copy];
      [requestCopy setValue:v61 forHTTPHeaderField:*MEMORY[0x277D6A188]];
    }
  }

  appleClientApplication = [v53 appleClientApplication];

  if (appleClientApplication)
  {
    v63 = [appleClientApplication copy];
    [requestCopy setValue:v63 forHTTPHeaderField:*MEMORY[0x277D6A158]];
  }

  appleClientVersions = [v53 appleClientVersions];

  if ([appleClientVersions length])
  {
    v65 = [appleClientVersions copy];
    [requestCopy setValue:v65 forHTTPHeaderField:@"X-Apple-Client-Versions"];
  }

  v100 = v16;
  v95 = v53;
  clientProvidedHeaders = [v53 clientProvidedHeaders];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    allKeys = [clientProvidedHeaders allKeys];
    v68 = [allKeys countByEnumeratingWithState:&v112 objects:v118 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v113;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v113 != v70)
          {
            objc_enumerationMutation(allKeys);
          }

          v72 = *(*(&v112 + 1) + 8 * i);
          v73 = [clientProvidedHeaders objectForKeyedSubscript:v72];
          v74 = [v73 copy];
          [requestCopy setValue:v74 forHTTPHeaderField:v72];
        }

        v69 = [allKeys countByEnumeratingWithState:&v112 objects:v118 count:16];
      }

      while (v69);
    }
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v75 = extraHeadersCopy;
  v76 = [v75 countByEnumeratingWithState:&v108 objects:v117 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v109;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v109 != v78)
        {
          objc_enumerationMutation(v75);
        }

        if ([*(*(&v108 + 1) + 8 * j) isEqualToString:@"X-Apple-Restrictions"])
        {
          _restrictionsHeaderValue = [self _restrictionsHeaderValue];
          if ([_restrictionsHeaderValue length])
          {
            v81 = [_restrictionsHeaderValue copy];
            [requestCopy setValue:v81 forHTTPHeaderField:@"X-Apple-Restrictions"];
          }
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v108 objects:v117 count:16];
    }

    while (v77);
  }

  if (headersCopy)
  {
    v82 = +[ISStoreURLOperation _authKitSession];
    v83 = [v82 appleIDHeadersForRequest:requestCopy];

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v84 = v83;
    v85 = [v84 countByEnumeratingWithState:&v104 objects:v116 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v105;
      do
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v105 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = *(*(&v104 + 1) + 8 * k);
          v90 = [v84 objectForKeyedSubscript:v89];
          v91 = [v90 copy];
          [requestCopy setValue:v91 forHTTPHeaderField:v89];
        }

        v86 = [v84 countByEnumeratingWithState:&v104 objects:v116 count:16];
      }

      while (v86);
    }
  }
}

+ (void)_addiTunesStoreHeadersToRequest:(id)request withURLBag:(id)bag account:(id)account appendAuthKitHeaders:(BOOL)headers appendStorefrontToURL:(BOOL)l clientBundleIdentifier:(id)identifier
{
  lCopy = l;
  headersCopy = headers;
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  requestCopy = request;
  v18 = [requestCopy URL];
  v20 = [bagCopy copyExtraHeadersForURL:v18];

  v19 = [bagCopy valueForKey:@"storefront-header-suffix"];

  [self _addiTunesStoreHeadersToRequest:requestCopy withAccount:accountCopy appendAuthKitHeaders:headersCopy appendStorefrontToURL:lCopy clientBundleIdentifier:identifierCopy extraHeaders:v20 storefrontSuffix:v19];
}

+ (void)_addPrimaryiCloudDSIDToRequest:(id)request
{
  requestCopy = request;
  mEMORY[0x277D69CB0] = [MEMORY[0x277D69CB0] sharedAccountStore];
  primaryAppleAccount = [mEMORY[0x277D69CB0] primaryAppleAccount];

  aa_personID = [primaryAppleAccount aa_personID];
  if ([aa_personID length])
  {
    v6 = [aa_personID copy];
    [requestCopy setValue:v6 forHTTPHeaderField:*MEMORY[0x277D6A128]];
  }
}

+ (void)_appendStorefront:(id)storefront toRequestURL:(id)l
{
  storefrontCopy = storefront;
  lCopy = l;
  v6 = [lCopy URL];
  if ([v6 _ss_hasQueryParameter:@"storefront"])
  {
    v7 = [v6 _ss_URLByRemovingQueryParameter:@"storefront"];

    v6 = v7;
  }

  if ([storefrontCopy length])
  {
    v8 = [v6 URLByAppendingQueryParameter:@"storefront" value:storefrontCopy];

    v6 = v8;
  }

  [lCopy setURL:v6];
}

- (void)_applyAnalyticsCookiesToRequest:(id)request withBag:(id)bag oldBag:(id)oldBag
{
  v82 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  bagCopy = bag;
  oldBagCopy = oldBag;
  v11 = oldBagCopy;
  if (bagCopy)
  {
    v12 = *MEMORY[0x277D6A4F8];
    v74 = 0;
    v13 = [bagCopy dictionaryForKey:v12 error:&v74];
    v14 = v74;
    v73 = v14;
    v15 = [bagCopy arrayForKey:@"clientIDDomains" error:&v73];
    v16 = v73;
  }

  else
  {
    if (oldBagCopy)
    {
      v17 = [oldBagCopy valueForKey:*MEMORY[0x277D6A4F8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }

      v18 = [v11 valueForKey:@"clientIDDomains"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 0;
  }

  v19 = [v13 objectForKey:@"metricsUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v68 = v20;
  if (v20)
  {
    v62 = [MEMORY[0x277CBEBC0] URLWithString:v20];
    if (v62)
    {
      v63 = v15;
      if (!v16 && [v15 count])
      {
        v60 = v13;
        v67 = v11;
        v58 = bagCopy;
        _requestProperties = [(ISURLOperation *)self _requestProperties];
        [_requestProperties URLBagType];
        v41 = SSAccountScopeForURLBagType();

        mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
        v43 = objc_msgSend__accountIdentifier(self);
        v44 = [mEMORY[0x277D69CB8] cookieHeadersForURL:v62 userIdentifier:v43 scope:v41];

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        mEMORY[0x277D69B38] = v44;
        v45 = [mEMORY[0x277D69B38] countByEnumeratingWithState:&v69 objects:v75 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v70;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v70 != v47)
              {
                objc_enumerationMutation(mEMORY[0x277D69B38]);
              }

              v49 = *(*(&v69 + 1) + 8 * i);
              lowercaseString = [v49 lowercaseString];
              v51 = [lowercaseString isEqualToString:@"cookie"];

              if (v51)
              {
                v52 = [requestCopy valueForHTTPHeaderField:v49];
                v53 = [v52 mutableCopy];
                v54 = v53;
                if (v53)
                {
                  v55 = v53;
                }

                else
                {
                  v55 = objc_alloc_init(MEMORY[0x277CCAB68]);
                }

                v56 = v55;

                if ([v56 length])
                {
                  [v56 appendString:@"; "];
                }

                v57 = [mEMORY[0x277D69B38] objectForKeyedSubscript:v49];
                [v56 appendString:v57];

                [requestCopy setValue:v56 forHTTPHeaderField:v49];
              }
            }

            v46 = [mEMORY[0x277D69B38] countByEnumeratingWithState:&v69 objects:v75 count:16];
          }

          while (v46);
        }

        bagCopy = v58;
        v13 = v60;
        v15 = v63;
        v11 = v67;
        goto LABEL_59;
      }

      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v24 = shouldLog;
      }

      else
      {
        v24 = shouldLog & 2;
      }

      if (v24)
      {
        v59 = v13;
        v65 = v11;
        v25 = objc_opt_class();
        v26 = v25;
        logKey = [(ISStoreURLOperation *)self logKey];
        v76 = 138543874;
        v77 = v25;
        v78 = 2114;
        v79 = logKey;
        v80 = 2114;
        v81 = v16;
        v28 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Failed to fetch analytics domains. %{public}@", &v76, 32);

        if (!v28)
        {
          v15 = v63;
          v11 = v65;
          v13 = v59;
          goto LABEL_59;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:4];
        free(v28);
        SSFileLog();
        v11 = v65;
        v13 = v59;
      }

      v15 = v63;

LABEL_59:
      v39 = v68;
      v38 = v62;
      goto LABEL_60;
    }
  }

  v66 = v11;
  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  v31 = mEMORY[0x277D69B38]2;
  mEMORY[0x277D69B38] = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(mEMORY[0x277D69B38], OS_LOG_TYPE_DEFAULT))
  {
    v32 = shouldLog2;
  }

  else
  {
    v32 = shouldLog2 & 2;
  }

  if (!v32)
  {
    v38 = v31;
    v11 = v66;
    v39 = v68;
    goto LABEL_60;
  }

  v61 = v16;
  v64 = v15;
  v33 = v13;
  v34 = objc_opt_class();
  v35 = v34;
  logKey2 = [(ISStoreURLOperation *)self logKey];
  v76 = 138543618;
  v77 = v34;
  v78 = 2114;
  v79 = logKey2;
  v37 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_275BC3000, mEMORY[0x277D69B38], 0, "%{public}@: [%{public}@] Failed to fetch analytics domains due to missing metrics URL", &v76, 22);

  if (v37)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:4];
    free(v37);
    v38 = v31;
    SSFileLog();
    v13 = v33;
    v15 = v64;
    v11 = v66;
    v16 = v61;
    v39 = v68;
LABEL_60:

    goto LABEL_61;
  }

  v13 = v33;
  v16 = v61;
  v39 = v68;
  v38 = v31;
  v15 = v64;
  v11 = v66;
LABEL_61:
}

+ (id)_restrictionsHeaderValue
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBParentalControlsEnabled", @"com.apple.springboard", 0);
  v4 = AppBooleanValue != 0;
  v5 = SSRestrictionsCopyRankForMediaType();
  v6 = v5;
  if (v5)
  {
    if (AppBooleanValue)
    {
      v4 = 1;
    }

    else
    {
      integerValue = [v5 integerValue];
      v4 = integerValue != *MEMORY[0x277D6A580];
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"apps=%ld", objc_msgSend(v6, "longValue")];
    [v2 addObject:v8];
  }

  v9 = SSRestrictionsCopyRankForMediaType();

  if (v9)
  {
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      integerValue2 = [v9 integerValue];
      v4 = integerValue2 != *MEMORY[0x277D6A580];
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"movies=%ld", objc_msgSend(v9, "longValue")];
    [v2 addObject:v11];
  }

  v12 = SSRestrictionsCopyRankForMediaType();

  if (v12)
  {
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      integerValue3 = [v12 integerValue];
      v4 = integerValue3 != *MEMORY[0x277D6A580];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"tv=%ld", objc_msgSend(v12, "longValue")];
    [v2 addObject:v14];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v16 = [mEMORY[0x277D262A0] effectiveRestrictedBoolValueForSetting:*MEMORY[0x277D25E90]];

  if (v16 == 2)
  {
    v17 = @"explicit=off";
  }

  else
  {
    v17 = @"explicit=on";
  }

  [v2 addObject:v17];
  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  v19 = [mEMORY[0x277D262A0]2 effectiveRestrictedBoolValueForSetting:*MEMORY[0x277D25F38]];

  if (v19 == 2)
  {
    [v2 addObject:@"in-app=off"];
LABEL_22:
    v20 = [v2 componentsJoinedByString:@""];;
    goto LABEL_24;
  }

  [v2 addObject:@"in-app=on"];
  if (v16 == 2 || v4)
  {
    goto LABEL_22;
  }

  v20 = 0;
LABEL_24:

  return v20;
}

- (id)_account
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  v4 = objc_msgSend__accountIdentifier(self);
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [_requestProperties URLBagType];
  v6 = SSAccountScopeForURLBagType();

  if (v6 == 1)
  {
    if (v4 || ([defaultStore activeSandboxAccount], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "uniqueIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v7, v4))
    {
      v8 = [defaultStore accountWithUniqueIdentifier:v4 scope:1];
LABEL_8:
      v10 = v8;
      goto LABEL_9;
    }
  }

  else if (v4 || ([defaultStore activeAccount], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v9, v4))
  {
    v8 = [defaultStore accountWithUniqueIdentifier:v4];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_addStandardQueryParametersForURL:(id)l
{
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  requestParameters = [_requestProperties requestParameters];
  if (SSDebugShouldSendCacheBuster())
  {
    v6 = [requestParameters objectForKey:@"buster"];

    if (!v6)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      v8 = uUID;
      if (uUID)
      {
        uUIDString = [uUID UUIDString];
        if (uUIDString)
        {
          [v11 setObject:uUIDString forKey:@"buster"];
        }
      }
    }
  }

  if ([v11 count])
  {
    v10 = [requestParameters mutableCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v10 addEntriesFromDictionary:v11];
    [_requestProperties setRequestParameters:v10];
  }
}

+ (id)_authKitSession
{
  if (_authKitSession_sOnce != -1)
  {
    +[ISStoreURLOperation _authKitSession];
  }

  v3 = _authKitSession__authKitSession;

  return v3;
}

uint64_t __38__ISStoreURLOperation__authKitSession__block_invoke()
{
  _authKitSession__authKitSession = objc_alloc_init(MEMORY[0x277CF0188]);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_authenticateWithContext:(id)context error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__3;
  v59 = __Block_byref_object_dispose__3;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v11 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

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
      logKey = [(ISStoreURLOperation *)self logKey];
      v65 = 138543618;
      v66 = v13;
      v67 = 2114;
      v68 = logKey;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, v11, 0, "%{public}@: [%{public}@] Handing off authentication to delegate", &v65, 22);

      if (!v14)
      {
LABEL_13:

        v15 = dispatch_semaphore_create(0);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __54__ISStoreURLOperation__authenticateWithContext_error___block_invoke;
        v46[3] = &unk_27A670B60;
        v46[4] = self;
        v48 = &v61;
        v49 = &v55;
        v50 = &v51;
        v16 = v15;
        v47 = v16;
        [delegate operation:self shouldAuthenticateWithContext:contextCopy responseHandler:v46];
        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_14;
      }

      v11 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
      free(v14);
      v35 = v11;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (*(v52 + 24) != 1)
  {
    v31 = 0;
    if ((v62[3] & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  shouldLogToDisk2 = [mEMORY[0x277D69B38]2 shouldLogToDisk];
  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  v21 = oSLogObject2;
  if (shouldLogToDisk2)
  {
    shouldLog2 |= 2u;
  }

  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = shouldLog2;
  }

  else
  {
    v22 = shouldLog2 & 2;
  }

  if (!v22)
  {
    goto LABEL_29;
  }

  v37 = objc_opt_class();
  logKey2 = [(ISStoreURLOperation *)self logKey];
  requestProperties = [(ISURLOperation *)self requestProperties];
  v25 = [requestProperties URL];
  uRLBagKey = v25;
  if (!v25)
  {
    logKey = [(ISURLOperation *)self requestProperties];
    uRLBagKey = [logKey URLBagKey];
  }

  v65 = 138543874;
  v66 = v37;
  v67 = 2114;
  v68 = logKey2;
  v69 = 2114;
  v70 = uRLBagKey;
  LODWORD(v36) = 32;
  v27 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, v21, 0, "%{public}@: [%{public}@] Performing local authentication due to %{public}@.", &v65, v36);
  if (!v25)
  {
  }

  if (v27)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:4];
    free(v27);
    v35 = v21;
    SSFileLog();
LABEL_29:
  }

  v29 = (v56 + 5);
  v28 = v56[5];
  v44 = 0;
  obj = v28;
  v30 = [(ISOperation *)self copyAccountID:&obj credentialSource:0 byAuthenticatingWithContext:contextCopy returningError:&v44];
  objc_storeStrong(v29, obj);
  v31 = v44;
  *(v62 + 24) = v30;
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_33:
  [(ISStoreURLOperation *)self setAuthenticatedDSID:v56[5], v35];
  if (objc_opt_respondsToSelector())
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __54__ISStoreURLOperation__authenticateWithContext_error___block_invoke_177;
    v40[3] = &unk_27A670AC8;
    v41 = delegate;
    selfCopy = self;
    v43 = &v55;
    [(ISOperation *)self delegateDispatch:v40];
  }

LABEL_35:
  v32 = *(v62 + 24);
  if (error && (v62[3] & 1) == 0)
  {
    v33 = v31;
    *error = v31;
    v32 = *(v62 + 24);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  return v32 & 1;
}

void __54__ISStoreURLOperation__authenticateWithContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = 0x277D69000uLL;
  if (v5)
  {
    v8 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v9 |= 2u;
    }

    v10 = [v8 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v48 = v5;
      v12 = objc_opt_class();
      v13 = [*(a1 + 32) logKey];
      v14 = [*(a1 + 32) requestProperties];
      v15 = [v14 URL];
      v16 = v15;
      if (!v15)
      {
        v47 = [*(a1 + 32) requestProperties];
        v16 = [v47 URLBagKey];
      }

      v51 = 138543874;
      v52 = v12;
      v53 = 2114;
      v54 = v13;
      v55 = 2114;
      v56 = v16;
      v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, v10, 0, "%{public}@: [%{public}@] Performing authentication due to %{public}@.", &v51, 32);
      if (!v15)
      {
      }

      v5 = v48;
      v7 = 0x277D69000;
      if (v17)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
        free(v17);
        v45 = v18;
        SSFileLog();
      }
    }

    else
    {
    }

    v28 = *(a1 + 32);
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    v49 = v6;
    obj = v30;
    v31 = [v28 copyAccountID:&obj credentialSource:0 byHandlingAuthenticateResponse:v5 returningError:&v49];
    objc_storeStrong((v29 + 40), obj);
    v27 = v49;

    *(*(*(a1 + 48) + 8) + 24) = v31;
    LODWORD(v29) = *(*(*(a1 + 48) + 8) + 24);
    v32 = [*(v7 + 2872) sharediTunesStoreConfig];
    v33 = v32;
    if (v29 == 1)
    {
      if (!v32)
      {
        v33 = [*(v7 + 2872) sharedConfig];
      }

      LODWORD(v34) = [v33 shouldLog];
      if ([v33 shouldLogToDisk])
      {
        LODWORD(v34) = v34 | 2;
      }

      v35 = [v33 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v34;
      }

      else
      {
        v34 &= 2u;
      }

      if (!v34)
      {
        goto LABEL_50;
      }

      v36 = objc_opt_class();
      v37 = *(a1 + 32);
      v38 = v36;
      v39 = [v37 logKey];
      v51 = 138543618;
      v52 = v36;
      v53 = 2114;
      v54 = v39;
      LODWORD(v46) = 22;
      v40 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_275BC3000, v35, 0, "%{public}@: [%{public}@] Delegate successfully completed authentication", &v51, v46);
    }

    else
    {
      if (!v32)
      {
        v33 = [*(v7 + 2872) sharedConfig];
      }

      LODWORD(v41) = [v33 shouldLog];
      if ([v33 shouldLogToDisk])
      {
        LODWORD(v41) = v41 | 2;
      }

      v35 = [v33 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v41 = v41;
      }

      else
      {
        v41 &= 2u;
      }

      if (!v41)
      {
        goto LABEL_50;
      }

      v42 = objc_opt_class();
      v43 = *(a1 + 32);
      v38 = v42;
      v39 = [v43 logKey];
      v51 = 138543874;
      v52 = v42;
      v53 = 2114;
      v54 = v39;
      v55 = 2114;
      v56 = v27;
      LODWORD(v46) = 32;
      v40 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_275BC3000, v35, 16, "%{public}@: [%{public}@] Delegate authentication failed with error: %{public}@", &v51, v46);
    }

    v44 = v40;

    if (!v44)
    {
LABEL_51:

      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_52;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:4];
    free(v44);
    SSFileLog();
LABEL_50:

    goto LABEL_51;
  }

  v19 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v19)
  {
    v19 = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v20) = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    LODWORD(v20) = v20 | 2;
  }

  v21 = [v19 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v20;
  }

  else
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_26;
  }

  v22 = objc_opt_class();
  v23 = *(a1 + 32);
  v24 = v22;
  v25 = [v23 logKey];
  v51 = 138543874;
  v52 = v22;
  v53 = 2114;
  v54 = v25;
  v55 = 2114;
  v56 = v6;
  v26 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_275BC3000, v21, 0, "%{public}@: [%{public}@] Authenticating locally, delegate request failed with error: %{public}@", &v51, 32);

  if (v26)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:4];
    free(v26);
    SSFileLog();
LABEL_26:
  }

  v27 = v6;
LABEL_52:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_canSendTokenToURL:(id)l
{
  scheme = [l scheme];
  v4 = [scheme isEqualToString:@"https"];

  return v4;
}

- (id)_buyParams
{
  authenticationContext = [(ISURLOperation *)self authenticationContext];
  signupRequestParameters = [authenticationContext signupRequestParameters];
  v4 = [signupRequestParameters objectForKey:@"product"];

  return v4;
}

- (void)_continueTouchIDSession
{
  v20 = *MEMORY[0x277D85DE8];
  dataProvider = [(ISURLOperation *)self dataProvider];
  output = [dataProvider output];
  v5 = [output objectForKey:@"dialog"];

  if (v5)
  {
    biometricSessionDelegate = [[ISDialog alloc] initWithDialogDictionary:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    buttons = [(ISDialog *)biometricSessionDelegate buttons];
    v8 = [buttons countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      selfCopy = self;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(buttons);
          }

          dictionary = [*(*(&v15 + 1) + 8 * i) dictionary];
          v13 = [dictionary objectForKey:@"tidContinue"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
          {

            biometricSessionDelegate = [(ISStoreURLOperation *)selfCopy biometricSessionDelegate];
            if (objc_opt_respondsToSelector())
            {
              [(ISDialog *)biometricSessionDelegate sender:selfCopy shouldContinueTouchIDSession:1];
            }

            goto LABEL_14;
          }
        }

        v9 = [buttons countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (id)_copyAuthenticationContextForAttemptNumber:(int64_t)number
{
  _copyAuthenticationContext = [(ISStoreURLOperation *)self _copyAuthenticationContext];
  v6 = _copyAuthenticationContext;
  if (number >= 1)
  {
    [_copyAuthenticationContext setPromptStyle:1];
  }

  response = [(ISURLOperation *)self response];

  if (response)
  {
    v8 = MEMORY[0x277D69A20];
    response2 = [(ISURLOperation *)self response];
    [v6 setAllowsSilentAuthentication:{objc_msgSend(v8, "URLResponseAllowsSilentAuthentication:", response2)}];
  }

  return v6;
}

- (BOOL)_isErrorTokenError:(id)error
{
  errorCopy = error;
  if (ISErrorIsEqual(errorCopy, @"SSErrorDomain", 0x12) & 1) != 0 || (v4 = *MEMORY[0x277D6A5A8], (ISErrorIsEqual(errorCopy, *MEMORY[0x277D6A5A8], 0x3E9)) || (ISErrorIsEqual(errorCopy, v4, 0x3EB))
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual(errorCopy, v4, 0x3EC);
  }

  return IsEqual;
}

- (id)_loadURLBagInterpreterWithRequest:(id)request requestProperties:(id)properties
{
  v27[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  propertiesCopy = properties;
  sAPSession = [(ISStoreURLOperation *)self SAPSession];
  if ([sAPSession useSharedBagInterpreter])
  {
    sAPSession2 = [(ISStoreURLOperation *)self SAPSession];
    urlBagInterpreter = [sAPSession2 urlBagInterpreter];

    if (urlBagInterpreter)
    {
      sAPSession3 = [(ISStoreURLOperation *)self SAPSession];
      urlBagInterpreter2 = [sAPSession3 urlBagInterpreter];

      goto LABEL_15;
    }
  }

  else
  {
  }

  v13 = [MEMORY[0x277D69C90] contextWithBagType:{objc_msgSend(propertiesCopy, "URLBagType")}];
  [v13 setAllowsBootstrapCellularData:{objc_msgSend(propertiesCopy, "allowsBootstrapCellularData")}];
  v14 = 1;
  [v13 setAllowsExpiredBags:1];
  v26 = *MEMORY[0x277D6A130];
  v27[0] = *MEMORY[0x277D6A190];
  v15 = &v26;
  do
  {
    v16 = v14;
    v17 = *v15;
    v18 = [requestCopy valueForHTTPHeaderField:*v15];
    if (v18)
    {
      [v13 setValue:v18 forHTTPHeaderField:v17];
    }

    v14 = 0;
    v15 = v27;
  }

  while ((v16 & 1) != 0);
  v19 = objc_msgSend__accountIdentifier(self);
  v20 = [(ISOperation *)self loadedURLBagWithContext:v13 accountDSID:v19 returningError:0];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D69D28]);
    uRLBagDictionary = [v20 URLBagDictionary];
    v23 = [v21 initWithURLBagDictionary:uRLBagDictionary];
  }

  else
  {
    v23 = 0;
  }

  urlBagInterpreter2 = v23;

  for (i = 1; i != -1; --i)
  {
  }

LABEL_15:

  return urlBagInterpreter2;
}

- (BOOL)_performMachineDataRequest:(id)request
{
  requestCopy = request;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  _account = [(ISStoreURLOperation *)self _account];
  uniqueIdentifier = [_account uniqueIdentifier];
  [requestCopy setAccountIdentifier:uniqueIdentifier];

  [requestCopy setWaitsForPurchaseOperations:{+[ISStoreURLOperation _operationWaitsForPurchases:](ISStoreURLOperation, "_operationWaitsForPurchases:", self)}];
  v7 = dispatch_semaphore_create(0);
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__ISStoreURLOperation__performMachineDataRequest___block_invoke;
  v17 = &unk_27A670B88;
  v19 = &v20;
  v9 = v7;
  v18 = v9;
  [ISStoreURLOperation _performMachineDataRequest:requestCopy requestProperties:_requestProperties completion:&v14];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v21 + 24) == 1)
  {
    [(ISOperation *)self lock:v14];
    protocolVersion = [requestCopy protocolVersion];
    if (protocolVersion)
    {
      if (protocolVersion != 1)
      {
LABEL_8:
        [(ISOperation *)self unlock];
        v12 = *(v21 + 24);
        goto LABEL_9;
      }

      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    self->_activeMachineDataStyle = v11;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  _Block_object_dispose(&v20, 8);
  return v12 & 1;
}

- (id)_resolvedURLInBagContext:(id)context bagTrusted:(BOOL *)trusted
{
  contextCopy = context;
  v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:contextCopy];
  if (![(ISOperation *)self runSubOperation:v7 returningError:0])
  {
    v13 = 0;
    uRLBag = 0;
    v10 = 0;
    if (!trusted)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  uRLBag = [(ISLoadURLBagOperation *)v7 URLBag];
  v10 = [_requestProperties URL];
  if (!v10)
  {
    uRLBagURLBlock = [_requestProperties URLBagURLBlock];
    v12 = uRLBagURLBlock;
    if (uRLBagURLBlock)
    {
      v10 = (*(uRLBagURLBlock + 16))(uRLBagURLBlock, contextCopy);
    }

    else
    {
      uRLBagKey = [_requestProperties URLBagKey];
      if (uRLBagKey)
      {
        v10 = [uRLBag urlForKey:uRLBagKey];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  v13 = [uRLBag urlIsTrusted:v10];

  if (trusted)
  {
LABEL_13:
    *trusted = v13;
  }

LABEL_14:
  v15 = v10;

  return v10;
}

- (void)_runURLOperation
{
  v93 = *MEMORY[0x277D85DE8];
  uRLBagContext = [(ISStoreURLOperation *)self URLBagContext];
  urlKnownToBeTrusted = [(ISStoreURLOperation *)self urlKnownToBeTrusted];
  v85 = 0;
  if (![(ISStoreURLOperation *)self needsURLBag])
  {
    _requestProperties = [(ISURLOperation *)self _requestProperties];
    v13 = [_requestProperties URL];

    if (urlKnownToBeTrusted)
    {
      goto LABEL_40;
    }

    v25 = [(ISStoreURLOperation *)self bag];

    if (v25)
    {
      mEMORY[0x277D69B38] = [(ISStoreURLOperation *)self bag];
      v26 = [mEMORY[0x277D69B38] URLIsTrusted:v13];
    }

    else
    {
      mEMORY[0x277D69B38] = [(ISOperation *)self loadedURLBagWithContext:uRLBagContext returningError:0];
      v26 = [mEMORY[0x277D69B38] urlIsTrusted:v13];
    }

    v85 = v26;
    goto LABEL_39;
  }

  v5 = [(ISStoreURLOperation *)self bag];
  if (!v5)
  {
LABEL_24:
    v13 = [(ISStoreURLOperation *)self _resolvedURLInBagContext:uRLBagContext bagTrusted:&v85];
    v27 = [(ISStoreURLOperation *)self bag];

    if (!v27)
    {
      goto LABEL_40;
    }

    v81 = urlKnownToBeTrusted;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v29 = shouldLog | 2;
    }

    else
    {
      v29 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v29;
    }

    else
    {
      v31 = v29 & 2;
    }

    if (v31)
    {
      v32 = objc_opt_class();
      v33 = v32;
      [(ISURLOperation *)self requestProperties];
      v35 = v34 = uRLBagContext;
      uRLBagKey = [v35 URLBagKey];
      v87 = 138412802;
      v88 = v32;
      v89 = 2112;
      v90 = uRLBagKey;
      v91 = 2112;
      v92 = v13;
      v37 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Using old bag for trust verfication of bag key: %@ URL: %@", &v87, 32);

      uRLBagContext = v34;
      urlKnownToBeTrusted = v81;
      if (!v37)
      {
        goto LABEL_39;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:4];
      free(v37);
      v78 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_39;
  }

  v6 = v5;
  v7 = [(ISStoreURLOperation *)self bag];
  if (([v7 canHandleTrustedDomains] & 1) == 0)
  {

    goto LABEL_24;
  }

  requestProperties = [(ISURLOperation *)self requestProperties];
  uRLBagURLBlock = [requestProperties URLBagURLBlock];

  if (uRLBagURLBlock)
  {
    goto LABEL_24;
  }

  requestProperties2 = [(ISURLOperation *)self requestProperties];
  mEMORY[0x277D69B38] = [requestProperties2 URLBagKey];

  if (mEMORY[0x277D69B38])
  {
    v12 = [(ISStoreURLOperation *)self bag];
    v84 = 0;
    v13 = [v12 URLForKey:mEMORY[0x277D69B38] error:&v84];
    requestProperties3 = v84;

    if (!requestProperties3)
    {
      goto LABEL_87;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v87 = 138412546;
      v88 = v20;
      v89 = 2114;
      v90 = mEMORY[0x277D69B38];
      v21 = uRLBagContext;
      v22 = v20;
      v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Error resolving URL for bag key: %{public}@", &v87, 22);

      uRLBagContext = v21;
      if (!v23)
      {
LABEL_19:

        goto LABEL_87;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      free(v23);
      v78 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_19;
  }

  requestProperties3 = [(ISURLOperation *)self requestProperties];
  v13 = [requestProperties3 URL];
LABEL_87:

  if (v13)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v82 = mEMORY[0x277D69B38];
    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v69 = shouldLog3 | 2;
    }

    else
    {
      v69 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v69;
    }

    else
    {
      v71 = v69 & 2;
    }

    if (v71)
    {
      v72 = uRLBagContext;
      v73 = objc_opt_class();
      v80 = v73;
      _requestProperties2 = [(ISURLOperation *)self _requestProperties];
      v75 = [_requestProperties2 URL];
      v87 = 138412802;
      v88 = v73;
      uRLBagContext = v72;
      v89 = 2112;
      v90 = v82;
      v91 = 2112;
      v92 = v75;
      LODWORD(v79) = 32;
      v76 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: Using new bag for trust verfication of bag key: %@ URL: %@", &v87, v79);

      if (!v76)
      {
LABEL_100:

        v77 = [(ISStoreURLOperation *)self bag];
        v85 = [v77 URLIsTrusted:v13];

        mEMORY[0x277D69B38] = v82;
        goto LABEL_39;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v76 encoding:4];
      free(v76);
      v78 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_100;
  }

LABEL_39:

LABEL_40:
  if (v13)
  {
    _requestProperties3 = [(ISURLOperation *)self _requestProperties];
    v39 = [_requestProperties3 URL];

    if (v39)
    {
      if (urlKnownToBeTrusted)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v86 = v13;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      [_requestProperties3 setURLs:v47];

      if (urlKnownToBeTrusted)
      {
LABEL_58:
        if (![(ISStoreURLOperation *)self needsAuthentication]|| [(ISStoreURLOperation *)self _canSendTokenToURL:v13])
        {
          [(ISStoreURLOperation *)self _addStandardQueryParametersForURL:v13];
          dataProvider = [(ISURLOperation *)self dataProvider];
          [dataProvider setBagContext:uRLBagContext];

          [_requestProperties3 setITunesStoreRequest:1];
          v83.receiver = self;
          v83.super_class = ISStoreURLOperation;
          [(ISURLOperation *)&v83 run];
          goto LABEL_85;
        }

        mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]4)
        {
          mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
        if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
        {
          shouldLog4 |= 2u;
        }

        oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v61 = shouldLog4;
        }

        else
        {
          v61 = shouldLog4 & 2;
        }

        if (v61)
        {
          v62 = objc_opt_class();
          v63 = v62;
          v64 = [(ISURLOperation *)self _sanitizedURLForURL:v13];
          v87 = 138412546;
          v88 = v62;
          v89 = 2112;
          v90 = v64;
          LODWORD(v79) = 22;
          v65 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Won't authenticate for non-https URL: %@", &v87, v79);

          if (!v65)
          {
LABEL_84:

            v66 = SSError();
            [(ISOperation *)self setError:v66];

            goto LABEL_85;
          }

          oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v65 encoding:4];
          free(v65);
          SSFileLog();
        }

        goto LABEL_84;
      }
    }

    if (v85)
    {
      goto LABEL_58;
    }

    v49 = SSError();
    [(ISOperation *)self setError:v49];

    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v53 = shouldLog5;
    }

    else
    {
      v53 = shouldLog5 & 2;
    }

    if (v53)
    {
      v54 = objc_opt_class();
      v55 = v54;
      v56 = [(ISURLOperation *)self _sanitizedURLForURL:v13];
      v87 = 138412546;
      v88 = v54;
      v89 = 2112;
      v90 = v56;
      LODWORD(v79) = 22;
      v57 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_275BC3000, oSLogObject5, 0, "%@: URL is not trusted: %@", &v87, v79);

      if (!v57)
      {
LABEL_72:

        goto LABEL_85;
      }

      oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v57 encoding:4];
      free(v57);
      SSFileLog();
    }

    goto LABEL_72;
  }

  mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]6)
  {
    mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog6 = [mEMORY[0x277D69B38]6 shouldLog];
  if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
  {
    v43 = shouldLog6;
  }

  else
  {
    v43 = shouldLog6 & 2;
  }

  if (!v43)
  {
    goto LABEL_54;
  }

  v44 = objc_opt_class();
  v87 = 138412290;
  v88 = v44;
  v45 = v44;
  LODWORD(v79) = 12;
  v46 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_275BC3000, oSLogObject6, 16, "%@: Could not resolve URL", &v87, v79);

  if (v46)
  {
    oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:4];
    free(v46);
    SSFileLog();
LABEL_54:
  }

  _requestProperties3 = SSError();
  [(ISOperation *)self setError:_requestProperties3];
LABEL_85:
}

- (BOOL)_shouldRetryForAbsintheWithResponse:(id)response
{
  responseCopy = response;
  logKey = [(ISStoreURLOperation *)self logKey];
  v6 = AMSSetLogKey();

  v7 = [(ISStoreURLOperation *)self bag];

  if (v7)
  {
    v8 = [ISAMSBagShim alloc];
    v9 = [(ISStoreURLOperation *)self bag];
    v10 = [(ISAMSBagShim *)v8 initWithBag:v9];
  }

  else
  {
    uRLBagContext = [(ISStoreURLOperation *)self URLBagContext];
    v9 = [(ISStoreURLOperation *)self _urlBagForContext:uRLBagContext];

    v10 = [[ISAMSBagShim alloc] initWithURLBag:v9];
  }

  v12 = v10;

  v13 = [MEMORY[0x277CEE3C8] handleResponse:responseCopy bag:v12];

  v14 = [v13 actionType] == 2;
  return v14;
}

- (BOOL)_shouldRetryForTouchIDChallengeWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277D6A110]])
  {

    goto LABEL_12;
  }

  code = [errorCopy code];

  if (code != 22)
  {
    goto LABEL_12;
  }

  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x277D6A100]];

  if (!v8)
  {
    goto LABEL_13;
  }

  integerValue = [v8 integerValue];

  if (integerValue != 2074)
  {
LABEL_12:
    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  dataProvider = [(ISURLOperation *)self dataProvider];
  biometricAuthenticationContext = [dataProvider biometricAuthenticationContext];
  LODWORD(v8) = [biometricAuthenticationContext didAuthenticate];
  if (v8 && [biometricAuthenticationContext didFallbackToPassword])
  {
    accountIdentifier = [biometricAuthenticationContext accountIdentifier];
    [(ISStoreURLOperation *)self setAuthenticatedDSID:accountIdentifier];
    delegate = [(ISOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__ISStoreURLOperation__shouldRetryForTouchIDChallengeWithError___block_invoke;
      v15[3] = &unk_27A670890;
      v16 = delegate;
      selfCopy = self;
      v18 = accountIdentifier;
      [(ISOperation *)self delegateDispatch:v15];
    }

    [biometricAuthenticationContext setChallenge:0];
    [biometricAuthenticationContext setSignature:0];
  }

  [(ISStoreURLOperation *)self setBiometricAuthenticationContext:biometricAuthenticationContext];

LABEL_13:
  return v8;
}

- (id)_urlBagForContext:(id)context
{
  contextCopy = context;
  v5 = +[ISURLBagCache sharedCache];
  uRLBag = [v5 URLBagForContext:contextCopy];

  if (!uRLBag)
  {
    if ([(ISStoreURLOperation *)self isURLBagRequest])
    {
      uRLBag = 0;
    }

    else
    {
      v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:contextCopy];
      uRLBag = 0;
      if ([(ISOperation *)self runSubOperation:v7 returningError:0])
      {
        uRLBag = [(ISLoadURLBagOperation *)v7 URLBag];
      }
    }
  }

  return uRLBag;
}

+ (void)_handleResponseHeaders:(id)headers response:(id)response request:(id)request account:(id)account performsMachineDataActions:(BOOL)actions shouldRetry:(BOOL *)retry
{
  actionsCopy = actions;
  v131 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  responseCopy = response;
  requestCopy = request;
  accountCopy = account;
  v120 = responseCopy;
  allHeaderFields = [responseCopy allHeaderFields];
  v17 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A1D0]);
  v18 = 0x277CCA000;
  v117 = headersCopy;
  v118 = allHeaderFields;
  if (v17)
  {
    delegate = [headersCopy delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate operation:headersCopy shouldSetStoreFrontID:v17])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v22 = shouldLog | 2;
      }

      else
      {
        v22 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (v24)
      {
        v113 = delegate;
        retryCopy = retry;
        v26 = objc_opt_class();
        v114 = v26;
        [v120 URL];
        v27 = v116 = requestCopy;
        accountName = [accountCopy accountName];
        SSHashIfNeeded();
        v29 = v115 = actionsCopy;
        v30 = SSHashIfNeeded();
        v123 = 138544130;
        v124 = v26;
        retry = retryCopy;
        delegate = v113;
        v125 = 2114;
        v126 = v27;
        v127 = 2114;
        v128 = v29;
        v129 = 2114;
        v130 = v30;
        v31 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: Setting an account's storefront after running %{public}@. account = %{public}@ | storefrontID = %{public}@", &v123, 42);

        actionsCopy = v115;
        requestCopy = v116;

        v18 = 0x277CCA000uLL;
        if (v31)
        {
          v32 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
          free(v31);
          v110 = v32;
          SSFileLog();
        }
      }

      else
      {

        v18 = 0x277CCA000;
      }

      currentDevice = [MEMORY[0x277D69A80] currentDevice];
      [currentDevice setStoreFrontIdentifier:v17 forRequest:requestCopy response:v120 account:accountCopy];

      headersCopy = v117;
      allHeaderFields = v118;
    }
  }

  v34 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, @"X-Apple-Partner");

  if (v34)
  {
    v35 = +[ISClient currentClient];
    [v35 setPartnerHeader:v34];
  }

  if (actionsCopy)
  {
    v36 = [objc_alloc(MEMORY[0x277D69B58]) initWithURLResponse:v120];
    if (!v36)
    {
LABEL_37:

      goto LABEL_38;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v40 = shouldLog2;
    }

    else
    {
      v40 = shouldLog2 & 2;
    }

    if (v40)
    {
      v41 = requestCopy;
      if (headersCopy)
      {
        v42 = objc_opt_class();
      }

      else
      {
        v42 = @"ISStoreURLOperation";
      }

      actionName = [v36 actionName];
      v123 = 138412546;
      v124 = v42;
      v125 = 2112;
      v126 = actionName;
      LODWORD(v112) = 22;
      v44 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%@: Triggering MD action: %@", &v123, v112);

      requestCopy = v41;
      if (!v44)
      {
        goto LABEL_36;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:4];
      free(v44);
      v110 = oSLogObject2;
      SSFileLog();
    }

LABEL_36:
    uniqueIdentifier = [accountCopy uniqueIdentifier];
    [v36 setAccountIdentifier:uniqueIdentifier];

    [v36 setWaitsForPurchaseOperations:{+[ISStoreURLOperation _operationWaitsForPurchases:](ISStoreURLOperation, "_operationWaitsForPurchases:", headersCopy)}];
    _requestProperties = [headersCopy _requestProperties];
    [ISStoreURLOperation _performMachineDataRequest:v36 requestProperties:_requestProperties completion:0];

    allHeaderFields = v118;
    v18 = 0x277CCA000uLL;
    goto LABEL_37;
  }

LABEL_38:
  v47 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A198]);

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_84;
  }

  if (![v47 isEqualToString:@"RP"])
  {
    if (![v47 isEqualToString:@"EP"])
    {
      goto LABEL_84;
    }

    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v61 = shouldLog3;
    }

    else
    {
      v61 = shouldLog3 & 2;
    }

    if (v61)
    {
      v62 = objc_opt_class();
      v123 = 138412290;
      v124 = v62;
      v63 = v62;
      LODWORD(v112) = 12;
      v64 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: Provisioning TouchID/Biometric enrollment in response to server instruction (EP)", &v123, v112);

      if (!v64)
      {
LABEL_63:

        mEMORY[0x277D69B38]5 = objc_opt_new();
        [mEMORY[0x277D69B38]5 setPromptUser:1];
        _buyParams = [headersCopy _buyParams];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v66 = requestCopy;
          v67 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:_buyParams unescapedValues:1];
          v68 = [v67 objectForKey:@"mtTopic"];
          if (v68)
          {
            [mEMORY[0x277D69B38]5 setTopicName:v68];
          }

          requestCopy = v66;
        }

        authenticationContext = [headersCopy authenticationContext];
        hTTPHeaders = [authenticationContext HTTPHeaders];
        oSLogObject5 = [hTTPHeaders objectForKey:*MEMORY[0x277D6A130]];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [mEMORY[0x277D69B38]5 setUserAgent:oSLogObject5];
        }

        [headersCopy runSubOperation:mEMORY[0x277D69B38]5 returningError:0];
        goto LABEL_82;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v64 encoding:4];
      free(v64);
      v111 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_63;
  }

  shouldCancelBiometricTokenUpdate = [headersCopy shouldCancelBiometricTokenUpdate];
  mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]5 = mEMORY[0x277D69B38]4;
  if ((shouldCancelBiometricTokenUpdate & 1) == 0)
  {
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]5 shouldLog];
    if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]5 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v73 = shouldLog4;
    }

    else
    {
      v73 = shouldLog4 & 2;
    }

    if (v73)
    {
      v74 = objc_opt_class();
      v123 = 138412290;
      v124 = v74;
      v75 = v74;
      LODWORD(v112) = 12;
      v76 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Re-provisioning TouchID/Biometric token in response to server instruction (RP)", &v123, v112);

      if (!v76)
      {
LABEL_81:

        mEMORY[0x277D69B38]5 = [headersCopy authenticatedAccountDSID];
        oSLogObject5 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:mEMORY[0x277D69B38]5];
        v77 = +[ISOperationQueue mainQueue];
        [v77 addOperation:oSLogObject5];

        goto LABEL_82;
      }

      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v76 encoding:4];
      free(v76);
      v110 = oSLogObject4;
      SSFileLog();
    }

    goto LABEL_81;
  }

  if (!mEMORY[0x277D69B38]4)
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
  if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
  if (os_log_type_enabled(&oSLogObject5->super.super.super, OS_LOG_TYPE_DEFAULT))
  {
    v54 = shouldLog5;
  }

  else
  {
    v54 = shouldLog5 & 2;
  }

  if (!v54)
  {
    goto LABEL_82;
  }

  v55 = objc_opt_class();
  v123 = 138543362;
  v124 = v55;
  v56 = v55;
  LODWORD(v112) = 12;
  v57 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &dword_275BC3000, oSLogObject5, 0, "%{public}@: Skip TouchID/Biometric token re-provisioning due to in-flight request (RP)", &v123, v112);

  if (v57)
  {
    oSLogObject5 = [*(v18 + 3240) stringWithCString:v57 encoding:4];
    free(v57);
    v110 = oSLogObject5;
    SSFileLog();
LABEL_82:
  }

  allHeaderFields = v118;
LABEL_84:
  v78 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A1A0]);

  objc_opt_class();
  if (isKindOfClass & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
  {
    goto LABEL_95;
  }

  _account = [headersCopy _account];
  accountName2 = [_account accountName];

  biometricAuthenticationContext = [headersCopy biometricAuthenticationContext];
  authenticationContext2 = [headersCopy authenticationContext];
  requiredUniqueIdentifier = [authenticationContext2 requiredUniqueIdentifier];
  [biometricAuthenticationContext setAccountIdentifier:requiredUniqueIdentifier];

  [biometricAuthenticationContext setAccountName:accountName2];
  [biometricAuthenticationContext setChallenge:v78];
  [biometricAuthenticationContext setSignature:0];
  v84 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A1B0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = requestCopy;
    uppercaseString = [v84 uppercaseString];
    if ([uppercaseString isEqualToString:@"EXT"])
    {
LABEL_87:
      [biometricAuthenticationContext setIsExtendedAction:{1, v110}];
    }
  }

  else
  {
    v85 = requestCopy;
    v87 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A1C8]);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_92;
    }

    uppercaseString = [v87 uppercaseString];
    v84 = v87;
    if ([uppercaseString isEqualToString:@"PK"])
    {
      goto LABEL_87;
    }
  }

  v87 = v84;
LABEL_92:
  [headersCopy setBiometricAuthenticationContext:{biometricAuthenticationContext, v110}];
  v88 = ISError(22, 0, 0);
  v89 = SSErrorBySettingUserInfoValue();

  [headersCopy setError:v89];
  dataProvider = [headersCopy dataProvider];
  if (objc_opt_respondsToSelector())
  {
    biometricAuthenticationContext2 = [headersCopy biometricAuthenticationContext];
    [dataProvider setBiometricAuthenticationContext:biometricAuthenticationContext2];
  }

  requestCopy = v85;
  allHeaderFields = v118;
LABEL_95:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__ISStoreURLOperation__handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry___block_invoke;
  block[3] = &unk_27A670818;
  v92 = v120;
  v122 = v92;
  if (_handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry__sEnvironmentOnce != -1)
  {
    dispatch_once(&_handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry__sEnvironmentOnce, block);
  }

  v93 = +[ISStoreURLOperation _authKitSession];
  [v93 handleResponse:v92 forRequest:requestCopy shouldRetry:retry];

  v94 = *MEMORY[0x277D6A148];
  v95 = ISDictionaryValueForCaseInsensitiveString(allHeaderFields, *MEMORY[0x277D6A148]);

  if (retry && !*retry && (objc_opt_respondsToSelector() & 1) != 0)
  {
    integerValue = [v95 integerValue];
    mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
    if (!mEMORY[0x277D69B38]6)
    {
      mEMORY[0x277D69B38]6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog6 = [mEMORY[0x277D69B38]6 shouldLog];
    if ([mEMORY[0x277D69B38]6 shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject6 = [mEMORY[0x277D69B38]6 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v100 = shouldLog6;
    }

    else
    {
      v100 = shouldLog6 & 2;
    }

    if (v100)
    {
      v101 = objc_opt_class();
      v123 = 138543618;
      v124 = v101;
      v125 = 2048;
      v126 = integerValue;
      v102 = v101;
      LODWORD(v112) = 22;
      v103 = _os_log_send_and_compose_impl(v100, 0, 0, 0, &dword_275BC3000, oSLogObject6, 0, "%{public}@: Reverse push received response header %ld", &v123, v112);

      if (!v103)
      {
        goto LABEL_111;
      }

      oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v103 encoding:4];
      free(v103);
      SSFileLog();
    }

LABEL_111:
    v104 = integerValue == 1001;
    allHeaderFields = v118;
    if (v104)
    {
      _requestProperties2 = [v117 _requestProperties];
      [_requestProperties2 setShouldDisableReversePush:1];
      v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 1];
      [_requestProperties2 setValue:v106 forHTTPHeaderField:v94];
      [v117 _activeURLRequest];
      v108 = v107 = requestCopy;
      v109 = [v108 mutableCopy];

      requestCopy = v107;
      [v109 setValue:v106 forHTTPHeaderField:v94];
      allHeaderFields = v118;
      [v117 _setActiveURLRequest:v109];
      *retry = 1;
    }
  }
}

void __110__ISStoreURLOperation__handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _iTunesStore_valueForHTTPHeader:@"X-Apple-Application-Site"];
  if (v1)
  {
    v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v2)
    {
      v2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v8 = 138412290;
      v9 = v1;
      v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, v5, 0, "iTunes Store environment is: %@", &v8, 12);

      if (!v7)
      {
LABEL_14:

        goto LABEL_15;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
      free(v7);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

+ (BOOL)_operationWaitsForPurchases:(id)purchases
{
  if (!purchases)
  {
    return 1;
  }

  parentOperation = [purchases parentOperation];
  if (!parentOperation)
  {
    return 1;
  }

  v4 = parentOperation;
  do
  {
    uniqueKey = [v4 uniqueKey];
    v6 = [uniqueKey isEqualToString:@"com.apple.itunesstored.PurchaseOperation"];

    if (v6)
    {
      break;
    }

    parentOperation2 = [v4 parentOperation];

    v4 = parentOperation2;
  }

  while (parentOperation2);
  v8 = v6 ^ 1;

  return v8;
}

+ (void)_performMachineDataRequest:(id)request requestProperties:(id)properties completion:(id)completion
{
  requestCopy = request;
  propertiesCopy = properties;
  completionCopy = completion;
  [requestCopy setAllowsBootstrapCellularData:{objc_msgSend(propertiesCopy, "allowsBootstrapCellularData")}];
  if (SSIsDaemon())
  {
    v10 = [objc_alloc(NSClassFromString(&cfstr_Ismachinedataa.isa)) initWithMachineDataRequest:requestCopy];
    hTTPHeaders = [propertiesCopy HTTPHeaders];
    v12 = [hTTPHeaders objectForKey:*MEMORY[0x277D6A130]];
    [v10 setUserAgent:v12];

    if (completionCopy)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __79__ISStoreURLOperation__performMachineDataRequest_requestProperties_completion___block_invoke_2;
      v17 = &unk_27A670BD8;
      v18 = completionCopy;
      [v10 setResultBlock:&v14];
    }

    v13 = [ISOperationQueue mainQueue:v14];
    [v13 addOperation:v10];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__ISStoreURLOperation__performMachineDataRequest_requestProperties_completion___block_invoke;
    v19[3] = &unk_27A670BB0;
    v20 = completionCopy;
    [requestCopy startWithCompletionBlock:v19];
    v10 = v20;
  }
}

uint64_t __79__ISStoreURLOperation__performMachineDataRequest_requestProperties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

+ (id)_storeFrontIdentifierForAccount:(id)account
{
  v56 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v49 = SSGenerateLogCorrelationString();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = v8;
    accountName = [accountCopy accountName];
    SSHashIfNeeded();
    v12 = v11 = accountCopy;
    v50 = 138543874;
    v51 = v8;
    v52 = 2114;
    v53 = v49;
    v54 = 2114;
    v55 = v12;
    v13 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%{public}@: [%{public}@] Determining the storefront for %{public}@.", &v50, 32);

    accountCopy = v11;
    if (!v13)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
    free(v13);
    v47 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  storeFrontIdentifier = [accountCopy storeFrontIdentifier];
  if ([storeFrontIdentifier length])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = SSHashIfNeeded();
      v50 = 138543874;
      v51 = v20;
      v52 = 2114;
      v53 = v49;
      v54 = 2114;
      v55 = v22;
      LODWORD(v48) = 32;
      v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%{public}@: [%{public}@] The account has a storefront. We'll use it. storefront = %{public}@", &v50, v48);

      if (!v23)
      {
LABEL_26:

        v24 = storeFrontIdentifier;
        goto LABEL_55;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_26;
  }

  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  storeFrontIdentifier2 = [currentDevice storeFrontIdentifier];

  v27 = [storeFrontIdentifier2 length];
  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
  mEMORY[0x277D69B38]4 = mEMORY[0x277D69B38]3;
  if (!v27)
  {
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      v40 = shouldLog3 | 2;
    }

    else
    {
      v40 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v50 = 138543618;
      v51 = v43;
      v52 = 2114;
      v53 = v49;
      v44 = v43;
      LODWORD(v48) = 22;
      v45 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_275BC3000, oSLogObject3, 1, "%{public}@: [%{public}@] Unable to determine a storefront.", &v50, v48);

      if (!v45)
      {
LABEL_53:

        v24 = 0;
        goto LABEL_54;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:4];
      free(v45);
      SSFileLog();
    }

    goto LABEL_53;
  }

  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
  if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
  {
    v31 = shouldLog4 | 2;
  }

  else
  {
    v31 = shouldLog4;
  }

  oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
  {
    v33 = v31;
  }

  else
  {
    v33 = v31 & 2;
  }

  if (!v33)
  {
    goto LABEL_39;
  }

  v34 = objc_opt_class();
  v35 = v34;
  SSHashIfNeeded();
  v37 = v36 = accountCopy;
  v50 = 138543874;
  v51 = v34;
  v52 = 2114;
  v53 = v49;
  v54 = 2114;
  v55 = v37;
  LODWORD(v48) = 32;
  v38 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_275BC3000, oSLogObject4, 1, "%{public}@: [%{public}@] The account has no storefront, but the device does. We'll use it. storefront = %{public}@.", &v50, v48);

  accountCopy = v36;
  if (v38)
  {
    oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:4];
    free(v38);
    SSFileLog();
LABEL_39:
  }

  v24 = storeFrontIdentifier2;
LABEL_54:

LABEL_55:

  return v24;
}

- (ISBiometricSessionDelegate)biometricSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricSessionDelegate);

  return WeakRetained;
}

@end