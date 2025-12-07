@interface FMDALFailureAnalyticsManager
- (FMDALFailureAnalyticsManager)initWithProvider:(id)provider context:(id)context;
- (void)dispatchAnalytics:(id)analytics;
- (void)performAnalytics:(id)analytics;
@end

@implementation FMDALFailureAnalyticsManager

- (FMDALFailureAnalyticsManager)initWithProvider:(id)provider context:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  if (self)
  {
    objc_storeStrong(&self->_provider, provider);
    objc_storeStrong(&self->_context, context);
    v9 = dispatch_queue_create("FMDALFailureAnalytics.serialQueue", 0);
    [(FMDALFailureAnalyticsManager *)self setSerialQueue:v9];
  }

  return self;
}

- (void)performAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  serialQueue = [(FMDALFailureAnalyticsManager *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013116C;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = analyticsCopy;
  v6 = analyticsCopy;
  dispatch_async(serialQueue, v7);
}

- (void)dispatchAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  provider = self->_provider;
  if (provider)
  {
    account = [(FMDServiceProvider *)provider account];

    if (account)
    {
      v8 = [FMDActivationLockFailureAnalytics alloc];
      account2 = [(FMDServiceProvider *)self->_provider account];
      v10 = [(FMDActivationLockFailureAnalytics *)v8 initWithAccountAndError:account2 error:analyticsCopy];

      v11 = +[ServerDeviceInfo sharedInstance];
      account3 = [(FMDServiceProvider *)self->_provider account];
      v13 = [v11 deviceInfoForAccount:account3];

      v14 = [FMDActingRequestDecorator alloc];
      selfCopy = self;
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_100131474;
      v27 = &unk_1002CD580;
      v28 = v13;
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10013147C;
      v22 = &unk_1002CD580;
      v15 = v13;
      v16 = [(FMDActingRequestDecorator *)v14 initWithDeviceContextGenerator:&stru_1002CD558 deviceInfoGenerator:&v24 serverContextGenerator:0 requestHeaderGenerator:&v19];
      [v10 setDecorator:v16, v19, v20, v21, v22, selfCopy, v24, v25, v26, v27];
      v17 = sub_10017DDA4([v10 setCompletionHandler:&stru_1002CD5C0]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [v10 fm_logID];
        *buf = 138412290;
        v30 = fm_logID;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@:     request to disable locations.", buf, 0xCu);
      }

      [(FMDServiceProvider *)self->_provider enqueueRequest:v10];
    }

    else
    {
      v10 = sub_10017DDA4(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100226074(v10);
      }
    }
  }

  else
  {
    v10 = sub_10017DDA4(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1002260B8(v10);
    }
  }
}

@end