@interface _GCHapticClientProxy
+ (_GCHapticClientProxy)clientProxyWithConnection:(id)connection server:(id)server clientID:(unint64_t)d;
- (BOOL)isMuted;
- (BOOL)isMutedForReason:(unint64_t)reason;
- (_GCHapticClientProxy)init;
- (double)totalLifetimeInSeconds;
- (id).cxx_construct;
- (id)_initWithConnection:(id)connection server:(id)server clientID:(unint64_t)d;
- (id)addInvalidationHandler:(id)handler;
- (void)_configureActuatorsLegacyWithOptions:(id)options;
- (void)addActiveTime:(double)time;
- (void)allocateClientResources:(id)resources;
- (void)configureWithOptions:(id)options reply:(id)reply;
- (void)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply;
- (void)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply;
- (void)dealloc;
- (void)debugExpectNotifyOnFinishAfter:(double)after reply:(id)reply;
- (void)detachSequence:(unint64_t)sequence;
- (void)getHapticLatency:(id)latency;
- (void)invalidate;
- (void)invalidateDueToControllerDisconnect;
- (void)loadHapticEvent:(id)event reply:(id)reply;
- (void)loadHapticSequenceFromData:(id)data reply:(id)reply;
- (void)loadHapticSequenceFromEvents:(id)events reply:(id)reply;
- (void)loadVibePattern:(id)pattern reply:(id)reply;
- (void)notifyClientCompletedWithError:(id)error;
- (void)notifyClientOnStopWithReason:(int64_t)reason error:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareHapticSequence:(unint64_t)sequence reply:(id)reply;
- (void)prewarm:(id)prewarm;
- (void)queryCapabilities:(id)capabilities reply:(id)reply;
- (void)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)refreshUserSettingForMuteHaptics;
- (void)releaseChannels;
- (void)releaseClientResources;
- (void)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)removeChannel:(unint64_t)channel reply:(id)reply;
- (void)removeCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)requestChannels:(unint64_t)channels reply:(id)reply;
- (void)setBundleIdentifier:(id)identifier;
- (void)setChannelEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 reply:(id)reply;
- (void)setComplete:(BOOL)complete;
- (void)setMute:(BOOL)mute forReason:(unint64_t)reason;
- (void)setPlayerBehavior:(unint64_t)behavior reply:(id)reply;
- (void)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channelIndex:(unint64_t)index reply:(id)reply;
- (void)startRunning:(id)running;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunning:(id)running;
- (void)teardownAndReleaseChannels;
@end

@implementation _GCHapticClientProxy

+ (_GCHapticClientProxy)clientProxyWithConnection:(id)connection server:(id)server clientID:(unint64_t)d
{
  connectionCopy = connection;
  serverCopy = server;
  v10 = [[self alloc] _initWithConnection:connectionCopy server:serverCopy clientID:d];

  return v10;
}

- (id)_initWithConnection:(id)connection server:(id)server clientID:(unint64_t)d
{
  connectionCopy = connection;
  serverCopy = server;
  v35.receiver = self;
  v35.super_class = _GCHapticClientProxy;
  v11 = [(_GCHapticClientProxy *)&v35 init];
  v12 = v11;
  if (v11)
  {
    v11->_applicationState = 0;
    objc_storeStrong(&v11->_server, server);
    objc_storeStrong(&v12->_connection, connection);
    v12->_clientID = d;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    hapticPlayers = v12->_hapticPlayers;
    v12->_hapticPlayers = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    actuators = v12->_actuators;
    v12->_actuators = array;

    *&v12->_shouldSquareContinuousIntensity = 257;
    v17 = GCLookupService();
    settingsStore = v12->_settingsStore;
    v12->_settingsStore = v17;

    profiles = [(GCSSettingsStoreService *)v12->_settingsStore profiles];
    [profiles addObserver:v12 forKeyPath:@"values" options:1 context:kGCSettingsContext];

    games = [(GCSSettingsStoreService *)v12->_settingsStore games];
    [games addObserver:v12 forKeyPath:@"values" options:1 context:kGCSettingsContext];

    v21 = objc_opt_new();
    invalidationHandlers = v12->_invalidationHandlers;
    v12->_invalidationHandlers = v21;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60___GCHapticClientProxy__initWithConnection_server_clientID___block_invoke;
    aBlock[3] = &unk_1E841A280;
    v23 = v12;
    v34 = v23;
    v24 = _Block_copy(aBlock);
    v25 = [(_GCIPCIncomingConnection *)v12->_connection addInvalidationHandler:v24];
    connectionInvalidationRegistration = v23->_connectionInvalidationRegistration;
    v23->_connectionInvalidationRegistration = v25;

    v27 = [(_GCIPCIncomingConnection *)v12->_connection addInterruptionHandler:v24];
    connectionInterruptedRegistration = v23->_connectionInterruptedRegistration;
    v23->_connectionInterruptedRegistration = v27;

    v29 = mach_absolute_time();
    v23->_initializationTime = v29 * 0.0000000416666667;
    isInternalBuild = gc_isInternalBuild(v29, v30);
    if (isInternalBuild)
    {
      getGCHapticsLogger(isInternalBuild);
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy _initWithConnection:server:clientID:];
    }
  }

  return v12;
}

