@interface ISURLOperation
+ (_CFURLCache)sharedCFURLCache;
+ (__CFURLStorageSession)_sharedCacheStorageSession;
+ (id)copyUserAgent;
- (BOOL)_isExternalURL:(id)l;
- (BOOL)_isPassThroughStatus:(int64_t)status;
- (BOOL)_processResponseData:(id)data error:(id *)error;
- (BOOL)_runRequestWithURL:(id)l dataConnectionServiceType:(__CFString *)type;
- (BOOL)_shouldFollowRedirectWithRequest:(id)request error:(id *)error;
- (BOOL)_validateContentLength:(int64_t)length error:(id *)error;
- (BOOL)handleRedirectFromDataProvider:(id)provider error:(id *)error;
- (BOOL)shouldDisableCellular;
- (BOOL)shouldFollowRedirectWithRequest:(id)request returningError:(id *)error;
- (BOOL)shouldRequireCellular;
- (BOOL)tracksPerformanceMetrics;
- (ISURLOperation)init;
- (ISURLOperation)initWithSessionManager:(id)manager;
- (ISURLRequestPerformance)performanceMetrics;
- (NSData)sourceAppAuditTokenData;
- (NSNumber)metricsLoadURLSamplingPercentage;
- (NSNumber)metricsLoadURLSamplingPercentageCachedResponses;
- (NSNumber)metricsLoadURLSessionDuration;
- (NSString)URLCacheID;
- (NSString)sourceAppBundleID;
- (NSURLCache)URLCache;
- (SSAuthenticationContext)authenticationContext;
- (SSHTTPArchive)HTTPArchive;
- (SSURLRequestProperties)requestProperties;
- (id)_accountIdentifier;
- (id)_copyAuthenticationContext;
- (id)_copyConnectionPropertiesWithDataConnectionServiceType:(__CFString *)type;
- (id)_copyQueryStringDictionaryForRedirect:(id)redirect;
- (id)_decodedDataForData:(id)data;
- (id)_errorWithDefaultStringsForError:(id)error;
- (id)_errorWithDomain:(id)domain code:(int64_t)code;
- (id)_handleRedirectRequest:(id)request response:(id)response;
- (id)_requestProperties;
- (id)_sanitizedDescriptionForObject:(id)object;
- (id)_sanitizedStringForString:(id)string;
- (id)_sanitizedURLForURL:(id)l;
- (id)_stringForCachePolicy:(unint64_t)policy;
- (id)newRequestWithURL:(id)l;
- (id)request;
- (int64_t)_defaultAuthChallengeDispositionForChallenge:(id)challenge;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithEvent:(id)event error:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCreatingHTTPArchive:(id)archive;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_handleFinishedLoading;
- (void)_handleReceivedData:(id)data;
- (void)_handleReceivedResponse:(id)response;
- (void)_logRequest:(id)request;
- (void)_logResponseBody:(id)body;
- (void)_performDefaultHandlingForAuthenticationChallenge:(id)challenge;
- (void)_retry;
- (void)_run;
- (void)_sendContentLengthToDelegate:(int64_t)delegate;
- (void)_sendOutputToDelegate:(id)delegate;
- (void)_sendRequestToDelegate:(id)delegate;
- (void)_sendResponseToDelegate:(id)delegate;
- (void)_setActiveURLRequest:(id)request;
- (void)_stopConnection;
- (void)_stopIfCancelled;
- (void)_updateProgress;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setRequest:(id)request;
- (void)setRequestProperties:(id)properties;
- (void)setTracksPerformanceMetrics:(BOOL)metrics;
@end

@implementation ISURLOperation

- (ISURLOperation)init
{
  mEMORY[0x277D69CA8] = [MEMORY[0x277D69CA8] sharedManager];
  v4 = [(ISURLOperation *)self initWithSessionManager:mEMORY[0x277D69CA8]];

  return v4;
}

- (ISURLOperation)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISURLOperation.m", 124, a2);
  v15.receiver = self;
  v15.super_class = ISURLOperation;
  v7 = [(ISOperation *)&v15 init];
  if (v7)
  {
    v8 = dispatch_queue_create("com.apple.iTunesStore.ISURLOperation", 0);
    dataBufferAccessQueue = v7->_dataBufferAccessQueue;
    v7->_dataBufferAccessQueue = v8;

    v10 = SSGenerateLogCorrelationString();
    logKey = v7->_logKey;
    v7->_logKey = v10;

    v12 = objc_alloc_init(MEMORY[0x277D69BD0]);
    requestProperties = v7->_requestProperties;
    v7->_requestProperties = v12;

    v7->_shouldSetCookies = 1;
    objc_storeStrong(&v7->_urlSessionManager, manager);
    v7->_usesPrivateCookieStore = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(ISDataProvider *)self->_dataProvider setParentOperation:0];
  v3.receiver = self;
  v3.super_class = ISURLOperation;
  [(ISURLOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(ISOperation *)self lock];
  v3 = self->_authenticationContext;
  [(ISOperation *)self unlock];

  return v3;
}

+ (id)copyUserAgent
{
  if (copyUserAgent_sUserAgentGuard != -1)
  {
    +[ISURLOperation copyUserAgent];
  }

  v3 = copyUserAgent_sUserAgent;

  return v3;
}

void __31__ISURLOperation_copyUserAgent__block_invoke()
{
  v2 = [MEMORY[0x277D69A80] currentDevice];
  v0 = [v2 userAgent];
  v1 = copyUserAgent_sUserAgent;
  copyUserAgent_sUserAgent = v0;
}

- (id)request
{
  [(ISOperation *)self lock];
  v3 = [[ISURLRequest alloc] initWithRequestProperties:self->_requestProperties];
  [(ISOperation *)self unlock];

  return v3;
}

- (SSURLRequestProperties)requestProperties
{
  [(ISOperation *)self lock];
  v3 = [(SSMutableURLRequestProperties *)self->_requestProperties copy];
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(ISOperation *)self lock];
  objc_storeStrong(&self->_authenticationContext, context);
  logUUID = [contextCopy logUUID];

  if (logUUID)
  {
    logUUID2 = [contextCopy logUUID];
    logKey = self->_logKey;
    self->_logKey = logUUID2;
  }

  [(ISOperation *)self unlock];
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  [(ISOperation *)self lock];
  requestProperties = [requestCopy requestProperties];

  v6 = [requestProperties mutableCopy];
  requestProperties = self->_requestProperties;
  self->_requestProperties = v6;

  [(ISOperation *)self unlock];
}

- (void)setRequestProperties:(id)properties
{
  propertiesCopy = properties;
  [(ISOperation *)self lock];
  if (self->_requestProperties != propertiesCopy)
  {
    v4 = [(SSMutableURLRequestProperties *)propertiesCopy mutableCopy];
    requestProperties = self->_requestProperties;
    self->_requestProperties = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)run
{
  v33 = *MEMORY[0x277D85DE8];
  _copyAuthenticationContext = [(ISURLOperation *)self _copyAuthenticationContext];
  dataProvider = [(ISURLOperation *)self dataProvider];
  copySerializationLocks = [(ISOperation *)self copySerializationLocks];
  v5 = copySerializationLocks;
  if (copySerializationLocks)
  {
    [copySerializationLocks makeObjectsPerformSelector:sel_lock];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = v11;
      serializationLockIdentifiers = [(ISOperation *)self serializationLockIdentifiers];
      v29 = 138412546;
      v30 = v11;
      v31 = 2112;
      v32 = serializationLockIdentifiers;
      v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Took serialization locks: %@", &v29, 22);

      if (v14)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
        free(v14);
        v26 = v15;
        SSFileLog();
      }
    }

    else
    {
    }

    [(ISOperation *)self sendDidTakeSerializationLocks];
  }

  v16 = +[ISNetworkObserver sharedInstance];
  [v16 beginUsingNetwork];
  [dataProvider setAuthenticationContext:_copyAuthenticationContext];
  [dataProvider setParentOperation:self];
  [(ISURLOperation *)self _run];
  [dataProvider setParentOperation:0];
  if (-[ISURLOperation isCancelled](self, "isCancelled") && [dataProvider isStream])
  {
    [dataProvider streamCancelled];
  }

  [v16 endUsingNetwork];
  if (v5)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v21 = oSLogObject2;
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v22 = shouldLog2;
    }

    else
    {
      v22 = shouldLog2 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      serializationLockIdentifiers2 = [(ISOperation *)self serializationLockIdentifiers];
      v29 = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = serializationLockIdentifiers2;
      LODWORD(v27) = 22;
      v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, v21, 1, "%@: Releasing serialization locks: %@", &v29, v27);

      if (!v25)
      {
LABEL_30:

        [v5 makeObjectsPerformSelector:sel_unlock];
        goto LABEL_31;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (BOOL)handleRedirectFromDataProvider:(id)provider error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  redirectURL = [provider redirectURL];
  schemeSwizzledURL = [redirectURL schemeSwizzledURL];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = v12;
    _activeURL = [(ISURLOperation *)self _activeURL];
    v15 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
    v16 = [(ISURLOperation *)self _sanitizedURLForURL:schemeSwizzledURL];
    v26 = 138412802;
    v27 = v12;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Data-driven redirect from %@ to %@", &v26, 32);

    if (!v17)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    v25 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  redirectURLs = self->_redirectURLs;
  if (!redirectURLs)
  {
    v19 = objc_alloc_init(MEMORY[0x277CCA940]);
    v20 = self->_redirectURLs;
    self->_redirectURLs = v19;

    redirectURLs = self->_redirectURLs;
  }

  [(NSCountedSet *)redirectURLs addObject:schemeSwizzledURL, v25];
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  v22 = [(ISURLOperation *)self _copyQueryStringDictionaryForRedirect:schemeSwizzledURL];
  [_requestProperties setRequestParameters:v22];
  v23 = [(ISURLOperation *)self newRequestWithURL:schemeSwizzledURL];
  [(ISURLOperation *)self _setActiveURLRequest:v23];

  return 1;
}

- (id)newRequestWithURL:(id)l
{
  v100 = *MEMORY[0x277D85DE8];
  lCopy = l;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  scheme = [lCopy scheme];
  v7 = [scheme caseInsensitiveCompare:@"data"];

  selfCopy = self;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    [_requestProperties timeoutInterval];
    v16 = [v15 initWithURL:lCopy cachePolicy:1 timeoutInterval:?];
    goto LABEL_43;
  }

  hTTPBody = [_requestProperties HTTPBody];
  hTTPBodyStream = [_requestProperties HTTPBodyStream];
  hTTPHeaders = [_requestProperties HTTPHeaders];
  hTTPMethod = [_requestProperties HTTPMethod];
  requestParameters = [_requestProperties requestParameters];
  if ([requestParameters count])
  {
    if (!(hTTPBody | hTTPBodyStream))
    {
      if ([hTTPMethod isEqualToString:@"POST"])
      {
        v12 = ISDictionaryValueForCaseInsensitiveString(hTTPHeaders, @"Content-Type");
        v13 = [v12 isEqualToString:@"application/json"];

        if (v13)
        {
          [MEMORY[0x277CCAAA0] dataWithJSONObject:requestParameters options:0 error:0];
        }

        else
        {
          [MEMORY[0x277CCAC58] dataWithPropertyList:requestParameters format:100 options:0 error:0];
        }
        v14 = ;
        hTTPBody = 0;
        if (v14)
        {
          v17 = requestParameters;
          requestParameters = 0;
          hTTPBody = v14;
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        hTTPBody = 0;
      }
    }

    if (requestParameters)
    {
      v18 = [lCopy urlBySettingQueryStringDictionary:requestParameters];
      v17 = lCopy;
      lCopy = v18;
      goto LABEL_14;
    }
  }

LABEL_15:
  [_requestProperties timeoutInterval];
  v19 = 10.0;
  if (v20 > 10.0)
  {
    [_requestProperties timeoutInterval];
    v19 = v21;
  }

  v16 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:lCopy cachePolicy:objc_msgSend(_requestProperties timeoutInterval:{"cachePolicy"), v19}];
  [v16 setHTTPShouldUsePipelining:1];
  [v16 setNetworkServiceType:{objc_msgSend(_requestProperties, "networkServiceType")}];
  if (objc_opt_respondsToSelector())
  {
    [v16 _CFURLRequest];
    CFURLRequestSetShouldStartSynchronously();
    if (([_requestProperties shouldDecodeResponse] & 1) == 0)
    {
      _CFURLRequestSetProtocolProperty();
    }
  }

  _usesPrivateCookieStore = [(ISURLOperation *)self _usesPrivateCookieStore];
  [v16 setHTTPShouldHandleCookies:!_usesPrivateCookieStore];
  if (hTTPBody)
  {
    [v16 setHTTPBody:hTTPBody];
  }

  if (hTTPBodyStream)
  {
    [v16 setHTTPBodyStream:hTTPBodyStream];
  }

  v78 = hTTPBodyStream;
  if (hTTPMethod)
  {
    [v16 setHTTPMethod:hTTPMethod];
  }

  v76 = requestParameters;
  v77 = hTTPMethod;
  v80 = lCopy;
  if (_usesPrivateCookieStore)
  {
    _requestProperties2 = [(ISURLOperation *)self _requestProperties];
    [_requestProperties2 URLBagType];
    v24 = SSAccountScopeForURLBagType();

    mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
    v26 = objc_msgSend__accountIdentifier(selfCopy);
    v27 = [mEMORY[0x277D69CB8] cookieHeadersForURL:lCopy userIdentifier:v26 scope:v24];

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v88 objects:v99 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v89;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v89 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v88 + 1) + 8 * i);
          v34 = [v28 objectForKey:v33];
          v35 = [v34 copy];
          [v16 addValue:v35 forHTTPHeaderField:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v88 objects:v99 count:16];
      }

      while (v30);
    }
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v36 = hTTPHeaders;
  v37 = [v36 countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v85;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v85 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v84 + 1) + 8 * j);
        v42 = [v36 objectForKey:v41];
        v43 = [v42 copy];
        [v16 setValue:v43 forHTTPHeaderField:v41];
      }

      v38 = [v36 countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v38);
  }

  lCopy = v80;
  self = selfCopy;
