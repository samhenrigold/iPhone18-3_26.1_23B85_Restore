@interface CMContinuityCaptureTransportSidecarDevice
- (BOOL)active;
- (BOOL)canDeferTermination;
- (BOOL)disconnectedWhileWired;
- (BOOL)hasStreamIntent;
- (BOOL)legacyReconnectRecovery;
- (BOOL)nearby;
- (BOOL)terminationDeferred;
- (BOOL)usable;
- (BOOL)userDisconnected;
- (BOOL)wifiP2pActive;
- (BOOL)wired;
- (CMContinuityCaptureCapabilities)capabilities;
- (CMContinuityCaptureTransportSidecarDevice)initWithSidecarDevice:(id)device capabilities:(id)capabilities remote:(BOOL)remote;
- (NSArray)activeStreams;
- (NSString)description;
- (NSString)deviceModel;
- (NSString)deviceName;
- (NSUUID)deviceIdentifier;
- (SidecarDevice)device;
- (id)streamForIdentifier:(id)identifier;
- (int64_t)deviceModelType;
- (unint64_t)deviceMajorVersion;
- (unint64_t)deviceMinorVersion;
- (unint64_t)deviceStatus;
- (void)_didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)_setValueForControl:(id)control completion:(id)completion;
- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)_synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier;
- (void)activateStream:(id)stream;
- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion;
- (void)didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)handleSynchronizeAudioClockCompletion;
- (void)notifyDeviceStateChange;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)resetDevice:(id)device;
- (void)setCapabilities:(id)capabilities;
- (void)setDeviceMajorVersion:(unint64_t)version;
- (void)setDeviceMinorVersion:(unint64_t)version;
- (void)setLegacyReconnectRecovery:(BOOL)recovery;
- (void)setNearby:(BOOL)nearby;
- (void)setStreamIntent:(BOOL)intent;
- (void)setTerminationDeferred:(BOOL)deferred;
- (void)setUserDisconnected:(BOOL)disconnected;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier;
- (void)teardownStreams;
@end

@implementation CMContinuityCaptureTransportSidecarDevice

- (void)resetDevice:(id)device
{
  deviceCopy = device;
  obj = self;
  objc_sync_enter(obj);
  device = obj->_device;
  obj->_device = deviceCopy;

  objc_sync_exit(obj);
}

- (void)teardownStreams
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureTransportSidecarDevice teardownStreams]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v5, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 willChangeValueForKey:?];
  [(NSMutableDictionary *)selfCopy2->_activeStreams removeAllObjects];
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 didChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 willChangeValueForKey:?];
  selfCopy2->_active = 0;
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 didChangeValueForKey:?];
  objc_sync_exit(selfCopy2);
}

- (BOOL)active
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  objc_sync_exit(selfCopy);

  return active;
}

- (id)streamForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_activeStreams objectForKeyedSubscript:?];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)activateStream:(id)stream
{
  streamCopy = stream;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke;
  v9 = &unk_278D5C660;
  objc_copyWeak(&v11, &location);
  v5 = streamCopy;
  v10 = v5;
  [v5 activate:?];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke(uint64_t a1, void *a2)
{
  if (!a2 || ![a2 code])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = WeakRetained[8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke_2;
      v6[3] = &unk_278D5C008;
      v7 = WeakRetained;
      v8 = *(a1 + 32);
      dispatch_async(v5, v6);
    }
  }
}

void __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) willChangeValueForKey:?];
  v3 = [*(*(a1 + 32) + 48) count];
  v4 = *(*(a1 + 32) + 48);
  v5 = [*(a1 + 40) streamIdentifier];
  [v4 setObject:? forKeyedSubscript:?];

  [*(a1 + 32) didChangeValueForKey:?];
  objc_sync_exit(v2);

  if (!v3)
  {
    [*(a1 + 32) willChangeValueForKey:?];
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    *(*(a1 + 32) + 73) = 1;
    objc_sync_exit(v6);

    v7 = *(a1 + 32);

    [v7 didChangeValueForKey:?];
  }
}

