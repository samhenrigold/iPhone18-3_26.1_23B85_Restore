@interface DKNotableUserDataProvider
- (DKNotableUserDataProvider)init;
- (DKNotableUserDataProvider)initWithAccountProvider:(id)provider findMyProvider:(id)myProvider appleCareProvider:(id)careProvider walletProvider:(id)walletProvider;
- (void)fetchNotableUserData:(id)data;
@end

@implementation DKNotableUserDataProvider

- (DKNotableUserDataProvider)initWithAccountProvider:(id)provider findMyProvider:(id)myProvider appleCareProvider:(id)careProvider walletProvider:(id)walletProvider
{
  providerCopy = provider;
  myProviderCopy = myProvider;
  careProviderCopy = careProvider;
  walletProviderCopy = walletProvider;
  v15 = [(DKNotableUserDataProvider *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountProvider, provider);
    objc_storeStrong(&v16->_findMyProvider, myProvider);
    objc_storeStrong(&v16->_appleCareProvider, careProvider);
    objc_storeStrong(&v16->_walletProvider, walletProvider);
  }

  return v16;
}

- (DKNotableUserDataProvider)init
{
  v10.receiver = self;
  v10.super_class = DKNotableUserDataProvider;
  v2 = [(DKNotableUserDataProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(DKRestrictionsProvider);
    restrictionsProvider = v2->_restrictionsProvider;
    v2->_restrictionsProvider = v3;

    v5 = objc_alloc_init(DKStorageProvider);
    storageProvider = v2->_storageProvider;
    v2->_storageProvider = v5;

    v7 = objc_alloc_init(DKTelephonyProvider);
    telephonyProvider = v2->_telephonyProvider;
    v2->_telephonyProvider = v7;
  }

  return v2;
}

- (void)fetchNotableUserData:(id)data
{
  dataCopy = data;
  accountProvider = [(DKNotableUserDataProvider *)self accountProvider];
  if (!accountProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  findMyProvider = [(DKNotableUserDataProvider *)self findMyProvider];
  if (!findMyProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  appleCareProvider = [(DKNotableUserDataProvider *)self appleCareProvider];
  if (!appleCareProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  restrictionsProvider = [(DKNotableUserDataProvider *)self restrictionsProvider];
  if (!restrictionsProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  storageProvider = [(DKNotableUserDataProvider *)self storageProvider];
  if (!storageProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  telephonyProvider = [(DKNotableUserDataProvider *)self telephonyProvider];
  if (!telephonyProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  walletProvider = [(DKNotableUserDataProvider *)self walletProvider];
  if (!walletProvider)
  {
    [DKNotableUserDataProvider fetchNotableUserData:];
  }

  v12 = objc_alloc_init(DKNotableUserData);
  v13 = _DKLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v13, OS_LOG_TYPE_DEFAULT, "Fetching synchronous notable user data...", buf, 2u);
  }

  restrictionsProvider2 = [(DKNotableUserDataProvider *)self restrictionsProvider];
  isPreserveESIMOnEraseEnforced = [restrictionsProvider2 isPreserveESIMOnEraseEnforced];

  if (isPreserveESIMOnEraseEnforced)
  {
    [(DKNotableUserData *)v12 setCellularPlans:MEMORY[0x277CBEBF8]];
  }

  else
  {
    telephonyProvider2 = [(DKNotableUserDataProvider *)self telephonyProvider];
    cellularPlans = [telephonyProvider2 cellularPlans];
    [(DKNotableUserData *)v12 setCellularPlans:cellularPlans];
  }

  storageProvider2 = [(DKNotableUserDataProvider *)self storageProvider];
  -[DKNotableUserData setDataSize:](v12, "setDataSize:", [storageProvider2 dataSize]);

  v20 = _DKLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248D68000, v20, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous notable user data...", buf, 2u);
  }

  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  findMyProvider2 = [(DKNotableUserDataProvider *)self findMyProvider];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke;
  v48[3] = &unk_278F7DE90;
  v23 = v12;
  v49 = v23;
  v24 = v21;
  v50 = v24;
  [findMyProvider2 fetchFindMyState:v48];

  dispatch_group_enter(v24);
  appleCareProvider2 = [(DKNotableUserDataProvider *)self appleCareProvider];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_55;
  v45[3] = &unk_278F7DEB8;
  v26 = v23;
  v46 = v26;
  v27 = v24;
  v47 = v27;
  [appleCareProvider2 fetchAppleCareData:v45];

  dispatch_group_enter(v27);
  accountProvider2 = [(DKNotableUserDataProvider *)self accountProvider];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_57;
  v42[3] = &unk_278F7DEE0;
  v29 = v26;
  v43 = v29;
  v30 = v27;
  v44 = v30;
  [accountProvider2 fetchAccounts:v42];

  dispatch_group_enter(v30);
  walletProvider2 = [(DKNotableUserDataProvider *)self walletProvider];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_59;
  v39[3] = &unk_278F7DF08;
  v32 = v29;
  v40 = v32;
  v41 = v30;
  v33 = v30;
  [walletProvider2 fetchAppleWalletCards:v39];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_61;
  v36[3] = &unk_278F7D8F8;
  v37 = v32;
  v38 = dataCopy;
  v34 = v32;
  v35 = dataCopy;
  dispatch_group_notify(v33, MEMORY[0x277D85CD0], v36);
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _DKLogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching Find My state", v5, 2u);
  }

  [*(a1 + 32) setFindMyEnabled:a2];
  dispatch_group_leave(*(a1 + 40));
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _DKLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching Apple Care data", v5, 2u);
  }

  [*(a1 + 32) setAppleCareData:v3];
  dispatch_group_leave(*(a1 + 40));
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _DKLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching accounts", v5, 2u);
  }

  [*(a1 + 32) setAccounts:v3];
  dispatch_group_leave(*(a1 + 40));
}

void __50__DKNotableUserDataProvider_fetchNotableUserData___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _DKLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248D68000, v4, OS_LOG_TYPE_DEFAULT, "Finished fetching Wallet data", v5, 2u);
  }

  [*(a1 + 32) setWalletData:v3];
  dispatch_group_leave(*(a1 + 40));
}

@end