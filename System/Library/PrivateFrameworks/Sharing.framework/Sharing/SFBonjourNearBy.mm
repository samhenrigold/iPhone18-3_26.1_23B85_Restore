@interface SFBonjourNearBy
- (BOOL)isLocalEndpoint:(id)endpoint;
- (BOOL)sendData:(id)data toDevice:(id)device completionHandler:(id)handler;
- (BOOL)startDiscovery;
- (BOOL)stopAdvertisingForData:(id)data completionHandler:(id)handler;
- (SFBonjourNearBy)initWithQueue:(id)queue;
- (id)_endpointForUniqueID:(id)d;
- (id)_handleConnection:(id)connection isAdvToBrowserConnection:(BOOL)browserConnection;
- (id)getUniqueServiceNameForAdvertiser;
- (id)randomUUID;
- (void)_cleanUp;
- (void)_cleanupAdvertiser;
- (void)_cleanupBrowser;
- (void)_reportCachedDiscoveryResults;
- (void)_sendAdvMessageWithData:(id)data isStart:(BOOL)start completionHandler:(id)handler;
- (void)_sendMessage:(id)message withType:(id)type toDevice:(id)device completionCallback:(id)callback;
- (void)_sendMessage:(id)message withType:(id)type toEndpoint:(id)endpoint completionCallback:(id)callback;
- (void)_startAdvertiser;
- (void)_startBrowser;
- (void)_stopAdvertising;
- (void)_stopBrowser;
- (void)_updateAdvertiserState;
- (void)_updateBrowserState;
- (void)connectToDevice:(id)device;
- (void)dealloc;
- (void)disconnectFromDevice:(id)device;
- (void)handleBrowseResults:(id)results;
- (void)startAdvertisingWithData:(id)data completionHandler:(id)handler;
- (void)stopDiscovery;
@end

@implementation SFBonjourNearBy

- (SFBonjourNearBy)initWithQueue:(id)queue
{
  v34 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = SFBonjourNearBy;
  v6 = [(SFBonjourNearBy *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialQueue, queue);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    advertiserAdvs = v7->_advertiserAdvs;
    v7->_advertiserAdvs = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    advToBrowserNwToSFendpoints = v7->_advToBrowserNwToSFendpoints;
    v7->_advToBrowserNwToSFendpoints = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    advToBrowserUuidToSFendpoints = v7->_advToBrowserUuidToSFendpoints;
    v7->_advToBrowserUuidToSFendpoints = v12;

    v7->_advertiserState = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    browserToAdvNwToSFendpoints = v7->_browserToAdvNwToSFendpoints;
    v7->_browserToAdvNwToSFendpoints = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    browserToAdvUuidToSFendpoints = v7->_browserToAdvUuidToSFendpoints;
    v7->_browserToAdvUuidToSFendpoints = v16;

    v7->_browserState = 0;
    v18 = [MEMORY[0x1E695DFA8] set];
    resultChanges = v7->_resultChanges;
    v7->_resultChanges = v18;

    randomUUID = [(SFBonjourNearBy *)v7 randomUUID];
    localAdvertiserUUIDString = v7->_localAdvertiserUUIDString;
    v7->_localAdvertiserUUIDString = randomUUID;

    randomUUID2 = [(SFBonjourNearBy *)v7 randomUUID];
    localBrowserUUIDString = v7->_localBrowserUUIDString;
    v7->_localBrowserUUIDString = randomUUID2;

    v25 = daemon_log(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v7->_localAdvertiserUUIDString;
      v27 = v7->_localBrowserUUIDString;
      *buf = 138412546;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&dword_1A9662000, v25, OS_LOG_TYPE_DEFAULT, "LocalAdvID %@, LocalBrowserID: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)randomUUID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)getUniqueServiceNameForAdvertiser
{
  lowercaseString = [(NSString *)self->_localAdvertiserUUIDString lowercaseString];
  v3 = [lowercaseString substringWithRange:{12, 12}];

  return v3;
}

- (void)_startAdvertiser
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = daemon_log(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = 67109120;
      v22[1] = a2;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "advertiser state handler with state %d", v22, 8u);
    }

    if (v6)
    {
      v11 = daemon_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_1();
      }
    }

    switch(a2)
    {
      case 4:
        v16 = daemon_log(v10);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22[0]) = 0;
          _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "advertiser cancelled", v22, 2u);
        }

        [v8 setListener:0];
        [v8 _cleanupAdvertiser];
        v17 = *(*(*(a1 + 32) + 8) + 40);
        if (v17)
        {
          v14 = nw_error_copy_cf_error(v17);
        }

        else
        {
          v14 = 0;
        }

        v18 = [v8 advertisingStateUpdateHandler];

        if (v18)
        {
          v19 = [v8 advertisingStateUpdateHandler];
          v19[2](v19, 0, v14);
        }

        v20 = *(*(a1 + 32) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;

        goto LABEL_26;
      case 3:
        v15 = daemon_log(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_2();
        }

        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
        v14 = [v8 listener];
        nw_listener_cancel(v14);
        goto LABEL_26;
      case 2:
        v12 = daemon_log(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22[0]) = 0;
          _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "advertiser is ready", v22, 2u);
        }

        [v8 setAdvertiserState:2];
        v13 = [v8 advertisingStateUpdateHandler];

        if (v13)
        {
          v14 = [v8 advertisingStateUpdateHandler];
          (*(v14 + 16))(v14, 1, 0);
LABEL_26:
        }

        break;
    }
  }
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke_147(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _handleConnection:v3 isAdvToBrowserConnection:1];

  v7 = daemon_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "New Adv to browser connection %@ (endpoint %@)", &v8, 0x16u);
  }
}

