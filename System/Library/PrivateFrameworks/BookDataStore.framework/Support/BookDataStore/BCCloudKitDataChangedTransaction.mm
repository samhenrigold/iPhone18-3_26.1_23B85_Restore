@interface BCCloudKitDataChangedTransaction
- (BCCloudKitDataChangedTransaction)initWithEntityName:(id)name notificationName:(id)notificationName delegate:(id)delegate;
- (void)performWorkWithCompletion:(id)completion;
@end

@implementation BCCloudKitDataChangedTransaction

- (BCCloudKitDataChangedTransaction)initWithEntityName:(id)name notificationName:(id)notificationName delegate:(id)delegate
{
  notificationNameCopy = notificationName;
  v13.receiver = self;
  v13.super_class = BCCloudKitDataChangedTransaction;
  v9 = [(BCCloudKitTransaction *)&v13 initWithEntityName:name delegate:delegate];
  if (v9)
  {
    v10 = [notificationNameCopy copy];
    notificationName = v9->_notificationName;
    v9->_notificationName = v10;
  }

  return v9;
}

- (void)performWorkWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v5 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v8 = sub_10000DB80(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      notificationName = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v23 = notificationName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\\Transaction - posting notification %{public}@\", buf, 0xCu);
    }
  }

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  notificationName2 = [(BCCloudKitDataChangedTransaction *)self notificationName];
  [v10 postNotificationName:notificationName2 object:0];

  v12 = sub_10000CE34();
  if (v12)
  {
    v13 = sub_100002614(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      notificationName3 = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v23 = notificationName3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "posting BDSServiceNotificationName for %{public}@", buf, 0xCu);
    }

    notificationName4 = [(BCCloudKitDataChangedTransaction *)self notificationName];
    v21 = notificationName4;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"BDSServiceNotificationName" object:0 userInfo:v16];
  }

  v18 = objc_retainBlock(completionCopy);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }
}

@end