- (_GCHapticClientProxy)init
{
  [(_GCHapticClientProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  profiles = [(GCSSettingsStoreService *)self->_settingsStore profiles];

  if (profiles)
  {
    profiles2 = [(GCSSettingsStoreService *)self->_settingsStore profiles];
    [profiles2 removeObserver:self forKeyPath:@"values" context:kGCSettingsContext];
  }

  games = [(GCSSettingsStoreService *)self->_settingsStore games];

  if (games)
  {
    games2 = [(GCSSettingsStoreService *)self->_settingsStore games];
    [games2 removeObserver:self forKeyPath:@"values" context:kGCSettingsContext];
  }

  v8 = +[GCAnalytics instance];
  bundleIdentifier = [(_GCHapticClientProxy *)self bundleIdentifier];
  v10 = [bundleIdentifier copy];
  controllerProductCategory = [(_GCHapticClientProxy *)self controllerProductCategory];
  v12 = [controllerProductCategory copy];
  totalPlayers = [(_GCHapticClientProxy *)self totalPlayers];
  [(_GCHapticClientProxy *)self totalLifetimeInSeconds];
  v15 = v14;
  [(_GCHapticClientProxy *)self activeLifetimeInSeconds];
  [v8 sendHapticsClientDestroyedEventForBundleID:v10 productCategory:v12 totalPlayers:totalPlayers sessionTotalDuration:v15 sessionActiveDuration:v16 terminationReason:@"Dealloc"];

  v17 = atomic_load(&self->_invalid);
  if ((v17 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCHapticClientProxy.mm" lineNumber:136 description:{@"%@ is being deallocated, but is still valid.", self}];
  }

  [(_GCHapticClientProxy *)self invalidate];
  [(_GCHapticClientProxy *)self releaseClientResources];
  v19.receiver = self;
  v19.super_class = _GCHapticClientProxy;
  [(_GCHapticClientProxy *)&v19 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kGCSettingsContext == context)
  {
    [(_GCHapticClientProxy *)self refreshUserSettingForMuteHaptics];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _GCHapticClientProxy;
    [(_GCHapticClientProxy *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)invalidateDueToControllerDisconnect
{
  v1 = getGCHapticsLogger(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)invalidate
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  p_bundleIdentifier = &self->_bundleIdentifier;
  if (!self->_bundleIdentifier)
  {
    objc_storeStrong(&self->_bundleIdentifier, identifier);
    if (([(NSString *)*p_bundleIdentifier isEqual:@"com.apple.TVSettings"]& 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSString *)*p_bundleIdentifier isEqual:@"com.apple.Preferences"];
    }

    self->_neverMute = v8;
    isInternalBuild = gc_isInternalBuild(v8, v7);
    if (isInternalBuild)
    {
      getGCHapticsLogger(isInternalBuild);
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy setBundleIdentifier:];
    }

    [(_GCHapticClientProxy *)self refreshUserSettingForMuteHaptics];
  }
}

- (void)refreshUserSettingForMuteHaptics
{
  v21 = *MEMORY[0x1E69E9840];
  [(_GCHapticClientProxy *)self setMute:0 forReason:4];
  v3 = [(GCSSettingsStoreService *)self->_settingsStore profileForPersistentControllerIdentifier:self->_persistentControllerIdentifier appBundleIdentifier:self->_bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    hapticStrength = [v3 hapticStrength];
    v7 = v6;
    isInternalBuild = gc_isInternalBuild(hapticStrength, v8);
    v10 = v7;
    v11 = v10;
    if (isInternalBuild)
    {
      v13 = getGCHapticsLogger(isInternalBuild);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = self->_bundleIdentifier;
        v15 = 138412802;
        selfCopy = self;
        v17 = 1024;
        v18 = v11 < 0.01;
        v19 = 2112;
        v20 = bundleIdentifier;
        _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "%@ setMute=%d for %@", &v15, 0x1Cu);
      }
    }

    [(_GCHapticClientProxy *)self setMute:v11 < 0.01 forReason:4];
    if (v11 >= 0.01)
    {
      *&v12 = v10;
      [(_GCHapticClientProxy *)self setHapticStrength:v12];
    }
  }
}

- (void)notifyClientOnStopWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  stopRunning = [(_GCHapticClientProxy *)self stopRunning];
  isInternalBuild = gc_isInternalBuild(stopRunning, v8);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy notifyClientOnStopWithReason:error:];
  }

  remoteProxy = [(_GCIPCIncomingConnection *)self->_connection remoteProxy];
  [remoteProxy clientStoppedForReason:reason error:errorCopy];
}

