@interface MRAVRoutingDiscoverySessionWrapper
- (MRAVRoutingDiscoverySessionWrapper)initWithSession:(id)session configuration:(id)configuration;
- (id)addEndpointsAddedCallback:(id)callback;
- (id)addEndpointsChangedCallback:(id)callback;
- (id)addEndpointsModifiedCallback:(id)callback;
- (id)addEndpointsRemovedCallback:(id)callback;
- (id)addOutputDevicesAddedCallback:(id)callback;
- (id)addOutputDevicesChangedCallback:(id)callback;
- (id)addOutputDevicesModifiedCallback:(id)callback;
- (id)addOutputDevicesRemovedCallback:(id)callback;
- (id)description;
- (void)dealloc;
- (void)reevaluateDiscoveryModeForSession:(id)session;
- (void)removeEndpointsAddedCallback:(id)callback;
- (void)removeEndpointsChangedCallback:(id)callback;
- (void)removeEndpointsModifiedCallback:(id)callback;
- (void)removeEndpointsRemovedCallback:(id)callback;
- (void)removeOutputDevicesAddedCallback:(id)callback;
- (void)removeOutputDevicesChangedCallback:(id)callback;
- (void)removeOutputDevicesModifiedCallback:(id)callback;
- (void)removeOutputDevicesRemovedCallback:(id)callback;
- (void)setAlwaysAllowUpdates:(BOOL)updates;
- (void)setCachedDiscoveryEnabled:(BOOL)enabled;
- (void)setConfiguration:(id)configuration;
- (void)setDiscoveryMode:(unsigned int)mode;
- (void)setRoutingContextUID:(id)d;
- (void)setSharedSession:(id)session;
- (void)setTargetAudioSessionID:(unsigned int)d;
- (void)transferCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferEndpointsAddedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferEndpointsChangedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferEndpointsModifiedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferEndpointsRemovedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferOutputDevicesAddedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferOutputDevicesChangedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferOutputDevicesModifiedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)transferOutputDevicesRemovedCallbacksFromSession:(id)session toSession:(id)toSession;
- (void)updateObserversWithPreviousSession:(id)session;
- (void)updateSharedSession;
@end

@implementation MRAVRoutingDiscoverySessionWrapper

- (void)updateSharedSession
{
  v3 = [MRAVRoutingDiscoverySession sharedDiscoverySessionForClass:objc_opt_class() configuration:self->_configuration];
  [(MRAVRoutingDiscoverySessionWrapper *)self setSharedSession:v3];
}

- (MRAVRoutingDiscoverySessionWrapper)initWithSession:(id)session configuration:(id)configuration
{
  v38 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  objc_storeStrong(&self->_sharedSession, session);
  configurationCopy = configuration;
  v9 = [configurationCopy copy];

  configuration = self->_configuration;
  self->_configuration = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  endpointsChangedCallbacks = self->_endpointsChangedCallbacks;
  self->_endpointsChangedCallbacks = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  endpointsAddedCallbacks = self->_endpointsAddedCallbacks;
  self->_endpointsAddedCallbacks = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  endpointsRemovedCallbacks = self->_endpointsRemovedCallbacks;
  self->_endpointsRemovedCallbacks = v15;

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  endpointsModifiedCallbacks = self->_endpointsModifiedCallbacks;
  self->_endpointsModifiedCallbacks = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputDevicesChangedCallbacks = self->_outputDevicesChangedCallbacks;
  self->_outputDevicesChangedCallbacks = v19;

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputDevicesAddedCallbacks = self->_outputDevicesAddedCallbacks;
  self->_outputDevicesAddedCallbacks = v21;

  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputDevicesRemovedCallbacks = self->_outputDevicesRemovedCallbacks;
  self->_outputDevicesRemovedCallbacks = v23;

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputDevicesModifiedCallbacks = self->_outputDevicesModifiedCallbacks;
  self->_outputDevicesModifiedCallbacks = v25;

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  endpointsTokensMap = self->_endpointsTokensMap;
  self->_endpointsTokensMap = v27;

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputDevicesTokensMap = self->_outputDevicesTokensMap;
  self->_outputDevicesTokensMap = v29;

  v31 = _MRLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    sharedSession = self->_sharedSession;
    v34 = 134218242;
    selfCopy = self;
    v36 = 2114;
    v37 = sharedSession;
    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_INFO, "[MRAVRoutingDiscoverySessionWrapper] <%p> Init with shared session: %{public}@", &v34, 0x16u);
  }

  [(MRAVRoutingDiscoverySessionWrapper *)self updateObserversWithPreviousSession:0];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sharedSession = [(MRAVRoutingDiscoverySessionWrapper *)self sharedSession];
  v7 = [v3 stringWithFormat:@"<%@: %p> sharedSession: %@", v5, self, sharedSession];

  return v7;
}

