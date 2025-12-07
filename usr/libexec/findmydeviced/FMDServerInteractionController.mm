@interface FMDServerInteractionController
- (BOOL)enqueueRequest:(id)request;
- (FMDServerInteractionController)initWithChannels:(id)channels delegate:(id)delegate;
- (NSString)udid;
- (id)account;
- (id)redirectedRequestURLForType:(id)type udid:(id)udid;
- (id)redirectedURL:(id)l;
- (id)requestUrlForType:(id)type udid:(id)udid;
- (void)_beginXPCTransactionForRequest:(id)request;
- (void)_disablePowerAssertionForRequest:(id)request;
- (void)_enablePowerAssertionForRequest:(id)request;
- (void)_endXPCTransactionForRequest:(id)request;
- (void)_evaluateRetriesForRequest:(id)request;
- (void)_handleResponseForRequest:(id)request withStatus:(int64_t)status headers:(id)headers body:(id)body location:(id)location error:(id)error;
- (void)_markRequestCancelled:(id)cancelled;
- (void)_sendRequest:(id)request;
- (void)cancelAllRequests;
- (void)cancelRequest:(id)request;
@end

@implementation FMDServerInteractionController

- (FMDServerInteractionController)initWithChannels:(id)channels delegate:(id)delegate
{
  channelsCopy = channels;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = FMDServerInteractionController;
  v9 = [(FMDServerInteractionController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_channels, channels);
    v11 = +[NSMutableArray array];
    requests = v10->_requests;
    v10->_requests = v11;

    v13 = objc_opt_new();
    requestModifierLock = v10->_requestModifierLock;
    v10->_requestModifierLock = v13;

    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy type])
  {
    authId = [requestCopy authId];
    if (authId && ([requestCopy authToken], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = v8;
      if (authId)
      {
      }

      if (v7 != v9)
      {
        v10 = sub_100002880(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = objc_opt_class();
          v49 = 2048;
          v50 = requestCopy;
          v11 = v48;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) No credentials found. Not sending the request", buf, 0x16u);
        }

        goto LABEL_14;
      }
    }
  }

  cancelled = [requestCopy cancelled];
  if (cancelled)
  {
    v10 = sub_100002880(cancelled);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v48 = objc_opt_class();
      v49 = 2048;
      v50 = requestCopy;
      v13 = v48;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Enqueueing request already cancelled", buf, 0x16u);
    }

LABEL_14:

    v14 = 0;
    goto LABEL_36;
  }

  requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock lock];

  v17 = sub_100002880(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = objc_opt_class();
    v49 = 2048;
    v50 = requestCopy;
    v18 = v48;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Enqueueing request", buf, 0x16u);
  }

  v19 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  requests = [(FMDServerInteractionController *)self requests];
  v21 = [requests countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v21)
  {
    v22 = *v44;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(requests);
        }

        v24 = *(*(&v43 + 1) + 8 * i);
        if ([requestCopy canReplace:v24])
        {
          [v19 addObject:v24];
        }
      }

      v21 = [requests countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v21);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v19;
  v25 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
  v26 = v25;
  if (v25)
  {
    v27 = *v40;
    do
    {
      v28 = 0;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v39 + 1) + 8 * v28);
        v30 = sub_100002880(v25);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          v32 = objc_opt_class();
          *buf = 138413058;
          v48 = v31;
          v49 = 2048;
          v50 = v29;
          v51 = 2112;
          v52 = v32;
          v53 = 2048;
          v54 = requestCopy;
          selfCopy = self;
          v34 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) is being replaced with %@ (0x%lX)", buf, 0x2Au);

          self = selfCopy;
        }

        v25 = [(FMDServerInteractionController *)self cancelRequest:v29];
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v25 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
      v26 = v25;
    }

    while (v25);
  }

  requests2 = [(FMDServerInteractionController *)self requests];
  [requests2 addObject:requestCopy];

  requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock2 unlock];

  [(FMDServerInteractionController *)self _sendRequest:requestCopy];
  v14 = 1;
LABEL_36:

  return v14;
}

