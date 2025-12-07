@interface BKSMousePointerService
+ (id)new;
+ (id)sharedInstance;
- (BKSMousePointerDevicePreferences)globalDevicePreferences;
- (BKSMousePointerService)init;
- (CGPoint)globalPointerPosition;
- (CGPoint)normalizedGlobalPointerPosition;
- (id)_init;
- (id)_locked_infoForDisplayUUID:(id)d createIfNeeded:(BOOL)needed;
- (id)_locked_serverTarget;
- (id)_unlocked_serverTarget;
- (id)acquireButtonDownPointerRepositionAssertionForReason:(id)reason contextRelativePointerPosition:(id)position onDisplay:(id)display restrictingToPID:(int)d;
- (id)addPointerDeviceObserver:(id)observer;
- (id)addPointerPreferencesObserver:(id)observer;
- (id)pointerSuppressionAssertionOnDisplay:(id)display forReason:(id)reason withOptionsMask:(unint64_t)mask;
- (id)preferencesForDevice:(id)device;
- (id)requestGlobalMouseEventsForDisplay:(id)display targetContextID:(unsigned int)d options:(id)options;
- (void)_activateServerConnection:(id)connection;
- (void)_locked_pointingDevicesDidChange:(id)change;
- (void)_locked_reactivateConnection;
- (void)_locked_sendCurrentAssertionParameters:(id)parameters forDisplayUUID:(id)d;
- (void)_locked_setMousePointerDeviceObservationEnabled:(BOOL)enabled;
- (void)_locked_setMousePointerPreferencesObservationEnabled:(BOOL)enabled;
- (void)_locked_updateEventRoutesFromContext:(id)context forDisplayUUID:(id)d;
- (void)_locked_updateObserver:(id)observer withPointingDevices:(id)devices;
- (void)_locked_updateServerWithPointerDeviceObservationState;
- (void)_locked_updateServerWithPreferencesObservationState;
- (void)dealloc;
- (void)getHitTestContextsAtPoint:(id)point withAdditionalContexts:(id)contexts onDisplay:(id)display withCompletion:(id)completion;
- (void)pointerGlobalDevicePreferencesDidChange:(id)change;
- (void)pointingDevicesDidChange:(id)change;
- (void)setContextRelativePointerPosition:(id)position onDisplay:(id)display withAnimationParameters:(id)parameters restrictingToPID:(int)d;
- (void)setContextRelativePointerPosition:(id)position withInitialVelocity:(id)velocity onDisplay:(id)display withDecelerationRate:(double)rate restrictingToPID:(int)d;
- (void)setGlobalDevicePreferences:(id)preferences;
- (void)setGlobalPointerPosition:(CGPoint)position;
- (void)setPointerPosition:(CGPoint)position onDisplay:(id)display withAnimationParameters:(id)parameters;
- (void)setPreferences:(id)preferences forDevice:(id)device;
@end

@implementation BKSMousePointerService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5408 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5408, &__block_literal_global_5409);
  }

  v3 = sharedInstance_service_5410;

  return v3;
}

uint64_t __40__BKSMousePointerService_sharedInstance__block_invoke()
{
  v0 = [[BKSMousePointerService alloc] _init];
  v1 = sharedInstance_service_5410;
  sharedInstance_service_5410 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_init
{
  v24.receiver = self;
  v24.super_class = BKSMousePointerService;
  v2 = [(BKSMousePointerService *)&v24 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698F4D0];
    v5 = +[BKSMousePointerServiceSessionSpecification serviceQuality];
    v6 = [v4 queueWithName:? serviceQuality:?];
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v6;

    v8 = MEMORY[0x1E698E658];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __31__BKSMousePointerService__init__block_invoke;
    v22 = &unk_1E6F46D70;
    v9 = v3;
    v23 = v9;
    v10 = [v8 assertionWithIdentifier:? stateDidChangeHandler:?];
    suppressMouseEvents = v9->_suppressMouseEvents;
    v9->_suppressMouseEvents = v10;

    v12 = v9->_suppressMouseEvents;
    v13 = BKLogMousePointer();
    [(BSCompoundAssertion *)v12 setLog:?];

    v14 = +[BKSHIDServiceConnectionFactory sharedInstance];
    v15 = +[BKSMousePointerServiceSessionSpecification identifier];
    userInteractiveMultiplexer = [MEMORY[0x1E698F4E0] userInteractiveMultiplexer];
    v17 = [v14 clientConnectionForServiceWithName:? multiplexer:?];

    [(BKSMousePointerService *)v9 _activateServerConnection:?];
  }

  return v3;
}

