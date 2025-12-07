@interface HUNearbyLiveListenControlleriOS
- (HUNearbyLiveListenController)controller;
- (HUNearbyLiveListenControlleriOS)initWithController:(id)controller;
- (id)_devicesToMessage;
- (id)_nearbyDevices;
- (void)_audioRoutesChanged:(id)changed;
- (void)_callsStatusChanged:(id)changed;
- (void)_handleRemoteControlSettingChange;
- (void)_handleRequestCurrentStateMessageFromDevice:(id)device;
- (void)_handleStartObservingFromRemoteDevice:(id)device;
- (void)_handleStartOrStopMessageFromRemoteDevice:(id)device message:(id)message;
- (void)_handleStartOrStopRewindMessageFromRemoteDevice:(id)device message:(id)message;
- (void)_handleStateChangedMessage:(id)message fromDevice:(id)device;
- (void)_handleStopObservingFromRemoteDevice:(id)device;
- (void)_isListeningChanged:(BOOL)changed audioLevel:(float)level isPlayingBack:(BOOL)back orTranscriptionChanged:(id)transcriptionChanged;
- (void)_nearbyDevicesChanged;
- (void)_notifyAboutAllObservingDevices;
- (void)_notifyAboutObservingDevice:(id)device;
- (void)_receivedMessage:(id)message fromDevice:(id)device;
- (void)_scheduleStateUpdate;
- (void)_sendEmptyStateToUnauthorizedDevice:(id)device;
- (void)_sendLatestNearbyUpdate;
- (void)_sendStartObservingMessageToDevices:(id)devices;
- (void)_sendStartOrStopMessage:(BOOL)message;
- (void)_sendStartOrStopRewindMessage:(BOOL)message;
- (void)_sendStopObservingMessage;
- (void)_startLiveListenFromRemoteDevice:(id)device;
- (void)_startLiveListenRewind;
- (void)_stopLiveListenFromRemoteDevice:(id)device;
- (void)_stopLiveListenRewind;
- (void)_updateRemoteStartHistoryForDevice:(id)device didStart:(BOOL)start;
- (void)_updateState;
- (void)_wirelessSplitterEnabledChanged:(id)changed;
- (void)deviceDiscoveryManager:(id)manager updatedDevices:(id)devices;
- (void)startLiveListen;
- (void)startLiveListenRewind;
- (void)startObserving;
- (void)startObservingRemoteSession;
- (void)stopLiveListen;
- (void)stopLiveListenRewind;
- (void)stopObserving;
- (void)stopObservingRemoteSession;
@end

@implementation HUNearbyLiveListenControlleriOS

- (void)_sendLatestNearbyUpdate
{
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__HUNearbyLiveListenControlleriOS__sendLatestNearbyUpdate__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

void __58__HUNearbyLiveListenControlleriOS__sendLatestNearbyUpdate__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pendingMessage];

  if (v2)
  {
    v3 = [*(a1 + 32) _devicesToMessage];
    if ([v3 count])
    {
      v4 = HCLogHearingAids();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 32) pendingMessage];
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_INFO, "Live Listen sending state change message: %{public}@", &v9, 0xCu);
      }

      v6 = +[HUNearbyController sharedInstance];
      v7 = [*(a1 + 32) pendingMessage];
      [v6 sendMessage:v7 withDomain:@"com.hearing.LiveListen" toDevices:v3 withPriority:1];

      [*(a1 + 32) setPendingMessage:0];
      v8 = [MEMORY[0x1E695DF00] now];
      [*(a1 + 32) setLastUpdateStateTimestamp:v8];
    }
  }
}

- (id)_devicesToMessage
{
  cachedNearbyDevices = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HUNearbyLiveListenControlleriOS__devicesToMessage__block_invoke;
  v6[3] = &unk_1E85CBCE0;
  v6[4] = self;
  v4 = [cachedNearbyDevices ax_filteredArrayUsingBlock:v6];

  return v4;
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

- (void)_nearbyDevicesChanged
{
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HUNearbyLiveListenControlleriOS__nearbyDevicesChanged__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __56__HUNearbyLiveListenControlleriOS__nearbyDevicesChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nearbyDevices];
  [*(a1 + 32) setCachedNearbyDevices:v2];

  [*(a1 + 32) _notifyAboutAllObservingDevices];
  v3 = *(a1 + 32);

  return [v3 _updateState];
}

