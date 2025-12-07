@interface UpgradeSequencer
+ (id)getSharedInstance;
- (BOOL)_isInterfaceLocked;
- (BOOL)lockIsHeldByClient:(_rpc_cred *)client;
- (UpgradeSequencer)init;
- (id)_abort;
- (id)_completeUpgradeSession;
- (id)_completeUpgradeWithError:(id)error;
- (id)_timeout;
- (id)_unlockInterface;
- (int)_setKernelUpgradeOngoing:(BOOL)ongoing;
- (void)_disableInterfaceLockTimeout;
- (void)_handleInterfaceLockCancel;
- (void)_restartInterfaceLockTimeout;
- (void)_startUpgradeForCryptex:(id)cryptex withGraftPath:(id)path killingJobs:(BOOL)jobs withCompletion:(id)completion;
- (void)abortWithCompletion:(id)completion;
- (void)completeUpgradeWithCompletion:(id)completion;
- (void)lockInterfaceForClient:(id)client withCompletion:(id)completion;
- (void)onUpgradeCompleteForCryptex:(id)cryptex withCompletion:(id)completion;
- (void)onUpgradeSessionComplete:(id)complete;
- (void)startUpgradeForCryptexes:(id)cryptexes killingJobs:(BOOL)jobs withCompletion:(id)completion;
@end

@implementation UpgradeSequencer

+ (id)getSharedInstance
{
  if (getSharedInstance_onceToken != -1)
  {
    +[UpgradeSequencer getSharedInstance];
  }

  v3 = getSharedInstance_gUpsq;

  return v3;
}

void __37__UpgradeSequencer_getSharedInstance__block_invoke(id a1)
{
  getSharedInstance_gUpsq = objc_alloc_init(UpgradeSequencer);

  _objc_release_x1();
}

- (UpgradeSequencer)init
{
  v22.receiver = self;
  v22.super_class = UpgradeSequencer;
  v2 = [(UpgradeSequencer *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_initially_inactive(0);
    v4 = dispatch_queue_create("com.apple.security.cryptexd.upgrade_sequencer_registration", v3);

    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    dispatch_set_qos_class();
    dispatch_activate(*(v2 + 3));
    v6 = dispatch_queue_create("com.apple.security.cryptexd.upgrade_sequencer_work", 0);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    dispatch_set_target_queue(*(v2 + 2), *(v2 + 3));
    v8 = dispatch_queue_create("com.apple.security.cryptexd.upgrade_sequencer_lock_acquire", 0);
    v9 = *(v2 + 1);
    *(v2 + 1) = v8;

    dispatch_set_target_queue(*(v2 + 1), *(v2 + 2));
    dispatch_suspend(*(v2 + 1));
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 2));
    v11 = *(v2 + 8);
    *(v2 + 8) = v10;

    dispatch_source_set_timer(*(v2 + 8), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v12 = *(v2 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __24__UpgradeSequencer_init__block_invoke;
    handler[3] = &unk_100071418;
    v13 = v2;
    v21 = v13;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_resume(*(v2 + 8));
    v14 = v13[6];
    v13[6] = 0;

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = v13[4];
    v13[4] = v15;

    v17 = os_log_create("com.apple.libcryptex", "upgrade_sequencer");
    v18 = v13[5];
    v13[5] = v17;
  }

  return v2;
}

int *__24__UpgradeSequencer_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _timeout];

  v3 = *__error();
  v4 = [*(a1 + 32) logHandle];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) _timeout];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Timed out client.: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Timed out client. [no error]", &v8, 2u);
  }

  result = __error();
  *result = v3;
  return result;
}

