@interface UAFAssetUtilities
- (BOOL)_networkIsExpensiveForPath:(id)path;
- (BOOL)assistantEnabled;
- (BOOL)hasSufficientDiskSpaceForClient:(unint64_t)client;
- (BOOL)hasSufficientDiskSpaceForDownload;
- (BOOL)understandingOnDeviceAssetsAvailable;
- (NSDictionary)assistantUODStatus;
- (NSString)siriLanguage;
- (UAFAssetStatus)assetStatus;
- (UAFAssetUtilities)init;
- (UAFAssetUtilitiesDelegate)delegate;
- (UAFRetryState)retryState;
- (id)_createConnection;
- (id)currentAssetStatus;
- (id)getAssistantLanguageIfAvailableSync;
- (id)getDiskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client;
- (unint64_t)_checkFreeSpaceNeededForLanguage:(id)language forClient:(unint64_t)client;
- (void)_assistantLanguageUpdate;
- (void)_assistantPreferencesUpdate;
- (void)_downloadSiriAssetsOverCellular:(BOOL)cellular;
- (void)_downloadSiriAssetsRetry;
- (void)_downloadSiriAssetsWithDelay:(double)delay;
- (void)_handleNetworkPathUpdate:(id)update;
- (void)_stopObservers;
- (void)_triggerDelegateAssetStatusUpdated;
- (void)_updateDelegateForUODAvailable:(BOOL)available uodStatus:(id)status;
- (void)assetsAreAvailableForLanguage:(id)language completion:(id)completion;
- (void)dealloc;
- (void)downloadSiriAssets;
- (void)downloadSiriAssetsIfNeeded;
- (void)downloadSiriAssetsOverCellular;
- (void)refreshUAFAssetStatusAsync;
- (void)refreshUnderstandingOnDeviceAssetsAvailableAsync;
- (void)setRetryState:(id)state;
- (void)startObserversWithOptions:(unint64_t)options;
@end

@implementation UAFAssetUtilities

- (void)refreshUAFAssetStatusAsync
{
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(assistantQueue, block);
}

- (void)refreshUnderstandingOnDeviceAssetsAvailableAsync
{
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UAFAssetUtilities_refreshUnderstandingOnDeviceAssetsAvailableAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_group_async(assistantGroup, assistantQueue, block);
}

void __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createConnection];
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_2;
  v4[3] = &unk_1E7FFD0C0;
  objc_copyWeak(&v6, &location);
  v3 = v2;
  v5 = v3;
  [v3 checkAssetStatus:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_createConnection
{
  initWithUserService = [[UAFXPCConnection alloc] initWithUserService];

  return initWithUserService;
}

void __69__UAFAssetUtilities_refreshUnderstandingOnDeviceAssetsAvailableAsync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getAssistantLanguageIfAvailableSync];
  [*(a1 + 32) assetsAreAvailableForLanguage:v2 completion:0];
}

- (id)getAssistantLanguageIfAvailableSync
{
  if (+[UAFCommonUtilities isAssistantEnabled])
  {
    v2 = +[UAFCommonUtilities currentAssistantLanguage];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[UAFAssetUtilities refreshUAFAssetStatusAsync]_block_invoke";
        v19 = 2112;
        v20 = v6;
        _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s #settings checkAssetStatus error: %@", buf, 0x16u);
      }
    }

    else if (v5)
    {
      v10 = [WeakRetained statusQueue];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_3;
      v14 = &unk_1E7FFD098;
      v15 = v8;
      v16 = v5;
      dispatch_async(v10, &v11);
    }

    [*(a1 + 32) invalidate];
  }
}

void __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = nw_path_evaluator_copy_path();
  if (![*(a1 + 40) state] && (objc_msgSend(*(a1 + 32), "_networkIsExpensiveForPath:", v2) & 1) == 0)
  {
    v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[UAFAssetUtilities refreshUAFAssetStatusAsync]_block_invoke_3";
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing unknown server state to not started until WiFi gets enabled", &v8, 0xCu);
    }

    [*(a1 + 40) setState:2];
  }

  [*(a1 + 32) setAssetStatus:*(a1 + 40)];
  v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [*(a1 + 40) state]);
    v6 = [*(a1 + 40) value];
    v7 = [v6 unsignedIntegerValue];
    v8 = 136315650;
    v9 = "[UAFAssetUtilities refreshUAFAssetStatusAsync]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Refresh server side asset state %@ with value %d", &v8, 0x1Cu);
  }

  [*(a1 + 32) _triggerDelegateAssetStatusUpdated];
}

