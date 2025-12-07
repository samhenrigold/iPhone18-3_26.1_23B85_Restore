@interface ASTask
- (ASTask)init;
- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)space;
- (BOOL)_handleCertificateError:(id)error;
- (BOOL)_handleRedirect:(id)redirect;
- (BOOL)_isWBXML;
- (BOOL)_shouldUseUsernamePasswordForAuthenticationMethod:(id)method;
- (BOOL)attemptRetryWithStatus:(int64_t)status error:(id)error;
- (BOOL)checkForErrorInContext:(id)context;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)isInCallOutToDelegate;
- (DATaskManager)taskManager;
- (NSString)description;
- (double)timeoutInterval;
- (id)_applyAuthenticationChain:(id)chain toRequest:(id)request;
- (id)_easVersion;
- (id)_getCredential:(id)credential;
- (id)_policyKey;
- (id)_url;
- (id)command;
- (id)delegate;
- (id)requestBody;
- (id)responseContentType;
- (int)commandCode;
- (int64_t)taskStatusForError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_URLSessionDataTaskDidReceiveData:(id)data;
- (void)_URLSessionDidBecomeInvalidWithError:(id)error;
- (void)_URLSessionTaskDidCompleteWithError:(id)error;
- (void)_addAuthToRequest:(id)request;
- (void)_assignConnectionProperties:(id)properties toSessionConfiguration:(id)configuration;
- (void)_continuePerformTask;
- (void)_failImmediately;
- (void)_handleAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)_handleBadPasswordResponse;
- (void)_handleCompletion;
- (void)_handleCompletionError:(id)error;
- (void)_handleCredentialRenewalResult:(id)result;
- (void)_initFakeParseContext;
- (void)_popModal;
- (void)_pushModalForReason:(int)reason;
- (void)_setHTTPParametersOnRequest:(id)request outBodyStream:(id *)stream outBodyData:(id *)data;
- (void)_tearDownResourcesHelper;
- (void)_timeoutEnforcerFired:(id)fired;
- (void)cancelTaskWithReason:(int)reason underlyingError:(id)error;
- (void)dealloc;
- (void)didCallOutToDelegate;
- (void)didProcessContext:(id)context;
- (void)finishWithError:(id)error;
- (void)finishWithError:(id)error afterDelegateCallout:(id)callout;
- (void)handleTopLevelErrorStatus:(id)status;
- (void)loadRequest:(id)request;
- (void)performTask;
- (void)reportStatusWithError:(id)error;
- (void)reset;
- (void)setTaskManager:(id)manager;
- (void)setTimeoutEnforcer:(id)enforcer;
- (void)startModal;
- (void)taskManagerDidFailToUpdatePolicyKey;
- (void)taskManagerDidFindEASVersion;
- (void)taskManagerDidUpdatePolicyKey;
- (void)tearDownResources;
- (void)tearDownResourcesAndCancelTask;
- (void)tearDownResourcesButLeaveSessionAlone;
- (void)willCallOutToDelegate;
@end

@implementation ASTask

- (ASTask)init
{
  v14.receiver = self;
  v14.super_class = ASTask;
  v2 = [(ASTask *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    _EASTaskLogPublic(v4, v5, v6, 6, v2, @"Task of class %@ initing", v7, v8, v4);

    *(v2 + 4) = 0;
    v9 = *(v2 + 2);
    *(v2 + 2) = 0;

    *(v2 + 27) = atomic_fetch_add_explicit(init_taskID, 1u, memory_order_relaxed) + 1;
    *(v2 + 31) = 0;
    v10 = *(v2 + 16);
    *(v2 + 16) = 0;

    v11 = *(v2 + 17);
    *(v2 + 17) = 0;

    v12 = *(v2 + 18);
    *(v2 + 18) = 0;

    v2[168] = 1;
    *(v2 + 43) = 0;
    *(v2 + 105) = 0;
    *(v2 + 21) = 0;
  }

  return v2;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (NSString)description
{
  v3 = DALoggingwithCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v30.receiver = self;
    v30.super_class = ASTask;
    v6 = [(ASTask *)&v30 description];
    v7 = [(NSURLRequest *)self->_request description];
    da_urlForLogging = [(NSURLSession *)self->_session description];
    v9 = [(NSHTTPURLResponse *)self->_response description];
    v10 = v9;
    v11 = "";
    if (self->_didSendRequest)
    {
      v12 = "[RequestSent]";
    }

    else
    {
      v12 = "";
    }

    if (self->_didReceiveResponse)
    {
      v13 = "[ReceivedResponse]";
    }

    else
    {
      v13 = "";
    }

    if (self->_didReceiveData)
    {
      v14 = "[ReceivedData]";
    }

    else
    {
      v14 = "";
    }

    v15 = "[FinishedLoading]";
    if (!self->_didFinishLoading)
    {
      v15 = "";
    }

    if (self->_didFailWithError)
    {
      v16 = "[FailedWithError]";
    }

    else
    {
      v16 = "";
    }

    if (self->_didCancel)
    {
      v17 = "[Cancelled]";
    }

    else
    {
      v17 = "";
    }

    if (self->_didReset)
    {
      v11 = "[Reset]";
    }

    [v5 stringWithFormat:@"%@: request: %@, session: %@, response: %@ (%s%s%s%s%s%s%s)", v6, v7, da_urlForLogging, v9, v12, v13, v14, v15, v16, v17, v11];
  }

  else
  {
    v29.receiver = self;
    v29.super_class = ASTask;
    v6 = [(ASTask *)&v29 description];
    v7 = [(NSURLRequest *)self->_request URL];
    da_urlForLogging = [v7 da_urlForLogging];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSHTTPURLResponse statusCode](self->_response, "statusCode")}];
    v10 = v18;
    v19 = "";
    if (self->_didSendRequest)
    {
      v20 = "[RequestSent]";
    }

    else
    {
      v20 = "";
    }

    if (self->_didReceiveResponse)
    {
      v21 = "[ReceivedResponse]";
    }

    else
    {
      v21 = "";
    }

    if (self->_didReceiveData)
    {
      v22 = "[ReceivedData]";
    }

    else
    {
      v22 = "";
    }

    v23 = "[FinishedLoading]";
    if (!self->_didFinishLoading)
    {
      v23 = "";
    }

    if (self->_didFailWithError)
    {
      v24 = "[FailedWithError]";
    }

    else
    {
      v24 = "";
    }

    if (self->_didCancel)
    {
      v25 = "[Cancelled]";
    }

    else
    {
      v25 = "";
    }

    if (self->_didReset)
    {
      v19 = "[Reset]";
    }

    [v5 stringWithFormat:@"%@: request: %@, response status: %@ (%s%s%s%s%s%s%s)", v6, da_urlForLogging, v18, v20, v21, v22, v23, v24, v25, v19, v28];
  }
  v26 = ;

  return v26;
}

- (id)responseContentType
{
  allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];
  v3 = [allHeaderFields objectForKeyedSubscript:@"Content-Type"];

  return v3;
}

- (double)timeoutInterval
{
  v2 = *&_unitTestSettableTaskTimeout;
  v4 = 0;
  [MEMORY[0x277D03910] defaultEASTaskTimeoutOutWasFound:&v4];
  if (!v4)
  {
    return v2;
  }

  return result;
}

- (id)_url
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  protocol = [WeakRetained protocol];

  v5 = [protocol requestURLStringWithTask:self];

  return v5;
}

- (id)_easVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  easProtocolVersion = [WeakRetained easProtocolVersion];

  return easProtocolVersion;
}

- (id)_policyKey
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  policyKey = [WeakRetained policyKey];

  return policyKey;
}

- (BOOL)_isWBXML
{
  contentType = [(ASTask *)self contentType];
  v3 = [contentType isEqualToString:@"application/vnd.ms-sync.wbxml"];

  return v3;
}

- (id)command
{
  commandCode = [(ASTask *)self commandCode];

  return ASCommandStringForCode(commandCode);
}

- (int)commandCode
{
  Name = sel_getName(a2);
  _EASTaskLogPublic(Name, v4, v5, 3, self, @"%s to be implemented by subclass", v6, v7, Name);
  return -1;
}

- (id)requestBody
{
  Name = sel_getName(a2);
  _EASTaskLogPublic(Name, v4, v5, 3, self, @"%s to be implemented by subclass", v6, v7, Name);
  return 0;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASTask.m" lineNumber:270 description:{@"%s to be implemented by subclass, self is %@", sel_getName(a2), self}];

  return 0;
}

- (BOOL)checkForErrorInContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    v28 = 0;
    v27 = 0;
    if ([(ASTask *)self getTopLevelToken:&v28 + 1 outStatusCodePage:&v28 outStatusToken:&v27])
    {
      if (!self->_haveSwitchedCodePage)
      {
        if (![contextCopy hasNumberOfTokensRemaining:2])
        {
          goto LABEL_19;
        }

        if ([contextCopy currentByte])
        {
          currentlyParsingItem3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to code page 0x%x", v28];
          foundStatus = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASTask.m", 278, objc_msgSend(contextCopy, "curOffset")];
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v15, v16))
          {
            curOffset = [contextCopy curOffset];
            *buf = 134217984;
            v30 = curOffset;
            _os_log_impl(&dword_24A0AC000, v15, v16, "Failure at index %lld:", buf, 0xCu);
          }

          v18 = DALoggingwithCategory();
          if (!os_log_type_enabled(v18, v16))
          {
            goto LABEL_31;
          }

          *buf = 138412290;
          v30 = currentlyParsingItem3;
          goto LABEL_30;
        }

        [contextCopy advanceOffsetByAmount:1];
        v21 = v28;
        if (v21 != [contextCopy currentByte])
        {
          currentlyParsingItem3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to code page 0x%x", v28];
          foundStatus = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASTask.m", 278, objc_msgSend(contextCopy, "curOffset")];
          v24 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v24, v16))
          {
            curOffset2 = [contextCopy curOffset];
            *buf = 134217984;
            v30 = curOffset2;
            _os_log_impl(&dword_24A0AC000, v24, v16, "Failure at index %lld:", buf, 0xCu);
          }

          v18 = DALoggingwithCategory();
          if (!os_log_type_enabled(v18, v16))
          {
            goto LABEL_31;
          }

          *buf = 138412290;
          v30 = currentlyParsingItem3;
          goto LABEL_30;
        }

        [contextCopy advanceOffsetByAmount:1];
        [contextCopy setCodePage:v28];
        self->_haveSwitchedCodePage = 1;
      }

      if (self->_haveParsedCommand)
      {
LABEL_5:
        v6 = [ASTopLevelErrorChecker alloc];
        v7 = [(ASTopLevelErrorChecker *)v6 initWithCodePage:v28 statusToken:v27];
        [(ASTask *)self setCurrentlyParsingItem:v7];

        goto LABEL_6;
      }

      if (![contextCopy hasNumberOfTokensRemaining:1])
      {
        goto LABEL_19;
      }

      currentByte = [contextCopy currentByte];
      if ((currentByte & 0x3F) == HIBYTE(v28))
      {
        self->_haveParsedCommand = 1;
        goto LABEL_5;
      }

      currentlyParsingItem3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected top level token 0x%x", HIBYTE(v28)];
      foundStatus = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASTask.m", 279, objc_msgSend(contextCopy, "curOffset")];
      v22 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v16))
      {
        curOffset3 = [contextCopy curOffset];
        *buf = 134217984;
        v30 = curOffset3;
        _os_log_impl(&dword_24A0AC000, v22, v16, "Failure at index %lld:", buf, 0xCu);
      }

      v18 = DALoggingwithCategory();
      if (!os_log_type_enabled(v18, v16))
      {
LABEL_31:

        [contextCopy setParseErrorReason:foundStatus];
        goto LABEL_32;
      }

      *buf = 138412290;
      v30 = currentlyParsingItem3;
LABEL_30:
      _os_log_impl(&dword_24A0AC000, v18, v16, "failure reason was %@", buf, 0xCu);
      goto LABEL_31;
    }
  }

LABEL_6:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->_currentlyParsingItem;
  if (currentlyParsingItem)
  {
    parsingState = [(ASItem *)currentlyParsingItem parsingState];
    if (parsingState >= 2)
    {
      if (parsingState - 3 < 2)
      {
LABEL_33:
        [(ASTask *)self setCurrentlyParsingItem:0];
        v20 = 1;
        goto LABEL_34;
      }

      currentlyParsingItem3 = [(ASTask *)self currentlyParsingItem];
      foundStatus = [currentlyParsingItem3 foundStatus];
      [(ASTask *)self handleTopLevelErrorStatus:foundStatus];
LABEL_32:

      goto LABEL_33;
    }
  }

