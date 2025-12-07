@interface NPKAccountChangeObserver
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation NPKAccountChangeObserver

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v8 = *&type;
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v21 = accountCopy;
    v22 = 1024;
    v23 = v8;
    v24 = 2112;
    v25 = storeCopy;
    v26 = 2112;
    v27 = oldAccountCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Account change observer: account %@ will change with type %d store %@ old account %@", buf, 0x26u);
  }

  v13 = [[PKACAccountChange alloc] initWithChangeType:v8 newAccount:accountCopy oldAccount:oldAccountCopy];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NPKAccountChangeObserver detected %{public}@", buf, 0xCu);
  }

  if (![v13 operation])
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NPKAccountChangeObserver detected change operation type unsupported. Ignoring request", buf, 2u);
    }

    goto LABEL_14;
  }

  if (v8 == 3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NPKAccountChangeObserver notifying agent about deletion.", buf, 2u);
    }

    v14 = dispatch_semaphore_create(0);
    v15 = objc_alloc_init(NPKCompanionAgentConnection);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_E6C;
    v18[3] = &unk_40D8;
    v16 = v14;
    v19 = v16;
    [v15 handlePendingiCloudSignoutWithCompletion:v18];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NPKAccountChangeObserver did notify agent about deletion.", buf, 2u);
    }

    v12 = v16;
LABEL_14:
  }

  return 0;
}

@end