LABEL_43:
  v44 = *MEMORY[0x277D6A130];
  copyUserAgent = [v16 valueForHTTPHeaderField:*MEMORY[0x277D6A130]];
  if (!copyUserAgent)
  {
    v47 = +[ISClient currentClient];
    userAgent = [v47 userAgent];

    if (userAgent)
    {
      goto LABEL_46;
    }

    copyUserAgent = [objc_opt_class() copyUserAgent];
    if (!copyUserAgent)
    {
      goto LABEL_49;
    }
  }

  userAgent = copyUserAgent;
LABEL_46:
  userAgentComponents = [_requestProperties userAgentComponents];
  v49 = [userAgentComponents mutableCopy];

  if ([v49 count])
  {
    [v49 insertObject:userAgent atIndex:0];
    v50 = [v49 componentsJoinedByString:@" "];

    userAgent = v50;
  }

  v51 = [userAgent copy];
  [v16 setValue:v51 forHTTPHeaderField:v44];

LABEL_49:
  if (MGGetBoolAnswer())
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v16 setValue:bundleIdentifier forHTTPHeaderField:@"X-Apple-Issuing-Process"];

    clientBundleIdentifier = [_requestProperties clientBundleIdentifier];
    v55 = [clientBundleIdentifier copy];
    [v16 setValue:v55 forHTTPHeaderField:@"X-Apple-Requesting-Process"];

    v56 = -[ISURLOperation _stringForCachePolicy:](self, "_stringForCachePolicy:", [_requestProperties cachePolicy]);
    v57 = [v56 copy];
    [v16 setValue:v57 forHTTPHeaderField:@"X-Apple-NSURLCachePolicy"];
  }

  currentAcceptLanguage = [MEMORY[0x277D69CD8] currentAcceptLanguage];
  v59 = [currentAcceptLanguage copy];
  [v16 setValue:v59 forHTTPHeaderField:@"Accept-Language"];

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:secondsFromGMT];
  stringValue = [v62 stringValue];
  [v16 setValue:stringValue forHTTPHeaderField:@"X-Apple-Tz"];

  dataProvider = [(ISURLOperation *)self dataProvider];
  if ([dataProvider isStream])
  {
    [dataProvider setup];
    streamedBytes = [dataProvider streamedBytes];
    if (streamedBytes >= 1)
    {
      v66 = streamedBytes;
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v68) = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v68) = v68 | 2;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v68 = v68;
      }

      else
      {
        v68 &= 2u;
      }

      if (v68)
      {
        v81 = lCopy;
        v70 = objc_opt_class();
        v83 = v70;
        v71 = objc_opt_class();
        v92 = 138412802;
        v93 = v70;
        v94 = 2112;
        v95 = v71;
        v96 = 2048;
        v97 = v66;
        v72 = v71;
        v73 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "[%@] [DataProvider: %@] [Streamed Bytes: %llu]", &v92, 32);

        lCopy = v81;
        if (!v73)
        {
LABEL_64:

          v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"bytes=%lld-", v66];
          [v16 setValue:v74 forHTTPHeaderField:@"Range"];

          goto LABEL_65;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v73 encoding:4];
        free(v73);
        SSFileLog();
      }

      goto LABEL_64;
    }
  }

LABEL_65:

  return v16;
}

- (BOOL)shouldFollowRedirectWithRequest:(id)request returningError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (NSNumber)metricsLoadURLSessionDuration
{
  delegate = [(ISOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ISOperation *)self delegate];
    metricsLoadURLSessionDuration = [delegate2 metricsLoadURLSessionDuration];
  }

  else
  {
    metricsLoadURLSessionDuration = 0;
  }

  return metricsLoadURLSessionDuration;
}

- (NSNumber)metricsLoadURLSamplingPercentage
{
  delegate = [(ISOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ISOperation *)self delegate];
    metricsLoadURLSamplingPercentage = [delegate2 metricsLoadURLSamplingPercentage];
  }

  else
  {
    metricsLoadURLSamplingPercentage = 0;
  }

  return metricsLoadURLSamplingPercentage;
}

- (NSNumber)metricsLoadURLSamplingPercentageCachedResponses
{
  delegate = [(ISOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ISOperation *)self delegate];
    metricsLoadURLSamplingPercentageCachedResponses = [delegate2 metricsLoadURLSamplingPercentageCachedResponses];
  }

  else
  {
    metricsLoadURLSamplingPercentageCachedResponses = 0;
  }

  return metricsLoadURLSamplingPercentageCachedResponses;
}

- (BOOL)shouldDisableCellular
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  shouldDisableCellular = [_requestProperties shouldDisableCellular];

  return shouldDisableCellular;
}

- (BOOL)shouldRequireCellular
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  requiresCellularDataNetwork = [_requestProperties requiresCellularDataNetwork];

  return requiresCellularDataNetwork;
}

- (NSData)sourceAppAuditTokenData
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  clientAuditTokenData = [_requestProperties clientAuditTokenData];

  return clientAuditTokenData;
}

- (NSString)sourceAppBundleID
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  clientAuditBundleIdentifier = [_requestProperties clientAuditBundleIdentifier];

  return clientAuditBundleIdentifier;
}

- (NSURLCache)URLCache
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(ISOperation *)self delegate];
    uRLCache = [delegate2 URLCache];

    if (uRLCache)
    {
      delegate3 = [(ISOperation *)self delegate];
      uRLCache2 = [delegate3 URLCache];

      goto LABEL_8;
    }
  }

  else
  {
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ISURLOperation_URLCache__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  if (URLCache_onceToken != -1)
  {
    dispatch_once(&URLCache_onceToken, block);
  }

  uRLCache2 = URLCache_sURLCache;
LABEL_8:

  return uRLCache2;
}

void *__26__ISURLOperation_URLCache__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() _sharedCacheStorageSession];
  if (result)
  {
    URLCache_sURLCache = [objc_alloc(MEMORY[0x277CCACD8]) _initWithExistingCFURLCache:{objc_msgSend(objc_opt_class(), "sharedCFURLCache")}];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (NSString)URLCacheID
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(ISOperation *)self delegate];
    uRLCacheID = [delegate2 URLCacheID];
    v6 = [uRLCacheID length];

    if (v6)
    {
      delegate3 = [(ISOperation *)self delegate];
      uRLCacheID2 = [delegate3 URLCacheID];

      goto LABEL_8;
    }
  }

  else
  {
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ISURLOperation_URLCacheID__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  if (URLCacheID_onceToken != -1)
  {
    dispatch_once(&URLCacheID_onceToken, block);
  }

  uRLCacheID2 = URLCacheID_sURLCacheID;
LABEL_8:

  return uRLCacheID2;
}

void *__28__ISURLOperation_URLCacheID__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() _sharedCacheStorageSession];
  if (result)
  {
    URLCacheID_sURLCacheID = _CFURLStorageSessionCopyIdentifier();

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithEvent:(id)event error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if (([taskCopy isEqual:self->_urlSessionTask] & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      urlSessionTask = self->_urlSessionTask;
      v31 = 138413058;
      v32 = v26;
      v33 = 2114;
      v34 = taskCopy;
      v35 = 2114;
      v36 = urlSessionTask;
      v37 = 2114;
      v38 = errorCopy;
      v28 = v26;
      v29 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%@: Ignoring completion for task: %{public}@ original task: %{public}@ error: %{public}@", &v31, 42);

      if (!v29)
      {
LABEL_28:

        goto LABEL_30;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
      free(v29);
      SSFileLog();
    }

    goto LABEL_28;
  }

  if (!errorCopy)
  {
    [(ISURLOperation *)self _handleFinishedLoading];
    goto LABEL_30;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v12 = shouldLog2 | 2;
  }

  else
  {
    v12 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = objc_opt_class();
  v30 = v15;
  v16 = [(ISURLOperation *)self _sanitizedDescriptionForObject:errorCopy];
  _activeURL = [(ISURLOperation *)self _activeURL];
  v18 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
  v31 = 138412802;
  v32 = v15;
  v33 = 2112;
  v34 = v16;
  v35 = 2112;
  v36 = v18;
  v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%@: Failed with error: %@ (%@)", &v31, 32);

  if (v19)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
    free(v19);
    SSFileLog();
LABEL_14:
  }

  v20 = ISErrorWithExternalError(errorCopy);
  v21 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v20];
  [(ISOperation *)self setError:v21];

  [(ISURLOperation *)self _stopConnection];
LABEL_30:
}

- (void)URLSession:(id)session task:(id)task didFinishCreatingHTTPArchive:(id)archive
{
  archiveCopy = archive;
  [(ISOperation *)self lock];
  httpArchive = self->_httpArchive;
  self->_httpArchive = archiveCopy;

  [(ISOperation *)self unlock];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->super._delegate);
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      [(ISOperation *)self unlock];
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = objc_loadWeakRetained(&self->super._delegate);
  [(ISOperation *)self unlock];
  if (!v13 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:*MEMORY[0x277CCA700]])
    {
      v15 = [(ISURLOperation *)self _defaultAuthChallengeDispositionForChallenge:challengeCopy];
      credential = 0;
LABEL_49:

      goto LABEL_50;
    }

    _requestProperties = [(ISURLOperation *)self _requestProperties];
    if ([_requestProperties isITunesStoreRequest])
    {

LABEL_14:
      if (([MEMORY[0x277CEE468] QAMode] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEE468], "ignoreServerTrustEvaluation") & 1) != 0 || SSDebugShouldIgnoreExtendedValidation())
      {
        credential = [MEMORY[0x277CCACF0] credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
        v15 = 0;
      }

      else
      {
        credential = 0;
        v15 = 1;
      }

      goto LABEL_49;
    }

    v20 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

    if (v20)
    {
      goto LABEL_14;
    }

    v21 = objc_alloc_init(ISAuthenticationChallengeOperation);
    v42 = [[ISURLAuthenticationChallenge alloc] initWithAuthenticationChallenge:challengeCopy];
    v43 = v21;
    [(ISAuthenticationChallengeOperation *)v21 setChallenge:?];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v25 = shouldLog;
    }

    else
    {
      v25 = shouldLog & 2;
    }

    if (v25)
    {
      v45 = 138412290;
      v46 = objc_opt_class();
      v40 = v46;
      v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Presenting authentication challenge", &v45, 12);

      if (!v26)
      {
        goto LABEL_29;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:4];
      free(v26);
      v38 = oSLogObject;
      SSFileLog();
    }

LABEL_29:
    v44 = 0;
    v27 = v43;
    v28 = [(ISOperation *)self runSubOperation:v43 returningError:&v44];
    v29 = v44;
    v30 = v29;
    if (v28)
    {
      credential = [(ISAuthenticationChallengeOperation *)v43 credential];
      v15 = 2 * (credential == 0);
LABEL_45:

      goto LABEL_49;
    }

    v41 = v29;
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v32) = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v32) = v32 | 2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v32 = v32;
    }

    else
    {
      v32 &= 2u;
    }

    if (v32)
    {
      v34 = objc_opt_class();
      v45 = 138412290;
      v46 = v34;
      v35 = v34;
      LODWORD(v39) = 12;
      v36 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Authentication challenge failed", &v45, v39);

      v27 = v43;
      if (!v36)
      {
LABEL_44:

        v30 = v41;
        v37 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v41];
        [(ISOperation *)self setError:v37];

        v15 = [(ISURLOperation *)self _defaultAuthChallengeDispositionForChallenge:challengeCopy];
        credential = 0;
        goto LABEL_45;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v36 encoding:4];
      free(v36);
      SSFileLog();
    }

    goto LABEL_44;
  }

  v14 = [v13 operation:self dispositionForAuthenticationChallenge:challengeCopy];
  if (v14)
  {
    v15 = v14;
LABEL_47:
    credential = 0;
    goto LABEL_50;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_47;
  }

  credential = [v13 operation:self credentialForAuthenticationChallenge:challengeCopy];
  v15 = 0;