LABEL_19:
  v20 = 0;
LABEL_34:

  return v20;
}

- (int64_t)taskStatusForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
LABEL_5:
    code2 = 2;
    goto LABEL_25;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277D038E0]];

  if (!v6)
  {
    domain2 = [v4 domain];
    v9 = [domain2 isEqualToString:@"ASHTTPConnectionErrorDomain"];

    if (v9)
    {
      code = [v4 code];
      switch(code)
      {
        case 401:
          code2 = 79;
          goto LABEL_25;
        case 500:
LABEL_16:
          code2 = 5;
          goto LABEL_25;
        case 507:
LABEL_10:
          code2 = 33;
          goto LABEL_25;
      }
    }

    else
    {
      domain3 = [v4 domain];
      v12 = [domain3 isEqualToString:*MEMORY[0x277D03700]];

      if (v12)
      {
        if ([v4 code] == 102)
        {
          code2 = 79;
        }

        else
        {
          code2 = 0;
        }

        goto LABEL_25;
      }
    }

LABEL_15:
    code2 = 0;
    goto LABEL_25;
  }

  code2 = 9;
  switch([v4 code])
  {
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 116:
    case 117:
    case 119:
    case 137:
    case 138:
    case 146:
    case 147:
    case 164:
    case 165:
    case 166:
    case 167:
      break;
    case 110:
    case 120:
    case 121:
    case 122:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 149:
    case 154:
    case 155:
    case 162:
    case 163:
      goto LABEL_16;
    case 111:
      code2 = 80;
      break;
    case 112:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 139:
    case 140:
    case 141:
    case 145:
      code2 = 6;
      break;
    case 113:
    case 115:
      goto LABEL_10;
    case 114:
    case 148:
      goto LABEL_15;
    case 118:
    case 173:
      goto LABEL_5;
    case 142:
    case 143:
    case 144:
      code2 = 10;
      break;
    case 150:
    case 152:
    case 153:
      code2 = 12;
      break;
    case 151:
      code2 = 53;
      break;
    case 156:
      code2 = 16;
      break;
    case 160:
    case 161:
      code2 = 56;
      break;
    default:
      code2 = [v4 code];
      break;
  }

LABEL_25:

  return code2;
}

- (void)didProcessContext:(id)context
{
  v17[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  parseErrorReason = [contextCopy parseErrorReason];

  if (parseErrorReason)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D038E0];
    v16 = @"DAWBXMLParseErrorReason";
    parseErrorReason2 = [contextCopy parseErrorReason];
    v17[0] = parseErrorReason2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    parseErrorReason = [v6 errorWithDomain:v7 code:1 userInfo:v9];
  }

  v10 = objc_opt_class();
  v15 = NSStringFromClass(v10);
  _EASTaskLogPublic(v15, v11, v12, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v13, v14, 0);

  [(ASTask *)self finishWithError:parseErrorReason];
}

- (void)_timeoutEnforcerFired:(id)fired
{
  if (self->_timeoutEnforcer == fired)
  {
    _EASTaskLogPublic(self, a2, fired, 6, self, @"Timeout Enforcer enforcing your timeout %@", v3, v4, self);
    [(ASTask *)self tearDownResourcesAndCancelTask];
    session = self->_session;
    dataTask = self->_dataTask;
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1001 userInfo:0];
    [(ASTask *)self URLSession:session task:dataTask didCompleteWithError:v8];

    self->_finishedByTimeoutEnforcer = 1;
  }
}

- (void)_assignConnectionProperties:(id)properties toSessionConfiguration:(id)configuration
{
  v28 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  configurationCopy = configuration;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [propertiesCopy allKeys];
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = *MEMORY[0x277CBADA0];
    v21 = *MEMORY[0x277CBAE78];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [propertiesCopy objectForKeyedSubscript:v13];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(ASTask *)self _assignConnectionProperties:v14 toSessionConfiguration:configurationCopy];
          goto LABEL_14;
        }

        if ([v13 isEqualToString:v11])
        {
          v15 = [propertiesCopy objectForKeyedSubscript:v13];
          [configurationCopy set_sourceApplicationSecondaryIdentifier:v15];
LABEL_12:

          goto LABEL_14;
        }

        v16 = [v13 isEqualToString:v21];
        if (v16)
        {
          v15 = [propertiesCopy objectForKeyedSubscript:v13];
          [configurationCopy set_sourceApplicationBundleIdentifier:v15];
          goto LABEL_12;
        }

        _EASTaskLogPublic(v16, v17, v18, 6, self, @"Connection property: %@ is not set", v19, v20, v13);
LABEL_14:
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }
}

- (void)loadRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  _EASTaskLogPublic(v6, v7, v8, 7, self, @"NSURLSession Convert: loadRequest for %@ %p", v9, v10, v6);

  [(ASTask *)self tearDownResourcesButLeaveSessionAlone];
  if (!requestCopy)
  {
    [ASTask loadRequest:];
  }

  if (self->_response)
  {
    [ASTask loadRequest:];
  }

  if (self->_timeoutEnforcer)
  {
    [ASTask loadRequest:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  account = [WeakRetained account];
  copyStorageSession = [account copyStorageSession];

  if (copyStorageSession)
  {
    v14 = [requestCopy DARequestByApplyingStorageSession:copyStorageSession];

    CFRelease(copyStorageSession);
    requestCopy = v14;
  }

  v15 = [requestCopy mutableCopy];
  [v15 _setNonAppInitiated:1];
  objc_storeStrong(&self->_request, v15);
  v16 = objc_opt_new();
  parseContext = self->_parseContext;
  self->_parseContext = v16;

  [(ASParseContext *)self->_parseContext setMoreDataExpected:1];
  [(ASParseContext *)self->_parseContext setKeepPreviousData:1];
  if (getDALogLevel() >= 6 && [(ASTask *)self shouldLogIncomingData])
  {
    [(ASParseContext *)self->_parseContext setShouldLog:1];
  }

  *&self->_haveSwitchedCodePage = 0;
  *&self->_haveCheckedForTopLevelError = 0;
  v18 = [(NSURLRequest *)self->_request URL];
  absoluteString = [v18 absoluteString];
  v20 = [absoluteString length];

  hTTPBody = [(NSURLRequest *)self->_request HTTPBody];
  v22 = [hTTPBody length] + v20;

  _EASTaskLogPublic(v23, v24, v25, 6, self, @"Size of outgoing, unencrypted request: %ld", v26, v27, v22);
  -[ASTask setIsLoadedOnMainThread:](self, "setIsLoadedOnMainThread:", [MEMORY[0x277CCACC8] isMainThread]);
  if (![(ASTask *)self isLoadedOnMainThread])
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    [(ASTask *)self setThread:currentThread];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if ([bundleIdentifier isEqualToString:@"com.apple.accountsd"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_21:

        goto LABEL_22;
      }

      v31 = DALoggingwithCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [ASTask loadRequest:?];
      }
    }

    else
    {
      if ([bundleIdentifier isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.email.maild") & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.managedconfiguration.profiled"))
      {
        goto LABEL_21;
      }

      v31 = DALoggingwithCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [ASTask loadRequest:bundleIdentifier];
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  session = self->_session;
  if (!session)
  {
    v33 = objc_opt_new();
    v34 = objc_loadWeakRetained(&self->_taskManager);
    account2 = [v34 account];
    customConnectionProperties = [account2 customConnectionProperties];
    v37 = [v33 DAMergeOverrideDictionary:customConnectionProperties];

    defaultSessionConfiguration = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
    [(ASTask *)self _assignConnectionProperties:v37 toSessionConfiguration:defaultSessionConfiguration];
    [defaultSessionConfiguration set_customReadBufferTimeout:0.100000001];
    onBehalfOfBundleIdentifier = [(ASTask *)self onBehalfOfBundleIdentifier];

    if (onBehalfOfBundleIdentifier)
    {
      onBehalfOfBundleIdentifier2 = [(ASTask *)self onBehalfOfBundleIdentifier];
      [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:onBehalfOfBundleIdentifier2];
    }

    [(ASTask *)self timeoutInterval];
    [defaultSessionConfiguration setTimeoutIntervalForRequest:?];
    [defaultSessionConfiguration setURLCache:0];
    interfaceBinding = [(ASTask *)self interfaceBinding];
    _socketStreamProperties = [defaultSessionConfiguration _socketStreamProperties];
    v43 = _socketStreamProperties;
    if (_socketStreamProperties)
    {
      v44 = [_socketStreamProperties mutableCopy];
    }

    else
    {
      v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    }

    v45 = v44;
    [v44 setObject:&unk_285D57F90 forKey:*MEMORY[0x277CBAF00]];
    if (interfaceBinding == 1)
    {
      [v45 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBAE50]];
    }

    [defaultSessionConfiguration set_socketStreamProperties:v45];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v46 = 0;
    }

    else
    {
      taskManager = [(ASTask *)self taskManager];
      account3 = [taskManager account];
      wasUserInitiated = [account3 wasUserInitiated];

      v46 = wasUserInitiated ^ 1u;
    }

    [defaultSessionConfiguration setDiscretionary:v46];
    isDiscretionary = [defaultSessionConfiguration isDiscretionary];
    v52 = @"NO";
    if (isDiscretionary)
    {
      v52 = @"YES";
    }

    _EASTaskLogPublic(isDiscretionary, v48, v49, 7, self, @"Low Data Mode: discretionary flag is set to %@ for session %p ASTask %p", v50, v51, v52);
    v53 = [MEMORY[0x277CBABB8] sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:0];
    v54 = self->_session;
    self->_session = v53;

    v55 = self->_session;
    v56 = objc_opt_class();
    v86 = NSStringFromClass(v56);
    _EASTaskLogPublic(v86, v57, v58, 7, self, @"NSURLSession Convert: create session %p for %@ %p", v59, v60, v55);

    session = self->_session;
  }

  v61 = [(NSURLSession *)session dataTaskWithRequest:self->_request];
  dataTask = self->_dataTask;
  self->_dataTask = v61;

  v63 = self->_dataTask;
  v64 = objc_opt_class();
  v87 = NSStringFromClass(v64);
  _EASTaskLogPublic(v87, v65, v66, 7, self, @"NSURLSession Convert: create data task %p for %@ %p", v67, v68, v63);

  date = [MEMORY[0x277CBEAA8] date];
  dateConnectionWentOut = self->_dateConnectionWentOut;
  self->_dateConnectionWentOut = date;

  [(NSURLSessionDataTask *)self->_dataTask resume];
  if (!self->_session || !self->_dataTask)
  {
    v71 = [(NSURLRequest *)self->_request URL];
    da_urlForLogging = [v71 da_urlForLogging];
    _EASTaskLogPublic(da_urlForLogging, v73, v74, 3, self, @"Error creating connection with request %@: URL %@", v75, v76, self);

    v77 = objc_opt_class();
    v88 = NSStringFromClass(v77);
    _EASTaskLogPublic(v88, v78, v79, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v80, v81, 0);

    v82 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1 userInfo:0];
    [(ASTask *)self finishWithError:v82];
  }
}

- (void)_tearDownResourcesHelper
{
  parseContext = self->_parseContext;
  if (parseContext)
  {
    [(ASParseContext *)parseContext invalidateBuffers];
    [(ASParseContext *)self->_parseContext flushLogs];
  }

  dataTask = self->_dataTask;
  if (dataTask)
  {
    self->_dataTask = 0;
  }

  response = self->_response;
  if (response)
  {
    self->_response = 0;
  }

  request = self->_request;
  if (request)
  {
    self->_request = 0;
  }

  [(ASTask *)self setTimeoutEnforcer:0];
}

- (void)tearDownResources
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  session = obj->_session;
  if (session)
  {
    obj->_didCancel = 1;
    v4 = objc_opt_class();
    v10 = NSStringFromClass(v4);
    _EASTaskLogPublic(v10, v5, v6, 7, obj, @"NSURLSession Convert: finishTasksAndInvalidate session %p for %@ %p", v7, v8, session);

    [(NSURLSession *)obj->_session finishTasksAndInvalidate];
    v9 = obj->_session;
    obj->_session = 0;

    v2 = obj;
  }

  [(ASTask *)v2 _tearDownResourcesHelper];
  objc_sync_exit(obj);
}