- (void)_triggerDelegateAssetStatusUpdated
{
  statusQueue = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  delegateQueue = [(UAFAssetUtilities *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UAFAssetUtilities__triggerDelegateAssetStatusUpdated__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __55__UAFAssetUtilities__triggerDelegateAssetStatusUpdated__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[UAFAssetUtilities _triggerDelegateAssetStatusUpdated]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s #settings asset status update requested", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[UAFAssetUtilities _triggerDelegateAssetStatusUpdated]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings asset status delegate", &v7, 0xCu);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 handleAssetStatusUpdated];
  }
}

- (id)currentAssetStatus
{
  v41 = *MEMORY[0x1E69E9840];
  assetStatus = [(UAFAssetUtilities *)self assetStatus];
  v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [assetStatus state]);
    value = [assetStatus value];
    *buf = 136315650;
    v32 = "[UAFAssetUtilities currentAssetStatus]";
    v33 = 2112;
    v34 = v5;
    v35 = 1024;
    unsignedIntegerValue = [value unsignedIntegerValue];
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Current asset state %@ with value %d", buf, 0x1Cu);
  }

  v7 = +[UAFCommonUtilities isAssistantEnabled];
  v8 = +[UAFCommonUtilities deviceSupportAndUseHybridASR];
  v9 = +[UAFCommonUtilities deviceSupportFullUOD];
  if (![assetStatus state] || objc_msgSend(assetStatus, "state") == 2 || objc_msgSend(assetStatus, "state") == 4)
  {
    v10 = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = [assetStatus state] != 6;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if ([(UAFAssetUtilities *)self autoRetryEnabled]&& self->_networkSatisfied && !self->_networkExpensive && !v10 && (v8 || v9))
  {
    objc_initWeak(buf, self);
    assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__UAFAssetUtilities_currentAssetStatus__block_invoke;
    block[3] = &unk_1E7FFD110;
    objc_copyWeak(&v30, buf);
    dispatch_async(assistantQueue, block);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

LABEL_13:
  showHybridAsUnsupported = [(UAFAssetUtilities *)self showHybridAsUnsupported];
  v13 = v9 || v8;
  if (showHybridAsUnsupported)
  {
    v13 = v9;
  }

  if ((v7 & v13 & 1) == 0)
  {
    [assetStatus setState:1];
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [assetStatus state]);
      *buf = 136316162;
      v32 = "[UAFAssetUtilities currentAssetStatus]";
      v33 = 2112;
      v34 = v16;
      v35 = 1024;
      unsignedIntegerValue = v7;
      v37 = 1024;
      v38 = v8;
      v39 = 1024;
      v40 = v9;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing display state to %@ (enabled:%d, hybridUOD:%d, fullUOD:%d)", buf, 0x28u);
    }

    goto LABEL_22;
  }

  if (v9 && [(UAFAssetUtilities *)self understandingOnDeviceAssetsAvailable])
  {
    [assetStatus setState:5];
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [assetStatus state]);
      *buf = 136315394;
      v32 = "[UAFAssetUtilities currentAssetStatus]";
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing display state to %@ due to UOD available", buf, 0x16u);
    }

LABEL_22:
  }

  v17 = +[UAFAssetStatus mockAssetStatus];
  v18 = v17;
  if (v17)
  {
    [assetStatus setState:{objc_msgSend(v17, "state")}];
    value2 = [v18 value];
    [assetStatus setValue:value2];

    v20 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [assetStatus state]);
      value3 = [assetStatus value];
      unsignedIntegerValue2 = [value3 unsignedIntegerValue];
      *buf = 136315650;
      v32 = "[UAFAssetUtilities currentAssetStatus]";
      v33 = 2112;
      v34 = v21;
      v35 = 1024;
      unsignedIntegerValue = unsignedIntegerValue2;
      _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s #settings Using mock asset state %@ with value %d", buf, 0x1Cu);
    }
  }

  v24 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [assetStatus state]);
    value4 = [assetStatus value];
    unsignedIntegerValue3 = [value4 unsignedIntegerValue];
    *buf = 136315650;
    v32 = "[UAFAssetUtilities currentAssetStatus]";
    v33 = 2112;
    v34 = v25;
    v35 = 1024;
    unsignedIntegerValue = unsignedIntegerValue3;
    _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s #settings Returning state %@ with value %d", buf, 0x1Cu);
  }

  return assetStatus;
}

- (UAFAssetStatus)assetStatus
{
  v18 = *MEMORY[0x1E69E9840];
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v6 = dispatch_group_wait(assistantGroup, v5);

  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities assetStatus]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Failed to check UAF asset status due to timeout", &buf, 0xCu);
    }
  }

  statusQueue = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_not_V2(statusQueue);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  statusQueue2 = [(UAFAssetUtilities *)self statusQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__UAFAssetUtilities_assetStatus__block_invoke;
  v12[3] = &unk_1E7FFD0E8;
  v12[4] = self;
  v12[5] = &buf;
  dispatch_sync(statusQueue2, v12);

  v10 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v10;
}

- (UAFAssetUtilitiesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __32__UAFAssetUtilities_assetStatus__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(UAFAssetStatus);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (BOOL)understandingOnDeviceAssetsAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_understandingOnDeviceAssetsAvailable)
  {
    assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
    [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    v6 = dispatch_group_wait(assistantGroup, v5);

    if (v6)
    {
      v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v16) = 136315138;
        *(&v16 + 4) = "[UAFAssetUtilities understandingOnDeviceAssetsAvailable]";
        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assistant UOD availability due to timeout", &v16, 0xCu);
      }
    }
  }

  statusQueue = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_not_V2(statusQueue);

  *&v16 = 0;
  *(&v16 + 1) = &v16;
  v17 = 0x2020000000;
  v18 = 0;
  statusQueue2 = [(UAFAssetUtilities *)self statusQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__UAFAssetUtilities_understandingOnDeviceAssetsAvailable__block_invoke;
  v13[3] = &unk_1E7FFD070;
  v13[4] = self;
  v13[5] = &v16;
  dispatch_sync(statusQueue2, v13);

  if (*(*(&v16 + 1) + 24))
  {
    v10 = 1;
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[UAFAssetUtilities understandingOnDeviceAssetsAvailable]";
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s #settings NO returned for UOD", buf, 0xCu);
    }

    v10 = *(*(&v16 + 1) + 24);
  }

  _Block_object_dispose(&v16, 8);
  return v10 & 1;
}

