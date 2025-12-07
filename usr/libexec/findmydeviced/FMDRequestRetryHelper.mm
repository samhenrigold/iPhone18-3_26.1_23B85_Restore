@interface FMDRequestRetryHelper
- (FMDRequest)request;
- (FMDRequestRetryHelper)initWithRequest:(id)request retryAction:(id)action;
- (double)_decayedWaitIntervalForRetryCount:(int64_t)count;
- (int)_consecutiveRetryCountForType:(id)type;
- (int)_retryCountForType:(id)type;
- (void)_incrementRetryCountForType:(id)type;
- (void)_networkCameUp;
- (void)_networkStateChanged:(id)changed;
- (void)_retryNow;
- (void)_retryTimerFired;
- (void)_scheduleRetryAfterTimeInterval:(double)interval;
- (void)checkAndScheduleRetries;
- (void)dealloc;
- (void)deinitializeHelper;
@end

@implementation FMDRequestRetryHelper

- (void)checkAndScheduleRetries
{
  [(FMDRequestRetryHelper *)self setNextRetryType:0];
  request = [(FMDRequestRetryHelper *)self request];
  if (!request)
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType)
  {
  }

  else
  {
    completed = [request completed];
    if (completed)
    {
      v6 = sub_100002880(completed);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 138412546;
        *&v55[4] = objc_opt_class();
        *&v55[12] = 2048;
        *&v55[14] = request;
        v7 = *&v55[4];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request is complete", v55, 0x16u);
      }

      [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
    }
  }

  v8 = [(FMDRequestRetryHelper *)self nextRetryType:*v55];
  if (v8)
  {
  }

  else
  {
    canRequestBeRetriedNow = [request canRequestBeRetriedNow];
    if ((canRequestBeRetriedNow & 1) == 0)
    {
      v10 = sub_100002880(canRequestBeRetriedNow);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        *v55 = 138412546;
        *&v55[4] = v11;
        *&v55[12] = 2048;
        *&v55[14] = request;
        v12 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request cannot be retried anymore. Not scheduling any more retries", v55, 0x16u);
      }

      [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
    }
  }

  nextRetryType2 = [(FMDRequestRetryHelper *)self nextRetryType];

  v14 = -1.0;
  if (!nextRetryType2)
  {
    httpResponseHeaders = [request httpResponseHeaders];
    v16 = [httpResponseHeaders objectForKeyedSubscript:@"X-Apple-Retry-After"];

    if (v16)
    {
      doubleValue = [v16 doubleValue];
      if (v18 < 0.0)
      {
        v19 = sub_100002880(doubleValue);
        v20 = -1.0;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          *v55 = 138412546;
          *&v55[4] = v21;
          *&v55[12] = 2048;
          *&v55[14] = request;
          v22 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Server requested that no more retries be done.", v55, 0x16u);
        }

        v23 = @"NoMoreRetries";
LABEL_25:

        [(FMDRequestRetryHelper *)self setNextRetryType:v23];
        v14 = v20;
        goto LABEL_26;
      }

      if (v18 > 0.0)
      {
        v20 = v18;
        v19 = sub_100002880(doubleValue);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v24 = objc_opt_class();
          *v55 = 138412802;
          *&v55[4] = v24;
          *&v55[12] = 2048;
          *&v55[14] = request;
          *&v55[22] = 2048;
          v56 = v20;
          v25 = v24;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Server requested a retry after %f seconds", v55, 0x20u);
        }

        v23 = @"ServerDelayedRetry";
        goto LABEL_25;
      }
    }

LABEL_26:
  }

  nextRetryType3 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType3)
  {
  }

  else if ([request responseErrorType] == 257)
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType4 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType4)
  {
    authId = nextRetryType4;
LABEL_33:

    goto LABEL_36;
  }

  if ([request responseErrorType] == 514 && !-[FMDRequestRetryHelper _retryCountForType:](self, "_retryCountForType:", @"TryOriginalHost"))
  {
    [(FMDRequestRetryHelper *)self setNextRetryType:@"TryOriginalHost"];
    authId = [request authId];
    [FMDRealmSupport clearCachedHostsWithContext:authId];
    v14 = 0.0;
    goto LABEL_33;
  }

