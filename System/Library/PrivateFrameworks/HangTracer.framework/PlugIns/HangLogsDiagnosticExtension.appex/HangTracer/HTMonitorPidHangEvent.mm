@interface HTMonitorPidHangEvent
+ ($2A8BB92AA13BA620C53B73F98D97E71B)getSharedPageFromPid:(int)pid;
+ (void)_updateRunningBoardProcessMonitor;
+ (void)checkHangForPid:(int)pid;
+ (void)removePidFromProcessMonitoring:(int)monitoring;
+ (void)setupRunningBoardProcessMonitorForPid:(int)pid;
- (id)initHTMonitorPidHangEvent:(id *)event shmem_size:(unint64_t)shmem_size;
- (void)dealloc;
@end

@implementation HTMonitorPidHangEvent

- (id)initHTMonitorPidHangEvent:(id *)event shmem_size:(unint64_t)shmem_size
{
  v7.receiver = self;
  v7.super_class = HTMonitorPidHangEvent;
  result = [(HTMonitorPidHangEvent *)&v7 init];
  if (result)
  {
    *(result + 1) = event;
    *(result + 2) = shmem_size;
  }

  return result;
}

- (void)dealloc
{
  munmap(self->_shmem_region, self->_shmem_size);
  self->_shmem_region = 0;
  self->_shmem_size = 0;
  v3.receiver = self;
  v3.super_class = HTMonitorPidHangEvent;
  [(HTMonitorPidHangEvent *)&v3 dealloc];
}

+ (void)checkHangForPid:(int)pid
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C440;
  block[3] = &unk_100024FD0;
  pidCopy = pid;
  dispatch_async(_htMonitorConnectionQueue, block);
}

+ (void)_updateRunningBoardProcessMonitor
{
  if (qword_10002B078)
  {
    [qword_10002B078 updateConfiguration:&stru_100025010];
  }
}

+ (void)removePidFromProcessMonitoring:(int)monitoring
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = qword_10002B080;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 pid] == monitoring)
        {
          [qword_10002B080 removeObject:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[HTMonitorPidHangEvent _updateRunningBoardProcessMonitor];
}

+ (void)setupRunningBoardProcessMonitorForPid:(int)pid
{
  v3 = [RBSProcessIdentifier identifierWithPid:*&pid];
  v4 = qword_10002B080;
  v9 = v3;
  if (!qword_10002B080)
  {
    v5 = +[NSMutableSet set];
    v6 = qword_10002B080;
    qword_10002B080 = v5;

    v3 = v9;
    v4 = qword_10002B080;
  }

  [v4 addObject:v3];
  if (qword_10002B078)
  {
    +[HTMonitorPidHangEvent _updateRunningBoardProcessMonitor];
  }

  else
  {
    v7 = [RBSProcessMonitor monitorWithConfiguration:&stru_100025030];
    v8 = qword_10002B078;
    qword_10002B078 = v7;
  }
}

+ ($2A8BB92AA13BA620C53B73F98D97E71B)getSharedPageFromPid:(int)pid
{
  v3 = *&pid;
  label = dispatch_queue_get_label(0);
  v5 = strlen(htMonitorConnectionQueueLabel);
  v6 = strncmp(label, htMonitorConnectionQueueLabel, v5);
  if (v6)
  {
    v7 = shared_ht_log_handle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100013FC8(label, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  else
  {
    dispatch_assert_queue_V2(_htMonitorConnectionQueue);
    v15 = pidHangEventDict;
    v16 = [NSNumber numberWithInt:v3];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (v17)
    {
      shmem_region = [v17 shmem_region];
      if ([v17 shmem_size])
      {
        v18 = shmem_region == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        shmem_region = 0;
      }
    }

    else
    {
      shmem_region = 0;
    }
  }

  return shmem_region;
}

@end