- (NSDictionary)assistantUODStatus
{
  v18 = *MEMORY[0x1E69E9840];
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v6 = dispatch_group_wait(assistantGroup, v5);

  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities assistantUODStatus]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assistant UOD status due to timeout", &buf, 0xCu);
    }
  }

  statusQueue = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_not_V2(statusQueue);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  statusQueue2 = [(UAFAssetUtilities *)self statusQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__UAFAssetUtilities_assistantUODStatus__block_invoke;
  v12[3] = &unk_1E7FFD070;
  v12[4] = self;
  v12[5] = &buf;
  dispatch_sync(statusQueue2, v12);

  v10 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v10;
}

- (UAFAssetUtilities)init
{
  v19.receiver = self;
  v19.super_class = UAFAssetUtilities;
  v2 = [(UAFAssetUtilities *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.UAF.AssetUtilities.DownloadQueue", v3);
    v5 = *(v2 + 14);
    *(v2 + 14) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.UAF.AssetUtilities.StatusQueue", v6);
    v8 = *(v2 + 15);
    *(v2 + 15) = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.UAF.AssetUtilities.DelegateQueue", v9);
    v11 = *(v2 + 16);
    *(v2 + 16) = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.UAF.AssetUtilities.AssistantQueue", v12);
    v14 = *(v2 + 17);
    *(v2 + 17) = v13;

    v15 = dispatch_group_create();
    v16 = *(v2 + 18);
    *(v2 + 18) = v15;

    v17 = *(v2 + 1);
    *(v2 + 1) = 0;

    *(v2 + 8) = 3;
    *(v2 + 72) = xmmword_1BCFAC470;
    *(v2 + 56) = xmmword_1BCFAC480;
    v2[29] = 1;
  }

  return v2;
}

- (void)dealloc
{
  [(UAFAssetUtilities *)self _stopObservers];
  v3.receiver = self;
  v3.super_class = UAFAssetUtilities;
  [(UAFAssetUtilities *)&v3 dealloc];
}

- (void)startObserversWithOptions:(unint64_t)options
{
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__UAFAssetUtilities_startObserversWithOptions___block_invoke;
  v7[3] = &unk_1E7FFCFA8;
  v7[4] = self;
  v7[5] = options;
  dispatch_group_async(assistantGroup, assistantQueue, v7);
}

void __47__UAFAssetUtilities_startObserversWithOptions___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s #settings Start observers", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if ((v4 & 4) == 0 && (*(a1 + 40) & 4) != 0)
  {
    v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Start preferences observer", buf, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *(a1 + 32);
    v8 = getkAFPreferencesDidChangeDarwinNotification();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _AFPreferencesDidChangeCallback, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [*(a1 + 32) _assistantPreferencesUpdate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) == 0 && (*(a1 + 40) & 2) != 0)
  {
    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s #settings Start language observer", buf, 0xCu);
    }

    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = *(a1 + 32);
    v12 = getAFLanguageCodeDidChangeDarwinNotification();
    CFNotificationCenterAddObserver(v10, v11, _AFLanguageDidChangeCallback, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [*(a1 + 32) _assistantLanguageUpdate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
  }

  if (v4 & 1) == 0 && (*(a1 + 40))
  {
    v13 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s #settings Start UOD observer", buf, 0xCu);
    }

    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    v15 = *(a1 + 32);
    v16 = getAFSiriXAssetDidChangeDarwinNotification();
    CFNotificationCenterAddObserver(v14, v15, _SiriXAssetDidChangeCallback, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [*(a1 + 32) refreshUnderstandingOnDeviceAssetsAvailableAsync];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
  }

  if ((v4 & 8) == 0 && (*(a1 + 40) & 8) != 0)
  {
    v17 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s #settings Start network observer", buf, 0xCu);
    }

    default_evaluator = nw_path_create_default_evaluator();
    v19 = *(a1 + 32);
    v20 = *(v19 + 8);
    *(v19 + 8) = default_evaluator;

    v3 = *(a1 + 32);
    if (*(v3 + 8))
    {
      v21 = nw_path_evaluator_copy_path();
      v22 = a1 + 32;
      *(*v22 + 27) = [*(a1 + 32) _networkIsSatisfiedForPath:v21];
      *(*v22 + 28) = [*(a1 + 32) _networkIsExpensiveForPath:v21];
      objc_initWeak(buf, *(a1 + 32));
      v23 = [*(a1 + 32) statusQueue];
      objc_copyWeak(&v27, buf);
      nw_path_evaluator_set_update_handler();

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);

      v3 = *(a1 + 32);
    }
  }

  v24 = *(v3 + 16);
  if ((v24 & 0x10) == 0 && (*(a1 + 40) & 0x10) != 0)
  {
    v25 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke_2";
      _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s #settings Start UAFAssetStatus observer", buf, 0xCu);
    }

    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v26, *(a1 + 32), _UAFAssetStatusDidChangeCallback, @"kUAFAssetStatusDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [*(a1 + 32) refreshUAFAssetStatusAsync];
    v3 = *(a1 + 32);
    v24 = *(v3 + 16);
  }

  *(v3 + 16) = *(a1 + 40) | v24;
}