- (void)startAdvertisingWithData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFBonjourNearBy_startAdvertisingWithData_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = dataCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(serialQueue, block);
}

void __62__SFBonjourNearBy_startAdvertisingWithData_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) advertiserAdvs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v5 = daemon_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Already advertising for advData %@", &v15, 0xCu);
    }
  }

  else
  {
    v7 = [*(a1 + 32) advertiserAdvs];
    [v7 addObject:*(a1 + 40)];

    v9 = daemon_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Starting advertising with advData %@", &v15, 0xCu);
    }

    v11 = [*(a1 + 32) advertiserState];
    v12 = *(a1 + 32);
    if (v11 == 3)
    {
      v12[25] = 1;
    }

    else
    {
      v13 = [v12 advertiserState];
      v14 = *(a1 + 32);
      if (v13 == 2)
      {
        [v14 _sendAdvMessageWithData:*(a1 + 40) isStart:1 completionHandler:*(a1 + 48)];
      }

      else
      {
        [v14 _startAdvertiser];
      }
    }
  }
}

- (void)_stopAdvertising
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  advertiserState = [(SFBonjourNearBy *)self advertiserState];
  if (advertiserState == 2)
  {
    [(SFBonjourNearBy *)self setAdvertiserState:3];
    listener = self->_listener;

    nw_listener_cancel(listener);
  }

  else
  {
    v5 = daemon_log(advertiserState);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = [(SFBonjourNearBy *)self advertiserState];
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Unable to stop advertiser, invalid state : %d", v6, 8u);
    }
  }
}

- (BOOL)stopAdvertisingForData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFBonjourNearBy_stopAdvertisingForData_completionHandler___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v13 = dataCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(serialQueue, block);

  return 1;
}

void *__60__SFBonjourNearBy_stopAdvertisingForData_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 160) containsObject:*(a1 + 40)];
  v3 = v2;
  v4 = daemon_log(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Stop advertising for advData %@", &v10, 0xCu);
    }

    if ([*(a1 + 32) advertiserState] == 2)
    {
      [*(a1 + 32) _sendAdvMessageWithData:*(a1 + 40) isStart:0 completionHandler:*(a1 + 48)];
    }

    [*(*(a1 + 32) + 160) removeObject:*(a1 + 40)];
    result = [*(*(a1 + 32) + 160) count];
    if (!result)
    {
      v8 = daemon_log(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "No more advertisements, stopping advertiser completely.", &v10, 2u);
      }

      *(*(a1 + 32) + 25) = 0;
      return [*(a1 + 32) _stopAdvertising];
    }
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Unable to stop advertising for advData %@", &v10, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 2))(result, *(a1 + 40), 0);
    }
  }

  return result;
}

