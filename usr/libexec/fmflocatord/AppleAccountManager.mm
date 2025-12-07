@interface AppleAccountManager
+ (id)sharedInstance;
- (AppleAccountManager)init;
- (id)fmfACAccount;
- (id)iCloudACAccount;
- (id)initSingleton;
- (void)dealloc;
- (void)iCloudAccountChanged:(id)changed;
- (void)requestAuthenticationShouldForce:(BOOL)force completion:(id)completion;
- (void)syncFMFAccountInfo;
@end

@implementation AppleAccountManager

+ (id)sharedInstance
{
  if (qword_1000702F0 != -1)
  {
    sub_100038500();
  }

  v2 = qword_1000702E8;
  if (!qword_1000702E8)
  {
    v3 = sub_100002830(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The AppleAccountManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1000702E8;
  }

  return v2;
}

- (AppleAccountManager)init
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100038558(v3);
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = AppleAccountManager;
  v2 = [(AppleAccountManager *)&v5 init];
  if (v2)
  {
    objc_storeStrong(&qword_1000702E8, v2);
    v3 = objc_alloc_init(ACAccountStore);
    [(AppleAccountManager *)v2 setAccountStore:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036958(self, v3);
  }

  v4 = qword_1000702E8;
  qword_1000702E8 = 0;

  v5.receiver = self;
  v5.super_class = AppleAccountManager;
  [(AppleAccountManager *)&v5 dealloc];
}

- (void)syncFMFAccountInfo
{
  iCloudACAccount = [(AppleAccountManager *)self iCloudACAccount];
  v3 = iCloudACAccount;
  if (iCloudACAccount)
  {
    v4 = [iCloudACAccount isProvisionedForDataclass:@"com.apple.Dataclass.ShareLocation"];
    if (v4)
    {
      v5 = +[AccountManager sharedInstance];
      v6 = [v5 allAccountsOfType:objc_opt_class()];

      if ([v6 count])
      {
        v7 = [v6 objectAtIndexedSubscript:0];
        v8 = v7;
        if (v7)
        {
          dsid = [v7 dsid];
          aa_personID = [v3 aa_personID];
          v11 = [dsid isEqualToString:aa_personID];

          if (v11)
          {
LABEL_15:
            v16 = objc_alloc_init(FMFAccount);
            [(FMFAccount *)v16 copyInfoFromAccount:v8];
            [(FMFAccount *)v16 applyPropertiesFromACAccount:v3 includingTokens:1];
            v17 = +[AccountManager sharedInstance];
            [v17 addAccount:v16];

            goto LABEL_16;
          }

          v12 = +[StartupRegisterManager sharedInstance];
          [v12 eventDidOccur:1];
        }
      }

      else
      {
        v8 = 0;
      }

      v15 = +[StartupRegisterManager sharedInstance];
      [v15 eventDidOccur:0];

      goto LABEL_15;
    }

    v14 = sub_100002830(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "ShareLocation is not provisioned in the iCloud account", v18, 2u);
    }
  }

  else
  {
    v13 = sub_100002830(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Deleting FMF acount", buf, 2u);
    }

    v14 = +[AccountManager sharedInstance];
    [v14 deactivateAllAccountsOfType:objc_opt_class()];
  }

LABEL_16:
}

- (id)iCloudACAccount
{
  accountStore = [(AppleAccountManager *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (id)fmfACAccount
{
  iCloudACAccount = [(AppleAccountManager *)self iCloudACAccount];
  if ([iCloudACAccount isProvisionedForDataclass:@"com.apple.Dataclass.ShareLocation"])
  {
    iCloudACAccount2 = [(AppleAccountManager *)self iCloudACAccount];
    aa_fmfAccount = [iCloudACAccount2 aa_fmfAccount];
  }

  else
  {
    aa_fmfAccount = 0;
  }

  return aa_fmfAccount;
}

- (void)iCloudAccountChanged:(id)changed
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "iCloudAccountChanged notification - looking for changes in fmf accounts", buf, 2u);
  }

  v4 = +[AppleAccountManager sharedInstance];
  v5 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EFD0;
  block[3] = &unk_10005D2B0;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)requestAuthenticationShouldForce:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  completionCopy = completion;
  iCloudACAccount = [(AppleAccountManager *)self iCloudACAccount];
  if (iCloudACAccount)
  {
    accountStore = [(AppleAccountManager *)self accountStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001F0BC;
    v9[3] = &unk_10005DF88;
    v9[4] = self;
    v10 = completionCopy;
    [accountStore renewCredentialsForAccount:iCloudACAccount force:forceCopy reason:0 completion:v9];
  }
}

@end