- (void)setDiscoveryMode:(unsigned int)mode
{
  v3 = *&mode;
  obj = self;
  objc_sync_enter(obj);
  obj->_discoveryMode = v3;
  v4 = obj->_sharedSession;
  objc_sync_enter(v4);
  clientDiscoveryStates = [(MRAVRoutingDiscoverySession *)obj->_sharedSession clientDiscoveryStates];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [clientDiscoveryStates setObject:v6 forKey:obj];

  [(MRAVRoutingDiscoverySessionWrapper *)obj reevaluateDiscoveryModeForSession:obj->_sharedSession];
  objc_sync_exit(v4);

  objc_sync_exit(obj);
}

- (void)setTargetAudioSessionID:(unsigned int)d
{
  v3 = *&d;
  obj = self;
  objc_sync_enter(obj);
  if ([(MRAVRoutingDiscoverySessionConfiguration *)obj->_configuration targetAudioSessionID]!= v3)
  {
    [(MRAVRoutingDiscoverySessionConfiguration *)obj->_configuration setTargetAudioSessionID:v3];
    [(MRAVRoutingDiscoverySessionWrapper *)obj updateSharedSession];
  }

  objc_sync_exit(obj);
}

- (void)setRoutingContextUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  routingContextUID = [(MRAVRoutingDiscoverySessionConfiguration *)selfCopy->_configuration routingContextUID];

  if (routingContextUID != dCopy)
  {
    [(MRAVRoutingDiscoverySessionConfiguration *)selfCopy->_configuration setRoutingContextUID:dCopy];
    [(MRAVRoutingDiscoverySessionWrapper *)selfCopy updateSharedSession];
  }

  objc_sync_exit(selfCopy);
}

- (void)setAlwaysAllowUpdates:(BOOL)updates
{
  updatesCopy = updates;
  obj = self;
  objc_sync_enter(obj);
  if ([(MRAVRoutingDiscoverySessionConfiguration *)obj->_configuration alwaysAllowUpdates]!= updatesCopy)
  {
    [(MRAVRoutingDiscoverySessionConfiguration *)obj->_configuration setAlwaysAllowUpdates:updatesCopy];
    [(MRAVRoutingDiscoverySessionWrapper *)obj updateSharedSession];
  }

  objc_sync_exit(obj);
}

- (void)setCachedDiscoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  obj = self;
  objc_sync_enter(obj);
  if ([(MRAVRoutingDiscoverySessionConfiguration *)obj->_configuration cachedDiscoveryEnabled]!= enabledCopy)
  {
    [(MRAVRoutingDiscoverySessionConfiguration *)obj->_configuration setCachedDiscoveryEnabled:enabledCopy];
    [(MRAVRoutingDiscoverySessionWrapper *)obj updateSharedSession];
  }

  objc_sync_exit(obj);
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(MRAVRoutingDiscoverySessionConfiguration *)selfCopy->_configuration isEqual:configurationCopy])
  {
    objc_storeStrong(&selfCopy->_configuration, configuration);
    [(MRAVRoutingDiscoverySessionWrapper *)selfCopy updateSharedSession];
  }

  objc_sync_exit(selfCopy);
}