- (void)_locked_updateServerWithPointerDeviceObservationState
{
  os_unfair_lock_assert_owner(&self->_lock);
  isObservingDeviceConnection = self->_isObservingDeviceConnection;
  _locked_serverTarget = [(BKSMousePointerService *)self _locked_serverTarget];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = [_locked_serverTarget setMousePointerDeviceObservationEnabled:?];

  if (isObservingDeviceConnection)
  {
    [(BKSMousePointerService *)self _locked_pointingDevicesDidChange:?];
  }
}

- (id)_locked_serverTarget
{
  os_unfair_lock_assert_owner(&self->_lock);
  connection = self->_connection;

  return [(BSServiceInitiatingConnection *)connection remoteTarget];
}

- (void)pointerGlobalDevicePreferencesDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  context = [(BSCompoundAssertion *)self->_preferencesObservers context];
  v6 = [context copy];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        observer = [*(*(&v13 + 1) + 8 * v11) observer];
        [observer mousePointerGlobalDevicePreferencesDidChange:?];

        v11 = (v11 + 1);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }
}

- (void)pointingDevicesDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(BKSMousePointerService *)self _locked_pointingDevicesDidChange:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_activateServerConnection:(id)connection
{
  v11 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (connectionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_connection, connection);
    [(BSServiceInitiatingConnection *)self->_connection configure:?];
    v6 = BKLogMousePointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      connection = self->_connection;
      *buf = 138543362;
      connectionCopy2 = connection;
      _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    [connectionCopy activate];
  }

  else
  {
    v8 = BKLogMousePointer();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v8, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
    }
  }
}

void __52__BKSMousePointerService__activateServerConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKSMousePointerServiceSessionSpecification interface];
  [v3 setInterface:?];

  [v3 setInterfaceTarget:?];
  [v3 setQueue:?];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __52__BKSMousePointerService__activateServerConnection___block_invoke_2;
  v8 = &unk_1E6F474B0;
  v9 = *(a1 + 32);
  [v3 setInterruptionHandler:?];
  [v3 setInvalidationHandler:?];
}

void __52__BKSMousePointerService__activateServerConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogMousePointer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v7, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DFD8] set];
  [v5 _locked_pointingDevicesDidChange:?];

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  [v3 activate];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(a1 + 32) _locked_reactivateConnection];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

void __52__BKSMousePointerService__activateServerConnection___block_invoke_140(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = BKLogMousePointer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "Received invalidation for connection: %{public}@", &v4, 0xCu);
  }
}

- (void)_locked_reactivateConnection
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSMutableDictionary *)self->_displayUUIDToPerDisplayInfo enumerateKeysAndObjectsUsingBlock:?];
  [(BKSMousePointerService *)self _locked_updateServerWithPointerDeviceObservationState];
  [(BKSMousePointerService *)self _locked_updateServerWithPreferencesObservationState];
}

void __54__BKSMousePointerService__locked_reactivateConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 pointerSuppressionAssertion];
  if (v6)
  {
    [*(a1 + 32) _locked_sendCurrentAssertionParameters:? forDisplayUUID:?];
  }

  v7 = [v5 globalEventsAssertion];
  if (v7)
  {
    [*(a1 + 32) _locked_updateEventRoutesFromContext:? forDisplayUUID:?];
  }
}

