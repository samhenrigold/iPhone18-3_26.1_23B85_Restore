@interface CWFDeviceDiscoveryManager
- (BOOL)_isRapportTeardownTimerValid;
- (BOOL)_isSupportedModel:(id)model;
- (BOOL)_isWiFiInfoRequestTimerValid;
- (CWFDeviceDiscoveryManager)init;
- (id)_interfaceForModel:(id)model;
- (id)_wifiInfo;
- (id)fetchActiveDevices;
- (void)_fetchAndUpdateActiveDevicesInfo;
- (void)_fetchWiFiInfoForDevice:(id)device rapportDevice:(id)rapportDevice;
- (void)_fetchWiFiInfoForRapportDevice:(id)device completion:(id)completion;
- (void)_invalidateRapportTeardownTimer;
- (void)_invalidateWiFiInfoRetryRequestTimer;
- (void)_registerExtractWiFiInfo;
- (void)_reportFaultEventForDevices:(id)devices;
- (void)_resetRapportClientWithInvalidation:(BOOL)invalidation;
- (void)_sendRapportMessageToDevice:(id)device requestID:(id)d request:(id)request options:(id)options completion:(id)completion;
- (void)_setupRapportClientWithReason:(unint64_t)reason;
- (void)fetchWiFiInfoForDevice:(id)device;
- (void)invalidate;
- (void)registerDelegate:(id)delegate;
- (void)startDiscoveringDevicesIfNeeded:(id)needed withReason:(unint64_t)reason;
- (void)unregisterDelegate:(id)delegate;
@end

@implementation CWFDeviceDiscoveryManager