- (void)_cleanupAdvertiser
{
  dispatch_assert_queue_V2(self->_serialQueue);
  advertiserState = [(SFBonjourNearBy *)self advertiserState];
  if (advertiserState)
  {
    v4 = daemon_log(advertiserState);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up the advertiser", v6, 2u);
    }

    advToBrowserNwToSFendpoints = [(SFBonjourNearBy *)self advToBrowserNwToSFendpoints];
    [advToBrowserNwToSFendpoints enumerateKeysAndObjectsUsingBlock:&__block_literal_global_51];

    [(SFBonjourNearBy *)self _updateAdvertiserState];
  }
}

void __37__SFBonjourNearBy__cleanupAdvertiser__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 isConnected] & 1) == 0)
  {
    [v3 cancel];
  }
}

- (void)_updateAdvertiserState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  advToBrowserNwToSFendpoints = [(SFBonjourNearBy *)self advToBrowserNwToSFendpoints];
  v4 = [advToBrowserNwToSFendpoints keysOfEntriesPassingTest:&__block_literal_global_153];

  if (![v4 count] && !self->_listener)
  {
    [(SFBonjourNearBy *)self setAdvertiserState:0];
    if (self->_shouldRestartAdvertising)
    {
      self->_shouldRestartAdvertising = 0;
      [(SFBonjourNearBy *)self _startAdvertiser];
    }
  }
}

- (void)_startBrowser
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__SFBonjourNearBy__startBrowser__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = daemon_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "nw_browser_state_t changed:%d error:%@", v12, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 - 2) >= 2)
    {
      if (a2 == 1)
      {
        v9 = daemon_log([WeakRetained setBrowserState:2]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12[0]) = 0;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "SFbonjourNearbyBrowser successfully started", v12, 2u);
        }

        v10 = [v8 deviceDidStartScanning];

        if (v10)
        {
          v11 = [v8 deviceDidStartScanning];
          v11[2](v11, 0);
        }
      }
    }

    else
    {
      [WeakRetained setBrowser:0];
      [v8 _cleanupBrowser];
    }
  }
}

void __32__SFBonjourNearBy__startBrowser__block_invoke_154(uint64_t a1, void *a2, void *a3, int a4)
{
  old_result = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    changes = nw_browse_result_get_changes(old_result, v7);
    if (changes >= 2)
    {
      v10 = [[SFBonjourBrowserResultChanges alloc] initWithOldResult:old_result freshResult:v7 change:changes];
      v11 = [WeakRetained resultChanges];
      [v11 addObject:v10];

      if (a4)
      {
        v12 = [WeakRetained resultChanges];
        v13 = [v12 copy];

        v14 = [WeakRetained resultChanges];
        [v14 removeAllObjects];

        [WeakRetained handleBrowseResults:v13];
      }
    }
  }
}

- (BOOL)startDiscovery
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFBonjourNearBy_startDiscovery__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(serialQueue, block);
  return 1;
}

_BYTE *__33__SFBonjourNearBy_startDiscovery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browserState];
  result = *(a1 + 32);
  if (v2 == 3)
  {
    result[24] = 1;
  }

  else
  {
    v4 = [result browserState];
    v5 = *(a1 + 32);
    if (v4 == 2)
    {

      return [v5 _reportCachedDiscoveryResults];
    }

    else
    {

      return [v5 _startBrowser];
    }
  }

  return result;
}

- (void)_stopBrowser
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  browserState = [(SFBonjourNearBy *)self browserState];
  if (browserState == 2)
  {
    [(SFBonjourNearBy *)self setBrowserState:3];
    browser = self->_browser;

    nw_browser_cancel(browser);
  }

  else
  {
    v5 = daemon_log(browserState);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = [(SFBonjourNearBy *)self browserState];
      _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "StopBrowser is not stopping. current browser state %d", v6, 8u);
    }
  }
}

- (void)stopDiscovery
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFBonjourNearBy_stopDiscovery__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_reportCachedDiscoveryResults
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke;
  v4[3] = &unk_1E788B4D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained browserState] == 2)
  {
    v3 = [v2 browserToAdvNwToSFendpoints];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke_2;
    v4[3] = &unk_1E788FC58;
    v4[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __48__SFBonjourNearBy__reportCachedDiscoveryResults__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [*(a1 + 32) deviceFoundHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) deviceFoundHandler];
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v11 remoteUniqueIDString];
    v8 = [v6 initWithUUIDString:v7];
    v9 = [v11 remoteAdvDataSet];
    v10 = [v9 allObjects];
    (v5)[2](v5, v8, v10);
  }
}