- (void)cancelAllRequests
{
  requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDServerInteractionController *)self requests];
  v5 = [requests copy];

  v6 = +[NSMutableArray array];
  [(FMDServerInteractionController *)self setRequests:v6];

  requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock2 unlock];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  channels = [(FMDServerInteractionController *)self channels];
  v9 = [channels countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(channels);
        }

        [*(*(&v20 + 1) + 8 * i) cancelAllRequests];
      }

      v9 = [channels countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(FMDServerInteractionController *)self _markRequestCancelled:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)_sendRequest:(id)request
{
  requestCopy = request;
  if (([requestCopy inProgress] & 1) == 0 && (objc_msgSend(requestCopy, "cancelled") & 1) == 0 && (objc_msgSend(requestCopy, "completed") & 1) == 0 && objc_msgSend(requestCopy, "willRetry"))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    channels = [(FMDServerInteractionController *)self channels];
    v6 = [channels countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v58;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(channels);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        if ([v10 isActive])
        {
          if ([v10 supportsRequestType:{objc_msgSend(requestCopy, "type")}])
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [channels countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v7)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      v11 = v10;

      if (!v11)
      {
        goto LABEL_46;
      }

      v13 = sub_100002880(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        fm_logID = [v11 fm_logID];
        *buf = 138412802;
        v62 = v14;
        v63 = 2048;
        v64 = requestCopy;
        v65 = 2112;
        v66 = fm_logID;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending to channel %@", buf, 0x20u);
      }

      [requestCopy setInProgress:1];
      [requestCopy setAlertFromServerResponse:0];
      willSendHandler = [requestCopy willSendHandler];

      if (willSendHandler)
      {
        willSendHandler2 = [requestCopy willSendHandler];
        (willSendHandler2)[2](willSendHandler2, requestCopy);
      }

      requestUrl = [requestCopy requestUrl];
      v20 = [(FMDServerInteractionController *)self redirectedURL:requestUrl];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        urlTemplateType = [requestCopy urlTemplateType];
        udid = [(FMDServerInteractionController *)self udid];
        v22 = [(FMDServerInteractionController *)self redirectedRequestURLForType:urlTemplateType udid:udid];
      }

      requestBody = [requestCopy requestBody];
      requestBodyData = [requestCopy requestBodyData];
      if (requestBodyData)
      {
        goto LABEL_24;
      }

      if (!requestBody)
      {
LABEL_44:

        goto LABEL_45;
      }

      v56 = 0;
      requestHeaders = [NSJSONSerialization dataWithJSONObject:requestBody options:0 error:&v56];
      v45 = v56;
      requestBodyData = v45;
      if (requestHeaders)
      {
        if (!v45)
        {
          requestBodyData = requestHeaders;
LABEL_24:
          v27 = v22;
          requestHeaders = [requestCopy requestHeaders];
          v29 = [requestHeaders mutableCopy];
          v30 = [v29 objectForKeyedSubscript:@"Authorization"];

          if (v30)
          {
            [v29 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
          }

          v31 = [NSJSONSerialization JSONObjectWithData:requestBodyData options:0 error:0];
          v32 = sub_10000C688(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = objc_opt_class();
            *buf = 138412802;
            v62 = v33;
            v63 = 2048;
            v64 = requestCopy;
            v65 = 2112;
            v66 = v27;
            v34 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending to url %@ ", buf, 0x20u);
          }

          v36 = sub_10000C688(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = objc_opt_class();
            *buf = 138412802;
            v62 = v37;
            v63 = 2048;
            v64 = requestCopy;
            v65 = 2112;
            v66 = v29;
            v38 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending headers: \n%@ ", buf, 0x20u);
          }

          v40 = sub_10000C688(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = objc_opt_class();
            *buf = 138412802;
            v62 = v41;
            v63 = 2048;
            v64 = requestCopy;
            v65 = 2112;
            v66 = v31;
            v42 = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending with body dict : \n%@ ", buf, 0x20u);
          }

          cancelled = [requestCopy cancelled];
          if (cancelled)
          {
            v44 = sub_100002880(cancelled);
            v22 = v27;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              sub_100225ABC(requestCopy);
            }
          }

          else
          {
            [(FMDServerInteractionController *)self _enablePowerAssertionForRequest:requestCopy];
            retryHelper = [requestCopy retryHelper];
            totalRetryCount = [retryHelper totalRetryCount];

            v22 = v27;
            if (!totalRetryCount)
            {
              [(FMDServerInteractionController *)self _beginXPCTransactionForRequest:requestCopy];
            }

            requestId = [requestCopy requestId];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_10012DB58;
            v53[3] = &unk_1002CD360;
            v54 = requestCopy;
            selfCopy = self;
            [v11 sendRequestWithId:requestId toURL:v27 withHeaders:requestHeaders body:requestBodyData completion:v53];

            v44 = v54;
          }

          requestBody = v52;
LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {
        v49 = sub_100002880(v45);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100225B48(requestCopy);
        }

        if (!requestBodyData)
        {
          goto LABEL_44;
        }
      }

      v50 = sub_100002880(v45);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_100225BDC();
      }

      v44 = sub_10000C688(v51);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100225C70();
      }

      goto LABEL_43;
    }