void __47__UAFAssetUtilities_startObserversWithOptions___block_invoke_292(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleNetworkPathUpdate:v5];
  }
}

- (void)_stopObservers
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[UAFAssetUtilities _stopObservers]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Stop observers", &v13, 0xCu);
  }

  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
    pathEvaluator = self->_pathEvaluator;
    self->_pathEvaluator = 0;
  }

  observerOptions = self->_observerOptions;
  if ((observerOptions & 2) != 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = getAFLanguageCodeDidChangeDarwinNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v8, 0);

    observerOptions = self->_observerOptions;
    if ((observerOptions & 4) == 0)
    {
LABEL_7:
      if ((observerOptions & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v11 = CFNotificationCenterGetDarwinNotifyCenter();
      v12 = getAFSiriXAssetDidChangeDarwinNotification();
      CFNotificationCenterRemoveObserver(v11, self, v12, 0);

      if ((self->_observerOptions & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((observerOptions & 4) == 0)
  {
    goto LABEL_7;
  }

  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  v10 = getkAFPreferencesDidChangeDarwinNotification();
  CFNotificationCenterRemoveObserver(v9, self, v10, 0);

  observerOptions = self->_observerOptions;
  if (observerOptions)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((observerOptions & 0x10) != 0)
  {
LABEL_9:
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v6, self, @"kUAFAssetStatusDidChangeDarwinNotification", 0);
  }

LABEL_10:
  self->_observerOptions = 0;
}

- (void)assetsAreAvailableForLanguage:(id)language completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  completionCopy = completion;
  if (languageCopy)
  {
    v8 = +[UAFCommonUtilities deviceSupportFullUOD];
    v9 = +[UAFCommonUtilities deviceSupportAndUseHybridASR];
    if (v8 || v9)
    {
      v17 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      location = 0;
      p_location = &location;
      v33 = 0x2050000000;
      v18 = getAFSettingsConnectionClass_softClass;
      v34 = getAFSettingsConnectionClass_softClass;
      if (!getAFSettingsConnectionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAFSettingsConnectionClass_block_invoke;
        v40 = &unk_1E7FFD1D8;
        v41 = &location;
        __getAFSettingsConnectionClass_block_invoke(buf);
        v18 = p_location[3];
      }

      v19 = v18;
      _Block_object_dispose(&location, 8);
      v20 = objc_alloc_init(v18);
      objc_initWeak(&location, self);
      v21 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[UAFAssetUtilities assetsAreAvailableForLanguage:completion:]";
        *&buf[12] = 2114;
        *&buf[14] = languageCopy;
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s #settings UOD check for language %{public}@", buf, 0x16u);
      }

      assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
      dispatch_group_enter(assistantGroup);

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __62__UAFAssetUtilities_assetsAreAvailableForLanguage_completion___block_invoke;
      v24[3] = &unk_1E7FFCFF8;
      v23 = v20;
      v25 = v23;
      objc_copyWeak(&v29, &location);
      v28 = completionCopy;
      selfCopy = self;
      v30 = v8;
      v13 = v17;
      v27 = v13;
      [v23 getAssetStatusForLanguage:v13 completionHandler:v24];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[UAFAssetUtilities assetsAreAvailableForLanguage:completion:]";
        _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s #settings Assets not available due to no UOD support. Return NO.", buf, 0xCu);
      }

      [(UAFAssetUtilities *)self _updateDelegateForUODAvailable:0 uodStatus:0];
      v11 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v36 = @"UOD not supported";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v12];

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, v13);
      }
    }
  }

  else
  {
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[UAFAssetUtilities assetsAreAvailableForLanguage:completion:]";
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assets availability due to nil language. Return NO", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38 = @"nil language";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v13 = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v16];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

void __62__UAFAssetUtilities_assetsAreAvailableForLanguage_completion___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v6 = *(a1 + 48);
    if (*(a1 + 72) == 1)
    {
      v7 = [UAFCommonUtilities isFullUODSupportedForStatus:v3 language:v6];
    }

    else
    {
      v7 = [UAFCommonUtilities isHybridUODSupportedForStatus:v3 language:v6];
    }

    v13 = v7;
    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))(v14, v13, 0);
    }

    [WeakRetained _updateDelegateForUODAvailable:v13 uodStatus:v3];
    v15 = [*(a1 + 40) assistantGroup];
    dispatch_group_leave(v15);
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"self is nil";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v9];

    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v10);
    }

    v12 = [*(a1 + 40) assistantGroup];
    dispatch_group_leave(v12);
  }
}