LABEL_50:
  handlerCopy[2](handlerCopy, v15, credential);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(ISURLOperation *)self isUploadProgressRequested:session])
  {
    [(ISOperation *)self lock];
    progress = self->super._progress;
    if (!progress)
    {
      v12 = objc_alloc_init(MEMORY[0x277D69BE0]);
      v13 = self->super._progress;
      self->super._progress = v12;

      progress = self->super._progress;
    }

    v14 = [(SSOperationProgress *)progress operationType]!= 3 || [(SSOperationProgress *)self->super._progress maxValue]!= send;
    [(SSOperationProgress *)self->super._progress setCanPause:0];
    [(SSOperationProgress *)self->super._progress resetSnapshots];
    [(SSOperationProgress *)self->super._progress setMaxValue:send];
    [(SSOperationProgress *)self->super._progress setCurrentValue:sent];
    [(SSOperationProgress *)self->super._progress setOperationType:3];
    [(SSOperationProgress *)self->super._progress setUnits:1];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v22 = 138413058;
      v23 = objc_opt_class();
      v24 = 2048;
      dataCopy = data;
      v26 = 2048;
      sentCopy = sent;
      v28 = 2048;
      sendCopy = send;
      v19 = v23;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "[%@] Bytes Uploaded: %llu [Uploaded: %llu] [Expected: %llu]", &v22, 42);

      if (v20)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    [(ISOperation *)self unlock];
    if (v14)
    {
      [(ISURLOperation *)self _updateProgress];
    }
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v49 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  streamCopy = stream;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v10 = objc_opt_respondsToSelector();

  v11 = 0x277D69000uLL;
  if ((v10 & 1) == 0 || (v12 = objc_loadWeakRetained(&self->super._delegate)) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v28 = shouldLog | 2;
    }

    else
    {
      v28 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      v32 = v31;
      v33 = objc_loadWeakRetained(&self->super._delegate);
      v45 = 138412546;
      v46 = v31;
      v47 = 2112;
      v48 = objc_opt_class();
      v34 = v48;
      v35 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "[%@] We needed a new NSInputStream, but our delegate does not offer that facility; [%@]", &v45, 22);

      v11 = 0x277D69000uLL;
      if (!v35)
      {
LABEL_29:

        v13 = 0;
        goto LABEL_30;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
      free(v35);
      v43 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_29;
  }

  v13 = v12;
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
    v20 = v19;
    v21 = objc_loadWeakRetained(&self->super._delegate);
    v45 = 138412546;
    v46 = v19;
    v47 = 2112;
    v48 = objc_opt_class();
    v22 = v48;
    v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "[%@] We need a new NSInputStream; [%@]", &v45, 22);

    v11 = 0x277D69000;
    if (!v23)
    {
      goto LABEL_15;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
    free(v23);
    v43 = oSLogObject2;
    SSFileLog();
  }

LABEL_15:
  currentRequest = [taskCopy currentRequest];
  v25 = [v13 operation:self needNewBodyStream:currentRequest];

  if (!v25)
  {
LABEL_30:
    sharediTunesStoreConfig = [*(v11 + 2872) sharediTunesStoreConfig];
    if (!sharediTunesStoreConfig)
    {
      sharediTunesStoreConfig = [*(v11 + 2872) sharedConfig];
    }

    shouldLog3 = [sharediTunesStoreConfig shouldLog];
    if ([sharediTunesStoreConfig shouldLogToDisk])
    {
      LODWORD(v38) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v38) = shouldLog3;
    }

    oSLogObject3 = [sharediTunesStoreConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v38 = v38;
    }

    else
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v45 = 138412290;
      v46 = v40;
      v41 = v40;
      LODWORD(v44) = 12;
      v42 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &dword_275BC3000, oSLogObject3, 16, "[%@] We needed a new NSInputStream, there is none available - cancelling task", &v45, v44);

      if (!v42)
      {
LABEL_42:

        [taskCopy cancel];
        v25 = 0;
        goto LABEL_43;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:4];
      free(v42);
      SSFileLog();
    }

    goto LABEL_42;
  }

LABEL_43:
  streamCopy[2](streamCopy, v25);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v81 = *MEMORY[0x277D85DE8];
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  if (redirectionCopy)
  {
    v13 = redirectionCopy;
    statusCode = [v13 statusCode];
    if ((SSIsInternalBuild() & 1) != 0 || SSIsSeedBuild())
    {
      allHeaderFields = [v13 allHeaderFields];
      v69 = [allHeaderFields objectForKey:*MEMORY[0x277D6A168]];
    }

    else
    {
      v69 = 0;
    }

    v66 = redirectionCopy;
    allHeaderFields2 = [v13 allHeaderFields];
    v68 = [allHeaderFields2 objectForKey:@"X-Apple-Application-Site"];

    v17 = 0x277D69000uLL;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    v67 = v13;
    if (v22)
    {
      v23 = objc_opt_class();
      v24 = v23;
      logKey = [(ISURLOperation *)self logKey];
      v71 = 138544386;
      v72 = v23;
      v73 = 2114;
      v74 = logKey;
      v75 = 2048;
      v76 = statusCode;
      v77 = 2114;
      v78 = v69;
      v79 = 2114;
      v13 = v67;
      v80 = v68;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Received response. StatusCode: %ld; %{public}@; Environment: %{public}@", &v71, 52);

      v17 = 0x277D69000;
      if (v26)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:4];
        free(v26);
        v60 = v27;
        SSFileLog();
      }
    }

    else
    {
    }

    if (!SSIsInternalBuild())
    {
LABEL_31:
      v70 = 0;
      v41 = [(ISURLOperation *)self _shouldFollowRedirectWithRequest:requestCopy error:&v70, v60];
      v42 = v70;
      if (v41)
      {
        if ([(ISURLOperation *)self _shouldSetCookies]&& [(ISURLOperation *)self _usesPrivateCookieStore])
        {
          _requestProperties = [(ISURLOperation *)self _requestProperties];
          [_requestProperties URLBagType];
          v44 = handlerCopy;
          v45 = SSAccountScopeForURLBagType();

          mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
          v47 = objc_msgSend__accountIdentifier(self);
          v48 = v45;
          handlerCopy = v44;
          [mEMORY[0x277D69CB8] setCookiesForHTTPResponse:v13 userIdentifier:v47 scope:v48];
        }

        v49 = [(ISURLOperation *)self _handleRedirectRequest:requestCopy response:v13];
        goto LABEL_48;
      }

      sharediTunesStoreConfig = [*(v17 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig)
      {
        sharediTunesStoreConfig = [*(v17 + 2872) sharedConfig];
      }

      shouldLog2 = [sharediTunesStoreConfig shouldLog];
      if ([sharediTunesStoreConfig shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [sharediTunesStoreConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v53 = shouldLog2;
      }

      else
      {
        v53 = shouldLog2 & 2;
      }

      if (v53)
      {
        v54 = objc_opt_class();
        v65 = v54;
        [(ISURLOperation *)self logKey];
        v56 = v55 = handlerCopy;
        v57 = [(ISURLOperation *)self _sanitizedDescriptionForObject:v42];
        v71 = 138543874;
        v72 = v54;
        v73 = 2114;
        v74 = v56;
        v75 = 2112;
        v76 = v57;
        LODWORD(v61) = 32;
        v58 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [%{public}@] Will not follow redirect: %@", &v71, v61);

        handlerCopy = v55;
        if (!v58)
        {
LABEL_47:

          v59 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v42];
          [(ISOperation *)self setError:v59];

          [(ISOperation *)self cancel];
          v49 = 0;
          v13 = v67;
LABEL_48:

          requestCopy = v49;
          redirectionCopy = v66;
          goto LABEL_49;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v58 encoding:4];
        free(v58);
        SSFileLog();
      }

      goto LABEL_47;
    }

    allHeaderFields3 = [v13 allHeaderFields];
    v29 = [allHeaderFields3 description];

    sharediTunesStoreConfigOversize = [*(v17 + 2872) sharediTunesStoreConfigOversize];
    if (!sharediTunesStoreConfigOversize)
    {
      sharediTunesStoreConfigOversize = [*(v17 + 2872) sharedConfig];
    }

    shouldLog3 = [sharediTunesStoreConfigOversize shouldLog];
    if ([sharediTunesStoreConfigOversize shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [sharediTunesStoreConfigOversize OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = shouldLog3;
    }

    else
    {
      v33 = shouldLog3 & 2;
    }

    if (v33)
    {
      v34 = objc_opt_class();
      v62 = v34;
      [(ISURLOperation *)self logKey];
      v35 = v64 = requestCopy;
      v36 = [v64 URL];
      [(ISURLOperation *)self _sanitizedURLForURL:v36];
      v38 = v37 = v29;
      [(ISURLOperation *)self _sanitizedStringForString:v37];
      v39 = v63 = handlerCopy;
      v71 = 138544130;
      v72 = v34;
      v73 = 2114;
      v74 = v35;
      v75 = 2114;
      v76 = v38;
      v77 = 2114;
      v78 = v39;
      LODWORD(v61) = 42;
      v40 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: [%{public}@] (redirect) Received headers for %{public}@:\n%{public}@", &v71, v61);

      v17 = 0x277D69000uLL;
      handlerCopy = v63;

      v29 = v37;
      requestCopy = v64;
      v13 = v67;

      if (!v40)
      {
LABEL_30:

        goto LABEL_31;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v40 encoding:4];
      free(v40);
      v60 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_49:
  handlerCopy[2](handlerCopy, requestCopy);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  [(ISURLOperation *)self _handleReceivedData:data];
  dataProvider = [(ISURLOperation *)self dataProvider];
  isStream = [dataProvider isStream];

  if (isStream)
  {
    dataProvider2 = [(ISURLOperation *)self dataProvider];
    isStreamComplete = [dataProvider2 isStreamComplete];

    if (isStreamComplete)
    {
      [taskCopy cancel];
      v13 = MEMORY[0x277D69CA8];
      _timingData = [taskCopy _timingData];
      v15 = [v13 eventFromTimingData:_timingData delegate:self session:sessionCopy task:taskCopy error:0];

      [(ISURLOperation *)self URLSession:sessionCopy task:taskCopy didCompleteWithEvent:v15 error:0];
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  [(ISURLOperation *)self _handleReceivedResponse:response];
  handlerCopy[2](handlerCopy, 1);
}

+ (_CFURLCache)sharedCFURLCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ISURLOperation_sharedCFURLCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCFURLCache_sOnce != -1)
  {
    dispatch_once(&sharedCFURLCache_sOnce, block);
  }

  return sharedCFURLCache__shared;
}

uint64_t __34__ISURLOperation_sharedCFURLCache__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _sharedCacheStorageSession])
  {
    result = _CFURLStorageSessionCopyCache();
    if (!result)
    {
      return result;
    }

    v2 = result;
    CFURLCacheSetDiskCapacity();
    result = CFURLCacheSetMemoryCapacity();
  }

  else
  {
    result = CFURLCacheCopySharedURLCache();
    v2 = result;
  }

  sharedCFURLCache__shared = v2;
  return result;
}

- (SSHTTPArchive)HTTPArchive
{
  [(ISOperation *)self lock];
  v3 = self->_httpArchive;
  [(ISOperation *)self unlock];

  return v3;
}

- (ISURLRequestPerformance)performanceMetrics
{
  [(ISOperation *)self lock];
  v3 = self->_performanceMetrics;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setTracksPerformanceMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  [(ISOperation *)self lock];
  performanceMetrics = self->_performanceMetrics;
  if (metricsCopy)
  {
    if (performanceMetrics)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(ISURLRequestPerformance);
    performanceMetrics = self->_performanceMetrics;
  }

  else
  {
    v6 = 0;
  }

  self->_performanceMetrics = v6;

LABEL_6:

  [(ISOperation *)self unlock];
}

- (BOOL)tracksPerformanceMetrics
{
  [(ISOperation *)self lock];
  v3 = self->_performanceMetrics != 0;
  [(ISOperation *)self unlock];
  return v3;
}

- (id)_accountIdentifier
{
  v70 = *MEMORY[0x277D85DE8];
  logKey = [(ISURLOperation *)self logKey];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_class();
  v10 = v9;
  requestProperties = [(ISURLOperation *)self requestProperties];
  v12 = [requestProperties URL];
  *v68 = 138543874;
  *&v68[4] = v9;
  *&v68[12] = 2114;
  *&v68[14] = logKey;
  *&v68[22] = 2114;
  v69 = v12;
  v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Attempting to determine the account identifier for %{public}@.", v68, 32);

  if (v13)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
    free(v13);
    v66 = oSLogObject;
    SSFileLog();
LABEL_12:
  }

  _accountDSIDOverride = [(ISURLOperation *)self _accountDSIDOverride];
  if (_accountDSIDOverride)
  {
    v15 = _accountDSIDOverride;
    _accountDSIDOverride2 = [(ISURLOperation *)self _accountDSIDOverride];
    v17 = [_accountDSIDOverride2 isEqualToNumber:&unk_2884CA8C0];

    if ((v17 & 1) == 0)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v41 = shouldLog2 | 2;
      }

      else
      {
        v41 = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v41;
      }

      else
      {
        v43 = v41 & 2;
      }

      if (v43)
      {
        v44 = objc_opt_class();
        v45 = v44;
        _accountDSIDOverride3 = [(ISURLOperation *)self _accountDSIDOverride];
        stringValue = [_accountDSIDOverride3 stringValue];
        v48 = SSHashIfNeeded();
        *v68 = 138543874;
        *&v68[4] = v44;
        *&v68[12] = 2114;
        *&v68[14] = logKey;
        *&v68[22] = 2114;
        v69 = v48;
        LODWORD(v67) = 32;
        v49 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [%{public}@] accountDSIDOverride = %{public}@", v68, v67);

        if (!v49)
        {
LABEL_53:

          _accountDSIDOverride4 = [(ISURLOperation *)self _accountDSIDOverride];
          goto LABEL_84;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v49 encoding:4];
        free(v49);
        SSFileLog();
      }

      goto LABEL_53;
    }
  }

  authenticatedAccountDSID = [(ISOperation *)self authenticatedAccountDSID];
  uniqueIdentifier = authenticatedAccountDSID;
  if (authenticatedAccountDSID && [authenticatedAccountDSID unsignedLongLongValue])
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v22 = shouldLog3 | 2;
    }

    else
    {
      v22 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (!v24)
    {
      goto LABEL_81;
    }

    v25 = objc_opt_class();
    v26 = v25;
    stringValue2 = [uniqueIdentifier stringValue];
    v28 = SSHashIfNeeded();
    *v68 = 138543874;
    *&v68[4] = v25;
    *&v68[12] = 2114;
    *&v68[14] = logKey;
    *&v68[22] = 2114;
    LODWORD(v67) = 32;
    v29 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: [%{public}@] authenticatedAccountDSID = %{public}@", v68, v67, *v68, *&v68[8], v28);
    goto LABEL_27;
  }

  authenticationContext = [(ISURLOperation *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

  if (requiredUniqueIdentifier && [requiredUniqueIdentifier unsignedLongLongValue])
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v34 = shouldLog4;
    }

    else
    {
      v34 = shouldLog4 & 2;
    }

    if (!v34)
    {
      uniqueIdentifier = requiredUniqueIdentifier;
      goto LABEL_81;
    }

    v35 = objc_opt_class();
    v36 = v35;
    stringValue3 = [requiredUniqueIdentifier stringValue];
    v38 = SSHashIfNeeded();
    *v68 = 138543874;
    *&v68[4] = v35;
    *&v68[12] = 2114;
    *&v68[14] = logKey;
    *&v68[22] = 2114;
    v69 = v38;
    LODWORD(v67) = 32;
    v30 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: [%{public}@] authenticationContext.requiredUniqueIdentifier = %{public}@", v68, v67);

    uniqueIdentifier = requiredUniqueIdentifier;
    if (!v30)
    {
LABEL_82:

      uniqueIdentifier = uniqueIdentifier;
      _accountDSIDOverride4 = uniqueIdentifier;
      goto LABEL_83;
    }

LABEL_40:
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:4];
    free(v30);
    SSFileLog();
