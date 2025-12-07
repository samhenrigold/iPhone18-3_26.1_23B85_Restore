@interface CMContinuityCaptureRemoteCompositeDevice
+ (void)setWombatMode:(BOOL)mode;
- (BOOL)_avcaptureDeviceSupportsDockKit;
- (BOOL)postEventAction:(unint64_t)action args:(id)args;
- (BOOL)setupCaptureDevices;
- (CMContinuityCaptureRemoteCompositeDevice)initWithTransportServer:(id)server videoPreviewLayer:(id)layer;
- (ContinuityCaptureDeviceServer)server;
- (NSDate)currentSessionActivationStartTime;
- (NSString)description;
- (id)_aggregateEventPairInAnyState:(id)state entryEventName:(id)name exitEventName:(id)eventName;
- (id)controlWithName:(id)name;
- (unint64_t)currentSessionID;
- (void)_invalidate;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion;
- (void)connectionInterrupted:(id)interrupted forDevice:(id)device;
- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)handleSynchronizeAudioClockCompletion;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postAggregatedCachedEventsIfApplicable;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)postEventOnAllEntities:(id)entities data:(id)data;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setupControls;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)terminateCompleteForDevice:(id)device;
- (void)updateStreamConnectStatus;
- (void)updateSystemState;
@end

@implementation CMContinuityCaptureRemoteCompositeDevice

void __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke(uint64_t a1)
{
  v1 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v1 addObserver:? forKeyPath:? options:? context:?];

  v2 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v2 addObserver:? forKeyPath:? options:? context:?];
}

void __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke_2(uint64_t a1)
{
  v1 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  [v1 addObserver:? forKeyPath:? options:? context:?];
}

- (NSDate)currentSessionActivationStartTime
{
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v3 = server;
  if (server)
  {
    sessionActivationStartTime = [server sessionActivationStartTime];
  }

  else
  {
    sessionActivationStartTime = 0;
  }

  return sessionActivationStartTime;
}

+ (void)setWombatMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543874;
    selfCopy = self;
    v8 = 2080;
    v9 = "+[CMContinuityCaptureRemoteCompositeDevice setWombatMode:]";
    v10 = 1024;
    v11 = modeCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %d", &v6, 0x1Cu);
  }

  FigCaptureSessionRemoteSetWombatInUse();
  FigCaptureSessionRemoteSetWombatEnabled();
}

- (void)updateStreamConnectStatus
{
  objc_initWeak(location, self);
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy9 = self;
    v108 = 2080;
    v109 = "[CMContinuityCaptureRemoteCompositeDevice updateStreamConnectStatus]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v5 = server;
  if (server)
  {
    v88 = server;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = objc_alloc(MEMORY[0x277CBEB58]);
    v8 = CMContinuityCaptureGetListOfSupportedSidebandIdentifiers();
    v9 = [v7 initWithArray:?];
    pendingSidebandStreamIdentifiers = self->_pendingSidebandStreamIdentifiers;
    self->_pendingSidebandStreamIdentifiers = v9;

    localDevice = [v88 localDevice];
    objc_sync_enter(localDevice);
    localDevice2 = [v88 localDevice];
    activeStreams = [localDevice2 activeStreams];

    objc_sync_exit(localDevice);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = activeStreams;
    v14 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = *v117;
      do
      {
        for (i = 0; i != v14; i = (i + 1))
        {
          if (*v117 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v116 + 1) + 8 * i);
          v18 = self->_pendingSidebandStreamIdentifiers;
          streamIdentifier = [v17 streamIdentifier];
          [(NSMutableSet *)v18 removeObject:?];

          if ([v17 entity])
          {
            v20 = MEMORY[0x277CCABB0];
            [v17 entity];
            v21 = [v20 numberWithInteger:?];
            [v6 addObject:?];
          }
        }

        v14 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v14);
    }

    v22 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      remoteClientDisconnectNotifiedByEntityType = self->_remoteClientDisconnectNotifiedByEntityType;
      timeSyncClock = [v88 timeSyncClock];
      v25 = self->_pendingSidebandStreamIdentifiers;
      *buf = 138544386;
      selfCopy9 = self;
      v108 = 2114;
      v109 = v6;
      v110 = 2114;
      v111 = remoteClientDisconnectNotifiedByEntityType;
      v112 = 2112;
      v113 = timeSyncClock;
      v114 = 2112;
      v115 = v25;
      _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ active entities %{public}@ pendingReconnectEntities %{public}@ timeSync %@ pendingSidebandStreamIdentifiers %@", buf, 0x34u);
    }

    if ([v6 count])
    {
      timeSyncClock2 = [v88 timeSyncClock];

      if (timeSyncClock2)
      {
        currentTransport = [v88 currentTransport];
        v28 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          currentTransport = self->_currentTransport;
          *buf = 138543874;
          selfCopy9 = self;
          v108 = 2048;
          v109 = currentTransport;
          v110 = 2048;
          v111 = currentTransport;
          _os_log_impl(&dword_242545000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ evaluate pong %ld -> %ld", buf, 0x20u);
        }

        if (currentTransport != self->_currentTransport)
        {
          v30 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];

          if (v30)
          {
            v31 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
            captureSession = [v31 captureSession];
            [captureSession setTransport:?];
          }

          v33 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];

          if (v33)
          {
            v34 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
            captureSession2 = [v34 captureSession];
            [captureSession2 setTransport:?];
          }

          self->_currentTransport = currentTransport;
          if (currentTransport == 2)
          {
            v36 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy9 = self;
              _os_log_impl(&dword_242545000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ skip pong sound since device is wired", buf, 0xCu);
            }
          }

          else
          {
            clientDeviceModel = [v88 clientDeviceModel];
            v38 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy9 = self;
              v108 = 1024;
              LODWORD(v109) = clientDeviceModel == 2;
              _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ play pong sound since device is wireless (consider pong history : %d)", buf, 0x12u);
            }

            v36 = +[CMContinuityCapturePongSoundManager sharedInstance];
            localDevice3 = [v88 localDevice];
            deviceIdentifier = [localDevice3 deviceIdentifier];
            uUIDString = [deviceIdentifier UUIDString];
            [NSObject pongIfNeededWithShouldConsiderPongHistory:v36 forIdentifier:"pongIfNeededWithShouldConsiderPongHistory:forIdentifier:"];
          }
        }
      }
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    allValues = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
    v43 = [allValues countByEnumeratingWithState:? objects:? count:?];
    if (v43)
    {
      v86 = 0;
      v44 = *v103;
      while (1)
      {
        v45 = 0;
        do
        {
          if (*v103 != v44)
          {
            objc_enumerationMutation(allValues);
          }

          v46 = *(*(&v102 + 1) + 8 * v45);
          v47 = MEMORY[0x277CCABB0];
          [v46 entity];
          v48 = [v47 numberWithInteger:?];
          v49 = [v6 containsObject:?];

          if (!v49)
          {
            v56 = self->_remoteClientDisconnectNotifiedByEntityType;
            v57 = MEMORY[0x277CCABB0];
            [v46 entity];
            v58 = [v57 numberWithInteger:?];
            LOBYTE(v56) = [(NSMutableSet *)v56 containsObject:?];

            if (v56)
            {
              goto LABEL_49;
            }

            v59 = self->_remoteClientDisconnectNotifiedByEntityType;
            v60 = MEMORY[0x277CCABB0];
            [v46 entity];
            v61 = [v60 numberWithInteger:?];
            [(NSMutableSet *)v59 addObject:?];

            [v46 entity];
            v98 = @"CMContinuityCaptureStateMachineEventDataKeyOption";
            v99 = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
            v100 = &unk_2854ECA70;
            v62 = MEMORY[0x277CCABB0];
            mach_continuous_time();
            v51 = [v62 numberWithUnsignedLongLong:?];
            v101 = v51;
            v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            [CMContinuityCaptureRemoteCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];

            goto LABEL_48;
          }

          timeSyncClock3 = [v88 timeSyncClock];

          if (!timeSyncClock3)
          {
            v51 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy9 = self;
              v53 = v51;
              v54 = "%{public}@ Wait for timesync clock";
              v55 = 12;
LABEL_45:
              _os_log_impl(&dword_242545000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, v55);
            }

LABEL_48:

            goto LABEL_49;
          }

          if ([(NSMutableSet *)self->_pendingSidebandStreamIdentifiers count])
          {
            v51 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = self->_pendingSidebandStreamIdentifiers;
              *buf = 138543618;
              selfCopy9 = self;
              v108 = 2112;
              v109 = v52;
              v53 = v51;
              v54 = "%{public}@ Wait for sideband identifiers %@";
              v55 = 22;
              goto LABEL_45;
            }

            goto LABEL_48;
          }

          v64 = self->_remoteClientDisconnectNotifiedByEntityType;
          v65 = MEMORY[0x277CCABB0];
          [v46 entity];
          v66 = [v65 numberWithInteger:?];
          LODWORD(v64) = [(NSMutableSet *)v64 containsObject:?];

          if (v64)
          {
            [v46 entity];
            [CMContinuityCaptureRemoteCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];
            v67 = self->_remoteClientDisconnectNotifiedByEntityType;
            v68 = MEMORY[0x277CCABB0];
            [v46 entity];
            v51 = [v68 numberWithInteger:?];
            [(NSMutableSet *)v67 removeObject:?];
            v86 = 1;
            goto LABEL_48;
          }

          v86 = 1;
LABEL_49:
          v45 = (v45 + 1);
        }

        while (v43 != v45);
        v69 = [allValues countByEnumeratingWithState:? objects:? count:?];
        v43 = v69;
        if (!v69)
        {
          goto LABEL_55;
        }
      }
    }

    v86 = 0;