LABEL_36:
  nextRetryType5 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType5)
  {
  }

  else if (([request responseErrorType] & 0x200) != 0)
  {
    v30 = [(FMDRequestRetryHelper *)self _retryCountForType:@"TimerBasedNetworkRetry"];
    if ([request maxTimerBasedNetworkRetries] == -1 || objc_msgSend(request, "maxTimerBasedNetworkRetries") > v30)
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:@"TimerBasedNetworkRetry"];
      [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v30];
      v14 = v31;
    }

    else
    {
      v32 = [(FMDRequestRetryHelper *)self _consecutiveRetryCountForType:@"NotificationBasedNetworkRetry"];
      if ([request maxConsecutiveNetworkNotificationRetries] == -1 || objc_msgSend(request, "maxConsecutiveNetworkNotificationRetries") > v32)
      {
        v33 = sub_100002880([(FMDRequestRetryHelper *)self setNextRetryType:@"NotificationBasedNetworkRetry"]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          *v55 = 138412546;
          *&v55[4] = v34;
          *&v55[12] = 2048;
          *&v55[14] = request;
          v35 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Waiting for a network-up notification to retry again", v55, 0x16u);
        }

        v14 = -1.0;
      }

      else
      {
        v36 = sub_100002880([(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"]);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = objc_opt_class();
          *v55 = 138412546;
          *&v55[4] = v37;
          *&v55[12] = 2048;
          *&v55[14] = request;
          v38 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of consecutive network-up notification based retries", v55, 0x16u);
        }
      }
    }
  }

  nextRetryType6 = [(FMDRequestRetryHelper *)self nextRetryType];
  if (nextRetryType6)
  {
  }

  else if ([request responseErrorType] == 1025)
  {
    v40 = [(FMDRequestRetryHelper *)self _retryCountForType:@"RedirectRetry"];
    if (v40)
    {
      v41 = v40;
      if ([request maxNonNetworkRelatedRetries] == -1 || objc_msgSend(request, "maxNonNetworkRelatedRetries") > v41)
      {
        [(FMDRequestRetryHelper *)self setNextRetryType:@"RedirectRetry"];
        [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v41];
        v14 = v42;
      }

      else
      {
        v43 = sub_100002880([(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"]);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = objc_opt_class();
          *v55 = 138412546;
          *&v55[4] = v44;
          *&v55[12] = 2048;
          *&v55[14] = request;
          v45 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of redirect retries", v55, 0x16u);
        }
      }
    }

    else
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:@"RedirectRetry"];
      v14 = 0.0;
    }
  }

  nextRetryType7 = [(FMDRequestRetryHelper *)self nextRetryType];

  if (!nextRetryType7)
  {
    v47 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [request httpResponseStatus]);
    stringValue = [v47 stringValue];

    v49 = [(FMDRequestRetryHelper *)self _retryCountForType:stringValue];
    if ([request maxNonNetworkRelatedRetries] == -1 || objc_msgSend(request, "maxNonNetworkRelatedRetries") > v49)
    {
      [(FMDRequestRetryHelper *)self setNextRetryType:stringValue];
      [(FMDRequestRetryHelper *)self _decayedWaitIntervalForRetryCount:v49];
      v14 = v50;
    }

    else
    {
      v51 = sub_100002880([(FMDRequestRetryHelper *)self setNextRetryType:@"NoMoreRetries"]);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = objc_opt_class();
        *v55 = 138412802;
        *&v55[4] = v52;
        *&v55[12] = 2048;
        *&v55[14] = request;
        *&v55[22] = 2112;
        v56 = *&stringValue;
        v53 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Stopped retrying since we exceeded the maximum number of retries for status code %@", v55, 0x20u);
      }
    }
  }

  nextRetryType8 = [(FMDRequestRetryHelper *)self nextRetryType];
  [request setWillRetry:{objc_msgSend(nextRetryType8, "isEqualToString:", @"NoMoreRetries"}];

  [(FMDRequestRetryHelper *)self _scheduleRetryAfterTimeInterval:v14];
}

- (FMDRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (FMDRequestRetryHelper)initWithRequest:(id)request retryAction:(id)action
{
  requestCopy = request;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = FMDRequestRetryHelper;
  v8 = [(FMDRequestRetryHelper *)&v13 init];
  if (v8)
  {
    v9 = objc_retainBlock(actionCopy);
    retryAction = v8->_retryAction;
    v8->_retryAction = v9;

    objc_storeWeak(&v8->_request, requestCopy);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"_networkStateChanged:" name:FMLocalNetworkStatusChangedNotification object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(FMDRequestRetryHelper *)self deinitializeHelper];
  v3.receiver = self;
  v3.super_class = FMDRequestRetryHelper;
  [(FMDRequestRetryHelper *)&v3 dealloc];
}

- (void)deinitializeHelper
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:FMLocalNetworkStatusChangedNotification object:0];

  retryTimer = [(FMDRequestRetryHelper *)self retryTimer];
  [retryTimer invalidate];

  [(FMDRequestRetryHelper *)self setRetryTimer:0];
  [(FMDRequestRetryHelper *)self setNextRetryTime:0];
  [(FMDRequestRetryHelper *)self setRetryAction:0];

  [(FMDRequestRetryHelper *)self setRequest:0];
}

