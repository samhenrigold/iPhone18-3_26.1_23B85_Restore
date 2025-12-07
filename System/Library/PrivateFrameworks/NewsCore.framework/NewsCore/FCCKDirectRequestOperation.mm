@interface FCCKDirectRequestOperation
- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)reachability offlineReason:(int64_t *)reason;
- (BOOL)validateOperation;
- (FCCKDirectRequestOperation)initWithNetworkReachability:(id)reachability;
- (double)preferredTimeoutIntervalForRequest;
- (id)_bundleIDToReport;
- (id)_requestBodyData;
- (id)throttleGroup;
- (uint64_t)_isDebugOperation;
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)_finishWithResponsePayload:(void *)payload;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)resetForRetry;
- (void)setNetworkBehaviorMonitor:(uint64_t)monitor;
- (void)setResultError:(uint64_t)error;
- (void)setResultErrorsByRequestID:(uint64_t)d;
- (void)setResultResponseOperations:(uint64_t)operations;
@end

@implementation FCCKDirectRequestOperation

- (id)throttleGroup
{
  if (self)
  {
    containerName = self->_containerName;
  }

  else
  {
    containerName = 0;
  }

  v4 = containerName;
  if ([(FCOperation *)self relativePriority]== -1 && (!self || !self->_edgeCacheHint))
  {
    v5 = [(NSString *)v4 stringByAppendingString:@"-lowpriority"];

    v4 = v5;
  }

  return v4;
}

- (uint64_t)_isDebugOperation
{
  if (!self || !NFInternalBuild())
  {
    return 0;
  }

  purpose = [self purpose];
  v3 = [purpose isEqualToString:@"debugging"];

  return v3;
}