- (id)addEndpointsChangedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addEndpointsChangedCallback:callbackCopy];
  v7 = [callbackCopy copy];
  v8 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_endpointsChangedCallbacks setObject:v8 forKeyedSubscript:v6];

  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:v6 forKeyedSubscript:v6];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)addEndpointsAddedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addEndpointsAddedCallback:callbackCopy];
  v7 = [callbackCopy copy];
  v8 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_endpointsAddedCallbacks setObject:v8 forKeyedSubscript:v6];

  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:v6 forKeyedSubscript:v6];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)addEndpointsRemovedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addEndpointsRemovedCallback:callbackCopy];
  v7 = [callbackCopy copy];
  v8 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_endpointsRemovedCallbacks setObject:v8 forKeyedSubscript:v6];

  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:v6 forKeyedSubscript:v6];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)addEndpointsModifiedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addEndpointsModifiedCallback:callbackCopy];
  v7 = [callbackCopy copy];
  v8 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_endpointsModifiedCallbacks setObject:v8 forKeyedSubscript:v6];

  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:v6 forKeyedSubscript:v6];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)addOutputDevicesChangedCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesChangedCallback___block_invoke;
  v12[3] = &unk_1E769B7D8;
  v5 = callbackCopy;
  v13 = v5;
  objc_copyWeak(&v14, &location);
  v6 = MEMORY[0x1A58E3570](v12);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addOutputDevicesChangedCallback:v6];
  v9 = [v6 copy];
  v10 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_outputDevicesChangedCallbacks setObject:v10 forKeyedSubscript:v8];

  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:v8 forKeyedSubscript:v8];
  objc_sync_exit(selfCopy);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __70__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesChangedCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained configuration];
  v6 = [v4 resultsFromConfiguration:v5];

  (*(v3 + 16))(v3, v6);
}

- (id)addOutputDevicesAddedCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesAddedCallback___block_invoke;
  v12[3] = &unk_1E769B7D8;
  v5 = callbackCopy;
  v13 = v5;
  objc_copyWeak(&v14, &location);
  v6 = MEMORY[0x1A58E3570](v12);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addOutputDevicesAddedCallback:v6];
  v9 = [v6 copy];
  v10 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_outputDevicesAddedCallbacks setObject:v10 forKeyedSubscript:v8];

  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:v8 forKeyedSubscript:v8];
  objc_sync_exit(selfCopy);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __68__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesAddedCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained configuration];
  v6 = [v4 resultsFromConfiguration:v5];

  (*(v3 + 16))(v3, v6);
}

- (id)addOutputDevicesRemovedCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesRemovedCallback___block_invoke;
  v12[3] = &unk_1E769B7D8;
  v5 = callbackCopy;
  v13 = v5;
  objc_copyWeak(&v14, &location);
  v6 = MEMORY[0x1A58E3570](v12);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addOutputDevicesRemovedCallback:v6];
  v9 = [v6 copy];
  v10 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_outputDevicesRemovedCallbacks setObject:v10 forKeyedSubscript:v8];

  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:v8 forKeyedSubscript:v8];
  objc_sync_exit(selfCopy);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __70__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesRemovedCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained configuration];
  v6 = [v4 resultsFromConfiguration:v5];

  (*(v3 + 16))(v3, v6);
}

- (id)addOutputDevicesModifiedCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesModifiedCallback___block_invoke;
  v12[3] = &unk_1E769B7D8;
  v5 = callbackCopy;
  v13 = v5;
  objc_copyWeak(&v14, &location);
  v6 = MEMORY[0x1A58E3570](v12);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession addOutputDevicesModifiedCallback:v6];
  v9 = [v6 copy];
  v10 = MEMORY[0x1A58E3570]();
  [(NSMutableDictionary *)selfCopy->_outputDevicesModifiedCallbacks setObject:v10 forKeyedSubscript:v8];

  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:v8 forKeyedSubscript:v8];
  objc_sync_exit(selfCopy);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __71__MRAVRoutingDiscoverySessionWrapper_addOutputDevicesModifiedCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained configuration];
  v6 = [v4 resultsFromConfiguration:v5];

  (*(v3 + 16))(v3, v6);
}

