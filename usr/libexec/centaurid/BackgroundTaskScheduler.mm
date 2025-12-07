@interface BackgroundTaskScheduler
- (BackgroundTaskScheduler)initWithIdentifier:(id)identifier interval:(int64_t)interval queue:(id)queue delegate:(id)delegate;
- (void)activate;
- (void)activateInternal;
- (void)completeTask:(id)task;
- (void)dealloc;
- (void)handleTask:(id)task;
- (void)handleTaskOnClientQueue:(id)queue;
- (void)log;
- (void)updateTaskIfRequired;
@end

@implementation BackgroundTaskScheduler

- (BackgroundTaskScheduler)initWithIdentifier:(id)identifier interval:(int64_t)interval queue:(id)queue delegate:(id)delegate
{
  identifierCopy = identifier;
  queueCopy = queue;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = BackgroundTaskScheduler;
  v14 = [(BackgroundTaskScheduler *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_interval = interval;
    objc_storeStrong(&v15->_clientQueue, queue);
    uTF8String = [identifierCopy UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v18;

    objc_storeWeak(&v15->_delegate, delegateCopy);
  }

  return v15;
}

- (void)dealloc
{
  v3 = sub_100025204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v8, 0x16u);
  }

  v6 = abort_report_np("assertion failure: NO -- unexpected dealloc");
  [(BackgroundTaskScheduler *)v6 activate];
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017B28;
  block[3] = &unk_10005C700;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)activateInternal
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_active)
  {
    sub_10002BC58(self, a2);
    goto LABEL_27;
  }

  if (!objc_opt_class())
  {
LABEL_27:
    sub_10002BB8C(self, a2);
    return;
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  identifier = self->_identifier;
  internalQueue = self->_internalQueue;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000182E8;
  v56[3] = &unk_10005CAF0;
  v56[4] = self;
  v7 = [v4 registerForTaskWithIdentifier:identifier usingQueue:internalQueue launchHandler:v56];

  if ((v7 & 1) == 0)
  {
    v14 = sub_100025204(v8);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v45 = [objc_opt_class() description];
    v46 = NSStringFromSelector(a2);
    v47 = self->_identifier;
    *buf = 138543874;
    v58 = v45;
    v59 = 2114;
    v60 = v46;
    v61 = 2112;
    v62 = v47;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to register task: %@", buf, 0x20u);

    goto LABEL_32;
  }

  v9 = sub_100025204(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    v12 = self->_identifier;
    *buf = 138543874;
    v58 = v10;
    v59 = 2114;
    v60 = v11;
    v61 = 2112;
    v62 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: registered task: %@", buf, 0x20u);
  }

  v13 = +[BGSystemTaskScheduler sharedScheduler];
  v14 = [v13 taskRequestForIdentifier:self->_identifier];

  if (v14)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      interval = [v14 interval];
      v18 = v17;
      interval = self->_interval;
      v20 = sub_100025204(interval);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v18 == interval)
      {
        if (!v21)
        {
LABEL_21:

          self->_active = 1;
LABEL_22:

          return;
        }

        v22 = [objc_opt_class() description];
        v23 = NSStringFromSelector(a2);
        v24 = self->_identifier;
        *buf = 138543874;
        v58 = v22;
        v59 = 2114;
        v60 = v23;
        v61 = 2112;
        v62 = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: task request already exists, skipping submission: %@", buf, 0x20u);

LABEL_20:
        goto LABEL_21;
      }

      if (v21)
      {
        v33 = [objc_opt_class() description];
        v34 = NSStringFromSelector(a2);
        v35 = self->_identifier;
        *buf = 138543874;
        v58 = v33;
        v59 = 2114;
        v60 = v34;
        v61 = 2112;
        v62 = v35;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: task request already exists, but needs reconfiguration: %@", buf, 0x20u);
      }

      [v14 setInterval:self->_interval];
      v36 = +[BGSystemTaskScheduler sharedScheduler];
      v55 = 0;
      v37 = [v36 updateTaskRequest:v14 error:&v55];
      v20 = v55;

      v22 = sub_100025204(v38);
      v39 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (!v37)
      {
        if (v39)
        {
          v42 = [objc_opt_class() description];
          v43 = NSStringFromSelector(a2);
          v44 = self->_identifier;
          *buf = 138544130;
          v58 = v42;
          v59 = 2114;
          v60 = v43;
          v61 = 2112;
          v62 = v44;
          v63 = 2114;
          v64 = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: failed to update task: %@: %{public}@", buf, 0x2Au);
        }

        self->_updateRequired = 1;
        goto LABEL_21;
      }

      if (!v39)
      {
        goto LABEL_20;
      }

      v28 = [objc_opt_class() description];
      v40 = NSStringFromSelector(a2);
      v41 = self->_identifier;
      *buf = 138543874;
      v58 = v28;
      v59 = 2114;
      v60 = v40;
      v61 = 2112;
      v62 = v41;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: updated task: %@", buf, 0x20u);

LABEL_19:
      goto LABEL_20;
    }

    v45 = sub_100025204(isKindOfClass);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v51 = [objc_opt_class() description];
      v52 = NSStringFromSelector(a2);
      v53 = self->_identifier;
      *buf = 138543874;
      v58 = v51;
      v59 = 2114;
      v60 = v52;
      v61 = 2112;
      v62 = v53;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: task request already exists, but is not repeating: %@", buf, 0x20u);
    }