- (void)tearDownResourcesButLeaveSessionAlone
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  session = obj->_session;
  if (session)
  {
    v4 = objc_opt_class();
    v9 = NSStringFromClass(v4);
    _EASTaskLogPublic(v9, v5, v6, 7, obj, @"NSURLSession Convert: leaving current session %p alone for %@ %p", v7, v8, session);

    v2 = obj;
  }

  [(ASTask *)v2 _tearDownResourcesHelper];
  objc_sync_exit(obj);
}

- (void)tearDownResourcesAndCancelTask
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  session = obj->_session;
  if (session)
  {
    obj->_didCancel = 1;
    v4 = objc_opt_class();
    v10 = NSStringFromClass(v4);
    _EASTaskLogPublic(v10, v5, v6, 7, obj, @"NSURLSession Convert: invalidateAndCancel session %p for %@ %p", v7, v8, session);

    [(NSURLSession *)obj->_session invalidateAndCancel];
    v9 = obj->_session;
    obj->_session = 0;

    v2 = obj;
  }

  [(ASTask *)v2 _tearDownResourcesHelper];
  objc_sync_exit(obj);
}

- (void)_failImmediately
{
  _EASTaskLogPublic(self, a2, v2, 3, self, @"Account says we should fail now, finishing with error", v3, v4, v12);
  v6 = objc_alloc(MEMORY[0x277CCA9B8]);
  v14 = [v6 initWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
  v7 = objc_opt_class();
  v13 = NSStringFromClass(v7);
  _EASTaskLogPublic(v14, v8, v9, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v10, v11, v14);

  [(ASTask *)self finishWithError:v14];
}

- (void)performTask
{
  requiresEASVersionUpdate = [(ASTask *)self requiresEASVersionUpdate];
  if ((requiresEASVersionUpdate & 1) != 0 || -[ASTask requiresEASVersionInformaton](self, "requiresEASVersionInformaton") && (WeakRetained = objc_loadWeakRetained(&self->_taskManager), [WeakRetained protocol], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "protocolVersion"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"Unknown"), v10, v9, WeakRetained, v11))
  {
    _EASTaskLogPublic(requiresEASVersionUpdate, v4, v5, 6, self, @"Task %@ requesting modal to refresh version information", v6, v7, self);

    [(ASTask *)self _pushModalForReason:0];
  }

  else
  {

    [(ASTask *)self _continuePerformTask];
  }
}

- (void)_pushModalForReason:(int)reason
{
  modalPushCount = self->_modalPushCount;
  self->_modalReason = reason;
  self->_modalPushCount = modalPushCount + 1;
  if (modalPushCount)
  {

    [(ASTask *)self startModal];
  }

  else
  {
    taskManager = [(ASTask *)self taskManager];
    [taskManager taskRequestModal:self];
  }
}

- (void)_popModal
{
  v3 = self->_modalPushCount - 1;
  self->_modalPushCount = v3;
  if (!v3)
  {
    taskManager = [(ASTask *)self taskManager];
    [taskManager taskEndModal:self];
  }
}

- (void)startModal
{
  modalReason = self->_modalReason;
  if (modalReason == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_taskManager);
    account = [WeakRetained account];
    shouldFailAllTasks = [account shouldFailAllTasks];

    if ((shouldFailAllTasks & 1) != 0 || (lastKnownPassword = self->_lastKnownPassword) != 0 && (v19 = objc_loadWeakRetained(&self->_taskManager), [v19 password], v20 = objc_claimAutoreleasedReturnValue(), v21 = -[NSString isEqualToString:](lastKnownPassword, "isEqualToString:", v20), v20, v19, !v21))
    {
      [(ASTask *)self _popModal];
      v22 = runLoopModesToPerformDelayedSelectorsIn();
      [(ASTask *)self performSelector:sel_performTask withObject:0 afterDelay:v22 inModes:0.0];
      goto LABEL_19;
    }

    [(ASTask *)self _handleBadPasswordResponse];
  }

  else if (modalReason == 1)
  {
    v11 = objc_loadWeakRetained(&self->_taskManager);
    policyKey = [v11 policyKey];
    v13 = [policyKey isEqualToString:self->_lastKnownPolicyKey];

    lastKnownPolicyKey = self->_lastKnownPolicyKey;
    self->_lastKnownPolicyKey = 0;

    if (v13)
    {
      v22 = objc_loadWeakRetained(&self->_taskManager);
      [v22 updatePolicyKeyWithDelegateTask:self];
      goto LABEL_19;
    }

    [(ASTask *)self taskManagerDidUpdatePolicyKey];
  }

  else if (modalReason)
  {

    _EASTaskLogPublic(self, a2, v2, 3, self, @"Out of bounds modal reason", v3, v4, v24);
  }

  else
  {
    if (-[ASTask requiresEASVersionUpdate](self, "requiresEASVersionUpdate") || (v7 = objc_loadWeakRetained(&self->_taskManager), [v7 protocol], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "protocolVersion"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"Unknown"), v9, v8, v7, v10))
    {
      v22 = objc_loadWeakRetained(&self->_taskManager);
      [v22 requestEASVersionWithDelegateTask:self];
LABEL_19:

      return;
    }

    [(ASTask *)self taskManagerDidFindEASVersion];
  }
}

- (void)taskManagerDidFindEASVersion
{
  [(ASTask *)self _popModal];
  if ([(ASTask *)self askedToCancelWhileModal])
  {
    v3 = *MEMORY[0x277D038E0];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    v5 = objc_opt_class();
    v10 = NSStringFromClass(v5);
    _EASTaskLogPublic(v10, v6, v7, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v8, v9, v4);

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v3 code:-1 userInfo:0];
    [(ASTask *)self finishWithError:v11];
  }

  else
  {

    [(ASTask *)self _continuePerformTask];
  }
}

- (void)taskManagerDidUpdatePolicyKey
{
  [(ASTask *)self _popModal];
  if ([(ASTask *)self askedToCancelWhileModal])
  {
    v3 = *MEMORY[0x277D038E0];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    v5 = objc_opt_class();
    v10 = NSStringFromClass(v5);
    _EASTaskLogPublic(v10, v6, v7, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v8, v9, v4);

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v3 code:-1 userInfo:0];
    [(ASTask *)self finishWithError:v11];
  }

  else
  {

    [(ASTask *)self performTask];
  }
}

- (void)taskManagerDidFailToUpdatePolicyKey
{
  [(ASTask *)self _popModal];
  taskManager = [(ASTask *)self taskManager];
  [taskManager cancelAllTasks];
}

- (void)_addAuthToRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy URL];
  scheme = [v4 scheme];
  v6 = [scheme isEqualToString:@"https"];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_taskManager);
    oAuth2Token = [WeakRetained OAuth2Token];

    if (oAuth2Token)
    {
      _EASTaskLogPublic(v9, v10, v11, 6, self, @"Using OAuth Token for Request", v12, v13, v30);
      _EASTaskLogPublic(v14, v15, v16, 6, self, @"Setting Auth Header Header to Bearer: %@", v17, v18, @"Valid-Data");
      user = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", oAuth2Token];
      [requestCopy setValue:user forHTTPHeaderField:@"Authorization"];
    }

    else
    {
      _EASTaskLogPublic(v9, v10, v11, 6, self, @"Using Basic Auth", v12, v13, v30);
      v20 = objc_loadWeakRetained(&self->_taskManager);
      user = [v20 user];

      v21 = objc_loadWeakRetained(&self->_taskManager);
      password = [v21 password];

      if (user && password)
      {
        v28 = Base64EncodedAuth(user, password);
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v28];
        [requestCopy setValue:v29 forHTTPHeaderField:@"Authorization"];
      }

      else
      {
        _EASTaskLogPublic(v23, v24, v25, 6, self, @"Either No Username or Password. Not applying AuthHeader", v26, v27, v31);
      }
    }
  }
}

- (void)_setHTTPParametersOnRequest:(id)request outBodyStream:(id *)stream outBodyData:(id *)data
{
  requestCopy = request;
  v9 = [(ASTask *)self _HTTPMethodForRequest:requestCopy];
  if (![v9 isEqualToString:@"POST"])
  {
    v10 = 0;
    requestBody = 0;
    goto LABEL_9;
  }

  v17 = 0;
  v10 = [(ASTask *)self requestBodyStreamOutKnownSize:&v17];
  if (v10)
  {
    [requestCopy setHTTPBodyStream:v10];
    if (v17)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v17];
      [requestCopy setValue:v11 forHTTPHeaderField:@"Content-Length"];

      [(ASTask *)self setSentBytesCount:v17];
    }

    requestBody = 0;
  }

  else
  {
    requestBody = [(ASTask *)self requestBody];
    [requestCopy setHTTPBody:requestBody];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(requestBody, "length")];
    [requestCopy setValue:v13 forHTTPHeaderField:@"Content-Length"];

    if (!requestBody)
    {
      goto LABEL_9;
    }
  }

  contentType = [(ASTask *)self contentType];
  [requestCopy setValue:contentType forHTTPHeaderField:@"Content-Type"];

LABEL_9:
  if (stream)
  {
    v15 = v10;
    *stream = v10;
  }

  if (data)
  {
    v16 = requestBody;
    *data = requestBody;
  }
}

