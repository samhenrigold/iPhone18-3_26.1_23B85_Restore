@interface TVRCMediaRemoteEndpointManager
+ (id)sharedInstance;
- (TVRCMediaRemoteEndpointManager)init;
- (void)fetchActiveEndpointWithCompletion:(id)completion;
- (void)updateActiveEndpoint:(id)endpoint withCompletion:(id)completion;
@end

@implementation TVRCMediaRemoteEndpointManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[TVRCMediaRemoteEndpointManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __48__TVRCMediaRemoteEndpointManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TVRCMediaRemoteEndpointManager);

  return MEMORY[0x2821F96F8]();
}

- (TVRCMediaRemoteEndpointManager)init
{
  v6.receiver = self;
  v6.super_class = TVRCMediaRemoteEndpointManager;
  v2 = [(TVRCMediaRemoteEndpointManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TVRemoteCore.mediaremote", 0);
    mediaRemoteQueue = v2->_mediaRemoteQueue;
    v2->_mediaRemoteQueue = v3;
  }

  return v2;
}

- (void)updateActiveEndpoint:(id)endpoint withCompletion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  mediaRemoteQueue = [(TVRCMediaRemoteEndpointManager *)self mediaRemoteQueue];
  v11 = completionCopy;
  v9 = endpointCopy;
  v10 = completionCopy;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke(id *a1, int a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    if (!a1[7])
    {
      return;
    }

    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Skipping MediaRemote endpoint update because MRPlaybackState is MRPlaybackStatePlaying";
    v3 = MEMORY[0x277CBEAC0];
    v4 = v20;
    v5 = &v19;
    goto LABEL_12;
  }

  v6 = _TVRCMediaRemoteLog(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Requesting MediaRemote to update active endpoint to %@", buf, 0xCu);
  }

  if ([a1[4] length])
  {
    v8 = [a1[6] mediaRemoteQueue];
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[7];
    MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReason();

    v9 = v12;
LABEL_13:

    return;
  }

  v10 = _TVRCMediaRemoteLog(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_cold_1(v10);
  }

  if (a1[7])
  {
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Requested MediaRemote to update endpoint with an invalid UID";
    v3 = MEMORY[0x277CBEAC0];
    v4 = &v16;
    v5 = &v15;
LABEL_12:
    v11 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:1];
    v9 = TVRCMakeError(200, v11);

    (*(a1[7] + 2))();
    goto LABEL_13;
  }
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_7(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCMediaRemoteLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_7_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138412546;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReason completion with reason=MRMediaRemoteActiveEndpointOperationActivate, endpointUID=%@, reason=%{public}@", &v9, 0x16u);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)fetchActiveEndpointWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _TVRCMediaRemoteLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Fetching active endpoint from MediaRemote", buf, 2u);
  }

  mediaRemoteQueue = [(TVRCMediaRemoteEndpointManager *)self mediaRemoteQueue];
  v8 = completionCopy;
  v7 = completionCopy;
  MRAVEndpointGetActiveSystemEndpointUID();
}

void __68__TVRCMediaRemoteEndpointManager_fetchActiveEndpointWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCMediaRemoteLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "MRAVEndpointGetActiveSystemEndpointUID returned %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"Requested MediaRemote to update endpoint with an invalid UID";
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void __70__TVRCMediaRemoteEndpointManager_updateActiveEndpoint_withCompletion___block_invoke_7_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReason completion with reason=MRMediaRemoteActiveEndpointOperationActivate, endpointUID=%@, reason=%{public}@, error=%{public}@", &v5, 0x20u);
}

@end