- (void)startUpgradeForCryptexes:(id)cryptexes killingJobs:(BOOL)jobs withCompletion:(id)completion
{
  cryptexesCopy = cryptexes;
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke;
  v13[3] = &unk_100071570;
  v14 = cryptexesCopy;
  v15 = completionCopy;
  v13[4] = self;
  jobsCopy = jobs;
  v11 = cryptexesCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, v13);
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v2 = dispatch_group_create();
  if ([*(a1 + 32) _isInterfaceLocked])
  {
    v3 = v38[5];
    v38[5] = 0;

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2;
    v36[3] = &unk_1000714D0;
    v4 = *(a1 + 40);
    v36[4] = *(a1 + 32);
    v36[5] = &v37;
    [v4 enumerateKeysAndObjectsUsingBlock:v36];
    v5 = *(a1 + 32);
    if (v38[5])
    {
      v6 = [v5 logHandle];

      if (v6)
      {
        v7 = [*(a1 + 32) logHandle];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        LOWORD(v43) = 0;
        v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "Invalid input.", &v43, 2);
      }

      else
      {
        LOWORD(v43) = 0;
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid input.", &v43, 2);
      }

      Error = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 425, "com.apple.security.cryptex", 11, v38[5], v9);
      free(v9);
      v22 = v38[5];
      v38[5] = Error;
      goto LABEL_24;
    }

    v14 = [v5 _setKernelUpgradeOngoing:1];
    if (!v14)
    {
      [*(a1 + 32) _disableInterfaceLockTimeout];
      dispatch_group_enter(v2);
      v23 = *(a1 + 40);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2_108;
      v31[3] = &unk_100071520;
      v24 = v2;
      v25 = *(a1 + 32);
      v32 = v24;
      v33 = v25;
      v35 = *(a1 + 56);
      v34 = &v37;
      [v23 enumerateKeysAndObjectsUsingBlock:v31];
      v26 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_110;
      block[3] = &unk_100071548;
      v27 = *(a1 + 32);
      v30 = &v37;
      block[4] = v27;
      v29 = *(a1 + 48);
      dispatch_group_notify(v24, v26, block);

      dispatch_group_leave(v24);
      v22 = v32;
LABEL_24:

      goto LABEL_25;
    }

    v15 = [*(a1 + 32) logHandle];

    if (v15)
    {
      v16 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v43 = 67109120;
      v44 = v14;
      v13 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "Setting kernel flag failed. %{darwin.errno}d", &v43, 8);
    }

    else
    {
      v43 = 67109120;
      v44 = v14;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Setting kernel flag failed. %{darwin.errno}d", &v43, 8);
    }

    v18 = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 435, "com.apple.security.cryptex.posix", v14, 0, v13);
  }

  else
  {
    v10 = [*(a1 + 32) logHandle];

    if (v10)
    {
      v11 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      LOWORD(v43) = 0;
      v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v11, 16, "No one has locked the upgrade interface.", &v43, 2);
    }

    else
    {
      LOWORD(v43) = 0;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "No one has locked the upgrade interface.", &v43, 2);
    }

    v18 = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 393, "com.apple.security.cryptex", 11, 0, v13);
  }

  v19 = v18;
  free(v13);
  v20 = v38[5];
  v38[5] = v19;

  (*(*(a1 + 48) + 16))();
LABEL_25:

  _Block_object_dispose(&v37, 8);
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [*(a1 + 32) logHandle];

    if (v13)
    {
      v14 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v23[0] = 0;
      v12 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 16, "Invalid cryptex name.", v23, 2);
    }

    else
    {
      v22[0] = 0;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid cryptex name.", v22, 2);
    }

    Error = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 407, "com.apple.security.cryptex", 11, 0, v12);
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [*(a1 + 32) logHandle];

    if (v9)
    {
      v10 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v21[0] = 0;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "Invalid path.", v21, 2);
    }

    else
    {
      v20[0] = 0;
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Invalid path.", v20, 2);
    }

    Error = createError("[UpgradeSequencer startUpgradeForCryptexes:killingJobs:withCompletion:]_block_invoke", "upgrade_sequencer.m", 415, "com.apple.security.cryptex", 11, 0, v12);
