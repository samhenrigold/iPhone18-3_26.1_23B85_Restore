@interface WLURLSessionController
- (WLURLSessionController)initWithAuthentication:(id)authentication;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WLURLSessionController

- (WLURLSessionController)initWithAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v14.receiver = self;
  v14.super_class = WLURLSessionController;
  v6 = [(WLURLSessionController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auth, authentication);
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
    [defaultSessionConfiguration setTLSMaximumSupportedProtocolVersion:772];
    [defaultSessionConfiguration setHTTPMaximumConnectionsPerHost:1];
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    delegateOperationQueue = v7->_delegateOperationQueue;
    v7->_delegateOperationQueue = v9;

    v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:v7 delegateQueue:v7->_delegateOperationQueue];
    urlSession = v7->_urlSession;
    v7->_urlSession = v11;

    _WLLog();
  }

  return v7;
}

- (void)dealloc
{
  _WLLog();
  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  urlSession = self->_urlSession;
  self->_urlSession = 0;

  v5.receiver = self;
  v5.super_class = WLURLSessionController;
  [(WLURLSessionController *)&v5 dealloc];
}

- (void)invalidate
{
  urlSession = self->_urlSession;
  _WLLog();
  [(NSURLSession *)self->_urlSession invalidateAndCancel:self];
  v3 = self->_urlSession;
  self->_urlSession = 0;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  _WLLog();

  if ([challengeCopy previousFailureCount])
  {
    failureResponse = [challengeCopy failureResponse];
    _WLLog();

LABEL_3:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_14;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod2 = [protectionSpace2 authenticationMethod];
  v14 = [authenticationMethod2 isEqualToString:*MEMORY[0x277CCA700]];

  if (v14)
  {
    v15 = +[WLCredentialStore sharedInstance];
    v16 = [v15 credentialsForAuthentication:self->_auth];

    [v16 localCertificate];
    [v16 privateKey];
    v17 = SecIdentityCreate();
    v18 = MEMORY[0x277CCACF0];
    v35[0] = [v16 localCertificate];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v20 = [v18 credentialWithIdentity:v17 certificates:v19 persistence:2];

    (handlerCopy)[2](handlerCopy, 0, v20);
    goto LABEL_14;
  }

  protectionSpace3 = [challengeCopy protectionSpace];
  authenticationMethod3 = [protectionSpace3 authenticationMethod];
  v23 = [authenticationMethod3 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v23)
  {
    goto LABEL_3;
  }

  v24 = +[WLCredentialStore sharedInstance];
  v25 = [v24 credentialsForAuthentication:self->_auth];

  [v25 remoteCertificate];
  v26 = SecCertificateCopySHA256Digest();
  protectionSpace4 = [challengeCopy protectionSpace];
  v28 = SecTrustCopyCertificateChain([protectionSpace4 serverTrust]);

  if (CFArrayGetCount(v28))
  {
    CFArrayGetValueAtIndex(v28, 0);
    v29 = SecCertificateCopySHA256Digest();
    if ([v26 isEqualToData:v29])
    {
      v30 = MEMORY[0x277CCACF0];
      protectionSpace5 = [challengeCopy protectionSpace];
      v32 = [v30 credentialForTrust:{objc_msgSend(protectionSpace5, "serverTrust")}];
      (handlerCopy)[2](handlerCopy, 0, v32);
    }

    else
    {
      _WLLog();
      handlerCopy[2](handlerCopy, 3, 0);
    }
  }

  else
  {
    _WLLog();
    handlerCopy[2](handlerCopy, 3, 0);
  }

LABEL_14:
}

@end