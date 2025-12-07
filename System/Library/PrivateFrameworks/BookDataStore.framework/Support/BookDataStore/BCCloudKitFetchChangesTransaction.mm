@interface BCCloudKitFetchChangesTransaction
- (BCCloudKitController)cloudKitController;
- (BCCloudKitFetchChangesTransaction)initWithCloudKitController:(id)controller delegate:(id)delegate;
- (void)performWorkWithCompletion:(id)completion;
@end

@implementation BCCloudKitFetchChangesTransaction

- (BCCloudKitFetchChangesTransaction)initWithCloudKitController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = BCCloudKitFetchChangesTransaction;
  v7 = [(BCCloudKitTransaction *)&v10 initWithEntityName:@"iBooks" delegate:delegate];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_cloudKitController, controllerCopy);
  }

  return v8;
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
      entityName = [(BCCloudKitTransaction *)self entityName];
      *buf = 138412290;
      v19 = entityName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\\BCCloudKitFetchChangesTransaction - Signaling Database to fetch changes for %@\", buf, 0xCu);
    }
  }

  cloudKitController = [(BCCloudKitFetchChangesTransaction *)self cloudKitController];
  privateCloudDatabaseController = [cloudKitController privateCloudDatabaseController];

  if (privateCloudDatabaseController)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100044B28;
    v16[3] = &unk_100240CF8;
    v17 = completionCopy;
    [privateCloudDatabaseController fetchChangesWithCompletion:v16];
    v13 = v17;
  }

  else
  {
    v14 = sub_100002660(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0610(v14);
    }

    v15 = objc_retainBlock(completionCopy);
    v13 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15);
    }
  }
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end