- (void)_updateState
{
  v40[4] = *MEMORY[0x1E69E9840];
  v3 = calculateState([(HUNearbyLiveListenControlleriOS *)self cachedIsListening], [(HUNearbyLiveListenControlleriOS *)self cachedHasLiveListenRoute], [(HUNearbyLiveListenControlleriOS *)self cachedHasHearingAidRoute], [(HUNearbyLiveListenControlleriOS *)self cachedCurrentCallsCount], [(HUNearbyLiveListenControlleriOS *)self cachedWirelessSplitterEnabled]);
  [(HUNearbyLiveListenControlleriOS *)self cachedAudioLevel];
  v5 = v4;
  cachedIsPlayingBack = [(HUNearbyLiveListenControlleriOS *)self cachedIsPlayingBack];
  cachedTranscription = [(HUNearbyLiveListenControlleriOS *)self cachedTranscription];
  if (!isLiveListenEnabledNearbyForState(self->_cachedNearbyState))
  {
    controller = [(HUNearbyLiveListenControlleriOS *)self controller];
    if (!isLiveListenEnabledNearbyForState([controller state]))
    {

      goto LABEL_7;
    }
  }

  if (v3 != 5)
  {
    cachedNearbyIsPlayingBack = self->_cachedNearbyIsPlayingBack;
    v10 = self->_cachedNearbyTranscription;

    controller2 = [(HUNearbyLiveListenControlleriOS *)self controller];
    LODWORD(v12) = v5;
    [controller2 _updateState:self->_cachedNearbyState audioLevel:cachedNearbyIsPlayingBack isPlayingBack:v10 transcription:v12];

    cachedTranscription = v10;
    goto LABEL_21;
  }

LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  state = [WeakRetained state];

  if (state == 5 && v3 == 3)
  {
    [(HUNearbyLiveListenControlleriOS *)self _stopLiveListenFromRemoteDevice:0];
  }

  controller3 = [(HUNearbyLiveListenControlleriOS *)self controller];
  LODWORD(v16) = v5;
  v17 = [controller3 _updateState:v3 audioLevel:cachedIsPlayingBack isPlayingBack:cachedTranscription transcription:v16];

  if (v17)
  {
    cachedNearbyDevices = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
    v19 = [cachedNearbyDevices count];

    if (v19)
    {
      v40[0] = &unk_1F5623D88;
      v39[0] = @"type";
      v39[1] = @"state";
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
      v40[1] = v20;
      v39[2] = @"isPlayingBack";
      v21 = [MEMORY[0x1E696AD98] numberWithBool:cachedIsPlayingBack];
      v22 = v21;
      v39[3] = @"transcription";
      v23 = &stru_1F5614A78;
      if (cachedTranscription)
      {
        v23 = cachedTranscription;
      }

      v40[2] = v21;
      v40[3] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];

      [(HUNearbyLiveListenControlleriOS *)self setPendingMessage:v24];
      lastUpdateStateTimestamp = [(HUNearbyLiveListenControlleriOS *)self lastUpdateStateTimestamp];
      if (lastUpdateStateTimestamp && (v26 = lastUpdateStateTimestamp, -[HUNearbyLiveListenControlleriOS lastUpdateStateTimestamp](self, "lastUpdateStateTimestamp"), v27 = objc_claimAutoreleasedReturnValue(), [v27 timeIntervalSinceNow], v29 = fabs(v28), v27, v26, v29 <= 1.0))
      {
        [(HUNearbyLiveListenControlleriOS *)self _scheduleStateUpdate];
      }

      else
      {
        [(HUNearbyLiveListenControlleriOS *)self _sendLatestNearbyUpdate];
      }

      v30 = HCLogHearingAids();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = liveListenStateDescription(v3);
        cachedNearbyDevices2 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
        v33 = 138543874;
        v34 = v31;
        v35 = 2048;
        v36 = [cachedNearbyDevices2 count];
        v37 = 2114;
        v38 = v24;
        _os_log_debug_impl(&dword_1DA5E2000, v30, OS_LOG_TYPE_DEBUG, "Queued live listen state change message(%{public}@) to %lu nearby devices: %{public}@", &v33, 0x20u);
      }
    }
  }

LABEL_21:
}

- (HUNearbyLiveListenController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

uint64_t __52__HUNearbyLiveListenControlleriOS__devicesToMessage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HUHearingSettings sharedInstance];
  if (([v4 liveListenRemoteControlEnabled] & 1) != 0 || objc_msgSend(v3, "isWatch"))
  {
    v5 = [*(a1 + 32) observingDevices];
    v6 = [v5 containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HUNearbyLiveListenControlleriOS)initWithController:(id)controller
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = HUNearbyLiveListenControlleriOS;
  v5 = [(HUNearbyLiveListenControlleriOS *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.hearing.LiveListen.NearbyStateUpdates", v7);
    updateQueue = v6->_updateQueue;
    v6->_updateQueue = v8;

    v6->_cachedAudioLevel = 0.0;
    *&v6->_cachedIsListening = 0;
    v6->_cachedIsPlayingBack = 0;
    cachedTranscription = v6->_cachedTranscription;
    v6->_cachedCurrentCallsCount = 0;
    v6->_cachedTranscription = &stru_1F5614A78;

    cachedNearbyDevices = v6->_cachedNearbyDevices;
    v12 = MEMORY[0x1E695E0F0];
    v6->_cachedNearbyDevices = MEMORY[0x1E695E0F0];

    v6->_cachedNearbyIsPlayingBack = 0;
    cachedNearbyTranscription = v6->_cachedNearbyTranscription;
    v6->_cachedNearbyState = 0;
    v6->_cachedNearbyTranscription = &stru_1F5614A78;

    v14 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
    observingDevices = v6->_observingDevices;
    v6->_observingDevices = v14;

    v16 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
    notifiedDevices = v6->_notifiedDevices;
    v6->_notifiedDevices = v16;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke;
    block[3] = &unk_1E85C9F60;
    v20 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v6;
}

void __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D8A58] sharedInstance];
  [*(a1 + 32) setCachedCurrentCallsCount:{objc_msgSend(v2, "currentCallCount")}];

  v3 = [*(a1 + 32) updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke_2;
  block[3] = &unk_1E85C9F60;
  v5 = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __54__HUNearbyLiveListenControlleriOS_initWithController___block_invoke_2(uint64_t a1)
{
  v2 = +[AXHAController sharedController];
  v3 = [v2 liveListenController];
  [*(a1 + 32) setCachedIsListening:{objc_msgSend(v3, "isListening")}];

  v4 = +[AXHAController sharedController];
  v5 = [v4 liveListenController];
  [v5 audioLevel];
  [*(a1 + 32) setCachedAudioLevel:?];

  v6 = +[AXHAController sharedController];
  v7 = [v6 liveListenController];
  [*(a1 + 32) setCachedIsPlayingBack:{objc_msgSend(v7, "isPlayingBack")}];

  v8 = +[AXHAController sharedController];
  v9 = [v8 liveListenController];
  v10 = [v9 combinedSessionTranscription];
  [*(a1 + 32) setCachedTranscription:v10];

  [*(a1 + 32) setCachedHasLiveListenRoute:liveListenStreamSelected()];
  [*(a1 + 32) setCachedHasHearingAidRoute:hearingAidStreamAvailable()];
  v11 = +[HUUtilities sharedUtilities];
  [*(a1 + 32) setCachedWirelessSplitterEnabled:{objc_msgSend(v11, "wirelessSplitterEnabled")}];

  v12 = [*(a1 + 32) _nearbyDevices];
  [*(a1 + 32) setCachedNearbyDevices:v12];

  v13 = *(a1 + 32);

  return [v13 _updateState];
}

- (void)startLiveListen
{
  controller = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([controller state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopMessage:1];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _startLiveListenFromRemoteDevice:0];
  }
}

- (void)stopLiveListen
{
  controller = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([controller state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopMessage:0];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _stopLiveListenFromRemoteDevice:0];
  }
}

- (void)startLiveListenRewind
{
  controller = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([controller state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopRewindMessage:1];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _startLiveListenRewind];
  }
}

