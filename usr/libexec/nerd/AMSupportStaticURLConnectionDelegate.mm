@interface AMSupportStaticURLConnectionDelegate
- (AMSupportStaticURLConnectionDelegate)init;
- (AMSupportStaticURLConnectionDelegate)initWithData:(id)data Options:(id)options;
- (id)waitForResponseOrError:(id *)error;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
- (void)dealloc;
@end

@implementation AMSupportStaticURLConnectionDelegate

- (AMSupportStaticURLConnectionDelegate)init
{
  v3 = [NSMutableData dataWithCapacity:0];

  return [(AMSupportStaticURLConnectionDelegate *)self initWithData:v3 Options:0];
}

- (AMSupportStaticURLConnectionDelegate)initWithData:(id)data Options:(id)options
{
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate initWithData:Options:]", "init-ing delegate with data=%@ options=%@", data, options);
  v11.receiver = self;
  v11.super_class = AMSupportStaticURLConnectionDelegate;
  v7 = [(AMSupportStaticURLConnectionDelegate *)&v11 init];
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
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate dealloc]", "dealloc-ing delegate");

  self->response = 0;
  self->_data = 0;

  self->_error = 0;
  v3.receiver = self;
  v3.super_class = AMSupportStaticURLConnectionDelegate;
  [(AMSupportStaticURLConnectionDelegate *)&v3 dealloc];
}

- (id)waitForResponseOrError:(id *)error
{
    ;
  }

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
  protectionSpace = [objc_msgSend(challenge protectionSpace];
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Authentication challenge received.  Method: %@", protectionSpace);
  if ([challenge previousFailureCount] >= 1)
  {
    [objc_msgSend(challenge "sender")];

    AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Multiple challenge failures.  Aborting.");
    return;
  }

  if ([protectionSpace isEqual:NSURLAuthenticationMethodClientCertificate] && -[NSDictionary objectForKey:](self->options, "objectForKey:", @"ClientIdentity"))
  {
    AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Received client certificate challenge.");
    v7 = [(NSDictionary *)self->options objectForKey:@"ClientIdentity"];
    items = 0;
    v8 = [(NSDictionary *)self->options objectForKey:@"ClientIdentityPassphrase"];
    v9 = &stru_1000A1550;
    if (v8)
    {
      v9 = v8;
    }

    values = v9;
    keys = kSecImportExportPassphrase;
    v10 = CFDictionaryCreate(0, &keys, &values, 1, 0, 0);
    Length = CFDataGetLength(v7);
    AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "P12 Identity data length=%d", Length);
    v12 = SecPKCS12Import(v7, v10, &items);
    CFRelease(v10);
    if (!v12)
    {
      AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Successfully imported PKCS12 identity");
      ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
      Value = CFDictionaryGetValue(ValueAtIndex, kSecImportItemIdentity);
      certificateRef = 0;
      SecIdentityCopyCertificate(Value, &certificateRef);
      v41 = certificateRef;
      v22 = CFArrayCreate(0, &v41, 1, 0);
      CFRelease(certificateRef);
      v23 = [NSURLCredential credentialWithIdentity:Value certificates:v22 persistence:2];
      CFRelease(v22);
      [objc_msgSend(challenge "sender")];
      AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Returned credentials for challenge.");
      return;
    }

    AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Unable to import client identity, aborting challenge.");
    sender = [challenge sender];
    challengeCopy = challenge;
    goto LABEL_40;
  }

  if ([protectionSpace isEqual:NSURLAuthenticationMethodServerTrust])
  {
    if ([-[NSDictionary objectForKey:](self->options objectForKey:{@"DisableSSLValidation", "isEqual:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1)}])
    {
      AMSupportLogInternal(6, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "SSL validation disabled.  Attempting to continue without authentication.");
      sender2 = [challenge sender];
      v16 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(challenge "protectionSpace")]);

      [sender2 useCredential:v16 forAuthenticationChallenge:challenge];
      return;
    }

    [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"], objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v18 = [(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"];
      challengeCopy2 = challenge;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [NSArray arrayWithObject:[(NSDictionary *)self->options objectForKey:@"TrustedServerCAs"]];
        }

        else
        {
          v18 = 0;
        }
      }

      v24 = [NSMutableArray arrayWithCapacity:[(NSArray *)v18 count]];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = [(NSArray *)v18 countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v18);
            }

            v29 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = SecCertificateCreateWithData(kCFAllocatorDefault, v29);
              if (v30)
              {
                v31 = v30;
                [(NSMutableArray *)v24 addObject:v30];
                CFRelease(v31);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trusted certificate could not be loaded %@", v29);
              }
            }
          }

          v26 = [(NSArray *)v18 countByEnumeratingWithState:&v37 objects:v36 count:16];
        }

        while (v26);
      }

      v32 = [objc_msgSend(challengeCopy2 "protectionSpace")];
      LODWORD(items) = 0;
      AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Attempting trust evaluate");
      if (AMSupportX509ChainEvaluateTrust(v32, v24, &items))
      {
        AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation failed (OSStatus=%d)");
      }

      else
      {
        if (items == 4 || items == 1)
        {
          AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "Trust evaluation succeeded, proceeding..");
          [objc_msgSend(challengeCopy2 "sender")];
          return;
        }

        AMSupportLogInternal(4, "[AMSupportStaticURLConnectionDelegate connection:willSendRequestForAuthenticationChallenge:]", "trust evaluation did not result in okay to proceed (result=%d)");
      }

      sender = [challengeCopy2 sender];
      challengeCopy = challengeCopy2;
LABEL_40:
      [sender cancelAuthenticationChallenge:challengeCopy];
      return;
    }
  }

  sender3 = [challenge sender];

  [sender3 performDefaultHandlingForAuthenticationChallenge:challenge];
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  responseCopy = response;
  self->response = responseCopy;
  AMSupportLogInternal(7, "[AMSupportStaticURLConnectionDelegate connection:didReceiveResponse:]", "Received response from URL: %@", responseCopy);
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  AMSupportLogInternal(7, "-[AMSupportStaticURLConnectionDelegate connection:didReceiveData:]", "Receiving %d bytes of data from URL", [data length]);
  data = self->_data;

  [(NSMutableData *)data appendData:data];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  self->_error = error;
  AMSupportLogInternal(3, "[AMSupportStaticURLConnectionDelegate connection:didFailWithError:]", "Connection error %@ for URL", error);
  self->requestComplete = 1;
}

@end