- (void)performOperation
{
  selfCopy = self;
  v114 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_requests;
  }

  if ([(FCCKDirectRequestOperation *)self count]< 0x191)
  {
    objc_opt_self();
    if (qword_1EDB269B0 != -1)
    {
      dispatch_once(&qword_1EDB269B0, &__block_literal_global_64);
    }

    v87 = qword_1EDB269A8;
    if (!selfCopy)
    {
      v8 = 0;
      goto LABEL_57;
    }

    v7 = selfCopy->_baseURL;
    v8 = objc_opt_new();
    FCOperationFlagsApplyToURLRequest([(FCOperation *)selfCopy flags], v8);
    [(FCCKDirectRequestOperation *)selfCopy preferredTimeoutIntervalForRequest];
    [v8 setTimeoutInterval:?];
    v9 = v7;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    port = [(NSURL *)v9 port];
    if (port)
    {
      v12 = MEMORY[0x1E696AEC0];
      port2 = [(NSURL *)v9 port];
      v14 = [v12 stringWithFormat:@":%@", port2];
    }

    else
    {
      v14 = &stru_1F2DC7DC0;
    }

    [dictionary setObject:selfCopy->_requestUUID forKeyedSubscript:@"X-Apple-Request-UUID"];
    v15 = FCClientInfoHeaderValue();
    [dictionary setObject:v15 forKeyedSubscript:@"X-MMe-Client-Info"];

    v16 = FCUserAgentHeaderValue();
    [dictionary setObject:v16 forKeyedSubscript:@"User-Agent"];

    [dictionary setObject:selfCopy->_containerName forKeyedSubscript:@"X-CloudKit-ContainerId"];
    v17 = MEMORY[0x1E696AEC0];
    scheme = [(NSURL *)v9 scheme];
    host = [(NSURL *)v9 host];
    v20 = [v17 stringWithFormat:@"%@ desc=%@://%@%@/static/protobuf/CloudDB/CloudDBClient.desc; messageType=RequestOperation; delimited=true", @"application/x-protobuf", scheme, host, v14];;
    [dictionary setObject:v20 forKeyedSubscript:@"Content-Type"];

    [dictionary setObject:@"client=1;comments=1;device=1;presence=1;records=1;sharing=1;subscriptions=1;users=1;" forKeyedSubscript:@"X-CloudKit-ProtocolVersion"];
    [dictionary setObject:@"application/x-protobuf" forKeyedSubscript:@"Accept"];
    _bundleIDToReport = [FCCKDirectRequestOperation _bundleIDToReport];
    [dictionary setObject:_bundleIDToReport forKeyedSubscript:@"X-CloudKit-BundleId"];
    [dictionary setObject:@"Public" forKeyedSubscript:@"X-CloudKit-DatabaseScope"];
    [dictionary setObject:@"gzip" forKeyedSubscript:@"Content-Encoding"];
    [dictionary setObject:@"no-transform" forKeyedSubscript:@"Cache-Control"];
    objc_opt_self();
    if (qword_1EDB269B8 != -1)
    {
      dispatch_once(&qword_1EDB269B8, &__block_literal_global_174_0);
    }

    if (_MergedGlobals_7 == 1)
    {
      [dictionary setObject:@"DEBUG" forKeyedSubscript:@"X-Apple-Request-Log-Level"];
    }

    v22 = NewsCoreUserDefaults();
    v23 = [v22 stringForKey:@"cloudkit_partition_override"];

    if ([v23 length])
    {
      [dictionary setObject:v23 forKeyedSubscript:@"X-Requested-Partition"];
    }

    if (NFInternalBuild())
    {
      [dictionary setObject:@"true" forKeyedSubscript:@"X-Apple-Internal-News"];
    }

    [dictionary setObject:@"true" forKeyedSubscript:@"X-Apple-News-Feature-NewTodayFeed"];
    [dictionary setObject:@"true" forKeyedSubscript:@"X-Apple-News-Feature-NewTagFeed"];
    if (selfCopy->_additionalRequestHTTPHeaders)
    {
      [dictionary addEntriesFromDictionary:?];
    }

    [v8 setAllHTTPHeaderFields:dictionary];
    if (!selfCopy->_edgeCacheHint)
    {
      [v8 setURL:v9];
      [v8 setHTTPMethod:@"POST"];
      _requestBodyData = [(FCCKDirectRequestOperation *)selfCopy _requestBodyData];
      [v8 setHTTPBody:_requestBodyData];

      [v8 setCachePolicy:1];
      goto LABEL_45;
    }

    v24 = selfCopy->_requests;
    if ([(NSArray *)v24 count]== 1)
    {
      firstObject = [(NSArray *)selfCopy->_requests firstObject];
      queryRetrieveRequest = [firstObject queryRetrieveRequest];

      if (queryRetrieveRequest)
      {
LABEL_33:
        [v8 setHTTPMethod:@"GET"];
        _requestBodyData2 = [(FCCKDirectRequestOperation *)selfCopy _requestBodyData];
        v29 = [_requestBodyData2 base64EncodedStringWithOptions:0];
        [v8 addValue:v29 forHTTPHeaderField:@"X-Apple-CloudKit-Request-Body"];

        [v8 setValue:0 forHTTPHeaderField:@"Cache-Control"];
        v30 = MEMORY[0x1E696AEC0];
        v31 = selfCopy->_edgeCacheHint;
        groupName = [(FCEdgeCacheHint *)v31 groupName];
        cacheControlKey = [(FCEdgeCacheHint *)selfCopy->_edgeCacheHint cacheControlKey];
        v86 = [v30 stringWithFormat:@"%@/%@", groupName, cacheControlKey];

        data = [MEMORY[0x1E695DF88] data];
        firstObject2 = [(NSArray *)selfCopy->_requests firstObject];
        queryRetrieveRequest2 = [firstObject2 queryRetrieveRequest];
        data2 = [queryRetrieveRequest2 data];
        [data appendData:data2];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        objc_opt_self();
        if (qword_1EDB269C8 != -1)
        {
          dispatch_once(&qword_1EDB269C8, &__block_literal_global_176);
        }

        v38 = qword_1EDB269C0;
        v39 = [v38 countByEnumeratingWithState:&v98 objects:buf count:16];
        if (v39)
        {
          v40 = *v99;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v99 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = *(*(&v98 + 1) + 8 * i);
              allHTTPHeaderFields = [v8 allHTTPHeaderFields];
              v44 = [allHTTPHeaderFields objectForKey:v42];

              if (v44)
              {
                v45 = [v44 dataUsingEncoding:4];
                [data appendData:v45];
              }
            }

            v39 = [v38 countByEnumeratingWithState:&v98 objects:buf count:16];
          }

          while (v39);
        }

        fc_sha256 = [data fc_sha256];
        v47 = [fc_sha256 fc_URLSafeBase64EncodedStringWithOptions:0];
        v48 = [v86 stringByAppendingPathComponent:v47];
        v49 = [(NSURL *)v9 URLByAppendingPathComponent:v48];
        [v8 setURL:v49];

        [v8 setCachePolicy:1];
LABEL_45:
        if (selfCopy->_edgeCacheHint)
        {
          v50 = FCOperationLog;
          if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
          {
            v51 = v50;
            shortOperationDescription = [(FCOperation *)selfCopy shortOperationDescription];
            v53 = [v8 URL];
            *buf = 138543618;
            *&buf[4] = shortOperationDescription;
            *&buf[12] = 2114;
            *&buf[14] = v53;
            _os_log_impl(&dword_1B63EF000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ will issue request to CK-at-Edge with URL %{public}@", buf, 0x16u);
          }

          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 3221225472;
          v95[2] = __46__FCCKDirectRequestOperation_performOperation__block_invoke;
          v95[3] = &unk_1E7C40070;
          v95[4] = selfCopy;
          v96 = v87;
          v8 = v8;
          v97 = v8;
          v54 = __46__FCCKDirectRequestOperation_performOperation__block_invoke(v95);

          if (v54)
          {
            response = [v54 response];
            [response _calculatedExpiration];
            v57 = v56;
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            if (v57 > v58)
            {

LABEL_52:
              v61 = FCOperationLog;
              if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
              {
                v62 = v61;
                shortOperationDescription2 = [(FCOperation *)selfCopy shortOperationDescription];
                v64 = MEMORY[0x1E695DF00];
                response2 = [v54 response];
                [response2 _calculatedExpiration];
                v66 = [v64 dateWithTimeIntervalSinceReferenceDate:?];
                v67 = [v8 URL];
                *buf = 138543874;
                *&buf[4] = shortOperationDescription2;
                *&buf[12] = 2112;
                *&buf[14] = v66;
                *&buf[22] = 2114;
                v103 = v67;
                _os_log_impl(&dword_1B63EF000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ reusing locally-cached response with expiration date %@ for CK-at-Edge request with URL %{public}@", buf, 0x20u);
              }

              v68 = [FCURLResponsePayload alloc];
              data3 = [v54 data];
              v70 = [(FCURLResponsePayload *)v68 initWithData:data3];

              [(FCCKDirectRequestOperation *)selfCopy _finishWithResponsePayload:v70];
LABEL_70:

              return;
            }

            v59 = NewsCoreUserDefaults();
            v60 = [v59 BOOLForKey:@"ignore_ttl_in_url_cache"];

            if (v60)
            {
              goto LABEL_52;
            }
          }

LABEL_58:
          *&v98 = 0;
          *(&v98 + 1) = &v98;
          v99 = 0x2020000000uLL;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v103 = __Block_byref_object_copy__32;
          v104 = __Block_byref_object_dispose__32;
          v105 = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __46__FCCKDirectRequestOperation_performOperation__block_invoke_37;
          aBlock[3] = &unk_1E7C40098;
          v93 = buf;
          aBlock[4] = selfCopy;
          v72 = v87;
          v91 = v72;
          v8 = v8;
          v92 = v8;
          v94 = &v98;
          v73 = _Block_copy(aBlock);
          v74 = v73;
          if (selfCopy && (optimizationPolicy = selfCopy->_optimizationPolicy) != 0)
          {
            if (optimizationPolicy != 1)
            {
LABEL_64:
              [(FCOperation *)selfCopy associateChildOperation:*(*&buf[8] + 40)];
              v79 = FCOperationLog;
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                longOperationDescription = [*(*&buf[8] + 40) longOperationDescription];
                *v106 = 138543362;
                v107 = longOperationDescription;
                _os_log_impl(&dword_1B63EF000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@ started", v106, 0xCu);
              }

              if (selfCopy)
              {
                networkActivityBlock = selfCopy->_networkActivityBlock;
                if (networkActivityBlock)
                {
                  v82 = networkActivityBlock;
                  v83 = v82[2]();
                  objc_storeStrong(&selfCopy->_networkActivity, v83);

                  v84 = selfCopy->_networkActivity;
                  [(FCNetworkActivity *)v84 attachActivityToTask:*(*&buf[8] + 40)];

                  [*(*&buf[8] + 40) setDelegate:selfCopy];
                }
              }

              [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
              *(*(&v98 + 1) + 24) = v85;
              [*(*&buf[8] + 40) resume];

              _Block_object_dispose(buf, 8);
              _Block_object_dispose(&v98, 8);
              goto LABEL_70;
            }

            v76 = v88;
            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 3221225472;
            v88[2] = __46__FCCKDirectRequestOperation_performOperation__block_invoke_2_63;
            v88[3] = &unk_1E7C400E8;
            v88[4] = v73;
            v77 = [v72 downloadTaskWithRequest:v8 completionHandler:v88];
          }

          else
          {
            v76 = v89;
            v89[0] = MEMORY[0x1E69E9820];
            v89[1] = 3221225472;
            v89[2] = __46__FCCKDirectRequestOperation_performOperation__block_invoke_61;
            v89[3] = &unk_1E7C400C0;
            v89[4] = v73;
            v77 = [v72 dataTaskWithRequest:v8 completionHandler:v89];
          }

          v78 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v77;

          goto LABEL_64;
        }

LABEL_57:
        v54 = 0;
        goto LABEL_58;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"only queries are supported by ck-at-the-edge"];
      *v106 = 136315906;
      v107 = "[FCCKDirectRequestOperation _generateHTTPRequest]";
      v108 = 2080;
      v109 = "FCCKDirectRequestOperation.m";
      v110 = 1024;
      v111 = 459;
      v112 = 2114;
      v113 = v71;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v106, 0x26u);
    }

    goto LABEL_33;
  }

  v3 = MEMORY[0x1E695B978];
  if (selfCopy)
  {
    v4 = selfCopy->_requests;
    v5 = [v3 errorWithCode:1020 format:{@"Your request contains %ld items which is more than the maximum number of items in a single request (%ld)", -[NSArray count](v4, "count"), 400}];
    objc_storeStrong(&selfCopy->_resultError, v5);

    resultError = selfCopy->_resultError;
  }

  else
  {
    [MEMORY[0x1E695B978] errorWithCode:1020 format:{@"Your request contains %ld items which is more than the maximum number of items in a single request (%ld)", objc_msgSend(0, "count"), 400}];

    resultError = 0;
  }

  [(FCOperation *)selfCopy finishedPerformingOperationWithError:resultError];
}