LABEL_81:

    goto LABEL_82;
  }

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [_requestProperties URLBagType];
  v52 = SSAccountScopeForURLBagType();

  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  v54 = defaultStore;
  if (v52 == 1)
  {
    activeSandboxAccount = [defaultStore activeSandboxAccount];
    uniqueIdentifier = [activeSandboxAccount uniqueIdentifier];

    if (uniqueIdentifier && [uniqueIdentifier unsignedLongLongValue])
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog5 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v57 = shouldLog5 | 2;
      }

      else
      {
        v57 = shouldLog5;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 2;
      }

      if (!v58)
      {
        goto LABEL_81;
      }

      v59 = objc_opt_class();
      v26 = v59;
      stringValue2 = [uniqueIdentifier stringValue];
      v28 = SSHashIfNeeded();
      *v68 = 138543874;
      *&v68[4] = v59;
      *&v68[12] = 2114;
      *&v68[14] = logKey;
      *&v68[22] = 2114;
      LODWORD(v67) = 32;
      v29 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: [%{public}@] activeSandboxAccount.uniqueIdentifier = %{public}@", v68, v67, *v68, *&v68[8], v28);
      goto LABEL_27;
    }
  }

  else
  {
    activeAccount = [defaultStore activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    if (uniqueIdentifier && [uniqueIdentifier unsignedLongLongValue])
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog6 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v62 = shouldLog6 | 2;
      }

      else
      {
        v62 = shouldLog6;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v62;
      }

      else
      {
        v63 = v62 & 2;
      }

      if (!v63)
      {
        goto LABEL_81;
      }

      v64 = objc_opt_class();
      v26 = v64;
      stringValue2 = [uniqueIdentifier stringValue];
      v28 = SSHashIfNeeded();
      *v68 = 138543874;
      *&v68[4] = v64;
      *&v68[12] = 2114;
      *&v68[14] = logKey;
      *&v68[22] = 2114;
      LODWORD(v67) = 32;
      v29 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%{public}@: [%{public}@] activeAccount.uniqueIdentifier = %{public}@", v68, v67, *v68, *&v68[8], v28);
LABEL_27:
      v30 = v29;

      if (!v30)
      {
        goto LABEL_82;
      }

      goto LABEL_40;
    }
  }

  _accountDSIDOverride4 = 0;
LABEL_83:

LABEL_84:

  return _accountDSIDOverride4;
}

- (id)_copyAuthenticationContext
{
  authenticationContext = [(ISURLOperation *)self authenticationContext];
  v3 = [authenticationContext mutableCopy];

  return v3;
}

- (BOOL)_processResponseData:(id)data error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (id)_requestProperties
{
  [(ISOperation *)self lock];
  v3 = self->_requestProperties;
  [(ISOperation *)self unlock];

  return v3;
}

- (id)_sanitizedDescriptionForObject:(id)object
{
  v4 = [object description];
  v5 = [(ISURLOperation *)self _sanitizedStringForString:v4];

  return v5;
}

- (id)_sanitizedStringForString:(id)string
{
  stringCopy = string;
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = objc_opt_respondsToSelector();

  v7 = stringCopy;
  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->super._delegate);
    v7 = [v8 operation:self sanitizedStringForString:stringCopy];
  }

  [(ISOperation *)self unlock];

  return v7;
}

- (id)_sanitizedURLForURL:(id)l
{
  lCopy = l;
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = objc_opt_respondsToSelector();

  v7 = lCopy;
  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->super._delegate);
    absoluteString = [lCopy absoluteString];
    v7 = [v8 operation:self sanitizedStringForString:absoluteString];
  }

  [(ISOperation *)self unlock];

  return v7;
}

- (void)_handleFinishedLoading
{
  v86 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ISURLRequestPerformance *)self->_performanceMetrics setFinishTime:?];
    v4 = self->_performanceMetrics;
  }

  else
  {
    v4 = 0;
    Current = 0.0;
  }

  [(ISOperation *)self unlock];
  if (([(ISURLOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_71;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (v4)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = v11;
      logKey = [(ISURLOperation *)self logKey];
      [(ISURLRequestPerformance *)v4 finishInterval];
      v15 = v14;
      _activeURL = [(ISURLOperation *)self _activeURL];
      v17 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
      *v83 = 138544386;
      *&v83[4] = v11;
      *&v83[12] = 2114;
      *&v83[14] = logKey;
      *&v83[22] = 2048;
      v84 = *&Current;
      *v85 = 2048;
      *&v85[2] = v15;
      *&v85[10] = 2112;
      *&v85[12] = v17;
      v18 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Finished loading: [%.2f, %.2fs] %@", v83, 52);

      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v21 = shouldLog2 | 2;
  }

  else
  {
    v21 = shouldLog2;
  }

  oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 & 2;
  }

  if (!v22)
  {
LABEL_28:

    goto LABEL_29;
  }

  v23 = objc_opt_class();
  v24 = v23;
  logKey2 = [(ISURLOperation *)self logKey];
  _activeURL2 = [(ISURLOperation *)self _activeURL];
  v27 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL2];
  *v83 = 138543874;
  *&v83[4] = v23;
  *&v83[12] = 2114;
  *&v83[14] = logKey2;
  *&v83[22] = 2112;
  v84 = v27;
  v18 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Finished loading URL: %@", v83, 32);

  if (v18)
  {
LABEL_16:
    v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
    free(v18);
    v60 = v19;
    SSFileLog();
  }

LABEL_29:

  dataProvider = [(ISURLOperation *)self dataProvider];
  *v83 = 0;
  *&v83[8] = v83;
  *&v83[16] = 0x3032000000;
  v84 = __Block_byref_object_copy__2;
  *v85 = __Block_byref_object_dispose__2;
  *&v85[8] = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__2;
  v77 = __Block_byref_object_dispose__2;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  dataBufferAccessQueue = self->_dataBufferAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ISURLOperation__handleFinishedLoading__block_invoke;
  block[3] = &unk_27A6709B8;
  v66 = v83;
  v30 = dataProvider;
  v64 = v30;
  selfCopy = self;
  v67 = &v69;
  v68 = &v73;
  dispatch_sync(dataBufferAccessQueue, block);
  v31 = *(v70 + 24);
  if ((v31 & 1) == 0)
  {
    if ([v30 errorHandlerResponseType] == 2)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      shouldLogToDisk = [mEMORY[0x277D69B38]3 shouldLogToDisk];
      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      v50 = oSLogObject2;
      if (shouldLogToDisk)
      {
        shouldLog3 |= 2u;
      }

      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v51 = shouldLog3;
      }

      else
      {
        v51 = shouldLog3 & 2;
      }

      if (v51)
      {
        v52 = objc_opt_class();
        v53 = [(ISURLOperation *)self _sanitizedDescriptionForObject:*(*&v83[8] + 40)];
        v79 = 138412546;
        v80 = v52;
        v81 = 2112;
        v82 = v53;
        LODWORD(v61) = 22;
        v54 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_275BC3000, v50, 16, "%@: Retry for error handler, after error: %@", &v79, v61);

        if (!v54)
        {
          goto LABEL_56;
        }

        v50 = [MEMORY[0x277CCACA8] stringWithCString:v54 encoding:4];
        free(v54);
        v60 = v50;
        SSFileLog();
      }

      goto LABEL_56;
    }

    if (SSDebugShouldLogResponseBodies())
    {
      response = [(ISURLOperation *)self response];
      [(ISURLOperation *)self _logResponseBody:response];
    }

    [(ISOperation *)self setError:*(*&v83[8] + 40), v60];
    goto LABEL_68;
  }

  redirectURL = [v30 redirectURL];
  v33 = redirectURL == 0;

  if (v33)
  {
    if (v30)
    {
      output = [v30 output];
      [(ISURLOperation *)self _sendOutputToDelegate:output];
    }

    else
    {
      [(ISURLOperation *)self _sendOutputToDelegate:v74[5]];
    }

    if (SSDebugShouldLogResponseBodies() && ([v30 isStream] & 1) == 0)
    {
      response2 = [(ISURLOperation *)self response];
      [(ISURLOperation *)self _logResponseBody:response2];
    }

    [(ISOperation *)self setSuccess:1, v60];
LABEL_68:
    v55 = 0;
    goto LABEL_69;
  }

  redirectURLs = self->_redirectURLs;
  redirectURL2 = [v30 redirectURL];
  LODWORD(redirectURLs) = [(NSCountedSet *)redirectURLs countForObject:redirectURL2]> 4;

  if (redirectURLs)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    shouldLogToDisk2 = [mEMORY[0x277D69B38]4 shouldLogToDisk];
    oSLogObject3 = [mEMORY[0x277D69B38]4 OSLogObject];
    v40 = oSLogObject3;
    if (shouldLogToDisk2)
    {
      shouldLog4 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v41 = shouldLog4;
    }

    else
    {
      v41 = shouldLog4 & 2;
    }

    if (v41)
    {
      v42 = objc_opt_class();
      redirectURL3 = [v30 redirectURL];
      v44 = [(ISURLOperation *)self _sanitizedURLForURL:redirectURL3];
      v79 = 138412546;
      v80 = v42;
      v81 = 2112;
      v82 = v44;
      LODWORD(v61) = 22;
      v45 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_275BC3000, v40, 0, "%@: Too many redirects for %@", &v79, v61);

      if (!v45)
      {
LABEL_43:

        mEMORY[0x277D69B38]3 = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:109];
        [(ISOperation *)self setError:mEMORY[0x277D69B38]3];
LABEL_56:

        v55 = v31 ^ 1;
        goto LABEL_69;
      }

      v40 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:4];
      free(v45);
      v60 = v40;
      SSFileLog();
    }

    goto LABEL_43;
  }

  v58 = *&v83[8];
  obj = *(*&v83[8] + 40);
  v55 = [(ISURLOperation *)self handleRedirectFromDataProvider:v30 error:&obj];
  objc_storeStrong((v58 + 40), obj);
  [(ISOperation *)self setError:*(*&v83[8] + 40)];
LABEL_69:

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(v83, 8);
  if ((v55 & 1) == 0)
  {
LABEL_71:
    [(ISOperation *)self stopRunLoop];
    goto LABEL_72;
  }

  [(ISURLOperation *)self _retry];
LABEL_72:
}

