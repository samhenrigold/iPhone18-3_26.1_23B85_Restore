@interface FCEndpointConnection
+ (id)URLSessionWithSourceApplicationBundleIdentifier:(id)identifier;
- (FCEndpointConnection)initWithSourceApplicationBundleIdentifier:(id)identifier networkBehaviorMonitor:(id)monitor;
- (id)session;
- (void)performAuthenticatedHTTPRequestWithURL:(id)l valuesByHTTPHeaderField:(id)field method:(id)method data:(id)data contentType:(id)type priority:(float)priority reauthenticateIfNeeded:(BOOL)needed networkEventType:(int)self0 callbackQueue:(id)self1 completion:(id)self2;
- (void)performHTTPRequestWithURL:(id)l method:(id)method data:(id)data contentType:(id)type priority:(float)priority requiresMescalSigning:(BOOL)signing networkEventType:(int)eventType callbackQueue:(id)self0 completion:(id)self1;
- (void)performHTTPRequestWithURL:(id)l valuesByHTTPHeaderField:(id)field method:(id)method data:(id)data contentType:(id)type priority:(float)priority requiresMescalSigning:(BOOL)signing requiresAuthKitHeaders:(BOOL)self0 networkEventType:(int)self1 callbackQueue:(id)self2 completion:(id)self3;
@end

@implementation FCEndpointConnection

+ (id)URLSessionWithSourceApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v5 = ephemeralSessionConfiguration;
  if (identifierCopy)
  {
    [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:identifierCopy];
  }

  if (FCProcessIsMemoryConstrained())
  {
    [v5 setURLCache:0];
  }

  [v5 setNetworkServiceType:0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [v5 setHTTPMaximumConnectionsPerHost:{2 * objc_msgSend(processInfo, "processorCount")}];

  [v5 set_timingDataOptions:{objc_msgSend(v5, "_timingDataOptions") | 1}];
  v7 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v5 delegate:0 delegateQueue:0];

  return v7;
}