void __40__FCCKDirectRequestOperation_URLSession__block_invoke()
{
  if (FCProcessIsMemoryConstrained())
  {
    v10 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    [v10 setURLCache:0];
  }

  else
  {
    v10 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v0 = NewsCoreUserDefaults();
    v1 = [v0 BOOLForKey:@"increase_url_cache_size"];

    if (v1)
    {
      v2 = 1024000;
    }

    else
    {
      v2 = 512000;
    }

    if (v1)
    {
      v3 = 200000000;
    }

    else
    {
      v3 = 100000000;
    }

    v4 = [(NSURLCache *)[FCCKDirectRequestOperationURLCache alloc] initWithMemoryCapacity:v2 diskCapacity:v3 diskPath:@"CK-at-Edge-URL-Cache"];
    [v10 setURLCache:v4];
  }

  [v10 set_timingDataOptions:{objc_msgSend(v10, "_timingDataOptions") | 1}];
  [v10 setHTTPCookieStorage:0];
  [v10 setURLCredentialStorage:0];
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.newsd"];

  if (v7)
  {
    [v10 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
  }

  v8 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v10];
  v9 = qword_1EDB269A8;
  qword_1EDB269A8 = v8;
}

- (double)preferredTimeoutIntervalForRequest
{
  if (([(FCCKDirectRequestOperation *)self _isDebugOperation]& 1) != 0)
  {
    return 120.0;
  }

  if (!self)
  {
    goto LABEL_8;
  }

  networkEventType = self->_networkEventType;
  if (networkEventType != 10)
  {
    if (networkEventType == 14)
    {
      v5 = objc_opt_class();
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v7 = [standardUserDefaults objectForKey:@"news.modules.today_feed.last_offline_refresh_date"];
      v8 = FCCheckedDynamicCast(v5, v7);

      [v8 doubleValue];
      v10 = v9;

      result = 5.0;
      if (v10 > 0.0)
      {
        return result;
      }

      selfCopy = self;
      v11 = &selfCopy;
      goto LABEL_9;
    }

LABEL_8:
    selfCopy2 = self;
    v11 = &selfCopy2;
LABEL_9:
    v11[1] = FCCKDirectRequestOperation;
    objc_msgSendSuper2(v11, sel_preferredTimeoutIntervalForRequest, result, selfCopy2);
    return result;
  }

  return 15.0;
}