- (void)_cleanupBrowser
{
  browserState = [(SFBonjourNearBy *)self browserState];
  if (browserState)
  {
    v4 = daemon_log(browserState);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up browser", v8, 2u);
    }

    browserToAdvNwToSFendpoints = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
    [browserToAdvNwToSFendpoints enumerateKeysAndObjectsUsingBlock:&__block_literal_global_158_0];

    [(SFBonjourNearBy *)self _updateBrowserState];
    deviceDidStopScanning = [(SFBonjourNearBy *)self deviceDidStopScanning];

    if (deviceDidStopScanning)
    {
      deviceDidStopScanning2 = [(SFBonjourNearBy *)self deviceDidStopScanning];
      deviceDidStopScanning2[2](deviceDidStopScanning2, 0);
    }
  }
}

void __34__SFBonjourNearBy__cleanupBrowser__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (([v3 isConnected] & 1) == 0)
  {
    [v3 cancel];
  }
}

- (void)_updateBrowserState
{
  browserToAdvNwToSFendpoints = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
  v4 = [browserToAdvNwToSFendpoints keysOfEntriesPassingTest:&__block_literal_global_160];

  if (![v4 count] && !self->_browser)
  {
    [(SFBonjourNearBy *)self setBrowserState:0];
    if (self->_shouldRestartBrowsing)
    {
      self->_shouldRestartBrowsing = 0;
      [(SFBonjourNearBy *)self _startBrowser];
    }
  }
}

- (void)handleBrowseResults:(id)results
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 138412290;
    v25 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if (([v10 change] & 2) != 0)
        {
          freshResult = [v10 freshResult];
          v12 = nw_browse_result_copy_endpoint(freshResult);

          if (![(SFBonjourNearBy *)self isLocalEndpoint:v12])
          {
            browserToAdvNwToSFendpoints = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
            v19 = [browserToAdvNwToSFendpoints objectForKey:v12];

            v14 = daemon_log(v20);
            v21 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (v21)
              {
                *buf = v25;
                v31 = v12;
                _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate endpoint %@", buf, 0xCu);
              }
            }

            else
            {
              if (v21)
              {
                *buf = 138412546;
                v31 = v12;
                v32 = 2048;
                v33 = v12;
                _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Found endpoint %@, (%p)", buf, 0x16u);
              }

              v22 = +[SFBonjourEndpoint createConnectionParameters];
              v14 = nw_connection_create(v12, v22);

              v23 = [(SFBonjourNearBy *)self _handleConnection:v14 isAdvToBrowserConnection:0];
              v24 = daemon_log(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = v14;
                v32 = 2112;
                v33 = v23;
                _os_log_impl(&dword_1A9662000, v24, OS_LOG_TYPE_DEFAULT, "New Browser to Adv connection %@ (endpoint %@)", buf, 0x16u);
              }
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (([v10 change] & 4) == 0)
          {
            continue;
          }

          oldResult = [v10 oldResult];
          v12 = nw_browse_result_copy_endpoint(oldResult);

          if (![(SFBonjourNearBy *)self isLocalEndpoint:v12])
          {
            browserToAdvNwToSFendpoints2 = [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
            v14 = [browserToAdvNwToSFendpoints2 objectForKey:v12];

            v16 = daemon_log(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v31 = v12;
              v32 = 2112;
              v33 = v14;
              _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "Removing endpoint %@ %@", buf, 0x16u);
            }

            [v14 cancel];
LABEL_21:
          }
        }
      }

      v7 = [resultsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }
}

