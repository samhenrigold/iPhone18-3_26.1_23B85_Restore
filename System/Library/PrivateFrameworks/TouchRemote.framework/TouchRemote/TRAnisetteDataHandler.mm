@interface TRAnisetteDataHandler
- (void)registerForAnisetteDataRequestsFromSession:(id)session;
@end

@implementation TRAnisetteDataHandler

- (void)registerForAnisetteDataRequestsFromSession:(id)session
{
  sessionCopy = session;
  [sessionCopy setRequestHandler:&__block_literal_global_3 forRequestClass:objc_opt_class()];
  [sessionCopy setRequestHandler:&__block_literal_global_7 forRequestClass:objc_opt_class()];
  [sessionCopy setRequestHandler:&__block_literal_global_13 forRequestClass:objc_opt_class()];
  [sessionCopy setRequestHandler:&__block_literal_global_19 forRequestClass:objc_opt_class()];
  [sessionCopy setRequestHandler:&__block_literal_global_26 forRequestClass:objc_opt_class()];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "Received provision request: %@", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CF0168]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1;
  v10[3] = &unk_279DCEEC8;
  v11 = v6;
  v9 = v6;
  [v8 provisionWithCompletion:v10];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_1_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(TRProvisionAnisetteDataResponse);
    [(TRProvisionAnisetteDataResponse *)v8 setDidSucceed:a2];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "Received sync request: %@", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x277CF0168];
  v9 = v4;
  v10 = objc_alloc_init(v8);
  v11 = [v9 simData];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8;
  v13[3] = &unk_279DCEEC8;
  v14 = v6;
  v12 = v6;
  [v10 syncWithSIMData:v11 completion:v13];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_8_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(TRSyncAnisetteDataResponse);
    [(TRSyncAnisetteDataResponse *)v8 setDidSucceed:a2];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "Received erase request: %@", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CF0168]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14;
  v10[3] = &unk_279DCEEC8;
  v11 = v6;
  v9 = v6;
  [v8 eraseWithCompletion:v10];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_14_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(TREraseAnisetteDataResponse);
    [(TREraseAnisetteDataResponse *)v8 setDidSucceed:a2];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "Received fetch request: %@", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CF0168]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20;
  v10[3] = &unk_279DCF6E8;
  v11 = v6;
  v9 = v6;
  [v8 anisetteDataWithCompletion:v10];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_20_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = objc_alloc_init(TRFetchAnisetteDataResponse);
    [(TRFetchAnisetteDataResponse *)v9 setAnisetteData:v5];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "Received legacy request: %@", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x277CF0168];
  v9 = v4;
  v10 = objc_alloc_init(v8);
  v11 = [v9 dsid];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27;
  v13[3] = &unk_279DCF6E8;
  v14 = v6;
  v12 = v6;
  [v10 legacyAnisetteDataForDSID:v11 withCompletion:v13];
}

void __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__TRAnisetteDataHandler_registerForAnisetteDataRequestsFromSession___block_invoke_27_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = objc_alloc_init(TRLegacyAnisetteDataResponse);
    [(TRLegacyAnisetteDataResponse *)v9 setAnisetteData:v5];
    (*(*(a1 + 32) + 16))();
  }
}

@end