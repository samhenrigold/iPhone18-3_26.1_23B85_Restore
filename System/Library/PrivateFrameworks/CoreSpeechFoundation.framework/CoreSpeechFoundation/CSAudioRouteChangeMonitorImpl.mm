@interface CSAudioRouteChangeMonitorImpl
- (BOOL)_fetchHearstConnectionState;
- (BOOL)_fetchJarvisConnectionState;
- (BOOL)_isHearstConnectedButNotRouted;
- (BOOL)carPlayConnected;
- (BOOL)jarvisConnected;
- (CSAudioRouteChangeMonitorImpl)init;
- (int64_t)hearstRouteStatus;
- (void)_fetchAndNotifyHearstRouteStatus;
- (void)_fetchHearstRouteStatusWithCompletion:(id)completion;
- (void)_notifyHearstRouteStatus:(int64_t)status;
- (void)_notifyJarvisConnectionState:(BOOL)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_startObservingAudioRouteChange;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopMonitoring;
- (void)_systemControllerDied:(id)died;
- (void)_updateMonitoringForHearstHijackability;
- (void)carPlayAuxStreamSupportDidChange:(id)change;
- (void)carPlayIsConnectedDidChange:(id)change;
- (void)getHearstOwnershipStatus:(id)status;
- (void)getHearstRouteStatus:(id)status;
- (void)getJarvisConnected:(id)connected;
- (void)hearstHijackEligibilityUpdated;
- (void)pickableRoutesDidChange:(id)change;
- (void)preferredExternalRouteDidChange:(id)change;
@end

@implementation CSAudioRouteChangeMonitorImpl

- (int64_t)hearstRouteStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CSAudioRouteChangeMonitorImpl_hearstRouteStatus__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)jarvisConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CSAudioRouteChangeMonitorImpl_jarvisConnected__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchAndNotifyHearstRouteStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__CSAudioRouteChangeMonitorImpl__fetchAndNotifyHearstRouteStatus__block_invoke;
  v2[3] = &unk_1E865AD88;
  v2[4] = self;
  [(CSAudioRouteChangeMonitorImpl *)self _fetchHearstRouteStatusWithCompletion:v2];
}

- (BOOL)_fetchHearstConnectionState
{
  v29 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEAE0]];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *v25;
  v8 = MEMORY[0x1E69AEC30];
  v9 = MEMORY[0x1E69AEC68];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      v12 = [v11 objectForKey:*v8];
      if (![v12 BOOLValue])
      {
        goto LABEL_12;
      }

      v13 = [v11 objectForKey:*v9];
      if (([v13 BOOLValue] & 1) == 0)
      {

LABEL_12:
        continue;
      }

      [v11 objectForKey:*MEMORY[0x1E69AEC70]];
      v14 = v7;
      v15 = v8;
      v16 = v4;
      v18 = v17 = v9;
      bOOLValue = [v18 BOOLValue];

      v9 = v17;
      v4 = v16;
      v8 = v15;
      v7 = v14;

      if (bOOLValue)
      {
        v19 = [v11 objectForKey:*MEMORY[0x1E69AEC10]];
        bOOLValue2 = [v19 BOOLValue];

        if (bOOLValue2)
        {
          v21 = 1;
          goto LABEL_16;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
LABEL_15:
  v21 = 0;
LABEL_16:

  return v21;
}

void *__65__CSAudioRouteChangeMonitorImpl__fetchAndNotifyHearstRouteStatus__block_invoke(void *result, uint64_t a2)
{
  v2 = *(result + 4);
  if (*(v2 + 64) != a2)
  {
    *(v2 + 64) = a2;
    return [*(result + 4) _notifyHearstRouteStatus:a2];
  }

  return result;
}

- (BOOL)carPlayConnected
{
  v18 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v4 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEA60]];
  bOOLValue = [v4 BOOLValue];

  date2 = [MEMORY[0x1E695DF00] date];
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [date2 timeIntervalSinceDate:date];
    v10 = @"NO";
    v13 = "[CSAudioRouteChangeMonitorImpl carPlayConnected]";
    v12 = 136315650;
    if (bOOLValue)
    {
      v10 = @"YES";
    }

    v14 = 2050;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s fetch CarPlay connection attribute elapsed time = %{public}lf, isCarPlayConnected = %{public}@", &v12, 0x20u);
  }

  return bOOLValue;
}