LABEL_17:
    v17 = Error;
    free(v12);
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_2_108(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_3;
  v11[3] = &unk_1000714F8;
  v11[4] = v8;
  v12 = v5;
  v14 = *(a1 + 48);
  v13 = *(a1 + 32);
  v10 = v5;
  [v8 _startUpgradeForCryptex:v10 withGraftPath:v7 killingJobs:v9 withCompletion:v11];
}

void __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *__error();
  v6 = [*(a1 + 32) logHandle];
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "start upgrade of cryptex '%{public}@': %@", &v13, 0x16u);
    }

    *__error() = v5;
    v9 = *(*(a1 + 56) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a2);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "start upgrade of cryptex '%{public}@' [no error]", &v13, 0xCu);
    }

    *__error() = v5;
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __72__UpgradeSequencer_startUpgradeForCryptexes_killingJobs_withCompletion___block_invoke_110(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *__error();
  v4 = [*(a1 + 32) logHandle];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v12 = 138412290;
      v13 = v6;
      v7 = "start upgrade session: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    v7 = "start upgrade session [no error]";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
    goto LABEL_6;
  }

  *__error() = v3;
  [*(a1 + 32) _restartInterfaceLockTimeout];
  return (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
}

- (void)completeUpgradeWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__UpgradeSequencer_completeUpgradeWithCompletion___block_invoke;
  v7[3] = &unk_100071598;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __50__UpgradeSequencer_completeUpgradeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _completeUpgradeWithError:0];
  (*(*(a1 + 40) + 16))();
}

- (void)onUpgradeCompleteForCryptex:(id)cryptex withCompletion:(id)completion
{
  cryptexCopy = cryptex;
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_suspend(workQueue);

  registrationQueue = [(UpgradeSequencer *)self registrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__UpgradeSequencer_onUpgradeCompleteForCryptex_withCompletion___block_invoke;
  block[3] = &unk_1000715C0;
  block[4] = self;
  v13 = cryptexCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = cryptexCopy;
  dispatch_async(registrationQueue, block);
}

void __63__UpgradeSequencer_onUpgradeCompleteForCryptex_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) upgradesUnderway];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    Error = [*(a1 + 32) workQueue];
    [v3 onComplete:v4 withQueue:Error];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];

    if (v6)
    {
      v7 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v12[0] = 0;
      v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "No upgrades underway for this cryptex.", v12, 2);
    }

    else
    {
      v11[0] = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "No upgrades underway for this cryptex.", v11, 2);
    }

    Error = createError("[UpgradeSequencer onUpgradeCompleteForCryptex:withCompletion:]_block_invoke", "upgrade_sequencer.m", 497, "com.apple.security.cryptex", 8, 0, v9);
    free(v9);
    (*(*(a1 + 48) + 16))();
  }

  v10 = [*(a1 + 32) workQueue];
  dispatch_resume(v10);
}

- (void)onUpgradeSessionComplete:(id)complete
{
  completeCopy = complete;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_suspend(workQueue);

  registrationQueue = [(UpgradeSequencer *)self registrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__UpgradeSequencer_onUpgradeSessionComplete___block_invoke;
  v8[3] = &unk_100071598;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_sync(registrationQueue, v8);
}

void __45__UpgradeSequencer_onUpgradeSessionComplete___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSessionCompleteCallback:*(a1 + 40)];
  v2 = [*(a1 + 32) workQueue];
  dispatch_resume(v2);
}

- (void)lockInterfaceForClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  lockAcquireQueue = [(UpgradeSequencer *)self lockAcquireQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke;
  block[3] = &unk_1000715C0;
  block[4] = self;
  v12 = clientCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = clientCopy;
  dispatch_sync(lockAcquireQueue, block);
}