- (void)_locked_updateEventRoutesFromContext:(id)context forDisplayUUID:(id)d
{
  dCopy = d;
  contextCopy = context;
  _locked_serverTarget = [(BKSMousePointerService *)self _locked_serverTarget];
  context = [contextCopy context];

  [_locked_serverTarget setGlobalPointerEventRoutes:? forDisplay:?];
}

- (void)_locked_sendCurrentAssertionParameters:(id)parameters forDisplayUUID:(id)d
{
  dCopy = d;
  context = [parameters context];
  v9 = [context bs_reduce:? block:?];

  _locked_serverTarget = [(BKSMousePointerService *)self _locked_serverTarget];
  [_locked_serverTarget applyAssertionParametersOnDisplay:? withOptionsMask:?];
}

void *__80__BKSMousePointerService__locked_sendCurrentAssertionParameters_forDisplayUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 unsignedIntegerValue];
  [v5 suppressionOptions];

  return [v4 numberWithUnsignedInteger:?];
}

- (id)_locked_infoForDisplayUUID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_displayUUIDToPerDisplayInfo objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(BKSMousePointerPerDisplayInfo);
    displayUUIDToPerDisplayInfo = self->_displayUUIDToPerDisplayInfo;
    if (!displayUUIDToPerDisplayInfo)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_displayUUIDToPerDisplayInfo;
      self->_displayUUIDToPerDisplayInfo = v10;

      displayUUIDToPerDisplayInfo = self->_displayUUIDToPerDisplayInfo;
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v7;
}

- (void)_locked_setMousePointerPreferencesObservationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isObservingPreferences != enabledCopy)
  {
    self->_isObservingPreferences = enabledCopy;

    [(BKSMousePointerService *)self _locked_updateServerWithPreferencesObservationState];
  }
}

- (void)_locked_updateServerWithPreferencesObservationState
{
  os_unfair_lock_assert_owner(&self->_lock);
  _locked_serverTarget = [(BKSMousePointerService *)self _locked_serverTarget];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [_locked_serverTarget setMousePointerPreferenceObservationEnabled:?];
}

- (void)_locked_setMousePointerDeviceObservationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isObservingDeviceConnection != enabledCopy)
  {
    self->_isObservingDeviceConnection = enabledCopy;

    [(BKSMousePointerService *)self _locked_updateServerWithPointerDeviceObservationState];
  }
}

- (void)_locked_pointingDevicesDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [changeCopy copy];
  attachedDevices = self->_attachedDevices;
  self->_attachedDevices = v5;

  context = [(BSCompoundAssertion *)self->_deviceConnectionObservers context];
  v8 = [context countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(context);
        }

        [BKSMousePointerService _locked_updateObserver:"_locked_updateObserver:withPointingDevices:" withPointingDevices:?];
      }

      v9 = [context countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }
}

- (void)_locked_updateObserver:(id)observer withPointingDevices:(id)devices
{
  observerCopy = observer;
  devicesCopy = devices;
  os_unfair_lock_assert_owner(&self->_lock);
  visibleDevices = [observerCopy visibleDevices];
  v8 = [devicesCopy mutableCopy];
  if ([visibleDevices count])
  {
    [v8 minusSet:?];
  }

  if ([v8 count])
  {
    observer = [observerCopy observer];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      observer2 = [observerCopy observer];
      [observer2 mousePointerDevicesDidConnect:?];
    }
  }

  v12 = [visibleDevices mutableCopy];
  [v12 minusSet:?];
  if ([v12 count])
  {
    observer3 = [observerCopy observer];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      observer4 = [observerCopy observer];
      [observer4 mousePointerDevicesDidDisconnect:?];
    }
  }

  observer5 = [observerCopy observer];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    observer6 = [observerCopy observer];
    [observer6 mousePointerDevicesDidChange:?];
  }

  [observerCopy setVisibleDevices:?];
}

- (id)_unlocked_serverTarget
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  os_unfair_lock_unlock(&self->_lock);

  return remoteTarget;
}

