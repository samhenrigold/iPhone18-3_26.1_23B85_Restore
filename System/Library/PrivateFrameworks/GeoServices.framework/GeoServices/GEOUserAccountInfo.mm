@interface GEOUserAccountInfo
+ (BOOL)hasValidICloudAccountForAddingRatingsAndPhotos;
+ (BOOL)isPaidAccount;
+ (id)primaryICloudAccount;
+ (id)sharedInstance;
- (BOOL)isCurrentICloudAccountChinaBased;
- (BOOL)isPrimaryICloudAccountPAID;
- (GEOUserAccountInfo)init;
- (id)_primaryICloudAccountIsolated;
- (id)primaryICloudAccount;
@end

@implementation GEOUserAccountInfo

+ (BOOL)hasValidICloudAccountForAddingRatingsAndPhotos
{
  sharedInstance = [self sharedInstance];
  if ([sharedInstance isCurrentICloudAccountChinaBased])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    sharedInstance2 = [self sharedInstance];
    primaryICloudAccount = [sharedInstance2 primaryICloudAccount];
    if (primaryICloudAccount)
    {
      sharedInstance3 = [self sharedInstance];
      v4 = [sharedInstance3 isCurrentICloudAccountUnderage] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)isCurrentICloudAccountChinaBased
{
  if (AccountsLibraryCore(0) && AppleAccountLibraryCore(0) && AuthKitLibraryCore(0))
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    geo_isolate_sync();
    v2 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __42__GEOUserAccountInfo_primaryICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _primaryICloudAccountIsolated];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (GEOUserAccountInfo)init
{
  v7.receiver = self;
  v7.super_class = GEOUserAccountInfo;
  v2 = [(GEOUserAccountInfo *)&v7 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolation = v2->_isolation;
    v2->_isolation = v3;

    v5 = v2;
  }

  return v2;
}

void __54__GEOUserAccountInfo_isCurrentICloudAccountChinaBased__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _primaryICloudAccountIsolated];
  if (v2)
  {
    v10 = v2;
    v3 = [getAKAccountManagerClass() sharedInstance];
    v4 = *(a1 + 32);
    if ((*(v4 + 40) & 1) == 0)
    {
      v5 = [v10 aa_altDSID];
      v6 = [v3 authKitAccountWithAltDSID:v5 error:0];
      v7 = *(a1 + 32);
      v8 = *(v7 + 48);
      *(v7 + 48) = v6;

      *(*(a1 + 32) + 40) = 1;
      v4 = *(a1 + 32);
    }

    if (*(v4 + 48))
    {
      v9 = [v3 appleIDCountryCodeForAccount:?];
      *(*(*(a1 + 40) + 8) + 24) = [v9 isEqualToString:@"CN"];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v2 = v10;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (id)primaryICloudAccount
{
  if (AccountsLibraryCore(0) && AppleAccountLibraryCore(0))
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__77655;
    v8 = __Block_byref_object_dispose__77656;
    v9 = 0;
    geo_isolate_sync();
    v2 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_77675 != -1)
  {
    dispatch_once(&sharedInstance_once_77675, &__block_literal_global_77676);
  }

  v3 = sharedInstance_singleton_77677;

  return v3;
}

void __36__GEOUserAccountInfo_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(GEOUserAccountInfo);
  v1 = sharedInstance_singleton_77677;
  sharedInstance_singleton_77677 = v0;
}

- (id)_primaryICloudAccountIsolated
{
  geo_assert_isolated();
  if (!self->_accountStore)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v3 = getACAccountStoreClass_softClass;
    v26 = getACAccountStoreClass_softClass;
    if (!getACAccountStoreClass_softClass)
    {
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = &__getACAccountStoreClass_block_invoke;
      v21 = &unk_1E7073678;
      v22 = &v23;
      (__getACAccountStoreClass_block_invoke)(&v18);
      v3 = v24[3];
    }

    v4 = v3;
    _Block_object_dispose(&v23, 8);
    v5 = objc_alloc_init(v3);
    accountStore = self->_accountStore;
    self->_accountStore = v5;

    v18 = 0;
    v7 = AppleAccountLibraryCore(&v18);
    v8 = v18;
    if (v7)
    {
      if (v18)
      {
        free(v18);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v10 = getACAccountStoreDidChangeNotificationSymbolLoc_ptr;
      v26 = getACAccountStoreDidChangeNotificationSymbolLoc_ptr;
      if (!getACAccountStoreDidChangeNotificationSymbolLoc_ptr)
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __getACAccountStoreDidChangeNotificationSymbolLoc_block_invoke;
        v21 = &unk_1E7073678;
        v22 = &v23;
        v11 = AccountsLibrary();
        v12 = dlsym(v11, "ACAccountStoreDidChangeNotification");
        *(v22[1] + 24) = v12;
        getACAccountStoreDidChangeNotificationSymbolLoc_ptr = *(v22[1] + 24);
        v10 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v10)
      {
        [defaultCenter addObserver:self selector:sel__accountStoreDidChange_ name:*v10 object:self->_accountStore];

        goto LABEL_11;
      }

      v8 = dlerror();
    }

    v17 = abort_report_np("%s", v8);
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v17);
  }

LABEL_11:
  if (!self->_hasCheckedPrimaryAccount)
  {
    aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    primaryICloudAccount = self->_primaryICloudAccount;
    self->_primaryICloudAccount = aa_primaryAppleAccount;

    self->_hasCheckedPrimaryAccount = 1;
  }

  v15 = self->_primaryICloudAccount;

  return v15;
}

+ (id)primaryICloudAccount
{
  sharedInstance = [self sharedInstance];
  primaryICloudAccount = [sharedInstance primaryICloudAccount];

  return primaryICloudAccount;
}

+ (BOOL)isPaidAccount
{
  sharedInstance = [self sharedInstance];
  isPrimaryICloudAccountPAID = [sharedInstance isPrimaryICloudAccountPAID];

  return isPrimaryICloudAccountPAID;
}

void __48__GEOUserAccountInfo_isPrimaryICloudAccountPAID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _primaryICloudAccountIsolated];
  v2 = [v5 aa_primaryEmail];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isPrimaryICloudAccountPAID
{
  v3 = +[GEOPlatform sharedPlatform];
  if (![v3 isInternalInstall] || !AccountsLibraryCore(0) || !AppleAccountLibraryCore(0))
  {

    return 0;
  }

  v4 = AuthKitLibraryCore(0);

  if (!v4)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__77655;
  v13 = __Block_byref_object_dispose__77656;
  v14 = 0;
  v8 = MEMORY[0x1E69E9820];
  geo_isolate_sync();
  if (v10[5])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF CONTAINS .paid@icloud.com", v8, 3221225472, __48__GEOUserAccountInfo_isPrimaryICloudAccountPAID__block_invoke, &unk_1E7071448, self, &v9];
    v6 = [v5 evaluateWithObject:v10[5]];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

@end