void __47__FCCKDirectRequestOperation__bundleIDToReport__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = qword_1EDB269D0;
  qword_1EDB269D0 = v0;
}

- (id)_bundleIDToReport
{
  if (qword_1EDB269D8 != -1)
  {
    dispatch_once(&qword_1EDB269D8, &__block_literal_global_179);
  }

  v1 = qword_1EDB269D0;

  return v1;
}

void __50__FCCKDirectRequestOperation__enableDebugLogLevel__block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_7 = [v0 BOOLForKey:@"enable_debug_log_level_for_cloudkit_operations"];
}

- (id)_requestBodyData
{
  v57 = *MEMORY[0x1E69E9840];
  firstObject = [*(self + 384) firstObject];
  v4 = objc_opt_new();
  [firstObject setHeader:v4];

  _bundleIDToReport = [FCCKDirectRequestOperation _bundleIDToReport];
  header = [firstObject header];
  v49 = _bundleIDToReport;
  [header setApplicationBundle:_bundleIDToReport];

  v7 = *(self + 400);
  header2 = [firstObject header];
  [header2 setApplicationContainer:v7];

  if (*(self + 376))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  header3 = [firstObject header];
  [header3 setApplicationContainerEnvironment:v9];

  header4 = [firstObject header];
  [header4 setTargetDatabase:2];

  v12 = CKProductType();
  header5 = [firstObject header];
  [header5 setDeviceHardwareVersion:v12];

  v14 = CKProductVersion();
  header6 = [firstObject header];
  [header6 setDeviceSoftwareVersion:v14];

  v16 = NFInternalBuild();
  header7 = [firstObject header];
  [header7 setDeviceSoftwareIsAppleInternal:v16];

  v48 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  infoDictionary = [v48 infoDictionary];
  v19 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  header8 = [firstObject header];
  [header8 setDeviceLibraryName:v19];

  v21 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E148]];
  header9 = [firstObject header];
  [header9 setDeviceLibraryVersion:v21];

  v23 = objc_opt_new();
  header10 = [firstObject header];
  [header10 setLocale:v23];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject2 = [preferredLanguages firstObject];
  v27 = firstObject2;
  if (!firstObject2)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v27 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  }

  header11 = [firstObject header];
  locale = [header11 locale];
  [locale setLanguageCode:v27];

  if (!firstObject2)
  {
  }

  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  v31 = [currentLocale2 objectForKey:*MEMORY[0x1E695D978]];
  header12 = [firstObject header];
  locale2 = [header12 locale];
  [locale2 setRegionCode:v31];

  purpose = [self purpose];

  if (purpose != @"unknown")
  {
    purpose2 = [self purpose];
    header13 = [firstObject header];
    [header13 setOperationGroupName:purpose2];
  }

  lastObject = [*(self + 384) lastObject];
  request = [lastObject request];
  [request setLast:1];

  data = [MEMORY[0x1E695DF88] data];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = *(self + 384);
  v41 = [v40 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v51;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(v40);
        }

        data2 = [*(*(&v50 + 1) + 8 * i) data];
        v55 = 0;
        v54 = 0;
        [data2 length];
        [data appendBytes:&v54 length:PBDataWriterWriteBareVarint()];
        [data appendData:data2];
      }

      v42 = [v40 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v42);
  }

  fc_gzipDeflate = [data fc_gzipDeflate];

  return fc_gzipDeflate;
}

- (FCCKDirectRequestOperation)initWithNetworkReachability:(id)reachability
{
  v9.receiver = self;
  v9.super_class = FCCKDirectRequestOperation;
  v3 = [(FCNetworkOperation *)&v9 initWithNetworkReachability:reachability];
  v4 = v3;
  if (v3)
  {
    v3->_optimizationPolicy = 1;
    v3->_requestType = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    requestUUID = v4->_requestUUID;
    v4->_requestUUID = uUIDString;

    v4->_networkEventType = 0;
  }

  return v4;
}

- (BOOL)validateOperation
{
  selfCopy = self;
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_requests;
  }

  v3 = [(FCCKDirectRequestOperation *)self count];
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"direct-ck-request must have at least one request operation"];
    v15 = 136315906;
    v16 = "[FCCKDirectRequestOperation validateOperation]";
    v17 = 2080;
    v18 = "FCCKDirectRequestOperation.m";
    v19 = 1024;
    v20 = 142;
    v21 = 2114;
    v22 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);

    if (!selfCopy)
    {
LABEL_9:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"direct-ck-request request must have a base URL"];
        v15 = 136315906;
        v16 = "[FCCKDirectRequestOperation validateOperation]";
        v17 = 2080;
        v18 = "FCCKDirectRequestOperation.m";
        v19 = 1024;
        v20 = 146;
        v21 = 2114;
        v22 = v11;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
      }

      v4 = 0;
      if (!selfCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else if (!selfCopy)
  {
    goto LABEL_9;
  }

  if (!selfCopy->_baseURL)
  {
    goto LABEL_9;
  }

  v4 = 1;
LABEL_12:
  if (selfCopy->_containerName)
  {
    v6 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"direct-ck-request request must have a container name"];
    v15 = 136315906;
    v16 = "[FCCKDirectRequestOperation validateOperation]";
    v17 = 2080;
    v18 = "FCCKDirectRequestOperation.m";
    v19 = 1024;
    v20 = 150;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
  }

  v6 = 0;
  if (!selfCopy)
  {
LABEL_19:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"direct-ck-request request must have a request type"];
      v15 = 136315906;
      v16 = "[FCCKDirectRequestOperation validateOperation]";
      v17 = 2080;
      v18 = "FCCKDirectRequestOperation.m";
      v19 = 1024;
      v20 = 154;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
    }

    v7 = 0;
    if (!selfCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_17:
  if (!selfCopy->_requestType)
  {
    goto LABEL_19;
  }

  v7 = 1;
LABEL_22:
  if (selfCopy->_networkEventType)
  {
    v8 = 1;
    goto LABEL_27;
  }

LABEL_24:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"direct-ck-request request must have a network event type"];
    v15 = 136315906;
    v16 = "[FCCKDirectRequestOperation validateOperation]";
    v17 = 2080;
    v18 = "FCCKDirectRequestOperation.m";
    v19 = 1024;
    v20 = 158;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
  }

  v8 = 0;
