@interface AMSupportOSURLSession
- (AMSupportOSURLSession)initWithOptions:(id)options;
- (id)_defaultSessionConfigurationWithIdentifier:(id)identifier;
- (id)_newSession;
- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)message;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
- (void)sendRequest:(__CFHTTPMessage *)request completion:(id)completion;
@end

@implementation AMSupportOSURLSession

- (id)_defaultSessionConfigurationWithIdentifier:(id)identifier
{
  ephemeralSessionConfiguration = [MEMORY[0x29EDB8518] ephemeralSessionConfiguration];
  v5 = [(NSDictionary *)self->_options objectForKey:@"SocksProxySettings"];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
LABEL_3:
    [ephemeralSessionConfiguration setConnectionProxyDictionary:v6];

    goto LABEL_6;
  }

  if ([-[NSDictionary objectForKey:](self->_options objectForKey:{@"UsePurpleReverseProxy", "BOOLValue"}])
  {
    v6 = AMSupportHttpCopyProxySettings(0, 0);
    if (v6)
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  [ephemeralSessionConfiguration setTimeoutIntervalForRequest:self->_timeout];
  [ephemeralSessionConfiguration setAllowsCellularAccess:1];
  [ephemeralSessionConfiguration set_shouldSkipPreferredClientCertificateLookup:1];
  return ephemeralSessionConfiguration;
}

- (id)_newSession
{
  v2 = [MEMORY[0x29EDB8510] sessionWithConfiguration:-[AMSupportOSURLSession _defaultSessionConfigurationWithIdentifier:](self delegate:"_defaultSessionConfigurationWithIdentifier:" delegateQueue:{@"com.apple.libamsupport.http-traffic", self, 0}];

  return v2;
}

- (AMSupportOSURLSession)initWithOptions:(id)options
{
  v11 = *MEMORY[0x29EDCA608];
  v10.receiver = self;
  v10.super_class = AMSupportOSURLSession;
  v4 = [(AMSupportOSURLSession *)&v10 init];
  if (v4)
  {
    v5 = [options objectForKey:@"Timeout"];
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v6 = 0x4072C00000000000;
    }

    *&v4->_timeout = v6;
    v7 = [options objectForKey:@"Priority"];
    if (v7)
    {
      [v7 floatValue];
    }

    else
    {
      v8 = 0.5;
    }

    v4->_priority = v8;
    v4->_queue = dispatch_queue_create("com.apple.libamsupport.http-session", 0);
    v4->_options = options;
    v4->_session = [(AMSupportOSURLSession *)v4 _newSession];
    v4->_sslEvalFailed = 0;
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x29EDCA608];
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = AMSupportOSURLSession;
  [(AMSupportOSURLSession *)&v4 dealloc];
}

- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)message
{
  if (!message)
  {
    return 0;
  }

  v5 = CFHTTPMessageCopyRequestURL(message);
  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x29EDB84F8] requestWithURL:v5 cachePolicy:1 timeoutInterval:self->_timeout];
  if (!v6)
  {
    return v6;
  }

  v7 = CFHTTPMessageCopyRequestMethod(message);
  if (!v7)
  {
    return 0;
  }

  [v6 setHTTPMethod:v7];
  v8 = CFHTTPMessageCopyAllHeaderFields(message);
  if (v8)
  {
    [v6 setAllHTTPHeaderFields:v8];
  }

  v9 = CFHTTPMessageCopyBody(message);
  if (v9)
  {
    [v6 setHTTPBody:v9];
  }

  return v6;
}

- (void)sendRequest:(__CFHTTPMessage *)request completion:(id)completion
{
  v5[7] = *MEMORY[0x29EDCA608];
  queue = self->_queue;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __48__AMSupportOSURLSession_sendRequest_completion___block_invoke;
  v5[3] = &unk_29EE96B50;
  v5[5] = completion;
  v5[6] = request;
  v5[4] = self;
  dispatch_sync(queue, v5);
}

