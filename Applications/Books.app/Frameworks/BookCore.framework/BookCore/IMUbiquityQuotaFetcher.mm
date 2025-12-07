@interface IMUbiquityQuotaFetcher
- (IMUbiquityQuotaFetcher)init;
- (void)fetchUserQuotaWithCompletion:(id)completion;
- (void)fetchUserQuotaWithTimeOut:(double)out completion:(id)completion;
@end

@implementation IMUbiquityQuotaFetcher

- (IMUbiquityQuotaFetcher)init
{
  v8.receiver = self;
  v8.super_class = IMUbiquityQuotaFetcher;
  v2 = [(IMUbiquityQuotaFetcher *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    quotaFetchingOperationsQueue = v2->_quotaFetchingOperationsQueue;
    v2->_quotaFetchingOperationsQueue = v3;

    [(NSOperationQueue *)v2->_quotaFetchingOperationsQueue setQualityOfService:17];
    v5 = [NSMapTable mapTableWithKeyOptions:5 valueOptions:512];
    operationToWatchdogTimerMap = v2->_operationToWatchdogTimerMap;
    v2->_operationToWatchdogTimerMap = v5;
  }

  return v2;
}

- (void)fetchUserQuotaWithCompletion:(id)completion
{
  completionCopy = completion;
  [(IMUbiquityQuotaFetcher *)self cloudServerResponseTimeout];
  [(IMUbiquityQuotaFetcher *)self fetchUserQuotaWithTimeOut:completionCopy completion:?];
}

- (void)fetchUserQuotaWithTimeOut:(double)out completion:(id)completion
{
  completionCopy = completion;
  v7 = +[BCSyncUserDefaults isSignedIntoICloud];
  if (v7 && (v7 = +[BCSyncUserDefaults isICloudDriveEnabledForBooks], (v7 & 1) != 0))
  {
    quotaFetchingOperationsQueue = [(IMUbiquityQuotaFetcher *)self quotaFetchingOperationsQueue];

    if (!quotaFetchingOperationsQueue)
    {
      sub_1E7A28(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = objc_opt_new();
    objc_initWeak(location, v17);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_84260;
    v32[3] = &unk_2CB448;
    objc_copyWeak(&v34, location);
    v32[4] = self;
    v33 = completionCopy;
    [v17 setFetchQuotaCompletionBlock:v32];
    v18 = dispatch_get_global_queue(0, 0);
    v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18);

    if (v19)
    {
      operationToWatchdogTimerMap = [(IMUbiquityQuotaFetcher *)self operationToWatchdogTimerMap];
      [operationToWatchdogTimerMap setObject:v19 forKey:v17];

      v21 = dispatch_time(0, (out * 1000000000.0));
      dispatch_source_set_timer(v19, v21, 0xFFFFFFFFFFFFFFFFLL, 0);
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_84594;
      v30 = &unk_2C7D40;
      v22 = v17;
      v31 = v22;
      dispatch_source_set_event_handler(v19, &v27);
      dispatch_resume(v19);
      v23 = [(IMUbiquityQuotaFetcher *)self quotaFetchingOperationsQueue:v27];
      [v23 addOperation:v22];
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
  }

  else
  {
    v24 = BCQuotaFetcherLog(v7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Not fetching quota. Background or offline.", location, 2u);
    }

    v17 = objc_retainBlock(completionCopy);
    if (v17)
    {
      lastCachedFreeBytes = [(IMUbiquityQuotaFetcher *)self lastCachedFreeBytes];
      v26 = [NSError errorWithDomain:@"IMUbiquityQuotaFetcherErrorDomain" code:-1000 userInfo:0];
      (v17)[2](v17, lastCachedFreeBytes, v26);
    }
  }
}

@end