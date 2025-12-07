@interface AACertificatePinner
+ (AACertificatePinner)sharedPinner;
+ (BOOL)isSetupServiceHost:(id)host;
+ (BOOL)isValidCertificateTrust:(__SecTrust *)trust;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
@end

@implementation AACertificatePinner

+ (AACertificatePinner)sharedPinner
{
  if (sharedPinner_onceToken != -1)
  {
    +[AACertificatePinner sharedPinner];
  }

  v3 = sharedPinner_sharedPinner;

  return v3;
}

uint64_t __35__AACertificatePinner_sharedPinner__block_invoke()
{
  sharedPinner_sharedPinner = objc_alloc_init(AACertificatePinner);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isSetupServiceHost:(id)host
{
  hostCopy = host;
  v4 = ([hostCopy isEqualToString:@"setup.icloud.com"] & 1) != 0 || objc_msgSend(hostCopy, "rangeOfString:options:", @"^p(0[1-9]|[1-9][0-9]|[1-9][0-9]{2})-setup\\.icloud\\.com\\z", 1024) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge
{
  challengeCopy = challenge;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v7 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]];

  if ((v7 & 1) == 0 || (v8 = objc_opt_class(), [challengeCopy protectionSpace], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "host"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "isSetupServiceHost:", v10), v10, v9, (v8 & 1) == 0))
  {
    sender = [challengeCopy sender];
    [sender performDefaultHandlingForAuthenticationChallenge:challengeCopy];
    goto LABEL_7;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  if (!serverTrust)
  {
    v17 = _AALogSystem(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

    goto LABEL_12;
  }

  v14 = [objc_opt_class() isValidCertificateTrust:serverTrust];
  if ((v14 & 1) == 0)
  {
    v17 = _AALogSystem(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

LABEL_12:

    sender = [challengeCopy sender];
    [sender cancelAuthenticationChallenge:challengeCopy];
    goto LABEL_7;
  }

  sender = [challengeCopy sender];
  v16 = [MEMORY[0x1E695AC48] credentialForTrust:serverTrust];
  [sender useCredential:v16 forAuthenticationChallenge:challengeCopy];

LABEL_7:
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]];

  if ((v10 & 1) == 0 || (v11 = objc_opt_class(), [challengeCopy protectionSpace], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "host"), v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v11, "isSetupServiceHost:", v13), v13, v12, (v11 & 1) == 0))
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_7;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  if (!serverTrust)
  {
    v19 = _AALogSystem(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

    goto LABEL_12;
  }

  v17 = [objc_opt_class() isValidCertificateTrust:serverTrust];
  if ((v17 & 1) == 0)
  {
    v19 = _AALogSystem(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

LABEL_12:

    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_7;
  }

  v18 = [MEMORY[0x1E695AC48] credentialForTrust:serverTrust];
  (handlerCopy)[2](handlerCopy, 0, v18);

LABEL_7:
}

+ (BOOL)isValidCertificateTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AACertificatePinner.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"trustRef"}];
  }

  if (SecTrustSetPinningPolicyName())
  {
    return 0;
  }

  v9 = 0;
  if (MEMORY[0x1B8C9F960](trust, &v9))
  {
    return 0;
  }

  return v9 == 4 || v9 == 1;
}

@end