- (void)removeEndpointsChangedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_endpointsTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeEndpointsChangedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_endpointsChangedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeEndpointsAddedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_endpointsTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeEndpointsAddedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_endpointsAddedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeEndpointsRemovedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_endpointsTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeEndpointsRemovedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_endpointsRemovedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeEndpointsModifiedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_endpointsTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeEndpointsModifiedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_endpointsModifiedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_endpointsTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeOutputDevicesChangedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeOutputDevicesChangedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_outputDevicesChangedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeOutputDevicesAddedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeOutputDevicesAddedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_outputDevicesAddedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeOutputDevicesRemovedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeOutputDevicesRemovedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_outputDevicesRemovedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeOutputDevicesModifiedCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap objectForKeyedSubscript:callbackCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = callbackCopy;
  }

  v7 = v6;

  [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession removeOutputDevicesModifiedCallback:v7];
  [(NSMutableDictionary *)selfCopy->_outputDevicesModifiedCallbacks setObject:0 forKeyedSubscript:callbackCopy];
  [(NSMutableDictionary *)selfCopy->_outputDevicesTokensMap setObject:0 forKeyedSubscript:callbackCopy];

  objc_sync_exit(selfCopy);
}

- (void)transferEndpointsChangedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_endpointsChangedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_endpointsTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_endpointsChangedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeEndpointsChangedCallback:v11];
        v14 = [toSessionCopy addEndpointsChangedCallback:v13];
        [(NSMutableDictionary *)self->_endpointsTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferEndpointsAddedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_endpointsAddedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_endpointsTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_endpointsAddedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeEndpointsAddedCallback:v11];
        v14 = [toSessionCopy addEndpointsAddedCallback:v13];
        [(NSMutableDictionary *)self->_endpointsTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferEndpointsRemovedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_endpointsRemovedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_endpointsTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_endpointsRemovedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeEndpointsRemovedCallback:v11];
        v14 = [toSessionCopy addEndpointsRemovedCallback:v13];
        [(NSMutableDictionary *)self->_endpointsTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferEndpointsModifiedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_endpointsModifiedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_endpointsTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_endpointsModifiedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeEndpointsModifiedCallback:v11];
        v14 = [toSessionCopy addEndpointsModifiedCallback:v13];
        [(NSMutableDictionary *)self->_endpointsTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferOutputDevicesChangedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_outputDevicesChangedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_outputDevicesTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_outputDevicesChangedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeOutputDevicesChangedCallback:v11];
        v14 = [toSessionCopy addOutputDevicesChangedCallback:v13];
        [(NSMutableDictionary *)self->_outputDevicesTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferOutputDevicesAddedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_outputDevicesAddedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_outputDevicesTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_outputDevicesAddedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeOutputDevicesAddedCallback:v11];
        v14 = [toSessionCopy addOutputDevicesAddedCallback:v13];
        [(NSMutableDictionary *)self->_outputDevicesTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferOutputDevicesRemovedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_outputDevicesRemovedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_outputDevicesTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_outputDevicesRemovedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeOutputDevicesRemovedCallback:v11];
        v14 = [toSessionCopy addOutputDevicesRemovedCallback:v13];
        [(NSMutableDictionary *)self->_outputDevicesTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferOutputDevicesModifiedCallbacksFromSession:(id)session toSession:(id)toSession
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_outputDevicesModifiedCallbacks;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_outputDevicesTokensMap objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_outputDevicesModifiedCallbacks objectForKeyedSubscript:v10];
        v13 = MEMORY[0x1A58E3570]();

        [sessionCopy removeOutputDevicesModifiedCallback:v11];
        v14 = [toSessionCopy addOutputDevicesModifiedCallback:v13];
        [(NSMutableDictionary *)self->_outputDevicesTokensMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)transferCallbacksFromSession:(id)session toSession:(id)toSession
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  toSessionCopy = toSession;
  v8 = _MRLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 134218498;
    selfCopy = self;
    v11 = 2114;
    v12 = sessionCopy;
    v13 = 2114;
    v14 = toSessionCopy;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_INFO, "[MRAVRoutingDiscoverySessionWrapper] <%p> Transferring callbacks from: %{public}@ to: %{public}@", &v9, 0x20u);
  }

  [(MRAVRoutingDiscoverySessionWrapper *)self transferEndpointsChangedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferEndpointsAddedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferEndpointsRemovedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferEndpointsModifiedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferOutputDevicesChangedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferOutputDevicesAddedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferOutputDevicesRemovedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
  [(MRAVRoutingDiscoverySessionWrapper *)self transferOutputDevicesModifiedCallbacksFromSession:sessionCopy toSession:toSessionCopy];
}