- (void)_continuePerformTask
{
  v95 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (!selfCopy->_finished)
  {
    _url = [(ASTask *)selfCopy _url];
    v8 = MEMORY[0x277CBEBC0];
    _url2 = [(ASTask *)selfCopy _url];
    v10 = [v8 URLWithString:_url2];
    da_urlForLogging = [v10 da_urlForLogging];
    _EASTaskLogPublic(da_urlForLogging, v12, v13, 6, selfCopy, @"Task URL: %@", v14, v15, da_urlForLogging);

    WeakRetained = objc_loadWeakRetained(&selfCopy->_taskManager);
    account = [WeakRetained account];
    LODWORD(da_urlForLogging) = [account shouldFailAllTasks];

    if (da_urlForLogging)
    {
      [(ASTask *)selfCopy _failImmediately];
LABEL_38:

      goto LABEL_39;
    }

    v80 = [MEMORY[0x277CBEBC0] URLWithString:_url];
    timeoutInterval = [(ASTask *)selfCopy timeoutInterval];
    _EASTaskLogPublic(timeoutInterval, v18, v19, 6, selfCopy, @"Using timeout of %lf", v20, v21, v22);
    v23 = objc_alloc(MEMORY[0x277CBAB50]);
    [(ASTask *)selfCopy timeoutInterval];
    v24 = [v23 initWithURL:v80 cachePolicy:0 timeoutInterval:?];
    _isWBXML = [(ASTask *)selfCopy _isWBXML];
    v26 = objc_loadWeakRetained(&selfCopy->_taskManager);
    account2 = [v26 account];
    if (objc_opt_respondsToSelector())
    {
      v28 = objc_loadWeakRetained(&selfCopy->_taskManager);
      account3 = [v28 account];
      shouldUseOpportunisticSockets = [account3 shouldUseOpportunisticSockets];

      if (shouldUseOpportunisticSockets)
      {
        v31 = [v24 setNetworkServiceType:5];
        _EASTaskLogPublic(v31, v32, v33, 6, selfCopy, @"Task is using opportunistic sockets", v34, v35, v77);
      }
    }

    else
    {
    }

    v92 = 0;
    v93 = 0;
    [(ASTask *)selfCopy _setHTTPParametersOnRequest:v24 outBodyStream:&v93 outBodyData:&v92];
    v79 = v93;
    v86 = v92;
    v36 = [(ASTask *)selfCopy _HTTPMethodForRequest:v24];
    [v24 setHTTPMethod:v36];

    _policyKey = [(ASTask *)selfCopy _policyKey];
    _easVersion = [(ASTask *)selfCopy _easVersion];
    v37 = objc_loadWeakRetained(&selfCopy->_taskManager);
    protocol = [v37 protocol];

    if (_easVersion && -[ASTask requiresEASVersionInformaton](selfCopy, "requiresEASVersionInformaton") && [protocol headerNeedsProtocolVersion])
    {
      [v24 setValue:_easVersion forHTTPHeaderField:@"MS-ASProtocolVersion"];
    }

    if ([protocol headerNeedsUserAgent])
    {
      v38 = objc_loadWeakRetained(&selfCopy->_taskManager);
      userAgent = [v38 userAgent];
      [v24 setValue:userAgent forHTTPHeaderField:@"User-Agent"];
    }

    if (_policyKey && [protocol headerNeedsPolicyKey])
    {
      [v24 setValue:_policyKey forHTTPHeaderField:@"X-MS-PolicyKey"];
    }

    if (([MEMORY[0x277D03910] cookiesEnabled] & 1) == 0)
    {
      [v24 setHTTPShouldHandleCookies:0];
      [v24 setValue:@"True" forHTTPHeaderField:@"X-Apple-Bad-iPhone-No-Cookie"];
    }

    v40 = objc_loadWeakRetained(&selfCopy->_taskManager);
    identityPersist = [v40 identityPersist];

    if (identityPersist)
    {
      _EASTaskLogPublic(v41, v42, v43, 6, selfCopy, @"Found identity, attaching client certificate", v44, v45, v77);
      v46 = v86;
      v47 = _DASecCopyIdentityFromPersist();
      if (!v47)
      {
LABEL_27:
        if ([(ASTask *)selfCopy _shouldSendAuthForRequest:v24])
        {
          [(ASTask *)selfCopy _addAuthToRequest:v24];
        }

        allHTTPHeaderFields = [v24 allHTTPHeaderFields];
        v55 = DAShouldLogPassword();
        if (v55)
        {
          v60 = allHTTPHeaderFields;
        }

        else
        {
          v61 = [allHTTPHeaderFields objectForKeyedSubscript:@"Authorization"];
          v62 = v61 == 0;

          if (v62)
          {
            v60 = allHTTPHeaderFields;
          }

          else
          {
            v60 = [allHTTPHeaderFields mutableCopy];
            [v60 setObject:@"<Redacted>" forKeyedSubscript:@"Authorization"];
          }

          v46 = v86;
        }

        _EASTaskLogPublic(v55, v56, v57, 6, selfCopy, @"headers: %@", v58, v59, v60);
        if (v79)
        {
          _EASTaskLogPublic(v63, v64, v65, 6, selfCopy, @"Outgoing request body: streamed", v66, v67, v78);
        }

        else if (_isWBXML)
        {
          if (shouldDALogAtLevel())
          {
            -[ASTask setSentBytesCount:](selfCopy, "setSentBytesCount:", [v46 length]);
            allHTTPHeaderFields2 = [v24 allHTTPHeaderFields];
            [allHTTPHeaderFields2 allKeys];
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v69 = v89 = 0u;
            v70 = [v69 countByEnumeratingWithState:&v88 objects:v94 count:16];
            if (v70)
            {
              v71 = *v89;
              do
              {
                for (i = 0; i != v70; ++i)
                {
                  if (*v89 != v71)
                  {
                    objc_enumerationMutation(v69);
                  }

                  v73 = *(*(&v88 + 1) + 8 * i);
                  -[ASTask setSentBytesCount:](selfCopy, "setSentBytesCount:", [v73 length] + -[ASTask sentBytesCount](selfCopy, "sentBytesCount") + 2);
                  v74 = [allHTTPHeaderFields2 objectForKeyedSubscript:v73];
                  -[ASTask setSentBytesCount:](selfCopy, "setSentBytesCount:", [v74 length] + -[ASTask sentBytesCount](selfCopy, "sentBytesCount") + 1);
                }

                v70 = [v69 countByEnumeratingWithState:&v88 objects:v94 count:16];
              }

              while (v70);
            }

            if (v86)
            {
              logWBXMLDataToExchangeTrafficLog(v86);
            }

            else
            {
              v76 = objc_opt_new();
              logWBXMLDataToExchangeTrafficLog(v76);
            }
          }
        }

        else
        {
          v75 = v46;
          if ([v86 bytes])
          {
            -[ASTask setSentBytesCount:](selfCopy, "setSentBytesCount:", [v86 length]);
            if (shouldDALogAtLevel())
            {
              logPlainTextDataToExchangeTrafficLog(v86);
            }
          }

          else if (shouldDALogAtLevel())
          {
            logEmptyRequestToExchangeTrafficLog();
          }
        }

        [(ASTask *)selfCopy loadRequest:v24];

        goto LABEL_38;
      }

      v52 = _DASecIdentityCopySSLClientAuthenticationChain();
      if (v52)
      {
        v53 = [(ASTask *)selfCopy _applyAuthenticationChain:v52 toRequest:v24];

        v24 = v53;
      }

      else
      {
        _EASTaskLogPublic(0, v48, v49, 3, selfCopy, @"No auth chain for sec identity %@", v50, v51, v47);
      }

      CFRelease(v47);
    }

    v46 = v86;
    goto LABEL_27;
  }

  _EASTaskLogPublic(v3, v4, v5, 6, selfCopy, @"Task was cancelled. Bailing out of _continuePerformTask", v6, v7, selfCopy);
LABEL_39:
  objc_sync_exit(selfCopy);
}

- (BOOL)attemptRetryWithStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  v11 = errorCopy;
  if (status != 80)
  {
    if (self->_retry && statusAndErrorIndicateWeShouldTryAgain(status, errorCopy))
    {
      domain = [v11 domain];
      code = [v11 code];
      _EASTaskLogPublic(code, v14, v15, 6, self, @"Task %@ retrying because it received error  Domain:%@ Code:%d", v16, v17, self);

      _EASTaskLogPublic(v18, v19, v20, 7, self, @"Task %@ retrying because it received error %@", v21, v22, self);
      self->_retry = 0;
      goto LABEL_7;
    }

LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  _EASTaskLogPublic(errorCopy, v7, v8, 6, self, @"Task %@ retrying because it received status 111 from server", v9, v10, self);
  serverRequestedRetryCount = self->_serverRequestedRetryCount;
  if (serverRequestedRetryCount > 4)
  {
    goto LABEL_8;
  }

  self->_serverRequestedRetryCount = serverRequestedRetryCount + 1;
LABEL_7:
  [(ASTask *)self tearDownResourcesButLeaveSessionAlone];
  v23 = runLoopModesToPerformDelayedSelectorsIn();
  [(ASTask *)self performSelector:sel_performTask withObject:0 afterDelay:v23 inModes:10.0];

  v24 = 1;
LABEL_9:

  return v24;
}

- (void)willCallOutToDelegate
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)didCallOutToDelegate
{
  _EASTaskLogPublic(self, a2, v2, 6, self, @"Task did call out to delegate", v3, v4, v6);

  [(ASTask *)self setStrongTaskManagerDuringDelegateCallout:0];
}

- (BOOL)isInCallOutToDelegate
{
  strongTaskManagerDuringDelegateCallout = [(ASTask *)self strongTaskManagerDuringDelegateCallout];
  v3 = strongTaskManagerDuringDelegateCallout != 0;

  return v3;
}

- (void)finishWithError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASTask.m" lineNumber:1011 description:{@"%s must be implemented by a subclass.  Implementation missing in %@", Name, objc_opt_class()}];
}

- (void)finishWithError:(id)error afterDelegateCallout:(id)callout
{
  errorCopy = error;
  calloutCopy = callout;
  [(ASTask *)self willCallOutToDelegate];
  if (calloutCopy)
  {
    calloutCopy[2](calloutCopy);
  }

  [(ASTask *)self tearDownResources];
  passwordNotificationError = self->_passwordNotificationError;
  self->_passwordNotificationError = 0;

  v13 = errorCopy;
  if (!errorCopy)
  {
    v16 = @"Task finished successfully";
    goto LABEL_8;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D038E0]])
  {
    code = [errorCopy code];

    if (code == -1)
    {
      v16 = @"Task successfully canceled";
LABEL_8:
      v17 = 6;
      goto LABEL_11;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  code2 = [errorCopy code];
  _EASTaskLogPublic(code2, v19, v20, 6, self, @"Task finishWithError Domain:%@ Code:%d", v21, v22, domain2);

  v13 = errorCopy;
  v40 = errorCopy;
  v16 = @"Task finishWithError %@";
  v17 = 7;
LABEL_11:
  _EASTaskLogPublic(v13, v9, v10, v17, self, v16, v11, v12, v40);
  if (!self->_finished)
  {
    if ([(ASTask *)self shouldReportTimeInNetwork]&& self->_dateConnectionWentOut)
    {
      WeakRetained = objc_loadWeakRetained(&self->_taskManager);
      account = [WeakRetained account];
      statusReport = [account statusReport];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:self->_dateConnectionWentOut];
      [statusReport noteTimeSpentInNetworking:?];

      dateConnectionWentOut = self->_dateConnectionWentOut;
      self->_dateConnectionWentOut = 0;
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_performTask object:0];
    if ([(ASTask *)self isLoadedOnMainThread])
    {
      isMainThread = [MEMORY[0x277CCACC8] isMainThread];
      if (isMainThread)
      {
LABEL_25:
        self->_finished = 1;
        [(ASTask *)self reportStatusWithError:errorCopy];
        goto LABEL_26;
      }

      v33 = @"Task was loaded on main thread. It should finish on main thread as well. Task %@";
    }

    else
    {
      thread = [(ASTask *)self thread];
      if (!thread)
      {
        goto LABEL_25;
      }

      v35 = thread;
      thread2 = [(ASTask *)self thread];
      currentThread = [MEMORY[0x277CCACC8] currentThread];

      if (thread2 == currentThread)
      {
        goto LABEL_25;
      }

      v33 = @"Task was loaded on a different thread from what it is finishing. Task %@";
    }

    _EASTaskLogPublic(isMainThread, v29, v30, 3, self, v33, v31, v32, self);
    goto LABEL_25;
  }

  if (!self->_askedToCancelWhileModal && !self->_finishedByTimeoutEnforcer)
  {
    [(ASTask *)&self->_askedToCancelWhileModal finishWithError:a2 afterDelegateCallout:self];
  }

LABEL_26:
  v38 = objc_loadWeakRetained(&self->_taskManager);
  if (v38)
  {
  }

  else if (!self->_isFakingIt)
  {
    [ASTask finishWithError:afterDelegateCallout:];
  }

  v39 = objc_loadWeakRetained(&self->_taskManager);
  [v39 taskDidFinish:self];

  [(ASTask *)self didCallOutToDelegate];
}

- (void)cancelTaskWithReason:(int)reason underlyingError:(id)error
{
  v4 = *&reason;
  v27[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v11 = errorCopy;
  if (self->_finished)
  {
    v12 = @"Task is already finished. Cancel task does nothing.";
LABEL_5:
    _EASTaskLogPublic(errorCopy, v7, v8, 6, self, v12, v9, v10, v25);
    goto LABEL_14;
  }

  errorCopy = [(ASTask *)self isInCallOutToDelegate];
  if (errorCopy)
  {
    v12 = @"Task is in callout to delegate. Cancel task does nothing.";
    goto LABEL_5;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(ASTask *)selfCopy isLoadedOnMainThread])
  {
    thread = [(ASTask *)selfCopy thread];

    if (!thread)
    {
      -[ASTask setIsLoadedOnMainThread:](selfCopy, "setIsLoadedOnMainThread:", [MEMORY[0x277CCACC8] isMainThread]);
      if (![(ASTask *)selfCopy isLoadedOnMainThread])
      {
        currentThread = [MEMORY[0x277CCACC8] currentThread];
        [(ASTask *)selfCopy setThread:currentThread];
      }
    }
  }

  objc_sync_exit(selfCopy);

  _EASTaskLogPublic(v16, v17, v18, 6, selfCopy, @"Task canceled due to reason %d", v19, v20, v4);
  if (v11)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTask taskStatusForError:](selfCopy, "taskStatusForError:", v11)}];
    v22 = *MEMORY[0x277D038E8];
    v26[0] = *MEMORY[0x277CCA7E8];
    v26[1] = v22;
    v27[0] = v11;
    v27[1] = v21;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:v23];
  [(ASTask *)selfCopy finishWithError:v24];

  [(NSURLSessionDataTask *)selfCopy->_dataTask cancel];
LABEL_14:
}