- (void)_startObservingSystemControllerLifecycle
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = MEMORY[0x1E69AECB0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69AECB0] object:0];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*v4];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [mEMORY[0x1E69AED08] setAttribute:v9 forKey:*MEMORY[0x1E69AECE0] error:0];

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
    v7 = "[CSAudioRouteChangeMonitorImpl _systemControllerDied:]";
    v8 = 2114;
    v9 = diedCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s notification = %{public}@", &v6, 0x16u);
  }

  [(CSAudioRouteChangeMonitorImpl *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImpl *)self _startObservingAudioRouteChange];
  [(CSAudioRouteChangeMonitorImpl *)self preferredExternalRouteDidChange:0];
  [(CSAudioRouteChangeMonitorImpl *)self pickableRoutesDidChange:0];
  [(CSAudioRouteChangeMonitorImpl *)self carPlayAuxStreamSupportDidChange:0];
  [(CSAudioRouteChangeMonitorImpl *)self carPlayIsConnectedDidChange:0];
}

- (void)_notifyJarvisConnectionState:(BOOL)state
{
  stateCopy = state;
  v12 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSAudioRouteChangeMonitorImpl _notifyJarvisConnectionState:]";
    v10 = 1026;
    v11 = stateCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Notifying Jarvis Connection State : %{public}d", buf, 0x12u);
  }

  self->_isJarvisConnected = stateCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CSAudioRouteChangeMonitorImpl__notifyJarvisConnectionState___block_invoke;
  v6[3] = &unk_1E865CA18;
  v6[4] = self;
  v7 = stateCopy;
  [(CSEventMonitor *)self enumerateObserversInQueue:v6];
}

void __62__CSAudioRouteChangeMonitorImpl__notifyJarvisConnectionState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 CSAudioRouteChangeMonitor:*(a1 + 32) didReceiveAudioRouteChangeEvent:*(a1 + 40) ^ 1];
  }
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
    v11 = "[CSAudioRouteChangeMonitorImpl _notifyHearstRouteStatus:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Notifying Hearst Route State: %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CSAudioRouteChangeMonitorImpl__notifyHearstRouteStatus___block_invoke;
  v9[3] = &unk_1E865CA68;
  v9[4] = self;
  v9[5] = status;
  [(CSEventMonitor *)self enumerateObserversInQueue:v9];
}

void __58__CSAudioRouteChangeMonitorImpl__notifyHearstRouteStatus___block_invoke(uint64_t a1, void *a2)
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

- (BOOL)_fetchJarvisConnectionState
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEA60]];
  bOOLValue = [v3 BOOLValue];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (bOOLValue)
    {
      v6 = @"YES";
    }

    v12 = 136315394;
    v13 = "[CSAudioRouteChangeMonitorImpl _fetchJarvisConnectionState]";
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s General CarPlay is connected ? %{public}@", &v12, 0x16u);
  }

  if (bOOLValue)
  {
    mEMORY[0x1E69AED08]2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v8 = [mEMORY[0x1E69AED08]2 attributeForKey:*MEMORY[0x1E69AEA48]];
    bOOLValue = [v8 BOOLValue];

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (bOOLValue)
      {
        v10 = @"YES";
      }

      v12 = 136315394;
      v13 = "[CSAudioRouteChangeMonitorImpl _fetchJarvisConnectionState]";
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s aux stream supported ? %{public}@", &v12, 0x16u);
    }
  }

  return bOOLValue;
}

- (void)_fetchHearstRouteStatusWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _fetchHearstConnectionState = [(CSAudioRouteChangeMonitorImpl *)self _fetchHearstConnectionState];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if ([(CSAudioRouteChangeMonitorImpl *)self _isHearstConnectedButNotRouted]&& [(CSAudioRouteChangeMonitor *)self isHearstHijackable])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s AirPods are hijackable", buf, 0xCu);
    }

    v7 = v22;
    v8 = 6;
  }

  else
  {
    v7 = v22;
    if (_fetchHearstConnectionState)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }
  }

  v7[3] = v8;
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v10 = [mEMORY[0x1E69AED08] attributeForKey:*MEMORY[0x1E69AEAF8]];

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]";
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s pickedRoute: %@", buf, 0x16u);
  }

  if (!v10 || ([v10 objectForKey:*MEMORY[0x1E69AEC80]], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v13))
  {
    if (completionCopy)
    {
      if ([(CSAudioRouteChangeMonitor *)self isHearstHijackable])
      {
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v26 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]";
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s AirPods are not currently picked, but are hijackable", buf, 0xCu);
        }

        v16 = 6;
      }

      else
      {
        v16 = v22[3];
      }

      completionCopy[2](completionCopy, v16);
    }
  }

  else
  {
    v14 = [v10 objectForKey:*MEMORY[0x1E69AECA8]];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__CSAudioRouteChangeMonitorImpl__fetchHearstRouteStatusWithCompletion___block_invoke;
    v17[3] = &unk_1E865ADB0;
    v18 = v10;
    v20 = &v21;
    v19 = completionCopy;
    [(CSAudioRouteChangeMonitor *)self routeIsDoAPSupportedWithRouteUID:v14 withCompletion:v17];
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __71__CSAudioRouteChangeMonitorImpl__fetchHearstRouteStatusWithCompletion___block_invoke(uint64_t a1, int a2)
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
    v10 = "[CSAudioRouteChangeMonitorImpl _fetchHearstRouteStatusWithCompletion:]_block_invoke";
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

- (void)_stopMonitoring
{
  v9 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  stateCapture = self->_stateCapture;
  if (stateCapture)
  {
    [(CSStateCapture *)stateCapture setStateCaptureBlock:0];
    v5 = self->_stateCapture;
    self->_stateCapture = 0;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAudioRouteChangeMonitorImpl _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AudioRouteChangeMonitor", &v7, 0xCu);
  }
}

- (void)_startObservingAudioRouteChange
{
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v3 = MEMORY[0x1E69AEAE8];
  v4 = MEMORY[0x1E69AEB28];
  v5 = MEMORY[0x1E69AEA58];
  v6 = MEMORY[0x1E69AEA68];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E69AEAE8], *MEMORY[0x1E69AEB28], *MEMORY[0x1E69AEA58], *MEMORY[0x1E69AEA68], 0}];
  [mEMORY[0x1E69AED08] setAttribute:v7 forKey:*MEMORY[0x1E69AECE0] error:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_pickableRoutesDidChange_ name:*v3 object:mEMORY[0x1E69AED08]];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_preferredExternalRouteDidChange_ name:*v4 object:mEMORY[0x1E69AED08]];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_carPlayAuxStreamSupportDidChange_ name:*v5 object:mEMORY[0x1E69AED08]];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_carPlayIsConnectedDidChange_ name:*v6 object:mEMORY[0x1E69AED08]];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v15 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  [(CSAudioRouteChangeMonitorImpl *)self _startObservingSystemControllerLifecycle];
  [(CSAudioRouteChangeMonitorImpl *)self _startObservingAudioRouteChange];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSAudioRouteChangeMonitorImpl _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AudioRouteChangeMonitor", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  if (!self->_stateCapture)
  {
    v7 = objc_alloc_init(CSStateCapture);
    stateCapture = self->_stateCapture;
    self->_stateCapture = v7;

    [(CSStateCapture *)self->_stateCapture start];
    objc_initWeak(buf, self);
    v9 = self->_stateCapture;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_3;
    v10[3] = &unk_1E865B0B0;
    objc_copyWeak(&v11, buf);
    [(CSStateCapture *)v9 setStateCaptureBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void *__59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_2;
  v4[3] = &unk_1E865AD88;
  v4[4] = v2;
  [v2 _fetchHearstRouteStatusWithCompletion:v4];
  result = [*(a1 + 32) _fetchJarvisConnectionState];
  *(*(a1 + 32) + 56) = result;
  return result;
}

CSStateCaptureOptions *__59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained carPlayConnected];
  v3 = [WeakRetained jarvisConnected];
  v4 = [WeakRetained hearstRouteStatus];
  v5 = [CSStateCaptureOptions alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_4;
  v8[3] = &__block_descriptor_42_e42_v16__0___CSStateCaptureOptionsMutablity__8l;
  v9 = v2;
  v10 = v3;
  v8[4] = v4;
  v6 = [(CSStateCaptureOptions *)v5 initWithMutableBuilder:v8];

  return v6;
}