void __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) lockingClient];

  if (v5)
  {
    buffer = *"unknown";
    v65 = *&qword_100059128;
    v6 = [*(a1 + 32) lockingClient];
    v7 = [v6 conn];
    pid = xpc_connection_get_pid(v7);
    proc_name(pid, &buffer, 0x20u);

    v9 = [*(a1 + 32) logHandle];

    if (v9)
    {
      v10 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v12 = [*(a1 + 32) lockingClient];
      v13 = [v12 conn];
      if (v13)
      {
        v2 = [*(a1 + 32) lockingClient];
        v3 = [v2 conn];
        v14 = xpc_connection_get_pid(v3);
      }

      else
      {
        v14 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v60 = 1024;
      v61 = v14;
      v62 = 1024;
      LODWORD(v63) = 16;
      v38 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "XPC client <process=%s pid=%d>: already holding lock on upgrade interface %{darwin.errno}d", buf, 24);
      if (v13)
      {
      }
    }

    else
    {
      v25 = &_os_log_default;
      v26 = [*(a1 + 32) lockingClient];
      v27 = [v26 conn];
      if (v27)
      {
        v1 = [*(a1 + 32) lockingClient];
        v2 = [v1 conn];
        v28 = xpc_connection_get_pid(v2);
      }

      else
      {
        v28 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v60 = 1024;
      v61 = v28;
      v62 = 1024;
      LODWORD(v63) = 16;
      v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: already holding lock on upgrade interface %{darwin.errno}d", buf, 24);
      if (v27)
      {
      }

      v10 = &_os_log_default;
    }

    Error = createError("[UpgradeSequencer lockInterfaceForClient:withCompletion:]_block_invoke", "upgrade_sequencer.m", 524, "com.apple.security.cryptex.posix", 16, 0, v38);
  }

  else
  {
    if (cryptex_xpc_connection_is_entitled(*(a1 + 40), "com.apple.private.security.cryptex.upgrade"))
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) workQueue];
      xpc_connection_set_target_queue(v15, v16);

      v17 = [UpgradeClient alloc];
      v18 = *(a1 + 40);
      v19 = [*(a1 + 32) logHandle];
      v20 = [(UpgradeClient *)v17 initWithConn:v18 log:v19];
      [*(a1 + 32) setLockingClient:v20];

      v21 = [*(a1 + 32) lockingClient];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke_2;
      v57[3] = &unk_100071418;
      v57[4] = *(a1 + 32);
      [v21 onCancel:v57];

      v22 = [*(a1 + 32) lockingClient];
      [v22 activate];

      v23 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __58__UpgradeSequencer_lockInterfaceForClient_withCompletion___block_invoke_3;
      block[3] = &unk_100071418;
      block[4] = *(a1 + 32);
      dispatch_async(v23, block);

      v24 = 0;
      goto LABEL_39;
    }

    buffer = *"unknown";
    v65 = *&qword_100059128;
    v29 = [*(a1 + 32) lockingClient];
    v30 = [v29 conn];
    v31 = xpc_connection_get_pid(v30);
    proc_name(v31, &buffer, 0x20u);

    v32 = [*(a1 + 32) logHandle];

    if (v32)
    {
      v33 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v35 = [*(a1 + 32) lockingClient];
      v36 = [v35 conn];
      if (v36)
      {
        v2 = [*(a1 + 32) lockingClient];
        v3 = [v2 conn];
        v37 = xpc_connection_get_pid(v3);
      }

      else
      {
        v37 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v60 = 1024;
      v61 = v37;
      v62 = 1024;
      LODWORD(v63) = 144;
      v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, v33, 16, "XPC client <process=%s pid=%d>: Client not appropriately entitled. %{darwin.errno}d", buf, 24);
      if (v36)
      {
      }
    }

    else
    {
      v40 = &_os_log_default;
      v41 = [*(a1 + 32) lockingClient];
      v42 = [v41 conn];
      if (v42)
      {
        v1 = [*(a1 + 32) lockingClient];
        v2 = [v1 conn];
        v43 = xpc_connection_get_pid(v2);
      }

      else
      {
        v43 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v60 = 1024;
      v61 = v43;
      v62 = 1024;
      LODWORD(v63) = 144;
      v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Client not appropriately entitled. %{darwin.errno}d", buf, 24);
      if (v42)
      {
      }

      v33 = &_os_log_default;
    }

    Error = createError("[UpgradeSequencer lockInterfaceForClient:withCompletion:]_block_invoke", "upgrade_sequencer.m", 534, "com.apple.security.cryptex.posix", 144, 0, v38);
  }

  v24 = Error;
  free(v38);