- (void)stopLiveListenRewind
{
  controller = [(HUNearbyLiveListenControlleriOS *)self controller];
  v4 = isLiveListenEnabledNearbyForState([controller state]);

  if (v4)
  {

    [(HUNearbyLiveListenControlleriOS *)self _sendStartOrStopRewindMessage:0];
  }

  else
  {

    [(HUNearbyLiveListenControlleriOS *)self _stopLiveListenRewind];
  }
}

- (void)_startLiveListenFromRemoteDevice:(id)device
{
  v17 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = deviceCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Starting live listen from device %@", buf, 0xCu);
  }

  LiveListenRequestNotificationAuthorization(v6);
  [(HUNearbyLiveListenControlleriOS *)self setRemoteStartDevice:deviceCopy];
  if (deviceCopy)
  {
    [(HUNearbyLiveListenControlleriOS *)self _updateRemoteStartHistoryForDevice:deviceCopy didStart:1];
  }

  v7 = +[AXHAController sharedController];
  liveListenController = [v7 liveListenController];
  isListening = [liveListenController isListening];

  if (isListening)
  {
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Not starting live listen, already listening", buf, 2u);
    }
  }

  else
  {
    v11 = +[AXHAController sharedController];
    liveListenController2 = [v11 liveListenController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke;
    v13[3] = &unk_1E85CBF50;
    v13[4] = self;
    v14 = deviceCopy;
    [liveListenController2 startListeningWithCompletion:v13];
  }
}

void __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    [*(a1 + 32) _handleRequestCurrentStateMessageFromDevice:*(a1 + 40)];
  }
}

- (void)_stopLiveListenFromRemoteDevice:(id)device
{
  v20 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = deviceCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Stopping live listen from device %@", buf, 0xCu);
  }

  remoteStartDevice = [(HUNearbyLiveListenControlleriOS *)self remoteStartDevice];

  if (remoteStartDevice)
  {
    remoteStartDevice2 = [(HUNearbyLiveListenControlleriOS *)self remoteStartDevice];
    [(HUNearbyLiveListenControlleriOS *)self _updateRemoteStartHistoryForDevice:remoteStartDevice2 didStart:0];

    [(HUNearbyLiveListenControlleriOS *)self setRemoteStartDevice:0];
  }

  v8 = +[AXHAController sharedController];
  liveListenController = [v8 liveListenController];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke;
  v15 = &unk_1E85CBF50;
  selfCopy = self;
  v17 = deviceCopy;
  v10 = deviceCopy;
  [liveListenController stopListeningWithCompletion:&v12];

  v11 = [MEMORY[0x1E695DF70] arrayWithArray:{MEMORY[0x1E695E0F0], v12, v13, v14, v15, selfCopy}];
  [(HUNearbyLiveListenControlleriOS *)self setNotifiedDevices:v11];
}

void __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && (a2 & 1) == 0)
  {
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    [*(a1 + 32) _handleRequestCurrentStateMessageFromDevice:*(a1 + 40)];
  }
}

- (void)_startLiveListenRewind
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Starting live listen rewind", v5, 2u);
  }

  v3 = +[AXHAController sharedController];
  liveListenController = [v3 liveListenController];
  [liveListenController startLiveListenRewind];
}

- (void)_stopLiveListenRewind
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Stopping live listen rewind", v5, 2u);
  }

  v3 = +[AXHAController sharedController];
  liveListenController = [v3 liveListenController];
  [liveListenController stopLiveListenRewind];
}

- (void)_scheduleStateUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUNearbyLiveListenControlleriOS__scheduleStateUpdate__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__HUNearbyLiveListenControlleriOS__scheduleStateUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateStateTimer];
  [v2 invalidate];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__HUNearbyLiveListenControlleriOS__scheduleStateUpdate__block_invoke_2;
  v4[3] = &unk_1E85CA440;
  v4[4] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v4 block:1.0];
  [*(a1 + 32) setUpdateStateTimer:v3];
}

- (void)startObserving
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Start observing", buf, 2u);
  }

  MRMediaRemoteSetWantsRouteChangeNotifications();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__audioRoutesChanged_ name:*MEMORY[0x1E69B12A0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__audioRoutesChanged_ name:*MEMORY[0x1E69B12E0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__callsStatusChanged_ name:*MEMORY[0x1E69D8E08] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__wirelessSplitterEnabledChanged_ name:@"com.apple.accessibility.hearing.wireless.splitter.changed" object:0];

  objc_initWeak(&location, self);
  v8 = +[HUNearbyController sharedInstance];
  [v8 registerLoggingBlock:&__block_literal_global_14 forDomain:@"com.hearing.LiveListen" withListener:self];

  v9 = +[HUNearbyController sharedInstance];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_21;
  v30[3] = &unk_1E85CBF78;
  objc_copyWeak(&v31, &location);
  [v9 registerDiscoveryBlock:v30 forDomain:@"com.hearing.LiveListen" withListener:self];

  v10 = +[HUNearbyController sharedInstance];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_2;
  v28[3] = &unk_1E85CA418;
  objc_copyWeak(&v29, &location);
  [v10 registerMessageBlock:v28 forDomain:@"com.hearing.LiveListen" withListener:self];

  v11 = [HULiveListenObserver alloc];
  v12 = +[AXHAController sharedController];
  liveListenController = [v12 liveListenController];
  v14 = [(HULiveListenObserver *)v11 initWithController:liveListenController];
  [(HUNearbyLiveListenControlleriOS *)self setLiveListenObserver:v14];

  liveListenObserver = [(HUNearbyLiveListenControlleriOS *)self liveListenObserver];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_3;
  v26[3] = &unk_1E85CBFA0;
  objc_copyWeak(&v27, &location);
  [liveListenObserver registerUpdateBlock:v26 withListener:self];

  v16 = +[HUHearingSettings sharedInstance];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_4;
  v24[3] = &unk_1E85C9F10;
  objc_copyWeak(&v25, &location);
  [v16 registerUpdateBlock:v24 forRetrieveSelector:sel_liveListenRemoteControlEnabled withListener:self];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v17 = getAXRDeviceDiscoveryManagerClass_softClass;
  v41 = getAXRDeviceDiscoveryManagerClass_softClass;
  if (!getAXRDeviceDiscoveryManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getAXRDeviceDiscoveryManagerClass_block_invoke;
    v36 = &unk_1E85C9FB0;
    v37 = &v38;
    __getAXRDeviceDiscoveryManagerClass_block_invoke(buf);
    v17 = v39[3];
  }

  v18 = v17;
  _Block_object_dispose(&v38, 8);
  sharedInstance = [v17 sharedInstance];
  [(HUNearbyLiveListenControlleriOS *)self setDiscoveryManager:sharedInstance];

  discoveryManager = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  [discoveryManager addObserver:self];

  discoveryManager2 = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  discoveryManager3 = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  cachedDiscoveredDevices = [discoveryManager3 cachedDiscoveredDevices];
  [(HUNearbyLiveListenControlleriOS *)self deviceDiscoveryManager:discoveryManager2 updatedDevices:cachedDiscoveredDevices];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _nearbyDevicesChanged];
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receivedMessage:v5 fromDevice:v6];
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v10 = a5;
  [WeakRetained _isListeningChanged:a2 audioLevel:a3 isPlayingBack:v9 orTranscriptionChanged:v10];
}