- (NSArray)activeStreams
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  allValues = [(NSMutableDictionary *)selfCopy->_activeStreams allValues];
  v5 = [v3 initWithArray:?];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setUserDisconnected:(BOOL)disconnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_userDisconnected = disconnected;
  objc_sync_exit(selfCopy);

  if ([(CMContinuityCaptureTransportSidecarDevice *)selfCopy wired])
  {
    obj = selfCopy;
    objc_sync_enter(obj);
    obj->_disconnectedWhileWired = 1;
    objc_sync_exit(obj);
  }
}

- (BOOL)userDisconnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userDisconnected = selfCopy->_userDisconnected;
  objc_sync_exit(selfCopy);

  return userDisconnected;
}

- (BOOL)wifiP2pActive
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  v3 = ([device status] >> 9) & 1;

  return v3;
}

- (SidecarDevice)device
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_device;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSUUID)deviceIdentifier
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  identifier = [device identifier];

  return identifier;
}

- (NSString)deviceName
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  name = [device name];

  return name;
}

- (NSString)deviceModel
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  model = [device model];

  return model;
}

- (int64_t)deviceModelType
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  model = [device model];
  v4 = CMContinuityCaptureDeviceModelFromModelString(model);

  return v4;
}

- (unint64_t)deviceStatus
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  status = [device status];

  return status;
}

- (BOOL)wired
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  v3 = ([device status] >> 24) & 1;

  return v3;
}

- (BOOL)usable
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  v3 = [device cameraState] == 1;

  return v3;
}

- (unint64_t)deviceMajorVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMajorVersion = selfCopy->_deviceMajorVersion;
  objc_sync_exit(selfCopy);

  return deviceMajorVersion;
}

- (void)setDeviceMajorVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceMajorVersion = version;
  objc_sync_exit(obj);
}

- (unint64_t)deviceMinorVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMinorVersion = selfCopy->_deviceMinorVersion;
  objc_sync_exit(selfCopy);

  return deviceMinorVersion;
}

- (void)setDeviceMinorVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceMinorVersion = version;
  objc_sync_exit(obj);
}

- (BOOL)terminationDeferred
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  terminationDeferred = selfCopy->_terminationDeferred;
  objc_sync_exit(selfCopy);

  return terminationDeferred;
}

- (void)setTerminationDeferred:(BOOL)deferred
{
  obj = self;
  objc_sync_enter(obj);
  obj->_terminationDeferred = deferred;
  objc_sync_exit(obj);
}

- (BOOL)canDeferTermination
{
  if ([(CMContinuityCaptureTransportSidecarDevice *)self hasStreamIntent]&& ![(CMContinuityCaptureTransportSidecarDevice *)self userDisconnected])
  {
    capabilities = [(CMContinuityCaptureTransportSidecarDevice *)self capabilities];
    if (capabilities)
    {
      capabilities2 = [(CMContinuityCaptureTransportSidecarDevice *)self capabilities];
      v3 = [capabilities2 userDisabled] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)disconnectedWhileWired
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  disconnectedWhileWired = selfCopy->_disconnectedWhileWired;
  objc_sync_exit(selfCopy);

  return disconnectedWhileWired;
}

- (BOOL)legacyReconnectRecovery
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  legacyRecovery = selfCopy->_legacyRecovery;
  objc_sync_exit(selfCopy);

  return legacyRecovery;
}

- (void)setLegacyReconnectRecovery:(BOOL)recovery
{
  obj = self;
  objc_sync_enter(obj);
  obj->_legacyRecovery = recovery;
  objc_sync_exit(obj);
}

- (void)notifyDeviceStateChange
{
  if (![(CMContinuityCaptureTransportSidecarDevice *)self wired]&& [(CMContinuityCaptureTransportSidecarDevice *)self userDisconnected])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_disconnectedWhileWired = 0;
    objc_sync_exit(selfCopy);
  }

  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:?];
  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:?];

  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:?];
}

