@interface BCLockout
- (BOOL)lock:(BOOL)lock;
- (void)_sendNotfications:(id)notfications isLock:(BOOL)lock;
- (void)dealloc;
- (void)setPath:(id)path;
- (void)unlock;
@end

@implementation BCLockout

- (void)dealloc
{
  [(BCLockout *)self unlock];

  v3.receiver = self;
  v3.super_class = BCLockout;
  [(BCLockout *)&v3 dealloc];
}

- (void)setPath:(id)path
{
  if (self->_lockFile)
  {
    [(BCLockout *)self unlock];

    self->_lockFile = 0;
  }

  if (path)
  {
    self->_lockFile = [[IMLockFile alloc] initWithPath:path];
  }
}

- (BOOL)lock:(BOOL)lock
{
  lockFile = self->_lockFile;
  if (!lockFile)
  {
    v25 = BCDefaultLog(0, a2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_11DF8(self, v25, v26, v27, v28, v29, v30, v31);
    }

    return 0;
  }

  lockCopy = lock;
  if ([(IMLockFile *)lockFile locked]&& self->_isExclusive == lockCopy)
  {
    return 1;
  }

  if (!dword_267CC)
  {
    mach_timebase_info(&dword_267C8);
  }

  v7 = mach_absolute_time();
  v8 = [(IMLockFile *)self->_lockFile tryLock:lockCopy];
  if ((v8 & 1) == 0)
  {
    v10 = BCDefaultLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_11D20(self, v10, v11, v12, v13, v14, v15, v16);
    }

    do
    {
      usleep(0x2710u);
      v17 = mach_absolute_time();
      v19 = dword_267C8;
      v18 = dword_267CC;
      v20 = [(IMLockFile *)self->_lockFile tryLock:lockCopy];
    }

    while ((v20 & 1) == 0 && (v17 - v7) * v19 / v18 < 0x12A05F200);
    if (!v20)
    {
      v32 = BCDefaultLog(v20, v21);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_11D8C(self, v32, v33, v34, v35, v36, v37, v38);
      }

      return 0;
    }
  }

  self->_isExclusive = lockCopy;
  if ([(BCLockout *)self startNotifications]&& lockCopy)
  {
    startNotifications = [(BCLockout *)self startNotifications];
    v6 = 1;
    selfCopy2 = self;
    v24 = 1;
LABEL_21:
    [(BCLockout *)selfCopy2 _sendNotfications:startNotifications isLock:v24];
    return v6;
  }

  v6 = 1;
  if ([(BCLockout *)self endNotifications]&& !lockCopy)
  {
    startNotifications = [(BCLockout *)self endNotifications];
    selfCopy2 = self;
    v24 = 0;
    goto LABEL_21;
  }

  return v6;
}

- (void)unlock
{
  if ([(IMLockFile *)self->_lockFile locked])
  {
    [(IMLockFile *)self->_lockFile unlock];
    if (self->_isExclusive)
    {
      if ([(BCLockout *)self endNotifications])
      {
        endNotifications = [(BCLockout *)self endNotifications];

        [(BCLockout *)self _sendNotfications:endNotifications isLock:0];
      }
    }
  }
}

- (void)_sendNotfications:(id)notfications isLock:(BOOL)lock
{
  lockCopy = lock;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v7 = DarwinNotifyCenter;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [notfications countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(notfications);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          CFNotificationCenterPostNotification(v7, v12, 0, 0, 1u);
          v15 = BCDefaultLog(v13, v14);
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (lockCopy)
          {
            if (!v16)
            {
              continue;
            }

            *buf = 138412290;
            v24 = v12;
            v17 = v15;
            v18 = "Lockout raise %@";
          }

          else
          {
            if (!v16)
            {
              continue;
            }

            *buf = 138412290;
            v24 = v12;
            v17 = v15;
            v18 = "Lockout lower %@";
          }

          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
        }

        v9 = [notfications countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }
  }
}

@end