- (void)_updateDelegateForUODAvailable:(BOOL)available uodStatus:(id)status
{
  statusCopy = status;
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  statusQueue = [(UAFAssetUtilities *)self statusQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke;
  block[3] = &unk_1E7FFD048;
  block[4] = self;
  v11 = statusCopy;
  availableCopy = available;
  v9 = statusCopy;
  dispatch_group_async(assistantGroup, statusQueue, block);
}

void __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAssistantUODStatus:*(a1 + 40)];
  v2 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_2;
  block[3] = &unk_1E7FFCFD0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);

  v3 = *(*(a1 + 32) + 26);
  v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 136315650;
    v11 = "[UAFAssetUtilities _updateDelegateForUODAvailable:uodStatus:]_block_invoke";
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings UOD check available:%d prev:%d", buf, 0x18u);
  }

  if (v3 != *(a1 + 48))
  {
    [*(a1 + 32) setUnderstandingOnDeviceAssetsAvailable:?];
    v6 = [*(a1 + 32) delegateQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_317;
    v7[3] = &unk_1E7FFD020;
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

void __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 siriUODStatusDidChange];
  }
}

void __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_317(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 136315394;
      v8 = "[UAFAssetUtilities _updateDelegateForUODAvailable:uodStatus:]_block_invoke";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings siriUODAvailabilityDidChange delegate available:%d", &v7, 0x12u);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 siriUODAvailabilityDidChange:*(a1 + 40)];
  }
}

void __39__UAFAssetUtilities_currentAssetStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _downloadSiriAssetsRetry];
    WeakRetained = v2;
  }
}

- (BOOL)_networkIsExpensiveForPath:(id)path
{
  if (path)
  {
    JUMPOUT(0x1BFB33690);
  }

  return 0;
}

- (void)_handleNetworkPathUpdate:(id)update
{
  v31 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  statusQueue = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_V2(statusQueue);

  networkSatisfied = self->_networkSatisfied;
  networkExpensive = self->_networkExpensive;
  self->_networkSatisfied = [(UAFAssetUtilities *)self _networkIsSatisfiedForPath:updateCopy];
  self->_networkExpensive = [(UAFAssetUtilities *)self _networkIsExpensiveForPath:updateCopy];
  v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_networkSatisfied;
    v10 = self->_networkExpensive;
    *buf = 136315650;
    v26 = "[UAFAssetUtilities _handleNetworkPathUpdate:]";
    v27 = 1024;
    v28 = v9;
    v29 = 1024;
    v30 = v10;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Primary network (satisfied:%d, expensive: %d)", buf, 0x18u);
  }

  v11 = self->_networkSatisfied;
  if (networkSatisfied != v11)
  {
    state = [(UAFAssetStatus *)self->_assetStatus state];
    if (v11)
    {
      if (state == 4)
      {
        value = [(UAFAssetStatus *)self->_assetStatus value];
        v14 = [value isEqualToNumber:&unk_1F3B73110];

        if (v14)
        {
          [(UAFAssetUtilities *)self refreshUAFAssetStatusAsync];
        }
      }
    }

    else if (state == 3)
    {
      [(UAFAssetStatus *)self->_assetStatus setState:4];
      [(UAFAssetStatus *)self->_assetStatus setValue:&unk_1F3B73110];
      v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "[UAFAssetUtilities _handleNetworkPathUpdate:]";
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing downloading state to failed", buf, 0xCu);
      }

      [(UAFAssetUtilities *)self _triggerDelegateAssetStatusUpdated];
    }

    if (networkSatisfied != self->_networkSatisfied)
    {
      goto LABEL_19;
    }
  }

  if (networkExpensive == self->_networkExpensive)
  {
    v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[UAFAssetUtilities _handleNetworkPathUpdate:]";
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s #settings Network path nothing changed", buf, 0xCu);
    }
  }

  else
  {
LABEL_19:
    if ([(UAFAssetUtilities *)self autoRetryEnabled]&& self->_networkSatisfied && !self->_networkExpensive)
    {
      objc_initWeak(buf, self);
      assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke;
      block[3] = &unk_1E7FFD110;
      objc_copyWeak(&v24, buf);
      dispatch_async(assistantQueue, block);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    delegate = [(UAFAssetUtilities *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      objc_initWeak(buf, self);
      delegateQueue = [(UAFAssetUtilities *)self delegateQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke_328;
      v21[3] = &unk_1E7FFD110;
      objc_copyWeak(&v22, buf);
      dispatch_async(delegateQueue, v21);

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }
}

void __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[UAFAssetUtilities _handleNetworkPathUpdate:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry download on network change", &v4, 0xCu);
    }

    v3 = [WeakRetained retryState];
    [v3 setCancelled:1];

    [WeakRetained setRetryState:0];
    [WeakRetained autoRetryDelayOnSettingsChanged];
    [WeakRetained _downloadSiriAssetsWithDelay:?];
  }
}

void __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke_328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 networkPathChangeSatisfied:v3[27] isExpensive:v3[28]];

    WeakRetained = v3;
  }
}

- (void)downloadSiriAssetsIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[UAFAssetUtilities downloadSiriAssetsIfNeeded]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  downloadQueue = [(UAFAssetUtilities *)self downloadQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke;
  v5[3] = &unk_1E7FFD160;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(downloadQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained getAssistantLanguageIfAvailableSync];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_2;
    v5[3] = &unk_1E7FFD138;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    [v3 assetsAreAvailableForLanguage:v4 completion:v5];
  }
}

void __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) downloadQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_3;
  v5[3] = &unk_1E7FFD020;
  v6 = a2;
  v5[4] = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v1 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[UAFAssetUtilities downloadSiriAssetsIfNeeded]_block_invoke_3";
      _os_log_impl(&dword_1BCF2C000, v1, OS_LOG_TYPE_DEFAULT, "%s #settings Skip download due to assets available already", &v3, 0xCu);
    }
  }

  else
  {
    v2 = *(a1 + 32);

    [v2 _downloadSiriAssetsOverCellular:0];
  }
}

