@interface SRUIFTrialManager
- (SRUIFTrialManager)initWithNamespace:(id)namespace projectId:(int)id;
- (id)_levelForFactor:(id)factor;
- (void)BOOLValueForFactor:(id)factor defaultValueIfNoFactorsFilePresent:(BOOL)present withCompletionHandler:(id)handler;
- (void)BOOLValueForFactor:(id)factor withCompletionHandler:(id)handler;
- (void)_initializeTrialClient;
- (void)_refreshTreatments;
@end

@implementation SRUIFTrialManager

- (void)_initializeTrialClient
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SRUIFTrialManager__initializeTrialClient__block_invoke;
  block[3] = &unk_279C61898;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__SRUIFTrialManager__initializeTrialClient__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D73660] clientWithIdentifier:*(*(a1 + 32) + 8)];
    v4 = WeakRetained[2];
    WeakRetained[2] = v3;

    if (!WeakRetained[2])
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[SRUIFTrialManager _initializeTrialClient]_block_invoke";
        _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #trial client initializations returned nil.", &v6, 0xCu);
      }
    }
  }
}

- (void)_refreshTreatments
{
  trialClient = self->_trialClient;
  if (trialClient)
  {
    [(TRIClient *)trialClient refresh];
  }
}

- (SRUIFTrialManager)initWithNamespace:(id)namespace projectId:(int)id
{
  namespaceCopy = namespace;
  v12.receiver = self;
  v12.super_class = SRUIFTrialManager;
  v8 = [(SRUIFTrialManager *)&v12 init];
  if (v8)
  {
    v9 = dispatch_queue_create("SRUIFTrialManager", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_trialNamespaceName, namespace);
    v8->_trialProjectId = id;
    [(SRUIFTrialManager *)v8 _initializeTrialClient];
  }

  return v8;
}

- (id)_levelForFactor:(id)factor
{
  factorCopy = factor;
  [(SRUIFTrialManager *)self _refreshTreatments];
  trialClient = self->_trialClient;
  if (trialClient)
  {
    v6 = [(TRIClient *)trialClient levelForFactor:factorCopy withNamespaceName:self->_trialNamespaceName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)BOOLValueForFactor:(id)factor withCompletionHandler:(id)handler
{
  factorCopy = factor;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke;
  v11[3] = &unk_279C618C0;
  objc_copyWeak(&v14, &location);
  v12 = factorCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = factorCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _levelForFactor:*(a1 + 32)];
    v5 = *MEMORY[0x277CEF098];
    if (v4)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = v3[3];
        v8 = v5;
        v9 = [v4 BOOLeanValue];
        v10 = "FALSE";
        *v12 = 136315906;
        *&v12[4] = "[SRUIFTrialManager BOOLValueForFactor:withCompletionHandler:]_block_invoke";
        *&v12[14] = v6;
        *&v12[12] = 2112;
        if (v9)
        {
          v10 = "TRUE";
        }

        *&v12[22] = 2112;
        v13 = v7;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #trial Trial factor %@ found with namespace %@, value: %s", v12, 0x2Au);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [v4 BOOLeanValue]);
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke_cold_1((a1 + 32), v3, v5);
      }

      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.siri.Trial" code:0 userInfo:&unk_287A18CF0];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)BOOLValueForFactor:(id)factor defaultValueIfNoFactorsFilePresent:(BOOL)present withCompletionHandler:(id)handler
{
  factorCopy = factor;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SRUIFTrialManager_BOOLValueForFactor_defaultValueIfNoFactorsFilePresent_withCompletionHandler___block_invoke;
  block[3] = &unk_279C629A8;
  objc_copyWeak(&v16, &location);
  v14 = factorCopy;
  v15 = handlerCopy;
  presentCopy = present;
  v11 = handlerCopy;
  v12 = factorCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __97__SRUIFTrialManager_BOOLValueForFactor_defaultValueIfNoFactorsFilePresent_withCompletionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _levelForFactor:*(a1 + 32)];
    v5 = *MEMORY[0x277CEF098];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = v3[3];
        v9 = v5;
        v10 = [v4 BOOLeanValue];
        v11 = "FALSE";
        *v14 = 136315906;
        *&v14[4] = "[SRUIFTrialManager BOOLValueForFactor:defaultValueIfNoFactorsFilePresent:withCompletionHandler:]_block_invoke";
        *&v14[14] = v7;
        *&v14[12] = 2112;
        if (v10)
        {
          v11 = "TRUE";
        }

        *&v14[22] = 2112;
        v15 = v8;
        v16 = 2080;
        v17 = v11;
        _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #trial Trial factor %@ found with namespace %@, value: %s", v14, 0x2Au);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), [v4 BOOLeanValue]);
    }

    else
    {
      if (v6)
      {
        v12 = *(a1 + 32);
        v13 = v3[3];
        *v14 = 136315650;
        *&v14[4] = "[SRUIFTrialManager BOOLValueForFactor:defaultValueIfNoFactorsFilePresent:withCompletionHandler:]_block_invoke";
        *&v14[12] = 2112;
        *&v14[14] = v12;
        *&v14[22] = 2112;
        v15 = v13;
        _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #trial Failed to read Trial factor %@ with namespace %@ and default_factors.pb file doesn't exist.", v14, 0x20u);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 56));
    }
  }
}

void __62__SRUIFTrialManager_BOOLValueForFactor_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = 136315650;
  v6 = "[SRUIFTrialManager BOOLValueForFactor:withCompletionHandler:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s #trial Failed to read Trial factor %@ with namespace %@ and default_factors.pb file doesn't exist.", &v5, 0x20u);
}

@end