- (double)_decayedWaitIntervalForRetryCount:(int64_t)count
{
  request = [(FMDRequestRetryHelper *)self request];
  [request firstRetryInterval];
  v6 = v5;
  [request retryIntervalDecayFactor];
  v8 = v6 * pow(v7, count);
  [request maxRetryInterval];
  if (v9 > -1.0)
  {
    [request maxRetryInterval];
    if (v8 > v10)
    {
      [request maxRetryInterval];
      v8 = v11;
    }
  }

  return v8;
}

- (void)_retryTimerFired
{
  retryTimer = [(FMDRequestRetryHelper *)self retryTimer];
  [retryTimer invalidate];

  [(FMDRequestRetryHelper *)self setRetryTimer:0];
  [(FMDRequestRetryHelper *)self setNextRetryTime:0];
  request = [(FMDRequestRetryHelper *)self request];
  canRequestBeRetriedNow = [request canRequestBeRetriedNow];
  if (canRequestBeRetriedNow && (canRequestBeRetriedNow = [request inProgress], !canRequestBeRetriedNow))
  {
    [(FMDRequestRetryHelper *)self _retryNow];
  }

  else
  {
    v6 = sub_100002880(canRequestBeRetriedNow);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = request;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Retry time arrived, but request cannot be retried anymore or retry is already in progress. Not retrying", &v8, 0x16u);
    }
  }
}

