@interface W5BGTaskManager
- (BOOL)scheduleRepeatingTask:(id)task interval:(double)interval repeatingTask:(id)repeatingTask;
- (W5BGTaskManager)init;
- (void)dealloc;
- (void)stopAllRepeatingTasks;
@end

@implementation W5BGTaskManager

- (W5BGTaskManager)init
{
  self->_scheduler = 0;
  v4.receiver = self;
  v4.super_class = W5BGTaskManager;
  v2 = [(W5BGTaskManager *)&v4 init];
  if (v2)
  {
    if (objc_opt_class())
    {
      v2->_scheduler = +[BGSystemTaskScheduler sharedScheduler];
      v2->_registeredIdentifiers = objc_alloc_init(NSMutableArray);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (BOOL)scheduleRepeatingTask:(id)task interval:(double)interval repeatingTask:(id)repeatingTask
{
  if ([(NSMutableArray *)self->_registeredIdentifiers containsObject:?])
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v22 = 2080;
      v23 = "W5BGTaskManager.m";
      v24 = 1024;
      v25 = 40;
      v26 = 2114;
      taskCopy4 = task;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) Task: %{public}@ already registered", &v20, 38);
    }

    return 0;
  }

  scheduler = self->_scheduler;
  if (!scheduler)
  {
    return 0;
  }

  if (([(BGSystemTaskScheduler *)scheduler registerForTaskWithIdentifier:task usingQueue:0 launchHandler:repeatingTask]& 1) == 0)
  {
    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v22 = 2080;
      v23 = "W5BGTaskManager.m";
      v24 = 1024;
      v25 = 50;
      v26 = 2114;
      taskCopy4 = task;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v18, 0, "[wifivelocity] %s (%s:%u) Failed to register task: %{public}@", &v20, 38);
    }

    return 0;
  }

  if ([(BGSystemTaskScheduler *)self->_scheduler taskRequestForIdentifier:task])
  {
    v11 = sub_100098A04();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v22 = 2080;
      v23 = "W5BGTaskManager.m";
      v24 = 1024;
      v25 = 53;
      v26 = 2114;
      taskCopy4 = task;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] %s (%s:%u) Task: %{public}@ already exists", &v20, 38);
    }

    return 0;
  }

  v14 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:task];
  [v14 setRequiresNetworkConnectivity:0];
  [v14 setRequiresExternalPower:0];
  [v14 setInterval:interval];
  [v14 setMinDurationBetweenInstances:interval];
  [v14 setShouldWakeDevice:0];
  v19 = 0;
  v12 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  v15 = sub_100098A04();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v16)
    {
      v20 = 136315906;
      v21 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
      v22 = 2080;
      v23 = "W5BGTaskManager.m";
      v24 = 1024;
      v25 = 70;
      v26 = 2114;
      taskCopy4 = task;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) Scheduled periodic task: %{public}@", &v20, 38);
    }

    [(NSMutableArray *)self->_registeredIdentifiers addObject:task];
  }

  else if (v16)
  {
    v17 = v19;
    if (!v19)
    {
      v17 = @"Unknown";
    }

    v20 = 136315906;
    v21 = "[W5BGTaskManager scheduleRepeatingTask:interval:repeatingTask:]";
    v22 = 2080;
    v23 = "W5BGTaskManager.m";
    v24 = 1024;
    v25 = 66;
    v26 = 2114;
    taskCopy4 = v17;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) Failed to submit task with error: %{public}@", &v20, 38);
  }

  return v12;
}

- (void)stopAllRepeatingTasks
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  if (self->_scheduler)
  {
    v3 = [(NSMutableArray *)self->_registeredIdentifiers count];
    v4 = sub_100098A04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = "[W5BGTaskManager stopAllRepeatingTasks]";
      v17 = 2080;
      v18 = "W5BGTaskManager.m";
      v19 = 1024;
      v20 = 87;
      v21 = 2048;
      v22 = v3;
      LODWORD(v6) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v4, 0, "[wifivelocity] %s (%s:%u) #Registered Tasks: %ld", &v15, v6, v7, v8);
    }

    registeredIdentifiers = self->_registeredIdentifiers;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000023BC;
    v10 = &unk_1000E0FB0;
    selfCopy = self;
    v12 = v13;
    [(NSMutableArray *)self->_registeredIdentifiers removeObjectsAtIndexes:[(NSMutableArray *)registeredIdentifiers indexesOfObjectsPassingTest:&v7]];
  }

  _Block_object_dispose(v13, 8);
}

- (void)dealloc
{
  scheduler = self->_scheduler;
  if (scheduler)
  {
  }

  registeredIdentifiers = self->_registeredIdentifiers;
  if (registeredIdentifiers)
  {
  }

  v5.receiver = self;
  v5.super_class = W5BGTaskManager;
  [(W5BGTaskManager *)&v5 dealloc];
}

@end