- (CWFDeviceDiscoveryManager)init
{
  v16.receiver = self;
  v16.super_class = CWFDeviceDiscoveryManager;
  v2 = [(CWFDeviceDiscoveryManager *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeDevices = v2->_activeDevices;
    v2->_activeDevices = v3;

    v5 = objc_opt_new();
    retryDevices = v2->_retryDevices;
    v2->_retryDevices = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.corewifi.rapportQueue", v8);
    rapportQueue = v2->_rapportQueue;
    v2->_rapportQueue = v9;

    v11 = objc_opt_new();
    delegates = v2->_delegates;
    v2->_delegates = v11;

    v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}" options:1 error:0];
    rapportErrorRegex = v2->_rapportErrorRegex;
    v2->_rapportErrorRegex = v13;
  }

  return v2;
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  rapportQueue = self->_rapportQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C6561C;
  v7[3] = &unk_1E86E6420;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(rapportQueue, v7);
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  rapportQueue = self->_rapportQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C65714;
  v7[3] = &unk_1E86E6420;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_async(rapportQueue, v7);
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  rapportQueue = self->_rapportQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C65818;
  v4[3] = &unk_1E86E6190;
  objc_copyWeak(&v5, &location);
  dispatch_async(rapportQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)startDiscoveringDevicesIfNeeded:(id)needed withReason:(unint64_t)reason
{
  neededCopy = needed;
  objc_initWeak(&location, self);
  rapportQueue = self->_rapportQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C65B00;
  v9[3] = &unk_1E86E7460;
  objc_copyWeak(v11, &location);
  v10 = neededCopy;
  v11[1] = reason;
  v8 = neededCopy;
  dispatch_async(rapportQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (id)fetchActiveDevices
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2D50;
  v12 = sub_1E0BC61E4;
  v13 = 0;
  rapportQueue = self->_rapportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C65CAC;
  block[3] = &unk_1E86E7488;
  objc_copyWeak(&v7, &location);
  block[4] = &v8;
  dispatch_sync(rapportQueue, block);
  v4 = v9[5];
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);

  return v4;
}

- (void)_setupRapportClientWithReason:(unint64_t)reason
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 136446978;
    v40 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
    v41 = 2082;
    v42 = "CWFDeviceDiscoveryManager.m";
    v43 = 1024;
    v44 = 276;
    v45 = 2080;
    v46 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi-PH] %{public}s (%{public}s:%u) %s ENTRY", &v39, 38);
  }

  rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];

  if (rapportClient)
  {
    v9 = CWFGetPHOSLog();
    if (v9)
    {
      v10 = CWFGetPHOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136446978;
      v40 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
      v41 = 2082;
      v42 = "CWFDeviceDiscoveryManager.m";
      v43 = 1024;
      v44 = 279;
      v45 = 2080;
      v46 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
      LODWORD(v24) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi-PH] %{public}s (%{public}s:%u) %s Rapport is already active....returning!", &v39, v24);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    self->_setupReason = reason;
    v11 = objc_alloc_init(sub_1E0C66414());
    rapportQueue = [(CWFDeviceDiscoveryManager *)self rapportQueue];
    [v11 setDispatchQueue:rapportQueue];

    [v11 setControlFlags:72706];
    [v11 setFlags:17];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1E0C664F4;
    v36[3] = &unk_1E86E6190;
    objc_copyWeak(&v37, &location);
    [v11 setInvalidationHandler:v36];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1E0C66620;
    v34[3] = &unk_1E86E6190;
    objc_copyWeak(&v35, &location);
    [v11 setInterruptionHandler:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E0C6674C;
    v32[3] = &unk_1E86E74D8;
    objc_copyWeak(v33, &location);
    v33[1] = reason;
    [v11 setDeviceFoundHandler:v32];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1E0C669EC;
    v30[3] = &unk_1E86E7500;
    objc_copyWeak(&v31, &location);
    [v11 setDeviceLostHandler:v30];
    v13 = CWFGetPHOSLog();
    if (v13)
    {
      v14 = CWFGetPHOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136446722;
      v40 = "[CWFDeviceDiscoveryManager _setupRapportClientWithReason:]";
      v41 = 2082;
      v42 = "CWFDeviceDiscoveryManager.m";
      v43 = 1024;
      v44 = 345;
      LODWORD(v24) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi-PH] %{public}s (%{public}s:%u) Now Activating RPCompanionLinkClient...", &v39, v24);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1E0C66C40;
    v27[3] = &unk_1E86E7528;
    objc_copyWeak(&v29, &location);
    v17 = v11;
    v28 = v17;
    [v17 activateWithCompletion:v27];
    [(CWFDeviceDiscoveryManager *)self setRapportClient:v17];
    if (reason == 1)
    {
      [(CWFDeviceDiscoveryManager *)self _registerExtractWiFiInfo];
    }

    rapportQueue2 = [(CWFDeviceDiscoveryManager *)self rapportQueue];
    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, rapportQueue2);
    [(CWFDeviceDiscoveryManager *)self setRapportTeardownTimer:v19];

    rapportTeardownTimer = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0C66E90;
    handler[3] = &unk_1E86E6190;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(rapportTeardownTimer, handler);

    v21 = dispatch_time(0, 120000000000);
    rapportTeardownTimer2 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    dispatch_source_set_timer(rapportTeardownTimer2, v21, 0x1BF08EB000uLL, 0);

    rapportTeardownTimer3 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    dispatch_resume(rapportTeardownTimer3);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);

    objc_destroyWeak(&location);
  }
}

- (void)fetchWiFiInfoForDevice:(id)device
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = CWFGetPHOSLog();
  if (v5)
  {
    v6 = CWFGetPHOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [deviceCopy userInfo];
    v13 = 136447234;
    v15 = 2082;
    v14 = "[CWFDeviceDiscoveryManager fetchWiFiInfoForDevice:]";
    v16 = "CWFDeviceDiscoveryManager.m";
    v17 = 1024;
    v18 = 382;
    v19 = 2080;
    v20 = "[CWFDeviceDiscoveryManager fetchWiFiInfoForDevice:]";
    v21 = 2112;
    v22 = userInfo;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi-PH] %{public}s (%{public}s:%u) %s - [%@]", &v13, 48);
  }

  rapportQueue = self->_rapportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C67090;
  block[3] = &unk_1E86E6420;
  block[4] = self;
  v12 = deviceCopy;
  v10 = deviceCopy;
  dispatch_async(rapportQueue, block);
}

