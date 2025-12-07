@interface MSDDemoUpdateStatusHub
+ (id)sharedInstance;
- (BOOL)registerDemoUpdateStatusDelegate:(id)delegate;
- (void)demoUpdateCompleted:(id)completed;
- (void)demoUpdateFailed:(id)failed;
- (void)demoUpdateProgress:(int64_t)progress;
- (void)unregisterDemoUpdateStatusDelegate:(id)delegate;
@end

@implementation MSDDemoUpdateStatusHub

+ (id)sharedInstance
{
  if (qword_1001A5A60 != -1)
  {
    sub_1000E8EE0();
  }

  v3 = qword_1001A5A58;

  return v3;
}

- (BOOL)registerDemoUpdateStatusDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (!delegateCopy)
  {
    v12 = sub_100063A54(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8F38(v12);
    }

    goto LABEL_14;
  }

  v6 = [delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MSDDemoUpdateStatusDelegate];
  if ((v6 & 1) == 0)
  {
    v12 = sub_100063A54(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8EF4(v12);
    }

LABEL_14:
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  delegates = [(MSDDemoUpdateStatusHub *)self delegates];
  v8 = [delegates containsObject:v5];

  if ((v8 & 1) == 0)
  {
    delegates2 = [(MSDDemoUpdateStatusHub *)self delegates];
    [delegates2 addObject:v5];

    v12 = sub_100063A54(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      delegates3 = [(MSDDemoUpdateStatusHub *)self delegates];
      v15 = 136315394;
      v16 = "[MSDDemoUpdateStatusHub registerDemoUpdateStatusDelegate:]";
      v17 = 2048;
      v18 = [delegates3 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Registed 1 delegate, delegate count = %tu", &v15, 0x16u);
    }

    v9 = 1;
    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (void)demoUpdateProgress:(int64_t)progress
{
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    progressCopy = progress;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "demoUpdateProgress: %td", buf, 0xCu);
  }

  delegates = [(MSDDemoUpdateStatusHub *)selfCopy delegates];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B2E40;
  v8[3] = &unk_10016C3D8;
  v8[4] = progress;
  [delegates enumerateObjectsUsingBlock:v8];

  objc_sync_exit(selfCopy);
}

- (void)demoUpdateCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "demoUpdateCompleted.", buf, 2u);
  }

  delegates = [(MSDDemoUpdateStatusHub *)selfCopy delegates];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B2F98;
  v10[3] = &unk_10016C400;
  v9 = completedCopy;
  v11 = v9;
  [delegates enumerateObjectsUsingBlock:v10];

  objc_sync_exit(selfCopy);
}

- (void)demoUpdateFailed:(id)failed
{
  failedCopy = failed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[MSDTargetDevice sharedInstance];
  if (([v6 isOfflineMode] & 1) == 0)
  {
    [v6 saveOperationError:failedCopy];
  }

  delegates = [(MSDDemoUpdateStatusHub *)selfCopy delegates];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B30D4;
  v9[3] = &unk_10016C400;
  v8 = failedCopy;
  v10 = v8;
  [delegates enumerateObjectsUsingBlock:v9];

  objc_sync_exit(selfCopy);
}

- (void)unregisterDemoUpdateStatusDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy && [delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MSDDemoUpdateStatusDelegate])
  {
    delegates = [(MSDDemoUpdateStatusHub *)self delegates];
    [delegates removeObject:v5];

    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      delegates2 = [(MSDDemoUpdateStatusHub *)self delegates];
      v10 = 136315394;
      v11 = "[MSDDemoUpdateStatusHub unregisterDemoUpdateStatusDelegate:]";
      v12 = 2048;
      v13 = [delegates2 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Unregisted 1 delegate, delegate count = %tu", &v10, 0x16u);
    }
  }
}

@end