void __59__CSAudioRouteChangeMonitorImpl__startMonitoringWithQueue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v8 = [v3 dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v8 setValue:v5 forKey:@"CarPlayConnected"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 41)];
  [v8 setValue:v6 forKey:@"JarvisConnected"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  [v8 setValue:v7 forKey:@"HearstRouteStatus"];

  [v4 setStateData:v8];
  [v4 setStateDataTitle:@"CoreSpeech-AccessoryDeviceConnectionStateCapture"];
}

- (void)carPlayIsConnectedDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSAudioRouteChangeMonitorImpl carPlayIsConnectedDidChange:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Received CarPlay connection change notification", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CSAudioRouteChangeMonitorImpl_carPlayIsConnectedDidChange___block_invoke;
  v7[3] = &unk_1E865CB20;
  v7[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v7];
  if ([(CSAudioRouteChangeMonitorImpl *)self carPlayConnected]|| [(CSAudioRouteChangeMonitorImpl *)self jarvisConnected])
  {
    v6 = +[CSCarKitUtils sharedInstance];
    [v6 handleHeadUnitConnectedWithAsyncCompletion:0];
  }
}

- (void)carPlayAuxStreamSupportDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CSAudioRouteChangeMonitorImpl_carPlayAuxStreamSupportDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

unsigned __int8 *__66__CSAudioRouteChangeMonitorImpl_carPlayAuxStreamSupportDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAudioRouteChangeMonitorImpl carPlayAuxStreamSupportDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received CarPlay AuxStream support change notification", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _fetchJarvisConnectionState];
  result = *(a1 + 32);
  if (result[56] != v3)
  {
    return [result _notifyJarvisConnectionState:?];
  }

  return result;
}

- (void)_updateMonitoringForHearstHijackability
{
  if ([(CSAudioRouteChangeMonitorImpl *)self _isHearstConnectedButNotRouted])
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
  block[2] = __57__CSAudioRouteChangeMonitorImpl_pickableRoutesDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __57__CSAudioRouteChangeMonitorImpl_pickableRoutesDidChange___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioRouteChangeMonitorImpl pickableRoutesDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received external pickable route change notification", &v4, 0xCu);
  }

  [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
  return [*(a1 + 32) _updateMonitoringForHearstHijackability];
}

- (void)preferredExternalRouteDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CSAudioRouteChangeMonitorImpl_preferredExternalRouteDidChange___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __65__CSAudioRouteChangeMonitorImpl_preferredExternalRouteDidChange___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioRouteChangeMonitorImpl preferredExternalRouteDidChange:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Received external route change notification", &v4, 0xCu);
  }

  return [*(a1 + 32) _fetchAndNotifyHearstRouteStatus];
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
    block[2] = __58__CSAudioRouteChangeMonitorImpl_getHearstOwnershipStatus___block_invoke;
    block[3] = &unk_1E865AD60;
    v8 = statusCopy;
    dispatch_async(queue, block);
  }
}

- (void)hearstHijackEligibilityUpdated
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CSAudioRouteChangeMonitorImpl_hearstHijackEligibilityUpdated__block_invoke;
  v4[3] = &unk_1E865CA40;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__CSAudioRouteChangeMonitorImpl_hearstHijackEligibilityUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchAndNotifyHearstRouteStatus];
    WeakRetained = v2;
  }
}

- (void)getJarvisConnected:(id)connected
{
  connectedCopy = connected;
  v5 = connectedCopy;
  if (connectedCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__CSAudioRouteChangeMonitorImpl_getJarvisConnected___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = connectedCopy;
    dispatch_async(queue, v7);
  }
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
    v7[2] = __54__CSAudioRouteChangeMonitorImpl_getHearstRouteStatus___block_invoke;
    v7[3] = &unk_1E865CB90;
    v7[4] = self;
    v8 = statusCopy;
    dispatch_async(queue, v7);
  }
}

- (CSAudioRouteChangeMonitorImpl)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CSAudioRouteChangeMonitorImpl;
    v4 = [(CSAudioRouteChangeMonitor *)&v12 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSAudioRouteChangeMonitorImpl queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      objc_initWeak(&location, v4);
      v7 = v4->_queue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__CSAudioRouteChangeMonitorImpl_init__block_invoke;
      v9[3] = &unk_1E865CA40;
      objc_copyWeak(&v10, &location);
      dispatch_async(v7, v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

void __37__CSAudioRouteChangeMonitorImpl_init__block_invoke(uint64_t a1)
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