LABEL_27:
  v9 = v6 & v4 & v8 & v7;
  if (v3)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

- (void)setResultError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 520), a2);
  }
}

id __46__FCCKDirectRequestOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 378) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__FCCKDirectRequestOperation_performOperation__block_invoke_2;
    v7[3] = &unk_1E7C36F98;
    v7[4] = v2;
    v3 = __46__FCCKDirectRequestOperation_performOperation__block_invoke_2(v7);
  }

  else
  {
    v4 = [*(a1 + 40) configuration];
    v5 = [v4 URLCache];
    v3 = [v5 cachedResponseForRequest:*(a1 + 48)];
  }

  return v3;
}

uint64_t __46__FCCKDirectRequestOperation_performOperation__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring local cache for CK-at-Edge request because ignoreCache=true", &v7, 0xCu);
  }

  return 0;
}

- (void)_finishWithResponsePayload:(void *)payload
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (payload)
  {
    if (v3)
    {
      date = [MEMORY[0x1E695DF00] date];
      v6 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        shortOperationDescription = [payload shortOperationDescription];
        v9 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v4 countStyle:{"size"), 0}];
        *buf = 138543618;
        *&buf[4] = shortOperationDescription;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will parse CK response payload, size=%{public}@", buf, 0x16u);
      }

      array = [MEMORY[0x1E695DF70] array];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v31 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke_80;
      v21[3] = &unk_1E7C40110;
      v22 = array;
      payloadCopy = payload;
      v24 = dictionary;
      v19 = buf;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke_2;
      v20[3] = &unk_1E7C40138;
      v20[4] = payload;
      v20[5] = buf;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke_3;
      v15[3] = &unk_1E7C40160;
      v15[4] = payload;
      v12 = date;
      v16 = v12;
      v13 = v22;
      v17 = v13;
      v14 = v24;
      v18 = v14;
      [FCCKResponseDecoder processResponseWithPayload:v4 operationHandler:v21 recordHandler:v20 completionHandler:v15];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke;
      v28 = &unk_1E7C36EA0;
      payloadCopy2 = payload;
      [payload finishedPerformingOperationWithError:payload[65]];
    }
  }
}

void __46__FCCKDirectRequestOperation_performOperation__block_invoke_37(uint64_t a1, void *a2, void *a3, void *a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v79 = a2;
  v7 = a3;
  v8 = a4;
  v9 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = v9;
    v12 = [v10 shortOperationDescription];
    *buf = 138543362;
    v81 = v12;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ finished", buf, 0xCu);
  }

  v13 = objc_opt_class();
  v78 = v7;
  v14 = FCCheckedDynamicCast(v13, v7);
  v15 = v14;
  v16 = &OBJC_IVAR___FCCKPrivateBatchedSaveRecordsOperation__savePolicy;
  if (!v8)
  {
    if (([v14 statusCode] < 200 || objc_msgSend(v15, "statusCode") >= 300) && objc_msgSend(v15, "statusCode") != 304)
    {
      v53 = MEMORY[0x1E696ABC0];
      v54 = *(a1 + 32);
      if (v54)
      {
        v54 = v54[59];
      }

      v55 = v54;
      v56 = [v53 fc_HTTPErrorWithURLResponse:v15 requestUUID:v55];
      [(FCCKDirectRequestOperation *)*(a1 + 32) setResultError:v56];

      v16 = &OBJC_IVAR___FCCKPrivateBatchedSaveRecordsOperation__savePolicy;
      goto LABEL_31;
    }

    v21 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = v21;
      v24 = [v22 shortOperationDescription];
      v25 = [*(*(*(a1 + 56) + 8) + 40) _incompleteCurrentTaskTransactionMetrics];
      *buf = 138543618;
      v81 = v24;
      v82 = 2114;
      v83 = v25;
      _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ received has task metrics: %{public}@", buf, 0x16u);

      v16 = &OBJC_IVAR___FCCKPrivateBatchedSaveRecordsOperation__savePolicy;
    }

    v26 = *(a1 + 32);
    if (!v26 || !*(v26 + 432))
    {
      goto LABEL_31;
    }

    v27 = [v15 allHeaderFields];
    v28 = [v27 objectForKeyedSubscript:@"X-Apple-Cache"];

    v29 = [v15 allHeaderFields];
    v30 = [v29 objectForKeyedSubscript:@"Last-Modified"];

    v31 = [v15 allHeaderFields];
    v77 = [v31 objectForKeyedSubscript:@"Via"];

    v32 = [v79 size];
    v33 = [*(a1 + 40) configuration];
    v34 = [v33 URLCache];
    if (v34)
    {
      v35 = v34;
      v75 = v32;
      v76 = v30;
      v36 = 20 * v32;
      v37 = [*(a1 + 40) configuration];
      v38 = [v37 URLCache];
      v39 = v28;
      v40 = [v38 diskCapacity];

      v16 = &OBJC_IVAR___FCCKPrivateBatchedSaveRecordsOperation__savePolicy;
      v41 = v36 > v40;
      v30 = v76;
      v28 = v39;
      if (!v41)
      {
        goto LABEL_21;
      }

      v42 = FCOperationLog;
      if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v43 = *(a1 + 32);
      v33 = v42;
      v44 = [v43 shortOperationDescription];
      v45 = [MEMORY[0x1E696AAF0] stringFromByteCount:v75 countStyle:0];
      *buf = 138543618;
      v81 = v44;
      v82 = 2114;
      v83 = v45;
      _os_log_error_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_ERROR, "%{public}@ received response that won't fit in cache due to size %{public}@", buf, 0x16u);

      v16 = &OBJC_IVAR___FCCKPrivateBatchedSaveRecordsOperation__savePolicy;
    }