LABEL_55:

    v5 = v88;
    if ([v6 count])
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:?];
      v70 = self->_state & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:?];
      v70 = self->_state | 8;
    }

    self->_state = v70;
    [(CMContinuityCaptureRemoteCompositeDevice *)self didChangeValueForKey:?];
    if (v86)
    {
      v95 = @"kCMContinuityCaptureControlSystemPressure";
      v96 = @"kCMContinuityCaptureControlBatteryLevel";
      v97 = @"kCMContinuityCaptureControlBatteryState";
      [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v71 = v92 = 0u;
      v72 = [v71 countByEnumeratingWithState:? objects:? count:?];
      if (v72)
      {
        v73 = *v92;
        do
        {
          for (j = 0; j != v72; j = (j + 1))
          {
            if (*v92 != v73)
            {
              objc_enumerationMutation(v71);
            }

            v75 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
            if (v75)
            {
              v76 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                selfCopy9 = self;
                v108 = 2112;
                v109 = v75;
                _os_log_impl(&dword_242545000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated %@", buf, 0x16u);
              }

              localDevice4 = [v88 localDevice];
              [localDevice4 setValueForControl:? completion:?];
            }
          }

          v72 = [v71 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v72);
      }

      v5 = v88;
      if (![(NSMutableSet *)self->_remoteClientDisconnectNotifiedByEntityType count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_server);
        localDevice5 = [WeakRetained localDevice];
        legacyReconnectRecovery = [localDevice5 legacyReconnectRecovery];

        if (legacyReconnectRecovery)
        {
          v81 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            legacyConnectionResetDelay = self->_legacyConnectionResetDelay;
            *buf = 138543618;
            selfCopy9 = self;
            v108 = 1024;
            LODWORD(v109) = legacyConnectionResetDelay;
            _os_log_impl(&dword_242545000, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ Legacy Recovery after %u", buf, 0x12u);
          }

          v83 = objc_loadWeakRetained(&self->_server);
          localDevice6 = [v83 localDevice];
          [localDevice6 setLegacyReconnectRecovery:?];

          [CMContinuityCaptureRemoteCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];
          v85 = dispatch_time(0, 1000000000 * self->_legacyConnectionResetDelay);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __69__CMContinuityCaptureRemoteCompositeDevice_updateStreamConnectStatus__block_invoke;
          block[3] = &unk_278D5C080;
          objc_copyWeak(&v90, location);
          dispatch_after(v85, MEMORY[0x277D85CD0], block);
          v5 = v88;
          objc_destroyWeak(&v90);
        }
      }

      [(CMContinuityCaptureRemoteCompositeDevice *)self postAggregatedCachedEventsIfApplicable];
      [(CMContinuityCaptureRemoteCompositeDevice *)self updateSystemState];
    }
  }

  objc_destroyWeak(location);
}

void __69__CMContinuityCaptureRemoteCompositeDevice_updateStreamConnectStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained postEvent:? entity:? data:?];
    v2 = [v5 server];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 localDevice];
      [v4 postEvent:? entity:? data:?];
    }

    WeakRetained = v5;
  }
}

- (id)_aggregateEventPairInAnyState:(id)state entryEventName:(id)name exitEventName:(id)eventName
{
  stateCopy = state;
  nameCopy = name;
  eventNameCopy = eventName;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_V2(self->_queue);
  v11 = stateCopy;
  v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = MEMORY[0];
    do
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(8 * i);
        if (v14)
        {
          [v10 addObject:?];
          v14 = 1;
        }

        else if ([*(8 * i) count] && (objc_msgSend(v18, "firstObject"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v20 = v19;
          if (([v19 isEqualToString:?] & 1) != 0 || objc_msgSend(v20, "isEqualToString:"))
          {
            v21 = v18;

            v14 = 0;
          }

          else
          {
            if (v15)
            {
              [v10 addObject:?];
            }

            [v10 addObject:?];
            v21 = 0;
            v14 = 1;
          }

          v15 = v21;
        }

        else
        {
          v14 = 0;
        }
      }

      v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v13);

    if (v15)
    {
      [v10 addObject:?];
    }
  }

  else
  {

    v15 = 0;
  }

  return v10;
}

- (void)postAggregatedCachedEventsIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_pendingEventToBePostedQueue count])
  {
    v3 = [CMContinuityCaptureRemoteCompositeDevice _aggregateEventPairInAnyState:"_aggregateEventPairInAnyState:entryEventName:exitEventName:" entryEventName:? exitEventName:?];
    v4 = [CMContinuityCaptureRemoteCompositeDevice _aggregateEventPairInAnyState:"_aggregateEventPairInAnyState:entryEventName:exitEventName:" entryEventName:? exitEventName:?];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEventToBePostedQueue = self->_pendingEventToBePostedQueue;
    self->_pendingEventToBePostedQueue = v5;

    if (v4 && [v4 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = v4;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; i = (i + 1))
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            if ([v12 count] >= 3)
            {
              v13 = [v12 objectAtIndexedSubscript:?];
              v14 = [v12 objectAtIndexedSubscript:?];
              unsignedIntegerValue = [v14 unsignedIntegerValue];

              v16 = [v12 objectAtIndexedSubscript:?];
              v17 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                selfCopy = self;
                v21 = 2114;
                v22 = v13;
                v23 = 1024;
                v24 = unsignedIntegerValue;
                _os_log_impl(&dword_242545000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Posting Cached event %{public}@ entity %d", buf, 0x1Cu);
              }

              [CMContinuityCaptureRemoteCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];
            }
          }

          v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v9);
      }

      v4 = v18;
    }
  }
}

- (void)terminateCompleteForDevice:(id)device
{
  deviceCopy = device;
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke;
  block[3] = &unk_278D5D828;
  block[4] = self;
  v10 = deviceCopy;
  v11 = server;
  v7 = server;
  v8 = deviceCopy;
  dispatch_async(queue, block);
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke(id *a1)
{
  v2 = *(a1[4] + 3);
  v3 = MEMORY[0x277CCABB0];
  [a1[5] entity];
  v4 = [v3 numberWithInteger:?];
  v5 = [v2 objectForKey:?];

  if (v5)
  {
    v6 = *(a1[4] + 3);
    v7 = MEMORY[0x277CCABB0];
    [a1[5] entity];
    v8 = [v7 numberWithInteger:?];
    v9 = [v6 objectForKeyedSubscript:?];

    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = v11[3];
      v14 = a1[6];
      *buf = 138544130;
      v43 = v11;
      v44 = 2114;
      v45 = v12;
      v46 = 2114;
      v47 = v13;
      v48 = 2112;
      v49 = v14;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate complete for %{public}@ currentPending %{public}@ server %@", buf, 0x2Au);
    }

    if ([a1[5] entity] == 1)
    {
      v15 = [v9 captureSession];
      v16 = [v15 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_26;
      block[3] = &unk_278D5D828;
      block[4] = a1[4];
      v40 = a1[6];
      v41 = v9;
      dispatch_async(v16, block);
    }

    if ([a1[5] entity] == 3)
    {
      v17 = [v9 captureSession];
      v18 = [v17 queue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_27;
      v36[3] = &unk_278D5D828;
      v36[4] = a1[4];
      v37 = a1[6];
      v38 = v9;
      dispatch_async(v18, v36);
    }

    v19 = *(a1[4] + 3);
    v20 = MEMORY[0x277CCABB0];
    [a1[5] entity];
    v21 = [v20 numberWithInteger:?];
    [v19 removeObjectForKey:?];

    if (![*(a1[4] + 3) count])
    {
      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a1[4];
        *buf = 138543362;
        v43 = v23;
        _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Session termination complete", buf, 0xCu);
      }

      v24 = a1[6];
      if (v24)
      {
        v25 = [v24 queue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_28;
        v34[3] = &unk_278D5C008;
        v34[4] = a1[4];
        v35 = a1[6];
        dispatch_async(v25, v34);

        v26 = [a1[6] localDevice];
        v27 = [v26 queue];
        v28 = MEMORY[0x277D85DD0];
        v29 = 3221225472;
        v30 = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_29;
        v31 = &unk_278D5C008;
        v32 = a1[4];
        v33 = a1[6];
        dispatch_async(v27, &v28);

        [a1[6] relayTerminationComplete];
      }

      [a1[4] _invalidate];
      [a1[4] willChangeValueForKey:?];
      *(a1[4] + 7) = 16;
      [a1[4] didChangeValueForKey:?];
    }
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_26(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove video capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 97));
  if (v5)
  {
    v6 = [*(a1 + 48) captureSession];
    [v6 removeObserver:? forKeyPath:? context:?];

    atomic_store(0, (*(a1 + 32) + 97));
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_27(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove audio capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 98));
  if (v5)
  {
    v6 = [*(a1 + 48) captureSession];
    [v6 removeObserver:? forKeyPath:? context:?];

    atomic_store(0, (*(a1 + 32) + 98));
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_28(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove timesync kvo %@", &v6, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 100));
  if (v5)
  {
    [*(a1 + 40) removeObserver:? forKeyPath:? context:?];
    atomic_store(0, (*(a1 + 32) + 100));
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_29(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove active stream kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 99));
  if (v5)
  {
    v6 = [*(a1 + 40) localDevice];
    [v6 removeObserver:? forKeyPath:? context:?];

    atomic_store(0, (*(a1 + 32) + 99));
  }
}

- (unint64_t)currentSessionID
{
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v3 = server;
  if (server)
  {
    currentSessionID = [server currentSessionID];
  }

  else
  {
    currentSessionID = 0;
  }

  return currentSessionID;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__CMContinuityCaptureRemoteCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __91__CMContinuityCaptureRemoteCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:? ofObject:? change:? context:?];
    WeakRetained = v2;
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  dispatch_assert_queue_V2(self->_queue);
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v15 = server;
  if (server)
  {
    if (CMContinityCaptureDebugLogEnabled(server, v14))
    {
      v16 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v37 = 2114;
        v38 = pathCopy;
        v39 = 2114;
        v40 = objectCopy;
        _os_log_debug_impl(&dword_242545000, v16, OS_LOG_TYPE_DEBUG, "%@ keypath:%{public}@ object:%{public}@", buf, 0x20u);
      }
    }

    if ([pathCopy isEqualToString:?])
    {
      v17 = [changeCopy objectForKeyedSubscript:?];
      level = [v17 level];
      value = [v12 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 value];
        v34 = v15;
        v20 = pathCopy;
        v21 = v12;
        v22 = v17;
        v23 = changeCopy;
        v25 = v24 = objectCopy;
        v26 = [v25 isEqualToString:?];

        objectCopy = v24;
        changeCopy = v23;
        v17 = v22;
        v12 = v21;
        pathCopy = v20;
        v15 = v34;

        if (v26)
        {
LABEL_13:

          goto LABEL_21;
        }

        v27 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          value2 = [v12 value];
          *buf = 138543874;
          selfCopy3 = self;
          v37 = 2112;
          v38 = value2;
          v39 = 2112;
          v40 = level;
          _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ System Pressure state changed from %@ to %@.", buf, 0x20u);
        }

        [v12 setValue:?];
        value = [v34 localDevice];
        [value setValueForControl:? completion:?];
      }

      goto LABEL_13;
    }

    if (([pathCopy isEqualToString:?] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:"))
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self updateStreamConnectStatus];
    }

    else if (([pathCopy isEqualToString:?] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:"))
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self updateSystemState];
    }

    else if (([pathCopy isEqualToString:?] & 1) == 0 && objc_msgSend(pathCopy, "isEqualToString:"))
    {
      v29 = [changeCopy objectForKeyedSubscript:?];
      integerValue = [v29 integerValue];

      v31 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        currentSessionID = [(CMContinuityCaptureRemoteCompositeDevice *)self currentSessionID];
        *buf = 138543874;
        selfCopy3 = self;
        v37 = 2048;
        v38 = currentSessionID;
        v39 = 2048;
        v40 = integerValue;
        _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] capture session state %ld", buf, 0x20u);
      }

      if (integerValue == 3)
      {
        v33 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        [CMContinuityCaptureRemoteCompositeDevice connectionInterrupted:"connectionInterrupted:forDevice:" forDevice:?];
      }
    }
  }

