@interface CSAudioRouteChangeMonitorImplWatch
- (BOOL)_isHearstConnectedButNotRouted;
- (CSAudioRouteChangeMonitorImplWatch)init;
- (int64_t)hearstRouteStatus;
- (void)_fetchAndNotifyHearstRouteStatus;
- (void)_fetchHearstRouteStatusWithCompletion:(id)completion;
- (void)_notifyHearstRouteStatus:(int64_t)status;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_startObservingAudioRouteChange;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)died;
- (void)_updateMonitoringForHearstHijackability;
- (void)activeAudioRouteDidChange:(id)change;
- (void)getHearstOwnershipStatus:(id)status;
- (void)getHearstRouteStatus:(id)status;
- (void)getJarvisConnected:(id)connected;
- (void)hearstHijackEligibilityUpdated;
- (void)pickableRoutesDidChange:(id)change;
@end

@implementation CSAudioRouteChangeMonitorImplWatch

- (void)_startObservingSystemControllerLifecycle
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  [(NSMutableSet *)self->_notifications addObject:*v4];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  allObjects = [(NSMutableSet *)self->_notifications allObjects];
  [mEMORY[0x1E69AED08] setAttribute:allObjects forKey:*MEMORY[0x1E69AECE0] error:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *v4;
  mEMORY[0x1E69AED08]2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [defaultCenter2 addObserver:self selector:sel__systemControllerDied_ name:v7 object:mEMORY[0x1E69AED08]2];
}

- (void)_systemControllerDied:(id)died
{
  v10 = *MEMORY[0x1E69E9840];
  diedCopy = died;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAudioRouteChangeMonitorImplWatch _systemControllerDied:]";
    v8 = 2114;
    v9 = diedCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v6, 0x16u);
  }

  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingAudioRouteChange];
  [(CSAudioRouteChangeMonitorImplWatch *)self activeAudioRouteDidChange:0];
}

- (void)_notifyHearstRouteStatus:(int64_t)status
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    if (status > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_1E865C1A8[status];
    }

    v8 = v7;
    *buf = 136315394;
    v11 = "[CSAudioRouteChangeMonitorImplWatch _notifyHearstRouteStatus:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Notifying Hearst Route State: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CSAudioRouteChangeMonitorImplWatch__notifyHearstRouteStatus___block_invoke;
  v9[3] = &unk_1E865CA68;
  v9[4] = self;
  v9[5] = status;
  [(CSEventMonitor *)self enumerateObserversInQueue:v9];
}

void __63__CSAudioRouteChangeMonitorImplWatch__notifyHearstRouteStatus___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) notifyObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40) - 1;
    if (v3 <= 5 && ((0x3Bu >> v3) & 1) != 0)
    {
      [v4 CSAudioRouteChangeMonitor:*(a1 + 32) didReceiveAudioRouteChangeEvent:qword_1DDB1FA08[v3]];
    }
  }
}

- (void)_fetchHearstRouteStatusWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 5;
  if ([(CSAudioRouteChangeMonitor *)self isHearstHijackable])
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[CSAudioRouteChangeMonitorImplWatch _fetchHearstRouteStatusWithCompletion:]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s AirPods are hijackable", buf, 0xCu);
    }

    v16[3] = 6;
  }

  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v7 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEAF8]];

  if (!v7 || ([v7 objectForKey:*MEMORY[0x1E69AEC80]], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v16[3]);
    }
  }

  else
  {
    v10 = [v7 objectForKey:*MEMORY[0x1E69AECA8]];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__CSAudioRouteChangeMonitorImplWatch__fetchHearstRouteStatusWithCompletion___block_invoke;
    v11[3] = &unk_1E865ADB0;
    v12 = v7;
    v14 = &v15;
    v13 = completionCopy;
    [(CSAudioRouteChangeMonitor *)self routeIsDoAPSupportedWithRouteUID:v10 withCompletion:v11];
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __76__CSAudioRouteChangeMonitorImplWatch__fetchHearstRouteStatusWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69AEBE0]];

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v6 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69AEBF0]];

      if (!v6)
      {
        goto LABEL_7;
      }

      v5 = 2;
    }

    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

LABEL_7:
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSAudioRouteChangeMonitorImplWatch _fetchHearstRouteStatusWithCompletion:]_block_invoke";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Current Picked route supportDoAP: %d", &v9, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 48) + 8) + 24));
  }

  return result;
}

- (void)_stopMonitoring
{
  v7 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioRouteChangeMonitorImplWatch _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AudioRouteChangeMonitor", &v5, 0xCu);
  }
}

