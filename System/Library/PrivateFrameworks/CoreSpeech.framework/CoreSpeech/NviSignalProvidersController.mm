@interface NviSignalProvidersController
+ (void)initialize;
- (BOOL)_setupSignalProviders:(id)providers;
- (NviSignalProvidersController)initWithAssetsProvider:(id)provider dataSourceMap:(id)map signalProviderToDataSourceMap:(id)sourceMap;
- (void)_iterateSignalMask:(unint64_t)mask withHandler:(id)handler;
- (void)_startDataSourcesWithContext:(id)context;
- (void)_startSignalProvidersWithContext:(id)context;
- (void)_stopCurrentlyRunningSignalProviders;
- (void)_stopDataSources;
- (void)dealloc;
- (void)registerSignalProviderDelegate:(id)delegate forSignalTypes:(unint64_t)types;
- (void)registerSignalProviderDelegateForAllSignalTypes:(id)types;
- (void)reset;
- (void)startWithNviContext:(id)context;
- (void)stop;
- (void)unregisterSignalProviderDelegate:(id)delegate forSignalType:(unint64_t)type;
- (void)unregisterSignalProviderDelegateForAllSignalTypes:(id)types;
@end

@implementation NviSignalProvidersController

- (void)unregisterSignalProviderDelegateForAllSignalTypes:(id)types
{
  v16 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sigProvidersMap;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 removeDelegate:typesCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)registerSignalProviderDelegateForAllSignalTypes:(id)types
{
  v16 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_sigProvidersMap;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 addDelegate:typesCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)unregisterSignalProviderDelegate:(id)delegate forSignalType:(unint64_t)type
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__NviSignalProvidersController_unregisterSignalProviderDelegate_forSignalType___block_invoke;
  v8[3] = &unk_2784C4150;
  v9 = delegateCopy;
  v7 = delegateCopy;
  [(NviSignalProvidersController *)self _iterateSignalMask:type withHandler:v8];
}

- (void)registerSignalProviderDelegate:(id)delegate forSignalTypes:(unint64_t)types
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__NviSignalProvidersController_registerSignalProviderDelegate_forSignalTypes___block_invoke;
  v8[3] = &unk_2784C4150;
  v9 = delegateCopy;
  v7 = delegateCopy;
  [(NviSignalProvidersController *)self _iterateSignalMask:types withHandler:v8];
}

- (void)_iterateSignalMask:(unint64_t)mask withHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = 0;
  *&v8 = 136315394;
  v16 = v8;
  do
  {
    v9 = (1 << v7);
    sigProvidersMap = self->_sigProvidersMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9 & mask, v16}];
    v12 = [(NSMapTable *)sigProvidersMap objectForKeyedSubscript:v11];

    if (v12)
    {
      handlerCopy[2](handlerCopy, v12);
    }

    else
    {
      v13 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        mask = [NviUtils strRepForNviSignalType:v9 & mask];
        *buf = v16;
        v18 = "[NviSignalProvidersController _iterateSignalMask:withHandler:]";
        v19 = 2112;
        v20 = mask;
        _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s WARN: Cannot find SignalProvider for %@. Skipping", buf, 0x16u);
      }
    }

    ++v7;
  }

  while (v7 != 5);
}

- (void)stop
{
  [(NviSignalProvidersController *)self _stopDataSources];

  [(NviSignalProvidersController *)self _stopCurrentlyRunningSignalProviders];
}

- (void)_stopCurrentlyRunningSignalProviders
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_currActiveSigProvTypes;
  v4 = [(NSHashTable *)obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:v8];
        dispatch_group_enter(v3);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __68__NviSignalProvidersController__stopCurrentlyRunningSignalProviders__block_invoke;
        v19[3] = &unk_2784C4100;
        v19[4] = v8;
        v20 = v3;
        [v9 stopWithDidStopHandler:v19];
      }

      v5 = [(NSHashTable *)obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  v10 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v12 = dispatch_group_wait(v3, v10);
  date2 = [MEMORY[0x277CBEAA8] date];
  v14 = NviLogContextFacility;
  v15 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v15)
    {
      *buf = 136315138;
      v26 = "[NviSignalProvidersController _stopCurrentlyRunningSignalProviders]";
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s WARN: SignalProviders timedout didStop. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v15)
  {
    v16 = v14;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v26 = "[NviSignalProvidersController _stopCurrentlyRunningSignalProviders]";
    v27 = 2048;
    v28 = v17 * 1000.0;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s >>> All SignalProviders didStop within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }
}

