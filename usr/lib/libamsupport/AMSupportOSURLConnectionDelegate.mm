@interface AMSupportOSURLConnectionDelegate
- (AMSupportOSURLConnectionDelegate)init;
- (AMSupportOSURLConnectionDelegate)initWithData:(id)data Options:(id)options;
- (id)waitForResponseOrError:(id *)error;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
- (void)dealloc;
@end

@implementation AMSupportOSURLConnectionDelegate

- (AMSupportOSURLConnectionDelegate)init
{
  v3 = [MEMORY[0x29EDB8DF8] dataWithCapacity:0];

  return [(AMSupportOSURLConnectionDelegate *)self initWithData:v3 Options:0];
}

- (AMSupportOSURLConnectionDelegate)initWithData:(id)data Options:(id)options
{
  v12 = *MEMORY[0x29EDCA608];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate initWithData:Options:]", "init-ing delegate with data=%@ options=%@", data, options);
  v11.receiver = self;
  v11.super_class = AMSupportOSURLConnectionDelegate;
  v7 = [(AMSupportOSURLConnectionDelegate *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->requestComplete = 0;
    v7->options = options;
    v8->response = 0;
    dataCopy = data;
    v8->_data = dataCopy;
    [(NSMutableData *)dataCopy setLength:0];
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x29EDCA608];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate dealloc]", "dealloc-ing delegate");

  self->response = 0;
  self->_data = 0;

  self->_error = 0;
  v3.receiver = self;
  v3.super_class = AMSupportOSURLConnectionDelegate;
  [(AMSupportOSURLConnectionDelegate *)&v3 dealloc];
}

- (id)waitForResponseOrError:(id *)error
{
  v5 = *MEMORY[0x29EDB8CC0];
  do
  {
    if (self->requestComplete)
    {
      break;
    }

    currentRunLoop = [MEMORY[0x29EDB8E48] currentRunLoop];
  }

  while (([currentRunLoop runMode:v5 beforeDate:{objc_msgSend(MEMORY[0x29EDB8DB0], "distantFuture")}] & 1) != 0);
  error = self->_error;
  if (!error)
  {
    return self->response;
  }

  if (!error)
  {
    return 0;
  }

  errorCopy = error;
  result = 0;
  *error = errorCopy;
  return result;
}

- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge
{
  keys[1] = *MEMORY[0x29EDCA608];
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Authentication challenge received.  Method: %@", protectionSpace);
  if ([challenge previousFailureCount] >= 1)
  {
    [objc_msgSend(challenge "sender")];

    AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Multiple challenge failures.  Aborting.");
    return;
  }

  if ([protectionSpace isEqual:*MEMORY[0x29EDB84E0]] && -[NSDictionary objectForKey:](self->options, "objectForKey:", @"ClientIdentity"))
  {
    AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Received client certificate challenge.");
    v7 = [(NSDictionary *)self->options objectForKey:@"ClientIdentity"];
    items = 0;
    v8 = [(NSDictionary *)self->options objectForKey:@"ClientIdentityPassphrase"];
    v9 = &stru_2A1EE58A8;
    v10 = *MEMORY[0x29EDBBC50];
    if (v8)
    {
      v9 = v8;
    }

    values = v9;
    keys[0] = v10;
    v11 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
    Length = CFDataGetLength(v7);
    AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "P12 Identity data length=%d", Length);
    v13 = SecPKCS12Import(v7, v11, &items);
    CFRelease(v11);
    if (!v13)
    {
      AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Successfully imported PKCS12 identity");
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x29EDBBC58]);
      certificateRef = 0;
      SecIdentityCopyCertificate(Value, &certificateRef);
      v45 = certificateRef;
      v24 = CFArrayCreate(0, &v45, 1, 0);
      CFRelease(certificateRef);
      v25 = [MEMORY[0x29EDB8508] credentialWithIdentity:Value certificates:v24 persistence:2];
      CFRelease(v24);
      [objc_msgSend(challenge "sender")];
      AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Returned credentials for challenge.");
      return;
    }

    AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Unable to import client identity, aborting challenge.");
    sender = [challenge sender];
    challengeCopy = challenge;
    goto LABEL_40;
  }

  if ([protectionSpace isEqual:*MEMORY[0x29EDB84E8]])
  {
    v16 = [(NSDictionary *)self->options objectForKey:@"DisableSSLValidation"];
    if ([v16 isEqual:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithBool:", 1)}])
    {
      AMSupportLogInternal(6, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "SSL validation disabled.  Attempting to continue without authentication.");
      sender2 = [challenge sender];
      v18 = [MEMORY[0x29EDB8508] credentialForTrust:{objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "serverTrust")}];

      [sender2 useCredential:v18 forAuthenticationChallenge:challenge];
      return;
    }

    [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"], objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      challengeCopy2 = challenge;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [MEMORY[0x29EDB8D80] arrayWithObject:{-[NSDictionary objectForKey:](self->options, "objectForKey:", @"TrustedServerCAs"}];
        }

        else
        {
          v20 = 0;
        }
      }

      v26 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v20, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v27 = [v20 countByEnumeratingWithState:&v41 objects:v40 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v42;
        v30 = *MEMORY[0x29EDB8ED8];
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v42 != v29)
            {
              objc_enumerationMutation(v20);
            }

            v32 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = SecCertificateCreateWithData(v30, v32);
              if (v33)
              {
                v34 = v33;
                [v26 addObject:v33];
                CFRelease(v34);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trusted certificate could not be loaded %@", v32);
              }
            }
          }

          v28 = [v20 countByEnumeratingWithState:&v41 objects:v40 count:16];
        }

        while (v28);
      }

      v35 = [objc_msgSend(challengeCopy2 "protectionSpace")];
      LODWORD(items) = 0;
      AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Attempting trust evaluate");
      if (AMSupportX509ChainEvaluateTrust(v35, v26, &items))
      {
        AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation failed (OSStatus=%d)");
      }

      else
      {
        if (items == 4 || items == 1)
        {
          AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Trust evaluation succeeded, proceeding..");
          sender3 = [challengeCopy2 sender];
          [sender3 useCredential:objc_msgSend(MEMORY[0x29EDB8508] forAuthenticationChallenge:{"credentialForTrust:", v35), challengeCopy2}];
          return;
        }

        AMSupportLogInternal(4, "[AMSupportOSURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation did not result in okay to proceed (result=%d)");
      }

      sender = [challengeCopy2 sender];
      challengeCopy = challengeCopy2;
LABEL_40:
      [sender cancelAuthenticationChallenge:challengeCopy];
      return;
    }
  }

  sender4 = [challenge sender];

  [sender4 performDefaultHandlingForAuthenticationChallenge:challenge];
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  responseCopy = response;
  self->response = responseCopy;
  AMSupportLogInternal(7, "[AMSupportOSURLConnectionDelegate connection:didReceiveResponse:]", "Received response from URL: %@", responseCopy);
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  AMSupportLogInternal(7, "-[AMSupportOSURLConnectionDelegate connection:didReceiveData:]", "Receiving %d bytes of data from URL", [data length]);
  data = self->_data;

  [(NSMutableData *)data appendData:data];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  self->_error = error;
  AMSupportLogInternal(3, "[AMSupportOSURLConnectionDelegate connection:didFailWithError:]", "Connection error %@ for URL", error);
  self->requestComplete = 1;
}

@end