- (id)_applyAuthenticationChain:(id)chain toRequest:(id)request
{
  requestCopy = request;
  chainCopy = chain;
  _EASTaskLogPublic(chainCopy, v8, v9, 6, self, @"Applying authentication chain %@ to request %@", v10, v11, chainCopy);
  [requestCopy _CFURLRequest];

  MutableCopy = CFURLRequestCreateMutableCopy();
  v13 = *MEMORY[0x277CBAE98];
  SSLProperties = CFURLRequestGetSSLProperties();
  if (SSLProperties)
  {
    Mutable = CFDictionaryCreateMutableCopy(0, 0, SSLProperties);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v16 = Mutable;
  CFDictionarySetValue(Mutable, v13, chainCopy);

  CFURLRequestSetSSLProperties();
  CFRelease(v16);
  v17 = [objc_alloc(MEMORY[0x277CBAB50]) _initWithCFURLRequest:MutableCopy];
  if (([MEMORY[0x277D03910] cookiesEnabled] & 1) == 0)
  {
    [v17 setHTTPShouldHandleCookies:0];
  }

  CFRelease(MutableCopy);

  return v17;
}

- (void)_handleBadPasswordResponse
{
  v20 = *MEMORY[0x277D85DE8];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];

  persistentUUID = [account persistentUUID];
  mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  [mEMORY[0x277D037B0] dropPowerAssertionsForGroupIdentifier:persistentUUID];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__ASTask__handleBadPasswordResponse__block_invoke;
  v15[3] = &unk_278FC8280;
  v15[4] = self;
  v7 = MEMORY[0x24C2119B0](v15);
  taskManager2 = [(ASTask *)self taskManager];
  account2 = [taskManager2 account];
  isValidating = [account2 isValidating];

  if (isValidating)
  {
    [(ASTask *)self _handleCredentialRenewalResult:&unk_285D57FA8];
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v12))
    {
      wasUserInitiated = [account wasUserInitiated];
      v14 = @"NO";
      if (wasUserInitiated)
      {
        v14 = @"YES";
      }

      *buf = 138412546;
      v17 = account;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_24A0AC000, v11, v12, "ExchangeSync is renewing credentials for account %@ by forcing-prompt: %@", buf, 0x16u);
    }

    [account renewCredentialsWithHandler:v7];
  }
}

void __36__ASTask__handleBadPasswordResponse__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isLoadedOnMainThread])
  {
    v4 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ASTask__handleBadPasswordResponse__block_invoke_2;
    block[3] = &unk_278FC8258;
    block[4] = *(a1 + 32);
    block[5] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    v5 = *(a1 + 32);
    v7 = [v5 thread];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v5 performSelector:sel__handleCredentialRenewalResult_ onThread:v7 withObject:v6 waitUntilDone:0];
  }
}

void __36__ASTask__handleBadPasswordResponse__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v1 _handleCredentialRenewalResult:v2];
}

- (void)_handleCredentialRenewalResult:(id)result
{
  v44 = *MEMORY[0x277D85DE8];
  integerValue = [result integerValue];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];

  persistentUUID = [account persistentUUID];
  mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  [mEMORY[0x277D037B0] reattainPowerAssertionsForGroupIdentifier:persistentUUID];

  mEMORY[0x277D03788] = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 5);
  v11 = os_log_type_enabled(mEMORY[0x277D03788], v10);
  if (integerValue)
  {
    if (v11)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      wasUserInitiated = [account wasUserInitiated];
      v15 = @"NO";
      *v39 = 138543874;
      *&v39[4] = v13;
      if (wasUserInitiated)
      {
        v15 = @"YES";
      }

      v40 = 2114;
      v41 = v15;
      v42 = 2048;
      v43 = integerValue;
      _os_log_impl(&dword_24A0AC000, mEMORY[0x277D03788], v10, "ExchangeSync failed to renew credentials for account %{public}@ by forcing-prompt: %{public}@ - renewalResult = %ld", v39, 0x20u);
    }
  }

  else
  {
    if (v11)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      wasUserInitiated2 = [account wasUserInitiated];
      v19 = @"NO";
      if (wasUserInitiated2)
      {
        v19 = @"YES";
      }

      *v39 = 138543618;
      *&v39[4] = v17;
      v40 = 2114;
      v41 = v19;
      _os_log_impl(&dword_24A0AC000, mEMORY[0x277D03788], v10, "ExchangeSync successfully renewed credentials for account %{public}@ by forcing-prompt: %{public}@", v39, 0x16u);
    }

    mEMORY[0x277D03788] = [MEMORY[0x277D03788] sharedKeychain];
    [mEMORY[0x277D03788] removePersistentCredentials];
  }

  if (!self->_finished)
  {
    _popModal = [(ASTask *)self _popModal];
    if ((integerValue - 1) >= 2)
    {
      if (integerValue)
      {
        goto LABEL_21;
      }

      passwordNotificationError = self->_passwordNotificationError;
      self->_passwordNotificationError = 0;

      askedToCancelWhileModal = [(ASTask *)self askedToCancelWhileModal];
      if (askedToCancelWhileModal)
      {
        v38 = @"Password renewed. But the task has been canceled.";
      }

      else
      {
        v38 = @"Password renewed. Canceling task anyway. The accountsd should notify dataaccessd to reload the accounts.";
      }

      _EASTaskLogPublic(askedToCancelWhileModal, v34, v35, 6, self, v38, v36, v37, *v39);
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    }

    else
    {
      _EASTaskLogPublic(_popModal, v26, v27, 6, self, @"Password renewal rejected or failed. Finishing the task with error.", v28, v29, *v39);
      v30 = self->_passwordNotificationError;
      self->_passwordNotificationError = 0;
      v31 = v30;
    }

    [(ASTask *)self finishWithError:v31];

    goto LABEL_21;
  }

  _EASTaskLogPublic(v20, v21, v22, 6, self, @"Got a password response, but our manager already tore us down.", v23, v24, *v39);
LABEL_21:
}

- (BOOL)_handleCertificateError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
  }

  else
  {
    domain2 = [errorCopy domain];
    v7 = [domain2 isEqualToString:@"ASHTTPConnectionErrorDomain"];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  code = [errorCopy code];
  if (code == 403 || (code & 0xFFFFFFFE) == 0xFFFFFB4ALL)
  {
    _EASTaskLogPublic(code, v9, v10, 6, self, @"The server responded with a client certificate request", v11, v12, v14);
  }

LABEL_7:

  return 0;
}

- (BOOL)_handleRedirect:(id)redirect
{
  redirectCopy = redirect;
  domain = [redirectCopy domain];
  [redirectCopy code];
  v6 = [(NSURLRequest *)self->_request URL];
  da_urlForLogging = [v6 da_urlForLogging];
  _EASTaskLogPublic(da_urlForLogging, v7, v8, 6, self, @"Received redirect error from server: %@:%d, when trying to connect to %@", v9, v10, domain);

  _EASTaskLogPublic(v11, v12, v13, 7, self, @"Redirect Error : %@", v14, v15, redirectCopy);
  allHeaderFields = [(NSHTTPURLResponse *)self->_response allHeaderFields];
  v17 = [allHeaderFields DAObjectForKeyCaseInsensitive:@"x-ms-location"];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  }

  else
  {
    v18 = 0;
  }

  scheme = [v18 scheme];
  v20 = [scheme isEqualToString:@"https"];

  if ((v20 & 1) == 0)
  {
    scheme2 = [v18 scheme];
    host = [v18 host];
    _EASTaskLogPublic(host, v49, v50, 3, self, @"ReDirect URL is Not HTTPS. Failing to Redirect to URL : %@:/%@", v51, v52, scheme2);

    _EASTaskLogPublic(v53, v54, v55, 7, self, @"ReDirect URL is Not HTTPS. Failing to Redirect to %@", v56, v57, v18);
    ADClientAddValueForScalarKey();
LABEL_11:
    v47 = 0;
    goto LABEL_12;
  }

  if (!v18)
  {
    _EASTaskLogPublic(v21, v22, v23, 3, self, @"No redirect url in response", v24, v25, v59);
    goto LABEL_11;
  }

  v26 = MEMORY[0x277CCACA8];
  v27 = [(NSURLRequest *)self->_request URL];
  path = [v27 path];
  v29 = [(NSURLRequest *)self->_request URL];
  query = [v29 query];
  v31 = [v26 stringWithFormat:@"%@?%@", path, query, da_urlForLogging];

  v32 = [MEMORY[0x277CBEBC0] URLWithString:v31 relativeToURL:v18];
  da_urlForLogging2 = [v32 da_urlForLogging];
  _EASTaskLogPublic(da_urlForLogging2, v34, v35, 6, self, @"Redirecting to %@", v36, v37, da_urlForLogging2);

  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  account = [WeakRetained account];
  host2 = [v32 host];
  [account setHost:host2];

  port = [v32 port];
  if (port)
  {
    v42 = objc_loadWeakRetained(&self->_taskManager);
    account2 = [v42 account];
    [account2 setPort:{objc_msgSend(port, "intValue")}];
  }

  v44 = objc_loadWeakRetained(&self->_taskManager);
  account3 = [v44 account];
  [account3 updateExistingAccountProperties];

  v46 = [(NSURLRequest *)self->_request mutableCopy];
  [v46 setURL:v32];
  [(ASTask *)self reset];
  [(ASTask *)self loadRequest:v46];

  v47 = 1;
LABEL_12:

  return v47;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  sessionCopy = session;
  v8 = objc_opt_class();
  v15 = NSStringFromClass(v8);
  _EASTaskLogPublic(v15, v9, v10, 7, self, @"NSURLSession Convert: session %p didBecomeInvalidWithError %@ for %@ %p", v11, v12, sessionCopy);

  if ([(ASTask *)self isLoadedOnMainThread])
  {
    v13 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ASTask_URLSession_didBecomeInvalidWithError___block_invoke;
    block[3] = &unk_278FC78E8;
    block[4] = self;
    v17 = errorCopy;
    dispatch_sync(v13, block);
  }

  else
  {
    thread = [(ASTask *)self thread];
    [(ASTask *)self performSelector:sel__URLSessionDidBecomeInvalidWithError_ onThread:thread withObject:errorCopy waitUntilDone:1];
  }
}