LABEL_21:
    v46 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v16;
      v48 = *(a1 + 32);
      v49 = v46;
      v50 = [v48 shortOperationDescription];
      v51 = [v28 BOOLValue];
      v52 = @"non-cached";
      *buf = 138544130;
      v81 = v50;
      v82 = 2114;
      if (v51)
      {
        v52 = @"cached";
      }

      v83 = v52;
      v84 = 2114;
      v85 = v30;
      v86 = 2114;
      v87 = v77;
      _os_log_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ received %{public}@ response from CK-at-Edge with last-modified %{public}@ via %{public}@", buf, 0x2Au);

      v16 = v47;
    }

    goto LABEL_31;
  }

  v17 = [v8 domain];
  if ([v17 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v18 = [v8 code];

    v19 = v18 == -999;
    v16 = &OBJC_IVAR___FCCKPrivateBatchedSaveRecordsOperation__savePolicy;
    if (v19)
    {
      v20 = [MEMORY[0x1E695B978] errorWithCode:1 format:@"Operation was cancelled"];
      [(FCCKDirectRequestOperation *)*(a1 + 32) setResultError:v20];

      goto LABEL_31;
    }
  }

  else
  {
  }

  [(FCCKDirectRequestOperation *)*(a1 + 32) setResultError:v8];
LABEL_31:
  v57 = [FCNetworkEvent alloc];
  v58 = *(a1 + 32);
  if (v58)
  {
    v59 = v58[95];
  }

  else
  {
    v59 = 0;
  }

  v60 = *(a1 + 48);
  v61 = [v58 operationID];
  v62 = *(a1 + 32);
  if (v62)
  {
    v62 = *&v62[v16[657]];
  }

  v63 = v62;
  v64 = *(*(*(a1 + 64) + 8) + 24);
  v65 = [*(*(*(a1 + 56) + 8) + 40) _incompleteCurrentTaskTransactionMetrics];
  v66 = *(a1 + 32);
  if (v66)
  {
    v66 = v66[50];
  }

  v67 = v66;
  v68 = [(FCNetworkEvent *)v57 initWithType:v59 URLRequest:v60 operationID:v61 requestUUID:v63 startTime:v15 HTTPResponse:v65 metrics:v64 containerName:v67 error:v8];
  v69 = *(a1 + 32);
  if (v69)
  {
    objc_storeStrong((v69 + 480), v68);
  }

  if (([(FCCKDirectRequestOperation *)*(a1 + 32) _isDebugOperation]& 1) == 0)
  {
    v70 = *(a1 + 32);
    if (v70)
    {
      v71 = *(v70 + 424);
      v72 = *(v70 + 480);
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v73 = v71;
    [v73 logNetworkEvent:v72];
  }

  v74 = *(a1 + 32);
  if (v74 && v74[65])
  {
    [v74 finishedPerformingOperationWithError:?];
  }

  else
  {
    [(FCCKDirectRequestOperation *)v74 _finishWithResponsePayload:v79];
  }
}

void __46__FCCKDirectRequestOperation_performOperation__block_invoke_61(uint64_t a1, FCURLResponsePayload *a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = a2;
    a2 = [[FCURLResponsePayload alloc] initWithData:v8];
  }

  (*(*(a1 + 32) + 16))();
}

void __46__FCCKDirectRequestOperation_performOperation__block_invoke_2_63(uint64_t a1, FCURLResponsePayload *a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = a2;
    a2 = [[FCURLResponsePayload alloc] initWithFileURL:v8];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)operationWillFinishWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E695B778]])
  {
    code = [errorCopy code];

    if (code != 1005)
    {
      goto LABEL_6;
    }

    v7 = FCOperationLog;
    if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    domain = v7;
    localizedDescription = [errorCopy localizedDescription];
    v15 = 138543362;
    v16 = localizedDescription;
    _os_log_fault_impl(&dword_1B63EF000, domain, OS_LOG_TYPE_FAULT, "Failed to parse CloudKit response with error: %{public}@", &v15, 0xCu);
  }

LABEL_6:
  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:@"FCErrorDomain"])
  {
    cKClientSuitableError = errorCopy;
  }

  else
  {
    cKClientSuitableError = [errorCopy CKClientSuitableError];
  }

  v11 = cKClientSuitableError;

  if (self)
  {
    requestCompletionHandler = self->_requestCompletionHandler;
    if (requestCompletionHandler)
    {
      v13 = requestCompletionHandler;
      v14 = self->_resultResponseOperations;
      v13[2](v13, v14, self->_resultErrorsByRequestID, v11);
    }
  }
}