- (void)setPreferences:(id)preferences forDevice:(id)device
{
  deviceCopy = device;
  preferencesCopy = preferences;
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [_unlocked_serverTarget setPreferences:? forDevice:?];
}

- (id)preferencesForDevice:(id)device
{
  deviceCopy = device;
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v6 = [_unlocked_serverTarget preferencesForDevice:?];

  return v6;
}

- (id)addPointerPreferencesObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_preferencesObservers)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E698E658];
    objc_copyWeak(&v13, &location);
    v6 = [v5 assertionWithIdentifier:? stateDidChangeHandler:?];
    preferencesObservers = self->_preferencesObservers;
    self->_preferencesObservers = v6;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_alloc_init(BKSMousePointerPreferencesObserverInfo);
  [(BKSMousePointerPreferencesObserverInfo *)v8 setObserver:?];
  v9 = self->_preferencesObservers;
  observerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), observerCopy];
  v11 = [BSCompoundAssertion acquireForReason:v9 withContext:"acquireForReason:withContext:"];

  return v11;
}

void __56__BKSMousePointerService_addPointerPreferencesObserver___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [v5 isActive];
    [(os_unfair_lock_s *)v4 _locked_setMousePointerPreferencesObservationEnabled:?];
    os_unfair_lock_unlock(v4 + 4);
  }
}

- (void)setGlobalDevicePreferences:(id)preferences
{
  preferencesCopy = preferences;
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [_unlocked_serverTarget setGlobalDevicePreferences:?];
}

- (BKSMousePointerDevicePreferences)globalDevicePreferences
{
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  globalDevicePreferences = [_unlocked_serverTarget globalDevicePreferences];

  return globalDevicePreferences;
}

- (id)addPointerDeviceObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_deviceConnectionObservers)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E698E658];
    objc_copyWeak(&v13, &location);
    v6 = [v5 assertionWithIdentifier:? stateDidChangeHandler:?];
    deviceConnectionObservers = self->_deviceConnectionObservers;
    self->_deviceConnectionObservers = v6;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v8 = objc_alloc_init(BKSMousePointerDeviceObserverInfo);
  [(BKSMousePointerDeviceObserverInfo *)v8 setObserver:?];
  [BKSMousePointerService _locked_updateObserver:"_locked_updateObserver:withPointingDevices:" withPointingDevices:?];
  os_unfair_lock_unlock(&self->_lock);
  v9 = self->_deviceConnectionObservers;
  observerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), observerCopy];
  v11 = [BSCompoundAssertion acquireForReason:v9 withContext:"acquireForReason:withContext:"];

  return v11;
}

void __51__BKSMousePointerService_addPointerDeviceObserver___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [v5 isActive];
    [(os_unfair_lock_s *)v4 _locked_setMousePointerDeviceObservationEnabled:?];
    os_unfair_lock_unlock(v4 + 4);
  }
}

- (void)getHitTestContextsAtPoint:(id)point withAdditionalContexts:(id)contexts onDisplay:(id)display withCompletion:(id)completion
{
  completionCopy = completion;
  displayCopy = display;
  contextsCopy = contexts;
  pointCopy = point;
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [_unlocked_serverTarget getHitTestContextsAtPoint:? withAdditionalContexts:? onDisplay:? withCompletion:?];
}