- (void)_startObservingAudioRouteChange
{
  v12[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  notifications = self->_notifications;
  v5 = MEMORY[0x1E69AE9B8];
  v6 = MEMORY[0x1E69AEAE8];
  v7 = *MEMORY[0x1E69AEAE8];
  v12[0] = *MEMORY[0x1E69AE9B8];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [(NSMutableSet *)notifications addObjectsFromArray:v8];

  allObjects = [(NSMutableSet *)self->_notifications allObjects];
  [mEMORY[0x1E69AED08] setAttribute:allObjects forKey:*MEMORY[0x1E69AECE0] error:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_activeAudioRouteDidChange_ name:*v5 object:mEMORY[0x1E69AED08]];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_pickableRoutesDidChange_ name:*v6 object:mEMORY[0x1E69AED08]];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v8 = *MEMORY[0x1E69E9840];
  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImplWatch *)self _startObservingAudioRouteChange];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAudioRouteChangeMonitorImplWatch _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AudioRouteChangeMonitor", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CSAudioRouteChangeMonitorImplWatch__startMonitoringWithQueue___block_invoke;
  v5[3] = &unk_1E865AD88;
  v5[4] = self;
  [(CSAudioRouteChangeMonitorImplWatch *)self _fetchHearstRouteStatusWithCompletion:v5];
}

- (void)_updateMonitoringForHearstHijackability
{
  if ([(CSAudioRouteChangeMonitorImplWatch *)self _isHearstConnectedButNotRouted])
  {

    [(CSAudioRouteChangeMonitor *)self startMonitoringHearstHijackEligibility];
  }

  else
  {

    [(CSAudioRouteChangeMonitor *)self stopMonitoringHearstHijackEligibility];
  }
}

- (void)pickableRoutesDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CSAudioRouteChangeMonitorImplWatch_pickableRoutesDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __62__CSAudioRouteChangeMonitorImplWatch_pickableRoutesDidChange___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioRouteChangeMonitorImplWatch pickableRoutesDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received external pickable route change notification", &v4, 0xCu);
  }

  [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
  return [*(a1 + 32) _updateMonitoringForHearstHijackability];
}

- (void)activeAudioRouteDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CSAudioRouteChangeMonitorImplWatch_activeAudioRouteDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __64__CSAudioRouteChangeMonitorImplWatch_activeAudioRouteDidChange___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioRouteChangeMonitorImplWatch activeAudioRouteDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received active route change notification", &v4, 0xCu);
  }

  return [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
}

- (BOOL)_isHearstConnectedButNotRouted
{
  v21 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEAE0]];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = MEMORY[0x1E69AEC80];
    v8 = MEMORY[0x1E69AEC10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 objectForKey:{*v7, v16}];
        if ([v11 BOOLValue])
        {
          goto LABEL_11;
        }

        v12 = [v10 objectForKey:*v8];
        if (([v12 BOOLValue] & 1) == 0)
        {

LABEL_11:
          continue;
        }

        v13 = [v10 objectForKey:*MEMORY[0x1E69AEBE8]];
        bOOLValue = [v13 BOOLValue];

        if (bOOLValue)
        {
          LOBYTE(v5) = 1;
          goto LABEL_14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

LABEL_14:

  return v5;
}

- (void)_fetchAndNotifyHearstRouteStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__CSAudioRouteChangeMonitorImplWatch__fetchAndNotifyHearstRouteStatus__block_invoke;
  v2[3] = &unk_1E865AD88;
  v2[4] = self;
  [(CSAudioRouteChangeMonitorImplWatch *)self _fetchHearstRouteStatusWithCompletion:v2];
}

- (void)hearstHijackEligibilityUpdated
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CSAudioRouteChangeMonitorImplWatch_hearstHijackEligibilityUpdated__block_invoke;
  v4[3] = &unk_1E865CA40;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __68__CSAudioRouteChangeMonitorImplWatch_hearstHijackEligibilityUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAndNotifyHearstRouteStatus];
    WeakRetained = v2;
  }
}

- (void)getHearstOwnershipStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__CSAudioRouteChangeMonitorImplWatch_getHearstOwnershipStatus___block_invoke;
    block[3] = &unk_1E865AD60;
    v8 = statusCopy;
    dispatch_async(queue, block);
  }
}

- (void)getJarvisConnected:(id)connected
{
  connectedCopy = connected;
  v5 = connectedCopy;
  if (connectedCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CSAudioRouteChangeMonitorImplWatch_getJarvisConnected___block_invoke;
    block[3] = &unk_1E865AD60;
    v8 = connectedCopy;
    dispatch_async(queue, block);
  }
}

- (int64_t)hearstRouteStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CSAudioRouteChangeMonitorImplWatch_hearstRouteStatus__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)getHearstRouteStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__CSAudioRouteChangeMonitorImplWatch_getHearstRouteStatus___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = statusCopy;
    dispatch_async(queue, v7);
  }
}

- (CSAudioRouteChangeMonitorImplWatch)init
{
  v12.receiver = self;
  v12.super_class = CSAudioRouteChangeMonitorImplWatch;
  v2 = [(CSAudioRouteChangeMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioRouteChangeMonitorImplWatch queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    notifications = v2->_notifications;
    v2->_notifications = v5;

    objc_initWeak(&location, v2);
    v7 = v2->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__CSAudioRouteChangeMonitorImplWatch_init__block_invoke;
    v9[3] = &unk_1E865CA40;
    objc_copyWeak(&v10, &location);
    dispatch_async(v7, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__CSAudioRouteChangeMonitorImplWatch_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateMonitoringForHearstHijackability];
    WeakRetained = v2;
  }
}

@end