- (void)_URLSessionDidBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!self->_finished)
  {
    v13 = errorCopy;
    v6 = objc_opt_class();
    v12 = NSStringFromClass(v6);
    _EASTaskLogPublic(v13, v7, v8, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v9, v10, v13);

    v11 = v13;
    if (!v13)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ASHTTPConnectionErrorDomain" code:-1 userInfo:0];
    }

    v14 = v11;
    errorCopy = [(ASTask *)self finishWithError:v11];
    v5 = v14;
  }

  MEMORY[0x2821F96F8](errorCopy, v5);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  sessionCopy = session;
  v10 = objc_opt_class();
  v15 = NSStringFromClass(v10);
  _EASTaskLogPublic(v15, v11, v12, 7, self, @"NSURLSession Convert: session %p didReceiveChallenge for %@ %p", v13, v14, sessionCopy);

  [(ASTask *)self _handleAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  taskCopy = task;
  sessionCopy = session;
  v13 = objc_opt_class();
  v18 = NSStringFromClass(v13);
  _EASTaskLogPublic(v18, v14, v15, 7, self, @"NSURLSession Convert: session %p task %p didReceiveChallenge for %@ %p", v16, v17, sessionCopy);

  [(ASTask *)self _handleAuthenticationChallenge:challengeCopy completionHandler:handlerCopy];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  streamCopy = stream;
  taskCopy = task;
  sessionCopy = session;
  v11 = objc_opt_class();
  v16 = NSStringFromClass(v11);
  _EASTaskLogPublic(v16, v12, v13, 7, self, @"NSURLSession Convert: session %p task %p needNewBodyStream for %@ %p", v14, v15, sessionCopy);

  v17 = [(ASTask *)self requestBodyStreamOutKnownSize:0];
  streamCopy[2](streamCopy, v17);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  taskCopy = task;
  sessionCopy = session;
  v17 = objc_opt_class();
  v81 = NSStringFromClass(v17);
  _EASTaskLogPublic(v81, v18, v19, 7, self, @"NSURLSession Convert: session %p task %p willPerformHTTPRedirection for %@ %p", v20, v21, sessionCopy);

  self->_didSendRequest = 1;
  v22 = [requestCopy URL];
  scheme = [v22 scheme];
  if ([scheme hasPrefix:@"https"])
  {
  }

  else
  {
    v24 = [(ASTask *)self _shouldRedirectToHTTPForRequest:requestCopy];

    if (!v24)
    {
      v41 = [requestCopy URL];
      host = [v41 host];
      _EASTaskLogPublic(host, v43, v44, 3, self, @"Failing ReDirect TO HTTP URL : %@", v45, v46, host);

      v47 = [requestCopy URL];
      v79 = [(NSURLRequest *)self->_request URL];
      _EASTaskLogPublic(v79, v48, v49, 7, self, @"Failing ReDirect TO HTTP URL : %@ From URL : %@", v50, v51, v47);

      handlerCopy[2](handlerCopy, 0);
      ADClientAddValueForScalarKey();
      v28 = requestCopy;
      goto LABEL_34;
    }
  }

  hTTPBodyStream = [requestCopy HTTPBodyStream];
  v26 = redirectionCopy | hTTPBodyStream;

  if (!v26)
  {
    v27 = [(ASTask *)self requestBodyStreamOutKnownSize:0];
    if (v27)
    {
      v28 = [requestCopy mutableCopy];
      [v28 setHTTPBodyStream:v27];
      if (([MEMORY[0x277D03910] cookiesEnabled] & 1) == 0)
      {
        [v28 setHTTPShouldHandleCookies:0];
      }
    }

    else
    {
      v28 = requestCopy;
    }

    goto LABEL_30;
  }

  if (redirectionCopy)
  {
    v83 = redirectionCopy;
    v29 = [redirectionCopy URL];
    da_urlForLogging = [v29 da_urlForLogging];
    v31 = [requestCopy URL];
    da_urlForLogging2 = [v31 da_urlForLogging];
    _EASTaskLogPublic(da_urlForLogging2, v32, v33, 6, self, @"Redirect response received for URL %@ (%@)", v34, v35, da_urlForLogging);

    v36 = [requestCopy valueForHTTPHeaderField:@"Authorization"];
    v84 = [(ASTask *)self _shouldSendAuthForRequest:requestCopy];
    v28 = [requestCopy mutableCopy];

    allHTTPHeaderFields = [(NSURLRequest *)self->_request allHTTPHeaderFields];
    [v28 setAllHTTPHeaderFields:allHTTPHeaderFields];

    hTTPBody = [(NSURLRequest *)self->_request HTTPBody];
    hTTPBodyStream2 = [(NSURLRequest *)self->_request HTTPBodyStream];
    v39 = [(NSURLRequest *)self->_request URL];
    scheme2 = [v39 scheme];
    if ([scheme2 hasPrefix:@"https"])
    {
    }

    else
    {
      v82 = v36;
      v52 = [v28 URL];
      scheme3 = [v52 scheme];
      v54 = [scheme3 hasPrefix:@"https"];

      if (v54)
      {
        v86 = hTTPBody;
        v87 = hTTPBodyStream2;
        [(ASTask *)self _setHTTPParametersOnRequest:v28 outBodyStream:&v87 outBodyData:&v86];
        v55 = v87;

        v56 = v86;
        v57 = v56;
        v36 = v82;
LABEL_20:
        [v28 setHTTPBodyStream:v55];
        v58 = [(ASTask *)self _HTTPMethodForRequest:v28];
        [v28 setHTTPMethod:v58];

        [v28 setHTTPBody:v57];
        redirectionCopy = v83;
        if (([MEMORY[0x277D03910] cookiesEnabled] & 1) == 0)
        {
          [v28 setHTTPShouldHandleCookies:0];
        }

        objc_storeStrong(&self->_request, v28);
        timeoutEnforcer = self->_timeoutEnforcer;
        v60 = MEMORY[0x277CBEAA8];
        [(ASTask *)self timeoutInterval];
        v61 = [v60 dateWithTimeIntervalSinceNow:?];
        [(NSTimer *)timeoutEnforcer setFireDate:v61];

        v67 = !v84;
        if (!v84 || v36)
        {
          if (!v36)
          {
            v67 = 0;
          }

          if (v67 == 1)
          {
            _EASTaskLogPublic(v62, v63, v64, 6, self, @"Removing basic auth from redirected request", v65, v66, v77);
            [v28 setValue:0 forHTTPHeaderField:@"Authorization"];
          }
        }

        else
        {
          [(ASTask *)self _addAuthToRequest:v28];
        }

        goto LABEL_30;
      }

      v36 = v82;
    }

    v57 = hTTPBody;
    v55 = hTTPBodyStream2;
    goto LABEL_20;
  }

  v28 = requestCopy;
LABEL_30:
  allHTTPHeaderFields2 = [v28 allHTTPHeaderFields];
  if ((DAShouldLogPassword() & 1) == 0)
  {
    v69 = [allHTTPHeaderFields2 objectForKeyedSubscript:@"Authorization"];

    if (v69)
    {
      v70 = [allHTTPHeaderFields2 mutableCopy];
      [v70 setObject:@"<Redacted>" forKeyedSubscript:@"Authorization"];

      allHTTPHeaderFields2 = v70;
    }
  }

  hTTPMethod = [v28 HTTPMethod];
  v72 = [v28 URL];
  da_urlForLogging3 = [v72 da_urlForLogging];
  _EASTaskLogPublic(da_urlForLogging3, v73, v74, 6, self, @"Will send out a %@ request to %@: %@", v75, v76, hTTPMethod);

  (handlerCopy)[2](handlerCopy, v28);
LABEL_34:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v15 = errorCopy;
  if (sessionCopy && taskCopy)
  {
    if (errorCopy)
    {
      v16 = 6;
    }

    else
    {
      v16 = 7;
    }

    _EASTaskLogPublic(errorCopy, v11, v12, v16, self, @"Session %p task %p didCompleteWithError ASTask. Error: %@", v13, v14, sessionCopy);
  }

  else if (sessionCopy)
  {
    if (errorCopy)
    {
      v17 = 6;
    }

    else
    {
      v17 = 7;
    }

    _EASTaskLogPublic(errorCopy, v11, v12, v17, self, @"Session %p didCompleteWithError %@ for ASTask", v13, v14, sessionCopy);
  }

  if ([(ASTask *)self isLoadedOnMainThread])
  {
    v18 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ASTask_URLSession_task_didCompleteWithError___block_invoke;
    block[3] = &unk_278FC78E8;
    block[4] = self;
    v21 = v15;
    dispatch_sync(v18, block);
  }

  else
  {
    thread = [(ASTask *)self thread];
    [(ASTask *)self performSelector:sel__URLSessionTaskDidCompleteWithError_ onThread:thread withObject:v15 waitUntilDone:1];
  }
}

- (void)_URLSessionTaskDidCompleteWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!self->_finished)
  {
    v6 = errorCopy;
    if (errorCopy)
    {
      errorCopy = [(ASTask *)self _handleCompletionError:errorCopy];
    }

    else
    {
      errorCopy = [(ASTask *)self _handleCompletion];
    }

    v5 = v6;
  }

  MEMORY[0x2821F96F8](errorCopy, v5);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v45 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  v11 = objc_opt_class();
  v28 = NSStringFromClass(v11);
  v30 = taskCopy;
  v31 = sessionCopy;
  _EASTaskLogPublic(v28, v12, v13, 7, self, @"NSURLSession Convert: session %p task %p didFinishCollectingMetrics %@ for %@ %p", v14, v15, sessionCopy);

  v29 = metricsCopy;
  transactionMetrics = [metricsCopy transactionMetrics];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = [transactionMetrics countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    v20 = *(MEMORY[0x277D03988] + 6);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        v23 = DALoggingwithCategory();
        if (os_log_type_enabled(v23, v20))
        {
          networkProtocolName = [v22 networkProtocolName];
          request = [v22 request];
          v26 = [request URL];
          absoluteString = [v26 absoluteString];
          *buf = 134218754;
          v37 = v31;
          v38 = 2048;
          v39 = v30;
          v40 = 2114;
          v41 = networkProtocolName;
          v42 = 2112;
          v43 = absoluteString;
          _os_log_impl(&dword_24A0AC000, v23, v20, "NSURLSession Metrics: session %p task %p used protocol %{public}@ for URL %@", buf, 0x2Au);
        }
      }

      v18 = [transactionMetrics countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v18);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  self->_didReceiveResponse = 1;
  handlerCopy = handler;
  statusCode = [(NSHTTPURLResponse *)responseCopy statusCode];
  _EASTaskLogPublic(statusCode, v10, v11, 6, self, @"received response [%d]", v12, v13, statusCode);
  allHeaderFields = [(NSHTTPURLResponse *)responseCopy allHeaderFields];
  _EASTaskLogPublic(allHeaderFields, v15, v16, 7, self, @"Response Headers: %@", v17, v18, allHeaderFields);

  response = self->_response;
  self->_response = responseCopy;

  handlerCopy[2](handlerCopy, 1);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  taskCopy = task;
  sessionCopy = session;
  v11 = objc_opt_class();
  v18 = NSStringFromClass(v11);
  _EASTaskLogPublic(v18, v12, v13, 7, self, @"NSURLSession Convert: session %p dataTask %p didReceiveData for %@ %p", v14, v15, sessionCopy);

  if ([(ASTask *)self isLoadedOnMainThread])
  {
    v16 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ASTask_URLSession_dataTask_didReceiveData___block_invoke;
    block[3] = &unk_278FC78E8;
    block[4] = self;
    v20 = dataCopy;
    dispatch_sync(v16, block);
  }

  else
  {
    thread = [(ASTask *)self thread];
    [(ASTask *)self performSelector:sel__URLSessionDataTaskDidReceiveData_ onThread:thread withObject:dataCopy waitUntilDone:1];
  }
}

- (void)_URLSessionDataTaskDidReceiveData:(id)data
{
  v59 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (!self->_finished)
  {
    v6 = dataCopy;
    self->_didReceiveData = 1;
    _EASTaskLogPublic(v6, v7, v8, 6, self, @"didReceiveData", v9, v10, v55);
    if (-[NSHTTPURLResponse expectedContentLength](self->_response, "expectedContentLength") == -1 || (v11 = [v6 length], v12 = -[ASParseContext currentBytesReceivedCount](self->_parseContext, "currentBytesReceivedCount") + v11, v12 >= -[NSHTTPURLResponse expectedContentLength](self->_response, "expectedContentLength")))
    {
      if ([(NSHTTPURLResponse *)self->_response expectedContentLength]== -1)
      {
        v18 = objc_opt_class();
        [v6 length];
        [v6 length];
        currentBytesReceivedCount = [(ASParseContext *)self->_parseContext currentBytesReceivedCount];
        _EASTaskLogPublic(currentBytesReceivedCount, v20, v21, 6, self, @"%@ didReceiveData: %d new bytes, have received a total of %lld, no information on expected total", v22, v23, v18);
      }
    }

    else
    {
      v13 = objc_opt_class();
      [v6 length];
      [v6 length];
      [(ASParseContext *)self->_parseContext currentBytesReceivedCount];
      expectedContentLength = [(NSHTTPURLResponse *)self->_response expectedContentLength];
      _EASTaskLogPublic(expectedContentLength, v14, v15, 6, self, @"%@ didReceiveData: %d new bytes, now received %lld/%lld total", v16, v17, v13);
    }

    if (!self->_isFakingIt && [(NSHTTPURLResponse *)self->_response statusCode]- 300 < 0xFFFFFF9C)
    {
      goto LABEL_51;
    }

    expectedContentLength2 = [(NSHTTPURLResponse *)self->_response expectedContentLength];
    if (expectedContentLength2 == -1)
    {
      v25 = 0;
    }

    else
    {
      v25 = expectedContentLength2;
    }

    v26 = self->_parseContext;
    [(ASParseContext *)v26 setExpectedTotalBytesCount:v25];
    [(ASParseContext *)v26 addData:v6];
    v27 = 1;
    [(ASParseContext *)v26 setMoreDataExpected:1];
    if (!self->_isFakingIt)
    {
      responseContentType = [(ASTask *)self responseContentType];
      v27 = [responseContentType isEqualToString:@"application/vnd.ms-sync.wbxml"];
    }

    dataGeneration = [(ASParseContext *)v26 dataGeneration];
    _EASTaskLogPublic(dataGeneration, v30, v31, 6, self, @"data generation is %d", v32, v33, dataGeneration);
    if ([(ASParseContext *)v26 dataGeneration]== 1)
    {
      [(ASTask *)self willProcessContext];
    }

    if (v27)
    {
      if ([(ASParseContext *)v26 curOffset]<= 3 && ![(ASParseContext *)v26 hasNumberOfTokensRemaining:4])
      {
        [(ASParseContext *)v26 setDataGeneration:[(ASParseContext *)v26 dataGeneration]- 1];
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }

      if ([(ASParseContext *)v26 dataGeneration]== 1)
      {
        if ([(ASParseContext *)v26 currentByte]!= 3)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid prefix"];
          v40 = MEMORY[0x277CCACA8];
          [(ASParseContext *)v26 curOffset];
          v36 = [v40 stringWithFormat:@"%s:%d - Failure at index %lld:"];
          v41 = DALoggingwithCategory();
          v38 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v41, v38))
          {
            *buf = 134217984;
            curOffset = [(ASParseContext *)v26 curOffset];
            _os_log_impl(&dword_24A0AC000, v41, v38, "Failure at index %lld:", buf, 0xCu);
          }

          v39 = DALoggingwithCategory();
          if (!os_log_type_enabled(v39, v38))
          {
            goto LABEL_42;
          }

          *buf = 138412290;
          curOffset = v34;
          goto LABEL_41;
        }

        [(ASParseContext *)v26 advanceOffsetByAmount:1];
        if ([(ASParseContext *)v26 currentByte]!= 1)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid prefix"];
          v42 = MEMORY[0x277CCACA8];
          [(ASParseContext *)v26 curOffset];
          v36 = [v42 stringWithFormat:@"%s:%d - Failure at index %lld:"];
          v43 = DALoggingwithCategory();
          v38 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v43, v38))
          {
            *buf = 134217984;
            curOffset = [(ASParseContext *)v26 curOffset];
            _os_log_impl(&dword_24A0AC000, v43, v38, "Failure at index %lld:", buf, 0xCu);
          }

          v39 = DALoggingwithCategory();
          if (!os_log_type_enabled(v39, v38))
          {
            goto LABEL_42;
          }

          *buf = 138412290;
          curOffset = v34;
          goto LABEL_41;
        }

        [(ASParseContext *)v26 advanceOffsetByAmount:1];
        if ([(ASParseContext *)v26 currentByte]!= 106)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid prefix"];
          v44 = MEMORY[0x277CCACA8];
          [(ASParseContext *)v26 curOffset];
          v36 = [v44 stringWithFormat:@"%s:%d - Failure at index %lld:"];
          v45 = DALoggingwithCategory();
          v38 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v45, v38))
          {
            *buf = 134217984;
            curOffset = [(ASParseContext *)v26 curOffset];
            _os_log_impl(&dword_24A0AC000, v45, v38, "Failure at index %lld:", buf, 0xCu);
          }

          v39 = DALoggingwithCategory();
          if (!os_log_type_enabled(v39, v38))
          {
            goto LABEL_42;
          }

          *buf = 138412290;
          curOffset = v34;
          goto LABEL_41;
        }

        [(ASParseContext *)v26 advanceOffsetByAmount:1];
        if ([(ASParseContext *)v26 currentByte])
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid prefix"];
          v35 = MEMORY[0x277CCACA8];
          [(ASParseContext *)v26 curOffset];
          v36 = [v35 stringWithFormat:@"%s:%d - Failure at index %lld:"];
          v37 = DALoggingwithCategory();
          v38 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v37, v38))
          {
            *buf = 134217984;
            curOffset = [(ASParseContext *)v26 curOffset];
            _os_log_impl(&dword_24A0AC000, v37, v38, "Failure at index %lld:", buf, 0xCu);
          }

          v39 = DALoggingwithCategory();
          if (!os_log_type_enabled(v39, v38))
          {
            goto LABEL_42;
          }

          *buf = 138412290;
          curOffset = v34;
