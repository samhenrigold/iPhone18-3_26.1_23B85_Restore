@interface BCCloudKitTransaction
- (BCCloudKitTransaction)initWithEntityName:(id)name delegate:(id)delegate;
- (BCCloudKitTransactionDelegate)delegate;
- (id)transactionName;
- (void)clientConnected;
- (void)laq_scheduleTransactionLifetime;
- (void)performWorkWithCompletion:(id)completion;
- (void)signal;
@end

@implementation BCCloudKitTransaction

- (BCCloudKitTransaction)initWithEntityName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = BCCloudKitTransaction;
  v8 = [(BCCloudKitTransaction *)&v31 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    entityName = v8->_entityName;
    v8->_entityName = v9;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v11 = [BDSOSTransaction alloc];
    transactionName = [(BCCloudKitTransaction *)v8 transactionName];
    v13 = -[BDSOSTransaction initWithTransactionName:](v11, "initWithTransactionName:", [transactionName cStringUsingEncoding:4]);
    osTransaction = v8->_osTransaction;
    v8->_osTransaction = v13;

    transactionName2 = [(BCCloudKitTransaction *)v8 transactionName];
    v16 = [@"com.apple.iBooks.CloudKitTransaction." stringByAppendingString:transactionName2];

    v17 = [v16 cStringUsingEncoding:4];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    lifecycleAccessQueue = v8->_lifecycleAccessQueue;
    v8->_lifecycleAccessQueue = v19;

    objc_initWeak(&location, v8);
    v21 = [BUCoalescingCallBlock alloc];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10003A5A8;
    v28[3] = &unk_10023FC40;
    objc_copyWeak(&v29, &location);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [NSString stringWithFormat:@"_coalescedNotification in %@", v23];
    v25 = [v21 initWithNotifyBlock:v28 notifyTimeout:10 blockDescription:v24 notifyTimeoutBlock:&stru_100240DD8];
    coalescedNotification = v8->_coalescedNotification;
    v8->_coalescedNotification = v25;

    [(BCCloudKitTransaction *)v8 coalescingDelay];
    [(BUCoalescingCallBlock *)v8->_coalescedNotification setCoalescingDelay:?];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)transactionName
{
  v3 = objc_opt_class();
  entityName = [(BCCloudKitTransaction *)self entityName];
  v5 = [v3 transactionNameForEntityName:entityName];

  return v5;
}

- (void)performWorkWithCompletion:(id)completion
{
  v3 = objc_retainBlock(completion);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)clientConnected
{
  lifecycleAccessQueue = [(BCCloudKitTransaction *)self lifecycleAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A834;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(lifecycleAccessQueue, block);
}

- (void)signal
{
  v3 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v3 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v6 = sub_10000DB80(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      transactionName = [(BCCloudKitTransaction *)self transactionName];
      *buf = 138412290;
      v12 = transactionName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\Transaction signaling for %@\", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  coalescedNotification = [(BCCloudKitTransaction *)self coalescedNotification];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003AA64;
  v9[3] = &unk_100240E00;
  v9[4] = self;
  objc_copyWeak(&v10, buf);
  [coalescedNotification signalWithCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)laq_scheduleTransactionLifetime
{
  transactionLifetime = [(BCCloudKitTransaction *)self transactionLifetime];

  if (!transactionLifetime)
  {
    v4 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v4 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v7 = sub_10000DB80(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        transactionName = [(BCCloudKitTransaction *)self transactionName];
        *buf = 138412290;
        v16 = transactionName;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\Transaction scheduletransactionLifetime for %@\", buf, 0xCu);
      }
    }

    lifecycleAccessQueue = [(BCCloudKitTransaction *)self lifecycleAccessQueue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, lifecycleAccessQueue);

    v11 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003AEDC;
    handler[3] = &unk_10023F6B0;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003AFF4;
    v13[3] = &unk_10023F6B0;
    v13[4] = self;
    dispatch_source_set_cancel_handler(v10, v13);
    [(BCCloudKitTransaction *)self setTransactionLifetime:v10];
    transactionLifetime2 = [(BCCloudKitTransaction *)self transactionLifetime];
    dispatch_resume(transactionLifetime2);
  }
}

- (BCCloudKitTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end