LABEL_39:
  buffer = *"unknown";
  v65 = *&qword_100059128;
  v44 = xpc_connection_get_pid(*(a1 + 40));
  proc_name(v44, &buffer, 0x20u);
  v45 = *__error();
  v46 = [*(a1 + 32) logHandle];
  v47 = v46;
  if (v24)
  {
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a1 + 40);
      if (v48)
      {
        v49 = xpc_connection_get_pid(v48);
      }

      else
      {
        v49 = -1;
      }

      *buf = 136315650;
      p_buffer = &buffer;
      v60 = 1024;
      v61 = v49;
      v62 = 2112;
      v63 = v24;
      v52 = "XPC client <process=%s pid=%d>: lock upgrade interface: %@";
      v53 = v47;
      v54 = OS_LOG_TYPE_ERROR;
      v55 = 28;
LABEL_50:
      _os_log_impl(&_mh_execute_header, v53, v54, v52, buf, v55);
    }
  }

  else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    v50 = *(a1 + 40);
    if (v50)
    {
      v51 = xpc_connection_get_pid(v50);
    }

    else
    {
      v51 = -1;
    }

    *buf = 136315394;
    p_buffer = &buffer;
    v60 = 1024;
    v61 = v51;
    v52 = "XPC client <process=%s pid=%d>: lock upgrade interface [no error]";
    v53 = v47;
    v54 = OS_LOG_TYPE_DEBUG;
    v55 = 18;
    goto LABEL_50;
  }

  *__error() = v45;
  (*(*(a1 + 48) + 16))();
}

- (BOOL)lockIsHeldByClient:(_rpc_cred *)client
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue = [(UpgradeSequencer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__UpgradeSequencer_lockIsHeldByClient___block_invoke;
  block[3] = &unk_1000715E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = client;
  dispatch_sync(workQueue, block);

  LOBYTE(client) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return client;
}

void __39__UpgradeSequencer_lockIsHeldByClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lockingClient];

  if (v2)
  {
    v3 = [*(a1 + 32) lockingClient];
    *(*(*(a1 + 40) + 8) + 24) = rpc_creds_equal([v3 cred], *(a1 + 48));
  }
}

- (void)abortWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40__UpgradeSequencer_abortWithCompletion___block_invoke;
  v7[3] = &unk_100071598;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __40__UpgradeSequencer_abortWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _abort];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_isInterfaceLocked
{
  selfCopy = self;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lockingClient = [(UpgradeSequencer *)selfCopy lockingClient];
  LOBYTE(selfCopy) = lockingClient != 0;

  return selfCopy;
}

- (int)_setKernelUpgradeOngoing:(BOOL)ongoing
{
  ongoingCopy = ongoing;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return sysctl_upgrade_set(ongoingCopy);
}