LABEL_41:
          _os_log_impl(&dword_24A0AC000, v39, v38, "failure reason was %@", buf, 0xCu);
LABEL_42:

          [(ASParseContext *)v26 setParseErrorReason:v36];
          _EASTaskLogPublic(v46, v47, v48, 3, self, @"did receive data, but the header wasn't something I understand", v49, v50, "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASTask.m");
          goto LABEL_50;
        }

        [(ASParseContext *)v26 advanceOffsetByAmount:1];
      }

      if (!self->_haveCheckedForTopLevelError)
      {
        taskManager = [(ASTask *)self taskManager];
        protocol = [taskManager protocol];
        usesTopLevelStatusCodes = [protocol usesTopLevelStatusCodes];

        if (usesTopLevelStatusCodes)
        {
          v54 = [(ASTask *)self checkForErrorInContext:v26];
          self->_haveCheckedForTopLevelError = v54;
          if (!v54 || self->_handledTopLevelError)
          {
            goto LABEL_50;
          }

          [(ASParseContext *)v26 resetToZeroOffset];
          *&self->_haveSwitchedCodePage = 0;
          [(ASParseContext *)v26 advanceOffsetByAmount:4];
          [(ASParseContext *)v26 setKeepPreviousData:0];
        }
      }
    }

    [(ASTask *)self processContext:v26];
    goto LABEL_50;
  }

LABEL_52:
}

- (BOOL)_shouldUseUsernamePasswordForAuthenticationMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:*MEMORY[0x277CBAAE0]] & 1) != 0 || (objc_msgSend(methodCopy, "isEqualToString:", *MEMORY[0x277CBAAE8]) & 1) != 0 || (objc_msgSend(methodCopy, "isEqualToString:", *MEMORY[0x277CBAAD8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [methodCopy isEqualToString:*MEMORY[0x277CBAAF0]];
  }

  return v4;
}

- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)space
{
  authenticationMethod = [space authenticationMethod];
  v5 = [authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]];
  v10 = 1;
  if ((v5 & 1) == 0)
  {
    v5 = [(ASTask *)self _shouldUseUsernamePasswordForAuthenticationMethod:authenticationMethod];
    if (!v5)
    {
      v10 = 0;
    }
  }

  _EASTaskLogPublic(v5, v6, v7, 6, self, @"Can authenticate against protection space %@? %@", v8, v9, authenticationMethod);

  return v10;
}

- (id)_getCredential:(id)credential
{
  protectionSpace = [credential protectionSpace];
  taskManager = [(ASTask *)self taskManager];
  if ([taskManager useSSL])
  {
    protocol = [protectionSpace protocol];
    v7 = [protocol isEqualToString:@"https"];

    if ((v7 & 1) == 0)
    {
      v13 = @"Require SSL connection. But the request is not SSL. Not applying authentication";
LABEL_7:
      _EASTaskLogPublic(v8, v9, v10, 6, self, v13, v11, v12, v26);
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = [protectionSpace isProxy];
  if (v8)
  {
    v13 = @"This is a proxy server. Not applying authentication";
    goto LABEL_7;
  }

  _EASTaskLogPublic(v8, v9, v10, 6, self, @"Using username/password for authentication", v11, v12, v26);
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  user = [WeakRetained user];

  v17 = objc_loadWeakRetained(&self->_taskManager);
  password = [v17 password];

  if (user && password)
  {
    v24 = [objc_alloc(MEMORY[0x277CBAB80]) initWithUser:user password:password persistence:1];
  }

  else
  {
    _EASTaskLogPublic(v19, v20, v21, 6, self, @"Either No Username or Password. Not applying authentication", v22, v23, v27);
    v24 = 0;
  }

  v14 = v24;

LABEL_13:

  return v14;
}

- (void)_handleAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v9 = [(ASTask *)self _canAuthenticateAgainstProtectionSpace:protectionSpace];
  if (v9)
  {
    _EASTaskLogPublic(v9, v10, v11, 6, self, @"Received authentication challenge for method %@", v12, v13, authenticationMethod);
    previousFailureCount = [challengeCopy previousFailureCount];
    if (previousFailureCount)
    {
      _EASTaskLogPublic(previousFailureCount, v15, v16, 6, self, @"continuing without credential, because it's already failed", v17, v18, v37);
      goto LABEL_4;
    }

    if ([authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]])
    {
      WeakRetained = objc_loadWeakRetained(&self->_taskManager);
      account = [WeakRetained account];
      [account handleTrustChallenge:challengeCopy completionHandler:handlerCopy];

      _EASTaskLogPublic(v26, v27, v28, 6, self, @"Waiting for runloop callback to decide what to do", v29, v30, v37);
    }

    else
    {
      v31 = [(ASTask *)self _shouldUseUsernamePasswordForAuthenticationMethod:authenticationMethod];
      if ((v31 & 1) == 0)
      {
        _EASTaskLogPublic(v31, v32, v33, 6, self, @"Unexpected challenge authentication method %@. Use default handling.", v34, v35, authenticationMethod);
        goto LABEL_4;
      }

      v19 = [(ASTask *)self _getCredential:challengeCopy];
      if (!v19)
      {
LABEL_4:
        _EASTaskLogPublic(v19, v20, v21, 6, self, @"continuing without credential for challenge", v22, v23, v37);
        handlerCopy[2](handlerCopy, 1, 0);
        goto LABEL_6;
      }

      v36 = v19;
      _EASTaskLogPublic(v19, v20, v21, 6, self, @"Using credential %@ for challenge", v22, v23, v19);
      (handlerCopy)[2](handlerCopy, 0, v36);
    }
  }

  else
  {
    _EASTaskLogPublic(v9, v10, v11, 6, self, @"Rejecting authentication challenge for method %@", v12, v13, authenticationMethod);
    handlerCopy[2](handlerCopy, 3, 0);
  }

LABEL_6:
}

- (void)_handleCompletion
{
  v3 = _os_activity_create(&dword_24A0AC000, "#EASTraffic Connection did finish loading", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  flushLogs = [(ASParseContext *)self->_parseContext flushLogs];
  _EASTaskLogPublic(flushLogs, v5, v6, 6, self, @"Connection did finish loading", v7, v8, v28);
  if (self->_finishedByTimeoutEnforcer)
  {
    _EASTaskLogPublic(v9, v10, v11, 6, self, @"Ignoring extraneous finish, we already tore ourselves down due to a timeout", v12, v13, v29);
  }

  [(ASTask *)self setTimeoutEnforcer:0];
  if ([(ASTask *)self shouldReportTimeInNetwork]&& self->_dateConnectionWentOut)
  {
    WeakRetained = objc_loadWeakRetained(&self->_taskManager);
    account = [WeakRetained account];
    statusReport = [account statusReport];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_dateConnectionWentOut];
    [statusReport noteTimeSpentInNetworking:?];

    dateConnectionWentOut = self->_dateConnectionWentOut;
    self->_dateConnectionWentOut = 0;
  }

  if (!self->_handledTopLevelError)
  {
    self->_didFinishLoading = 1;
    [(ASTask *)self setReceivedBytesCount:[(ASParseContext *)self->_parseContext currentBytesReceivedCount]];
    receivedBytesCount = [(ASTask *)self receivedBytesCount];
    _EASTaskLogPublic(receivedBytesCount, v20, v21, 6, self, @"connection finished loading, total size: %lld bytes", v22, v23, receivedBytesCount);
    response = self->_response;
    if (response)
    {
      if (!self->_isFakingIt)
      {
        statusCode = [(NSHTTPURLResponse *)response statusCode];
        if ((statusCode - 300) <= 0xFFFFFF9B)
        {
          v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ASHTTPConnectionErrorDomain" code:statusCode userInfo:0];
          [(ASTask *)self _handleCompletionError:v26];

          goto LABEL_15;
        }
      }

      parseContext = self->_parseContext;
      if (parseContext)
      {
        [(ASParseContext *)parseContext setMoreDataExpected:0];
        [(ASParseContext *)self->_parseContext setDataGeneration:[(ASParseContext *)self->_parseContext dataGeneration]+ 1];
        if ([(ASParseContext *)self->_parseContext dataGeneration]== 1)
        {
          [(ASTask *)self processContext:self->_parseContext];
        }
      }
    }

    [(ASTask *)self didProcessContext:self->_parseContext];
  }

LABEL_15:
  os_activity_scope_leave(&state);
}