- (id)_handleConnection:(id)connection isAdvToBrowserConnection:(BOOL)browserConnection
{
  browserConnectionCopy = browserConnection;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (connectionCopy)
  {
    v8 = 40;
    if (browserConnectionCopy)
    {
      v8 = 32;
    }

    v9 = *(&self->super.isa + v8);
    v10 = [[SFBonjourEndpoint alloc] initWithConnection:connectionCopy isAdvToBrowserConnection:browserConnectionCopy localUniqueID:v9 withQueue:self->_serialQueue];
    if (v10)
    {
      v11 = nw_connection_copy_endpoint(connectionCopy);
      if (browserConnectionCopy)
      {
        [(SFBonjourNearBy *)self advToBrowserNwToSFendpoints];
      }

      else
      {
        [(SFBonjourNearBy *)self browserToAdvNwToSFendpoints];
      }
      v12 = ;
      [v12 setObject:v10 forKey:v11];

      objc_initWeak(&location, self);
      objc_initWeak(&from, v10);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke;
      v21[3] = &unk_1E788FC80;
      objc_copyWeak(&v22, &from);
      objc_copyWeak(&v23, &location);
      v24 = browserConnectionCopy;
      [(SFBonjourEndpoint *)v10 setDidConnectHandler:v21];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2;
      v18[3] = &unk_1E788FCA8;
      objc_copyWeak(&v19, &location);
      objc_copyWeak(&v20, &from);
      [(SFBonjourEndpoint *)v10 setDidDisconnectHandler:v18];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174;
      v15[3] = &unk_1E788FCD0;
      objc_copyWeak(&v16, &location);
      objc_copyWeak(&v17, &from);
      [(SFBonjourEndpoint *)v10 setDidReceiveDataHandler:v15];
      v13 = v10;
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = daemon_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SFBonjourNearBy _handleConnection:isAdvToBrowserConnection:];
      }
    }
  }

  else
  {
    v9 = daemon_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFBonjourNearBy _handleConnection:isAdvToBrowserConnection:];
    }

    v10 = 0;
  }

  return v10;
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3 && WeakRetained)
  {
    v4 = [WeakRetained remoteUniqueIDString];

    v6 = daemon_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      if (v7)
      {
        __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_2();
      }

      goto LABEL_13;
    }

    if (v7)
    {
      __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_1(WeakRetained);
    }

    if (*(a1 + 48) == 1)
    {
      [v3 advToBrowserUuidToSFendpoints];
    }

    else
    {
      [v3 browserToAdvUuidToSFendpoints];
    }
    v8 = ;
    v9 = [WeakRetained remoteUniqueIDString];
    [v8 setObject:WeakRetained forKey:v9];

    if ([WeakRetained isAdvToBrowserConnection])
    {
      v6 = [v3[20] allObjects];
      v10 = [WeakRetained remoteUniqueIDString];
      [v3 _sendMessage:v6 withType:@"SFBonjourNearbyMessageTypeStartAdvertiseData" toDevice:v10 completionCallback:&__block_literal_global_173_0];

LABEL_13:
    }
  }
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (!WeakRetained || !v3)
  {
    goto LABEL_20;
  }

  v5 = daemon_log(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2_cold_1(v4);
  }

  v6 = [v4 remoteUniqueIDString];

  if (v6)
  {
    v7 = [WeakRetained deviceDidDisconnectHandler];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 isConnected];

      if (v9)
      {
        v10 = [WeakRetained deviceDidDisconnectHandler];
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v4 remoteUniqueIDString];
        v13 = [v11 initWithUUIDString:v12];
        (v10)[2](v10, v13);