LABEL_14:
    v11 = channels;
LABEL_45:
  }

LABEL_46:
}

- (void)_handleResponseForRequest:(id)request withStatus:(int64_t)status headers:(id)headers body:(id)body location:(id)location error:(id)error
{
  requestCopy = request;
  headersCopy = headers;
  bodyCopy = body;
  locationCopy = location;
  errorCopy = error;
  v16 = sub_10000C688(errorCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    domain = [errorCopy domain];
    *buf = 138413314;
    v94 = v17;
    v95 = 2048;
    v96 = requestCopy;
    v97 = 2048;
    statusCopy = status;
    v99 = 2112;
    v100 = domain;
    v101 = 2048;
    code = [errorCopy code];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) received response with status %ld, error %@:%ld", buf, 0x34u);
  }

  v21 = sub_10000C688(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = v22;
    v24 = [headersCopy objectForKeyedSubscript:@"X-Apple-Request-UUID"];
    v25 = [headersCopy objectForKeyedSubscript:@"X-Request-UUID"];
    v26 = [headersCopy objectForKeyedSubscript:@"X-Responding-Instance"];
    *buf = 138413314;
    v94 = v22;
    v95 = 2048;
    v96 = requestCopy;
    v97 = 2114;
    statusCopy = v24;
    v99 = 2114;
    v100 = v25;
    v101 = 2114;
    code = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) X-Apple-Request-UUID: %{public}@, X-Request-UUID: %{public}@, X-Apple-Responding-Instance : %{public}@", buf, 0x34u);
  }

  v28 = sub_10000C688(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v30 = v29;
    v31 = [headersCopy description];
    *buf = 138412802;
    v94 = v29;
    v95 = 2048;
    v96 = requestCopy;
    v97 = 2112;
    statusCopy = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) received headers: \n%@", buf, 0x20u);
  }

  if (bodyCopy)
  {
    v32 = [[NSString alloc] initWithData:bodyCopy encoding:4];
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_10000C688(v32);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = objc_opt_class();
    *buf = 138412802;
    v94 = v35;
    v95 = 2048;
    v96 = requestCopy;
    v97 = 2112;
    statusCopy = v33;
    v36 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) raw response body : %@", buf, 0x20u);
  }

  [requestCopy setHttpResponseStatus:status];
  [requestCopy setHttpResponseHeaders:headersCopy];
  [requestCopy setHttpResponseError:errorCopy];
  if ([bodyCopy length])
  {
    v92 = 0;
    v37 = [NSJSONSerialization JSONObjectWithData:bodyCopy options:0 error:&v92];
    v38 = v92;
    v39 = v38;
    if (v37 || !v38)
    {
      v41 = [requestCopy setHttpResponseBody:v37];
      if (!v37)
      {
LABEL_21:

        goto LABEL_22;
      }

      v40 = sub_10000C688(v41);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        v43 = v42;
        v44 = [v37 description];
        *buf = 138412802;
        v94 = v42;
        v95 = 2048;
        v96 = requestCopy;
        v97 = 2112;
        statusCopy = v44;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) response body dict : \n%@", buf, 0x20u);
      }
    }

    else
    {
      v40 = sub_100002880(v38);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_100225D04();
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  httpResponseBody = [requestCopy httpResponseBody];
  v46 = httpResponseBody == 0;

  if (!v46)
  {
    httpResponseBody2 = [requestCopy httpResponseBody];
    v48 = [httpResponseBody2 objectForKeyedSubscript:@"alert"];
    fm_nullToNil = [v48 fm_nullToNil];
    [requestCopy setAlertFromServerResponse:fm_nullToNil];
  }

  [requestCopy setCompleted:{objc_msgSend(requestCopy, "responseErrorType") == 0}];
  if ([requestCopy responseErrorType] == 1025)
  {
    httpResponseHeaders = [requestCopy httpResponseHeaders];
    v51 = [httpResponseHeaders stringForCaseInsensitiveStringKey:@"X-Apple-MMe-Host"];

    if (v51)
    {
      urlTemplateType = [requestCopy urlTemplateType];
      udid = [(FMDServerInteractionController *)self udid];
      v54 = [(FMDServerInteractionController *)self redirectedRequestURLForType:urlTemplateType udid:udid];
      host = [v54 host];

      account = [(FMDServerInteractionController *)self account];
      authId = [account authId];
      [FMDRealmSupport setRedirectedHost:v51 forHost:host withContext:authId];

      v59 = sub_100002880(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = objc_opt_class();
        v61 = v60;
        account2 = [(FMDServerInteractionController *)self account];
        authId2 = [account2 authId];
        *buf = 138413314;
        v94 = v60;
        v95 = 2048;
        v96 = requestCopy;
        v97 = 2112;
        statusCopy = host;
        v99 = 2112;
        v100 = v51;
        v101 = 2112;
        code = authId2;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Realm redirection from %@ to %@ for %@", buf, 0x34u);
      }
    }
  }

  [(FMDServerInteractionController *)self _evaluateRetriesForRequest:requestCopy];
  [requestCopy setInProgress:0];
  completionHandler = [requestCopy completionHandler];

  if (completionHandler)
  {
    v66 = sub_10000C688(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      sub_100225D9C(requestCopy);
    }

    completionHandler2 = [requestCopy completionHandler];
    (completionHandler2)[2](completionHandler2, requestCopy);
  }

  alertFromServerResponse = [requestCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    delegate = [(FMDServerInteractionController *)self delegate];
    [delegate didReceiveServerAlertForRequest:requestCopy];
  }

  httpResponseHeaders2 = [requestCopy httpResponseHeaders];
  v71 = [httpResponseHeaders2 stringForCaseInsensitiveStringKey:@"X-Apple-Force-Register"];
  if ([v71 isEqualToString:@"true"])
  {
  }

  else
  {
    httpResponseHeaders3 = [requestCopy httpResponseHeaders];
    v73 = [httpResponseHeaders3 BOOLForCaseInsensitiveStringKey:@"X-Apple-Force-Register"];

    if (!v73)
    {
      goto LABEL_40;
    }
  }

  v74 = +[FMDServiceProvider activeServiceProvider];
  [v74 registerDeviceWithCause:@"ForcedServerRegister" force:1];

LABEL_40:
  httpResponseHeaders4 = [requestCopy httpResponseHeaders];
  v76 = [httpResponseHeaders4 objectForKey:@"X-Apple-Ctx"];

  if (v76)
  {
    v77 = +[FMDProtectedContextManager sharedManager];
    [v77 cleanupAllContextsForKey:@"serverContextHeaderContext"];

    v78 = +[FMDProtectedContextManager sharedManager];
    v79 = [v78 saveContext:v76 forContextKey:@"serverContextHeaderContext" dataProtectionClass:4];
  }

  willRetry = [requestCopy willRetry];
  if ((willRetry & 1) == 0)
  {
    v81 = sub_100002880(willRetry);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = objc_opt_class();
      *buf = 138412546;
      v94 = v82;
      v95 = 2048;
      v96 = requestCopy;
      v83 = v82;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Removing from the queue as it was completed or it exhausted its retries", buf, 0x16u);
    }

    [requestCopy deinitializeRequest];
    requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
    [requestModifierLock lock];

    requests = [(FMDServerInteractionController *)self requests];
    [requests removeObject:requestCopy];

    requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
    [requestModifierLock2 unlock];

    [(FMDServerInteractionController *)self _endXPCTransactionForRequest:requestCopy];
  }

  if ([requestCopy responseErrorType] == 257)
  {
    delegate2 = [(FMDServerInteractionController *)self delegate];
    [delegate2 didReceiveAuthFailureForRequest:requestCopy];
  }

  [(FMDServerInteractionController *)self _disablePowerAssertionForRequest:requestCopy];
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100002880(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = objc_opt_class();
    v23 = 2048;
    v24 = requestCopy;
    v6 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancelling request %@ (0x%lX)", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  channels = [(FMDServerInteractionController *)self channels];
  v8 = [channels countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(channels);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        requestId = [requestCopy requestId];
        [v11 cancelRequestWithId:requestId];
      }

      v8 = [channels countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(FMDServerInteractionController *)self _markRequestCancelled:requestCopy];
  requestModifierLock = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDServerInteractionController *)self requests];
  [requests removeObject:requestCopy];

  requestModifierLock2 = [(FMDServerInteractionController *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)_markRequestCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  v5 = sub_100002880(cancelledCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412546;
    *&v9[4] = objc_opt_class();
    *&v9[12] = 2048;
    *&v9[14] = cancelledCopy;
    v6 = *&v9[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Marking request cancelled %@ (0x%lX)", v9, 0x16u);
  }

  [cancelledCopy setCancelled:1];
  [cancelledCopy setInProgress:0];
  [(FMDServerInteractionController *)self _evaluateRetriesForRequest:cancelledCopy];
  completionHandler = [cancelledCopy completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [cancelledCopy completionHandler];
    (completionHandler2)[2](completionHandler2, cancelledCopy);
  }

  [cancelledCopy deinitializeRequest];
  [(FMDServerInteractionController *)self _endXPCTransactionForRequest:cancelledCopy];
  [(FMDServerInteractionController *)self _disablePowerAssertionForRequest:cancelledCopy];
}

- (void)_evaluateRetriesForRequest:(id)request
{
  requestCopy = request;
  retryHelper = [requestCopy retryHelper];

  if (!retryHelper)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, requestCopy);
    v6 = [FMDRequestRetryHelper alloc];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10012EB70;
    v12 = &unk_1002CD388;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v7 = [(FMDRequestRetryHelper *)v6 initWithRequest:requestCopy retryAction:&v9];
    [requestCopy setRetryHelper:{v7, v9, v10, v11, v12}];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  retryHelper2 = [requestCopy retryHelper];
  [retryHelper2 checkAndScheduleRetries];
}