- (BOOL)areNetworkRequirementsSatisfiedWithReachability:(id)reachability offlineReason:(int64_t *)reason
{
  reachabilityCopy = reachability;
  if ([(FCCKDirectRequestOperation *)self _isDebugOperation])
  {
    v7 = +[FCNetworkReachability sharedNetworkReachability];
    isCloudKitAccessAllowed = [v7 isCloudKitAccessAllowed];
  }

  else if ([reachabilityCopy isCloudKitReachable])
  {
    isCloudKitAccessAllowed = 1;
  }

  else
  {
    isCloudKitAccessAllowed = 0;
    *reason = [reachabilityCopy offlineReason];
  }

  return isCloudKitAccessAllowed;
}

- (void)resetForRetry
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v4, uUIDString, 472);
  }

  [(FCCKDirectRequestOperation *)self setResultResponseOperations:?];
  [(FCCKDirectRequestOperation *)self setResultErrorsByRequestID:?];

  [(FCCKDirectRequestOperation *)self setResultError:?];
}

- (void)setResultResponseOperations:(uint64_t)operations
{
  if (operations)
  {
    objc_storeStrong((operations + 504), a2);
  }
}

- (void)setResultErrorsByRequestID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 512), a2);
  }
}

uint64_t __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[65];
  }

  else
  {
    v2 = 0;
  }

  return [v1 finishedPerformingOperationWithError:v2];
}

id __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  if (![v3 hasResult])
  {
    goto LABEL_16;
  }

  v4 = [v3 result];
  if (![v4 hasCode])
  {
LABEL_103:
    v19 = 0;
    goto LABEL_104;
  }

  v5 = [v3 result];
  v6 = [v5 code];

  if (v6 != 3)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_105;
  }

  v7 = *(a1 + 40);
  v8 = [v3 result];
  v9 = [v8 error];
  if (v7)
  {
    v10 = objc_opt_new();
    if ([v9 hasErrorKey])
    {
      v11 = [v9 errorKey];
      [v10 setObject:v11 forKeyedSubscript:@"errorKey"];
    }

    if ([v9 hasErrorDescription])
    {
      v12 = [v9 errorDescription];
      [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A578]];

      v13 = [v9 errorDescription];
      [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695B758]];
    }

    if ([v9 hasRetryAfterSeconds])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "retryAfterSeconds")}];
      [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695B748]];
    }

    [v10 setObject:*(v7 + 472) forKeyedSubscript:*MEMORY[0x1E695B810]];
    [v10 setObject:*(v7 + 400) forKeyedSubscript:*MEMORY[0x1E695B720]];
    if (![v9 hasClientError])
    {
      if ([v9 hasServerError])
      {
        v20 = [v9 serverError];
        v21 = [v20 type];

        v18 = (v21 > 7) | (0x69u >> v21);
        v17 = (v21 < 8) & (0x96u >> v21);
        v22 = [v9 serverError];
        v23 = [v22 type];

        v24 = 1000;
        v25 = 2029;
        v26 = 2030;
        if (v23 != 8)
        {
          v26 = 1000;
        }

        if (v23 != 7)
        {
          v25 = v26;
        }

        v27 = 2031;
        v28 = 4000;
        if (v23 != 6)
        {
          v28 = 1000;
        }

        if (v23 != 4)
        {
          v27 = v28;
        }

        if (v23 <= 6)
        {
          v25 = v27;
        }

        if (v23 == 3)
        {
          v24 = 2003;
        }

        if (v23 == 2)
        {
          v24 = 2002;
        }

        if (v23 == 1)
        {
          v24 = 2000;
        }

        if (v23 <= 3)
        {
          v29 = v24;
        }

        else
        {
          v29 = v25;
        }
      }

      else
      {
        v18 = 0;
        v17 = 0;
        if ([v9 hasExtensionError])
        {
          v29 = 6000;
        }

        else
        {
          v29 = 2000;
        }
      }

LABEL_87:
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B778] code:v29 userInfo:v10];
      if (*(v7 + 377) == 1)
      {
        if (((v18 | v17) & 1) == 0)
        {
          goto LABEL_93;
        }
      }

      else if ((v17 & 1) == 0)
      {
LABEL_93:

        goto LABEL_94;
      }

      if (!*(v7 + 520))
      {
        objc_storeStrong((v7 + 520), v19);
      }

      goto LABEL_93;
    }

    v15 = [v9 clientError];
    v16 = [v15 type];

    if (v16 <= 0xE)
    {
      v17 = 1;
      if (((1 << v16) & 0x7800) != 0)
      {
        v18 = 0;
        goto LABEL_41;
      }

      if (((1 << v16) & 0x2C) == 0 && v16 == 4)
      {
        v32 = [v9 errorDescription];
        v33 = [v32 lowercaseString];

        v17 = [v33 hasPrefix:@"no operations present"];
        v18 = v17 ^ 1;

LABEL_41:
        v30 = [v9 clientError];
        v31 = [v30 type];

        v29 = 1000;
        switch(v31)
        {
          case 1:
            v29 = 2005;
            break;
          case 2:
            v29 = 2013;
            break;
          case 3:
            v29 = 2014;
            break;
          case 4:
            v49 = [v9 errorDescription];
            v34 = [v49 lowercaseString];
            v35 = [v34 hasPrefix:@"no operations present"];

            v18 |= v35 ^ 1;
            v17 |= v35;
            v29 = 2006;
            break;
          case 5:
          case 49:
            v29 = 2007;
            break;
          case 6:
            v29 = 2008;
            break;
          case 7:
            v29 = 2010;
            break;
          case 8:
            v29 = 2027;
            break;
          case 9:
            v29 = 2017;
            break;
          case 10:
            v29 = 2040;
            break;
          case 11:
            v17 = 1;
            v29 = 2011;
            break;
          case 12:
            v29 = 2012;
            break;
          case 13:
          case 14:
            v29 = 4001;
            break;
          case 15:
            v29 = 2004;
            break;
          case 16:
            v29 = 2024;
            break;
          case 17:
            v29 = 1016;
            break;
          case 18:
          case 20:
          case 28:
          case 29:
          case 30:
          case 31:
          case 33:
          case 34:
          case 36:
          case 37:
          case 55:
          case 56:
          case 57:
          case 58:
            v29 = 2023;
            break;
          case 19:
            v29 = 2022;
            break;
          case 21:
            v29 = 1014;
            break;
          case 22:
          case 23:
          case 32:
          case 35:
            v29 = 2018;
            break;
          case 24:
          case 38:
            v29 = 2019;
            break;
          case 25:
            v29 = 2020;
            break;
          case 26:
            v29 = 2015;
            break;
          case 27:
            v29 = 2016;
            break;
          case 39:
            v29 = 2025;
            break;
          case 40:
            v29 = 2026;
            break;
          case 41:
            v29 = 2028;
            break;
          case 42:
            v29 = 2033;
            break;
          case 43:
            v29 = 2032;
            break;
          case 46:
            v29 = 3005;
            break;
          case 47:
            v29 = 2035;
            break;
          case 48:
            v29 = 2036;
            break;
          case 50:
          case 51:
            v29 = 2039;
            break;
          case 53:
            v29 = 2037;
            break;
          case 54:
            v29 = 2038;
            break;
          case 59:
            v29 = 2042;
            break;
          case 60:
            v29 = 2041;
            break;
          case 61:
            v29 = 2045;
            break;
          case 62:
            v29 = 2043;
            break;
          case 64:
            v29 = 2044;
            break;
          case 65:
            v29 = 2046;
            break;
          case 66:
            v29 = 2047;
            break;
          case 67:
            v29 = 2048;
            break;
          default:
            goto LABEL_87;
        }

        goto LABEL_87;
      }
    }

    v17 = 0;
    v18 = 1;
    goto LABEL_41;
  }

  v19 = 0;