- (void)downloadSiriAssets
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[UAFAssetUtilities downloadSiriAssets]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  downloadQueue = [(UAFAssetUtilities *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UAFAssetUtilities_downloadSiriAssets__block_invoke;
  block[3] = &unk_1E7FFD110;
  objc_copyWeak(&v7, buf);
  dispatch_group_notify(assistantGroup, downloadQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __39__UAFAssetUtilities_downloadSiriAssets__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadSiriAssetsOverCellular:0];
}

- (void)downloadSiriAssetsOverCellular
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[UAFAssetUtilities downloadSiriAssetsOverCellular]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  assistantGroup = [(UAFAssetUtilities *)self assistantGroup];
  downloadQueue = [(UAFAssetUtilities *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UAFAssetUtilities_downloadSiriAssetsOverCellular__block_invoke;
  block[3] = &unk_1E7FFD110;
  objc_copyWeak(&v7, buf);
  dispatch_group_notify(assistantGroup, downloadQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __51__UAFAssetUtilities_downloadSiriAssetsOverCellular__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadSiriAssetsOverCellular:1];
}

- (void)_downloadSiriAssetsRetry
{
  v32 = *MEMORY[0x1E69E9840];
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_V2(assistantQueue);

  if (![(UAFAssetUtilities *)self autoRetryEnabled])
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry is disabled", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (!self->_networkSatisfied || self->_networkExpensive)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry skipped due to need for inexpensive network", &buf, 0xCu);
    }

LABEL_9:

    return;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  retryState = [(UAFAssetUtilities *)self retryState];
  retryCount = [*(*(&buf + 1) + 40) retryCount];
  if (retryCount >= [(UAFAssetUtilities *)self autoRetryLimit])
  {
    v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315394;
      v24 = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
      v25 = 1024;
      v26 = retryCount;
      v7 = "%s #settings Skip retry after hitting limit %d";
      v8 = v6;
      v9 = 18;
      goto LABEL_16;
    }
  }

  else
  {
    if (![*(*(&buf + 1) + 40) pending])
    {
      [*(*(&buf + 1) + 40) setPending:1];
      autoRetryLimit = [(UAFAssetUtilities *)self autoRetryLimit];
      v11 = autoRetryLimit - retryCount;
      if (autoRetryLimit != retryCount)
      {
        v12 = 0;
        do
        {
          [(UAFAssetUtilities *)self autoRetryDelayOnFailure];
          v14 = v13;
          [(UAFAssetUtilities *)self autoRetryDelayOnFailureIncrement];
          v16 = v15;
          objc_initWeak(v23, self);
          v17 = dispatch_time(0, ((v14 + v12 * v16) * 1000000000.0));
          assistantQueue2 = [(UAFAssetUtilities *)self assistantQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __45__UAFAssetUtilities__downloadSiriAssetsRetry__block_invoke;
          block[3] = &unk_1E7FFD188;
          objc_copyWeak(&v20, v23);
          block[4] = &buf;
          v21 = v12;
          v22 = v11;
          dispatch_after(v17, assistantQueue2, block);

          objc_destroyWeak(&v20);
          objc_destroyWeak(v23);
          ++v12;
        }

        while (v11 != v12);
      }

      goto LABEL_18;
    }

    v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315138;
      v24 = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
      v7 = "%s #settings Skip retry attempt on pending execution";
      v8 = v6;
      v9 = 12;
LABEL_16:
      _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, v7, v23, v9);
    }
  }

LABEL_18:
  _Block_object_dispose(&buf, 8);
}

void __45__UAFAssetUtilities__downloadSiriAssetsRetry__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained assetStatus];
    if (![v3 autoRetryEnabled] || (objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "cancelled") & 1) != 0 || v3[27] != 1 || (v3[28] & 1) != 0 || (v5 = objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "retryCount"), v5 >= objc_msgSend(v3, "autoRetryLimit")) || objc_msgSend(v4, "state") == 5 || objc_msgSend(v4, "state") == 3)
    {
      v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v10 = 136315394;
        v11 = "[UAFAssetUtilities _downloadSiriAssetsRetry]_block_invoke";
        v12 = 1024;
        v13 = v7;
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Retry attempt %d skipped", &v10, 0x12u);
      }

      [*(*(*(a1 + 32) + 8) + 40) setPending:0];
    }

    else
    {
      [*(*(*(a1 + 32) + 8) + 40) setRetryCount:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "retryCount") + 1}];
      v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        v10 = 136315394;
        v11 = "[UAFAssetUtilities _downloadSiriAssetsRetry]_block_invoke";
        v12 = 1024;
        v13 = v9;
        _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Retry attempt %d", &v10, 0x12u);
      }

      [v3 downloadSiriAssets];
    }

    if (*(a1 + 48) + 1 == *(a1 + 52))
    {
      [*(*(*(a1 + 32) + 8) + 40) setPending:0];
    }
  }
}