- (id)_completeUpgradeSession
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [(UpgradeSequencer *)self _setKernelUpgradeOngoing:0];
  if (v4)
  {
    v5 = v4;
    logHandle = [(UpgradeSequencer *)self logHandle];

    if (logHandle)
    {
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v17 = 67109120;
      v18 = v5;
      v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, logHandle2, 16, "Clearing kernel flag failed. %{darwin.errno}d", &v17, 8);
    }

    else
    {
      v17 = 67109120;
      v18 = v5;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Clearing kernel flag failed. %{darwin.errno}d", &v17, 8);
    }

    Error = createError("[UpgradeSequencer _completeUpgradeSession]", "upgrade_sequencer.m", 611, "com.apple.security.cryptex.posix", v5, 0, v9);
    free(v9);
  }

  else
  {
    _unlockInterface = [(UpgradeSequencer *)self _unlockInterface];
    if (_unlockInterface)
    {
      logHandle3 = [(UpgradeSequencer *)self logHandle];

      if (logHandle3)
      {
        logHandle4 = [(UpgradeSequencer *)self logHandle];
        if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v17 = 67109120;
        v18 = 26;
        v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, logHandle4, 16, "Failed to unlock upgrade interface. %{darwin.errno}d", &v17, 8);
      }

      else
      {
        v17 = 67109120;
        v18 = 26;
        v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to unlock upgrade interface. %{darwin.errno}d", &v17, 8);
      }

      Error = createError("[UpgradeSequencer _completeUpgradeSession]", "upgrade_sequencer.m", 620, "com.apple.security.cryptex.posix", 26, _unlockInterface, v14);
      free(v14);
    }

    else
    {
      Error = 0;
    }
  }

  return Error;
}

- (void)_handleInterfaceLockCancel
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lockingClient = [(UpgradeSequencer *)self lockingClient];

  if (lockingClient)
  {
    buffer[0] = *"unknown";
    buffer[1] = *&qword_100059128;
    lockingClient2 = [(UpgradeSequencer *)self lockingClient];
    conn = [lockingClient2 conn];
    pid = xpc_connection_get_pid(conn);
    proc_name(pid, buffer, 0x20u);

    v10 = *__error();
    logHandle = [(UpgradeSequencer *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      lockingClient3 = [(UpgradeSequencer *)self lockingClient];
      conn2 = [lockingClient3 conn];
      if (conn2)
      {
        lockingClient4 = [(UpgradeSequencer *)self lockingClient];
        conn3 = [lockingClient4 conn];
        v14 = xpc_connection_get_pid(conn3);
      }

      else
      {
        v14 = -1;
      }

      v19 = 136315394;
      v20 = buffer;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Client disconnected.", &v19, 0x12u);
      if (conn2)
      {
      }
    }

    *__error() = v10;
    _abort = [(UpgradeSequencer *)self _abort];
    if (_abort)
    {
      v16 = *__error();
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buffer[0]) = 138412290;
        *(buffer + 4) = _abort;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_ERROR, "Failed to abort upgrade.: %@", buffer, 0xCu);
      }

      *__error() = v16;
    }

    _unlockInterface = [(UpgradeSequencer *)self _unlockInterface];
  }
}

- (id)_unlockInterface
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lockingClient = [(UpgradeSequencer *)self lockingClient];

  if (lockingClient)
  {
    [(UpgradeSequencer *)self _disableInterfaceLockTimeout];
    [(UpgradeSequencer *)self setLockingClient:0];
  }

  return 0;
}