LABEL_21:
}

- (void)connectionInterrupted:(id)interrupted forDevice:(id)device
{
  interruptedCopy = interrupted;
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v7 = server;
  if (interruptedCopy && server && [interruptedCopy code])
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = interruptedCopy;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Interrupted, error %{public}@", buf, 0x16u);
    }

    v13 = MEMORY[0x277CBEC38];
    v9 = MEMORY[0x277CCABB0];
    mach_continuous_time();
    v10 = [v9 numberWithUnsignedLongLong:{@"CMContinuityCaptureStateMachineEventDataKeyOption", @"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart", @"CMContinuityCaptureStateMachineEventDataKeyPostTime", &unk_2854ECA70, v13}];
    v14 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [CMContinuityCaptureRemoteCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];

    localDevice = [v7 localDevice];
    [localDevice postEvent:? entity:? data:?];
  }
}

- (BOOL)setupCaptureDevices
{
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  if (server)
  {
    v4 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:?];
    if (v4)
    {
      [server clientDeviceModel];
    }

    v6 = [CMContinuityCaptureAVCaptureVideoSession alloc];
    v7 = FigDispatchQueueCreateWithPriority();
    v8 = [CMContinuityCaptureAVCaptureVideoSession initWithQueue:v6 requiresMulticamSession:"initWithQueue:requiresMulticamSession:"];

    [(CMContinuityCaptureAVCaptureVideoSession *)v8 setVideoPreviewLayer:?];
    [server currentTransport];
    [(CMContinuityCaptureAVCaptureBaseSession *)v8 setTransport:?];
    [server clientDeviceModel];
    [(CMContinuityCaptureAVCaptureBaseSession *)v8 setClientDeviceModel:?];
    v9 = [CMContinuityCaptureAVCaptureAudioSession alloc];
    v10 = FigDispatchQueueCreateWithPriority();
    v38 = [(CMContinuityCaptureAVCaptureAudioSession *)v9 initWithQueue:?];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = server;
    localDevice = [server localDevice];
    capabilities = [localDevice capabilities];
    devicesCapabilities = [capabilities devicesCapabilities];

    v14 = [devicesCapabilities countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      do
      {
        for (i = 0; i != v15; i = (i + 1))
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(devicesCapabilities);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          if (([v18 entityType] == 2 && (v19 = objc_msgSend(v39, "clientDeviceModel"), v20 = off_278D5B918, v19 != 2) || (v21 = objc_msgSend(v18, "entityType"), v20 = off_278D5B920, v21 == 1) || (v22 = objc_msgSend(v18, "entityType"), v20 = off_278D5B908, v22 == 3)) && (v23 = objc_msgSend(objc_alloc(*v20), "initWithCapabilities:compositeDelegate:captureSession:")) != 0)
          {
            v24 = v23;
            v25 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy2 = self;
              v42 = 2114;
              v43 = v24;
              _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Created %{public}@", buf, 0x16u);
            }

            captureDeviceByEntityType = self->_captureDeviceByEntityType;
            v27 = MEMORY[0x277CCABB0];
            [v18 entityType];
            v28 = [v27 numberWithInteger:?];
            [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
          }

          else
          {
            v24 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              entityType = [v18 entityType];
              *buf = 138543618;
              selfCopy2 = self;
              v42 = 1024;
              LODWORD(v43) = entityType;
              _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to create capture device for entity %d", buf, 0x12u);
            }
          }
        }

        v15 = [devicesCapabilities countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }

    v30 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
    if (v30)
    {
      v31 = v30;
      v32 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];

      if (v32)
      {
        v33 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
        v34 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
        [v34 setCompanionDevice:?];

        v35 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
        v36 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
        [v36 setCompanionDevice:?];
      }
    }

    v5 = [(NSMutableDictionary *)self->_captureDeviceByEntityType count]!= 0;

    server = v39;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ContinuityCaptureDeviceServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

void __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localDevice];
  v3 = [v2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_2;
  block[3] = &unk_278D5C008;
  v7 = *(a1 + 32);
  v4 = v7.i64[0];
  v12 = vextq_s8(v7, v7, 8uLL);
  dispatch_async(v3, block);

  v5 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_45;
  v9[3] = &unk_278D5C008;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  dispatch_async(v5, v9);

  [*(a1 + 32) relayTerminationComplete];
  [*(a1 + 40) _invalidate];
}

void __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_2(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove active stream kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 99));
  if (v5)
  {
    v6 = [*(a1 + 40) localDevice];
    [v6 removeObserver:? forKeyPath:? context:?];

    atomic_store(0, (*(a1 + 32) + 99));
  }
}

void __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_45(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove timesync kvo %@", &v6, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 100));
  if (v5)
  {
    [*(a1 + 40) removeObserver:? forKeyPath:? context:?];
    atomic_store(0, (*(a1 + 32) + 100));
  }
}