- (void)setMute:(BOOL)mute forReason:(unint64_t)reason
{
  v4 = self + 4 * reason;
  v5 = *(v4 + 25);
  if (mute)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  *(v4 + 25) = fmax(v6, 0.0);
  self->_dirtyMuteState = 1;
}

- (BOOL)isMutedForReason:(unint64_t)reason
{
  if (reason >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCHapticClientProxy.mm" lineNumber:250 description:@"Attempting to check if player is muted for invalid reason"];
  }

  return self->_muteReasons[reason] != 0;
}

- (BOOL)isMuted
{
  if (self->_dirtyMuteState)
  {
    self->_muted = 0;
    if (self->_neverMute)
    {
      return 0;
    }

    else
    {
      v2 = 0;
      while (!self->_muteReasons[v2])
      {
        if (++v2 == 5)
        {
          return 0;
        }
      }

      v3 = 1;
      self->_muted = 1;
    }
  }

  else
  {
    return self->_muted;
  }

  return v3;
}

- (void)notifyClientCompletedWithError:(id)error
{
  errorCopy = error;
  isInternalBuild = gc_isInternalBuild(errorCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy notifyClientCompletedWithError:];
  }

  remoteProxy = [(_GCIPCIncomingConnection *)self->_connection remoteProxy];
  [remoteProxy clientCompletedWithError:0];
}

- (void)setComplete:(BOOL)complete
{
  if (self->_complete != complete)
  {
    completeCopy = complete;
    if (gc_isInternalBuild(self, a2))
    {
      [_GCHapticClientProxy setComplete:?];
    }

    self->_complete = completeCopy;
    if (completeCopy)
    {
      [(_GCHapticClientProxy *)self notifyClientCompletedWithError:0];
    }
  }
}

- (double)totalLifetimeInSeconds
{
  result = 0.0;
  if (self->_initializationTime >= 0.0)
  {
    return mach_absolute_time() * 0.0000000416666667 - self->_initializationTime;
  }

  return result;
}

- (void)addActiveTime:(double)time
{
  if (time >= 0.0)
  {
    self->_activeLifetimeInSeconds = self->_activeLifetimeInSeconds + time;
  }
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 14) = 0;
  *(self + 60) = 0xFFFFFFFFLL;
  *(self + 9) = 0;
  *(self + 3) = &unk_1F4E38B18;
  return self;
}