LABEL_32:

    goto LABEL_22;
  }

  v20 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:self->_identifier];
  [v20 setPriority:2];
  [v20 setRequiresNetworkConnectivity:0];
  [v20 setRequiresExternalPower:0];
  [v20 setInterval:self->_interval];
  [v20 setRequiresUserInactivity:self->_requiresUserInactivity];
  [v20 setRequiresProtectionClass:5];
  v25 = +[BGSystemTaskScheduler sharedScheduler];
  v54 = 0;
  v26 = [v25 submitTaskRequest:v20 error:&v54];
  v22 = v54;

  v28 = sub_100025204(v27);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v29)
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      v32 = self->_identifier;
      *buf = 138543874;
      v58 = v30;
      v59 = 2114;
      v60 = v31;
      v61 = 2112;
      v62 = v32;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: submitted task: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (v29)
  {
    v48 = [objc_opt_class() description];
    v49 = NSStringFromSelector(a2);
    v50 = self->_identifier;
    *buf = 138544130;
    v58 = v48;
    v59 = 2114;
    v60 = v49;
    v61 = 2112;
    v62 = v50;
    v63 = 2114;
    v64 = v22;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: failed to submit task: %@: %{public}@", buf, 0x2Au);
  }
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = v6;
    v8 = "inactive";
    startedCount = self->_startedCount;
    completedCount = self->_completedCount;
    if (self->_active)
    {
      v8 = "active";
    }

    identifier = self->_identifier;
    interval = self->_interval;
    requiresUserInactivity = self->_requiresUserInactivity;
    updateRequired = self->_updateRequired;
    v15 = 138545410;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2112;
    v20 = identifier;
    v21 = 2080;
    v22 = v8;
    v23 = 2048;
    v24 = startedCount;
    v25 = 2048;
    v26 = completedCount;
    v27 = 2048;
    v28 = interval;
    v29 = 1024;
    v30 = requiresUserInactivity;
    v31 = 1024;
    v32 = updateRequired;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@, %s, started %lu, completed %lu, interval %ld sec, requires user inactivity %u, update required %u", &v15, 0x54u);
  }
}

- (void)handleTask:(id)task
{
  taskCopy = task;
  v6 = self->_identifier;
  dispatch_assert_queue_V2(self->_internalQueue);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100018654;
  v16[3] = &unk_10005CB18;
  v16[4] = self;
  v18 = a2;
  v7 = v6;
  v17 = v7;
  v8 = sub_100025204([taskCopy setExpirationHandler:v16]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    *buf = 138543874;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@", buf, 0x20u);
  }

  ++self->_startedCount;
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018748;
  block[3] = &unk_10005CB40;
  block[4] = self;
  v15 = taskCopy;
  v13 = taskCopy;
  dispatch_async(clientQueue, block);
}

- (void)handleTaskOnClientQueue:(id)queue
{
  queueCopy = queue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  dispatch_assert_queue_V2(self->_clientQueue);
  if (WeakRetained)
  {
    identifier = self->_identifier;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100018864;
    v10[3] = &unk_10005CB40;
    v10[4] = self;
    v11 = queueCopy;
    [WeakRetained runBackgroundTaskWithIdentifier:identifier completion:v10];
  }

  else
  {
    v9 = sub_100025204(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002BD04(self, a2);
    }

    [(BackgroundTaskScheduler *)self completeTask:queueCopy];
  }
}

- (void)completeTask:(id)task
{
  taskCopy = task;
  dispatch_assert_queue_V2(self->_clientQueue);
  internalQueue = self->_internalQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001891C;
  v7[3] = &unk_10005CB40;
  v8 = taskCopy;
  selfCopy = self;
  v6 = taskCopy;
  dispatch_async(internalQueue, v7);
}

- (void)updateTaskIfRequired
{
  dispatch_assert_queue_V2(self->_internalQueue);
  ++self->_completedCount;
  if (!self->_updateRequired)
  {
    v12 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:self->_identifier];

  if (!v5)
  {
    v14 = sub_100025204(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v29 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      *buf = 138543618;
      v37 = v29;
      v39 = v38 = 2114;
      sub_1000189E0();
      _os_log_error_impl(v30, v31, v32, v33, v34, 0x16u);
    }

    v12 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v14 = sub_100025204(isKindOfClass);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v12 = 0;
      goto LABEL_9;
    }

    v20 = [objc_opt_class() description];
    v21 = NSStringFromSelector(a2);
    *buf = 138543874;
    v37 = v20;
    sub_1000189C4();
    sub_1000189E0();
    v27 = 32;
LABEL_22:
    _os_log_error_impl(v22, v23, v24, v25, v26, v27);

    goto LABEL_18;
  }

  interval = [v5 interval];
  if (v9 == self->_interval)
  {
    v14 = sub_100025204(interval);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v20 = [objc_opt_class() description];
    v21 = NSStringFromSelector(a2);
    *buf = 138543618;
    v37 = v20;
    v38 = 2114;
    v39 = v21;
    sub_1000189E0();
    v27 = 22;
    goto LABEL_22;
  }

  [v5 setInterval:?];
  v10 = +[BGSystemTaskScheduler sharedScheduler];
  v35 = 0;
  v11 = [v10 updateTaskRequest:v5 error:&v35];
  v12 = v35;

  if ((v11 & 1) == 0)
  {
    self->_updateRequired = 1;
    v14 = sub_100025204(v13);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    *buf = 138544130;
    v37 = v15;
    v38 = 2114;
    v39 = v16;
    v40 = 2112;
    v41 = identifier;
    v42 = 2114;
    v43 = v12;
    v17 = "%{public}@::%{public}@: failed to update task: %@: %{public}@";
    v18 = v14;
    v19 = 42;
    goto LABEL_8;
  }

  v14 = sub_100025204(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    *buf = 138543874;
    v37 = v15;
    sub_1000189C4();
    v17 = "%{public}@::%{public}@: updated task: %@";
    v18 = v14;
    v19 = 32;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
  }

LABEL_9:

LABEL_10:
  self->_updateRequired = 0;
}

@end