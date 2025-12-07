@interface AMSupportStaticURLSession
- (AMSupportStaticURLSession)initWithOptions:(id)options;
- (id)_defaultSessionConfigurationWithIdentifier:(id)identifier;
- (id)_newSession;
- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)message;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
- (void)sendRequest:(__CFHTTPMessage *)request completion:(id)completion;
@end

@implementation AMSupportStaticURLSession

- (id)_defaultSessionConfigurationWithIdentifier:(id)identifier
{
  v4 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v5 = [(NSDictionary *)self->_options objectForKey:@"SocksProxySettings"];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
LABEL_3:
    [(NSURLSessionConfiguration *)v4 setConnectionProxyDictionary:v6];

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
  [(NSURLSessionConfiguration *)v4 setTimeoutIntervalForRequest:self->_timeout];
  [(NSURLSessionConfiguration *)v4 setAllowsCellularAccess:1];
  [(NSURLSessionConfiguration *)v4 set_shouldSkipPreferredClientCertificateLookup:1];
  return v4;
}

- (id)_newSession
{
  v2 = [NSURLSession sessionWithConfiguration:[(AMSupportStaticURLSession *)self _defaultSessionConfigurationWithIdentifier:@"com.apple.libamsupport.http-traffic"] delegate:self delegateQueue:0];

  return v2;
}

- (AMSupportStaticURLSession)initWithOptions:(id)options
{
  v10.receiver = self;
  v10.super_class = AMSupportStaticURLSession;
  v4 = [(AMSupportStaticURLSession *)&v10 init];
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
    v4->_session = [(AMSupportStaticURLSession *)v4 _newSession];
    v4->_sslEvalFailed = 0;
  }

  return v4;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = AMSupportStaticURLSession;
  [(AMSupportStaticURLSession *)&v4 dealloc];
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

  v6 = [NSMutableURLRequest requestWithURL:v5 cachePolicy:1 timeoutInterval:self->_timeout];
  if (!v6)
  {
    return v6;
  }

  v7 = CFHTTPMessageCopyRequestMethod(message);
  if (!v7)
  {
    return 0;
  }

  [(NSMutableURLRequest *)v6 setHTTPMethod:v7];
  v8 = CFHTTPMessageCopyAllHeaderFields(message);
  if (v8)
  {
    [(NSMutableURLRequest *)v6 setAllHTTPHeaderFields:v8];
  }

  v9 = CFHTTPMessageCopyBody(message);
  if (v9)
  {
    [(NSMutableURLRequest *)v6 setHTTPBody:v9];
  }

  return v6;
}

- (void)sendRequest:(__CFHTTPMessage *)request completion:(id)completion
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke;
  v5[3] = &__block_descriptor_56_e8_32o40b_e5_v8__0l;
  v5[5] = completion;
  v5[6] = request;
  v5[4] = self;
  dispatch_sync(queue, v5);
}

void __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke(uint64_t a1)
{
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
    AMSupportLogInternal(3, "[AMSupportStaticURLSession sendRequest:completion:]_block_invoke", "Could not construct NSURLRequest from message %@", *(a1 + 48));
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke_2;
    block[3] = &__block_descriptor_40_e8_32b_e5_v8__0l;
    block[4] = *(a1 + 40);
    dispatch_async(global_queue, block);
  }
}

uint64_t __52__AMSupportStaticURLSession_sendRequest_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"AMSupportError" code:3 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  if (error)
  {
    AMSupportLogInternal(3, "[AMSupportStaticURLSession URLSession:didBecomeInvalidWithError:]", "Session %@ became invalid: %@", session, error);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  AMSupportLogInternal(7, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Authentication challenge received.  Method: %@", protectionSpace);
  if ([challenge previousFailureCount] < 1)
  {
    if ([protectionSpace isEqual:NSURLAuthenticationMethodClientCertificate] && -[NSDictionary objectForKey:](self->_options, "objectForKey:", @"ClientIdentity"))
    {
      AMSupportLogInternal(6, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Received client certificate challenge. Client SSL authentication failed.");
    }

    else
    {
      if (([protectionSpace isEqual:NSURLAuthenticationMethodServerTrust] & 1) == 0)
      {
        v9 = *(handler + 2);
        handlerCopy4 = handler;
        v11 = 1;
        goto LABEL_3;
      }

      if ([-[NSDictionary objectForKey:](self->_options objectForKey:{@"DisableSSLValidation", "isEqual:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}])
      {
        AMSupportLogInternal(6, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "SSL validation disabled.  Attempting to continue without authentication.");
        v13 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(challenge "protectionSpace")]);
        v9 = *(handler + 2);
        v12 = v13;
        handlerCopy4 = handler;
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
          v16 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(challenge "protectionSpace")]);
          v9 = *(handler + 2);
          v12 = v16;
          handlerCopy4 = handler;
          v11 = 1;
          goto LABEL_4;
        }
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      selfCopy = self;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [NSArray arrayWithObject:[(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"]];
        }

        else
        {
          v15 = 0;
        }
      }

      v17 = [NSMutableArray arrayWithCapacity:[(NSArray *)v15 count]];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = [(NSArray *)v15 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = SecCertificateCreateWithData(kCFAllocatorDefault, v22);
              if (v23)
              {
                v24 = v23;
                [(NSMutableArray *)v17 addObject:v23];
                CFRelease(v24);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "trusted certificate could not be loaded %@", v22);
              }
            }
          }

          v19 = [(NSArray *)v15 countByEnumeratingWithState:&v31 objects:v30 count:16];
        }

        while (v19);
      }

      v25 = [objc_msgSend(challenge "protectionSpace")];
      v29 = 0;
      AMSupportLogInternal(7, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Attempting trust evaluate");
      v26 = AMSupportX509ChainEvaluateTrust(v25, v17, &v29);
      if (v26)
      {
        AMSupportLogInternal(3, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation failed (OSStatus=%d)", v26);
        v27 = selfCopy;
      }

      else
      {
        v27 = selfCopy;
        if (v29 == 4 || v29 == 1)
        {
          AMSupportLogInternal(7, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Trust evaluation succeeded, proceeding..");
          (*(handler + 2))(handler, 0, [NSURLCredential credentialForTrust:v25]);
          return;
        }

        AMSupportLogInternal(4, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation did not result in okay to proceed (result=%d)", v29);
      }

      v27->_sslEvalFailed = 1;
    }

    (*(handler + 2))(handler, 2, 0);
    return;
  }

  AMSupportLogInternal(3, "[AMSupportStaticURLSession URLSession:didReceiveChallenge:completionHandler:]", "Multiple challenge failures. Request failed.");
  v9 = *(handler + 2);
  handlerCopy4 = handler;
  v11 = 2;
LABEL_3:
  v12 = 0;
LABEL_4:

  v9(handlerCopy4, v11, v12);
}

@end