- (FCEndpointConnection)initWithSourceApplicationBundleIdentifier:(id)identifier networkBehaviorMonitor:(id)monitor
{
  identifierCopy = identifier;
  monitorCopy = monitor;
  v16.receiver = self;
  v16.super_class = FCEndpointConnection;
  v8 = [(FCEndpointConnection *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_networkBehaviorMonitor, monitor);
    v10 = objc_alloc(MEMORY[0x1E69B68D8]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__FCEndpointConnection_initWithSourceApplicationBundleIdentifier_networkBehaviorMonitor___block_invoke;
    v14[3] = &unk_1E7C36F98;
    v15 = identifierCopy;
    v11 = [v10 initWithConstructor:v14];
    lazySession = v9->_lazySession;
    v9->_lazySession = v11;
  }

  return v9;
}

- (id)session
{
  lazySession = [(FCEndpointConnection *)self lazySession];
  value = [lazySession value];

  return value;
}

- (void)performHTTPRequestWithURL:(id)l method:(id)method data:(id)data contentType:(id)type priority:(float)priority requiresMescalSigning:(BOOL)signing networkEventType:(int)eventType callbackQueue:(id)self0 completion:(id)self1
{
  HIDWORD(v11) = eventType;
  LOBYTE(v11) = 0;
  [FCEndpointConnection performHTTPRequestWithURL:"performHTTPRequestWithURL:valuesByHTTPHeaderField:method:data:contentType:priority:requiresMescalSigning:requiresAuthKitHeaders:networkEventType:callbackQueue:completion:" valuesByHTTPHeaderField:l method:0 data:method contentType:data priority:type requiresMescalSigning:signing requiresAuthKitHeaders:v11 networkEventType:queue callbackQueue:completion completion:?];
}

- (void)performHTTPRequestWithURL:(id)l valuesByHTTPHeaderField:(id)field method:(id)method data:(id)data contentType:(id)type priority:(float)priority requiresMescalSigning:(BOOL)signing requiresAuthKitHeaders:(BOOL)self0 networkEventType:(int)self1 callbackQueue:(id)self2 completion:(id)self3
{
  signingCopy = signing;
  v87[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  fieldCopy = field;
  methodCopy = method;
  dataCopy = data;
  typeCopy = type;
  queueCopy = queue;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke;
  aBlock[3] = &unk_1E7C3EDE0;
  v25 = queueCopy;
  v84 = v25;
  v26 = completionCopy;
  v85 = v26;
  v27 = _Block_copy(aBlock);
  v28 = NewsCoreUserDefaults();
  if (![v28 BOOLForKey:@"simulate_retryable_analytics_upload_failure"])
  {
    v56 = v26;
    v57 = v25;
    v59 = dataCopy;
    v29 = MEMORY[0x1E696AEC0];
    host = [lCopy host];
    [v29 stringWithFormat:@"%@-type:%d", host, eventType];
    v32 = v31 = lCopy;

    v82 = 0.0;
    v33 = +[FCThrottleRegistry shared];
    v58 = v32;
    LODWORD(host) = [v33 shouldThrottleGroup:v32 outRetryAfter:&v82];

    v60 = fieldCopy;
    if (host)
    {
      v34 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A998];
      v87[0] = v31;
      v86[0] = v35;
      v86[1] = @"FCErrorRetryAfter";
      v36 = [MEMORY[0x1E696AD98] numberWithDouble:v82];
      v87[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];
      v38 = [v34 fc_errorWithCode:12 description:@"The operation was throttled." additionalUserInfo:v37];

      (*(v27 + 2))(v27, 0, 0, v38);
      lCopy = v31;
LABEL_24:
      v26 = v56;

      fieldCopy = v60;
      v25 = v57;
      goto LABEL_25;
    }

    v39 = methodCopy;
    v40 = v39;
    if (signingCopy)
    {
      lCopy = v31;
      selfCopy2 = self;
      if ([(__CFString *)v39 isEqualToString:@"Signed_GET"])
      {
        v42 = @"GET";

        v43 = [@"SIGNATURE-MESSAGE" dataUsingEncoding:4];

        v59 = v43;
      }

      else
      {
        v42 = v40;
      }

      if ([(__CFString *)v40 isEqualToString:@"Signed_DELETE"])
      {
        v44 = @"DELETE";

        v45 = [@"SIGNATURE-MESSAGE" dataUsingEncoding:4];

        v42 = v44;
        v59 = v45;
      }
    }

    else
    {
      v42 = v39;
      lCopy = v31;
      selfCopy2 = self;
    }

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_3;
    v69[3] = &unk_1E7C418B8;
    v46 = lCopy;
    v70 = v46;
    headersCopy = headers;
    v38 = v42;
    v71 = v38;
    v72 = typeCopy;
    v73 = v60;
    v81 = signingCopy;
    v74 = v40;
    v75 = selfCopy2;
    eventTypeCopy = eventType;
    v76 = v58;
    v47 = v27;
    v77 = v47;
    priorityCopy = priority;
    v48 = _Block_copy(v69);
    v49 = v48;
    dataCopy = v59;
    if (v59)
    {
      if (signingCopy)
      {
        v54 = v46;
        if ([v28 BOOLForKey:@"simulate_bad_analytics_mescal_signature"])
        {
          date = [MEMORY[0x1E695DF00] date];
          v51 = [date description];
          v55 = [v51 dataUsingEncoding:4];
        }

        else
        {
          v55 = v59;
        }

        v53 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v53, OS_LOG_TYPE_DEFAULT, "Endpoint connection will generate Mescal signature", buf, 2u);
        }

        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_42;
        v63[3] = &unk_1E7C418E0;
        v63[4] = selfCopy2;
        v64 = v54;
        v66 = v47;
        v67 = v49;
        v65 = v59;
        [FCMescalSignature signatureFromData:v55 completion:v63];

        goto LABEL_23;
      }

      v52 = v48[2];
    }

    else
    {
      v52 = v48[2];
    }

    v52();
LABEL_23:

    goto LABEL_24;
  }

  (*(v27 + 2))(v27, 0, 0, 0);