- (void)_invalidate
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v44 = 2082;
    v45 = "[CMContinuityCaptureRemoteCompositeDevice _invalidate]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v4 = atomic_load(&self->_sessionInvalidated);
  if ((v4 & 1) == 0)
  {
    atomic_store(1u, &self->_sessionInvalidated);
    v5 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    queue = [v5 queue];
    dispatch_assert_queue_not_V2(queue);

    v7 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    queue2 = [v7 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke;
    block[3] = &unk_278D5C0D0;
    block[4] = self;
    dispatch_async_and_wait(queue2, block);

    v9 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    queue3 = [v9 queue];
    dispatch_assert_queue_not_V2(queue3);

    v11 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    queue4 = [v11 queue];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_2;
    v50[3] = &unk_278D5C0D0;
    v50[4] = self;
    dispatch_async_and_wait(queue4, v50);

    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = CMContinuityCaptureLog(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    v16 = *MEMORY[0x277CF3B60];
    v17 = *MEMORY[0x277CF3B58];
    if (v15)
    {
      *buf = 138544130;
      selfCopy2 = self;
      v44 = 2112;
      v45 = v17;
      v46 = 2112;
      v47 = v16;
      v48 = 2112;
      v49 = v13;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting preference (%@) '%@' to %@", buf, 0x2Au);
    }

    v32 = v13;
    CFPreferencesSetValue(v16, v13, v17, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    allValues = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
    v19 = [allValues countByEnumeratingWithState:? objects:? count:?];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; i = (i + 1))
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(allValues);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          queue5 = [v23 queue];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_47;
          v37[3] = &unk_278D5C008;
          v37[4] = self;
          v37[5] = v23;
          dispatch_async(queue5, v37);
        }

        v20 = [allValues countByEnumeratingWithState:? objects:? count:?];
      }

      while (v20);
    }

    v25 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
    v26 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
    if (v25)
    {
      captureSession = [v25 captureSession];
      queue6 = [captureSession queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_48;
      v35[3] = &unk_278D5C008;
      v35[4] = self;
      v36 = v25;
      dispatch_async(queue6, v35);
    }

    if (v26)
    {
      captureSession2 = [v26 captureSession];
      queue7 = [captureSession2 queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_49;
      v33[3] = &unk_278D5C008;
      v33[4] = self;
      v34 = v26;
      dispatch_async(queue7, v33);
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke(uint64_t a1)
{
  v1 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v1 removeObserver:? forKeyPath:? context:?];

  v2 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v2 removeObserver:? forKeyPath:? context:?];
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_2(uint64_t a1)
{
  v1 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  [v1 removeObserver:? forKeyPath:? context:?];
}

void *__55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_47(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidate %{public}@", &v6, 0x16u);
  }

  [*(a1 + 40) stopCameraCaptureStack:?];
  return [*(a1 + 40) invalidate];
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_48(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove video capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 97));
  if (v5)
  {
    v6 = [*(a1 + 40) captureSession];
    [v6 removeObserver:? forKeyPath:? context:?];

    atomic_store(0, (*(a1 + 32) + 97));
  }
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_49(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove audio capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 98));
  if (v5)
  {
    v6 = [*(a1 + 40) captureSession];
    [v6 removeObserver:? forKeyPath:? context:?];

    atomic_store(0, (*(a1 + 32) + 98));
  }
}

- (void)setupControls
{
  v22 = 0;
  v23 = 0;
  v21 = 1;
  v3 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v4 = [CMContinuityCaptureControl alloc];
  v22 = 0;
  v23 = 0;
  v21 = 1;
  v5 = [CMContinuityCaptureControl initWithName:v4 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v6 = [CMContinuityCaptureControl alloc];
  v7 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  batteryLevel = [v7 batteryLevel];
  v22 = 0;
  v23 = 0;
  v21 = 1;
  v9 = [CMContinuityCaptureControl initWithName:v6 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v10 = [CMContinuityCaptureControl alloc];
  v11 = MEMORY[0x277CCABB0];
  v12 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v12 batteryState];
  v13 = [v11 numberWithInteger:?];
  v22 = 0;
  v23 = 0;
  v21 = 1;
  v14 = [CMContinuityCaptureControl initWithName:v10 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v15 = [CMContinuityCaptureControl alloc];
  v22 = 0;
  v23 = 0;
  v21 = 1;
  v16 = [CMContinuityCaptureControl initWithName:v15 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  if ([(CMContinuityCaptureRemoteCompositeDevice *)self _avcaptureDeviceSupportsDockKit])
  {
    v17 = [CMContinuityCaptureControl alloc];
    v22 = 0;
    v23 = 0;
    v21 = 1;
    v18 = [CMContinuityCaptureControl initWithName:v17 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  v19 = [CMContinuityCaptureControl alloc];
  v22 = 0;
  v23 = 0;
  v21 = 1;
  v20 = [CMContinuityCaptureControl initWithName:v19 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v15 = 2080;
    v16 = "[CMContinuityCaptureRemoteCompositeDevice handleAVCNegotiation:data:]";
    v17 = 1024;
    negotiationCopy = negotiation;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@  %s %d", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke;
  block[3] = &unk_278D5C770;
  objc_copyWeak(v12, &location);
  v12[1] = negotiation;
  v11 = dataCopy;
  v9 = dataCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v6 = [v4 objectForKeyedSubscript:?];

    if (v6)
    {
      [v6 handleAVCNegotiation:? data:?];
    }

    else
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1((a1 + 40));
      }
    }
  }
}

- (void)handleSynchronizeAudioClockCompletion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__CMContinuityCaptureRemoteCompositeDevice_handleSynchronizeAudioClockCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureRemoteCompositeDevice_handleSynchronizeAudioClockCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] objectForKeyedSubscript:?];
    v5 = v4;
    if (v4)
    {
      [v4 handleSynchronizeAudioClockCompletion];
    }

    else
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1((a1 + 32));
      }
    }
  }
}

- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CMContinuityCaptureRemoteCompositeDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5D850;
  objc_copyWeak(v16, &location);
  v16[1] = entity;
  v14 = imageCopy;
  v15 = completionCopy;
  v11 = imageCopy;
  v12 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureRemoteCompositeDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v6 = [v4 objectForKeyedSubscript:?];

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 captureStillImage:? entity:? completion:?];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138543874;
        v10 = v3;
        v11 = 2112;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_error_impl(&dword_242545000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Invalid capture device %@ error %@", &v9, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  if (server)
  {
    server2 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
    localDevice = [server2 localDevice];
    deviceIdentifier = [localDevice deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    v11 = [v3 stringWithFormat:v5, uUIDString, self];
  }

  else
  {
    v11 = [v3 stringWithFormat:v5, 0, self];
  }

  return v11;
}

- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CMContinuityCaptureRemoteCompositeDevice_enqueueReactionEffect_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = effectCopy;
  v11[1] = entity;
  v8 = effectCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureRemoteCompositeDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[3] objectForKeyedSubscript:?];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v3 enqueueReactionEffect:? entity:?];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543874;
        v7 = v2;
        v8 = 2112;
        v9 = v3;
        v10 = 2112;
        v11 = v4;
        _os_log_error_impl(&dword_242545000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Invalid capture device %@ error %@", &v6, 0x20u);
      }
    }
  }
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__CMContinuityCaptureRemoteCompositeDevice_postEvent_entity_data___block_invoke;
  v13[3] = &unk_278D5C1C0;
  objc_copyWeak(v17, &location);
  v14 = eventCopy;
  selfCopy = self;
  v17[1] = entity;
  v16 = dataCopy;
  v11 = dataCopy;
  v12 = eventCopy;
  dispatch_async(queue, v13);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __66__CMContinuityCaptureRemoteCompositeDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained server];
    if (!v4)
    {
LABEL_30:

      goto LABEL_31;
    }

    v5 = CMContinuityCaptureRemoteEventToBeRelayedList();
    if ([*(v3 + 10) count] && objc_msgSend(v5, "containsObject:"))
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v3 + 10);
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138543874;
        v24 = v8;
        v25 = 2112;
        v26 = v7;
        v27 = 2114;
        v28 = v9;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Wait for sideband identifiers %@, cache event %{public}@", buf, 0x20u);
      }

      v10 = *(v3 + 11);
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [v10 addObject:?];
      goto LABEL_27;
    }

    if ([*(a1 + 32) isEqualToString:?])
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_loadWeakRetained((a1 + 56));
        *buf = 138543362;
        v24 = v14;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ UserPause", buf, 0xCu);
      }

      [v3 willChangeValueForKey:?];
      v15 = *(v3 + 7) | 1;
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:?])
      {
LABEL_17:
        if (*(a1 + 64) == 4 && ([*(v3 + 4) objectForKeyedSubscript:?], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
        {
          if (([*(a1 + 32) isEqualToString:?] & 1) == 0 && !objc_msgSend(*(a1 + 32), "isEqualToString:"))
          {
            goto LABEL_29;
          }

          v19 = [*(v3 + 4) objectForKeyedSubscript:?];
          v11 = v19;
          if (!v19)
          {
            goto LABEL_28;
          }

          [v19 setValue:?];
          v20 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 40);
            *buf = 138543618;
            v24 = v21;
            v25 = 2114;
            v26 = v11;
            _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ SetValue %{public}@", buf, 0x16u);
          }

          v12 = [v4 localDevice];
          [v12 setValueForControl:? completion:?];
        }

        else
        {
          if (!*(a1 + 32))
          {
LABEL_29:

            goto LABEL_30;
          }

          v11 = [v3 eventQueue];
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
          [v11 enqueueEventAction:? args:?];
        }

LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v16 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_loadWeakRetained((a1 + 56));
        *buf = 138543362;
        v24 = v17;
        _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ UserResume", buf, 0xCu);
      }

      [v3 willChangeValueForKey:?];
      v15 = *(v3 + 7) & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v3 + 7) = v15;
    [v3 didChangeValueForKey:?];
    goto LABEL_17;
  }

LABEL_31:
}

- (void)postEventOnAllEntities:(id)entities data:(id)data
{
  entitiesCopy = entities;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  allValues = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v9 = [allValues countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(8 * i);
        [v13 entity];
        [v13 postEvent:? entity:? data:?];
      }

      v10 = [allValues countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }
}

- (BOOL)postEventAction:(unint64_t)action args:(id)args
{
  argsCopy = args;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (CMContinityCaptureDebugLogEnabled(v7, v8))
  {
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = self;
      v48 = 2048;
      actionCopy = action;
      v50 = 2112;
      v51 = argsCopy;
      _os_log_debug_impl(&dword_242545000, v9, OS_LOG_TYPE_DEBUG, "%@ Perform %lu %@", buf, 0x20u);
    }
  }

  switch(action)
  {
    case 3uLL:
      if ([argsCopy count] < 2)
      {
        goto LABEL_27;
      }

      v25 = [argsCopy objectAtIndexedSubscript:?];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_27;
      }

      v27 = [argsCopy objectAtIndexedSubscript:?];
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if ((v28 & 1) == 0)
      {
        goto LABEL_27;
      }

      v29 = [argsCopy objectAtIndexedSubscript:?];
      if (v29)
      {
        v30 = objc_alloc(MEMORY[0x277CBEB38]);
        v31 = [argsCopy objectAtIndexedSubscript:?];
        v14 = [v30 initWithDictionary:?];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_2;
      v40 = &unk_278D5C1E8;
      objc_copyWeak(v41, &location);
      v32 = MEMORY[0x245D12020](&v37);
      [v14 setObject:v37 forKeyedSubscript:{v38, v39, v40}];

      v33 = [argsCopy objectAtIndexedSubscript:?];
      v34 = [argsCopy objectAtIndexedSubscript:?];
      [v34 unsignedIntValue];
      [CMContinuityCaptureRemoteCompositeDevice _postEvent:"_postEvent:entity:data:" entity:? data:?];

      v24 = v41;
      goto LABEL_23;
    case 2uLL:
      if ([argsCopy count] != 3)
      {
        goto LABEL_27;
      }

      v17 = [argsCopy objectAtIndexedSubscript:?];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }

      v19 = [argsCopy objectAtIndexedSubscript:?];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      v21 = [argsCopy objectAtIndexedSubscript:?];
      [v21 unsignedIntValue];

      v22 = [argsCopy objectAtIndexedSubscript:?];
      [v22 unsignedIntValue];

      v23 = [argsCopy objectAtIndexedSubscript:?];
      v41[1] = MEMORY[0x277D85DD0];
      v41[2] = 3221225472;
      v41[3] = __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_59;
      v41[4] = &unk_278D5C260;
      objc_copyWeak(v42, &location);
      v14 = v23;
      v41[5] = v14;
      [CMContinuityCaptureRemoteCompositeDevice _stopStream:"_stopStream:option:completion:" option:? completion:?];

      v24 = v42;
LABEL_23:
      objc_destroyWeak(v24);
      goto LABEL_24;
    case 1uLL:
      if ([argsCopy count] == 3)
      {
        v10 = [argsCopy objectAtIndexedSubscript:?];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        if (v11)
        {
          v12 = [argsCopy objectAtIndexedSubscript:?];
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();

          if (v13)
          {
            v14 = [argsCopy objectAtIndexedSubscript:?];
            v15 = [argsCopy objectAtIndexedSubscript:?];
            [v15 unsignedIntValue];

            v16 = [argsCopy objectAtIndexedSubscript:?];
            v42[1] = MEMORY[0x277D85DD0];
            v42[2] = 3221225472;
            v42[3] = __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke;
            v42[4] = &unk_278D5C548;
            objc_copyWeak(&v45, &location);
            v43 = argsCopy;
            v44 = v16;
            [CMContinuityCaptureRemoteCompositeDevice _startStream:"_startStream:option:completion:" option:? completion:?];

            objc_destroyWeak(&v45);
LABEL_24:

            break;
          }
        }
      }

LABEL_27:
      v35 = 0;
      goto LABEL_26;
  }

  v35 = 1;
LABEL_26:
  objc_destroyWeak(&location);

  return v35;
}