- (void)_handleCompletionError:(id)error
{
  v101 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  flushLogs = [(ASParseContext *)self->_parseContext flushLogs];
  self->_didFailWithError = 1;
  if (self->_finishedByTimeoutEnforcer)
  {
    _EASTaskLogPublic(flushLogs, v7, v8, 6, self, @"Ignoring extraneous finish, we already tore ourselves down due to a timeout", v9, v10, v88);
  }

  [(ASTask *)self setTimeoutEnforcer:0];
  domain = [errorCopy domain];
  code = [errorCopy code];
  _EASTaskLogPublic(code, v12, v13, 3, self, @"connection died with error Domain:%@ Code:%d", v14, v15, domain);

  _EASTaskLogPublic(v16, v17, v18, 7, self, @"connection died with error %@", v19, v20, errorCopy);
  if ([(ASTask *)self shouldReportTimeInNetwork]&& self->_dateConnectionWentOut)
  {
    WeakRetained = objc_loadWeakRetained(&self->_taskManager);
    account = [WeakRetained account];
    statusReport = [account statusReport];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_dateConnectionWentOut];
    [statusReport noteTimeSpentInNetworking:?];

    dateConnectionWentOut = self->_dateConnectionWentOut;
    self->_dateConnectionWentOut = 0;
  }

  if ([errorCopy code] == 449)
  {
    _EASTaskLogPublic(449, v26, v27, 6, self, @"Task %@ requesting modal to refresh Policy Key", v28, v29, self);
    taskManager = [(ASTask *)self taskManager];
    policyKey = [taskManager policyKey];
    lastKnownPolicyKey = self->_lastKnownPolicyKey;
    self->_lastKnownPolicyKey = policyKey;

    [(ASTask *)self _pushModalForReason:1];
    goto LABEL_48;
  }

  if ([errorCopy code] != 401)
  {
    domain2 = [errorCopy domain];
    v58 = *MEMORY[0x277CCA738];
    if ([domain2 isEqualToString:*MEMORY[0x277CCA738]])
    {
      code2 = [errorCopy code];

      if (code2 == -1012)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (!-[ASTask shouldStallAfterConnectionLost](self, "shouldStallAfterConnectionLost") || [errorCopy code] != -1005 || (objc_msgSend(errorCopy, "domain"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqualToString:", v58), v60, !v61))
    {
      if ([errorCopy code] == 451)
      {
        if ([(ASTask *)self _handleRedirect:errorCopy])
        {
          goto LABEL_48;
        }
      }

      else
      {
        v62 = [(ASTask *)self _handleCertificateError:errorCopy];
        if (v62)
        {
          _EASTaskLogPublic(v62, v63, v64, 6, self, @"Handled client certificate request and re-issued NSURLRequest.", v65, v66, v89);
          goto LABEL_48;
        }
      }
    }

    v67 = objc_opt_class();
    v91 = NSStringFromClass(v67);
    _EASTaskLogPublic(v91, v68, v69, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v70, v71, errorCopy);

    [(ASTask *)self finishWithError:errorCopy];
    goto LABEL_48;
  }

LABEL_9:
  v33 = [(NSHTTPURLResponse *)self->_response valueForHTTPHeaderField:@"Www-Authenticate"];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  taskManager2 = [v33 componentsSeparatedByString:{@", "}];
  v35 = [taskManager2 countByEnumeratingWithState:&v96 objects:v100 count:16];
  if (v35)
  {
    v36 = v35;
    selfCopy = self;
    v94 = errorCopy;
    v95 = 0;
    v37 = 0;
    v38 = *v97;
    while (1)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v97 != v38)
        {
          objc_enumerationMutation(taskManager2);
        }

        v40 = *(*(&v96 + 1) + 8 * i);
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v42 = [v40 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        if ([v42 hasPrefix:@"error"])
        {
          v43 = [v40 rangeOfString:@"="];
          if (!v43)
          {
            goto LABEL_21;
          }

          v44 = [v40 substringFromIndex:v43 + 1];
          v45 = [v44 stringByReplacingOccurrencesOfString:@"" withString:&stru_285D39BD0];
          v46 = v37;
          v37 = v45;
          goto LABEL_20;
        }

        if ([v42 hasPrefix:@"claims"])
        {
          v47 = [v40 rangeOfString:@"="];
          if (v47)
          {
            v44 = [v40 substringFromIndex:v47 + 1];
            v48 = [v44 stringByReplacingOccurrencesOfString:@"" withString:&stru_285D39BD0];
            v46 = v95;
            v95 = v48;
LABEL_20:
          }
        }

LABEL_21:
      }

      v36 = [taskManager2 countByEnumeratingWithState:&v96 objects:v100 count:16];
      if (!v36)
      {

        if (v37)
        {
          v49 = [v37 isEqualToString:@"insufficient_claims"];
          self = selfCopy;
          errorCopy = v94;
          v54 = v95;
          if (v49)
          {
            _EASTaskLogPublic(v49, v50, v51, 3, selfCopy, @"Received error: '%@' with claims: %@, storing to the account.", v52, v53, v37);
            taskManager2 = [(ASTask *)selfCopy taskManager];
            account2 = [taskManager2 account];
            backingAccountInfo = [account2 backingAccountInfo];
            [backingAccountInfo setObject:v95 forKeyedSubscript:*MEMORY[0x277D07AC8]];

            goto LABEL_37;
          }
        }

        else
        {
          self = selfCopy;
          errorCopy = v94;
          v54 = v95;
        }

        goto LABEL_42;
      }
    }
  }

  v37 = 0;
  v54 = 0;
LABEL_37:

LABEL_42:
  _EASTaskLogPublic(v49, v50, v51, 3, self, @"Bad password error received.", v52, v53, v89);
  if ([(ASTask *)self shouldHandlePasswordErrors])
  {
    numBadPasswordResponses = self->_numBadPasswordResponses;
    numForgivable401s = [MEMORY[0x277D03910] numForgivable401s];
    if (numBadPasswordResponses >= numForgivable401s)
    {
      passwordNotificationError = self->_passwordNotificationError;
      self->_passwordNotificationError = 0;

      objc_storeStrong(&self->_passwordNotificationError, error);
      taskManager3 = [(ASTask *)self taskManager];
      password = [taskManager3 password];
      [(ASTask *)self setLastKnownPassword:password];

      [(ASTask *)self _pushModalForReason:2];
    }

    else
    {
      v78 = (self->_numBadPasswordResponses + 1);
      self->_numBadPasswordResponses = v78;
      _EASTaskLogPublic(numForgivable401s, v74, v75, 3, self, @"Received bad password response number %d.  Optimistically trying again", v76, v77, v78);
      v79 = runLoopModesToPerformDelayedSelectorsIn();
      [(ASTask *)self performSelector:sel_performTask withObject:0 afterDelay:v79 inModes:0.0];
    }
  }

  else
  {
    v80 = objc_opt_class();
    v92 = NSStringFromClass(v80);
    _EASTaskLogPublic(v92, v81, v82, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v83, v84, errorCopy);

    [(ASTask *)self finishWithError:errorCopy];
  }

LABEL_48:
}

- (void)handleTopLevelErrorStatus:(id)status
{
  statusCopy = status;
  v4 = [statusCopy intValue] < 101;
  v5 = statusCopy;
  if (!v4)
  {
    intValue = [statusCopy intValue];
    if (intValue > 139)
    {
      if ((intValue - 142) < 3)
      {
        goto LABEL_10;
      }

      if (intValue == 177)
      {
        _EASTaskLogPublic(intValue, v7, v8, 3, self, @"Received MaximumDevicesReached error.  Treating as HTTP 403", v9, v10, v38);
        self->_handledTopLevelError = 1;
        v32 = objc_opt_class();
        v41 = NSStringFromClass(v32);
        _EASTaskLogPublic(v41, v33, v34, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v35, v36, 0);

        v24 = MEMORY[0x277CCA9B8];
        v25 = @"ASHTTPConnectionErrorDomain";
        intValue2 = 403;
        goto LABEL_18;
      }

      if (intValue == 140)
      {
LABEL_10:
        _EASTaskLogPublic(intValue, v7, v8, 6, self, @"Requesting modal to refresh Policy Key", v9, v10, v38);
        taskManager = [(ASTask *)self taskManager];
        policyKey = [taskManager policyKey];
        lastKnownPolicyKey = self->_lastKnownPolicyKey;
        self->_lastKnownPolicyKey = policyKey;

        [(ASTask *)self _pushModalForReason:1];
        self->_handledTopLevelError = 1;
        goto LABEL_19;
      }
    }

    else
    {
      switch(intValue)
      {
        case 6:
          v14 = @"Access denied. We probably angered the Babysitter.";
          v15 = 5;
LABEL_15:
          _EASTaskLogPublic(intValue, v7, v8, v15, self, v14, v9, v10, v38);
          self->_handledTopLevelError = 1;
          v27 = objc_opt_class();
          v40 = NSStringFromClass(v27);
          _EASTaskLogPublic(v40, v28, v29, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v30, v31, 0);

          v22 = MEMORY[0x277CCA9B8];
          v23 = *MEMORY[0x277D038E0];
          goto LABEL_16;
        case 0x6F:
          _EASTaskLogPublic(intValue, v7, v8, 5, self, @"Got status 111 (ServerErrorRetryLater).", v9, v10, v38);
          self->_handledTopLevelError = 1;
          shouldHandleServerErrorRetryLater = [(ASTask *)self shouldHandleServerErrorRetryLater];
          v17 = objc_opt_class();
          v39 = NSStringFromClass(v17);
          _EASTaskLogPublic(v39, v18, v19, 7, self, @"NSURLSession Convert: invoke finishWithError %@ for %@ %p", v20, v21, 0);

          v22 = MEMORY[0x277CCA9B8];
          v23 = *MEMORY[0x277D038E0];
          if (!shouldHandleServerErrorRetryLater)
          {
            v24 = MEMORY[0x277CCA9B8];
            v25 = *MEMORY[0x277D038E0];
            intValue2 = 110;
LABEL_18:
            v37 = [v24 errorWithDomain:v25 code:intValue2 userInfo:0];
            [(ASTask *)self finishWithError:v37];

            goto LABEL_19;
          }

LABEL_16:
          intValue2 = [statusCopy intValue];
          v24 = v22;
          v25 = v23;
          goto LABEL_18;
        case 0x76:
          _EASTaskLogPublic(intValue, v7, v8, 6, self, @"Ignoring error that we already sent this email, and calling it a day", v9, v10, v38);
LABEL_19:
          v5 = statusCopy;
          goto LABEL_20;
      }
    }

    intValue = [statusCopy intValue];
    v38 = intValue;
    v14 = @"Yikes: got an unhandled top level error %d";
    v15 = 3;
    goto LABEL_15;
  }

LABEL_20:
}

- (void)_initFakeParseContext
{
  v3 = objc_opt_new();
  parseContext = self->_parseContext;
  self->_parseContext = v3;

  [(ASParseContext *)self->_parseContext setKeepPreviousData:1];
  [(ASParseContext *)self->_parseContext setMoreDataExpected:1];
  self->_isFakingIt = 1;
}

- (void)reset
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)reportStatusWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);
  account = [WeakRetained account];
  statusReport = [account statusReport];

  v7 = overSimplifiedStatusForError(errorCopy);
  if (v7 == 1)
  {
    [statusReport noteFailedNetworkRequest];
  }

  else if (v7)
  {
    [statusReport noteFailedProtocolRequest];
  }

  else
  {
    [statusReport noteSuccessfulRequestWithNumDownloadedElements:{-[ASTask numDownloadedElements](self, "numDownloadedElements")}];
  }
}

- (void)setTaskManager:(id)manager
{
  managerCopy = manager;
  obj = managerCopy;
  if (managerCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    managerCopy = obj;
    if ((isKindOfClass & 1) == 0)
    {
      [ASTask setTaskManager:];
      managerCopy = obj;
    }
  }

  objc_storeWeak(&self->_taskManager, managerCopy);
}

- (void)setTimeoutEnforcer:(id)enforcer
{
  enforcerCopy = enforcer;
  timeoutEnforcer = self->_timeoutEnforcer;
  p_timeoutEnforcer = &self->_timeoutEnforcer;
  v6 = timeoutEnforcer;
  if (timeoutEnforcer != enforcerCopy)
  {
    v9 = enforcerCopy;
    [(NSTimer *)v6 invalidate];
    objc_storeStrong(p_timeoutEnforcer, enforcer);
    enforcerCopy = v9;
  }

  MEMORY[0x2821F96F8](v6, enforcerCopy);
}

- (DATaskManager)taskManager
{
  WeakRetained = objc_loadWeakRetained(&self->_taskManager);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadRequest:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)loadRequest:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)loadRequest:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)loadRequest:(void *)a1 .cold.4(void *a1)
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = [a1 UTF8String];
  OUTLINED_FUNCTION_2(&dword_24A0AC000, v1, v2, "Process %s does not invoke ASTask on main thread!", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)loadRequest:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 136315138;
  *(&v9 + 4) = [v2 UTF8String];
  OUTLINED_FUNCTION_2(&dword_24A0AC000, v3, v4, "Accountsd is loading %s!", v5, v6, v7, v8, v9, DWORD2(v9));
}

- (void)finishWithError:(uint64_t)a3 afterDelegateCallout:(uint64_t)a4 .cold.1(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v10 = [MEMORY[0x277CCA890] currentHandler];
  v8 = *a1;
  v9 = *a2;
  OUTLINED_FUNCTION_1_0();
  [v7 handleFailureInMethod:v8 object:v9 file:a4 lineNumber:? description:?];
}

- (void)finishWithError:afterDelegateCallout:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setTaskManager:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end