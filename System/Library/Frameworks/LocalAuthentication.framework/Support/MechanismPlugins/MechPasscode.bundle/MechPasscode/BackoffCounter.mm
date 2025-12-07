@interface BackoffCounter
+ (id)sharedInstance;
- (BOOL)_validateBackoff;
- (BackoffCounter)init;
- (NSError)errorAuthenticationFailedWithBackoff;
- (id)_dateFromUptime:(id)uptime;
- (id)actionFailure;
- (id)actionFailureWithBackoffResult;
- (void)_computeRetryTime;
- (void)_lockStateDidChange:(BOOL)change;
- (void)_saveDefault:(id)default forKey:(id)key;
- (void)_saveDefaults;
- (void)actionBackoffWithReply:(id)reply;
- (void)actionFailureWithReply:(id)reply;
- (void)actionSuccess;
- (void)currentBackoffErrorWithReply:(id)reply;
@end

@implementation BackoffCounter

+ (id)sharedInstance
{
  if (qword_20A70 != -1)
  {
    sub_BC38();
  }

  v3 = qword_20A68;

  return v3;
}

- (BackoffCounter)init
{
  v22.receiver = self;
  v22.super_class = BackoffCounter;
  v2 = [(BackoffCounter *)&v22 init];
  if (v2)
  {
    if (+[DaemonUtils deviceHasSEP])
    {
      v3 = MKBGetDeviceLockStateInfo();
      sepLockInfo = v2->_sepLockInfo;
      v2->_sepLockInfo = v3;
    }

    if (!v2->_sepLockInfo)
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      defaults = v2->_defaults;
      v2->_defaults = v5;

      v7 = [(NSUserDefaults *)v2->_defaults objectForKey:@"failures"];
      v2->_failures = [v7 unsignedIntegerValue];

      v8 = [(NSUserDefaults *)v2->_defaults objectForKey:@"retryTime"];
      v9 = +[NSDate date];
      [v8 timeIntervalSinceDate:v9];
      v11 = v10;

      if (v11 > 0.0)
      {
        v12 = [NSNumber numberWithDouble:v11 + sub_12D8()];
        retryUptime = v2->_retryUptime;
        v2->_retryUptime = v12;
      }

      v14 = +[DaemonUtils sharedInstance];
      serverQueue = [v14 serverQueue];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1374;
      handler[3] = &unk_1C3C0;
      v21 = v2;
      v16 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &unk_209F8, serverQueue, handler);

      if (v16)
      {
        v18 = sub_13BC(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v24 = "com.apple.mobile.keybagd.lock_status";
          v25 = 1024;
          v26 = v16;
          _os_log_impl(&def_13158, v18, OS_LOG_TYPE_DEFAULT, "notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
        }
      }
    }
  }

  return v2;
}

- (id)_dateFromUptime:(id)uptime
{
  if (uptime)
  {
    v4 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", ([uptime longValue] - sub_12D8()));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionFailure
{
  v3 = sub_13BC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    *v11 = "[BackoffCounter actionFailure]";
    *&v11[8] = 2112;
    *&v11[10] = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  if (!self->_sepLockInfo)
  {
    v5 = sub_13BC(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      failures = self->_failures;
      _retryTime = [(BackoffCounter *)self _retryTime];
      v10 = 67109378;
      *v11 = failures;
      *&v11[4] = 2114;
      *&v11[6] = _retryTime;
      _os_log_impl(&def_13158, v5, OS_LOG_TYPE_DEFAULT, "failures: %d, retryTime: %{public}@", &v10, 0x12u);
    }

    ++self->_failures;
    [(BackoffCounter *)self _computeRetryTime];
    [(BackoffCounter *)self _saveDefaults];
  }

  errorAuthenticationFailedWithBackoff = [(BackoffCounter *)self errorAuthenticationFailedWithBackoff];

  return errorAuthenticationFailedWithBackoff;
}

- (id)actionFailureWithBackoffResult
{
  v3 = sub_13BC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BackoffCounter actionFailureWithBackoffResult]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  if (!self->_sepLockInfo)
  {
    failures = self->_failures;
    if (failures <= 5)
    {
      failures = 5;
    }

    self->_failures = failures;
  }

  actionFailure = [(BackoffCounter *)self actionFailure];

  return actionFailure;
}

- (void)actionSuccess
{
  v3 = sub_13BC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    *v10 = "[BackoffCounter actionSuccess]";
    *&v10[8] = 2112;
    *&v10[10] = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  if (!self->_sepLockInfo)
  {
    v5 = sub_13BC(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      failures = self->_failures;
      _retryTime = [(BackoffCounter *)self _retryTime];
      v9 = 67109378;
      *v10 = failures;
      *&v10[4] = 2114;
      *&v10[6] = _retryTime;
      _os_log_impl(&def_13158, v5, OS_LOG_TYPE_DEFAULT, "failures: %d, retryTime: %{public}@", &v9, 0x12u);
    }

    retryUptime = self->_retryUptime;
    self->_retryUptime = 0;
    self->_failures = 0;

    [(BackoffCounter *)self _saveDefaults];
  }
}

- (void)actionFailureWithReply:(id)reply
{
  replyCopy = reply;
  actionFailure = [(BackoffCounter *)self actionFailure];
  (*(reply + 2))(replyCopy, actionFailure);
}

- (void)actionBackoffWithReply:(id)reply
{
  replyCopy = reply;
  actionFailureWithBackoffResult = [(BackoffCounter *)self actionFailureWithBackoffResult];
  (*(reply + 2))(replyCopy, actionFailureWithBackoffResult);
}

- (void)currentBackoffErrorWithReply:(id)reply
{
  replyCopy = reply;
  errorAuthenticationFailedWithBackoff = [(BackoffCounter *)self errorAuthenticationFailedWithBackoff];
  (*(reply + 2))(replyCopy, errorAuthenticationFailedWithBackoff);
}

- (void)_computeRetryTime
{
  failures = self->_failures;
  v4 = failures >= 6;
  v5 = failures - 6;
  if (v4)
  {
    if (v5 > 4)
    {
      v7 = 3600;
    }

    else
    {
      v7 = qword_17648[v5];
    }

    v6 = [NSNumber numberWithUnsignedInteger:sub_12D8() + v7];
  }

  else
  {
    v6 = 0;
  }

  self->_retryUptime = v6;

  _objc_release_x1();
}

- (BOOL)_validateBackoff
{
  v3 = sub_13BC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    failures = self->_failures;
    _retryTime = [(BackoffCounter *)self _retryTime];
    v12 = 136315906;
    v13 = "[BackoffCounter _validateBackoff]";
    v14 = 1024;
    *v15 = failures;
    *&v15[4] = 2114;
    *&v15[6] = _retryTime;
    *&v15[14] = 2112;
    *&v15[16] = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s failures: %d, retryTime: %{public}@ on %@", &v12, 0x26u);
  }

  if (self->_retryUptime)
  {
    v7 = sub_12D8();
    longValue = [(NSNumber *)self->_retryUptime longValue];
    if (v7 > longValue)
    {
      retryUptime = self->_retryUptime;
      self->_retryUptime = 0;

      longValue = [(BackoffCounter *)self _saveDefaults];
    }
  }

  v9 = sub_13BC(longValue);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithInt:self->_retryUptime != 0];
    v12 = 136315650;
    v13 = "[BackoffCounter _validateBackoff]";
    v14 = 2114;
    *v15 = v10;
    *&v15[8] = 2112;
    *&v15[10] = self;
    _os_log_impl(&def_13158, v9, OS_LOG_TYPE_DEFAULT, "%s -> %{public}@ on %@", &v12, 0x20u);
  }

  return self->_retryUptime != 0;
}