- (CMContinuityCaptureCapabilities)capabilities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_capabilities;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  obj = self;
  objc_sync_enter(obj);
  capabilities = obj->_capabilities;
  obj->_capabilities = capabilitiesCopy;

  objc_sync_exit(obj);
}

- (BOOL)nearby
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearby = selfCopy->_nearby;
  objc_sync_exit(selfCopy);

  return nearby;
}

- (void)setNearby:(BOOL)nearby
{
  obj = self;
  objc_sync_enter(obj);
  obj->_nearby = nearby;
  objc_sync_exit(obj);
}

- (BOOL)hasStreamIntent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  streamIntent = selfCopy->_streamIntent;
  objc_sync_exit(selfCopy);

  return streamIntent;
}

- (void)setStreamIntent:(BOOL)intent
{
  obj = self;
  objc_sync_enter(obj);
  obj->_streamIntent = intent;
  objc_sync_exit(obj);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v9 = [v3 stringWithFormat:v5, uUIDString, self];

  return v9;
}

- (void)synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__CMContinuityCaptureTransportSidecarDevice_synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke;
  block[3] = &unk_278D5D180;
  objc_copyWeak(v11, &location);
  v11[1] = time;
  v11[2] = networkTime;
  v11[3] = identifier;
  dispatch_async(queue, block);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __120__CMContinuityCaptureTransportSidecarDevice_synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _synchronizeAudioClockWithSampleTime:? networkTime:? clockGrandMasterIdentifier:?];
    WeakRetained = v2;
  }
}

- (void)_synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier
{
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v15[6] = &unk_2854EC8C0;
  v15[4] = @"ContinuityCaptureSelector";
  v15[5] = @"ContinuityCaptureArgs";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v15[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v15[2] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v15[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v15[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v11 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];
  v13 = MEMORY[0x277D85DD0];
  objc_copyWeak(v15, &location);
  v12 = v10;
  v14 = v12;
  [v11 sendMessage:v13 message:3221225472 completion:{__121__CMContinuityCaptureTransportSidecarDevice__synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke, &unk_278D5C660}];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __121__CMContinuityCaptureTransportSidecarDevice__synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ SendMessage %{public}@ Error %@", &v7, 0x20u);
  }
}

- (void)didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CMContinuityCaptureTransportSidecarDevice_didCaptureStillImage_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = imageCopy;
  v11[1] = entity;
  v8 = imageCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureTransportSidecarDevice_didCaptureStillImage_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didCaptureStillImage:? entity:?];
    WeakRetained = v2;
  }
}

- (void)_didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v7 = 0;
  if (v6)
  {
    v14[5] = &unk_2854EC8D8;
    v14[3] = @"ContinuityCaptureSelector";
    v14[4] = @"ContinuityCaptureArgs";
    v14[1] = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v14[6] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v11 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];
    v13 = MEMORY[0x277D85DD0];
    objc_copyWeak(v14, &location);
    v12 = v10;
    [v11 sendMessage:v13 message:3221225472 completion:{__74__CMContinuityCaptureTransportSidecarDevice__didCaptureStillImage_entity___block_invoke, &unk_278D5C660}];

    objc_destroyWeak(v14);
  }

  else
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v17 = 2112;
      v18 = imageCopy;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&dword_242545000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive request %@ error %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportSidecarDevice__didCaptureStillImage_entity___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ SendMessage didCaptureStillImage %@ Error %@", &v7, 0x20u);
  }
}

