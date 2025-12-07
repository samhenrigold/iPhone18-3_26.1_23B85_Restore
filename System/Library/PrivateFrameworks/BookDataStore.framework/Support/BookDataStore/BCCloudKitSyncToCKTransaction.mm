@interface BCCloudKitSyncToCKTransaction
- (BCCloudKitSyncToCKTransaction)initWithEntityName:(id)name syncManager:(id)manager delegate:(id)delegate;
- (void)performWorkWithCompletion:(id)completion;
@end

@implementation BCCloudKitSyncToCKTransaction

- (BCCloudKitSyncToCKTransaction)initWithEntityName:(id)name syncManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = BCCloudKitSyncToCKTransaction;
  v10 = [(BCCloudKitTransaction *)&v13 initWithEntityName:name delegate:delegate];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_syncManager, manager);
  }

  return v11;
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
      v11 = 138412290;
      v12 = entityName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\\Transaction - Signaling Sync Manager for  %@\", &v11, 0xCu);
    }
  }

  syncManager = [(BCCloudKitSyncToCKTransaction *)self syncManager];
  [syncManager startSyncToCKWithCompletion:completionCopy];
}

@end