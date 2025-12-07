@interface ServiceProvider
- (void)_teardown;
- (void)start;
@end

@implementation ServiceProvider

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = sub_100002830(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(ServiceProvider *)self fm_logID];
    account = [(ServiceProvider *)self account];
    uniqueId = [account uniqueId];
    *buf = 138412546;
    v18 = fm_logID;
    v19 = 2112;
    v20 = uniqueId;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Starting service provider for account %@", buf, 0x16u);
  }

  account2 = [(ServiceProvider *)self account];

  if (account2)
  {
    v10 = +[NSOperationQueue mainQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100006140;
    v16[3] = &unk_10005D288;
    v16[4] = self;
    v11 = [v3 addObserverForName:@"AccountDidDeactivateNotificationKey" object:0 queue:v10 usingBlock:v16];
    [(ServiceProvider *)self setDidDeactivateToken:v11];

    v12 = +[NSOperationQueue mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000061D0;
    v15[3] = &unk_10005D288;
    v15[4] = self;
    v13 = [v3 addObserverForName:@"AccountDidUpdateNotification" object:0 queue:v12 usingBlock:v15];
    [(ServiceProvider *)self setDidUpdateToken:v13];
  }

  else
  {
    v14 = sub_100002830(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000367B0(self, v14);
    }
  }
}

- (void)_teardown
{
  v7 = +[NSNotificationCenter defaultCenter];
  didDeactivateToken = [(ServiceProvider *)self didDeactivateToken];

  if (didDeactivateToken)
  {
    didDeactivateToken2 = [(ServiceProvider *)self didDeactivateToken];
    [v7 removeObserver:didDeactivateToken2];

    [(ServiceProvider *)self setDidDeactivateToken:0];
  }

  didUpdateToken = [(ServiceProvider *)self didUpdateToken];

  if (didUpdateToken)
  {
    didUpdateToken2 = [(ServiceProvider *)self didUpdateToken];
    [v7 removeObserver:didUpdateToken2];

    [(ServiceProvider *)self setDidUpdateToken:0];
  }

  [(ServiceProvider *)self deinitializeProvider];
}

@end