- (void)_beginXPCTransactionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 beginTransaction:requestCopy];
}

- (void)_endXPCTransactionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMXPCTransactionManager sharedInstance];
  [v6 endTransaction:requestCopy];
}

- (void)_enablePowerAssertionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMDPowerMgr sharedInstance];
  [v6 powerAssertionEnableWithReason:requestCopy];
}

- (void)_disablePowerAssertionForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestCopy = [NSString stringWithFormat:@"%@-0x%p", v5, requestCopy];

  v6 = +[FMDPowerMgr sharedInstance];
  [v6 powerAssertionDisableWithReason:requestCopy];
}

- (id)requestUrlForType:(id)type udid:(id)udid
{
  udidCopy = udid;
  typeCopy = type;
  v8 = +[FMDServerConfig sharedInstance];
  v9 = [v8 urlTemplateForRequestType:typeCopy];

  v10 = objc_alloc_init(RequestTemplateURL);
  account = [(FMDServerInteractionController *)self account];
  v12 = [(RequestTemplateURL *)v10 urlFromTemplate:v9 account:account udid:udidCopy];

  return v12;
}

- (id)redirectedRequestURLForType:(id)type udid:(id)udid
{
  v5 = [(FMDServerInteractionController *)self requestUrlForType:type udid:udid];
  v6 = [(FMDServerInteractionController *)self redirectedURL:v5];

  return v6;
}

- (id)redirectedURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    host = [lCopy host];
    account = [(FMDServerInteractionController *)self account];
    authId = [account authId];
    v9 = [FMDRealmSupport redirectedHostForHost:host withContext:authId];

    v10 = v5;
    if (v9)
    {
      v10 = v5;
      if (([host isEqualToString:v9] & 1) == 0)
      {
        v10 = [v5 URLByReplacingHost:v9];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)account
{
  requestAccount = [(FMDServerInteractionController *)self requestAccount];

  if (requestAccount)
  {
    requestAccount2 = [(FMDServerInteractionController *)self requestAccount];
  }

  else
  {
    delegate = [(FMDServerInteractionController *)self delegate];
    requestAccount2 = [delegate accountForServerInteractionController:self];
  }

  return requestAccount2;
}

- (NSString)udid
{
  v3 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v3 deviceUDID];

  if (self->_udid)
  {
    udid = self->_udid;
  }

  else
  {
    udid = deviceUDID;
  }

  v6 = udid;

  return udid;
}

@end