void __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (CMContinityCaptureDebugLogEnabled(WeakRetained, v5))
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_cold_1((a1 + 48), a1, v7);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, a2);
    }

    v9 = [v6 eventQueue];
    [v9 notifyCompletion];
  }
}

uint64_t __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_59(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v8 = WeakRetained;
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
      WeakRetained = v8;
    }

    v6 = [WeakRetained eventQueue];
    [v6 notifyCompletion];
  }

  return MEMORY[0x2821F96F8]();
}

void __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained eventQueue];
    [v2 notifyCompletion];

    WeakRetained = v3;
  }
}

- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v14 = streamCopy;
  v15 = completionCopy;
  v16[1] = option;
  v11 = completionCopy;
  v12 = streamCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if ([a1[4] entity] == 3)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_2;
      v12[3] = &unk_278D5D1A8;
      v13 = a1[5];
      v3 = MEMORY[0x245D12020](v12);
      v4 = +[CMContinuityCapturePongSoundManager sharedInstance];
      objc_copyWeak(v11, a1 + 6);
      v9 = a1[4];
      v11[1] = a1[7];
      v10 = v3;
      [v4 waitForPongCompletion:?];

      objc_destroyWeak(v11);
      v5 = v13;
    }

    else
    {
      v5 = [WeakRetained eventQueue];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[4]];
      v8 = MEMORY[0x245D12020](a1[5]);
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [v5 enqueueEventAction:? args:?];
    }
  }
}

uint64_t __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[CMContinuityCapturePongSoundManager sharedInstance];
  [v2 releaseSystemPongAssertion];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_4;
    v7[3] = &unk_278D5D248;
    v7[4] = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v8 = v5;
    v10 = v6;
    v9 = *(a1 + 40);
    dispatch_async(v4, v7);
  }
}

void __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_4(uint64_t a1)
{
  v2 = +[CMContinuityCapturePongSoundManager sharedInstance];
  [v2 acquireSystemPongAssertion];

  v3 = [*(a1 + 32) eventQueue];
  v7 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = v4;
  v5 = MEMORY[0x245D12020](*(a1 + 48));
  v9 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [v3 enqueueEventAction:? args:?];
}

- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v25 = 2080;
    v26 = "[CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:]";
    v27 = 2114;
    v28 = streamCopy;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v11 = MEMORY[0x277CCABB0];
  [streamCopy entity];
  v12 = [v11 numberWithInteger:?];
  v13 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:?];

  if (v13)
  {
    if (self->_state != 1)
    {
      if ([streamCopy entity] == 1 || objc_msgSend(streamCopy, "entity") == 2)
      {
        activeVideoEntities = self->_activeVideoEntities;
        v17 = MEMORY[0x277CCABB0];
        [streamCopy entity];
        v18 = [v17 numberWithInteger:?];
        [(NSMutableSet *)activeVideoEntities addObject:?];
      }

      [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:?];
      entity = [streamCopy entity];
      v20 = 4;
      if (entity == 3)
      {
        v20 = 2;
      }

      self->_state |= v20;
      [(CMContinuityCaptureRemoteCompositeDevice *)self didChangeValueForKey:?];
      [v13 entity];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{@"CMContinuityCaptureStateMachineEventDataKeyConfiguration", @"CMContinuityCaptureStateMachineEventDataKeyOption"}];
      v22 = MEMORY[0x245D12020](completionCopy);
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      [v13 postEvent:? entity:? data:?];

      goto LABEL_17;
    }

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:];
    }
  }

  else
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:];
    }
  }

  if (completionCopy)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    completionCopy[2](completionCopy, v15);
LABEL_17:
  }
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v17 = 2080;
    v18 = "[CMContinuityCaptureRemoteCompositeDevice stopStream:option:completion:]";
    v19 = 1024;
    streamCopy = stream;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %d", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke;
  v12[3] = &unk_278D5C378;
  objc_copyWeak(v14, buf);
  v14[1] = stream;
  v14[2] = option;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == 3)
    {
      v4 = +[CMContinuityCapturePongSoundManager sharedInstance];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke_2;
      v16 = &unk_278D5C378;
      objc_copyWeak(&v18, (a1 + 40));
      v19 = *(a1 + 48);
      v17 = *(a1 + 32);
      [v4 waitForPongCompletion:?];

      objc_destroyWeak(&v18);
    }

    else
    {
      v5 = [WeakRetained eventQueue];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v10 = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v11 = v7;
      v8 = MEMORY[0x245D12020](*(a1 + 32));
      v12 = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [v5 enqueueEventAction:? args:?];
    }
  }
}

void __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained eventQueue];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v9 = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v10 = v6;
    v7 = MEMORY[0x245D12020](*(a1 + 32));
    v11 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v4 enqueueEventAction:? args:?];
  }
}

- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v11 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:?];

  if (v11)
  {
    if ((stream - 1) <= 1)
    {
      activeVideoEntities = self->_activeVideoEntities;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      [(NSMutableSet *)activeVideoEntities removeObject:?];
    }

    if (optionCopy)
    {
      goto LABEL_15;
    }

    [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:?];
    if (stream == 3)
    {
      v14 = -3;
    }

    else
    {
      if ([(NSMutableSet *)self->_activeVideoEntities count])
      {
LABEL_14:
        [(CMContinuityCaptureRemoteCompositeDevice *)self didChangeValueForKey:?];
LABEL_15:
        [v11 entity];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
        v18 = MEMORY[0x245D12020](completionCopy);
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        [v11 postEvent:? entity:? data:?];

        goto LABEL_16;
      }

      v14 = -5;
    }

    self->_state &= v14;
    goto LABEL_14;
  }

  v15 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:];
  }

  if (completionCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    completionCopy[2](completionCopy, v16);
LABEL_16:
  }
}

