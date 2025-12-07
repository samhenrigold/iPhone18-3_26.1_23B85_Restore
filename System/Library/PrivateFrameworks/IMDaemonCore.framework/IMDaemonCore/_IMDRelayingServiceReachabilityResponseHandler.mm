@interface _IMDRelayingServiceReachabilityResponseHandler
- (_IMDRelayingServiceReachabilityResponseHandler)initWithRequestID:(id)d pushToken:(id)token fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (void)_deferSendingCurrentResultIfNeeded;
- (void)_sendCurrentResult;
- (void)reachabilityRequest:(id)request updatedWithResult:(id)result;
@end

@implementation _IMDRelayingServiceReachabilityResponseHandler

- (_IMDRelayingServiceReachabilityResponseHandler)initWithRequestID:(id)d pushToken:(id)token fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  dCopy = d;
  tokenCopy = token;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  v18.receiver = self;
  v18.super_class = _IMDRelayingServiceReachabilityResponseHandler;
  v15 = [(_IMDRelayingServiceReachabilityResponseHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_requestID, d);
    objc_storeStrong(&v16->_pushToken, token);
    objc_storeStrong(&v16->_fromIdentifier, identifier);
    objc_storeStrong(&v16->_toIdentifier, toIdentifier);
  }

  return v16;
}

- (void)_sendCurrentResult
{
  v28 = *MEMORY[0x277D85DE8];
  lastResult = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];

  v4 = IMOSLoggingEnabled();
  if (lastResult)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        lastResult2 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];
        if ([lastResult2 isFinal])
        {
          v7 = @"final";
        }

        else
        {
          v7 = @"intermediate";
        }

        requestID = [(_IMDRelayingServiceReachabilityResponseHandler *)self requestID];
        pushToken = [(_IMDRelayingServiceReachabilityResponseHandler *)self pushToken];
        fromIdentifier = [(_IMDRelayingServiceReachabilityResponseHandler *)self fromIdentifier];
        v20 = 138413058;
        v21 = v7;
        v22 = 2112;
        v23 = requestID;
        v24 = 2112;
        v25 = pushToken;
        v26 = 2112;
        v27 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Sending %@ result for request ID %@ to %@/%@", &v20, 0x2Au);
      }
    }

    v11 = [IMDRelayServiceReachabilityResponse alloc];
    lastResult3 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];
    v13 = [(IMDRelayServiceReachabilityResponse *)v11 initWithResult:lastResult3];

    v14 = +[IMDRelayServiceController sharedInstance];
    requestID2 = [(_IMDRelayingServiceReachabilityResponseHandler *)self requestID];
    pushToken2 = [(_IMDRelayingServiceReachabilityResponseHandler *)self pushToken];
    fromIdentifier2 = [(_IMDRelayingServiceReachabilityResponseHandler *)self fromIdentifier];
    toIdentifier = [(_IMDRelayingServiceReachabilityResponseHandler *)self toIdentifier];
    [v14 sendReachabilityResponse:v13 requestID:requestID2 toToken:pushToken2 toIdentifier:fromIdentifier2 fromIdentifier:toIdentifier];
  }

  else if (v4)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not sending current result, no result cached yet?", &v20, 2u);
    }
  }
}

- (void)_deferSendingCurrentResultIfNeeded
{
  lastResult = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];

  if (lastResult)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__sendCurrentResult object:0];
    lastResult2 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];
    isFinal = [lastResult2 isFinal];

    if (isFinal)
    {

      MEMORY[0x2821F9670](self, sel__sendCurrentResult);
    }

    else
    {

      [(_IMDRelayingServiceReachabilityResponseHandler *)self performSelector:sel__sendCurrentResult withObject:0 afterDelay:0.5];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not sending current result, no result cached yet?", v7, 2u);
    }
  }
}

- (void)reachabilityRequest:(id)request updatedWithResult:(id)result
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      requestID = [requestCopy requestID];
      v10 = 138412290;
      v11 = requestID;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received update for request ID %@", &v10, 0xCu);
    }
  }

  [(_IMDRelayingServiceReachabilityResponseHandler *)self setLastResult:resultCopy];
  [(_IMDRelayingServiceReachabilityResponseHandler *)self _deferSendingCurrentResultIfNeeded];
}

@end