void __49__HUNearbyLiveListenControlleriOS_startObserving__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoteControlSettingChange];
}

- (void)stopObserving
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Stop observing", v10, 2u);
  }

  if ([(HUNearbyLiveListenControlleriOS *)self isObservingNearbyStatus]&& ![(HUNearbyLiveListenControlleriOS *)self shouldBeObservingNearbyStatus])
  {
    [(HUNearbyLiveListenControlleriOS *)self _sendStopObservingMessage];
    [(HUNearbyLiveListenControlleriOS *)self setIsObservingNearbyStatus:0];
  }

  MRMediaRemoteSetWantsRouteChangeNotifications();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5 = +[HUNearbyController sharedInstance];
  [v5 registerLoggingBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v6 = +[HUNearbyController sharedInstance];
  [v6 registerDiscoveryBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  v7 = +[HUNearbyController sharedInstance];
  [v7 registerMessageBlock:0 forDomain:@"com.hearing.LiveListen" withListener:self];

  liveListenObserver = [(HUNearbyLiveListenControlleriOS *)self liveListenObserver];
  [liveListenObserver registerUpdateBlock:0 withListener:self];

  [(HUNearbyLiveListenControlleriOS *)self setLiveListenObserver:0];
  [(HUNearbyLiveListenControlleriOS *)self _sendLatestNearbyUpdate];
  [(HUNearbyLiveListenControlleriOS *)self setDiscoveredNearbyDeviceIdentifiers:MEMORY[0x1E695E0F0]];
  discoveryManager = [(HUNearbyLiveListenControlleriOS *)self discoveryManager];
  [discoveryManager removeObserver:self];

  [(HUNearbyLiveListenControlleriOS *)self setDiscoveryManager:0];
}

- (void)startObservingRemoteSession
{
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__HUNearbyLiveListenControlleriOS_startObservingRemoteSession__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

void *__62__HUNearbyLiveListenControlleriOS_startObservingRemoteSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldBeObservingNearbyStatus:1];
  result = [*(a1 + 32) isObservingNearbyStatus];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v3 cachedNearbyDevices];
    [v3 _sendStartObservingMessageToDevices:v4];

    v5 = *(a1 + 32);

    return [v5 setIsObservingNearbyStatus:1];
  }

  return result;
}

- (void)stopObservingRemoteSession
{
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__HUNearbyLiveListenControlleriOS_stopObservingRemoteSession__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __61__HUNearbyLiveListenControlleriOS_stopObservingRemoteSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldBeObservingNearbyStatus:0];
  [*(a1 + 32) setCachedNearbyState:0];
  [*(a1 + 32) setCachedNearbyTranscription:&stru_1F5614A78];
  v2 = *(a1 + 32);

  return [v2 setCachedNearbyIsPlayingBack:0];
}

- (void)deviceDiscoveryManager:(id)manager updatedDevices:(id)devices
{
  devicesCopy = devices;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__HUNearbyLiveListenControlleriOS_deviceDiscoveryManager_updatedDevices___block_invoke;
  v8[3] = &unk_1E85C9F38;
  v8[4] = self;
  v9 = devicesCopy;
  v7 = devicesCopy;
  dispatch_async(updateQueue, v8);
}

uint64_t __73__HUNearbyLiveListenControlleriOS_deviceDiscoveryManager_updatedDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) axMapObjectsUsingBlock:&__block_literal_global_31];
  [*(a1 + 32) setDiscoveredNearbyDeviceIdentifiers:v2];

  v3 = [*(a1 + 32) _nearbyDevices];
  [*(a1 + 32) setCachedNearbyDevices:v3];

  [*(a1 + 32) _notifyAboutAllObservingDevices];
  v4 = *(a1 + 32);

  return [v4 _updateState];
}

- (id)_nearbyDevices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Updating nearby devices", buf, 2u);
  }

  v4 = +[HUNearbyController sharedInstance];
  nearbyDevices = [v4 nearbyDevices];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke;
  v20[3] = &unk_1E85CBCE0;
  v20[4] = self;
  v6 = [nearbyDevices ax_filteredArrayUsingBlock:v20];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observingDevices = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
  v8 = [observingDevices countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(observingDevices);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          [(HUNearbyLiveListenControlleriOS *)self _sendEmptyStateToUnauthorizedDevice:v12];
        }
      }

      v9 = [observingDevices countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  if ([(HUNearbyLiveListenControlleriOS *)self isObservingNearbyStatus])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke_34;
    v15[3] = &unk_1E85CBCE0;
    v15[4] = self;
    v13 = [v6 ax_filteredArrayUsingBlock:v15];
    [(HUNearbyLiveListenControlleriOS *)self _sendStartObservingMessageToDevices:v13];
  }

  return v6;
}

uint64_t __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 idsDevice];
  v5 = [v4 isNearby];

  v6 = [*(a1 + 32) discoveredNearbyDeviceIdentifiers];
  v7 = [v3 uniqueIdentifier];
  v8 = [v6 containsObject:v7];

  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    v13 = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Checking device %@. idsNearby: %@, rapportNearby: %@", &v13, 0x20u);
  }

  return (v5 | v8) & 1;
}