- (id)addInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [handlerCopy copy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = atomic_load(&selfCopy->_invalid);
  if (v7)
  {
    objc_sync_exit(selfCopy);

    v8 = 0;
  }

  else
  {
    invalidationHandlers = [(_GCHapticClientProxy *)selfCopy invalidationHandlers];
    v10 = [invalidationHandlers mutableCopy];

    v11 = _Block_copy(v5);
    [v10 addObject:v11];

    [(_GCHapticClientProxy *)selfCopy setInvalidationHandlers:v10];
    objc_sync_exit(selfCopy);

    objc_initWeak(&location, selfCopy);
    v12 = [_GCObservation alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71___GCHapticClientProxy_InvalidationObservable__addInvalidationHandler___block_invoke;
    v14[3] = &unk_1E841B2C0;
    objc_copyWeak(&v16, &location);
    v15 = v5;
    v8 = [(_GCObservation *)v12 initWithCleanupHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)_configureActuatorsLegacyWithOptions:(id)options
{
  v35[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = [optionsCopy objectForKey:@"hapticEngineInfo"];
  if (!v6)
  {
    isInternalBuild = gc_isInternalBuild(0, v5);
    if (isInternalBuild)
    {
      v30 = getGCHapticsLogger(isInternalBuild);
      [_GCHapticClientProxy(HapticServer) _configureActuatorsLegacyWithOptions:v30];
    }

    v8 = [optionsCopy objectForKey:@"hapticEngineLabel"];
    if (!v8)
    {
      v21 = [optionsCopy objectForKey:@"hapticEngineName"];
      if (v21)
      {
        v8 = v21;
      }

      else
      {
        v8 = @"Unknown";
      }
    }

    v22 = [optionsCopy objectForKey:@"hapticEngineIndex"];
    if (v22)
    {
      v7 = v22;
    }

    else
    {
      v7 = &unk_1F4E8F1E8;
    }

    v18 = [optionsCopy objectForKey:@"hapticEngineType"];
    v23 = [[GCHapticActuator alloc] initWithLabel:v8 type:[v18 isEqualToString:@"LRA"] index:[(__CFString *)v7 integerValue]];
    v32 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    actuators = self->_actuators;
    self->_actuators = v24;

    v28 = gc_isInternalBuild(v26, v27);
    if (v28)
    {
      getGCHapticsLogger(v28);
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy(HapticServer) _configureActuatorsLegacyWithOptions:];
    }

    goto LABEL_18;
  }

  v31 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v31];
  v8 = v31;
  v35[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v10 = self->_actuators;
  self->_actuators = v9;

  if (!v8)
  {
    v29 = gc_isInternalBuild(v11, v12);
    if (!v29)
    {
      goto LABEL_20;
    }

    v18 = getGCHapticsLogger(v29);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v34 = v7;
    v19 = "Haptic actuator received: %@";
    goto LABEL_23;
  }

  v13 = +[GCAnalytics instance];
  v14 = currentProcessBundleIdentifier(v13);
  [v13 sendHapticsErrorRaisedEventFromSource:v14 productCategory:self->_controllerProductCategory errorType:@"ConfigureActuatorsLegacyFailure"];

  v17 = gc_isInternalBuild(v15, v16);
  if (v17)
  {
    v18 = getGCHapticsLogger(v17);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:

      goto LABEL_20;
    }

    *buf = 138412290;
    v34 = v8;
    v19 = "Failed to unarchive haptic actuator! %@";
LABEL_23:
    _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_18;
  }

LABEL_20:
}

- (void)configureWithOptions:(id)options reply:(id)reply
{
  v53 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v8);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
  }

  v10 = [optionsCopy objectForKey:@"controllerProductCategory"];
  controllerProductCategory = self->_controllerProductCategory;
  self->_controllerProductCategory = v10;

  if (self->_controllerProductCategory)
  {
    v14 = gc_isInternalBuild(v12, v13);
    if (v14)
    {
      getGCHapticsLogger(v14);
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
    }
  }

  v15 = [optionsCopy objectForKey:@"actuators"];
  if (v15)
  {
    v51 = 0;
    v16 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v15 error:&v51];
    v18 = v51;
    if (v18)
    {
      v19 = +[GCAnalytics instance];
      v20 = currentProcessBundleIdentifier(v19);
      [v19 sendHapticsErrorRaisedEventFromSource:v20 productCategory:self->_controllerProductCategory errorType:@"ConfigureActuatorsFailure"];

      v23 = gc_isInternalBuild(v21, v22);
      if (!v23)
      {
LABEL_16:

        goto LABEL_17;
      }

      p_super = getGCHapticsLogger(v23);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&dword_1D2CD5000, p_super, OS_LOG_TYPE_DEFAULT, "Failed to unarchive haptic actuator! %@", buf, 0xCu);
      }
    }

    else
    {
      v25 = gc_isInternalBuild(0, v17);
      if (v25)
      {
        getGCHapticsLogger(v25);
        objc_claimAutoreleasedReturnValue();
        [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
      }

      v26 = v16;
      p_super = &self->_actuators->super;
      self->_actuators = v26;
    }

    goto LABEL_16;
  }

  [(_GCHapticClientProxy *)self _configureActuatorsLegacyWithOptions:optionsCopy];