LABEL_12:

        goto LABEL_13;
      }
    }

    v14 = [WeakRetained deviceLostHandler];
    if (v14)
    {
      v15 = v14;
      v16 = [v4 isAdvToBrowserConnection];

      if ((v16 & 1) == 0)
      {
        v10 = [WeakRetained deviceLostHandler];
        v17 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v4 remoteUniqueIDString];
        v13 = [v17 initWithUUIDString:v12];
        (v10[2])(v10, v13, 0);
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  if ([v4 isAdvToBrowserConnection])
  {
    v18 = [WeakRetained advToBrowserNwToSFendpoints];
    v19 = [v4 remoteEndpoint];
    [v18 removeObjectForKey:v19];

    v20 = [v4 remoteUniqueIDString];

    if (v20)
    {
      v21 = [WeakRetained advToBrowserUuidToSFendpoints];
      v22 = [v4 remoteUniqueIDString];
      [v21 removeObjectForKey:v22];
    }

    [WeakRetained _updateAdvertiserState];
  }

  else
  {
    v23 = [WeakRetained browserToAdvNwToSFendpoints];
    v24 = [v4 remoteEndpoint];
    [v23 removeObjectForKey:v24];

    v25 = [v4 remoteUniqueIDString];

    if (v25)
    {
      v26 = [WeakRetained browserToAdvUuidToSFendpoints];
      v27 = [v4 remoteUniqueIDString];
      [v26 removeObjectForKey:v27];
    }

    [WeakRetained _updateBrowserState];
  }

LABEL_20:
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v36 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:&v36 error:0];
    if (!v7)
    {
      v11 = daemon_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_2();
      }

      goto LABEL_20;
    }

    v8 = [v6 remoteUniqueIDString];

    v10 = daemon_log(v9);
    v11 = v10;
    if (!v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_1();
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v7;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Received browser endpoint message %@ from endpoint %@", buf, 0x16u);
    }

    v11 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageType"];
    if ([v11 isEqualToString:@"SFBonjourNearbyMessageTypeStartAdvertiseData"])
    {
      v12 = [v6 remoteAdvDataSet];
      v13 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
      [v12 addObjectsFromArray:v13];

      v14 = [WeakRetained deviceFoundHandler];

      if (v14)
      {
        v15 = [WeakRetained deviceFoundHandler];
LABEL_17:
        v21 = v15;
        v22 = objc_alloc(MEMORY[0x1E696AFB0]);
        v23 = [v6 remoteUniqueIDString];
        v24 = [v22 initWithUUIDString:v23];
        v25 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
        (*(v21 + 16))(v21, v24, v25);

        goto LABEL_18;
      }
    }

    else
    {
      if (![v11 isEqualToString:@"SFBonjourNearbyMessageTypeStopAdvertiseData"])
      {
        if ([v11 isEqualToString:@"SFBonjourNearbyMessageTypeConnect"])
        {
          [v6 setIsConnected:1];
          v26 = [WeakRetained deviceDidConnectHandler];

          if (!v26)
          {
            goto LABEL_20;
          }

          v21 = [WeakRetained deviceDidConnectHandler];
          v27 = objc_alloc(MEMORY[0x1E696AFB0]);
          v23 = [v6 remoteUniqueIDString];
          v24 = [v27 initWithUUIDString:v23];
          (*(v21 + 16))(v21, v24, 0);
        }

        else
        {
          if (![v11 isEqualToString:@"SFBonjourNearbyMessageTypeDisconnect"])
          {
            v30 = [v11 isEqualToString:@"SFBonjourNearbyMessageTypeDataPacket"];
            if (v30)
            {
              v31 = [WeakRetained deviceDidReceiveDataHandler];

              if (!v31)
              {
                goto LABEL_20;
              }

              v21 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
              v32 = [WeakRetained deviceDidReceiveDataHandler];
              v33 = objc_alloc(MEMORY[0x1E696AFB0]);
              v34 = [v6 remoteUniqueIDString];
              v35 = [v33 initWithUUIDString:v34];
              (v32)[2](v32, v35, v21);
            }

            else
            {
              v21 = daemon_log(v30);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v38 = v11;
                _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "SFBonjourNearBy unknown message type:%@", buf, 0xCu);
              }
            }

            goto LABEL_19;
          }

          [v6 setIsConnected:0];
          v28 = [WeakRetained deviceDidDisconnectHandler];

          if (!v28)
          {
            goto LABEL_20;
          }

          v21 = [WeakRetained deviceDidDisconnectHandler];
          v29 = objc_alloc(MEMORY[0x1E696AFB0]);
          v23 = [v6 remoteUniqueIDString];
          v24 = [v29 initWithUUIDString:v23];
          (*(v21 + 16))(v21, v24);
        }

LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v16 = [v6 remoteAdvDataSet];
      v17 = MEMORY[0x1E695DFD8];
      v18 = [v7 objectForKeyedSubscript:@"SFBonjourNearbyMessageValue"];
      v19 = [v17 setWithArray:v18];
      [v16 minusSet:v19];

      v20 = [WeakRetained deviceLostHandler];

      if (v20)
      {
        v15 = [WeakRetained deviceLostHandler];
        goto LABEL_17;
      }
    }

LABEL_20:
  }
}

