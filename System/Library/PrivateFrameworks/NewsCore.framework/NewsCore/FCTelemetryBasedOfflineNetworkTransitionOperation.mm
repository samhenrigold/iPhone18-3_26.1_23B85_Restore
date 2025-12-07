@interface FCTelemetryBasedOfflineNetworkTransitionOperation
- (FCTelemetryBasedOfflineNetworkTransitionOperation)init;
- (FCTelemetryBasedOfflineNetworkTransitionOperation)initWithAppActivationMonitor:(id)monitor ignoredHosts:(id)hosts networkBehaviorMonitor:(id)behaviorMonitor;
- (void)logNetworkEvent:(id)event;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCTelemetryBasedOfflineNetworkTransitionOperation

- (void)performOperation
{
  date = [MEMORY[0x1E695DF00] date];
  [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self setMonitoringStartDate:date];

  networkBehaviorMonitor = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self networkBehaviorMonitor];
  [networkBehaviorMonitor addMonitor:self];
}

- (FCTelemetryBasedOfflineNetworkTransitionOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTelemetryBasedOfflineNetworkTransitionOperation init]";
    v10 = 2080;
    v11 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v12 = 1024;
    v13 = 31;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTelemetryBasedOfflineNetworkTransitionOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTelemetryBasedOfflineNetworkTransitionOperation)initWithAppActivationMonitor:(id)monitor ignoredHosts:(id)hosts networkBehaviorMonitor:(id)behaviorMonitor
{
  v31 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  hostsCopy = hosts;
  behaviorMonitorCopy = behaviorMonitor;
  if (!monitorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appActivationMonitor"];
    *buf = 136315906;
    v24 = "[FCTelemetryBasedOfflineNetworkTransitionOperation initWithAppActivationMonitor:ignoredHosts:networkBehaviorMonitor:]";
    v25 = 2080;
    v26 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v27 = 1024;
    v28 = 38;
    v29 = 2114;
    v30 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (hostsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (hostsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "ignoredHosts"];
    *buf = 136315906;
    v24 = "[FCTelemetryBasedOfflineNetworkTransitionOperation initWithAppActivationMonitor:ignoredHosts:networkBehaviorMonitor:]";
    v25 = 2080;
    v26 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v27 = 1024;
    v28 = 39;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!behaviorMonitorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkBehaviorMonitor"];
    *buf = 136315906;
    v24 = "[FCTelemetryBasedOfflineNetworkTransitionOperation initWithAppActivationMonitor:ignoredHosts:networkBehaviorMonitor:]";
    v25 = 2080;
    v26 = "FCTelemetryBasedOfflineNetworkTransitionOperation.m";
    v27 = 1024;
    v28 = 40;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22.receiver = self;
  v22.super_class = FCTelemetryBasedOfflineNetworkTransitionOperation;
  v12 = [(FCOperation *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appActivationMonitor, monitor);
    v14 = [hostsCopy copy];
    ignoredHosts = v13->_ignoredHosts;
    v13->_ignoredHosts = v14;

    objc_storeStrong(&v13->_networkBehaviorMonitor, behaviorMonitor);
    v16 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v13->_lock;
    v13->_lock = v16;
  }

  return v13;
}

- (void)operationWillFinishWithError:(id)error
{
  networkBehaviorMonitor = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self networkBehaviorMonitor];
  [networkBehaviorMonitor removeMonitor:self];
}

- (void)logNetworkEvent:(id)event
{
  v47 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = MEMORY[0x1E695DF00];
  [eventCopy startTime];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  error = [eventCopy error];
  v8 = error;
  if (error)
  {
    v9 = error;
    monitoringStartDate = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self monitoringStartDate];
    if (([v6 fc_isLaterThan:monitoringStartDate] & 1) == 0)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_3;
      v36[3] = &unk_1E7C36C58;
      v37 = v6;
      v38 = monitoringStartDate;
      __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_3(v36);

LABEL_10:
      goto LABEL_11;
    }

    v35 = 0;
    if (![v9 fc_isOfflineErrorOfflineReason:&v35] || v35 == 2)
    {
      goto LABEL_10;
    }

    if ([v9 fc_failedDueToTaskConstraints])
    {
      v11 = FCReachabilityLog;
      if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "disregarding event, since it failed due to task constraints", buf, 2u);
      }

      goto LABEL_10;
    }

    error2 = [eventCopy error];
    userInfo = [error2 userInfo];
    v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A980]];

    if (v14)
    {
      host = [v14 host];
      ignoredHosts = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self ignoredHosts];
      v17 = [ignoredHosts containsObject:host];

      v18 = FCReachabilityLog;
      v19 = os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          *buf = 138543362;
          v44 = host;
          _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "host %{public}@ will be ignored", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v19)
      {
        *buf = 138543362;
        v44 = host;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "host %{public}@ will not be ignored", buf, 0xCu);
      }
    }

    else
    {
      v20 = FCReachabilityLog;
      if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "no failing URL was obtained, so treating error as counting towards offline", buf, 2u);
      }
    }

    appActivationMonitor = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self appActivationMonitor];
    host = [appActivationMonitor lastActivationDate];

    appActivationMonitor2 = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self appActivationMonitor];
    lastBackgroundDate = [appActivationMonitor2 lastBackgroundDate];

    if (host)
    {
      if (lastBackgroundDate && [lastBackgroundDate fc_isLaterThan:host])
      {
        v24 = FCReachabilityLog;
        if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v44 = lastBackgroundDate;
          v45 = 2114;
          v46 = host;
          v25 = "disregarding error, since app is currently in the background, with last activation date of %{public}@ and last background date of %{public}@ ";
LABEL_29:
          v26 = v24;
          v27 = 22;
LABEL_32:
          _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
        }
      }

      else
      {
        if (![v6 fc_isEarlierThan:host])
        {
          lock = [(FCTelemetryBasedOfflineNetworkTransitionOperation *)self lock];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_25;
          v30[3] = &unk_1E7C376C8;
          v30[4] = self;
          v31 = eventCopy;
          v32 = v6;
          v33 = host;
          v34 = lastBackgroundDate;
          [lock performWithLockSync:v30];

          goto LABEL_34;
        }

        v24 = FCReachabilityLog;
        if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v44 = v6;
          v45 = 2114;
          v46 = host;
          v25 = "disregarding error, since network event started at %{public}@ relative to last activation date of %{public}@";
          goto LABEL_29;
        }
      }
    }

    else
    {
      v28 = FCReachabilityLog;
      if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "disregarding error, since app has not yet become active";
        v26 = v28;
        v27 = 2;
        goto LABEL_32;
      }
    }

