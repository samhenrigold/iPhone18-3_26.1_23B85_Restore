@interface AIASSession
- (AIASSession)init;
- (id)getRequest:(id)request;
- (id)requestWithURL:(id)l data:(__CFDictionary *)data clientInfo:(id)info proxiedClientInfo:(id)clientInfo companionClientInfo:(id)companionClientInfo appleITeamId:(id)id appleIClientId:(id)clientId additionalHeaders:(id)self0;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)invalidateAndCancel;
@end

@implementation AIASSession

- (AIASSession)init
{
  v5.receiver = self;
  v5.super_class = AIASSession;
  v2 = [(AIASSession *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(AIASSession *)v2 setTaskMap:dictionary];

    [(AIASSession *)v2 setInvalidated:0];
  }

  return v2;
}

- (id)getRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskMap = [(AIASSession *)selfCopy taskMap];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "taskIdentifier")}];
  v8 = [taskMap objectForKeyedSubscript:v7];

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)requestWithURL:(id)l data:(__CFDictionary *)data clientInfo:(id)info proxiedClientInfo:(id)clientInfo companionClientInfo:(id)companionClientInfo appleITeamId:(id)id appleIClientId:(id)clientId additionalHeaders:(id)self0
{
  lCopy = l;
  infoCopy = info;
  clientInfoCopy = clientInfo;
  companionClientInfoCopy = companionClientInfo;
  idCopy = id;
  clientIdCopy = clientId;
  headersCopy = headers;
  v23 = [AIASRequest alloc];
  v40 = infoCopy;
  v24 = infoCopy;
  v25 = clientInfoCopy;
  v26 = companionClientInfoCopy;
  v27 = [(AIASRequest *)v23 initWithURL:lCopy data:data clientInfo:v24 proxiedClientInfo:v25 companionClientInfo:companionClientInfoCopy appleITeamId:idCopy appleIClientId:clientIdCopy additionalHeaders:headersCopy];
  if (v27)
  {
    v39 = lCopy;
    uRLSession = [(AIASSession *)self URLSession];
    [(AIASRequest *)v27 setSession:uRLSession];

    uRLSession2 = [(AIASSession *)self URLSession];
    uRLRequest = [(AIASRequest *)v27 URLRequest];
    v31 = [uRLSession2 dataTaskWithRequest:uRLRequest];
    [(AIASRequest *)v27 setTask:v31];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    taskMap = [(AIASSession *)selfCopy taskMap];
    v34 = MEMORY[0x277CCABB0];
    task = [(AIASRequest *)v27 task];
    v36 = [v34 numberWithUnsignedInteger:{objc_msgSend(task, "taskIdentifier")}];
    [taskMap setObject:v27 forKeyedSubscript:v36];

    objc_sync_exit(selfCopy);
    v37 = v27;
    lCopy = v39;
  }

  return v27;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = [(AIASSession *)self getRequest:task];
  if (!v11)
  {
    goto LABEL_33;
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v14 = [authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]];

  if (!v14)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_34;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  v19 = _AIDASOSLog(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 136446210;
    v37 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
    _os_log_impl(&dword_24056C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: checking pinning", &v36, 0xCu);
  }

  protectionSpace3 = [challengeCopy protectionSpace];
  host = [protectionSpace3 host];
  v36 = 0;
  AppleGSService = SecPolicyCreateAppleGSService();
  if (AppleGSService)
  {
    v23 = AppleGSService;
    if (SecTrustSetPolicies(serverTrust, AppleGSService) || MEMORY[0x245CC49D0](serverTrust, &v36))
    {
      CFRelease(v23);
    }

    else
    {
      v24 = v36;
      CFRelease(v23);
      if (v24 == 1 || v24 == 4)
      {

        goto LABEL_11;
      }
    }
  }

  if (!allowSkipSettingOnInternalHardware(@"AppleIDAuthSupportNoPinning", 0))
  {
    goto LABEL_28;
  }

  SSL = SecPolicyCreateSSL(1u, host);
  if (!SSL)
  {
    goto LABEL_28;
  }

  v32 = SSL;
  if (SecTrustSetPolicies(serverTrust, SSL) || MEMORY[0x245CC49D0](serverTrust, &v36))
  {
    CFRelease(v32);
LABEL_28:

    goto LABEL_29;
  }

  v33 = v36;
  CFRelease(v32);

  if (v33 != 1 && v33 != 4)
  {
LABEL_29:
    v29 = _AIDASOSLog(v34, v35);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 136446210;
      v37 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
      v30 = "%{public}s: pinning failed";
      goto LABEL_31;
    }

LABEL_32:

LABEL_33:
    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_34;
  }

LABEL_11:
  context = [v11 context];
  if (context)
  {
    context = checkChannelBindings(serverTrust, [v11 context]);
    if ((context & 1) == 0)
    {
      v29 = _AIDASOSLog(context, v26);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136446210;
        v37 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
        v30 = "%{public}s: channel bindings failed";
LABEL_31:
        _os_log_impl(&dword_24056C000, v29, OS_LOG_TYPE_DEFAULT, v30, &v36, 0xCu);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  v27 = _AIDASOSLog(context, v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 136446210;
    v37 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
    _os_log_impl(&dword_24056C000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: use credentials", &v36, 0xCu);
  }

  v28 = [MEMORY[0x277CBAB80] credentialForTrust:serverTrust];
  (handlerCopy)[2](handlerCopy, 0, v28);

LABEL_34:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = [(AIASSession *)self getRequest:task];
  v10 = v8;
  if (v8)
  {
    v11 = _AIDASOSLog(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446722;
      v14 = "[AIASSession URLSession:dataTask:didReceiveData:]";
      v15 = 2112;
      v16 = v10;
      v17 = 2048;
      v18 = [dataCopy length];
      _os_log_impl(&dword_24056C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %@ got more data: %lu bytes", &v13, 0x20u);
    }

    data = [v10 data];
    [data appendData:dataCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = [(AIASSession *)self getRequest:taskCopy];
  if (v11)
  {
    v12 = [taskCopy description];
    [v11 setNetworkTaskDescription:v12];

    v15 = _AIDASOSLog(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      networkTaskDescription = [v11 networkTaskDescription];
      v25 = 136446978;
      v26 = "[AIASSession URLSession:task:didCompleteWithError:]";
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = networkTaskDescription;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&dword_24056C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: %@: %@: %@", &v25, 0x2Au);
    }

    session = [v11 session];
    v18 = session == sessionCopy;

    if (v18)
    {
      if (errorCopy)
      {
        [v11 setError:errorCopy];
      }

      else
      {
        [v11 setSuccess:1];
      }

      sema = [v11 sema];
      dispatch_semaphore_signal(sema);

      selfCopy = self;
      objc_sync_enter(selfCopy);
      taskMap = [(AIASSession *)selfCopy taskMap];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
      [taskMap removeObjectForKey:v24];

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = _AIDASOSLog(v19, v20);
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136446210;
        v26 = "[AIASSession URLSession:task:didCompleteWithError:]";
        _os_log_impl(&dword_24056C000, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "%{public}s: got reply after we abandoned the request", &v25, 0xCu);
      }
    }
  }
}

- (void)invalidateAndCancel
{
  obj = self;
  objc_sync_enter(obj);
  if (![(AIASSession *)obj invalidated])
  {
    uRLSession = [(AIASSession *)obj URLSession];
    [uRLSession invalidateAndCancel];

    [(AIASSession *)obj setInvalidated:1];
  }

  objc_sync_exit(obj);
}

@end