- (id)requestGlobalMouseEventsForDisplay:(id)display targetContextID:(unsigned int)d options:(id)options
{
  v6 = *&d;
  v44 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  optionsCopy = options;
  if (!v6)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contextID != 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v33 = v26;
      v34 = 2114;
      v35 = v28;
      v36 = 2048;
      selfCopy = self;
      v38 = 2114;
      v39 = @"BKSMousePointerService.m";
      v40 = 1024;
      v41 = 228;
      v42 = 2114;
      v43 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186380600);
  }

  v11 = optionsCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v12 = displayCopy;
  v13 = [(__CFString *)v12 length];
  v14 = @"<main>";
  if (v13)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [BKSMousePointerService _locked_infoForDisplayUUID:"_locked_infoForDisplayUUID:createIfNeeded:" createIfNeeded:?];
  globalEventsAssertion = [v16 globalEventsAssertion];
  if (!globalEventsAssertion)
  {
    v18 = MEMORY[0x1E698E658];
    v19 = [@"global-events:" stringByAppendingString:?];
    v31 = v15;
    globalEventsAssertion = [v18 assertionWithIdentifier:? stateDidChangeHandler:?];

    [v16 setGlobalEventsAssertion:?];
  }

  v29 = MEMORY[0x1E69E9820];
  v30 = v11;
  v20 = v11;
  v21 = [BKSMousePointerEventGlobalRoute build:?];
  os_unfair_lock_unlock(&self->_lock);
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, v6, v29, 3221225472, __85__BKSMousePointerService_requestGlobalMouseEventsForDisplay_targetContextID_options___block_invoke_2, &unk_1E6F46DE8];
  v23 = [globalEventsAssertion acquireForReason:? withContext:?];

  return v23;
}

void __85__BKSMousePointerService_requestGlobalMouseEventsForDisplay_targetContextID_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  [*(a1 + 32) _locked_updateEventRoutesFromContext:? forDisplayUUID:?];

  v5 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v5);
}

void __85__BKSMousePointerService_requestGlobalMouseEventsForDisplay_targetContextID_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setContextID:?];
  [v2 setOptions:?];
}

- (id)pointerSuppressionAssertionOnDisplay:(id)display forReason:(id)reason withOptionsMask:(unint64_t)mask
{
  v41 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  reasonCopy = reason;
  if (!mask)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v30 = v24;
      v31 = 2114;
      v32 = v26;
      v33 = 2048;
      selfCopy = self;
      v35 = 2114;
      v36 = @"BKSMousePointerService.m";
      v37 = 1024;
      v38 = 189;
      v39 = 2114;
      v40 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863809ACLL);
  }

  v11 = reasonCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v12 = displayCopy;
  v13 = [(__CFString *)v12 length];
  v14 = @"<main>";
  if (v13)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [BKSMousePointerService _locked_infoForDisplayUUID:"_locked_infoForDisplayUUID:createIfNeeded:" createIfNeeded:?];
  pointerSuppressionAssertion = [v16 pointerSuppressionAssertion];
  if (!pointerSuppressionAssertion)
  {
    v18 = MEMORY[0x1E698E658];
    v19 = [@"mouse-pointer-suppression:" stringByAppendingString:?];
    v27 = MEMORY[0x1E69E9820];
    v28 = v15;
    pointerSuppressionAssertion = [v18 assertionWithIdentifier:v27 stateDidChangeHandler:{3221225472, __89__BKSMousePointerService_pointerSuppressionAssertionOnDisplay_forReason_withOptionsMask___block_invoke, &unk_1E6F46DC0, self}];

    [v16 setPointerSuppressionAssertion:?];
  }

  v20 = objc_alloc_init(BKSMousePointerSuppressionAssertionDescriptor);
  [(BKSMousePointerSuppressionAssertionDescriptor *)v20 setSuppressionOptions:?];
  os_unfair_lock_unlock(&self->_lock);
  v21 = [pointerSuppressionAssertion acquireForReason:? withContext:?];

  return v21;
}

void __89__BKSMousePointerService_pointerSuppressionAssertionOnDisplay_forReason_withOptionsMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 4);
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(a1 + 32) _locked_sendCurrentAssertionParameters:? forDisplayUUID:?];

  v5 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v5);
}