- (void)_disableInterfaceLockTimeout
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  buffer[0] = *"unknown";
  buffer[1] = *&qword_100059128;
  lockingClient = [(UpgradeSequencer *)self lockingClient];
  conn = [lockingClient conn];
  pid = xpc_connection_get_pid(conn);
  proc_name(pid, buffer, 0x20u);

  v9 = *__error();
  logHandle = [(UpgradeSequencer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    lockingClient2 = [(UpgradeSequencer *)self lockingClient];
    conn2 = [lockingClient2 conn];
    if (conn2)
    {
      lockingClient3 = [(UpgradeSequencer *)self lockingClient];
      conn3 = [lockingClient3 conn];
      v13 = xpc_connection_get_pid(conn3);
    }

    else
    {
      v13 = -1;
    }

    v15 = 136315394;
    v16 = buffer;
    v17 = 1024;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Suspending upgrade lock timeout.", &v15, 0x12u);
    if (conn2)
    {
    }
  }

  *__error() = v9;
  lockTimer = [(UpgradeSequencer *)self lockTimer];
  dispatch_source_set_timer(lockTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_restartInterfaceLockTimeout
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  buffer[0] = *"unknown";
  buffer[1] = *&qword_100059128;
  lockingClient = [(UpgradeSequencer *)self lockingClient];
  conn = [lockingClient conn];
  pid = xpc_connection_get_pid(conn);
  proc_name(pid, buffer, 0x20u);

  v9 = *__error();
  logHandle = [(UpgradeSequencer *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    lockingClient2 = [(UpgradeSequencer *)self lockingClient];
    conn2 = [lockingClient2 conn];
    if (conn2)
    {
      lockingClient3 = [(UpgradeSequencer *)self lockingClient];
      conn3 = [lockingClient3 conn];
      v13 = xpc_connection_get_pid(conn3);
    }

    else
    {
      v13 = -1;
    }

    v16 = 136315650;
    v17 = buffer;
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = 10;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Giving client another %d seconds to hold lock.", &v16, 0x18u);
    if (conn2)
    {
    }
  }

  *__error() = v9;
  lockTimer = [(UpgradeSequencer *)self lockTimer];
  v15 = dispatch_walltime(0, 10000000000);
  dispatch_source_set_timer(lockTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (id)_timeout
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  Error = [(UpgradeSequencer *)self lockingClient];

  if (Error)
  {
    buffer[0] = *"unknown";
    buffer[1] = *&qword_100059128;
    lockingClient = [(UpgradeSequencer *)self lockingClient];
    conn = [lockingClient conn];
    pid = xpc_connection_get_pid(conn);
    proc_name(pid, buffer, 0x20u);

    logHandle = [(UpgradeSequencer *)self logHandle];

    if (logHandle)
    {
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      lockingClient2 = [(UpgradeSequencer *)self lockingClient];
      conn2 = [lockingClient2 conn];
      if (conn2)
      {
        lockingClient3 = [(UpgradeSequencer *)self lockingClient];
        conn3 = [lockingClient3 conn];
        v16 = xpc_connection_get_pid(conn3);
      }

      else
      {
        v16 = -1;
      }

      v24 = 136315650;
      v25 = buffer;
      v26 = 1024;
      v27 = v16;
      v28 = 1024;
      v29 = 60;
      v22 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, logHandle2, 16, "XPC client <process=%s pid=%d>: Upgrade interface lock timed out. %{darwin.errno}d", &v24, 24);
      if (conn2)
      {
      }
    }

    else
    {
      v18 = &_os_log_default;
      lockingClient4 = [(UpgradeSequencer *)self lockingClient];
      conn4 = [lockingClient4 conn];
      if (conn4)
      {
        lockingClient5 = [(UpgradeSequencer *)self lockingClient];
        lockingClient3 = [lockingClient5 conn];
        v21 = xpc_connection_get_pid(lockingClient3);
      }

      else
      {
        v21 = -1;
      }

      v24 = 136315650;
      v25 = buffer;
      v26 = 1024;
      v27 = v21;
      v28 = 1024;
      v29 = 60;
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Upgrade interface lock timed out. %{darwin.errno}d", &v24, 24);
      if (conn4)
      {
      }

      logHandle2 = &_os_log_default;
    }

    Error = createError("[UpgradeSequencer _timeout]", "upgrade_sequencer.m", 697, "com.apple.security.cryptex.posix", 60, 0, v22);
    free(v22);
    v17 = [(UpgradeSequencer *)self _completeUpgradeWithError:Error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_abort
{
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9[0] = 0;
  v8 = 2;
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Cryptex upgrade was aborted.", v9, v8);
  Error = createError("[UpgradeSequencer _abort]", "upgrade_sequencer.m", 712, "com.apple.security.cryptex", 27, 0, v4);
  free(v4);
  v6 = [(UpgradeSequencer *)self _completeUpgradeWithError:Error];

  return v6;
}

- (void)_startUpgradeForCryptex:(id)cryptex withGraftPath:(id)path killingJobs:(BOOL)jobs withCompletion:(id)completion
{
  jobsCopy = jobs;
  cryptexCopy = cryptex;
  pathCopy = path;
  completionCopy = completion;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  upgradesUnderway = [(UpgradeSequencer *)self upgradesUnderway];
  v15 = [upgradesUnderway objectForKey:cryptexCopy];

  if (v15)
  {
    logHandle = [(UpgradeSequencer *)self logHandle];

    if (logHandle)
    {
      logHandle2 = [(UpgradeSequencer *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v30 = 138543362;
      v31 = cryptexCopy;
      v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, logHandle2, 16, "Upgrade is already underway for cryptex '%{public}@'", &v30, 12);
    }

    else
    {
      v30 = 138543362;
      v31 = cryptexCopy;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Upgrade is already underway for cryptex '%{public}@'", &v30, 12);
    }

    Error = createError("[UpgradeSequencer _startUpgradeForCryptex:withGraftPath:killingJobs:withCompletion:]", "upgrade_sequencer.m", 732, "com.apple.security.cryptex", 29, 0, v19);
    free(v19);
    completionCopy[2](completionCopy, Error);
  }

  else
  {
    Error = 0;
  }

  v21 = [[UpgradeOperation alloc] initWithCryptexName:cryptexCopy graftPath:pathCopy];
  v22 = v21;
  if (v21)
  {
    [(UpgradeOperation *)v21 startUpgrade];
    upgradesUnderway2 = [(UpgradeSequencer *)self upgradesUnderway];
    [upgradesUnderway2 setObject:v22 forKeyedSubscript:cryptexCopy];

    if (jobsCopy)
    {
      [(UpgradeOperation *)v22 terminateJobsWithCompletion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }

    v28 = Error;
  }

  else
  {
    logHandle3 = [(UpgradeSequencer *)self logHandle];

    if (logHandle3)
    {
      logHandle4 = [(UpgradeSequencer *)self logHandle];
      if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      LOWORD(v30) = 0;
      LODWORD(v29) = 2;
      v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, logHandle4, 16, "Failed to allocate upgrade object.", &v30, v29);
    }

    else
    {
      LOWORD(v30) = 0;
      LODWORD(v29) = 2;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to allocate upgrade object.", &v30, v29);
    }

    v28 = createError("[UpgradeSequencer _startUpgradeForCryptex:withGraftPath:killingJobs:withCompletion:]", "upgrade_sequencer.m", 742, "com.apple.security.cryptex", 24, 0, v27);
    free(v27);

    completionCopy[2](completionCopy, v28);
  }
}

- (id)_completeUpgradeWithError:(id)error
{
  errorCopy = error;
  workQueue = [(UpgradeSequencer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  upgradesUnderway = [(UpgradeSequencer *)self upgradesUnderway];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__UpgradeSequencer__completeUpgradeWithError___block_invoke;
  v13[3] = &unk_100071610;
  v7 = errorCopy;
  v14 = v7;
  [upgradesUnderway enumerateKeysAndObjectsUsingBlock:v13];

  upgradesUnderway2 = [(UpgradeSequencer *)self upgradesUnderway];
  [upgradesUnderway2 removeAllObjects];

  sessionCompleteCallback = [(UpgradeSequencer *)self sessionCompleteCallback];

  if (sessionCompleteCallback)
  {
    sessionCompleteCallback2 = [(UpgradeSequencer *)self sessionCompleteCallback];
    (sessionCompleteCallback2)[2](sessionCompleteCallback2, v7);
  }

  _completeUpgradeSession = [(UpgradeSequencer *)self _completeUpgradeSession];

  return _completeUpgradeSession;
}

void __46__UpgradeSequencer__completeUpgradeWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v4 setError:v3];
  [v4 completeUpgrade];
}

@end