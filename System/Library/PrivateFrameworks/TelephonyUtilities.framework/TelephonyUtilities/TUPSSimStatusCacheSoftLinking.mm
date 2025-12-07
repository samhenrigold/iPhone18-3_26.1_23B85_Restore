@interface TUPSSimStatusCacheSoftLinking
+ (id)fetchSubscriptionsInUse;
@end

@implementation TUPSSimStatusCacheSoftLinking

+ (id)fetchSubscriptionsInUse
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v3 = *(&buf + 4);
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "%@ fetching current CTXPCServiceSubscriptions in use", &buf, 0xCu);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getPSSimStatusCacheClass_softClass;
  v12 = getPSSimStatusCacheClass_softClass;
  if (!getPSSimStatusCacheClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v14 = __getPSSimStatusCacheClass_block_invoke;
    v15 = &unk_1E7424CD8;
    v16 = &v9;
    __getPSSimStatusCacheClass_block_invoke(&buf);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  sharedInstance = [v4 sharedInstance];
  subscriptionsInUse = [sharedInstance subscriptionsInUse];

  return subscriptionsInUse;
}

@end