- (id)acquireButtonDownPointerRepositionAssertionForReason:(id)reason contextRelativePointerPosition:(id)position onDisplay:(id)display restrictingToPID:(int)d
{
  v40 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  positionCopy = position;
  displayCopy = display;
  if (!positionCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"point != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *location = 138544642;
      *&location[4] = v24;
      v30 = 2114;
      v31 = v26;
      v32 = 2048;
      selfCopy = self;
      v34 = 2114;
      v35 = @"BKSMousePointerService.m";
      v36 = 1024;
      v37 = 169;
      v38 = 2114;
      v39 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186380D1CLL);
  }

  v14 = displayCopy;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  objc_initWeak(location, self);
  v16 = objc_alloc(MEMORY[0x1E698E778]);
  objc_copyWeak(&v28, location);
  v17 = uUID;
  v18 = v14;
  v19 = [v16 initWithIdentifier:? forReason:? invalidationBlock:?];
  if (d < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInt:?];
  }

  _locked_serverTarget = [(BKSMousePointerService *)self _locked_serverTarget];
  [_locked_serverTarget acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier:? forReason:? contextRelativePointerPosition:? onDisplay:? restrictingToPID:?];

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v28);
  objc_destroyWeak(location);

  return v19;
}

void __137__BKSMousePointerService_acquireButtonDownPointerRepositionAssertionForReason_contextRelativePointerPosition_onDisplay_restrictingToPID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v1 = [WeakRetained _unlocked_serverTarget];
  [v1 invalidateButtonDownPointerRepositionAssertionWithUniqueIdentifier:? onDisplay:?];
}

- (void)setContextRelativePointerPosition:(id)position withInitialVelocity:(id)velocity onDisplay:(id)display withDecelerationRate:(double)rate restrictingToPID:(int)d
{
  positionCopy = position;
  velocityCopy = velocity;
  displayCopy = display;
  if (d < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:?];
  }

  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [_unlocked_serverTarget setContextRelativePointerPosition:? withInitialVelocity:? onDisplay:? withDecelerationRate:? restrictingToPID:?];
}

- (void)setContextRelativePointerPosition:(id)position onDisplay:(id)display withAnimationParameters:(id)parameters restrictingToPID:(int)d
{
  positionCopy = position;
  displayCopy = display;
  parametersCopy = parameters;
  if (d < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:?];
  }

  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  [_unlocked_serverTarget setContextRelativePointerPosition:? onDisplay:? withAnimationParameters:? restrictingToPID:?];
}

- (void)setPointerPosition:(CGPoint)position onDisplay:(id)display withAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  displayCopy = display;
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v9 = [MEMORY[0x1E696B098] bs_valueWithCGPoint:?];
  [_unlocked_serverTarget setPointerPosition:? onDisplay:? withAnimationParameters:?];
}

- (void)setGlobalPointerPosition:(CGPoint)position
{
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  v3 = [MEMORY[0x1E696B098] bs_valueWithCGPoint:?];
  [_unlocked_serverTarget setGlobalPointerPosition:?];
}

- (CGPoint)normalizedGlobalPointerPosition
{
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  normalizedGlobalPointerPosition = [_unlocked_serverTarget normalizedGlobalPointerPosition];

  [normalizedGlobalPointerPosition bs_CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)globalPointerPosition
{
  _unlocked_serverTarget = [(BKSMousePointerService *)self _unlocked_serverTarget];
  globalPointerPosition = [_unlocked_serverTarget globalPointerPosition];

  [globalPointerPosition bs_CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKSMousePointerService.m";
      v17 = 1024;
      v18 = 128;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863812C8);
  }

  v8.receiver = self;
  v8.super_class = BKSMousePointerService;
  [(BKSMousePointerService *)&v8 dealloc];
}

void __31__BKSMousePointerService__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  v5 = [*(a1 + 32) _locked_serverTarget];
  v6 = MEMORY[0x1E696AD98];
  [v4 isActive];

  v7 = [v6 numberWithBool:?];
  [v5 setSuppressAllEvents:?];

  v8 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v8);
}

- (BKSMousePointerService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSMousePointerService.m";
    v17 = 1024;
    v18 = 93;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSMousePointerService.m";
    v17 = 1024;
    v18 = 88;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end