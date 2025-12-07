@interface TRAnisetteDataProvider
- (TRAnisetteDataProvider)initWithSession:(id)session;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation TRAnisetteDataProvider

- (TRAnisetteDataProvider)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = TRAnisetteDataProvider;
  v6 = [(TRAnisetteDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(completionCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[TRAnisetteDataProvider provisionAnisetteWithCompletion:]";
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(TRProvisionAnisetteDataRequest);
  session = self->_session;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__TRAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v10[3] = &unk_279DCF318;
  v11 = v5;
  v9 = v5;
  [(TRSession *)session sendRequest:v7 withResponseHandler:v10];
}

void __58__TRAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[TRAnisetteDataProvider provisionAnisetteWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 didSucceed], v5);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = completionCopy;
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle(completionCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[TRAnisetteDataProvider syncAnisetteWithSIMData:completion:]";
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(TRSyncAnisetteDataRequest);
  [(TRSyncAnisetteDataRequest *)v10 setSimData:dataCopy];
  session = self->_session;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__TRAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v13[3] = &unk_279DCF318;
  v14 = v8;
  v12 = v8;
  [(TRSession *)session sendRequest:v10 withResponseHandler:v13];
}

void __61__TRAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[TRAnisetteDataProvider syncAnisetteWithSIMData:completion:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 didSucceed], v5);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(completionCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[TRAnisetteDataProvider eraseAnisetteWithCompletion:]";
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v7 = objc_alloc_init(TREraseAnisetteDataRequest);
  session = self->_session;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__TRAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v10[3] = &unk_279DCF318;
  v11 = v5;
  v9 = v5;
  [(TRSession *)session sendRequest:v7 withResponseHandler:v10];
}

void __54__TRAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[TRAnisetteDataProvider eraseAnisetteWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 didSucceed], v5);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  necessaryCopy = necessary;
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(completionCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]";
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v9 = objc_alloc_init(TRFetchAnisetteDataRequest);
  [(TRFetchAnisetteDataRequest *)v9 setShouldProvision:necessaryCopy];
  self->_fetchAnisetteInProgress = 1;
  session = self->_session;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke;
  v17[3] = &unk_279DCF368;
  v17[4] = self;
  v11 = v7;
  v18 = v11;
  [(TRSession *)session sendRequest:v9 withResponseHandler:v17];
  if (+[TRDefaults anisetteFetchTimeout])
  {
    v12 = 1000000000 * +[TRDefaults anisetteFetchTimeout];
  }

  else
  {
    v12 = 120000000000;
  }

  v13 = dispatch_time(0, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_7;
  v15[3] = &unk_279DCF390;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], v15);
}

void __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", buf, 0x20u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_4;
  v12[3] = &unk_279DCF340;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v13 = v7;
  v10 = v7;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (_TRLogEnabled == 1)
    {
      v3 = TRLogHandle(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s: Completing without timeout", &v6, 0xCu);
      }

      v1 = *(a1 + 32);
    }

    *(v1 + 8) = 0;
    v4 = *(a1 + 56);
    v5 = [*(a1 + 40) anisetteData];
    (*(v4 + 16))(v4, v5, *(a1 + 48));
  }
}

void __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_7(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 8) = 0;
    if (_TRLogEnabled == 1)
    {
      v3 = TRLogHandle(a1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315138;
        v6 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s: Timed out", &v5, 0xCu);
      }
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-12003 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle(completionCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[TRAnisetteDataProvider legacyAnisetteDataForDSID:withCompletion:]";
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(TRLegacyAnisetteDataRequest);
  [(TRLegacyAnisetteDataRequest *)v10 setDsid:dCopy];
  session = self->_session;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__TRAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v13[3] = &unk_279DCF318;
  v14 = v8;
  v12 = v8;
  [(TRSession *)session sendRequest:v10 withResponseHandler:v13];
}

void __67__TRAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[TRAnisetteDataProvider legacyAnisetteDataForDSID:withCompletion:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v11, 0x20u);
    }
  }

  v9 = *(a1 + 32);
  v10 = [v7 anisetteData];
  (*(v9 + 16))(v9, v10, v5);
}

@end