@interface ULDiagnostics
- (ULDiagnostics)initWithLabel:(id)label;
- (id)_diagnosticsInfo;
- (os_state_data_s)_stateDataForInfo:(id)info;
- (void)_registerStateHandler;
- (void)_withLock:(id)lock;
- (void)addProvider:(id)provider;
- (void)dealloc;
- (void)removeProvider:(id)provider;
@end

@implementation ULDiagnostics

- (ULDiagnostics)initWithLabel:(id)label
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = ULDiagnostics;
  v5 = [(ULDiagnostics *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(ULDiagnostics *)v5 setLabel:labelCopy];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.milod.ULDiagnostics", v7);
    [(ULDiagnostics *)v6 setQueue:v8];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(ULDiagnostics *)v6 setProviders:weakObjectsHashTable];

    [(ULDiagnostics *)v6 setProvidersLock:0];
    [(ULDiagnostics *)v6 _registerStateHandler];
  }

  return v6;
}

- (void)dealloc
{
  [(ULDiagnostics *)self stateHandle];
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = ULDiagnostics;
  [(ULDiagnostics *)&v3 dealloc];
}

- (void)addProvider:(id)provider
{
  providerCopy = provider;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__ULDiagnostics_addProvider___block_invoke;
  v6[3] = &unk_2798D4280;
  v7 = providerCopy;
  selfCopy = self;
  v5 = providerCopy;
  [(ULDiagnostics *)self _withLock:v6];
}

void __29__ULDiagnostics_addProvider___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __29__ULDiagnostics_addProvider___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Adding provider: %@", &v7, 0xCu);
  }

  v6 = [*(a1 + 40) providers];
  [v6 addObject:*(a1 + 32)];
}

- (void)removeProvider:(id)provider
{
  providerCopy = provider;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__ULDiagnostics_removeProvider___block_invoke;
  v6[3] = &unk_2798D4280;
  v7 = providerCopy;
  selfCopy = self;
  v5 = providerCopy;
  [(ULDiagnostics *)self _withLock:v6];
}

void __32__ULDiagnostics_removeProvider___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __29__ULDiagnostics_addProvider___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Removing provider: %@", &v7, 0xCu);
  }

  v6 = [*(a1 + 40) providers];
  [v6 removeObject:*(a1 + 32)];
}

- (void)_registerStateHandler
{
  objc_initWeak(&location, self);
  queue = [(ULDiagnostics *)self queue];
  v4 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v5, &location);
  [(ULDiagnostics *)self setStateHandle:os_state_add_handler(), v4, 3221225472, __38__ULDiagnostics__registerStateHandler__block_invoke, &unk_2798D5680];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __38__ULDiagnostics__registerStateHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained queue];
  dispatch_assert_queue_V2(v4);

  if (*(a2 + 16) == 3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __29__ULDiagnostics_addProvider___block_invoke_cold_1();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [WeakRetained label];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Processing os_state handler for label: %@", &v13, 0xCu);
    }

    v8 = [WeakRetained _diagnosticsInfo];
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULDiagnostics__registerStateHandler__block_invoke_cold_2();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [WeakRetained label];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "label: %@, os_state: %@", &v13, 0x16u);
    }
  }

  return 0;
}

- (id)_diagnosticsInfo
{
  v27 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__32;
  v24 = __Block_byref_object_dispose__32;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33__ULDiagnostics__diagnosticsInfo__block_invoke;
  v19[3] = &unk_2798D4BB0;
  v19[4] = self;
  v19[5] = &v20;
  [(ULDiagnostics *)self _withLock:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v21[5];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v5)
  {
    v6 = *v16;
    v7 = MEMORY[0x277CBEC10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        diagnosticInfo = [*(*(&v15 + 1) + 8 * i) diagnosticInfo];
        v10 = diagnosticInfo;
        if (diagnosticInfo)
        {
          v11 = diagnosticInfo;
        }

        else
        {
          v11 = v7;
        }

        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        [dictionary setObject:v11 forKeyedSubscript:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v20, 8);

  return dictionary;
}

void __33__ULDiagnostics__diagnosticsInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) providers];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (os_state_data_s)_stateDataForInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:info format:200 options:0 error:&v13];
  v5 = v13;
  v6 = [v4 length];
  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULDiagnostics__registerStateHandler__block_invoke_cold_2();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "Error in NSPropertyListSerialization: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = v6;
    v10 = v6;
    v8 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
    v8->var0 = 1;
    v8->var1.var1 = v9;
    label = [(ULDiagnostics *)self label];
    [label UTF8String];
    __strlcpy_chk();

    memcpy(v8->var4, [v4 bytes], v10);
  }

  return v8;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_providersLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_providersLock);
}

@end