- (void)_downloadSiriAssetsWithDelay:(double)delay
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[UAFAssetUtilities _downloadSiriAssetsWithDelay:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, (delay * 1000000000.0));
  downloadQueue = [(UAFAssetUtilities *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UAFAssetUtilities__downloadSiriAssetsWithDelay___block_invoke;
  block[3] = &unk_1E7FFD110;
  objc_copyWeak(&v9, buf);
  dispatch_after(v6, downloadQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __50__UAFAssetUtilities__downloadSiriAssetsWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadSiriAssetsOverCellular:0];
}

- (void)_downloadSiriAssetsOverCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v26 = *MEMORY[0x1E69E9840];
  downloadQueue = [(UAFAssetUtilities *)self downloadQueue];
  dispatch_assert_queue_V2(downloadQueue);

  getAssistantLanguageIfAvailableSync = [(UAFAssetUtilities *)self getAssistantLanguageIfAvailableSync];
  if (getAssistantLanguageIfAvailableSync)
  {
    v7 = [(UAFAssetUtilities *)self _checkFreeSpaceNeededForLanguage:getAssistantLanguageIfAvailableSync forClient:0];
    if (v7)
    {
      v8 = v7;
      statusQueue = [(UAFAssetUtilities *)self statusQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke;
      block[3] = &unk_1E7FFCFA8;
      block[4] = self;
      block[5] = v8;
      dispatch_async(statusQueue, block);

      goto LABEL_21;
    }

    v11 = nw_path_evaluator_copy_path();
    v12 = [(UAFAssetUtilities *)self _networkIsSatisfiedForPath:v11];
    if (cellularCopy || !v12)
    {
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else if (![(UAFAssetUtilities *)self _networkIsExpensiveForPath:v11])
    {
LABEL_10:
      v13 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v21 = "[UAFAssetUtilities _downloadSiriAssetsOverCellular:]";
        v22 = 2114;
        v23 = getAssistantLanguageIfAvailableSync;
        v24 = 1024;
        v25 = cellularCopy;
        _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s #settings Download requested for language (%{public}@) (cellular:%d)", buf, 0x1Cu);
      }

      _createConnection = [(UAFAssetUtilities *)self _createConnection];
      v15 = _createConnection;
      if (cellularCopy)
      {
        [_createConnection downloadSiriAssetsOverCellular];
      }

      else
      {
        [_createConnection downloadSiriAssets];
      }

LABEL_20:
      goto LABEL_21;
    }

    v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[UAFAssetUtilities _downloadSiriAssetsOverCellular:]";
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s #settings Skip download due to network path", buf, 0xCu);
    }

    statusQueue2 = [(UAFAssetUtilities *)self statusQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke_331;
    v18[3] = &unk_1E7FFCFD0;
    v18[4] = self;
    dispatch_async(statusQueue2, v18);

    goto LABEL_20;
  }

  v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[UAFAssetUtilities _downloadSiriAssetsOverCellular:]";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s #settings Skip download due to nil language", buf, 0xCu);
  }

LABEL_21:
}

uint64_t __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) setState:6];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  [*(*(a1 + 32) + 96) setValue:v2];

  v3 = *(a1 + 32);

  return [v3 _triggerDelegateAssetStatusUpdated];
}

uint64_t __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke_331(uint64_t a1)
{
  [*(*(a1 + 32) + 96) setState:2];
  v2 = *(a1 + 32);

  return [v2 _triggerDelegateAssetStatusUpdated];
}

- (id)getDiskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client
{
  v38 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (!languageCopy)
  {
    v13 = &unk_1F3B73128;
    goto LABEL_14;
  }

  v7 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  _createConnection = [(UAFAssetUtilities *)self _createConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__UAFAssetUtilities_getDiskSpaceNeededInBytesForLanguage_forClient___block_invoke;
  v18[3] = &unk_1E7FFD1B0;
  v20 = &v28;
  v21 = &v22;
  v9 = v7;
  v19 = v9;
  [_createConnection diskSpaceNeededInBytesForLanguage:languageCopy forClient:client completion:v18];
  [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[UAFAssetUtilities getDiskSpaceNeededInBytesForLanguage:forClient:]";
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s #settings Failed to check size due to timeout", buf, 0xCu);
    }

    if (!v23[5])
    {
      goto LABEL_12;
    }
  }

  else if (!v23[5])
  {
    v15 = (v29 + 5);
    goto LABEL_13;
  }

  v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = v23[5];
    *buf = 136315394;
    v35 = "[UAFAssetUtilities getDiskSpaceNeededInBytesForLanguage:forClient:]";
    v36 = 2112;
    v37 = v17;
    _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s #settings Failed to check size due to error %@", buf, 0x16u);
  }

LABEL_12:
  v15 = &kUAFSiriDefaultDiskSpaceNeededSize;
LABEL_13:
  v13 = *v15;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

LABEL_14:

  return v13;
}

void __68__UAFAssetUtilities_getDiskSpaceNeededInBytesForLanguage_forClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (unint64_t)_checkFreeSpaceNeededForLanguage:(id)language forClient:(unint64_t)client
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(UAFAssetUtilities *)self getDiskSpaceNeededInBytesForLanguage:language forClient:client];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {

    return [UAFCommonUtilities getFreeDiskSpaceNeededInBytes:unsignedIntegerValue];
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[UAFAssetUtilities _checkFreeSpaceNeededForLanguage:forClient:]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Returning enough space for assets even with an unknown size requested", &v8, 0xCu);
    }

    return 0;
  }
}