LABEL_34:

LABEL_35:
    goto LABEL_10;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke;
  v39[3] = &unk_1E7C376A0;
  v40 = eventCopy;
  selfCopy = self;
  v42 = v6;
  __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke(v39);

  v9 = v40;
LABEL_11:
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) totalDuration];
  v3 = v2;
  [*(a1 + 40) maximumDurationToCountAsSuccess];
  if (v3 < v4)
  {
    v5 = [*(a1 + 40) lock];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_2;
    v7[3] = &unk_1E7C36C58;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v6;
    [v5 performWithLockSync:v7];
  }
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = [*(a1 + 32) dateOfLastSuccess];
  v3 = [v2 fc_laterDateAllowingNilWithDate:v4 andDate:*(a1 + 40)];
  [*(a1 + 32) setDateOfLastSuccess:v3];
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "disregarding event, since it started at %{public}@ relative to offline monitoring start date of %{public}@", &v5, 0x16u);
  }
}

void __69__FCTelemetryBasedOfflineNetworkTransitionOperation_logNetworkEvent___block_invoke_25(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dateOfLastSuccess];
  if (!v2)
  {
    goto LABEL_4;
  }

  [*(a1 + 32) minimumSecondsSinceSuccessToOffline];
  v3 = [v2 dateByAddingTimeInterval:?];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v4 fc_isLaterThan:v3];

  if (v5)
  {

LABEL_4:
    v6 = FCReachabilityLog;
    if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 error];
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v15 = 138544386;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v2;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "transitioning offline after receiving event with error %{public}@, starting at %{public}@ relative to last activation date of %{public}@, last background date of %{public}@, and last success date of %{public}@", &v15, 0x34u);
    }

    if (([*(a1 + 32) isFinished] & 1) == 0)
    {
      v13 = [*(a1 + 32) transitionBlock];
      v13[2]();

      [*(a1 + 32) finishedPerformingOperationWithError:0];
    }

    goto LABEL_11;
  }

  v14 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v3;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "disregarding error, since earliest failure date is %{public}@", &v15, 0xCu);
  }

LABEL_11:
}

@end