- (void)handleSynchronizeAudioClockCompletion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__CMContinuityCaptureTransportSidecarDevice_handleSynchronizeAudioClockCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __82__CMContinuityCaptureTransportSidecarDevice_handleSynchronizeAudioClockCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:@"ContinuityCaptureSelector" forKeys:@"ContinuityCaptureArgs" count:{&unk_2854EC8F0, &unk_2854ECD30}];
    v3 = [WeakRetained[6] objectForKeyedSubscript:?];
    [v3 sendMessage:? message:? completion:?];
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
  block[2] = __81__CMContinuityCaptureTransportSidecarDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v14 = imageCopy;
  v15 = completionCopy;
  v16[1] = entity;
  v11 = completionCopy;
  v12 = imageCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureTransportSidecarDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v18 = 0;
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v4 = 0;
    if (v3)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

      v6 = [WeakRetained[6] objectForKeyedSubscript:?];
      v9 = *(a1 + 40);
      [v6 sendMessage:? message:? completion:?];
    }

    else
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        *buf = 138543874;
        v13 = WeakRetained;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = v4;
        _os_log_error_impl(&dword_242545000, v7, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject %@ Error %@", buf, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CMContinuityCaptureTransportSidecarDevice_enqueueReactionEffect_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = effectCopy;
  v11[1] = entity;
  v8 = effectCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportSidecarDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueReactionEffect %{public}@", buf, 0x16u);
    }

    v12 = &unk_2854EC938;
    v10 = @"ContinuityCaptureSelector";
    v11 = @"ContinuityCaptureArgs";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
    v9 = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v13 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v8 = [WeakRetained[6] objectForKeyedSubscript:?];
    [v8 sendMessage:? message:? completion:?];
  }
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__CMContinuityCaptureTransportSidecarDevice_setValueForControl_completion___block_invoke;
  v11[3] = &unk_278D5C490;
  objc_copyWeak(&v14, &location);
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureTransportSidecarDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setValueForControl:? completion:?];
    WeakRetained = v2;
  }
}

- (void)_setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke;
  v28[3] = &unk_278D5C260;
  objc_copyWeak(&v30, &location);
  v8 = completionCopy;
  v29 = v8;
  v9 = MEMORY[0x245D12020](v28);
  v27 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v11 = v27;
  if (v10)
  {
    v19 = &unk_2854EC950;
    v17 = @"ContinuityCaptureSelector";
    v18 = @"ContinuityCaptureArgs";
    v16 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v20 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v23 = 2114;
      v24 = controlCopy;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ setValueForControl %{public}@", buf, 0x16u);
    }

    v15 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];
    [v15 sendMessage:? message:? completion:?];
  }

  else
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = controlCopy;
      _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject Error %@ for control %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

uint64_t __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (CMContinityCaptureDebugLogEnabled(a1, a2))
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke_cold_1(a1, a2, v7);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CMContinuityCaptureTransportSidecarDevice_handleAVCNegotiation_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = negotiation;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureTransportSidecarDevice_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleAVCNegotiation:? data:?];
    WeakRetained = v2;
  }
}

- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  negotiationCopy = negotiation;
  dataCopy = data;
  objc_initWeak(&location, self);
  v21 = &unk_2854EC968;
  v19 = @"ContinuityCaptureSelector";
  v20 = @"ContinuityCaptureArgs";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v18 = dataCopy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 1024;
    v16 = negotiationCopy;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sendAVCNegotiation for entity %d", buf, 0x12u);
  }

  v9 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];
  v10 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v12, &location);
  v11 = v7;
  [v9 sendMessage:v10 message:3221225472 completion:{__72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke, &unk_278D5C660}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CMContinityCaptureDebugLogEnabled(v3, v4))
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke_cold_1(a1, v3, v5);
    }
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
  block[2] = __75__CMContinuityCaptureTransportSidecarDevice_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = option;
  v14 = streamCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = streamCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureTransportSidecarDevice_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    [v3 _startStream:? option:? completion:?];

    WeakRetained = v4;
  }
}

- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  optionCopy = option;
  streamCopy = stream;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = streamCopy;
    v23 = 1024;
    v24 = optionCopy;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream for configuration %{public}@ option %d", buf, 0x1Cu);
  }

  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v12 = 0;
  if (v11)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v14 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];
    v16 = completionCopy;
    [v14 sendMessage:? message:? completion:?];
  }

  else
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureTransportSidecarDevice _startStream:option:completion:];
    }

    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMContinuityCaptureTransportSidecarDevice_stopStream_option_completion___block_invoke;
  block[3] = &unk_278D5C378;
  objc_copyWeak(v13, &location);
  v13[1] = stream;
  v13[2] = option;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportSidecarDevice_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopStream:? option:? completion:?];
    WeakRetained = v2;
  }
}

- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  v9 = CMContinuityCaptureMediaIdentifierFromEntityType(stream);
  dispatch_assert_queue_V2(self->_queue);
  if (v9)
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v20 = 1024;
      streamCopy = stream;
      v22 = 1024;
      v23 = optionCopy;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ stopStream for entity %u option %d", buf, 0x18u);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    v12 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];
    v13 = MEMORY[0x277D85DD0];
    v14 = completionCopy;
    [v12 sendMessage:v13 message:3221225472 completion:{__75__CMContinuityCaptureTransportSidecarDevice__stopStream_option_completion___block_invoke, &unk_278D5D1A8}];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CMContinuityCaptureTransportSidecarDevice_postEvent_entity_data___block_invoke;
  block[3] = &unk_278D5CFF8;
  objc_copyWeak(v16, &location);
  v16[1] = entity;
  v14 = eventCopy;
  v15 = dataCopy;
  v11 = dataCopy;
  v12 = eventCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __67__CMContinuityCaptureTransportSidecarDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _postEvent:? entity:? data:?];
    WeakRetained = v2;
  }
}

- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  queue = self->_queue;
  eventCopy = event;
  dispatch_assert_queue_V2(queue);
  v15 = &unk_2854EC908;
  v13 = @"ContinuityCaptureSelector";
  v14 = @"ContinuityCaptureArgs";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:eventCopy];
  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v16 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v11 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:?];

  [v11 sendMessage:? message:? completion:?];
}

- (CMContinuityCaptureTransportSidecarDevice)initWithSidecarDevice:(id)device capabilities:(id)capabilities remote:(BOOL)remote
{
  deviceCopy = device;
  capabilitiesCopy = capabilities;
  v23.receiver = self;
  v23.super_class = CMContinuityCaptureTransportSidecarDevice;
  v11 = [(CMContinuityCaptureTransportSidecarDevice *)&v23 init];
  if (v11 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v12 = objc_claimAutoreleasedReturnValue(), v13 = dispatch_queue_create("com.apple.continuitycapture.sidecardevice", v12), queue = v11->_queue, v11->_queue = v13, queue, v12, v15 = objc_alloc_init(MEMORY[0x277CBEB38]), activeStreams = v11->_activeStreams, v11->_activeStreams = v15, activeStreams, objc_storeStrong(&v11->_device, device), v11->_remote = remote, objc_storeStrong(&v11->_capabilities, capabilities), -[CMContinuityCaptureTransportSidecarDevice capabilities](v11, "capabilities"), v17 = objc_claimAutoreleasedReturnValue(), [v17 devicesCapabilities], v18 = objc_claimAutoreleasedReturnValue(), v11->_allFeaturesSupported = CMContinuityCaptureDeviceSupportsAllFeatures(v18), v18, v17, v19 = -[CMContinuityCaptureMagicStateMonitor initWithDevice:]([CMContinuityCaptureMagicStateMonitor alloc], "initWithDevice:"), magicStateMonitor = v11->_magicStateMonitor, v11->_magicStateMonitor = v19, magicStateMonitor, v11->_magicStateMonitor))
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_1_3();
  v7 = a2;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ setValueForControl completion error %@", v6, 0x16u);
}

void __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8 = 138543874;
  v9 = WeakRetained;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ handleAVCNegotiation SendMessage %@ Error %@", &v8, 0x20u);
}

@end