void __68__NviSignalProvidersController__stopCurrentlyRunningSignalProviders__block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v7 unsignedIntegerValue]);
      v10 = 136315650;
      v11 = "[NviSignalProvidersController _stopCurrentlyRunningSignalProviders]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to stop %@: Err=%@", &v10, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_stopDataSources
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_currActiveDataSourceTypes;
  v4 = [(NSHashTable *)obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_dataSrcMap objectForKeyedSubscript:v8];
        dispatch_group_enter(v3);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __48__NviSignalProvidersController__stopDataSources__block_invoke;
        v19[3] = &unk_2784C4100;
        v19[4] = v8;
        v20 = v3;
        [v9 stopWithDidStopHandler:v19];
      }

      v5 = [(NSHashTable *)obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  v10 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v12 = dispatch_group_wait(v3, v10);
  date2 = [MEMORY[0x277CBEAA8] date];
  v14 = NviLogContextFacility;
  v15 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v15)
    {
      *buf = 136315138;
      v26 = "[NviSignalProvidersController _stopDataSources]";
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s WARN: DataSources timedout stopping. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v15)
  {
    v16 = v14;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v26 = "[NviSignalProvidersController _stopDataSources]";
    v27 = 2048;
    v28 = v17 * 1000.0;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s >>> All DataSources Stopped within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }
}

void __48__NviSignalProvidersController__stopDataSources__block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = +[NviUtils strRepForNviDataSourceType:](NviUtils, "strRepForNviDataSourceType:", [v7 unsignedIntegerValue]);
      v10 = 136315650;
      v11 = "[NviSignalProvidersController _stopDataSources]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to start %@. Err=%@", &v10, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)reset
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sigProvidersMap;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 reset];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)startWithNviContext:(id)context
{
  contextCopy = context;
  [(NviSignalProvidersController *)self _startSignalProvidersWithContext:contextCopy];
  [(NviSignalProvidersController *)self _startDataSourcesWithContext:contextCopy];
}

- (void)_startSignalProvidersWithContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = [(NviAssetsProvider *)self->_assetsProvider signalProvidersMapForContext:?];
  v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
  currActiveSigProvTypes = self->_currActiveSigProvTypes;
  self->_currActiveSigProvTypes = v5;

  v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
  currActiveDataSourceTypes = self->_currActiveDataSourceTypes;
  self->_currActiveDataSourceTypes = v7;

  v9 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v34;
    *&v12 = 136315394;
    v28 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:v16, v28];
        v18 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          v38 = "[NviSignalProvidersController _startSignalProvidersWithContext:]";
          v39 = 2112;
          v40 = *&v17;
          _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_DEFAULT, "%s Starting signal provider: %@", buf, 0x16u);
        }

        dispatch_group_enter(v9);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __65__NviSignalProvidersController__startSignalProvidersWithContext___block_invoke;
        v30[3] = &unk_2784C4128;
        v30[4] = v16;
        v30[5] = self;
        v19 = v10;
        v31 = v19;
        v32 = v9;
        [v17 startWithNviContext:contextCopy didStartHandler:v30];
      }

      v13 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v13);
  }

  v20 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v22 = dispatch_group_wait(v9, v20);
  date2 = [MEMORY[0x277CBEAA8] date];
  v24 = NviLogContextFacility;
  v25 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v25)
    {
      *buf = 136315138;
      v38 = "[NviSignalProvidersController _startSignalProvidersWithContext:]";
      _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_DEFAULT, "%s WARN: SignalProviders timedout didStart. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v25)
  {
    v26 = v24;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v38 = "[NviSignalProvidersController _startSignalProvidersWithContext:]";
    v39 = 2048;
    v40 = v27 * 1000.0;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s >>> All SignalProviders didStart within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }
}

void __65__NviSignalProvidersController__startSignalProvidersWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v9 unsignedIntegerValue]);
      v12 = 136315650;
      v13 = "[NviSignalProvidersController _startSignalProvidersWithContext:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to start %@: Err=%@", &v12, 0x20u);
    }
  }

  else
  {
    [*(*(a1 + 40) + 32) addObject:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 40);
    v7 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 32)];
    [v6 addObject:v7];
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)_startDataSourcesWithContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_currActiveDataSourceTypes;
  v5 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 136315394;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_dataSrcMap objectForKeyedSubscript:v10, v21];
        v12 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v21;
          v31 = "[NviSignalProvidersController _startDataSourcesWithContext:]";
          v32 = 2112;
          v33 = *&v11;
          _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Starting datasrc: %@", buf, 0x16u);
        }

        dispatch_group_enter(v4);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __61__NviSignalProvidersController__startDataSourcesWithContext___block_invoke;
        v24[3] = &unk_2784C4100;
        v24[4] = v10;
        v25 = v4;
        [v11 startWithNviContext:contextCopy didStartHandler:v24];
      }

      v7 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v13 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v15 = dispatch_group_wait(v4, v13);
  date2 = [MEMORY[0x277CBEAA8] date];
  v17 = NviLogContextFacility;
  v18 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v18)
    {
      *buf = 136315138;
      v31 = "[NviSignalProvidersController _startDataSourcesWithContext:]";
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s WARN: DataSources Start timedout. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = v17;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v31 = "[NviSignalProvidersController _startDataSourcesWithContext:]";
    v32 = 2048;
    v33 = v20 * 1000.0;
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s >>> All DataSources Started within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }
}