- (void)updateSystemState
{
  OUTLINED_FUNCTION_4_0();
  v2 = 2080;
  v3 = "[CMContinuityCaptureRemoteCompositeDevice updateSystemState]";
  _os_log_debug_impl(&dword_242545000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ %s", v1, 0x16u);
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2080;
    v20 = "[CMContinuityCaptureRemoteCompositeDevice setValueForControl:completion:]";
    v21 = 2112;
    v22 = controlCopy;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__CMContinuityCaptureRemoteCompositeDevice_setValueForControl_completion___block_invoke;
  v12[3] = &unk_278D5CCE8;
  objc_copyWeak(&v16, &location);
  v13 = controlCopy;
  selfCopy2 = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = controlCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureRemoteCompositeDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v5 = MEMORY[0x277CCABB0];
    [*(a1 + 32) entity];
    v6 = [v5 numberWithInteger:?];
    v7 = [v4 objectForKeyedSubscript:?];

    if ([*(a1 + 32) entity] == 4)
    {
      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_INFO, "%@ system notification for %@", &v15, 0x16u);
      }

      v11 = [*(a1 + 32) name];
      v12 = [v11 isEqualToString:?];

      if (!v12)
      {
        goto LABEL_12;
      }

      v13 = objc_loadWeakRetained(v3 + 5);
      v14 = [v13 localDevice];
      [v14 setValueForControl:? completion:?];
    }

    else
    {
      if (v7)
      {
        [v7 setValueForControl:? completion:?];
LABEL_12:

        goto LABEL_13;
      }

      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1((a1 + 56));
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_avcaptureDeviceSupportsDockKit
{
  if (GestaltGetDeviceClass() != 1)
  {
    return 0;
  }

  return MEMORY[0x2821F5C58](@"s7nuHoZIYNoOHCqT9iyZkQ");
}

- (id)controlWithName:(id)name
{
  nameCopy = name;
  controls = [(CMContinuityCaptureRemoteCompositeDevice *)self controls];
  v6 = [controls countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(controls);
        }

        v9 = *(8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:?];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [controls countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CMContinuityCaptureRemoteCompositeDevice)initWithTransportServer:(id)server videoPreviewLayer:(id)layer
{
  serverCopy = server;
  layerCopy = layer;
  v66.receiver = self;
  v66.super_class = CMContinuityCaptureRemoteCompositeDevice;
  v8 = [(CMContinuityCaptureRemoteCompositeDevice *)&v66 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_videoPreviewLayer, layer), v10 = objc_alloc_init(MEMORY[0x277CBEB58]), remoteClientDisconnectNotifiedByEntityType = v9->_remoteClientDisconnectNotifiedByEntityType, v9->_remoteClientDisconnectNotifiedByEntityType = v10, remoteClientDisconnectNotifiedByEntityType, v12 = objc_alloc_init(MEMORY[0x277CBEB38]), cmControlByName = v9->_cmControlByName, v9->_cmControlByName = v12, cmControlByName, dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v14 = objc_claimAutoreleasedReturnValue(), v15 = dispatch_queue_create("com.apple.continuity-capture", v14), v16 = v9->_queue, v9->_queue = v15, v16, v14, v17 = objc_storeWeak(&v9->_server, serverCopy), [serverCopy setDelegate:?], serverCopy, v18 = -[CMContinuityCaptureEventQueue initWithActionDelegate:queue:]([CMContinuityCaptureEventQueue alloc], "initWithActionDelegate:queue:"), eventQueue = v9->_eventQueue, v9->_eventQueue = v18, eventQueue, v20 = objc_alloc_init(MEMORY[0x277CBEB38]), captureDeviceByEntityType = v9->_captureDeviceByEntityType, v9->_captureDeviceByEntityType = v20, captureDeviceByEntityType, v9->_legacyConnectionResetDelay = FigGetCFPreferenceNumberWithDefault(), v22 = objc_alloc_init(MEMORY[0x277CBEB18]), pendingEventToBePostedQueue = v9->_pendingEventToBePostedQueue, v9->_pendingEventToBePostedQueue = v22, pendingEventToBePostedQueue, v24 = objc_alloc_init(CMContinuityCaptureFrameRateManager), frameRateManager = v9->_frameRateManager, v9->_frameRateManager = v24, frameRateManager, v26 = objc_alloc_init(MEMORY[0x277CBEB58]), activeVideoEntities = v9->_activeVideoEntities, v9->_activeVideoEntities = v26, activeVideoEntities, v28 = os_transaction_create(), transaction = v9->_transaction, v9->_transaction = v28, transaction, -[CMContinuityCaptureRemoteCompositeDevice setupControls](v9, "setupControls"), -[CMContinuityCaptureRemoteCompositeDevice setupCaptureDevices](v9, "setupCaptureDevices")))
  {
    WeakRetained = objc_loadWeakRetained(&v9->_server);
    localDevice = [WeakRetained localDevice];
    [localDevice addObserver:? forKeyPath:? options:? context:?];

    v32 = objc_loadWeakRetained(&v9->_server);
    [v32 addObserver:? forKeyPath:? options:? context:?];

    atomic_store(1u, &v9->_observingTimeSyncState);
    atomic_store(1u, &v9->_observingActiveStreamState);
    v33 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    queue = [v33 queue];
    dispatch_assert_queue_not_V2(queue);

    v35 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    queue2 = [v35 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke;
    block[3] = &unk_278D5C0D0;
    v37 = v9;
    v65 = v37;
    dispatch_async_and_wait(queue2, block);

    v38 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    queue3 = [v38 queue];
    dispatch_assert_queue_not_V2(queue3);

    v40 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    queue4 = [v40 queue];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke_2;
    v62[3] = &unk_278D5C0D0;
    v42 = v37;
    v63 = v42;
    dispatch_async_and_wait(queue4, v62);

    dispatch_assert_queue_not_V2(v9->_queue);
    queue = v9->_queue;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke_3;
    v60[3] = &unk_278D5C0D0;
    v44 = v42;
    v61 = v44;
    dispatch_async_and_wait(queue, v60);

    v45 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:?];

    if (v45)
    {
      v46 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:?];
      captureSession = [v46 captureSession];
      OUTLINED_FUNCTION_2_4(captureSession);

      atomic_store(1u, v44 + 97);
    }

    v48 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:?];

    if (v48)
    {
      v49 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:?];
      captureSession2 = [v49 captureSession];
      OUTLINED_FUNCTION_2_4(captureSession2);

      atomic_store(1u, v44 + 98);
    }

    v51 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138543874;
      v55 = v44;
      v56 = 2080;
      v57 = "[CMContinuityCaptureRemoteCompositeDevice initWithTransportServer:videoPreviewLayer:]";
      v58 = 2112;
      v59 = serverCopy;
      _os_log_impl(&dword_242545000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ %s server: %@", &v54, 0x20u);
    }

    v52 = v44;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

- (void)invalidate
{
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v4 = server;
  if (server)
  {
    queue = [server queue];
    dispatch_assert_queue_V2(queue);

    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke;
    v7[3] = &unk_278D5C008;
    v8 = v4;
    selfCopy = self;
    dispatch_async(queue, v7);
  }
}

- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  server = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v10 = server;
  if (server)
  {
    if (entity == 4)
    {
      localDevice = [server localDevice];
      [localDevice postEvent:? entity:? data:?];
    }

    else if (entity)
    {
      captureDeviceByEntityType = self->_captureDeviceByEntityType;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v14 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:?];

      if (v14)
      {
        v15 = self->_captureDeviceByEntityType;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:?];
        v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:?];
        [v17 postEvent:? entity:? data:?];
      }
    }

    else
    {
      [CMContinuityCaptureRemoteCompositeDevice postEventOnAllEntities:"postEventOnAllEntities:data:" data:?];
    }
  }
}

void __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1(&dword_242545000, v2, v3, "%{public}@ Invalid capture device", v4, v5, v6, v7);
}

void __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  v7 = 2112;
  v8 = v5;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ completion for %@", v6, 0x16u);
}

@end