uint64_t __49__HUNearbyLiveListenControlleriOS__nearbyDevices__block_invoke_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cachedNearbyDevices];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (void)_notifyAboutAllObservingDevices
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  observingDevices = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
  v4 = [observingDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(observingDevices);
        }

        [(HUNearbyLiveListenControlleriOS *)self _notifyAboutObservingDevice:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [observingDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_notifyAboutObservingDevice:(id)device
{
  deviceCopy = device;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__HUNearbyLiveListenControlleriOS__notifyAboutObservingDevice___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(updateQueue, v7);
}

void __63__HUNearbyLiveListenControlleriOS__notifyAboutObservingDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) cachedIsListening])
  {
    v4 = [*(a1 + 32) notifiedDevices];
    if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
    {
      v2 = [*(a1 + 32) _devicesToMessage];
      v3 = [v2 containsObject:*(a1 + 40)];

      if (!v3)
      {
        return;
      }

      LiveListenSendObservingNotificationForDevice(*(a1 + 40));
      v4 = [*(a1 + 32) notifiedDevices];
      [v4 addObject:*(a1 + 40)];
    }
  }
}

- (void)_updateRemoteStartHistoryForDevice:(id)device didStart:(BOOL)start
{
  v26[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = MEMORY[0x1E695DF90];
  v7 = +[HUHearingSettings sharedInstance];
  liveListenRemoteStartHistory = [v7 liveListenRemoteStartHistory];
  v9 = [v6 dictionaryWithDictionary:liveListenRemoteStartHistory];

  identifier = [deviceCopy identifier];
  if (start)
  {
    v25[0] = @"deviceName";
    name = [deviceCopy name];
    v26[0] = name;
    v25[1] = @"startDate";
    v12 = [MEMORY[0x1E695DF00] now];
    v26[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    [v9 setObject:v13 forKey:identifier];
LABEL_5:
    v18 = +[HUHearingSettings sharedInstance];
    [v18 setLiveListenRemoteStartHistory:v9];
    goto LABEL_6;
  }

  v14 = MEMORY[0x1E695DF90];
  v15 = [v9 objectForKey:identifier];
  v16 = [v14 dictionaryWithDictionary:v15];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DF00] now];
    [v16 setObject:v17 forKey:@"endDate"];

    [v9 setObject:v16 forKey:identifier];
    goto LABEL_5;
  }

  v18 = HCLogHearingAids();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(HUNearbyLiveListenControlleriOS *)deviceCopy _updateRemoteStartHistoryForDevice:v18 didStart:v19, v20, v21, v22, v23, v24];
  }

LABEL_6:
}

- (void)_isListeningChanged:(BOOL)changed audioLevel:(float)level isPlayingBack:(BOOL)back orTranscriptionChanged:(id)transcriptionChanged
{
  v7 = [(HUNearbyLiveListenControlleriOS *)self updateQueue:changed];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v7, block);
}

void __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) cachedIsListening])
  {
    v2 = 0;
  }

  else
  {
    v3 = +[AXHAController sharedController];
    v4 = [v3 liveListenController];
    v2 = [v4 isListening];
  }

  v5 = +[AXHAController sharedController];
  v6 = [v5 liveListenController];
  [*(a1 + 32) setCachedIsListening:{objc_msgSend(v6, "isListening")}];

  v7 = +[AXHAController sharedController];
  v8 = [v7 liveListenController];
  [v8 audioLevel];
  [*(a1 + 32) setCachedAudioLevel:?];

  v9 = +[AXHAController sharedController];
  v10 = [v9 liveListenController];
  [*(a1 + 32) setCachedIsPlayingBack:{objc_msgSend(v10, "isPlayingBack")}];

  v11 = +[AXHAController sharedController];
  v12 = [v11 liveListenController];
  v13 = [v12 combinedSessionTranscription];
  [*(a1 + 32) setCachedTranscription:v13];

  [*(a1 + 32) _updateState];
  if (v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v14 = dispatch_time(0, 2000000000);
    v15 = [*(a1 + 32) updateQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke_2;
    v16[3] = &unk_1E85C9F10;
    objc_copyWeak(&v17, &location);
    dispatch_after(v14, v15, v16);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __103__HUNearbyLiveListenControlleriOS__isListeningChanged_audioLevel_isPlayingBack_orTranscriptionChanged___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyAboutAllObservingDevices];
}

- (void)_audioRoutesChanged:(id)changed
{
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUNearbyLiveListenControlleriOS__audioRoutesChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __55__HUNearbyLiveListenControlleriOS__audioRoutesChanged___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCachedHasLiveListenRoute:liveListenStreamSelected()];
  [*(a1 + 32) setCachedHasHearingAidRoute:hearingAidStreamAvailable()];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute")}];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute")}];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Updated for audio route change: LL stream selected %@, HA stream available %@", &v6, 0x16u);
  }

  return [*(a1 + 32) _updateState];
}

- (void)_wirelessSplitterEnabledChanged:(id)changed
{
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HUNearbyLiveListenControlleriOS__wirelessSplitterEnabledChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

uint64_t __67__HUNearbyLiveListenControlleriOS__wirelessSplitterEnabledChanged___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[HUUtilities sharedUtilities];
  [*(a1 + 32) setCachedWirelessSplitterEnabled:{objc_msgSend(v2, "wirelessSplitterEnabled")}];

  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled")}];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Updated for wireless splitter change: %@", &v6, 0xCu);
  }

  return [*(a1 + 32) _updateState];
}

- (void)_callsStatusChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D8A58] sharedInstance];
  v3 = [v2 currentCallCount];

  v4 = [*(a1 + 32) updateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke_2;
  v5[3] = &unk_1E85CBFE8;
  v5[4] = *(a1 + 32);
  v5[5] = v3;
  dispatch_async(v4, v5);
}

uint64_t __55__HUNearbyLiveListenControlleriOS__callsStatusChanged___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCachedCurrentCallsCount:*(a1 + 40)];
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) cachedCurrentCallsCount];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1DA5E2000, v2, OS_LOG_TYPE_DEFAULT, "Updated for call status change: %lu", &v5, 0xCu);
  }

  return [*(a1 + 32) _updateState];
}