- (void)updateObserversWithPreviousSession:(id)session
{
  v102 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  availableEndpoints = [sessionCopy availableEndpoints];
  v6 = availableEndpoints;
  v7 = MEMORY[0x1E695E0F0];
  if (availableEndpoints)
  {
    v8 = availableEndpoints;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  v59 = sessionCopy;
  availableOutputDevices = [sessionCopy availableOutputDevices];
  v11 = availableOutputDevices;
  if (availableOutputDevices)
  {
    v12 = availableOutputDevices;
  }

  else
  {
    v12 = v7;
  }

  v61 = v12;

  availableEndpoints2 = [(MRAVRoutingDiscoverySession *)self->_sharedSession availableEndpoints];
  availableOutputDevices2 = [(MRAVRoutingDiscoverySession *)self->_sharedSession availableOutputDevices];
  v15 = _MRLogForCategory(0);
  v60 = v9;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134219008;
    selfCopy = self;
    v94 = 2048;
    v95 = [v9 count];
    v96 = 2048;
    v97 = [availableEndpoints2 count];
    v98 = 2048;
    v99 = [v61 count];
    v100 = 2048;
    v101 = [availableOutputDevices2 count];
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_INFO, "[MRAVRoutingDiscoverySessionWrapper] <%p> Notifying existing observers from %lu to %lu endpoints and from %lu to %lu output devices", buf, 0x34u);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v16 = self->_endpointsRemovedCallbacks;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v83;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v83 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(NSMutableDictionary *)self->_endpointsRemovedCallbacks objectForKeyedSubscript:*(*(&v82 + 1) + 8 * i)];
        (v21)[2](v21, v9);
      }

      v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v18);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v22 = self->_endpointsAddedCallbacks;
  v23 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v79;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v79 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [(NSMutableDictionary *)self->_endpointsAddedCallbacks objectForKeyedSubscript:*(*(&v78 + 1) + 8 * j)];
        (v27)[2](v27, availableEndpoints2);
      }

      v24 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v24);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v28 = self->_endpointsChangedCallbacks;
  v29 = [(NSMutableDictionary *)v28 countByEnumeratingWithState:&v74 objects:v89 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v75;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [(NSMutableDictionary *)self->_endpointsChangedCallbacks objectForKeyedSubscript:*(*(&v74 + 1) + 8 * k)];
        (v33)[2](v33, availableEndpoints2);
      }

      v30 = [(NSMutableDictionary *)v28 countByEnumeratingWithState:&v74 objects:v89 count:16];
    }

    while (v30);
  }

  v58 = availableEndpoints2;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v34 = self->_outputDevicesRemovedCallbacks;
  v35 = [(NSMutableDictionary *)v34 countByEnumeratingWithState:&v70 objects:v88 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v71;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v71 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [(NSMutableDictionary *)self->_outputDevicesRemovedCallbacks objectForKeyedSubscript:*(*(&v70 + 1) + 8 * m), v58];
        configuration = [(MRAVRoutingDiscoverySessionWrapper *)self configuration];
        v41 = [v61 resultsFromConfiguration:configuration];
        (v39)[2](v39, v41);
      }

      v36 = [(NSMutableDictionary *)v34 countByEnumeratingWithState:&v70 objects:v88 count:16];
    }

    while (v36);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v42 = self->_outputDevicesAddedCallbacks;
  v43 = [(NSMutableDictionary *)v42 countByEnumeratingWithState:&v66 objects:v87 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v67;
    do
    {
      for (n = 0; n != v44; ++n)
      {
        if (*v67 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [(NSMutableDictionary *)self->_outputDevicesAddedCallbacks objectForKeyedSubscript:*(*(&v66 + 1) + 8 * n), v58];
        configuration2 = [(MRAVRoutingDiscoverySessionWrapper *)self configuration];
        v49 = [availableOutputDevices2 resultsFromConfiguration:configuration2];
        (v47)[2](v47, v49);
      }

      v44 = [(NSMutableDictionary *)v42 countByEnumeratingWithState:&v66 objects:v87 count:16];
    }

    while (v44);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v50 = self->_outputDevicesChangedCallbacks;
  v51 = [(NSMutableDictionary *)v50 countByEnumeratingWithState:&v62 objects:v86 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v63;
    do
    {
      for (ii = 0; ii != v52; ++ii)
      {
        if (*v63 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [(NSMutableDictionary *)self->_outputDevicesChangedCallbacks objectForKeyedSubscript:*(*(&v62 + 1) + 8 * ii), v58];
        configuration3 = [(MRAVRoutingDiscoverySessionWrapper *)self configuration];
        v57 = [availableOutputDevices2 resultsFromConfiguration:configuration3];
        (v55)[2](v55, v57);
      }

      v52 = [(NSMutableDictionary *)v50 countByEnumeratingWithState:&v62 objects:v86 count:16];
    }

    while (v52);
  }
}

- (void)setSharedSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sharedSession = selfCopy->_sharedSession;
  if (sharedSession)
  {
    v8 = sharedSession;
    objc_sync_enter(v8);
    clientDiscoveryStates = [(MRAVRoutingDiscoverySession *)selfCopy->_sharedSession clientDiscoveryStates];
    [clientDiscoveryStates removeObjectForKey:selfCopy];

    [(MRAVRoutingDiscoverySessionWrapper *)selfCopy transferCallbacksFromSession:selfCopy->_sharedSession toSession:sessionCopy];
    [(MRAVRoutingDiscoverySessionWrapper *)selfCopy reevaluateDiscoveryModeForSession:selfCopy->_sharedSession];
    objc_sync_exit(v8);

    sharedSession = selfCopy->_sharedSession;
  }

  v10 = sharedSession;
  objc_storeStrong(&selfCopy->_sharedSession, session);
  if (selfCopy->_sharedSession)
  {
    v11 = _MRLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = selfCopy->_sharedSession;
      v13 = 134218242;
      v14 = selfCopy;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_INFO, "[MRAVRoutingDiscoverySessionWrapper] <%p> Changed to shared session: %{public}@", &v13, 0x16u);
    }

    [(MRAVRoutingDiscoverySessionWrapper *)selfCopy setDiscoveryMode:selfCopy->_discoveryMode];
  }

  [(MRAVRoutingDiscoverySessionWrapper *)selfCopy updateObserversWithPreviousSession:v10];

  objc_sync_exit(selfCopy);
}

- (void)reevaluateDiscoveryModeForSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientDiscoveryStates = [sessionCopy clientDiscoveryStates];
  objectEnumerator = [clientDiscoveryStates objectEnumerator];

  v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    intValue = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (intValue <= [v11 intValue])
        {
          intValue = [v11 intValue];
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    intValue = 0;
  }

  [sessionCopy setDiscoveryMode:intValue];
}

- (void)dealloc
{
  [(MRAVRoutingDiscoverySessionWrapper *)self setSharedSession:0];
  v3.receiver = self;
  v3.super_class = MRAVRoutingDiscoverySessionWrapper;
  [(MRAVRoutingDiscoverySessionWrapper *)&v3 dealloc];
}

@end