void __40__ISURLOperation__handleFinishedLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) closeStream];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 40) error];

    if (!v5)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      if (([v9 isStream] & 1) == 0)
      {
        v10 = *(a1 + 40);
        v11 = v10[43];
        v12 = *(*(a1 + 48) + 8);
        obj = *(v12 + 40);
        v13 = [v10 _processResponseData:v11 error:&obj];
        objc_storeStrong((v12 + 40), obj);
        *(*(*(a1 + 56) + 8) + 24) = v13;
        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          [*(a1 + 40) lock];
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 248));
          v15 = objc_opt_respondsToSelector();

          v16 = *(a1 + 40);
          if (v15)
          {
            v17 = objc_loadWeakRetained(v16 + 31);
            [*(a1 + 40) unlock];
            if (v17)
            {
              v18 = *(a1 + 40);
              v19 = *(v18 + 344);
              v20 = *(*(a1 + 48) + 8);
              v31 = *(v20 + 40);
              v21 = [v17 operation:v18 processData:v19 error:&v31];
              objc_storeStrong((v20 + 40), v31);
              *(*(*(a1 + 56) + 8) + 24) = v21;
            }
          }

          else
          {
            [v16 unlock];
          }

          if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            v22 = [*(a1 + 40) _decodedDataForData:*(*(a1 + 40) + 344)];
            v23 = *(*(a1 + 64) + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            v25 = *(a1 + 32);
            v26 = [*(a1 + 40) response];
            [v25 setResponse:v26];

            v27 = *(a1 + 32);
            v28 = *(*(*(a1 + 64) + 8) + 40);
            v29 = *(*(a1 + 48) + 8);
            v30 = *(v29 + 40);
            LOBYTE(v26) = [v27 parseData:v28 returningError:&v30];
            objc_storeStrong((v29 + 40), v30);
            *(*(*(a1 + 56) + 8) + 24) = v26;
          }
        }
      }
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = [*(*(a1 + 40) + 344) copy];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)_handleReceivedData:(id)data
{
  dataCopy = data;
  if (([(ISURLOperation *)self isCancelled]& 1) == 0)
  {
    dataProvider = [(ISURLOperation *)self dataProvider];
    if ([dataProvider isStream])
    {
      v10 = 0;
      v6 = [dataProvider parseData:dataCopy returningError:&v10];
      v7 = v10;
      if ((v6 & 1) == 0)
      {
        v8 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v7];
        [(ISOperation *)self setError:v8];

        [(ISURLOperation *)self _stopConnection];
      }
    }

    else
    {
      dataBufferAccessQueue = self->_dataBufferAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__ISURLOperation__handleReceivedData___block_invoke;
      block[3] = &unk_27A670868;
      v12 = dataCopy;
      selfCopy = self;
      dispatch_sync(dataBufferAccessQueue, block);
      v7 = v12;
    }
  }
}

void *__38__ISURLOperation__handleReceivedData___block_invoke(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 344) appendData:?];
  }

  return result;
}

- (void)_handleReceivedResponse:(id)response
{
  v105 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(ISOperation *)self lock];
  [(ISURLRequestPerformance *)self->_performanceMetrics setReceivedResponseTime:CFAbsoluteTimeGetCurrent()];
  [(ISURLRequestPerformance *)self->_performanceMetrics setURLResponse:responseCopy];
  v7 = self->_performanceMetrics;
  [(ISOperation *)self unlock];
  if (!v6)
  {
    statusCode = 200;
    goto LABEL_53;
  }

  statusCode = [v6 statusCode];
  if ((SSIsInternalBuild() & 1) != 0 || SSIsSeedBuild())
  {
    itunes_allHeaderFields = [responseCopy itunes_allHeaderFields];
    v90 = [itunes_allHeaderFields objectForKey:*MEMORY[0x277D6A168]];
  }

  else
  {
    v90 = 0;
  }

  allHeaderFields = [v6 allHeaderFields];
  v89 = [allHeaderFields objectForKey:@"X-Apple-Application-Site"];

  v11 = 0x277D69000uLL;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  v87 = v7;
  if (v7)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = shouldLog;
    }

    else
    {
      v16 = shouldLog & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = v17;
      [(ISURLOperation *)self logKey];
      v20 = v19 = statusCode;
      [(ISURLRequestPerformance *)v87 receivedResponseInterval];
      v95 = 138544642;
      v96 = v17;
      v97 = 2114;
      *v98 = v20;
      *&v98[8] = 2048;
      *&v98[10] = v21;
      v99 = 2048;
      v100 = v19;
      v101 = 2114;
      v102 = v90;
      v103 = 2114;
      v104 = v89;
      v22 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Received response [%.2fs]. StatusCode: %ld; %{public}@; Environment: %{public}@", &v95, 62);

      if (v22)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
        free(v22);
        v78 = v23;
        SSFileLog();
      }

      statusCode = v19;
LABEL_33:
      v11 = 0x277D69000;
      goto LABEL_35;
    }
  }

  else
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v24) = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v24) = v24 | 2;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v26 = v25;
      logKey = [(ISURLOperation *)self logKey];
      v28 = statusCode;
      v29 = logKey;
      v95 = 138544386;
      v96 = v25;
      v97 = 2114;
      *v98 = logKey;
      *&v98[8] = 2048;
      v30 = v28;
      *&v98[10] = v28;
      v99 = 2114;
      v100 = v90;
      v101 = 2114;
      v102 = v89;
      v31 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Received response. StatusCode: %ld; %{public}@; Environment: %{public}@", &v95, 52);

      if (v31)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
        free(v31);
        v78 = v32;
        SSFileLog();
      }

      statusCode = v30;
      goto LABEL_33;
    }
  }

LABEL_35:
  if (!SSIsInternalBuild())
  {
    goto LABEL_49;
  }

  v83 = statusCode;
  allHeaderFields2 = [v6 allHeaderFields];
  v34 = [allHeaderFields2 description];

  sharediTunesStoreConfig = [*(v11 + 2872) sharediTunesStoreConfig];
  if (!sharediTunesStoreConfig)
  {
    sharediTunesStoreConfig = [*(v11 + 2872) sharedConfig];
  }

  shouldLog2 = [sharediTunesStoreConfig shouldLog];
  if ([sharediTunesStoreConfig shouldLogToDisk])
  {
    v37 = shouldLog2 | 2;
  }

  else
  {
    v37 = shouldLog2;
  }

  oSLogObject2 = [sharediTunesStoreConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (!v39)
  {
    goto LABEL_47;
  }

  v40 = objc_opt_class();
  v81 = v40;
  [(ISURLOperation *)self logKey];
  v41 = v82 = v34;
  v42 = [responseCopy URL];
  v43 = [(ISURLOperation *)self _sanitizedURLForURL:v42];
  [(ISURLOperation *)self _sanitizedStringForString:v82];
  v44 = v84 = v6;
  v95 = 138544130;
  v96 = v40;
  v97 = 2114;
  *v98 = v41;
  *&v98[8] = 2112;
  *&v98[10] = v43;
  v99 = 2112;
  v100 = v44;
  LODWORD(v80) = 42;
  v45 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [%{public}@] Received headers for %@:\n%@", &v95, v80);

  v6 = v84;
  v34 = v82;

  if (v45)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:4];
    free(v45);
    v78 = oSLogObject2;
    SSFileLog();
LABEL_47:
  }

  statusCode = v83;
LABEL_49:
  v7 = v87;
  if ([(ISURLOperation *)self _shouldSetCookies]&& [(ISURLOperation *)self _usesPrivateCookieStore])
  {
    _requestProperties = [(ISURLOperation *)self _requestProperties];
    [_requestProperties URLBagType];
    v47 = SSAccountScopeForURLBagType();

    mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
    objc_msgSend__accountIdentifier(self);
    v50 = v49 = v6;
    [mEMORY[0x277D69CB8] setCookiesForHTTPResponse:v49 userIdentifier:v50 scope:v47];

    v6 = v49;
  }

LABEL_53:
  [(ISURLOperation *)self setResponse:responseCopy];
  dataBufferAccessQueue = self->_dataBufferAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ISURLOperation__handleReceivedResponse___block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_sync(dataBufferAccessQueue, block);
  [(ISURLOperation *)self handleResponse:responseCopy];
  [(ISURLOperation *)self _sendResponseToDelegate:responseCopy];
  if (![(ISURLOperation *)self _isPassThroughStatus:statusCode]&& statusCode != 416 && (statusCode - 1000) >= 0xFFFFFFFFFFFFFDA8 && ![(ISURLOperation *)self _loadsHTTPFailures])
  {
    dataProvider = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:109];
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
    v57 = SSErrorBySettingUserInfoValue();
    [(ISOperation *)self setError:v57];

    [(ISURLOperation *)self _stopConnection];
LABEL_96:

    goto LABEL_97;
  }

  if (([(ISURLOperation *)self isCancelled]& 1) == 0)
  {
    itunes_maxExpectedContentLength = [responseCopy itunes_maxExpectedContentLength];
    dataProvider = [(ISURLOperation *)self dataProvider];
    [dataProvider setContentLength:itunes_maxExpectedContentLength];
    mIMEType = [responseCopy MIMEType];
    [dataProvider setContentType:mIMEType];

    [dataProvider setup];
    if (statusCode == 416)
    {
      itunes_maxExpectedContentLength = [dataProvider streamedBytes];
LABEL_60:
      v55 = 1;
      goto LABEL_79;
    }

    if ([dataProvider isStream] && itunes_maxExpectedContentLength > 0 && objc_msgSend(dataProvider, "streamedBytes") == itunes_maxExpectedContentLength)
    {
      goto LABEL_60;
    }

    v55 = 0;
    if ([dataProvider streamedBytes] < 1 || statusCode == 206)
    {
LABEL_79:
      [(ISURLOperation *)self _sendContentLengthToDelegate:itunes_maxExpectedContentLength, v78];
      [(SSOperationProgress *)self->super._progress setCanPause:1];
      [(SSOperationProgress *)self->super._progress resetSnapshots];
      [(SSOperationProgress *)self->super._progress setMaxValue:itunes_maxExpectedContentLength];
      [(SSOperationProgress *)self->super._progress setOperationType:2];
      [(SSOperationProgress *)self->super._progress setUnits:1];
      [(ISURLOperation *)self _updateProgress];
      if (!v55)
      {
        v93 = 0;
        v76 = [(ISURLOperation *)self _validateContentLength:itunes_maxExpectedContentLength error:&v93];
        v75 = v93;
        if (v76)
        {
LABEL_95:

          goto LABEL_96;
        }

        v77 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v75];
        [(ISOperation *)self setError:v77];

LABEL_94:
        [(ISURLOperation *)self _stopConnection];
        goto LABEL_95;
      }

      v86 = v6;
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
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v69 = shouldLog3;
      }

      else
      {
        v69 = shouldLog3 & 2;
      }

      if (v69)
      {
        v70 = objc_opt_class();
        v92 = v70;
        [responseCopy URL];
        v72 = v71 = v7;
        v73 = [(ISURLOperation *)self _sanitizedURLForURL:v72];
        v95 = 138412546;
        v96 = v70;
        v97 = 2112;
        *v98 = v73;
        LODWORD(v80) = 22;
        v74 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &dword_275BC3000, oSLogObject3, 1, "%@: Skipping download because have entire file: %@", &v95, v80);

        v7 = v71;
        if (!v74)
        {
LABEL_91:

          [(ISOperation *)self setSuccess:1];
          v75 = 0;
          v6 = v86;
          goto LABEL_94;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v74 encoding:4];
        free(v74);
        v79 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_91;
    }

    v85 = v6;
    v88 = v7;
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
      v91 = v62;
      v63 = [responseCopy URL];
      v64 = [(ISURLOperation *)self _sanitizedURLForURL:v63];
      v95 = 138412802;
      v96 = v62;
      v97 = 1024;
      *v98 = 206;
      *&v98[4] = 2112;
      *&v98[6] = v64;
      LODWORD(v80) = 28;
      v65 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Did not receive expected %d response, resetting partial download: %@", &v95, v80);

      if (!v65)
      {
LABEL_78:

        [dataProvider resetStream];
        v55 = 0;
        v6 = v85;
        v7 = v88;
        goto LABEL_79;
      }

      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v65 encoding:4];
      free(v65);
      v78 = oSLogObject4;
      SSFileLog();
    }

    goto LABEL_78;
  }

LABEL_97:
}

uint64_t __42__ISURLOperation__handleReceivedResponse___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 344) = objc_alloc_init(MEMORY[0x277CBEB28]);

  return MEMORY[0x2821F96F8]();
}

- (id)_handleRedirectRequest:(id)request response:(id)response
{
  v40[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  v8 = self->_activeURLRequest;
  v9 = [requestCopy mutableCopy];
  _usesPrivateCookieStore = [(ISURLOperation *)self _usesPrivateCookieStore];
  [v9 setHTTPShouldHandleCookies:!_usesPrivateCookieStore];
  hTTPBody = [(NSURLRequest *)v8 HTTPBody];
  if (hTTPBody)
  {
    [v9 setHTTPBody:hTTPBody];
  }

  v34 = responseCopy;
  hTTPMethod = [(NSURLRequest *)v8 HTTPMethod];

  if (hTTPMethod)
  {
    [v9 setHTTPMethod:hTTPMethod];
  }

  v33 = v8;
  allHTTPHeaderFields = [(NSURLRequest *)v8 allHTTPHeaderFields];
  v40[0] = @"Content-Type";
  v14 = 0;
  v40[1] = *MEMORY[0x277D6A150];
  v40[2] = @"X-Apple-Client-Address";
  do
  {
    v15 = hTTPMethod;
    v16 = v40[v14];
    hTTPMethod = ISDictionaryValueForCaseInsensitiveString(allHTTPHeaderFields, v16);

    if (hTTPMethod)
    {
      [v9 setValue:hTTPMethod forHTTPHeaderField:v16];
    }

    ++v14;
  }

  while (v14 != 3);
  if (_usesPrivateCookieStore)
  {
    _requestProperties = [(ISURLOperation *)self _requestProperties];
    [_requestProperties URLBagType];
    v18 = SSAccountScopeForURLBagType();

    mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
    v32 = requestCopy;
    v20 = [requestCopy URL];
    v21 = objc_msgSend__accountIdentifier(self);
    v22 = [mEMORY[0x277D69CB8] cookieHeadersForURL:v20 userIdentifier:v21 scope:v18];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          v29 = [v23 objectForKey:v28];
          [v9 setValue:v29 forHTTPHeaderField:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v25);
    }

    requestCopy = v32;
  }

  [(ISURLOperation *)self _willSendRequest:v9];
  [(ISURLOperation *)self _setActiveURLRequest:v9];
  [(ISURLOperation *)self setResponse:v34];
  for (j = 2; j != -1; --j)
  {
  }

  return v9;
}

