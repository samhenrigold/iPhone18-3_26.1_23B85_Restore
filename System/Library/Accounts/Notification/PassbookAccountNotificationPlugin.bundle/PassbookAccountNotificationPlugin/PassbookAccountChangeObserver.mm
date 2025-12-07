@interface PassbookAccountChangeObserver
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation PassbookAccountChangeObserver

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v8 = *&type;
  v22 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = accountCopy;
    v18 = 2112;
    v19 = oldAccountCopy;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver willChangeWithType called with account %@, oldAccount %@, changeType %u", &v16, 0x1Cu);
  }

  v13 = [objc_alloc(MEMORY[0x29EDC60B8]) initWithChangeType:v8 event:1 newAccount:accountCopy oldAccount:oldAccountCopy];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver detected %{public}@.", &v16, 0xCu);
  }

  if (v8 == 3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver notifying pass library.", &v16, 2u);
    }

    mEMORY[0x29EDC60C8] = [MEMORY[0x29EDC60C8] sharedInstance];
    [mEMORY[0x29EDC60C8] noteACAccountChanged:v13];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver did notify pass library.", &v16, 2u);
    }
  }

  return 0;
}

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v8 = *&type;
  v22 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = accountCopy;
    v18 = 2112;
    v19 = oldAccountCopy;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver didChangeWithType called with account %@, oldAccount %@, changeType %u", &v16, 0x1Cu);
  }

  v13 = [objc_alloc(MEMORY[0x29EDC60B8]) initWithChangeType:v8 event:2 newAccount:accountCopy oldAccount:oldAccountCopy];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver detected %{public}@.", &v16, 0xCu);
  }

  type = [v13 type];
  if (type == 1)
  {
    if ((v8 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_20;
    }
  }

  else if (type || v8 != 1 && v8 != 3 && (v8 != 2 || ([v13 enablementOfRelevantDataclassesChanged] & 1) == 0 && (objc_msgSend(v13, "accountManagedStateChanged") & 1) == 0 && !objc_msgSend(v13, "accountOrderChanged")))
  {
    goto LABEL_20;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver notifying pass library.", &v16, 2u);
  }

  mEMORY[0x29EDC60C8] = [MEMORY[0x29EDC60C8] sharedInstance];
  [mEMORY[0x29EDC60C8] noteACAccountChanged:v13];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_29C8FD000, v12, OS_LOG_TYPE_DEFAULT, "PassbookAccountChangeObserver did notify pass library.", &v16, 2u);
  }

LABEL_20:
}

@end