- (BOOL)_isSupportedModel:(id)model
{
  modelCopy = model;
  v4 = modelCopy;
  if (modelCopy)
  {
    if ([modelCopy hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v4, "containsString:", @"Mac"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 containsString:@"RealityDevice"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_interfaceForModel:(id)model
{
  if ([model containsString:@"RealityDevice"])
  {
    return @"ir0";
  }

  else
  {
    return @"en0";
  }
}

- (void)_fetchAndUpdateActiveDevicesInfo
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CWFDeviceDiscoveryManager *)self activeDevices];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v12 = 0;
        v13 = &v12;
        v14 = 0x3032000000;
        v15 = sub_1E0BC2D50;
        v16 = sub_1E0BC61E4;
        v17 = 0;
        rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];
        activeDevices = [rapportClient activeDevices];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1E0C67558;
        v11[3] = &unk_1E86E7550;
        v11[4] = v6;
        v11[5] = &v12;
        [activeDevices enumerateObjectsUsingBlock:v11];

        [(CWFDeviceDiscoveryManager *)self _fetchWiFiInfoForDevice:v6 rapportDevice:v13[5]];
        _Block_object_dispose(&v12, 8);

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }
}

- (void)_fetchWiFiInfoForDevice:(id)device rapportDevice:(id)rapportDevice
{
  v16[2] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rapportDeviceCopy = rapportDevice;
  objc_initWeak(&location, self);
  retryDevices = [(CWFDeviceDiscoveryManager *)self retryDevices];
  v16[0] = deviceCopy;
  v16[1] = rapportDeviceCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  effectiveIdentifier = [rapportDeviceCopy effectiveIdentifier];
  [retryDevices setObject:v9 forKey:effectiveIdentifier];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0C677A0;
  v12[3] = &unk_1E86E75A0;
  objc_copyWeak(&v14, &location);
  v11 = deviceCopy;
  v13 = v11;
  [(CWFDeviceDiscoveryManager *)self _fetchWiFiInfoForRapportDevice:rapportDeviceCopy completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_registerExtractWiFiInfo
{
  v18 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = CWFGetPHOSLog();
  if (v3)
  {
    v4 = CWFGetPHOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446978;
    v11 = "[CWFDeviceDiscoveryManager _registerExtractWiFiInfo]";
    v12 = 2082;
    v13 = "CWFDeviceDiscoveryManager.m";
    v14 = 1024;
    v15 = 511;
    v16 = 2080;
    v17 = "[CWFDeviceDiscoveryManager _registerExtractWiFiInfo]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi-PH] %{public}s (%{public}s:%u) %s", &v10, 38);
  }

  rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C680EC;
  v7[3] = &unk_1E86E75C8;
  objc_copyWeak(&v8, &location);
  [rapportClient registerRequestID:@"com.apple.corewifi.RequestWiFiInfo" options:MEMORY[0x1E695E0F8] handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_wifiInfo
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = MGGetStringAnswer();
  v4 = MGGetStringAnswer();
  v5 = @"1";
  if (v4)
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v3, v5];
  v12[0] = @"deviceMACAddress";
  thisDeviceMACAddress = [(CWFDeviceDiscoveryManager *)self thisDeviceMACAddress];
  v13[0] = thisDeviceMACAddress;
  v12[1] = @"deviceMarketingName";
  v8 = MGGetStringAnswer();
  v13[1] = v8;
  v12[2] = @"deviceProductType";
  v9 = MGGetStringAnswer();
  v12[3] = @"deviceProductColor";
  v13[2] = v9;
  v13[3] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (void)_fetchWiFiInfoForRapportDevice:(id)device completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  v8 = CWFGetPHOSLog();
  if (v8)
  {
    v9 = CWFGetPHOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136446978;
    v19 = "[CWFDeviceDiscoveryManager _fetchWiFiInfoForRapportDevice:completion:]";
    v20 = 2082;
    v21 = "CWFDeviceDiscoveryManager.m";
    v22 = 1024;
    v23 = 537;
    v24 = 2080;
    v25 = "[CWFDeviceDiscoveryManager _fetchWiFiInfoForRapportDevice:completion:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi-PH] %{public}s (%{public}s:%u) %s", &v18, 38);
  }

  v11 = dispatch_time(0, 1000000000);
  rapportQueue = [(CWFDeviceDiscoveryManager *)self rapportQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C685D4;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v16 = deviceCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = deviceCopy;
  dispatch_after(v11, rapportQueue, block);
}

- (void)_sendRapportMessageToDevice:(id)device requestID:(id)d request:(id)request options:(id)options completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  completionCopy = completion;
  rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];

  if (rapportClient)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v19 = CWFGetPHOSLog();
    if (v19)
    {
      v20 = CWFGetPHOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136447234;
      v36 = "[CWFDeviceDiscoveryManager _sendRapportMessageToDevice:requestID:request:options:completion:]";
      v37 = 2082;
      v38 = "CWFDeviceDiscoveryManager.m";
      v39 = 1024;
      v40 = 570;
      v41 = 2112;
      v42 = uUID;
      v43 = 2112;
      v44 = deviceCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[corewifi-PH] %{public}s (%{public}s:%u) (Request %@) Preparing to send rapport message to '%@'", &v35, 48);
    }

    v24 = objc_alloc_init(sub_1E0C66414());
    [v24 setControlFlags:256];
    [v24 setDestinationDevice:deviceCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1E0C68970;
    v27[3] = &unk_1E86E7618;
    v28 = uUID;
    v34 = completionCopy;
    v29 = optionsCopy;
    v30 = requestCopy;
    v31 = v24;
    v32 = dCopy;
    v33 = deviceCopy;
    v25 = v24;
    v22 = uUID;
    [v25 activateWithCompletion:v27];
  }

  else
  {
    v21 = CWFGetPHOSLog();
    if (v21)
    {
      v22 = CWFGetPHOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136447234;
      v36 = "[CWFDeviceDiscoveryManager _sendRapportMessageToDevice:requestID:request:options:completion:]";
      v37 = 2082;
      v38 = "CWFDeviceDiscoveryManager.m";
      v39 = 1024;
      v40 = 564;
      v41 = 2112;
      v42 = dCopy;
      v43 = 2112;
      v44 = deviceCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 0, "[corewifi-PH] %{public}s (%{public}s:%u) Queued request [%@] called on a nil rapport client to device [%@]. Returning.", &v35, 48);
    }
  }
}