- (void)_retryNow
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015DB90;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_networkCameUp
{
  request = [(FMDRequestRetryHelper *)self request];
  v4 = sub_100002880(request);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 138412546;
    *&v29[4] = objc_opt_class();
    *&v29[12] = 2048;
    *&v29[14] = request;
    v5 = *&v29[4];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Network came up", v29, 0x16u);
  }

  if ([request canRequestBeRetriedNow] && (objc_msgSend(request, "inProgress") & 1) == 0)
  {
    nextRetryType = [(FMDRequestRetryHelper *)self nextRetryType];
    if ([nextRetryType isEqualToString:@"TimerBasedNetworkRetry"])
    {

      goto LABEL_8;
    }

    nextRetryType2 = [(FMDRequestRetryHelper *)self nextRetryType];
    v8 = [nextRetryType2 isEqualToString:@"NotificationBasedNetworkRetry"];

    if (v8)
    {
LABEL_8:
      v9 = [NSDate date:*v29];
      nextRetryType3 = [(FMDRequestRetryHelper *)self nextRetryType];
      if ([nextRetryType3 isEqualToString:@"NotificationBasedNetworkRetry"])
      {
        nextRetryTime = [(FMDRequestRetryHelper *)self nextRetryTime];

        if (nextRetryTime)
        {
          v13 = sub_100002880(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = objc_opt_class();
            v15 = v14;
            nextRetryTime2 = [(FMDRequestRetryHelper *)self nextRetryTime];
            *v29 = 138412802;
            *&v29[4] = v14;
            *&v29[12] = 2048;
            *&v29[14] = request;
            *&v29[22] = 2112;
            v30 = nextRetryTime2;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Network up retry already pending for %@", v29, 0x20u);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      lastRetryType = [(FMDRequestRetryHelper *)self lastRetryType];
      if ([lastRetryType isEqualToString:@"NotificationBasedNetworkRetry"])
      {
        lastRetryTime = [(FMDRequestRetryHelper *)self lastRetryTime];

        if (lastRetryTime)
        {
          lastRetryTime2 = [(FMDRequestRetryHelper *)self lastRetryTime];
          [v9 timeIntervalSinceDate:lastRetryTime2];
          v21 = v20;

          if (v21 >= 60.0 || v21 < 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = 60.0 - v21;
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      v23 = 0.0;
LABEL_23:
      nextRetryTime3 = [(FMDRequestRetryHelper *)self nextRetryTime];

      if (!nextRetryTime3 || (-[FMDRequestRetryHelper nextRetryTime](self, "nextRetryTime"), v25 = objc_claimAutoreleasedReturnValue(), [v25 timeIntervalSinceDate:v9], v27 = v26, v25, v27 < 0.0) || v27 >= v23)
      {
        [(FMDRequestRetryHelper *)self _scheduleRetryAfterTimeInterval:v23];
        goto LABEL_30;
      }

      v13 = sub_100002880(v28);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100228A08(request, self, v13);
      }

LABEL_28:

LABEL_30:
    }
  }
}

- (void)_scheduleRetryAfterTimeInterval:(double)interval
{
  request = [(FMDRequestRetryHelper *)self request];
  v6 = request;
  if (interval <= 0.0)
  {
    v18 = sub_100002880(request);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (interval >= 0.0)
    {
      if (v19)
      {
        v21 = objc_opt_class();
        v22 = v21;
        nextRetryType = [(FMDRequestRetryHelper *)self nextRetryType];
        *buf = 138412802;
        v26 = v21;
        v27 = 2048;
        v28 = v6;
        v29 = 2112;
        v30 = nextRetryType;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Scheduling retry of type '%@' to occur now", buf, 0x20u);
      }

      v24 = +[NSDate date];
      [(FMDRequestRetryHelper *)self setNextRetryTime:v24];

      [(FMDRequestRetryHelper *)self _retryNow];
    }

    else
    {
      if (v19)
      {
        *buf = 138412546;
        v26 = objc_opt_class();
        v27 = 2048;
        v28 = v6;
        v20 = v26;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Not scheduling any retry", buf, 0x16u);
      }

      [(FMDRequestRetryHelper *)self setNextRetryTime:0];
    }
  }

  else
  {
    v7 = [NSDate dateWithTimeIntervalSinceNow:interval];
    [(FMDRequestRetryHelper *)self setNextRetryTime:v7];

    v9 = sub_100002880(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      nextRetryType2 = [(FMDRequestRetryHelper *)self nextRetryType];
      nextRetryTime = [(FMDRequestRetryHelper *)self nextRetryTime];
      *buf = 138413058;
      v26 = v10;
      v27 = 2048;
      v28 = v6;
      v29 = 2112;
      v30 = nextRetryType2;
      v31 = 2112;
      v32 = nextRetryTime;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Scheduling retry of type '%@' to occur at %@", buf, 0x2Au);
    }

    v14 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.retry.%@-%p", objc_opt_class(), self];
    v15 = [[PCPersistentTimer alloc] initWithTimeInterval:v14 serviceIdentifier:self target:"_retryTimerFired" selector:0 userInfo:interval];
    [(FMDRequestRetryHelper *)self setRetryTimer:v15];

    retryTimer = [(FMDRequestRetryHelper *)self retryTimer];
    [retryTimer setMinimumEarlyFireProportion:0.75];

    retryTimer2 = [(FMDRequestRetryHelper *)self retryTimer];
    [retryTimer2 scheduleInQueue:&_dispatch_main_q];
  }
}

- (int)_retryCountForType:(id)type
{
  typeCopy = type;
  totalRetriesByType = [(FMDRequestRetryHelper *)self totalRetriesByType];
  v6 = [totalRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)_consecutiveRetryCountForType:(id)type
{
  typeCopy = type;
  consecutiveRetriesByType = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
  v6 = [consecutiveRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_incrementRetryCountForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v18 = typeCopy;
    totalRetriesByType = [(FMDRequestRetryHelper *)self totalRetriesByType];

    if (!totalRetriesByType)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(FMDRequestRetryHelper *)self setTotalRetriesByType:v6];

      v7 = +[NSMutableDictionary dictionary];
      [(FMDRequestRetryHelper *)self setConsecutiveRetriesByType:v7];
    }

    totalRetriesByType2 = [(FMDRequestRetryHelper *)self totalRetriesByType];
    v9 = [totalRetriesByType2 objectForKeyedSubscript:v18];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    totalRetriesByType3 = [(FMDRequestRetryHelper *)self totalRetriesByType];
    [totalRetriesByType3 setObject:v10 forKeyedSubscript:v18];

    consecutiveRetriesByType = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
    v13 = [consecutiveRetriesByType objectForKeyedSubscript:v18];

    lastRetryType = [(FMDRequestRetryHelper *)self lastRetryType];
    v15 = [v18 isEqualToString:lastRetryType];

    if (v15)
    {
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    }

    else
    {
      v16 = &off_1002E7B28;
    }

    consecutiveRetriesByType2 = [(FMDRequestRetryHelper *)self consecutiveRetriesByType];
    [consecutiveRetriesByType2 setObject:v16 forKeyedSubscript:v18];

    typeCopy = v18;
  }

  ++self->_totalRetryCount;
}

- (void)_networkStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:FMLocalNetworkStatusKey];

  if ([v5 BOOLValue])
  {
    [(FMDRequestRetryHelper *)self _networkCameUp];
  }
}

@end