LABEL_25:
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_2;
    v14[3] = &unk_1E7C3A0B0;
    v18 = v13;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    dispatch_async(v11, v14);
  }
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695AC18] requestWithURL:*(a1 + 32)];
  v8 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 HTTPUserAgent];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_INFO, "Client request: %@, current userAgent: %@", buf, 0x16u);
  }

  if (*(a1 + 104) == 1)
  {
    [v7 ak_addDeviceUDIDHeader];
    [v7 ak_addClientInfoHeader];
    [v7 ak_addAnisetteHeaders];
  }

  [v7 setHTTPMethod:*(a1 + 40)];
  v11 = *(a1 + 48);
  if (v11)
  {
    [v7 addValue:v11 forHTTPHeaderField:@"Content-Type"];
  }

  v12 = *(a1 + 56);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_26;
  v38[3] = &unk_1E7C3F720;
  v13 = v7;
  v39 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v38];
  v14 = +[FCAppleAccount sharedAccount];
  v15 = [v14 endpointConnectionClientID];
  [v13 addValue:v15 forHTTPHeaderField:@"X-CLIENT-ID"];

  if (v6)
  {
    [v13 addValue:v6 forHTTPHeaderField:@"X-Apple-ActionSignature"];
    if (([*(a1 + 64) isEqualToString:@"Signed_GET"] & 1) != 0 || objc_msgSend(*(a1 + 64), "isEqualToString:", @"Signed_DELETE"))
    {
      [v13 addValue:@"SIGNATURE-MESSAGE" forHTTPHeaderField:@"X-SIGNATURE-MESSAGE"];
      goto LABEL_15;
    }
  }

  else if (*(a1 + 105) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Shouldn't be here if the request requires Mescal signing"];
    *buf = 136315906;
    *&buf[4] = "[FCEndpointConnection performHTTPRequestWithURL:valuesByHTTPHeaderField:method:data:contentType:priority:requiresMescalSigning:requiresAuthKitHeaders:networkEventType:callbackQueue:completion:]_block_invoke_3";
    *&buf[12] = 2080;
    *&buf[14] = "FCEndpointConnection.m";
    *&buf[22] = 1024;
    LODWORD(v41) = 305;
    WORD2(v41) = 2114;
    *(&v41 + 6) = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [v13 setHTTPBody:v5];
LABEL_15:
  v16 = FCAnalyticsLog;
  if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_INFO, "Client request: %@, signature: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v41 = __Block_byref_object_copy__45;
  *(&v41 + 1) = __Block_byref_object_dispose__45;
  v42 = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = [*(a1 + 72) session];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_36;
  v30 = &unk_1E7C41890;
  v37 = *(a1 + 96);
  v20 = v13;
  v36 = v18;
  v35 = buf;
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = *(a1 + 88);
  v23 = [v19 dataTaskWithRequest:v20 completionHandler:&v27];
  v24 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v23;

  LODWORD(v25) = *(a1 + 100);
  [*(*&buf[8] + 40) setPriority:{v25, v27, v28, v29, v30}];
  [*(*&buf[8] + 40) resume];

  _Block_object_dispose(buf, 8);
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_2_27;
  v7[3] = &unk_1E7C36FE8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_36(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a2;
  v9 = NSErrorByUpdatingRetryStatusForError(a4);
  objc_opt_class();
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (*(a1 + 80))
  {
    v12 = [FCNetworkEvent alloc];
    v13 = *(a1 + 80);
    v14 = *(a1 + 32);
    v15 = *(a1 + 72);
    v16 = [*(*(*(a1 + 64) + 8) + 40) _incompleteCurrentTaskTransactionMetrics];
    v17 = [(FCNetworkEvent *)v12 initWithType:v13 URLRequest:v14 operationID:0 requestUUID:0 startTime:v11 HTTPResponse:v16 metrics:v15 containerName:0 error:v9];

    v18 = [*(a1 + 40) networkBehaviorMonitor];
    [v18 logNetworkEvent:v17];
  }

  v19 = +[FCThrottleRegistry shared];
  [v19 processURLResponse:v7 forGroup:*(a1 + 48)];

  v20 = FCAnalyticsLog;
  if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_INFO, "Endpoint response: %@, error: %@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_42(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to sign analytics data with Mescal", v11, 2u);
    }

    v8 = +[FCNetworkReachability sharedNetworkReachability];
    v9 = [v8 isNetworkReachable];

    if (v9)
    {
      (*(a1[7] + 16))();
    }

    else
    {
      v10 = [objc_opt_class() errorForStatus:0 url:a1[5]];
      (*(a1[7] + 16))();
    }
  }

  else
  {
    (*(a1[8] + 16))();
  }
}

