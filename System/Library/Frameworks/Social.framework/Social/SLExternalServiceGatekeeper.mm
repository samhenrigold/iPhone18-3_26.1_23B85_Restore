@interface SLExternalServiceGatekeeper
- (id)initForPermissionToAccessURL:(id)l fromURLString:(id)string completion:(id)completion;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_completeWithURLToLoad:(id)load error:(id)error;
@end

@implementation SLExternalServiceGatekeeper

- (id)initForPermissionToAccessURL:(id)l fromURLString:(id)string completion:(id)completion
{
  lCopy = l;
  stringCopy = string;
  completionCopy = completion;
  v50.receiver = self;
  v50.super_class = SLExternalServiceGatekeeper;
  v13 = [(SLExternalServiceGatekeeper *)&v50 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
    host = [v14 host];
    redirectHost = v13->_redirectHost;
    v13->_redirectHost = host;

    objc_storeStrong(&v13->_url, l);
    v17 = MEMORY[0x1C6917BF0](completionCopy);
    completion = v13->_completion;
    v13->_completion = v17;

    if ([(SLExternalServiceGatekeeper *)v13 _gatekeepingIsNotAvailable])
    {
      v19 = 0;
LABEL_12:
      v35 = [MEMORY[0x1E696AF68] requestWithURL:v19 cachePolicy:1 timeoutInterval:30.0];
      _SLLog(v5, 7, @"SLExternalServiceGatekeeper loading modified URL: %{private}@", v36, v37, v38, v39, v40, v19);
      v41 = MEMORY[0x1E696AF78];
      ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v44 = [v41 sessionWithConfiguration:ephemeralSessionConfiguration delegate:v13 delegateQueue:mainQueue];

      v45 = [v44 dataTaskWithRequest:v35];
      [v45 resume];

      v46 = v13;
      goto LABEL_13;
    }

    v20 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    v21 = [MEMORY[0x1E696AF20] componentsWithString:stringCopy];
    host2 = [v20 host];
    path = [v20 path];
    if ([host2 length] && objc_msgSend(path, "length"))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@%@", host2, path];
    }

    else
    {
      if (![host2 length])
      {
        _SLLog(v5, 3, @"Failed to parse hostname from loginURL, this can't be good...", v24, v25, v26, v27, v28, v48);
        goto LABEL_11;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", host2, v49];
    }
    v29 = ;
    [v21 setPath:v29];

LABEL_11:
    v19 = [v21 URL];
    _SLLog(v5, 7, @"SLExternalServiceGatekeeper modified the URL: %{private}@", v30, v31, v32, v33, v34, v19);

    goto LABEL_12;
  }

LABEL_13:

  return v13;
}

- (void)_completeWithURLToLoad:(id)load error:(id)error
{
  loadCopy = load;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  completion = selfCopy->_completion;
  if (completion)
  {
    completion[2](completion, loadCopy, errorCopy);
    v9 = selfCopy->_completion;
    selfCopy->_completion = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v47[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  v14 = [requestCopy URL];
  host = [v14 host];
  _SLLog(v7, 7, @"SLExternalServiceGatekeeper willSendRequest called for host: %@", v16, v17, v18, v19, v20, host);

  v21 = [requestCopy URL];
  host2 = [v21 host];
  host3 = [(NSURL *)self->_url host];
  v24 = [host2 isEqualToString:host3];

  if (v24)
  {
    [sessionCopy invalidateAndCancel];
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:self->_url error:0];
LABEL_6:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_7;
  }

  v25 = [requestCopy URL];
  host4 = [v25 host];
  v27 = [host4 isEqualToString:self->_redirectHost];

  v28 = [requestCopy URL];
  v34 = v28;
  if ((v27 & 1) == 0)
  {
    _SLLog(v7, 3, @"SLExternalServiceGatekeeper continuing to load unexpected URL: %{private}@", v29, v30, v31, v32, v33, v28);

    v41 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"BAD_REDIRECT_ERROR_DESCRIPTION" value:&stru_1F41EC300 table:@"Localizable"];
    v47[0] = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v45 = [v41 errorWithDomain:@"SLErrorDomain" code:-2 userInfo:v44];
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:v45];

    goto LABEL_6;
  }

  host5 = [v28 host];
  _SLLog(v7, 7, @"SLExternalServiceGatekeeper continuing to load original URL with host: %@", v36, v37, v38, v39, v40, host5);

  (handlerCopy)[2](handlerCopy, requestCopy);
LABEL_7:
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  _SLLog(v6, 7, @"SLExternalServiceGatekeeper received authentication challenge", v10, v11, v12, v13, v14, v35);
  protectionSpace = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  protectionSpace2 = [challengeCopy protectionSpace];

  authenticationMethod = [protectionSpace2 authenticationMethod];
  v19 = [authenticationMethod isEqualToString:*MEMORY[0x1E696A968]];

  if (v19)
  {
    v37 = 0;
    if (!MEMORY[0x1C6917600](serverTrust, &v37) && (v37 == 4 || v37 == 1))
    {
      v25 = SecTrustCopyInfo();
      if (v25)
      {
        v26 = v25;
        v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E697B340]];
        v28 = v27;
        if (v27 && [v27 isEqualToString:@"Apple Inc."])
        {
          _SLLog(v6, 7, @"SLExternalServiceGatekeeper verified this challenge is Apple's EV SSL certificate", v29, v30, v31, v32, v33, v36);

          v34 = [MEMORY[0x1E696AF30] credentialForTrust:serverTrust];
          handlerCopy[2](handlerCopy, 0, v34);

          goto LABEL_4;
        }
      }
    }
  }

  _SLLog(v6, 7, @"SLExternalServiceGatekeeper failed to identify Apple's EV certificate. Cancelling.", v20, v21, v22, v23, v24, v36);
  handlerCopy[2](handlerCopy, 2, 0);
LABEL_4:
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  if (self->_completion)
  {
    errorCopy = error;
    _SLLog(v4, 7, @"SLExternalServiceGatekeeper failed with error - %@", v6, v7, v8, v9, v10, errorCopy);
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:errorCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  if (self->_completion)
  {
    errorCopy = error;
    _SLLog(v5, 7, @"SLExternalServiceGatekeeper completed with error - %@", v7, v8, v9, v10, v11, errorCopy);
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:errorCopy];
  }
}

@end