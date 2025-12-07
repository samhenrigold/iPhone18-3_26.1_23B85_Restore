@interface SASProximityAnisetteRequestAction
+ (id)actionFromDictionary:(id)dictionary;
- (id)requestPayload;
- (id)responsePayload;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)setResponseFromData:(id)data;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation SASProximityAnisetteRequestAction

+ (id)actionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(SASProximityAnisetteRequestAction);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"request"];

  -[SASProximityAnisetteRequestAction setRequest:](v4, "setRequest:", [v5 integerValue]);

  return v4;
}

- (id)requestPayload
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"request";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SASProximityAnisetteRequestAction request](self, "request")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)responsePayload
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  request = [(SASProximityAnisetteRequestAction *)self request];
  if (request <= 1)
  {
    if (!request)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke;
      v25[3] = &unk_278846520;
      v25[4] = self;
      v6 = &v26;
      v26 = v3;
      [(SASProximityAnisetteRequestAction *)self provisionAnisetteWithCompletion:v25];
      goto LABEL_13;
    }

    if (request != 1)
    {
      goto LABEL_14;
    }

    dsid = [(SASProximityAnisetteRequestAction *)self sim];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_11;
    v23[3] = &unk_278846520;
    v23[4] = self;
    v6 = &v24;
    v24 = v3;
    [(SASProximityAnisetteRequestAction *)self syncAnisetteWithSIMData:dsid completion:v23];
  }

  else
  {
    if (request == 2)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_12;
      v21[3] = &unk_278846520;
      v21[4] = self;
      v6 = &v22;
      v22 = v3;
      [(SASProximityAnisetteRequestAction *)self eraseAnisetteWithCompletion:v21];
      goto LABEL_13;
    }

    if (request == 3)
    {
      shouldProvision = [(SASProximityAnisetteRequestAction *)self shouldProvision];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_13;
      v19[3] = &unk_278846548;
      v19[4] = self;
      v6 = &v20;
      v20 = v3;
      [(SASProximityAnisetteRequestAction *)self fetchAnisetteDataAndProvisionIfNecessary:shouldProvision withCompletion:v19];
      goto LABEL_13;
    }

    if (request != 4)
    {
      goto LABEL_14;
    }

    dsid = [(SASProximityAnisetteRequestAction *)self dsid];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_15;
    v17[3] = &unk_278846548;
    v17[4] = self;
    v6 = &v18;
    v18 = v3;
    [(SASProximityAnisetteRequestAction *)self legacyAnisetteDataForDSID:dsid withCompletion:v17];
  }

LABEL_13:
LABEL_14:
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SASProximityAnisetteRequestAction success](self, "success")}];
  [v8 setObject:v9 forKeyedSubscript:@"success"];

  anisetteData = [(SASProximityAnisetteRequestAction *)self anisetteData];

  if (anisetteData)
  {
    anisetteData2 = [(SASProximityAnisetteRequestAction *)self anisetteData];
    [v8 setObject:anisetteData2 forKeyedSubscript:@"anisette"];
  }

  v16 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v16];
  v13 = v16;
  if (!v12)
  {
    v14 = +[SASLogging facility];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_22E4D7000, v14, OS_LOG_TYPE_DEFAULT, "Failed to archive response: %@", buf, 0xCu);
    }
  }

  return v12;
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:0];
  [*(a1 + 32) setSuccess:a2];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Provisioning anisette failed: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:0];
  [*(a1 + 32) setSuccess:a2];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Syncing anisette with SIM data failed: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:0];
  [*(a1 + 32) setSuccess:a2];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Erase anisette failed: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:a2];
  [*(a1 + 32) setSuccess:v5 != 0];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Fetch anisette data and provision failed: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __52__SASProximityAnisetteRequestAction_responsePayload__block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setAnisetteData:a2];
  [*(a1 + 32) setSuccess:v5 != 0];
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Legacy anisette data for DSID failed: %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setResponseFromData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  v16 = 0;
  v11 = [v4 unarchivedObjectOfClasses:v10 fromData:dataCopy error:&v16];

  v12 = v16;
  if (!v11)
  {
    v13 = +[SASLogging facility];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_22E4D7000, v13, OS_LOG_TYPE_DEFAULT, "Failed to unarchive information: %@", buf, 0xCu);
    }
  }

  v14 = [v11 objectForKeyedSubscript:@"anisette"];
  [(SASProximityAnisetteRequestAction *)self setAnisetteData:v14];

  v15 = [v11 objectForKeyedSubscript:@"success"];
  -[SASProximityAnisetteRequestAction setSuccess:](self, "setSuccess:", [v15 BOOLValue]);
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CF0168];
  completionCopy = completion;
  v5 = objc_alloc_init(v3);
  [v5 provisionWithCompletion:completionCopy];
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v5 = MEMORY[0x277CF0168];
  completionCopy = completion;
  dataCopy = data;
  v8 = objc_alloc_init(v5);
  [v8 syncWithSIMData:dataCopy completion:completionCopy];
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CF0168];
  completionCopy = completion;
  v5 = objc_alloc_init(v3);
  [v5 eraseWithCompletion:completionCopy];
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  v4 = MEMORY[0x277CF0168];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  [v6 anisetteDataWithCompletion:completionCopy];
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v5 = MEMORY[0x277CF0168];
  completionCopy = completion;
  dCopy = d;
  v8 = objc_alloc_init(v5);
  [v8 legacyAnisetteDataForDSID:dCopy withCompletion:completionCopy];
}

@end