- (void)performAuthenticatedHTTPRequestWithURL:(id)l valuesByHTTPHeaderField:(id)field method:(id)method data:(id)data contentType:(id)type priority:(float)priority reauthenticateIfNeeded:(BOOL)needed networkEventType:(int)self0 callbackQueue:(id)self1 completion:(id)self2
{
  lCopy = l;
  fieldCopy = field;
  methodCopy = method;
  dataCopy = data;
  typeCopy = type;
  queueCopy = queue;
  completionCopy = completion;
  v25 = +[FCAppleAccount sharedAccount];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke;
  v34[3] = &unk_1E7C41930;
  v35 = fieldCopy;
  selfCopy = self;
  v37 = lCopy;
  v38 = methodCopy;
  v39 = dataCopy;
  v40 = typeCopy;
  eventTypeCopy = eventType;
  v41 = queueCopy;
  v42 = completionCopy;
  neededCopy = needed;
  priorityCopy = priority;
  v26 = queueCopy;
  v27 = typeCopy;
  v28 = dataCopy;
  v29 = methodCopy;
  v30 = lCopy;
  v31 = fieldCopy;
  v32 = completionCopy;
  [v25 getGSTokenWithCompletionHandler:v34];
}

void __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) mutableCopy];
    v8 = v7;
    v33 = v6;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v12 = v9;

    v47[0] = v5;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    [v12 setObject:v13 forKeyedSubscript:@"X-Apple-GS-Token"];

    v31 = *(a1 + 64);
    v32 = *(a1 + 56);
    v14 = *MEMORY[0x1E695ABC0];
    v29 = *(a1 + 96);
    v15 = *(a1 + 80);
    v30 = *(a1 + 72);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_3;
    v34[3] = &unk_1E7C41908;
    v40 = *(a1 + 104);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v35 = v21;
    v36 = v20;
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v39 = *(a1 + 100);
    v24 = *(a1 + 80);
    v25 = *(a1 + 88);
    *&v26 = v24;
    *(&v26 + 1) = v25;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v37 = v27;
    v38 = v26;
    HIDWORD(v28) = v29;
    LOBYTE(v28) = 1;
    LODWORD(v26) = v14;
    [v16 performHTTPRequestWithURL:v17 valuesByHTTPHeaderField:v12 method:v32 data:v31 contentType:v30 priority:1 requiresMescalSigning:*&v26 requiresAuthKitHeaders:v28 networkEventType:v15 callbackQueue:v34 completion:?];

    v6 = v33;
  }

  else
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_2;
    v44 = &unk_1E7C37778;
    v10 = *(a1 + 88);
    v46 = v10;
    v11 = v6;
    v45 = v11;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0, v11);
      v11 = v45;
    }

    v12 = v46;
  }
}

uint64_t __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

void __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 statusCode] != 401 && objc_msgSend(v7, "statusCode") != 434;
  if (*(a1 + 100) != 1 || v9)
  {
    v12 = *(a1 + 88);
    if (v12)
    {
      (*(v12 + 16))(v12, v13, v7, v8);
    }
  }

  else
  {
    v10 = +[FCAppleAccount sharedAccount];
    [v10 invalidateGSTokenCache];

    LODWORD(v11) = *(a1 + 96);
    [*(a1 + 32) performAuthenticatedHTTPRequestWithURL:*(a1 + 40) valuesByHTTPHeaderField:*(a1 + 48) method:*(a1 + 56) data:*(a1 + 64) contentType:*(a1 + 72) priority:0 reauthenticateIfNeeded:v11 callbackQueue:*(a1 + 80) completion:*(a1 + 88)];
  }
}

@end