- (BOOL)hasSufficientDiskSpaceForDownload
{
  getAssistantLanguageIfAvailableSync = [(UAFAssetUtilities *)self getAssistantLanguageIfAvailableSync];
  if (getAssistantLanguageIfAvailableSync)
  {
    v4 = [(UAFAssetUtilities *)self _checkFreeSpaceNeededForLanguage:getAssistantLanguageIfAvailableSync forClient:0]== 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)hasSufficientDiskSpaceForClient:(unint64_t)client
{
  getAssistantLanguageIfAvailableSync = [(UAFAssetUtilities *)self getAssistantLanguageIfAvailableSync];
  if (getAssistantLanguageIfAvailableSync)
  {
    v6 = [(UAFAssetUtilities *)self _checkFreeSpaceNeededForLanguage:getAssistantLanguageIfAvailableSync forClient:client]== 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSString)siriLanguage
{
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_not_V2(assistantQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  assistantQueue2 = [(UAFAssetUtilities *)self assistantQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__UAFAssetUtilities_siriLanguage__block_invoke;
  v7[3] = &unk_1E7FFD070;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(assistantQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)assistantEnabled
{
  selfCopy = self;
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_not_V2(assistantQueue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  assistantQueue2 = [(UAFAssetUtilities *)selfCopy assistantQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__UAFAssetUtilities_assistantEnabled__block_invoke;
  v6[3] = &unk_1E7FFD070;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(assistantQueue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (UAFRetryState)retryState
{
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_V2(assistantQueue);

  retryState = self->_retryState;
  if (!retryState)
  {
    v5 = objc_alloc_init(UAFRetryState);
    v6 = self->_retryState;
    self->_retryState = v5;

    retryState = self->_retryState;
  }

  return retryState;
}

- (void)setRetryState:(id)state
{
  stateCopy = state;
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_V2(assistantQueue);

  retryState = self->_retryState;
  self->_retryState = stateCopy;
}

- (void)_assistantLanguageUpdate
{
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(assistantQueue, block);
}

void __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 88);
  v3 = [*(a1 + 32) getAssistantLanguageIfAvailableSync];
  if (([v3 isEqualToString:v2] & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[UAFAssetUtilities _assistantLanguageUpdate]_block_invoke";
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Siri language changed to : %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) setSiriLanguage:v3];
    v5 = [*(a1 + 32) autoRetryEnabled];
    if (v3 && v5)
    {
      v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[UAFAssetUtilities _assistantLanguageUpdate]_block_invoke";
        v14 = 2114;
        v15 = v3;
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry download on language change, language = %{public}@", buf, 0x16u);
      }

      v7 = [*(a1 + 32) retryState];
      [v7 setCancelled:1];

      [*(a1 + 32) setRetryState:0];
      v8 = *(a1 + 32);
      [v8 autoRetryDelayOnSettingsChanged];
      [v8 _downloadSiriAssetsWithDelay:?];
    }

    v9 = [*(a1 + 32) delegateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke_336;
    v10[3] = &unk_1E7FFD098;
    v10[4] = *(a1 + 32);
    v11 = v3;
    dispatch_async(v9, v10);
  }
}

void __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke_336(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 136315394;
      v8 = "[UAFAssetUtilities _assistantLanguageUpdate]_block_invoke";
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Calling delegate assistantLanguageDidChange : %{public}@", &v7, 0x16u);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 assistantLanguageDidChange:*(a1 + 40)];
  }
}

- (void)_assistantPreferencesUpdate
{
  assistantQueue = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(assistantQueue, block);
}

void __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 25);
  v3 = +[UAFCommonUtilities isAssistantEnabled];
  if (v2 != v3)
  {
    v4 = v3;
    v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      *buf = 136315394;
      v15 = "[UAFAssetUtilities _assistantPreferencesUpdate]_block_invoke";
      v16 = 2080;
      v17 = v6;
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Assistant preferences changed to : %s", buf, 0x16u);
    }

    [*(a1 + 32) setAssistantEnabled:v4];
    v7 = [*(a1 + 32) autoRetryEnabled];
    if (v4 && v7)
    {
      v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[UAFAssetUtilities _assistantPreferencesUpdate]_block_invoke";
        _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry download on enablement change", buf, 0xCu);
      }

      v9 = [*(a1 + 32) retryState];
      [v9 setCancelled:1];

      [*(a1 + 32) setRetryState:0];
      v10 = *(a1 + 32);
      [v10 autoRetryDelayOnSettingsChanged];
      [v10 _downloadSiriAssetsWithDelay:?];
    }

    v11 = [*(a1 + 32) delegateQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke_341;
    v12[3] = &unk_1E7FFD020;
    v12[4] = *(a1 + 32);
    v13 = v4;
    dispatch_async(v11, v12);
  }
}

void __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke_341(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (*(a1 + 40))
      {
        v5 = "enabled";
      }

      v7 = 136315394;
      v8 = "[UAFAssetUtilities _assistantPreferencesUpdate]_block_invoke";
      v9 = 2080;
      v10 = v5;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Calling delegate assistantEnabledDidChange : %s", &v7, 0x16u);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 assistantEnabledDidChange:*(a1 + 40)];
  }
}

@end