- (void)_handleRemoteControlSettingChange
{
  if ([(HUNearbyLiveListenControlleriOS *)self cachedIsListening])
  {
    updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__HUNearbyLiveListenControlleriOS__handleRemoteControlSettingChange__block_invoke;
    block[3] = &unk_1E85C9F60;
    block[4] = self;
    dispatch_async(updateQueue, block);
  }
}

void __68__HUNearbyLiveListenControlleriOS__handleRemoteControlSettingChange__block_invoke(uint64_t a1)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = +[HUHearingSettings sharedInstance];
  v3 = [v2 liveListenRemoteControlEnabled];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _devicesToMessage];
    v6 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_40];

    v7 = calculateState([*(a1 + 32) cachedIsListening], objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute"), objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute"), objc_msgSend(*(a1 + 32), "cachedCurrentCallsCount"), objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled"));
    v26[0] = &unk_1F5623D88;
    v25[0] = @"type";
    v25[1] = @"state";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v26[1] = v8;
    v25[2] = @"isPlayingBack";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedIsPlayingBack")}];
    v26[2] = v9;
    v25[3] = @"transcription";
    v10 = [*(a1 + 32) cachedTranscription];
    v26[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];

    [*(a1 + 32) _notifyAboutAllObservingDevices];
  }

  else
  {
    v12 = [v4 cachedNearbyDevices];
    v6 = [v12 ax_filteredArrayUsingBlock:&__block_literal_global_42];

    v23[0] = @"type";
    v23[1] = @"state";
    v24[0] = &unk_1F5623D88;
    v24[1] = &unk_1F5623DA0;
    v23[2] = @"isPlayingBack";
    v23[3] = @"transcription";
    v24[2] = MEMORY[0x1E695E110];
    v24[3] = &stru_1F5614A78;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
    v13 = MEMORY[0x1E695DF70];
    v14 = [*(a1 + 32) notifiedDevices];
    v15 = [v14 ax_filteredArrayUsingBlock:&__block_literal_global_47];
    v16 = [v13 arrayWithArray:v15];
    [*(a1 + 32) setNotifiedDevices:v16];
  }

  v17 = HCLogHearingAids();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218242;
    v20 = [v6 count];
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "Sending message to update state on %lu nearby devices: %@", &v19, 0x16u);
  }

  v18 = +[HUNearbyController sharedInstance];
  [v18 sendMessage:v11 withDomain:@"com.hearing.LiveListen" toDevices:v6 withPriority:1];
}

- (void)_receivedMessage:(id)message fromDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  deviceCopy = device;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [messageCopy allKeys];
    v16 = 138412290;
    v17 = allKeys;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "Handling incoming message %@", &v16, 0xCu);
  }

  v10 = [messageCopy objectForKeyedSubscript:@"type"];
  integerValue = [v10 integerValue];

  if (integerValue > 3)
  {
    switch(integerValue)
    {
      case 4:
        [(HUNearbyLiveListenControlleriOS *)self _handleStartOrStopRewindMessageFromRemoteDevice:deviceCopy message:messageCopy];
        break;
      case 5:
        [(HUNearbyLiveListenControlleriOS *)self _handleStartObservingFromRemoteDevice:deviceCopy];
        break;
      case 6:
        [(HUNearbyLiveListenControlleriOS *)self _handleStopObservingFromRemoteDevice:deviceCopy];
        break;
    }
  }

  else
  {
    switch(integerValue)
    {
      case 1:
        [(HUNearbyLiveListenControlleriOS *)self _handleRequestCurrentStateMessageFromDevice:deviceCopy];
        break;
      case 2:
        v12 = [messageCopy objectForKeyedSubscript:@"state"];
        updated = updateStateForNearbyDevice([v12 integerValue], deviceCopy);

        controller = [(HUNearbyLiveListenControlleriOS *)self controller];
        if (isLiveListenEnabledNearbyForState([controller state]))
        {
        }

        else
        {
          v15 = isLiveListenEnabledNearbyForState(updated);

          if (!v15)
          {
            break;
          }
        }

        [(HUNearbyLiveListenControlleriOS *)self _handleStateChangedMessage:messageCopy fromDevice:deviceCopy];
        break;
      case 3:
        [(HUNearbyLiveListenControlleriOS *)self _handleStartOrStopMessageFromRemoteDevice:deviceCopy message:messageCopy];
        break;
    }
  }
}

- (void)_handleStateChangedMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v12 = deviceCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = deviceCopy;
  dispatch_async(updateQueue, block);
}

void __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (![a1[4] isObservingNearbyStatus] || (objc_msgSend(a1[4], "shouldBeObservingNearbyStatus") & 1) != 0)
  {
    v2 = [a1[4] activeNearbyDevice];

    v3 = [a1[4] activeNearbyDevice];
    v4 = [v3 isEqual:a1[5]];

    if (v2 && (v4 & 1) == 0)
    {
      v5 = HCLogHearingAids();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [a1[4] activeNearbyDevice];
        v7 = a1[5];
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring update. Active device (%@) does not match messaging device (%@)", &v15, 0x16u);
      }

      return;
    }

    v8 = [a1[6] objectForKeyedSubscript:@"state"];
    updated = updateStateForNearbyDevice([v8 integerValue], a1[5]);

    if (isLiveListenEnabledNearbyForState(updated))
    {
      v10 = a1[5];
    }

    else
    {
      if (!v4)
      {
LABEL_16:
        [a1[4] setCachedNearbyState:updated];
        v12 = [a1[6] objectForKeyedSubscript:@"isPlayingBack"];
        [a1[4] setCachedNearbyIsPlayingBack:{objc_msgSend(v12, "BOOLValue")}];

        v13 = [a1[6] objectForKeyedSubscript:@"transcription"];
        [a1[4] setCachedNearbyTranscription:v13];

        v14 = a1[4];

        [v14 _updateState];
        return;
      }

      v10 = 0;
    }

    [a1[4] setActiveNearbyDevice:v10];
    goto LABEL_16;
  }

  v11 = HCLogHearingAids();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __73__HUNearbyLiveListenControlleriOS__handleStateChangedMessage_fromDevice___block_invoke_cold_1(v11);
  }

  [a1[4] _sendStopObservingMessage];
  [a1[4] setIsObservingNearbyStatus:0];
}