- (id)_copyConnectionPropertiesWithDataConnectionServiceType:(__CFString *)type
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:0x40000];
  v7 = *MEMORY[0x277CBAF00];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v9 = [v5 initWithObjectsAndKeys:{v6, v7, v8, *MEMORY[0x277CBAEF0], 0}];

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  shouldDisableCellular = [_requestProperties shouldDisableCellular];
  v12 = MEMORY[0x277CBED28];
  if (shouldDisableCellular)
  {
    v13 = MEMORY[0x277CBAE40];
    v14 = MEMORY[0x277CBED28];
  }

  else
  {
    if (![_requestProperties shouldDisableCellularFallback])
    {
      if (([_requestProperties isLargeDownload] & 1) == 0)
      {
        if (!type)
        {
          v15 = 0;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_9:
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      goto LABEL_10;
    }

    v13 = MEMORY[0x277CBADB0];
    v14 = MEMORY[0x277CBED10];
  }

  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{*v14, *v13, 0}];
  if (([_requestProperties isLargeDownload] & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v15 setObject:*v12 forKey:*MEMORY[0x277CBAC90]];
LABEL_11:
  if (type)
  {
    if (v15)
    {
LABEL_16:
      [v15 setObject:type forKey:*MEMORY[0x277CBADD0]];
      [v15 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBADD8]];
      goto LABEL_17;
    }

LABEL_15:
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_16;
  }

LABEL_17:
  clientAuditBundleIdentifier = [_requestProperties clientAuditBundleIdentifier];
  clientAuditTokenData = [_requestProperties clientAuditTokenData];
  v18 = clientAuditTokenData;
  if (clientAuditBundleIdentifier || [clientAuditTokenData length] == 32)
  {
    if (v15)
    {
      v19 = [v15 mutableCopy];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    }

    v20 = v19;
    if (clientAuditBundleIdentifier)
    {
      v21 = *MEMORY[0x277CBAE78];
      v22 = clientAuditBundleIdentifier;
    }

    else
    {
      v21 = *MEMORY[0x277CBAE70];
      v22 = v18;
    }

    [v19 setObject:v22 forKey:v21];
  }

  else
  {
    v20 = v15;
  }

  v23 = objc_alloc(MEMORY[0x277CBEAC0]);
  v24 = [v23 initWithObjectsAndKeys:{v9, *MEMORY[0x277CBAF08], v20, *MEMORY[0x277CBAEF8], 0}];

  return v24;
}

- (id)_copyQueryStringDictionaryForRedirect:(id)redirect
{
  v19 = *MEMORY[0x277D85DE8];
  redirectCopy = redirect;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  requestParameters = [_requestProperties requestParameters];
  v7 = [requestParameters mutableCopy];

  if ([v7 count])
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [redirectCopy copyQueryStringDictionaryWithUnescapedValues:0];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 removeObjectForKey:{*(*(&v14 + 1) + 8 * v12++), v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (id)_decodedDataForData:(id)data
{
  dataCopy = data;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  shouldDecodeResponse = [_requestProperties shouldDecodeResponse];

  v7 = dataCopy;
  if ((shouldDecodeResponse & 1) == 0)
  {
    response = [(ISURLOperation *)self response];
    v9 = [response _iTunesStore_valueForHTTPHeader:@"Content-Encoding"];
    v10 = v9;
    v7 = dataCopy;
    if (v9)
    {
      v7 = dataCopy;
      if (![v9 caseInsensitiveCompare:@"gzip"])
      {
        v11 = ISCopyDecompressedGZipDataForData();
        v12 = v11;
        v7 = dataCopy;
        if (v11)
        {
          v7 = v11;
        }
      }
    }
  }

  return v7;
}

- (int64_t)_defaultAuthChallengeDispositionForChallenge:(id)challenge
{
  v28 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  sender = [challengeCopy sender];
  v6 = objc_opt_respondsToSelector();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if ((v6 & 1) == 0)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
      v24 = 138412546;
      v25 = v20;
      v26 = 2112;
      v27 = v22;
      v16 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Continuing without credentials for challenge: %@", &v24, 22);

      if (!v16)
      {
        goto LABEL_27;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    v16 = 0;
    goto LABEL_27;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = objc_opt_class();
  v13 = v12;
  v14 = [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
  v24 = 138412546;
  v25 = v12;
  v26 = 2112;
  v27 = v14;
  v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%@: Performing default handling for challenge: %@", &v24, 22);

  if (v15)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
LABEL_13:
  }

  v16 = 1;
LABEL_27:

  return v16;
}

- (id)_errorWithDefaultStringsForError:(id)error
{
  errorCopy = error;
  v5 = SSError();
  localizedDescription = [v5 localizedDescription];
  localizedDescription2 = [errorCopy localizedDescription];
  v8 = [localizedDescription isEqualToString:localizedDescription2];

  if (v8)
  {
    domain = [errorCopy domain];
    v10 = -[ISURLOperation _errorWithDomain:code:](self, "_errorWithDomain:code:", domain, [errorCopy code]);

    localizedDescription3 = [v10 localizedDescription];
    v12 = SSErrorBySettingUserInfoValue();

    v5 = v10;
  }

  else
  {
    v12 = errorCopy;
  }

  return v12;
}

- (id)_errorWithDomain:(id)domain code:(int64_t)code
{
  domainCopy = domain;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  if ([_requestProperties isITunesStoreRequest])
  {
    host = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [host localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2884BCFD0 table:0];
LABEL_5:
    v13 = SSError();
    goto LABEL_6;
  }

  _activeURL = [(ISURLOperation *)self _activeURL];
  host = [_activeURL host];

  if ([host length])
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CANNOT_CONNECT_TO_HOST_%@" value:&stru_2884BCFD0 table:0];
    v8 = [v10 initWithFormat:v12, host];

    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v8 localizedStringForKey:@"CANNOT_CONNECT" value:&stru_2884BCFD0 table:0];
  v13 = SSError();

LABEL_6:

  return v13;
}

- (BOOL)_isExternalURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [[ISURLResolverOperation alloc] initWithURL:lCopy];
  [(ISOperation *)self runSubOperation:v5 returningError:0];
  if ([(ISOperation *)v5 success])
  {
    [(ISURLResolverOperation *)v5 resolvedAddresses];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      v10 = *MEMORY[0x277CBECE8];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = SCNetworkReachabilityCreateWithAddress(v10, [*(*(&v18 + 1) + 8 * i) bytes]);
          if (v12)
          {
            v13 = v12;
            flags = 0;
            SCNetworkReachabilityGetFlags(v12, &flags);
            v14 = flags;
            CFRelease(v13);
            if ((v14 & 0x10000) != 0)
            {
              v15 = 0;
              goto LABEL_14;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_14:
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)_isPassThroughStatus:(int64_t)status
{
  passThroughErrors = [(ISURLOperation *)self passThroughErrors];

  if (!passThroughErrors)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  passThroughErrors2 = [(ISURLOperation *)self passThroughErrors];
  v8 = [passThroughErrors2 containsObject:v6];

  return v8;
}

- (void)_logRequest:(id)request
{
  v48 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ((SSDebugShouldLogOutgoingHeaders() & 1) != 0 || SSDebugShouldLogResponseBodies())
  {
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    if (SSIsInternalBuild() && [allHTTPHeaderFields count])
    {
      v6 = [allHTTPHeaderFields description];
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfigOversize];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v9 = shouldLog | 2;
      }

      else
      {
        v9 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 2;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v34 = v12;
        [(ISURLOperation *)self logKey];
        v38 = allHTTPHeaderFields;
        v14 = v13 = self;
        [requestCopy URL];
        v15 = v36 = v6;
        v16 = [(ISURLOperation *)v13 _sanitizedURLForURL:v15];
        v17 = [(ISURLOperation *)v13 _sanitizedStringForString:v36];
        v40 = 138544130;
        v41 = v12;
        v42 = 2114;
        v43 = v14;
        v44 = 2112;
        v45 = v16;
        v46 = 2112;
        v47 = v17;
        v18 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Sending headers for %@:\n%@", &v40, 42);

        v6 = v36;
        self = v13;
        allHTTPHeaderFields = v38;

        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
          free(v18);
          v32 = v19;
          SSFileLog();
        }
      }

      else
      {
      }
    }

    if (!SSDebugShouldLogResponseBodies())
    {
      goto LABEL_33;
    }

    hTTPBody = [requestCopy HTTPBody];
    if (![hTTPBody length])
    {
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:hTTPBody encoding:4];
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfigOversize];
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
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v25 = shouldLog2;
    }

    else
    {
      v25 = shouldLog2 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v35 = v26;
      v27 = [requestCopy URL];
      [(ISURLOperation *)self _sanitizedURLForURL:v27];
      v37 = hTTPBody;
      v29 = v28 = v21;
      [(ISURLOperation *)self _sanitizedStringForString:v28];
      v30 = v39 = allHTTPHeaderFields;
      v40 = 138412802;
      v41 = v26;
      v42 = 2112;
      v43 = v29;
      v44 = 2112;
      v45 = v30;
      LODWORD(v33) = 32;
      v31 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%@: Sending body for %@:\n%@", &v40, v33);

      allHTTPHeaderFields = v39;
      v21 = v28;
      hTTPBody = v37;

      if (!v31)
      {
LABEL_31:

        goto LABEL_32;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
      free(v31);
      SSFileLog();
    }

    goto LABEL_31;
  }

LABEL_34:
}

- (void)_logResponseBody:(id)body
{
  v33 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  mIMEType = [bodyCopy MIMEType];
  if ([mIMEType rangeOfString:@"text" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(mIMEType, "rangeOfString:options:", @"plist", 1) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(mIMEType, "rangeOfString:options:", @"json", 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    dataBufferAccessQueue = self->_dataBufferAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__ISURLOperation__logResponseBody___block_invoke;
    block[3] = &unk_27A6708C0;
    block[4] = self;
    block[5] = &v21;
    dispatch_sync(dataBufferAccessQueue, block);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = [v7 initWithData:v22[5] encoding:4];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfigOversize];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = shouldLog;
    }

    else
    {
      v13 = shouldLog & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [bodyCopy URL];
      v16 = [(ISURLOperation *)self _sanitizedURLForURL:v15];
      v17 = [(ISURLOperation *)self _sanitizedStringForString:v19];
      v27 = 138412802;
      v28 = v14;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, v12, 0, "%@: Received body for %@:\n%@", &v27, 32);

      if (!v18)
      {
LABEL_15:

        _Block_object_dispose(&v21, 8);
        goto LABEL_16;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
      free(v18);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
}

uint64_t __35__ISURLOperation__logResponseBody___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 344) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)_performDefaultHandlingForAuthenticationChallenge:(id)challenge
{
  v27 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  sender = [challengeCopy sender];
  v6 = objc_opt_respondsToSelector();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if ((v6 & 1) == 0)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
      v23 = 138412546;
      v24 = v19;
      v25 = 2112;
      v26 = v21;
      v22 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Continuing without credentials for challenge: %@", &v23, 22);

      if (!v22)
      {
LABEL_27:

        [sender continueWithoutCredentialForAuthenticationChallenge:challengeCopy];
        goto LABEL_28;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_27;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = objc_opt_class();
  v13 = v12;
  v14 = [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
  v23 = 138412546;
  v24 = v12;
  v25 = 2112;
  v26 = v14;
  v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%@: Performing default handling for challenge: %@", &v23, 22);

  if (v15)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog();
LABEL_13:
  }

  [sender performDefaultHandlingForAuthenticationChallenge:challengeCopy];
LABEL_28:
}

- (void)_retry
{
  v37 = *MEMORY[0x277D85DE8];
  [(NSURLSessionTask *)self->_urlSessionTask cancel];
  urlSessionTask = self->_urlSessionTask;
  self->_urlSessionTask = 0;

  v4 = [(NSURLRequest *)self->_activeURLRequest mutableCopy];
  if (v4)
  {
    [(ISURLOperation *)self _setActiveURLRequest:v4];
    [(ISURLOperation *)self _sendRequestToDelegate:v4];
    v5 = [(SSURLSessionManager *)self->_urlSessionManager dataTaskWithRequest:v4 delegate:self];
    v6 = self->_urlSessionTask;
    self->_urlSessionTask = v5;

    [(NSURLSessionTask *)self->_urlSessionTask resume];
  }

  v7 = self->_urlSessionTask;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (!v7)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v25 = v24;
      logKey = [(ISURLOperation *)self logKey];
      _activeURL = [(ISURLOperation *)self _activeURL];
      v28 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
      v31 = 138543874;
      v32 = v24;
      v33 = 2114;
      v34 = logKey;
      v35 = 2112;
      v36 = v28;
      v29 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: [%{public}@] Failed to retry connection: %@", &v31, 32);

      if (!v29)
      {
LABEL_29:

        v30 = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:109];
        [(ISOperation *)self setError:v30];

        [(ISOperation *)self stopRunLoop];
        goto LABEL_30;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
      free(v29);
      SSFileLog();
    }

    goto LABEL_29;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = objc_opt_class();
  v15 = v14;
  logKey2 = [(ISURLOperation *)self logKey];
  _activeURL2 = [(ISURLOperation *)self _activeURL];
  v18 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL2];
  v31 = 138543874;
  v32 = v14;
  v33 = 2114;
  v34 = logKey2;
  v35 = 2112;
  v36 = v18;
  v19 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [%{public}@] Performing retry with URL %@", &v31, 32);

  if (v19)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
    free(v19);
    SSFileLog();
