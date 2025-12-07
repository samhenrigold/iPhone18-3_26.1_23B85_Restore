@interface UpgradeOperation
- (UpgradeOperation)initWithCryptexName:(id)name graftPath:(id)path;
- (void)completeUpgrade;
- (void)onComplete:(id)complete withQueue:(id)queue;
- (void)startUpgrade;
- (void)terminateJobsWithCompletion:(id)completion;
@end

@implementation UpgradeOperation

- (UpgradeOperation)initWithCryptexName:(id)name graftPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = UpgradeOperation;
  v9 = [(UpgradeOperation *)&v18 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.libcryptex", "upgrade");
    logHandle = v9->_logHandle;
    v9->_logHandle = v10;

    v12 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v12;

    objc_storeStrong(&v9->_cryptexName, name);
    v14 = dispatch_queue_create("com.apple.security.cryptexd.upgrade", 0);
    workQueue = v9->_workQueue;
    v9->_workQueue = v14;

    objc_storeStrong(&v9->_graftPath, path);
    error = v9->_error;
    v9->_error = 0;
  }

  return v9;
}

- (void)terminateJobsWithCompletion:(id)completion
{
  completionCopy = completion;
  cryptexName = [(UpgradeOperation *)self cryptexName];
  uTF8String = [cryptexName UTF8String];
  workQueue = [(UpgradeOperation *)self workQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __48__UpgradeOperation_terminateJobsWithCompletion___block_invoke;
  v9[3] = &unk_1000713F0;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  launch_cryptex_terminate_with_timeout(uTF8String, 0x3Cu, workQueue, v9);
}

void __48__UpgradeOperation_terminateJobsWithCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) logHandle];

    if (v4)
    {
      v5 = [*(a1 + 32) logHandle];
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      v7 = [*(a1 + 32) cryptexName];
      if (v6)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      *buf = 138543618;
      v26 = v7;
      v27 = 1024;
      v28 = a2;
      v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v5, 16, "Terminating launchd jobs failed for cryptex '%{public}@' %{darwin.errno}d", buf, 18);
    }

    else
    {
      v19 = &_os_log_default;
      v20 = [*(a1 + 32) cryptexName];
      *buf = 138543618;
      v26 = v20;
      v27 = 1024;
      v28 = a2;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Terminating launchd jobs failed for cryptex '%{public}@' %{darwin.errno}d", buf, 18);

      v5 = &_os_log_default;
    }

    Error = createError("[UpgradeOperation terminateJobsWithCompletion:]_block_invoke", "upgrade_sequencer.m", 128, "com.apple.security.cryptex.posix", a2, 0, v9);
LABEL_20:
    v22 = Error;
    free(v9);
    goto LABEL_21;
  }

  v10 = *__error();
  v11 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) cryptexName];
    *buf = 138543362;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Terminated jobs for cryptex '%{public}@'", buf, 0xCu);
  }

  *__error() = v10;
  v13 = proc_terminate_all_rsr(9);
  if (v13)
  {
    v14 = [*(a1 + 32) logHandle];

    if (v14)
    {
      v15 = [*(a1 + 32) logHandle];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      v17 = [*(a1 + 32) cryptexName];
      if (v16)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      *buf = 138543618;
      v26 = v17;
      v27 = 1024;
      v28 = v13;
      v9 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v15, 16, "Killing miscellaneous processes failed for cryptex '%{public}@' %{darwin.errno}d", buf, 18);
    }

    else
    {
      v23 = &_os_log_default;
      v24 = [*(a1 + 32) cryptexName];
      *buf = 138543618;
      v26 = v24;
      v27 = 1024;
      v28 = v13;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Killing miscellaneous processes failed for cryptex '%{public}@' %{darwin.errno}d", buf, 18);

      v15 = &_os_log_default;
    }

    Error = createError("[UpgradeOperation terminateJobsWithCompletion:]_block_invoke", "upgrade_sequencer.m", 143, "com.apple.security.cryptex.posix", v13, 0, v9);
    goto LABEL_20;
  }

  v22 = 0;
LABEL_21:
  (*(*(a1 + 40) + 16))();
}

- (void)startUpgrade
{
  v3 = *__error();
  logHandle = [(UpgradeOperation *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "Upgrade started.", v6, 2u);
  }

  *__error() = v3;
  group = [(UpgradeOperation *)self group];
  dispatch_group_enter(group);
}

- (void)completeUpgrade
{
  workQueue = [(UpgradeOperation *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  workQueue2 = [(UpgradeOperation *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__UpgradeOperation_completeUpgrade__block_invoke;
  block[3] = &unk_100071418;
  block[4] = self;
  dispatch_sync(workQueue2, block);
}

void __35__UpgradeOperation_completeUpgrade__block_invoke(uint64_t a1)
{
  v2 = *__error();
  v3 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Upgrade complete.", v5, 2u);
  }

  *__error() = v2;
  v4 = [*(a1 + 32) group];
  dispatch_group_leave(v4);
}

- (void)onComplete:(id)complete withQueue:(id)queue
{
  completeCopy = complete;
  queueCopy = queue;
  group = [(UpgradeOperation *)self group];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __41__UpgradeOperation_onComplete_withQueue___block_invoke;
  v10[3] = &unk_100071440;
  v10[4] = self;
  v11 = completeCopy;
  v9 = completeCopy;
  dispatch_group_notify(group, queueCopy, v10);
}

void __41__UpgradeOperation_onComplete_withQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

@end