- (NSError)errorAuthenticationFailedWithBackoff
{
  p_sepLockInfo = &self->_sepLockInfo;
  if (self->_sepLockInfo)
  {
    v4 = MKBGetDeviceLockStateInfo();
    v5 = v4;
    if (!v4)
    {
      v5 = *p_sepLockInfo;
    }

    objc_storeStrong(p_sepLockInfo, v5);
    v6 = [*p_sepLockInfo objectForKey:kMKBInfoBackOff];
    v7 = v6;
    if (v6 && ([v6 doubleValue], v8 > 0.0))
    {
      [v7 doubleValue];
      v9 = [NSDate dateWithTimeIntervalSinceNow:?];
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_12:
    v21[0] = NSDebugDescriptionErrorKey;
    v21[1] = LAPasswordRetryTime;
    v22[0] = @"Passcode backoff";
    v22[1] = v9;
    v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v12 = [LAErrorHelper errorWithCode:-1 userInfo:v11];

    goto LABEL_15;
  }

  _validateBackoff = [(BackoffCounter *)self _validateBackoff];
  if (_validateBackoff)
  {
    _validateBackoff = [(BackoffCounter *)self _retryTime];
    v9 = _validateBackoff;
    if (_validateBackoff)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:
  v12 = 0;
LABEL_15:
  v13 = sub_13BC(_validateBackoff);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[BackoffCounter errorAuthenticationFailedWithBackoff]";
    v17 = 2114;
    v18 = v12;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v13, OS_LOG_TYPE_DEFAULT, "%s -> %{public}@ on %@", &v15, 0x20u);
  }

  return v12;
}

- (void)_saveDefault:(id)default forKey:(id)key
{
  defaults = self->_defaults;
  if (default)
  {
    [(NSUserDefaults *)defaults setObject:default forKey:key];
  }

  else
  {
    [(NSUserDefaults *)defaults removeObjectForKey:key];
  }
}

- (void)_saveDefaults
{
  v3 = sub_13BC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    failures = self->_failures;
    _retryTime = [(BackoffCounter *)self _retryTime];
    v10 = 136315906;
    v11 = "[BackoffCounter _saveDefaults]";
    v12 = 1024;
    v13 = failures;
    v14 = 2114;
    v15 = _retryTime;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v3, OS_LOG_TYPE_DEFAULT, "%s failures: %d, retryTime: %{public}@ on %@", &v10, 0x26u);
  }

  defaults = self->_defaults;
  if (self->_failures)
  {
    v7 = [NSNumber numberWithUnsignedInteger:?];
    [(NSUserDefaults *)defaults setObject:v7 forKey:@"failures"];
  }

  else
  {
    [(NSUserDefaults *)self->_defaults setObject:0 forKey:@"failures"];
  }

  v8 = self->_defaults;
  _retryTime2 = [(BackoffCounter *)self _retryTime];
  [(NSUserDefaults *)v8 setObject:_retryTime2 forKey:@"retryTime"];

  [(NSUserDefaults *)self->_defaults synchronize];
}

- (void)_lockStateDidChange:(BOOL)change
{
  changeCopy = change;
  v5 = sub_13BC(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:changeCopy];
    v7 = 136315650;
    v8 = "[BackoffCounter _lockStateDidChange:]";
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&def_13158, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v7, 0x20u);
  }

  if (changeCopy)
  {
    [(BackoffCounter *)self actionSuccess];
  }
}

@end