void __48__AMSupportOSURLSession_sendRequest_completion___block_invoke(uint64_t a1)
{
  block[5] = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) _urlRequestForHTTPMessage:*(a1 + 48)];
  if (v2)
  {
    v3 = [*(*(a1 + 32) + 32) dataTaskWithRequest:v2 completionHandler:*(a1 + 40)];
    LODWORD(v4) = *(*(a1 + 32) + 24);
    [v3 setPriority:v4];

    [v3 resume];
  }

  else
  {
    AMSupportLogInternal(3, "[AMSupportOSURLSession sendRequest:completion:]_block_invoke", "Could not construct NSURLRequest from message %@", *(a1 + 48));
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __48__AMSupportOSURLSession_sendRequest_completion___block_invoke_2;
    block[3] = &unk_29EE96B28;
    block[4] = *(a1 + 40);
    dispatch_async(global_queue, block);
  }
}

uint64_t __48__AMSupportOSURLSession_sendRequest_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"AMSupportError" code:3 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  if (error)
  {
    AMSupportLogInternal(3, "[AMSupportOSURLSession URLSession:didBecomeInvalidWithError:]", "Session %@ became invalid: %@", session, error);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v38 = *MEMORY[0x29EDCA608];
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  AMSupportLogInternal(7, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Authentication challenge received.  Method: %@", protectionSpace);
  if ([challenge previousFailureCount] < 1)
  {
    if ([protectionSpace isEqual:*MEMORY[0x29EDB84E0]] && -[NSDictionary objectForKey:](self->_options, "objectForKey:", @"ClientIdentity"))
    {
      AMSupportLogInternal(6, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Received client certificate challenge. Client SSL authentication failed.");
    }

    else
    {
      if (([protectionSpace isEqual:*MEMORY[0x29EDB84E8]] & 1) == 0)
      {
        v9 = *(handler + 2);
        handlerCopy5 = handler;
        v11 = 1;
        goto LABEL_3;
      }

      v13 = [(NSDictionary *)self->_options objectForKey:@"DisableSSLValidation"];
      if ([v13 isEqual:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithBool:", 1)}])
      {
        AMSupportLogInternal(6, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "SSL validation disabled.  Attempting to continue without authentication.");
        v14 = [MEMORY[0x29EDB8508] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}];
        v9 = *(handler + 2);
        v12 = v14;
        handlerCopy5 = handler;
        v11 = 0;
        goto LABEL_4;
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = [MEMORY[0x29EDB8508] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}];
          v9 = *(handler + 2);
          v12 = v17;
          handlerCopy5 = handler;
          v11 = 1;
          goto LABEL_4;
        }
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v16 = [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      selfCopy = self;
      handlerCopy4 = handler;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MEMORY[0x29EDB8D80] arrayWithObject:{-[NSDictionary objectForKey:](self->_options, "objectForKey:", @"TrustedServerCAs"}];
        }

        else
        {
          v16 = 0;
        }
      }

      v18 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = [v16 countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        v22 = *MEMORY[0x29EDB8ED8];
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = SecCertificateCreateWithData(v22, v24);
              if (v25)
              {
                v26 = v25;
                [v18 addObject:v25];
                CFRelease(v26);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "trusted certificate could not be loaded %@", v24);
              }
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v34 objects:v33 count:16];
        }

        while (v20);
      }

      v27 = [objc_msgSend(challenge "protectionSpace")];
      v32 = 0;
      AMSupportLogInternal(7, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Attempting trust evaluate");
      v28 = AMSupportX509ChainEvaluateTrust(v27, v18, &v32);
      if (v28)
      {
        AMSupportLogInternal(3, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation failed (OSStatus=%d)", v28);
        v29 = selfCopy;
        handler = handlerCopy4;
      }

      else
      {
        v29 = selfCopy;
        handler = handlerCopy4;
        if (v32 == 4 || v32 == 1)
        {
          AMSupportLogInternal(7, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Trust evaluation succeeded, proceeding..");
          (*(handlerCopy4 + 2))(handlerCopy4, 0, [MEMORY[0x29EDB8508] credentialForTrust:v27]);
          return;
        }

        AMSupportLogInternal(4, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation did not result in okay to proceed (result=%d)", v32);
      }

      v29->_sslEvalFailed = 1;
    }

    (*(handler + 2))(handler, 2, 0);
    return;
  }

  AMSupportLogInternal(3, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Multiple challenge failures. Request failed.");
  v9 = *(handler + 2);
  handlerCopy5 = handler;
  v11 = 2;
LABEL_3:
  v12 = 0;
LABEL_4:

  v9(handlerCopy5, v11, v12);
}

@end