void __61__NviSignalProvidersController__startDataSourcesWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = +[NviUtils strRepForNviDataSourceType:](NviUtils, "strRepForNviDataSourceType:", [v7 unsignedIntegerValue]);
      v10 = 136315650;
      v11 = "[NviSignalProvidersController _startDataSourcesWithContext:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to start %@. Err=%@", &v10, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_setupSignalProviders:(id)providers
{
  v40 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v5 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  sigProvidersMap = self->_sigProvidersMap;
  self->_sigProvidersMap = v5;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = providersCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        dataSrcMap = self->_dataSrcMap;
        v14 = [v7 objectForKeyedSubscript:v12];
        v15 = [(NSDictionary *)dataSrcMap objectForKeyedSubscript:v14];

        if (!v15)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v19 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v12 unsignedIntegerValue]);
          [currentHandler handleFailureInMethod:a2 object:self file:@"NviSignalProvidersController.m" lineNumber:72 description:{@"No DataSource found for SignalType: %@", v19}];
        }

        if ([v12 unsignedIntegerValue] != 4)
        {
          v23 = NviLogContextFacility;
          if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
            v25 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v12 unsignedIntegerValue]);
            *buf = 136315394;
            v36 = "[NviSignalProvidersController _setupSignalProviders:]";
            v37 = 2112;
            v38 = v25;
            _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_DEFAULT, "%s %@ not supported yet.", buf, 0x16u);
          }

LABEL_19:
          v26 = NviLogContextFacility;
          if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            v28 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v12 unsignedIntegerValue]);
            *buf = 136315394;
            v36 = "[NviSignalProvidersController _setupSignalProviders:]";
            v37 = 2112;
            v38 = v28;
            _os_log_impl(&dword_222E4D000, v27, OS_LOG_TYPE_DEFAULT, "%s Failed to create: %@", buf, 0x16u);
          }

          v22 = 0;
          goto LABEL_22;
        }

        v16 = [[NviDirectionalitySignalProvider alloc] initWithDataSource:v15 assetsProvider:self->_assetsProvider];
        v17 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v36 = "[NviSignalProvidersController _setupSignalProviders:]";
          v37 = 2048;
          v38 = v16;
          _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s sp=%p", buf, 0x16u);
        }

        if (!v16)
        {
          goto LABEL_19;
        }

        [(NSMapTable *)self->_sigProvidersMap setObject:v16 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v20 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_sigProvidersMap;
    *buf = 136315394;
    v36 = "[NviSignalProvidersController _setupSignalProviders:]";
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEFAULT, "%s SigPrvdrs: %@", buf, 0x16u);
  }

  v22 = 1;
LABEL_22:

  return v22;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[NviSignalProvidersController dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s %p dealloced", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = NviSignalProvidersController;
  [(NviSignalProvidersController *)&v4 dealloc];
}

- (NviSignalProvidersController)initWithAssetsProvider:(id)provider dataSourceMap:(id)map signalProviderToDataSourceMap:(id)sourceMap
{
  v22 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  mapCopy = map;
  sourceMapCopy = sourceMap;
  v17.receiver = self;
  v17.super_class = NviSignalProvidersController;
  v12 = [(NviSignalProvidersController *)&v17 init];
  p_isa = &v12->super.isa;
  if (v12 && (objc_storeStrong(&v12->_assetsProvider, provider), objc_storeStrong(p_isa + 2, map), ![p_isa _setupSignalProviders:sourceMapCopy]))
  {
    v15 = 0;
  }

  else
  {
    v14 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[NviSignalProvidersController initWithAssetsProvider:dataSourceMap:signalProviderToDataSourceMap:]";
      v20 = 2048;
      v21 = p_isa;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s %p created", buf, 0x16u);
    }

    v15 = p_isa;
  }

  return v15;
}

+ (void)initialize
{
  if (objc_opt_class() == self && InitNviLogging_once != -1)
  {

    dispatch_once(&InitNviLogging_once, &__block_literal_global_17108);
  }
}

@end