LABEL_17:
  v27 = [optionsCopy objectForKey:@"controllerIdentifier"];
  identifier = self->_identifier;
  self->_identifier = v27;

  if (self->_identifier)
  {
    v31 = gc_isInternalBuild(v29, v30);
    if (v31)
    {
      getGCHapticsLogger(v31);
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
    }
  }

  v32 = [optionsCopy objectForKey:@"persistentControllerIdentifier"];
  persistentControllerIdentifier = self->_persistentControllerIdentifier;
  self->_persistentControllerIdentifier = v32;

  v36 = self->_persistentControllerIdentifier;
  if (!v36)
  {
    self->_persistentControllerIdentifier = @"__Unknown";
    goto LABEL_24;
  }

  v37 = gc_isInternalBuild(v34, v35);
  if (v37)
  {
    v38 = getGCHapticsLogger(v37);
    [(_GCHapticClientProxy(HapticServer) *)v38 configureWithOptions:buf reply:?];
    v36 = *buf;
LABEL_24:
  }

  v39 = [optionsCopy objectForKey:@"isDummyServer"];
  v40 = v39;
  if (v39 && (v41 = [v39 BOOLValue], v41))
  {
    v43 = gc_isInternalBuild(v41, v42);
    if (v43)
    {
      getGCHapticsLogger(v43);
      objc_claimAutoreleasedReturnValue();
      [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
    }

    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  [(_GCHapticClientProxy *)self setMockClient:v44];
  v45 = [optionsCopy objectForKey:@"shouldSquareContinuousIntensity"];
  v46 = v45;
  if (v45)
  {
    bOOLValue = [v45 BOOLValue];
    if (bOOLValue)
    {
      v49 = gc_isInternalBuild(bOOLValue, v48);
      if (v49)
      {
        getGCHapticsLogger(v49);
        objc_claimAutoreleasedReturnValue();
        [_GCHapticClientProxy(HapticServer) configureWithOptions:reply:];
      }
    }
  }

  v50 = +[_GCHapticServerManager sharedInstance];
  [v50 hapticClientProxyInitialized:self];

  replyCopy[2](replyCopy, self->_clientID);
}

- (void)queryCapabilities:(id)capabilities reply:(id)reply
{
  capabilitiesCopy = capabilities;
  replyCopy = reply;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [capabilitiesCopy objectForKey:@"RequestedLocality"];
  firstObject = [(NSArray *)self->_actuators firstObject];
  v11 = [firstObject type] == 0;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62___GCHapticClientProxy_HapticServer__queryCapabilities_reply___block_invoke;
  v14[3] = &unk_1E841B2E8;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  v17 = v11;
  [capabilitiesCopy enumerateKeysAndObjectsUsingBlock:v14];
  replyCopy[2](replyCopy, v12, 0);
}

- (void)allocateClientResources:(id)resources
{
  resourcesCopy = resources;
  isInternalBuild = gc_isInternalBuild(resourcesCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) allocateClientResources:];
  }

  v11 = xpc_null_create();
  v10 = 5376;
  v7 = HapticSharedMemory::allocate(&self->_sharedMemory, &v11, &v10);
  if (v7)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.GameController.gamecontrollerd.haptics" code:v7 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  resourcesCopy[2](resourcesCopy, v11, v10, v8);

  v9 = v11;
  v11 = 0;
}

- (void)releaseClientResources
{
  if (gc_isInternalBuild(self, a2))
  {
    [(_GCHapticClientProxy(HapticServer) *)self releaseClientResources];
  }

  (*(self->_sharedMemory._vptr$SharableMemoryBase + 2))(&self->_sharedMemory);
}