LABEL_94:

  v4 = [v3 response];
  v36 = [v4 operationUUID];
  if (v36)
  {
    v37 = v36;
    v38 = *(a1 + 40);
    if (v38 && (v39 = *(v38 + 448)) != 0)
    {
      v40 = v39;
      v41 = *(a1 + 40);
      if (v41)
      {
        v42 = *(v41 + 448);
      }

      else
      {
        v42 = 0;
      }

      v43 = (*(v42 + 16))(v42, v19);

      if (v43)
      {
        goto LABEL_105;
      }
    }

    else
    {
    }

    v44 = *(a1 + 48);
    v45 = [v19 CKClientSuitableError];
    v46 = [v3 response];
    v47 = [v46 operationUUID];
    [v44 setObject:v45 forKey:v47];

    v4 = v19;
    goto LABEL_103;
  }

LABEL_104:

LABEL_105:

  return v19;
}

uint64_t __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  if (v5)
  {
    v3 = *(v5 + 456);
    if (v3)
    {
      v7 = v4;
      v3 = v3[2]();
      v4 = v7;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __57__FCCKDirectRequestOperation__finishWithResponsePayload___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 shortOperationDescription];
    v8 = *(*(*(a1 + 64) + 8) + 24);
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [v9 fc_millisecondTimeIntervalSinceDate:*(a1 + 40)];
    v16 = 138543874;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did parse CK response payload, records=%lu, time=%llums", &v16, 0x20u);
  }

  [(FCCKDirectRequestOperation *)*(a1 + 32) setResultResponseOperations:?];
  [(FCCKDirectRequestOperation *)*(a1 + 32) setResultErrorsByRequestID:?];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 520);
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v3;
  }

  [(FCCKDirectRequestOperation *)v11 setResultError:v13];
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = v14[65];
  }

  else
  {
    v15 = 0;
  }

  [v14 finishedPerformingOperationWithError:v15];
}

void __56__FCCKDirectRequestOperation__headersImpactingEdgeCache__block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"X-CloudKit-ContainerId";
  v2[1] = @"X-Apple-Permanent-Asset-URLs";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = qword_1EDB269C0;
  qword_1EDB269C0 = v0;
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v17 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v7 = taskCopy;
  if (self && self->_networkActivity)
  {
    error = [taskCopy error];

    networkActivity = self->_networkActivity;
    if (error)
    {
      [(FCNetworkActivity *)networkActivity completeActivityWithSuccess:0];
      v10 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_networkActivity;
        v12 = v10;
        v15 = 67109120;
        label = [(FCNetworkActivity *)v11 label];
        v13 = "Did finish network activity with success=NO (label=%d)";
LABEL_8:
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 8u);
      }
    }

    else
    {
      [(FCNetworkActivity *)networkActivity completeActivityWithSuccess:1];
      v14 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_networkActivity;
        v12 = v14;
        v15 = 67109120;
        label = [(FCNetworkActivity *)v11 label];
        v13 = "Did finish network activity with success=YES (label=%d)";
        goto LABEL_8;
      }
    }
  }
}

- (void)URLSession:(id)session didCreateTask:(id)task
{
  v13 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  if (self)
  {
    networkActivity = self->_networkActivity;
    if (networkActivity)
    {
      [(FCNetworkActivity *)networkActivity attachActivityToTask:taskCopy];
      v7 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        originalRequest = [taskCopy originalRequest];
        v10 = [originalRequest URL];
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Did assign network activity to task (%{public}@)", &v11, 0xCu);
      }
    }
  }
}

- (void)setNetworkBehaviorMonitor:(uint64_t)monitor
{
  if (monitor)
  {
    objc_storeStrong((monitor + 424), a2);
  }
}

@end