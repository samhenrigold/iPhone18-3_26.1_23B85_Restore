@interface CloudMediaServicesInterfaceXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CloudMediaServicesInterfaceProtocol)playbackCommandDelegate;
- (CloudMediaServicesInterfaceXPCListener)initWithDelegate:(id)delegate;
- (void)getCloudExtensionConfigurationFor:(id)for homeUserID:(id)d endpointID:(id)iD withCompletion:(id)completion;
- (void)handleClientDisconnection:(id)disconnection;
- (void)pauseSample;
- (void)playSample:(id)sample;
- (void)sendPlaybackQueueToRemoteDestination:(id)destination withCompletion:(id)completion;
- (void)sendPlaybackQueueWithUserActivityDictionary:(id)dictionary forIntentID:(id)d toDestination:(id)destination withIntentData:(id)data prepareQueue:(BOOL)queue withCompletion:(id)completion;
- (void)setOverrideURL:(id)l;
- (void)setServerEnvironment:(id)environment;
- (void)stopAnalyticsWithIdentifier:(id)identifier;
- (void)submitAnalyticsForType:(id)type andIdentifier:(id)identifier eventType:(id)eventType atTime:(id)time withMetadata:(id)metadata;
@end

@implementation CloudMediaServicesInterfaceXPCListener

- (CloudMediaServicesInterfaceXPCListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = CloudMediaServicesInterfaceXPCListener;
  v5 = [(CloudMediaServicesInterfaceXPCListener *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.agora.server"];
    xpcListener = v5->_xpcListener;
    v5->_xpcListener = v6;

    [(NSXPCListener *)v5->_xpcListener setDelegate:v5];
    objc_storeWeak(&v5->_playbackCommandDelegate, delegateCopy);
    v8 = objc_opt_new();
    clients = v5->_clients;
    v5->_clients = v8;

    [(NSXPCListener *)v5->_xpcListener resume];
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.agora.client"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v11 = [CMSClient clientWithConnection:connectionCopy];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856B3778];
    v13 = [v12 classesForSelector:sel_sendPlaybackQueueWithUserActivityDictionary_forIntentID_toDestination_withIntentData_prepareQueue_withCompletion_ argumentIndex:3 ofReply:0];
    v14 = [v13 mutableCopy];

    [v14 addObject:objc_opt_class()];
    [v12 setClasses:v14 forSelector:sel_sendPlaybackQueueWithUserActivityDictionary_forIntentID_toDestination_withIntentData_prepareQueue_withCompletion_ argumentIndex:3 ofReply:0];
    [connectionCopy setExportedInterface:v12];
    [connectionCopy setExportedObject:self];
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke;
    v23[3] = &unk_278DDD288;
    objc_copyWeak(&v25, &location);
    v15 = connectionCopy;
    v24 = v15;
    [v15 setInterruptionHandler:v23];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke_67;
    v20[3] = &unk_278DDD288;
    objc_copyWeak(&v22, &location);
    v16 = v15;
    v21 = v16;
    [v16 setInvalidationHandler:v20];
    clients = [(CloudMediaServicesInterfaceXPCListener *)self clients];
    objc_sync_enter(clients);
    clients2 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
    [clients2 addObject:v11];

    objc_sync_exit(clients);
    [v16 resume];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _CMSILogingFacility(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CloudMediaServicesInterfaceXPCListener listener:v11 shouldAcceptNewConnection:?];
    }
  }

  return bOOLValue;
}

void __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _CMSILogingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2439AD000, v2, OS_LOG_TYPE_DEFAULT, "Interruption Handler called", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleClientDisconnection:*(a1 + 32)];
}

void __77__CloudMediaServicesInterfaceXPCListener_listener_shouldAcceptNewConnection___block_invoke_67(uint64_t a1)
{
  v2 = _CMSILogingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2439AD000, v2, OS_LOG_TYPE_DEFAULT, "Invalidation Handler called", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleClientDisconnection:*(a1 + 32)];
}

- (void)handleClientDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  clients = [(CloudMediaServicesInterfaceXPCListener *)self clients];
  objc_sync_enter(clients);
  clients2 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CloudMediaServicesInterfaceXPCListener_handleClientDisconnection___block_invoke;
  v10[3] = &unk_278DDD2B0;
  v7 = disconnectionCopy;
  v11 = v7;
  v8 = [clients2 na_firstObjectPassingTest:v10];

  if (v8)
  {
    clients3 = [(CloudMediaServicesInterfaceXPCListener *)self clients];
    [clients3 removeObject:v8];
  }

  objc_sync_exit(clients);
}

uint64_t __68__CloudMediaServicesInterfaceXPCListener_handleClientDisconnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)playSample:(id)sample
{
  sampleCopy = sample;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 playSample:sampleCopy];
  }
}

- (void)sendPlaybackQueueToRemoteDestination:(id)destination withCompletion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v8 sendPlaybackQueueToRemoteDestination:destinationCopy withCompletion:completionCopy];
  }
}

- (void)sendPlaybackQueueWithUserActivityDictionary:(id)dictionary forIntentID:(id)d toDestination:(id)destination withIntentData:(id)data prepareQueue:(BOOL)queue withCompletion:(id)completion
{
  queueCopy = queue;
  dictionaryCopy = dictionary;
  dCopy = d;
  destinationCopy = destination;
  dataCopy = data;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v19 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v19 sendPlaybackQueueWithUserActivityDictionary:dictionaryCopy forIntentID:dCopy toDestination:destinationCopy withIntentData:dataCopy prepareQueue:queueCopy withCompletion:completionCopy];
  }
}

- (void)pauseSample
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v4 pauseSample];
  }
}

- (void)setServerEnvironment:(id)environment
{
  environmentCopy = environment;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 setServerEnvironment:environmentCopy];
  }
}

- (void)setOverrideURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 setOverrideURL:lCopy];
  }
}

- (void)getCloudExtensionConfigurationFor:(id)for homeUserID:(id)d endpointID:(id)iD withCompletion:(id)completion
{
  forCopy = for;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v14 getCloudExtensionConfigurationFor:forCopy homeUserID:dCopy endpointID:iDCopy withCompletion:completionCopy];
  }
}

- (void)submitAnalyticsForType:(id)type andIdentifier:(id)identifier eventType:(id)eventType atTime:(id)time withMetadata:(id)metadata
{
  typeCopy = type;
  identifierCopy = identifier;
  eventTypeCopy = eventType;
  timeCopy = time;
  metadataCopy = metadata;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v17 submitAnalyticsForType:typeCopy andIdentifier:identifierCopy eventType:eventTypeCopy atTime:timeCopy withMetadata:metadataCopy];
  }
}

- (void)stopAnalyticsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_playbackCommandDelegate);
    [v5 stopAnalyticsWithIdentifier:identifierCopy];
  }
}

- (CloudMediaServicesInterfaceProtocol)playbackCommandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackCommandDelegate);

  return WeakRetained;
}

@end