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
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v8 = BDSCloudKitDevelopmentLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      notificationName = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v23 = notificationName;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "\\Transaction - posting notification %{public}@\", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  notificationName2 = [(BCCloudKitDataChangedTransaction *)self notificationName];
  [defaultCenter postNotificationName:notificationName2 object:0];

  v12 = BDSXPCNotificationsEnabled();
  if (v12)
  {
    v13 = BDSServiceXPCNotificationLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      notificationName3 = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v23 = notificationName3;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "posting BDSServiceNotificationName for %{public}@", buf, 0xCu);
    }

    notificationName4 = [(BCCloudKitDataChangedTransaction *)self notificationName];
    v21 = notificationName4;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"BDSServiceNotificationName" object:0 userInfo:v16];
  }

  v18 = _Block_copy(completionCopy);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }
}

@end