- (void)getHapticLatency:(id)latency
{
  latencyCopy = latency;
  isInternalBuild = gc_isInternalBuild(latencyCopy, v4);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) getHapticLatency:];
  }

  latencyCopy[2](latencyCopy, 0, 15.0);
}

- (void)setPlayerBehavior:(unint64_t)behavior reply:(id)reply
{
  behaviorCopy = behavior;
  v21 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v7);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) setPlayerBehavior:reply:];
  }

  v9 = [(_GCHapticClientProxy *)self isMutedForReason:0];
  v11 = behaviorCopy & 0x40;
  if (v9 != v11 >> 6)
  {
    v12 = gc_isInternalBuild(v9, v10);
    if (v12)
    {
      v13 = getGCHapticsLogger(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        identifier = [(_GCHapticClientProxy *)self identifier];
        v15 = @"Unmute";
        if (v11)
        {
          v15 = @"Mute";
        }

        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = identifier;
        v16 = identifier;
        _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_INFO, "%@ haptics for client %@", &v17, 0x16u);
      }
    }

    [(_GCHapticClientProxy *)self setMute:v11 != 0 forReason:0];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)teardownAndReleaseChannels
{
  v3 = +[_GCHapticServerManager sharedInstance];
  runloopQueue = [v3 runloopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke;
  block[3] = &unk_1E841A280;
  block[4] = self;
  dispatch_async(runloopQueue, block);
}

- (void)releaseChannels
{
  v3 = +[_GCHapticServerManager sharedInstance];
  runloopQueue = [v3 runloopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke;
  block[3] = &unk_1E841A280;
  block[4] = self;
  dispatch_async(runloopQueue, block);
}

- (void)requestChannels:(unint64_t)channels reply:(id)reply
{
  replyCopy = reply;
  v8 = +[_GCHapticServerManager sharedInstance];
  runloopQueue = [v8 runloopQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke;
  v11[3] = &unk_1E841B310;
  channelsCopy = channels;
  v14 = a2;
  v11[4] = self;
  v12 = replyCopy;
  v10 = replyCopy;
  dispatch_async(runloopQueue, v11);
}

- (void)removeChannel:(unint64_t)channel reply:(id)reply
{
  replyCopy = reply;
  v7 = +[_GCHapticServerManager sharedInstance];
  runloopQueue = [v7 runloopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke;
  block[3] = &unk_1E841B338;
  v11 = replyCopy;
  channelCopy = channel;
  block[4] = self;
  v9 = replyCopy;
  dispatch_async(runloopQueue, block);
}

- (void)setChannelEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v10);
  if (isInternalBuild)
  {
    v19 = getGCHapticsLogger(isInternalBuild);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      clientID = self->_clientID;
      v27 = 134218496;
      v28 = clientID;
      v29 = 2048;
      behaviorCopy = behavior;
      v31 = 2048;
      v32 = a4;
      _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "HapticClient %lu - setChannelEventBehavior %lu, behavior %lu", &v27, 0x20u);
    }
  }

  hapticPlayers = self->_hapticPlayers;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
  v14 = [(NSMutableDictionary *)hapticPlayers objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v14 isMutedForReason:0];
    v17 = a4 & 2;
    if (v15 != v17 >> 1)
    {
      v18 = gc_isInternalBuild(v15, v16);
      if (v18)
      {
        v23 = getGCHapticsLogger(v18);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          identifier = [v14 identifier];
          v25 = identifier;
          v26 = @"Unmute";
          if (v17)
          {
            v26 = @"Mute";
          }

          v27 = 138412546;
          v28 = v26;
          v29 = 2112;
          behaviorCopy = identifier;
          _os_log_impl(&dword_1D2CD5000, v23, OS_LOG_TYPE_INFO, "%@ haptics for player %@", &v27, 0x16u);
        }
      }

      [v14 setMute:v17 != 0 forReason:0];
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCHapticClientProxy.mm" lineNumber:618 description:@"Attempting to setChannelEventBehavior for unbound channel!"];

    v22 = NSErrorFromOSStatus(-4804);
    (replyCopy)[2](replyCopy, v22);
  }
}