- (void)_handleStartOrStopMessageFromRemoteDevice:(id)device message:(id)message
{
  deviceCopy = device;
  messageCopy = message;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__HUNearbyLiveListenControlleriOS__handleStartOrStopMessageFromRemoteDevice_message___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v12 = deviceCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = deviceCopy;
  dispatch_async(updateQueue, block);
}

void __85__HUNearbyLiveListenControlleriOS__handleStartOrStopMessageFromRemoteDevice_message___block_invoke(id *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] _devicesToMessage];
  v3 = [v2 containsObject:a1[5]];

  if (v3)
  {
    v4 = [a1[6] objectForKeyedSubscript:@"shouldStart"];
    v5 = [v4 BOOLValue];

    v6 = [a1[4] controller];
    v7 = [v6 state];

    if (v5)
    {
      if (isLiveListenAvailableForState(v7) && !isLiveListenEnabledForState(v7))
      {
        v8 = [a1[4] notifiedDevices];
        [v8 addObject:a1[5]];

        LiveListenSendStartedNotificationForDevice(a1[5]);
        v9 = *MEMORY[0x1E695A8C0];
        v17[0] = *MEMORY[0x1E695A8B0];
        v17[1] = v9;
        v18[0] = &unk_1F5623DB8;
        v18[1] = MEMORY[0x1E695E118];
        v17[2] = *MEMORY[0x1E695A8E8];
        v18[2] = &unk_1F5623DD0;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
        AudioServicesPlaySystemSoundWithOptions();
        [a1[4] _startLiveListenFromRemoteDevice:a1[5]];
      }
    }

    else if (isLiveListenEnabledForState(v7))
    {
      [a1[4] _stopLiveListenFromRemoteDevice:a1[5]];
      v13 = *MEMORY[0x1E695A8C0];
      v15[0] = *MEMORY[0x1E695A8B0];
      v15[1] = v13;
      v16[0] = &unk_1F5623DB8;
      v16[1] = MEMORY[0x1E695E118];
      v15[2] = *MEMORY[0x1E695A8E8];
      v16[2] = &unk_1F5623DD0;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
      AudioServicesPlaySystemSoundWithOptions();
    }
  }

  else
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[5];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring start/stop message from unauthorized device %@", buf, 0xCu);
    }

    [a1[4] _sendEmptyStateToUnauthorizedDevice:a1[5]];
  }
}

- (void)_handleStartOrStopRewindMessageFromRemoteDevice:(id)device message:(id)message
{
  deviceCopy = device;
  messageCopy = message;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__HUNearbyLiveListenControlleriOS__handleStartOrStopRewindMessageFromRemoteDevice_message___block_invoke;
  block[3] = &unk_1E85CA468;
  block[4] = self;
  v12 = deviceCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = deviceCopy;
  dispatch_async(updateQueue, block);
}

void __91__HUNearbyLiveListenControlleriOS__handleStartOrStopRewindMessageFromRemoteDevice_message___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _devicesToMessage];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:@"shouldStart"];
    v5 = [v4 BOOLValue];

    v6 = [*(a1 + 32) controller];
    v7 = [v6 state];

    v8 = [*(a1 + 32) controller];
    v9 = [v8 isPlayingBack];

    if (isLiveListenEnabledForState(v7))
    {
      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          v10 = *(a1 + 32);

          [v10 _startLiveListenRewind];
        }
      }

      else if (v9)
      {
        v14 = *(a1 + 32);

        [v14 _stopLiveListenRewind];
      }
    }

    else
    {
      v13 = HCLogHearingAids();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "Live listen not enabled, ignoring rewind message", &v15, 2u);
      }
    }
  }

  else
  {
    v11 = HCLogHearingAids();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring start/stop rewind message from unauthorized device %@", &v15, 0xCu);
    }

    [*(a1 + 32) _sendEmptyStateToUnauthorizedDevice:*(a1 + 40)];
  }
}

- (void)_handleRequestCurrentStateMessageFromDevice:(id)device
{
  deviceCopy = device;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__HUNearbyLiveListenControlleriOS__handleRequestCurrentStateMessageFromDevice___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(updateQueue, v7);
}

void __79__HUNearbyLiveListenControlleriOS__handleRequestCurrentStateMessageFromDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _devicesToMessage];
  if ([v2 containsObject:*(a1 + 40)])
  {

    goto LABEL_4;
  }

  v3 = [*(a1 + 40) isWatch];

  if (v3)
  {
LABEL_4:
    if (*(a1 + 40))
    {
      v4 = calculateState([*(a1 + 32) cachedIsListening], objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute"), objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute"), objc_msgSend(*(a1 + 32), "cachedCurrentCallsCount"), objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled"));
      v13[0] = @"type";
      v13[1] = @"state";
      v14[0] = &unk_1F5623D88;
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      v14[1] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Replying with %@", buf, 0xCu);
      }

      v8 = +[HUNearbyController sharedInstance];
      v12 = *(a1 + 40);
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      [v8 sendMessage:v6 withDomain:@"com.hearing.LiveListen" toDevices:v9 withPriority:1];
    }

    return;
  }

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring request current state message from unauthorized device %@", buf, 0xCu);
  }

  [*(a1 + 32) _sendEmptyStateToUnauthorizedDevice:*(a1 + 40)];
}

