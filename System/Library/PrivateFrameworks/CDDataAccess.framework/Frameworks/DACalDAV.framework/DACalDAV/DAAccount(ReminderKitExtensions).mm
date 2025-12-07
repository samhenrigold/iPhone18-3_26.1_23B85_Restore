@interface DAAccount(ReminderKitExtensions)
- (REMDAAccountInfo)rem_provideAccountInfo;
- (id)rem_account;
- (id)rem_saveRequest;
- (id)rem_store;
@end

@implementation DAAccount(ReminderKitExtensions)

- (id)rem_store
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF3AA8] = [MEMORY[0x277CF3AA8] sharedManager];
  rem_storeProvider = [mEMORY[0x277CF3AA8] rem_storeProvider];
  rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

  if (!rem_storeForDataAccess)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_242490000, v4, v5, "Couldn't get an REMStore from %{public}@.", &v9, 0xCu);
    }
  }

  return rem_storeForDataAccess;
}

- (id)rem_saveRequest
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF3AA8] = [MEMORY[0x277CF3AA8] sharedManager];
  rem_storeProvider = [mEMORY[0x277CF3AA8] rem_storeProvider];
  rem_saveRequestForDataAccess = [rem_storeProvider rem_saveRequestForDataAccess];

  if (!rem_saveRequestForDataAccess)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_242490000, v4, v5, "Couldn't get an REMSaveRequest from %{public}@.", &v9, 0xCu);
    }
  }

  return rem_saveRequestForDataAccess;
}

- (id)rem_account
{
  v14 = *MEMORY[0x277D85DE8];
  rem_store = [self rem_store];
  accountID = [self accountID];
  v11 = 0;
  v4 = [rem_store fetchAccountWithExternalIdentifier:accountID error:&v11];
  v5 = v11;

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 3);
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_5:

      goto LABEL_7;
    }

    accountID2 = [self accountID];
    *buf = 138543362;
    v13 = accountID2;
    v9 = "Error when fetching account from ReminderKit %{public}@.";
LABEL_4:
    _os_log_impl(&dword_242490000, v6, v7, v9, buf, 0xCu);

    goto LABEL_5;
  }

  if (!v4)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 4);
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_5;
    }

    accountID2 = [self accountID];
    *buf = 138543362;
    v13 = accountID2;
    v9 = "Could not find account from ReminderKit %{public}@.";
    goto LABEL_4;
  }

LABEL_7:

  return v4;
}

- (REMDAAccountInfo)rem_provideAccountInfo
{
  rem_account = [self rem_account];
  objectID = [rem_account objectID];

  v4 = [REMDAAccountInfo alloc];
  accountID = [self accountID];
  accountDescription = [self accountDescription];
  v7 = [(REMDAAccountInfo *)v4 initWithAccountID:accountID remAccountObjectID:objectID accountDescription:accountDescription];

  return v7;
}

@end