LABEL_15:
  }

  [(ISURLOperation *)self _logRequest:v4];
LABEL_30:
}

- (void)_run
{
  v35 = *MEMORY[0x277D85DE8];
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [(ISOperation *)self lock];
  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ISURLRequestPerformance *)self->_performanceMetrics setStartTime:?];
    [(ISOperation *)self unlock];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      v21 = v10;
      logKey = [(ISURLOperation *)self logKey];
      v12 = [_requestProperties URL];
      v13 = [(ISURLOperation *)self _sanitizedURLForURL:v12];
      v27 = 138544130;
      v28 = v10;
      v29 = 2114;
      v30 = logKey;
      v31 = 2048;
      v32 = Current;
      v33 = 2112;
      v34 = v13;
      v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Started request at [%.2f] for %@", &v27, 42);

      if (!v14)
      {
LABEL_14:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
      free(v14);
      v20 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

  [(ISOperation *)self unlock];
LABEL_16:
  [_requestProperties URLs];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v25 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
LABEL_18:
    v19 = 0;
    while (1)
    {
      if (*v23 != v18)
      {
        objc_enumerationMutation(v15);
      }

      if ([(ISURLOperation *)self _runRequestWithURL:*(*(&v22 + 1) + 8 * v19) dataConnectionServiceType:0])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v17)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }
}

- (BOOL)_runRequestWithURL:(id)l dataConnectionServiceType:(__CFString *)type
{
  v158 = *MEMORY[0x277D85DE8];
  lCopy = l;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  allowedRetryCount = [_requestProperties allowedRetryCount];
  self->_networkRetryCount = 0;
  v141 = *MEMORY[0x277D6A110];
  mode = *MEMORY[0x277CBF058];
  v5 = 0x277D69000uLL;
  v142 = *MEMORY[0x277CCA738];
  selfCopy = self;
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(ISURLOperation *)self newRequestWithURL:lCopy];
    if (!v7)
    {
      selfCopy3 = self;
      v23 = v141;
      v24 = 109;
LABEL_61:
      v128 = [(ISURLOperation *)selfCopy3 _errorWithDomain:v23 code:v24, v128];
      [(ISOperation *)self setError:v128];

      goto LABEL_64;
    }

    if ([_requestProperties requiresExternal] && !-[ISURLOperation _isExternalURL:](self, "_isExternalURL:", lCopy))
    {
      sharediTunesStoreConfig = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig)
      {
        sharediTunesStoreConfig = [*(v5 + 2872) sharedConfig];
      }

      shouldLog = [sharediTunesStoreConfig shouldLog];
      if ([sharediTunesStoreConfig shouldLogToDisk])
      {
        v49 = shouldLog | 2;
      }

      else
      {
        v49 = shouldLog;
      }

      oSLogObject = [sharediTunesStoreConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
        v150 = 138412290;
        v151 = v52;
        v53 = v52;
        LODWORD(v130) = 12;
        v54 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Rejecting internal request", &v150, v130);

        if (!v54)
        {
LABEL_60:

          selfCopy3 = self;
          v23 = v141;
          v24 = 107;
          goto LABEL_61;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v54 encoding:4];
        free(v54);
        v128 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_60;
    }

    if (![_requestProperties requiresHTTPS] || (objc_msgSend(v7, "URL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "scheme"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "caseInsensitiveCompare:", @"https"), v9, v8, !v10))
    {
      [(ISURLOperation *)self _setActiveURLRequest:v7];
      [(ISURLOperation *)self _sendRequestToDelegate:v7];
      sharedConfig = [*(v5 + 2872) sharedConfig];
      if (!sharedConfig)
      {
        sharedConfig = [*(v5 + 2872) sharedConfig];
      }

      v137 = v6;
      shouldLog2 = [sharedConfig shouldLog];
      if ([sharedConfig shouldLogToDisk])
      {
        v27 = shouldLog2 | 2;
      }

      else
      {
        v27 = shouldLog2;
      }

      oSLogObject2 = [sharedConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v27;
      }

      else
      {
        v29 = v27 & 2;
      }

      if (v29)
      {
        v30 = objc_opt_class();
        v31 = v30;
        logKey = [(ISURLOperation *)self logKey];
        [v7 URL];
        v34 = v33 = v7;
        v150 = 138543874;
        v151 = v30;
        v152 = 2114;
        v153 = logKey;
        v154 = 2112;
        v155 = v34;
        LODWORD(v130) = 32;
        v35 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: [%{public}@] Starting request for URL: %@", &v150, v130);

        v7 = v33;
        if (!v35)
        {
          goto LABEL_33;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
        free(v35);
        v128 = oSLogObject2;
        SSFileLog();
      }

LABEL_33:
      v36 = [(SSURLSessionManager *)self->_urlSessionManager dataTaskWithRequest:v7 delegate:self];
      urlSessionTask = self->_urlSessionTask;
      self->_urlSessionTask = v36;

      if (!self->_urlSessionTask)
      {
        v56 = [(ISURLOperation *)self _errorWithDomain:v141 code:109];
        [(ISOperation *)self setError:v56];

LABEL_63:
        v6 = v137;
        goto LABEL_64;
      }

      sharediTunesStoreConfig2 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig2)
      {
        sharediTunesStoreConfig2 = [*(v5 + 2872) sharedConfig];
      }

      shouldLog3 = [sharediTunesStoreConfig2 shouldLog];
      if ([sharediTunesStoreConfig2 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [sharediTunesStoreConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v41 = shouldLog3;
      }

      else
      {
        v41 = shouldLog3 & 2;
      }

      if (v41)
      {
        v42 = objc_opt_class();
        v135 = v42;
        hTTPMethod = [v7 HTTPMethod];
        networkServiceType = [v7 networkServiceType];
        v44 = [v7 URL];
        v45 = [(ISURLOperation *)self _sanitizedURLForURL:v44];
        v150 = 138413058;
        v151 = v42;
        v152 = 2112;
        v153 = hTTPMethod;
        v154 = 2048;
        v155 = networkServiceType;
        v156 = 2112;
        v157 = v45;
        LODWORD(v130) = 42;
        v46 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_275BC3000, oSLogObject3, 1, "%@: Making %@ request, with service type: %lu, for URL: %@", &v150, v130);

        if (!v46)
        {
LABEL_45:

          [(ISURLOperation *)self _logRequest:v7];
          [(ISURLOperation *)self performSelector:sel__stopIfCancelled withObject:0 afterDelay:0.0];
          [(NSURLSessionTask *)self->_urlSessionTask resume];
          [(ISOperation *)self runRunLoopUntilStopped];
          if ([(ISURLOperation *)self isCancelled])
          {
            [(NSURLSessionTask *)self->_urlSessionTask cancel];
            CFRunLoopRunInMode(mode, 0.0, 1u);
          }

          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopIfCancelled object:{0, v129}];
          v5 = 0x277D69000;
          goto LABEL_63;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:4];
        free(v46);
        v129 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_45;
    }

    sharediTunesStoreConfig3 = [*(v5 + 2872) sharediTunesStoreConfig];
    if (!sharediTunesStoreConfig3)
    {
      sharediTunesStoreConfig3 = [*(v5 + 2872) sharedConfig];
    }

    shouldLog4 = [sharediTunesStoreConfig3 shouldLog];
    if ([sharediTunesStoreConfig3 shouldLogToDisk])
    {
      v13 = shouldLog4 | 2;
    }

    else
    {
      v13 = shouldLog4;
    }

    oSLogObject4 = [sharediTunesStoreConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    v133 = v7;
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = objc_opt_class();
    v17 = v16;
    v18 = [v7 URL];
    scheme = [v18 scheme];
    v150 = 138412546;
    v151 = v16;
    v152 = 2112;
    v153 = scheme;
    LODWORD(v130) = 22;
    v20 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Rejecting request due to invalid scheme: %@", &v150, v130);

    if (v20)
    {
      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
      free(v20);
      v128 = oSLogObject4;
      SSFileLog();
LABEL_18:
    }

    v21 = [(ISURLOperation *)self _errorWithDomain:v141 code:128];
    [(ISOperation *)self setError:v21];

    v7 = v133;
LABEL_64:
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateProgress object:{0, v128}];
    [(ISURLOperation *)self _setActiveURLRequest:0];
    dataBufferAccessQueue = self->_dataBufferAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ISURLOperation__runRequestWithURL_dataConnectionServiceType___block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    dispatch_sync(dataBufferAccessQueue, block);
    [(NSURLSessionTask *)self->_urlSessionTask cancel];
    v58 = self->_urlSessionTask;
    self->_urlSessionTask = 0;

    redirectURLs = self->_redirectURLs;
    self->_redirectURLs = 0;

    if ([(ISOperation *)self success]|| ([(ISURLOperation *)self isCancelled]& 1) != 0)
    {
      goto LABEL_124;
    }

    error = [(ISOperation *)self error];
    v61 = +[ISNetworkObserver sharedInstance];
    domain = [error domain];
    v63 = [domain isEqualToString:v142];

    if (!v63)
    {
      goto LABEL_82;
    }

    if (![v61 networkType])
    {
      sharediTunesStoreConfig4 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig4)
      {
        sharediTunesStoreConfig4 = [*(v5 + 2872) sharedConfig];
      }

      LODWORD(v104) = [sharediTunesStoreConfig4 shouldLog];
      if ([sharediTunesStoreConfig4 shouldLogToDisk])
      {
        LODWORD(v104) = v104 | 2;
      }

      oSLogObject5 = [sharediTunesStoreConfig4 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v104 = v104;
      }

      else
      {
        v104 &= 2u;
      }

      if (v104)
      {
        v106 = objc_opt_class();
        v144 = v106;
        [_requestProperties URL];
        v146 = v61;
        v108 = v107 = v7;
        v109 = [(ISURLOperation *)self _sanitizedURLForURL:v108];
        v150 = 138412546;
        v151 = v106;
        v152 = 2112;
        v153 = v109;
        LODWORD(v130) = 22;
        v110 = _os_log_send_and_compose_impl(v104, 0, 0, 0, &dword_275BC3000, oSLogObject5, 0, "%@: No network connection, giving up: %@", &v150, v130);

        v7 = v107;
        v61 = v146;

        if (v110)
        {
          oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v110 encoding:4];
          free(v110);
          v128 = oSLogObject5;
          SSFileLog();
          goto LABEL_119;
        }
      }

      else
      {
LABEL_119:
      }

      sharedConfig2 = [(ISURLOperation *)self _errorWithDomain:v141 code:110];
      oSLogObject8 = SSErrorBySettingUserInfoValue();
      [(ISOperation *)self setError:oSLogObject8];
      v5 = 0x277D69000uLL;
      goto LABEL_121;
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v61 lastNetworkTypeChangeTime];
    if (Current - v65 < 5.0)
    {
      sharediTunesStoreConfig5 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig5)
      {
        sharediTunesStoreConfig5 = [*(v5 + 2872) sharedConfig];
      }

      shouldLog5 = [sharediTunesStoreConfig5 shouldLog];
      if ([sharediTunesStoreConfig5 shouldLogToDisk])
      {
        v68 = shouldLog5 | 2;
      }

      else
      {
        v68 = shouldLog5;
      }

      oSLogObject6 = [sharediTunesStoreConfig5 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v68;
      }

      else
      {
        v70 = v68 & 2;
      }

      if (v70)
      {
        v71 = objc_opt_class();
        v138 = v71;
        [_requestProperties URL];
        v72 = error;
        v74 = v73 = v7;
        [(ISURLOperation *)selfCopy _sanitizedURLForURL:v74];
        v75 = v61;
        v77 = v76 = v6;
        v150 = 138412546;
        v151 = v71;
        v152 = 2112;
        v153 = v77;
        LODWORD(v130) = 22;
        v78 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &dword_275BC3000, oSLogObject6, 0, "%@: Retrying after a network transition: %@", &v150, v130);

        v7 = v73;
        error = v72;
        self = selfCopy;

        v6 = v76;
        v61 = v75;

        v5 = 0x277D69000;
        if (!v78)
        {
LABEL_81:

          self->_networkRetryCount = 0;
          goto LABEL_97;
        }

        oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v78 encoding:4];
        free(v78);
        v128 = oSLogObject6;
        SSFileLog();
      }

      goto LABEL_81;
    }