- (void)_handleStartObservingFromRemoteDevice:(id)device
{
  deviceCopy = device;
  updateQueue = [(HUNearbyLiveListenControlleriOS *)self updateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__HUNearbyLiveListenControlleriOS__handleStartObservingFromRemoteDevice___block_invoke;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(updateQueue, v7);
}

void __73__HUNearbyLiveListenControlleriOS__handleStartObservingFromRemoteDevice___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observingDevices];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) observingDevices];
    [v4 addObject:*(a1 + 40)];

    v5 = [*(a1 + 32) _devicesToMessage];
    v6 = [v5 containsObject:*(a1 + 40)];

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v9 = *(a1 + 40);
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "New device started observing, send update? %@ - %@", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    if (v6)
    {
      if ([v10 cachedIsListening])
      {
        v11 = calculateState([*(a1 + 32) cachedIsListening], objc_msgSend(*(a1 + 32), "cachedHasLiveListenRoute"), objc_msgSend(*(a1 + 32), "cachedHasHearingAidRoute"), objc_msgSend(*(a1 + 32), "cachedCurrentCallsCount"), objc_msgSend(*(a1 + 32), "cachedWirelessSplitterEnabled"));
        v21[0] = &unk_1F5623D88;
        v20[0] = @"type";
        v20[1] = @"state";
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        v21[1] = v12;
        v20[2] = @"isPlayingBack";
        v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "cachedIsPlayingBack")}];
        v21[2] = v13;
        v20[3] = @"transcription";
        v14 = [*(a1 + 32) cachedTranscription];
        v21[3] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

        v16 = +[HUNearbyController sharedInstance];
        v19 = *(a1 + 40);
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        [v16 sendMessage:v15 withDomain:@"com.hearing.LiveListen" toDevices:v17 withPriority:1];

        [*(a1 + 32) _notifyAboutObservingDevice:*(a1 + 40)];
      }

      else
      {
        v18 = HCLogHearingAids();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "Not listening, no need to send status", buf, 2u);
        }
      }
    }

    else
    {
      [v10 _sendEmptyStateToUnauthorizedDevice:*(a1 + 40)];
    }
  }
}

- (void)_handleStopObservingFromRemoteDevice:(id)device
{
  v11 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  observingDevices = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
  v6 = [observingDevices containsObject:deviceCopy];

  if (v6)
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = deviceCopy;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "New device stopped observing %@", &v9, 0xCu);
    }

    observingDevices2 = [(HUNearbyLiveListenControlleriOS *)self observingDevices];
    [observingDevices2 removeObject:deviceCopy];
  }
}

- (void)_sendStartOrStopMessage:(BOOL)message
{
  messageCopy = message;
  v18[2] = *MEMORY[0x1E69E9840];
  cachedNearbyDevices = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
  v6 = [cachedNearbyDevices count];

  if (v6)
  {
    v17[0] = @"type";
    v17[1] = @"shouldStart";
    v18[0] = &unk_1F5623DA0;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:messageCopy];
    v18[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cachedNearbyDevices2 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
      v13 = 134218242;
      v14 = [cachedNearbyDevices2 count];
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Sending start/stop message to %lu paired devices: %@", &v13, 0x16u);
    }

    v11 = +[HUNearbyController sharedInstance];
    cachedNearbyDevices3 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
    [v11 sendMessage:v8 withDomain:@"com.hearing.LiveListen" toDevices:cachedNearbyDevices3 withPriority:1];
  }
}

- (void)_sendStartOrStopRewindMessage:(BOOL)message
{
  messageCopy = message;
  v18[2] = *MEMORY[0x1E69E9840];
  cachedNearbyDevices = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
  v6 = [cachedNearbyDevices count];

  if (v6)
  {
    v17[0] = @"type";
    v17[1] = @"shouldStart";
    v18[0] = &unk_1F5623DE8;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:messageCopy];
    v18[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cachedNearbyDevices2 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
      v13 = 134218242;
      v14 = [cachedNearbyDevices2 count];
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Sending start/stop rewind message to %lu paired devices: %@", &v13, 0x16u);
    }

    v11 = +[HUNearbyController sharedInstance];
    cachedNearbyDevices3 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
    [v11 sendMessage:v8 withDomain:@"com.hearing.LiveListen" toDevices:cachedNearbyDevices3 withPriority:1];
  }
}

- (void)_sendStartObservingMessageToDevices:(id)devices
{
  v12[1] = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    v11 = @"type";
    v12[0] = &unk_1F5623E00;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      v8 = [devicesCopy count];
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Sending start observing message to %lu paired devices: %@", &v7, 0x16u);
    }

    v6 = +[HUNearbyController sharedInstance];
    [v6 sendMessage:v4 withDomain:@"com.hearing.LiveListen" toDevices:devicesCopy withPriority:1];
  }
}

- (void)_sendStopObservingMessage
{
  v15[1] = *MEMORY[0x1E69E9840];
  cachedNearbyDevices = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
  v4 = [cachedNearbyDevices count];

  if (v4)
  {
    v14 = @"type";
    v15[0] = &unk_1F5623E18;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cachedNearbyDevices2 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
      v10 = 134218242;
      v11 = [cachedNearbyDevices2 count];
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sending stop observing message to %lu paired devices: %@", &v10, 0x16u);
    }

    v8 = +[HUNearbyController sharedInstance];
    cachedNearbyDevices3 = [(HUNearbyLiveListenControlleriOS *)self cachedNearbyDevices];
    [v8 sendMessage:v5 withDomain:@"com.hearing.LiveListen" toDevices:cachedNearbyDevices3 withPriority:1];
  }
}

- (void)_sendEmptyStateToUnauthorizedDevice:(id)device
{
  v15[4] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (![(HUNearbyLiveListenControlleriOS *)self cachedIsListening])
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = deviceCopy;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Already not listening, no need to send empty state to unauthorized device %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (deviceCopy)
  {
    v14[0] = @"type";
    v14[1] = @"state";
    v15[0] = &unk_1F5623D88;
    v15[1] = &unk_1F5623DA0;
    v14[2] = @"isPlayingBack";
    v14[3] = @"transcription";
    v15[2] = MEMORY[0x1E695E110];
    v15[3] = &stru_1F5614A78;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    v6 = HCLogHearingAids();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = deviceCopy;
      _os_log_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEFAULT, "Sending empty state message %@ to unauthorized device %@", buf, 0x16u);
    }

    v7 = +[HUNearbyController sharedInstance];
    v9 = deviceCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [v7 sendMessage:v5 withDomain:@"com.hearing.LiveListen" toDevices:v8 withPriority:1];

LABEL_8:
  }
}

void __68__HUNearbyLiveListenControlleriOS__startLiveListenFromRemoteDevice___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Error starting Live Listen: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __67__HUNearbyLiveListenControlleriOS__stopLiveListenFromRemoteDevice___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Error stopping Live Listen: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_updateRemoteStartHistoryForDevice:(uint64_t)a3 didStart:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Had stored that device %@ started live listen, but no info in remote start history dict", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end