- (void)loadHapticEvent:(id)event reply:(id)reply
{
  eventCopy = event;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v7);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadHapticEvent:reply:];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, -1, v9);
}

- (void)loadHapticSequenceFromData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v7);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadHapticSequenceFromData:reply:];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, -1, -1, v9, -1.0);
}

- (void)loadHapticSequenceFromEvents:(id)events reply:(id)reply
{
  eventsCopy = events;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v7);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadHapticSequenceFromEvents:reply:];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, -1, -1, v9, -1.0);
}

- (void)loadVibePattern:(id)pattern reply:(id)reply
{
  patternCopy = pattern;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v7);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) loadVibePattern:reply:];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, -1, v9);
}

- (void)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channelIndex:(unint64_t)index reply:(id)reply
{
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v7);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) setSequenceEventBehavior:behavior:channelIndex:reply:];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, v9);
}

- (void)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  formatCopy = format;
  optionsCopy = options;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v16);
  if (isInternalBuild)
  {
    v19 = getGCHapticsLogger(isInternalBuild);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      clientID = self->_clientID;
      v21 = 134219010;
      v22 = clientID;
      v23 = 2112;
      v24 = eventCopy;
      v25 = 2112;
      v26 = formatCopy;
      v27 = 2048;
      framesCopy = frames;
      v29 = 2112;
      v30 = optionsCopy;
      _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "HapticClient %lu - createCustomAudioEvent %@ format %@, frames %lu, options %@", &v21, 0x34u);
    }
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, -1, v18);
}

- (void)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v10);
  if (isInternalBuild)
  {
    v13 = getGCHapticsLogger(isInternalBuild);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      clientID = self->_clientID;
      v15 = 134218498;
      v16 = clientID;
      v17 = 2048;
      eventCopy = event;
      v19 = 2112;
      v20 = optionsCopy;
      _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "HapticClient %lu - copyCustomAudioEvent %lu, options %@", &v15, 0x20u);
    }
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, -1, v12);
}

- (void)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) referenceCustomAudioEvent:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) releaseCustomAudioEvent:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)removeCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) removeCustomAudioEvent:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)prepareHapticSequence:(unint64_t)sequence reply:(id)reply
{
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) prepareHapticSequence:reply:];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  replyCopy[2](replyCopy, v7);
}

- (void)detachSequence:(unint64_t)sequence
{
  if (gc_isInternalBuild(self, a2))
  {
    [_GCHapticClientProxy(HapticServer) detachSequence:?];
  }
}

- (void)prewarm:(id)prewarm
{
  prewarmCopy = prewarm;
  isInternalBuild = gc_isInternalBuild(prewarmCopy, v4);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) prewarm:];
  }

  prewarmCopy[2](prewarmCopy, 0);
}

- (void)stopPrewarm
{
  if (gc_isInternalBuild(self, a2))
  {
    [(_GCHapticClientProxy(HapticServer) *)self stopPrewarm];
  }
}

- (void)startRunning:(id)running
{
  runningCopy = running;
  isInternalBuild = gc_isInternalBuild(runningCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) startRunning:];
  }

  self->_running = 1;
  runningCopy[2](runningCopy, 0);
}

- (void)stopRunning
{
  if (gc_isInternalBuild(self, a2))
  {
    [(_GCHapticClientProxy(HapticServer) *)self stopRunning];
  }

  *&self->_running = 0;
}

- (void)stopRunning:(id)running
{
  runningCopy = running;
  isInternalBuild = gc_isInternalBuild(runningCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) stopRunning:];
  }

  *&self->_running = 256;
  runningCopy[2](runningCopy, 0);
  self->_stopping = 0;
}

- (void)debugExpectNotifyOnFinishAfter:(double)after reply:(id)reply
{
  replyCopy = reply;
  isInternalBuild = gc_isInternalBuild(replyCopy, v5);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticClientProxy(HapticServer) debugExpectNotifyOnFinishAfter:reply:];
  }

  replyCopy[2](replyCopy);
}

- (void)_initWithConnection:server:clientID:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)setBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }
}

- (void)notifyClientOnStopWithReason:error:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)notifyClientCompletedWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)setComplete:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = getGCHapticsLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

@end