- (void)_sendMessage:(id)message withType:(id)type toEndpoint:(id)endpoint completionCallback:(id)callback
{
  v31[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  typeCopy = type;
  endpointCopy = endpoint;
  callbackCopy = callback;
  dispatch_assert_queue_V2(self->_serialQueue);
  v30[0] = @"SFBonjourNearbyMessageType";
  v30[1] = @"SFBonjourNearbyMessageValue";
  v31[0] = typeCopy;
  v31[1] = messageCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:200 options:0 error:0];
  v16 = daemon_log(v15);
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = endpointCopy;
      _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Sending payload %@ to endpoint %@", buf, 0x16u);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__SFBonjourNearBy__sendMessage_withType_toEndpoint_completionCallback___block_invoke;
    v22[3] = &unk_1E788B6D8;
    v23 = callbackCopy;
    [endpointCopy sendDataMessage:v15 completion:v22];
    v18 = v23;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SFBonjourNearBy _sendMessage:withType:toEndpoint:completionCallback:];
  }

  if (callbackCopy)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Unable to send message, failed to serialize payload";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v18 = [v19 errorWithDomain:v20 code:-6700 userInfo:v21];

    (*(callbackCopy + 2))(callbackCopy, v18);
LABEL_9:
  }
}

uint64_t __71__SFBonjourNearBy__sendMessage_withType_toEndpoint_completionCallback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_sendMessage:(id)message withType:(id)type toDevice:(id)device completionCallback:(id)callback
{
  messageCopy = message;
  typeCopy = type;
  deviceCopy = device;
  callbackCopy = callback;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke;
  v19[3] = &unk_1E788FCF8;
  objc_copyWeak(&v24, &location);
  v20 = deviceCopy;
  v21 = typeCopy;
  v22 = messageCopy;
  v23 = callbackCopy;
  v15 = callbackCopy;
  v16 = messageCopy;
  v17 = typeCopy;
  v18 = deviceCopy;
  dispatch_async(serialQueue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _endpointForUniqueID:*(a1 + 32)];
    v5 = v4;
    if (v4 && *(a1 + 40) && *(a1 + 48))
    {
      [v3 _sendMessage:? withType:? toEndpoint:? completionCallback:?];
    }

    else
    {
      v6 = daemon_log(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke_cold_1();
      }

      if (*(a1 + 56))
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A768];
        v11 = *MEMORY[0x1E696A578];
        v12[0] = @"Unable to send message, invalid params";
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        v10 = [v7 errorWithDomain:v8 code:-6705 userInfo:v9];

        (*(*(a1 + 56) + 16))();
      }
    }
  }
}

- (void)_sendAdvMessageWithData:(id)data isStart:(BOOL)start completionHandler:(id)handler
{
  startCopy = start;
  dataCopy = data;
  handlerCopy = handler;
  v10 = @"SFBonjourNearbyMessageTypeStopAdvertiseData";
  if (startCopy)
  {
    v10 = @"SFBonjourNearbyMessageTypeStartAdvertiseData";
  }

  v11 = v10;
  advToBrowserUuidToSFendpoints = [(SFBonjourNearBy *)self advToBrowserUuidToSFendpoints];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke;
  v16[3] = &unk_1E788FD20;
  v16[4] = self;
  v13 = dataCopy;
  v17 = v13;
  v18 = v11;
  v14 = handlerCopy;
  v19 = v14;
  v15 = v11;
  [advToBrowserUuidToSFendpoints enumerateKeysAndObjectsUsingBlock:v16];

  if (v14)
  {
    (*(v14 + 2))(v14, v13, 0);
  }
}

void __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v11[0] = *(a1 + 40);
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v11 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke_2;
  v8[3] = &unk_1E788CB38;
  v7 = *(a1 + 48);
  v10 = *(a1 + 56);
  v9 = *(a1 + 40);
  [v3 _sendMessage:v6 withType:v7 toDevice:v5 completionCallback:v8];
}

uint64_t __69__SFBonjourNearBy__sendAdvMessageWithData_isStart_completionHandler___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      return (*(v2 + 16))(*(result + 40), *(result + 32), a2);
    }
  }

  return result;
}

- (void)connectToDevice:(id)device
{
  deviceCopy = device;
  uUIDString = [deviceCopy UUIDString];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SFBonjourNearBy_connectToDevice___block_invoke;
  v7[3] = &unk_1E788B520;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(SFBonjourNearBy *)self _sendMessage:MEMORY[0x1E695E0F8] withType:@"SFBonjourNearbyMessageTypeConnect" toDevice:uUIDString completionCallback:v7];
}

void __35__SFBonjourNearBy_connectToDevice___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) UUIDString];
  v5 = [v3 _endpointForUniqueID:v4];

  if (!v8)
  {
    [v5 setIsConnected:1];
  }

  v6 = [*(a1 + 32) deviceDidConnectHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) deviceDidConnectHandler];
    (v7)[2](v7, *(a1 + 40), v8);
  }
}