LABEL_82:
    if (!ISErrorIndicatesSlowNetwork(error))
    {
      goto LABEL_123;
    }

    networkRetryCount = self->_networkRetryCount;
    self->_networkRetryCount = networkRetryCount + 1;
    sharediTunesStoreConfig6 = [*(v5 + 2872) sharediTunesStoreConfig];
    sharedConfig2 = sharediTunesStoreConfig6;
    if (networkRetryCount >= allowedRetryCount)
    {
      break;
    }

    if (!sharediTunesStoreConfig6)
    {
      sharedConfig2 = [*(v5 + 2872) sharedConfig];
    }

    shouldLog6 = [sharedConfig2 shouldLog];
    if ([sharedConfig2 shouldLogToDisk])
    {
      v83 = shouldLog6 | 2;
    }

    else
    {
      v83 = shouldLog6;
    }

    oSLogObject7 = [sharedConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 2;
    }

    if (!v85)
    {
      goto LABEL_95;
    }

    v86 = objc_opt_class();
    v87 = v6;
    v88 = v61;
    v89 = self->_networkRetryCount;
    v136 = v86;
    [_requestProperties URL];
    v139 = error;
    v91 = v90 = v87;
    [(ISURLOperation *)selfCopy _sanitizedURLForURL:v91];
    v93 = v92 = v7;
    v150 = 138412802;
    v151 = v86;
    v152 = 2048;
    v153 = v89;
    v61 = v88;
    v154 = 2112;
    v155 = v93;
    LODWORD(v130) = 32;
    v94 = _os_log_send_and_compose_impl(v85, 0, 0, 0, &dword_275BC3000, oSLogObject7, 0, "%@: Waiting a bit before retry #%ld: %@", &v150, v130);

    v6 = v90;
    error = v139;
    self = selfCopy;

    v7 = v92;
    v5 = 0x277D69000;

    if (v94)
    {
      oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v94 encoding:4];
      free(v94);
      v128 = oSLogObject7;
      SSFileLog();
LABEL_95:
    }

LABEL_97:
    [MEMORY[0x277CCACC8] sleepForTimeInterval:{5.0, v128}];
    if (([(ISURLOperation *)self isCancelled]& 1) != 0)
    {
      goto LABEL_123;
    }

    [(ISOperation *)self setError:0];

    objc_autoreleasePoolPop(v6);
  }

  if (!sharediTunesStoreConfig6)
  {
    sharedConfig2 = [*(v5 + 2872) sharedConfig];
  }

  LODWORD(v95) = [sharedConfig2 shouldLog];
  if ([sharedConfig2 shouldLogToDisk])
  {
    LODWORD(v95) = v95 | 2;
  }

  oSLogObject8 = [sharedConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v95 = v95;
  }

  else
  {
    v95 &= 2u;
  }

  if (!v95)
  {
    goto LABEL_121;
  }

  v145 = v61;
  v134 = v7;
  v97 = v6;
  v98 = objc_opt_class();
  v99 = v98;
  v100 = [_requestProperties URL];
  v101 = [(ISURLOperation *)self _sanitizedURLForURL:v100];
  v150 = 138412546;
  v151 = v98;
  v152 = 2112;
  v153 = v101;
  LODWORD(v130) = 22;
  v102 = _os_log_send_and_compose_impl(v95, 0, 0, 0, &dword_275BC3000, oSLogObject8, 0, "%@: Giving up after too many retries: %@", &v150, v130);

  if (v102)
  {
    oSLogObject8 = [MEMORY[0x277CCACA8] stringWithCString:v102 encoding:4];
    free(v102);
    v128 = oSLogObject8;
    SSFileLog();
    v5 = 0x277D69000;
    v6 = v97;
    v7 = v134;
    v61 = v145;
LABEL_121:

    goto LABEL_122;
  }

  v5 = 0x277D69000;
  v6 = v97;
  v7 = v134;
  v61 = v145;
LABEL_122:

LABEL_123:
LABEL_124:

  objc_autoreleasePoolPop(v6);
  error2 = [(ISOperation *)self error];
  if (error2)
  {

    goto LABEL_136;
  }

  if ([(ISOperation *)self success])
  {
    sharedConfig3 = [*(v5 + 2872) sharedConfig];
    v113 = v5;
    sharedConfig4 = sharedConfig3;
    if (!sharedConfig3)
    {
      sharedConfig4 = [*(v113 + 2872) sharedConfig];
    }

    LODWORD(v115) = [sharedConfig4 shouldLog];
    if ([sharedConfig4 shouldLogToDisk])
    {
      LODWORD(v115) = v115 | 2;
    }

    oSLogObject9 = [sharedConfig4 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
    {
      v115 = v115;
    }

    else
    {
      v115 &= 2u;
    }

    if (v115)
    {
      v117 = objc_opt_class();
      v118 = v117;
      logKey2 = [(ISURLOperation *)self logKey];
      v150 = 138543618;
      v151 = v117;
      v152 = 2114;
      v153 = logKey2;
      LODWORD(v130) = 22;
      v120 = _os_log_send_and_compose_impl(v115, 0, 0, 0, &dword_275BC3000, oSLogObject9, 0, "%{public}@: [%{public}@] Completed successfully", &v150, v130);
      goto LABEL_145;
    }

LABEL_147:
  }

  else
  {
LABEL_136:
    sharedConfig5 = [*(v5 + 2872) sharedConfig];
    v122 = v5;
    sharedConfig4 = sharedConfig5;
    if (!sharedConfig5)
    {
      sharedConfig4 = [*(v122 + 2872) sharedConfig];
    }

    LODWORD(v123) = [sharedConfig4 shouldLog];
    if ([sharedConfig4 shouldLogToDisk])
    {
      LODWORD(v123) = v123 | 2;
    }

    oSLogObject9 = [sharedConfig4 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
    {
      v123 = v123;
    }

    else
    {
      v123 &= 2u;
    }

    if (!v123)
    {
      goto LABEL_147;
    }

    v124 = objc_opt_class();
    v118 = v124;
    logKey2 = [(ISURLOperation *)self logKey];
    error3 = [(ISOperation *)self error];
    v150 = 138543874;
    v151 = v124;
    v152 = 2114;
    v153 = logKey2;
    v154 = 2114;
    v155 = error3;
    LODWORD(v130) = 32;
    v120 = _os_log_send_and_compose_impl(v123, 0, 0, 0, &dword_275BC3000, oSLogObject9, 16, "%{public}@: [%{public}@] Completed with error: %{public}@", &v150, v130);

LABEL_145:
    if (v120)
    {
      oSLogObject9 = [MEMORY[0x277CCACA8] stringWithCString:v120 encoding:4];
      free(v120);
      SSFileLog();
      goto LABEL_147;
    }
  }

  success = [(ISOperation *)self success];
  return success;
}

void __63__ISURLOperation__runRequestWithURL_dataConnectionServiceType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 344);
  *(v1 + 344) = 0;
}

- (void)_sendContentLengthToDelegate:(int64_t)delegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:delegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__ISURLOperation__sendContentLengthToDelegate___block_invoke;
    v8[3] = &unk_27A670890;
    v9 = delegate;
    selfCopy = self;
    v11 = v6;
    v7 = v6;
    [(ISOperation *)self delegateDispatch:v8];
  }
}

- (void)_sendOutputToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__ISURLOperation__sendOutputToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (void)_sendRequestToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__ISURLOperation__sendRequestToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }

  [(ISURLOperation *)self _willSendRequest:delegateCopy];
}

- (void)_sendResponseToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__ISURLOperation__sendResponseToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (void)_setActiveURLRequest:(id)request
{
  if (self->_activeURLRequest != request)
  {
    self->_activeURLRequest = [request copy];

    MEMORY[0x2821F96F8]();
  }
}

+ (__CFURLStorageSession)_sharedCacheStorageSession
{
  if (_sharedCacheStorageSession_sOnce != -1)
  {
    +[ISURLOperation _sharedCacheStorageSession];
  }

  return _sharedCacheStorageSession_storageSession;
}

void __44__ISURLOperation__sharedCacheStorageSession__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  if (MGGetSInt32Answer() != 4)
  {
    v1 = MEMORY[0x277CCACA8];
    v7[0] = CPSharedResourcesDirectory();
    v7[1] = @"Library";
    v7[2] = @"Caches";
    v7[3] = @"sharedCaches";
    v7[4] = @"com.apple.iTunesStore.NSURLCache";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
    v3 = [v1 pathWithComponents:v2];

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

    if (SSFileIsLocalWritable())
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v6 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBACE0], *MEMORY[0x277CBED28]);
      CFDictionarySetValue(Mutable, @"kCFURLStorageSessionEnableVaryHeaderSupport", v6);
      _sharedCacheStorageSession_storageSession = _CFURLStorageSessionCreate();
      CFRelease(Mutable);
    }
  }

  objc_autoreleasePoolPop(v0);
}

- (BOOL)_shouldFollowRedirectWithRequest:(id)request error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy URL];
  scheme = [v7 scheme];

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  if ([_requestProperties requiresHTTPS])
  {
    v10 = [scheme caseInsensitiveCompare:@"https"];

    if (v10)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v13) = shouldLog | 2;
      }

      else
      {
        LODWORD(v13) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v23 = 138412546;
        v24 = objc_opt_class();
        v25 = 2112;
        v26 = scheme;
        v15 = v24;
        v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Rejecting redirect due to invalid scheme: %@", &v23, 22);

        if (!v16)
        {
LABEL_15:

          v17 = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:128];
          goto LABEL_19;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
        free(v16);
        SSFileLog();
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v22 = 0;
  v18 = [(ISURLOperation *)self shouldFollowRedirectWithRequest:requestCopy returningError:&v22];
  v17 = v22;
  if (v18)
  {
    v19 = 1;
    goto LABEL_22;
  }

LABEL_19:
  if (*error)
  {
    v20 = v17;
    v19 = 0;
    *error = v17;
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (void)_stopConnection
{
  dataProvider = [(ISURLOperation *)self dataProvider];
  isStream = [dataProvider isStream];

  if (isStream)
  {
    error = [(ISOperation *)self error];

    dataProvider2 = [(ISURLOperation *)self dataProvider];
    v7 = dataProvider2;
    if (error)
    {
      error2 = [(ISOperation *)self error];
      [v7 streamDidFailWithError:error2];
    }

    else
    {
      closeStream = [dataProvider2 closeStream];
    }
  }

  [(NSURLSessionTask *)self->_urlSessionTask cancel];

  [(ISOperation *)self stopRunLoop];
}

- (void)_stopIfCancelled
{
  if ([(ISURLOperation *)self isCancelled])
  {

    [(ISOperation *)self stopRunLoop];
  }
}

- (id)_stringForCachePolicy:(unint64_t)policy
{
  if (policy > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A670A00[policy];
  }
}

- (void)_updateProgress
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  progress = self->super._progress;
  if (progress)
  {
    if ([(SSOperationProgress *)progress operationType]== 2)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      dataProvider = [(ISURLOperation *)self dataProvider];
      if ([dataProvider isStream])
      {
        streamedBytes = [dataProvider streamedBytes];
        v10[3] = streamedBytes;
      }

      else
      {
        dataBufferAccessQueue = self->_dataBufferAccessQueue;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __33__ISURLOperation__updateProgress__block_invoke;
        v8[3] = &unk_27A6709E0;
        v8[4] = self;
        v8[5] = &v9;
        dispatch_sync(dataBufferAccessQueue, v8);
        streamedBytes = v10[3];
      }

      [(SSOperationProgress *)self->super._progress setCurrentValue:streamedBytes];

      _Block_object_dispose(&v9, 8);
    }

    [(SSOperationProgress *)self->super._progress snapshot];
    [(ISOperation *)self sendProgressToDelegate];
    [(ISURLOperation *)self performSelector:a2 withObject:0 afterDelay:*MEMORY[0x277D6A700]];
  }
}

void *__33__ISURLOperation__updateProgress__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 344);
  if (result)
  {
    result = [result length];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)_validateContentLength:(int64_t)length error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dataProvider = [(ISURLOperation *)self dataProvider];
  v7 = dataProvider;
  if (dataProvider && [dataProvider isStream])
  {
    v20 = 0;
    v8 = [v7 canStreamContentLength:length error:&v20];
    v9 = v20;
    if ((v8 & 1) == 0)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        LODWORD(v12) = shouldLog | 2;
      }

      else
      {
        LODWORD(v12) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
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
        v14 = objc_opt_class();
        v21 = 138412546;
        v22 = v14;
        v23 = 2048;
        lengthCopy = length;
        v15 = v14;
        v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Not enough space to download asset of size %lld", &v21, 22);

        if (!v16)
        {
          goto LABEL_16;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
        free(v16);
        SSFileLog();
      }

LABEL_16:
      v17 = 0;
      if (!error)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = 1;
  if (error)
  {
LABEL_20:
    v18 = v9;
    *error = v9;
  }

LABEL_21:

  return v17;
}

@end