- (void)_resetRapportClientWithInvalidation:(BOOL)invalidation
{
  v21 = *MEMORY[0x1E69E9840];
  if (invalidation)
  {
    rapportClient = [(CWFDeviceDiscoveryManager *)self rapportClient];
    [rapportClient invalidate];
  }

  rapportClient2 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient2 setDeviceFoundHandler:0];

  rapportClient3 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient3 setDeviceLostHandler:0];

  rapportClient4 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient4 setInterruptionHandler:0];

  rapportClient5 = [(CWFDeviceDiscoveryManager *)self rapportClient];
  [rapportClient5 setInvalidationHandler:0];

  [(CWFDeviceDiscoveryManager *)self setRapportClient:0];
  if ([(CWFDeviceDiscoveryManager *)self rapportClientActivationFailCount]> 2)
  {
    v10 = CWFGetPHOSLog();
    if (v10)
    {
      v11 = CWFGetPHOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "[CWFDeviceDiscoveryManager _resetRapportClientWithInvalidation:]";
      v15 = 2082;
      v16 = "CWFDeviceDiscoveryManager.m";
      v17 = 1024;
      v18 = 618;
      v19 = 2048;
      v20 = 3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi-PH] %{public}s (%{public}s:%u) RPCompanionLinkClient activation exceeded  (%lu) activation attempts. Seems like a bug in Rapport. Please file a bug.", &v13, 38);
    }
  }

  else
  {
    setupReason = [(CWFDeviceDiscoveryManager *)self setupReason];

    [(CWFDeviceDiscoveryManager *)self _setupRapportClientWithReason:setupReason];
  }
}

- (void)_invalidateWiFiInfoRetryRequestTimer
{
  v16 = *MEMORY[0x1E69E9840];
  wifiInfoRetryRequestTimer = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
  if (wifiInfoRetryRequestTimer)
  {
    v4 = wifiInfoRetryRequestTimer;
    _isWiFiInfoRequestTimerValid = [(CWFDeviceDiscoveryManager *)self _isWiFiInfoRequestTimerValid];

    if (_isWiFiInfoRequestTimerValid)
    {
      v6 = CWFGetPHOSLog();
      if (v6)
      {
        v7 = CWFGetPHOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136446722;
        v11 = "[CWFDeviceDiscoveryManager _invalidateWiFiInfoRetryRequestTimer]";
        v12 = 2082;
        v13 = "CWFDeviceDiscoveryManager.m";
        v14 = 1024;
        v15 = 625;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi-PH] %{public}s (%{public}s:%u) Invalidating wifiInfoRetryRequestTimer", &v10, 28);
      }

      wifiInfoRetryRequestTimer2 = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
      dispatch_source_cancel(wifiInfoRetryRequestTimer2);

      [(CWFDeviceDiscoveryManager *)self setWifiInfoRetryRequestTimer:0];
    }
  }
}