- (void)disconnectFromDevice:(id)device
{
  deviceCopy = device;
  uUIDString = [deviceCopy UUIDString];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFBonjourNearBy_disconnectFromDevice___block_invoke;
  v7[3] = &unk_1E788B520;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(SFBonjourNearBy *)self _sendMessage:MEMORY[0x1E695E0F8] withType:@"SFBonjourNearbyMessageTypeDisconnect" toDevice:uUIDString completionCallback:v7];
}

void __40__SFBonjourNearBy_disconnectFromDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUIDString];
  v10 = [v2 _endpointForUniqueID:v3];

  [v10 setIsConnected:0];
  v4 = [*(a1 + 32) deviceDidDisconnectHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) deviceDidDisconnectHandler];
    v5[2](v5, *(a1 + 40));
  }

  v6 = [*(a1 + 32) deviceLostHandler];
  if (v6)
  {
    v7 = v6;
    v8 = [v10 isAdvToBrowserConnection];

    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 32) deviceLostHandler];
      v9[2](v9, *(a1 + 40), 0);
    }
  }
}

- (BOOL)sendData:(id)data toDevice:(id)device completionHandler:(id)handler
{
  dataCopy = data;
  deviceCopy = device;
  handlerCopy = handler;
  uUIDString = [deviceCopy UUIDString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke;
  v16[3] = &unk_1E788FD48;
  v17 = dataCopy;
  v18 = deviceCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = deviceCopy;
  v14 = dataCopy;
  [(SFBonjourNearBy *)self _sendMessage:v14 withType:@"SFBonjourNearbyMessageTypeDataPacket" toDevice:uUIDString completionCallback:v16];

  return 1;
}

void __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = daemon_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke_cold_1();
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

- (BOOL)isLocalEndpoint:(id)endpoint
{
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_bonjour_service_name(endpoint)];
  getUniqueServiceNameForAdvertiser = [(SFBonjourNearBy *)self getUniqueServiceNameForAdvertiser];
  v6 = [v4 isEqualToString:getUniqueServiceNameForAdvertiser];

  return v6;
}

- (id)_endpointForUniqueID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v9 = daemon_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFBonjourNearBy _endpointForUniqueID:];
    }

    goto LABEL_8;
  }

  advToBrowserUuidToSFendpoints = [(SFBonjourNearBy *)self advToBrowserUuidToSFendpoints];
  v6 = [advToBrowserUuidToSFendpoints objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    browserToAdvUuidToSFendpoints = [(SFBonjourNearBy *)self browserToAdvUuidToSFendpoints];
    v6 = [browserToAdvUuidToSFendpoints objectForKeyedSubscript:dCopy];

    if (!v6)
    {
      v9 = daemon_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SFBonjourNearBy _endpointForUniqueID:];
      }

LABEL_8:

      v6 = 0;
    }
  }

  return v6;
}

- (void)_cleanUp
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFBonjourNearBy__cleanUp__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __27__SFBonjourNearBy__cleanUp__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopBrowser];
  v2 = *(a1 + 32);

  return [v2 _stopAdvertising];
}

- (void)dealloc
{
  [(SFBonjourNearBy *)self _cleanUp];
  v3.receiver = self;
  v3.super_class = SFBonjourNearBy;
  [(SFBonjourNearBy *)&v3 dealloc];
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __35__SFBonjourNearBy__startAdvertiser__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleConnection:isAdvToBrowserConnection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_1(void *a1)
{
  [a1 isAdvToBrowserConnection];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_5_4(&dword_1A9662000, v1, v2, "Established [%@] connection for endpoint %@", v3, v4, v5, v6);
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_2_cold_1(void *a1)
{
  [a1 isAdvToBrowserConnection];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_5_4(&dword_1A9662000, v1, v2, "[%@] connection closed for endpoint %@", v3, v4, v5, v6);
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __62__SFBonjourNearBy__handleConnection_isAdvToBrowserConnection___block_invoke_174_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_sendMessage:withType:toEndpoint:completionCallback:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__SFBonjourNearBy__sendMessage_withType_toDevice_completionCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __55__SFBonjourNearBy_sendData_toDevice_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_endpointForUniqueID:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_endpointForUniqueID:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end