- (BOOL)_isWiFiInfoRequestTimerValid
{
  wifiInfoRetryRequestTimer = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
  if (wifiInfoRetryRequestTimer)
  {
    wifiInfoRetryRequestTimer2 = [(CWFDeviceDiscoveryManager *)self wifiInfoRetryRequestTimer];
    v5 = dispatch_source_testcancel(wifiInfoRetryRequestTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_invalidateRapportTeardownTimer
{
  v16 = *MEMORY[0x1E69E9840];
  rapportTeardownTimer = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
  if (rapportTeardownTimer)
  {
    v4 = rapportTeardownTimer;
    _isRapportTeardownTimerValid = [(CWFDeviceDiscoveryManager *)self _isRapportTeardownTimerValid];

    if (_isRapportTeardownTimerValid)
    {
      v6 = CWFGetPHOSLog();
      if (v6)
      {
        v7 = CWFGetPHOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136446722;
        v11 = "[CWFDeviceDiscoveryManager _invalidateRapportTeardownTimer]";
        v12 = 2082;
        v13 = "CWFDeviceDiscoveryManager.m";
        v14 = 1024;
        v15 = 639;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi-PH] %{public}s (%{public}s:%u) Invalidating rapportTeardownTimer", &v10, 28);
      }

      rapportTeardownTimer2 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
      dispatch_source_cancel(rapportTeardownTimer2);

      [(CWFDeviceDiscoveryManager *)self setRapportTeardownTimer:0];
    }
  }
}

- (BOOL)_isRapportTeardownTimerValid
{
  rapportTeardownTimer = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
  if (rapportTeardownTimer)
  {
    rapportTeardownTimer2 = [(CWFDeviceDiscoveryManager *)self rapportTeardownTimer];
    v5 = dispatch_source_testcancel(rapportTeardownTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reportFaultEventForDevices:(id)devices
{
  v29 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    v5 = [devicesCopy objectAtIndexedSubscript:1];
    model = [v5 model];
    v7 = [(CWFDeviceDiscoveryManager *)self _interfaceForModel:model];

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v8 = qword_1ED7E39C0;
    v22 = qword_1ED7E39C0;
    if (!qword_1ED7E39C0)
    {
      *v24 = MEMORY[0x1E69E9820];
      *&v24[8] = 3221225472;
      *&v24[16] = sub_1E0C69A38;
      *&v25 = &unk_1E86E5600;
      *(&v25 + 1) = &v19;
      sub_1E0C69A38(v24);
      v8 = v20[3];
    }

    v9 = v8;
    _Block_object_dispose(&v19, 8);
    sharedInstance = [v8 sharedInstance];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    model2 = [v5 model];
    [dictionary setObject:model2 forKey:@"deviceModel"];

    effectiveIdentifier = [v5 effectiveIdentifier];
    [dictionary setObject:effectiveIdentifier forKey:@"deviceRapportEffectiveIdentifier"];

    v14 = CWFGetPHOSLog();
    if (v14)
    {
      v15 = CWFGetPHOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136447490;
      *&v24[4] = "[CWFDeviceDiscoveryManager _reportFaultEventForDevices:]";
      *&v24[12] = 2082;
      *&v24[14] = "CWFDeviceDiscoveryManager.m";
      *&v24[22] = 1024;
      LODWORD(v25) = 664;
      WORD2(v25) = 2112;
      *(&v25 + 6) = dictionary;
      HIWORD(v25) = 2112;
      v26 = sharedInstance;
      v27 = 2112;
      v28 = v7;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi-PH] %{public}s (%{public}s:%u) Submitting fault event for Rapport device fetch failure: %@ usageMonitor = %@, interface = %@", v24, 58);
    }

    date = [MEMORY[0x1E695DF00] date];
    v23 = dictionary;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [sharedInstance addFaultEvent:37 forInterface:v7 at:date event:v18];
  }
}

@end