@interface AXRemoteDevice
- (AXRemoteDevice)initWithDevice:(id)device;
- (AXRemoteDeviceConnectionDelegate)connectionDelegate;
- (NSString)displayName;
- (NSString)identifier;
- (id)_deviceName;
- (id)customizedRemoteActionForHandGestureEventUsage:(int64_t)usage;
- (id)remoteActionsForPreferredContextType:(int64_t)type;
- (void)_setRemoteAction:(id)action forHandGestureEventUsage:(int64_t)usage;
- (void)connectIfNecessary:(id)necessary;
- (void)disconnect;
- (void)sendPayload:(id)payload withEventID:(id)d withTimeout:(double)timeout completion:(id)completion;
@end

@implementation AXRemoteDevice

- (AXRemoteDevice)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = AXRemoteDevice;
  v5 = [(AXRemoteDevice *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AXRemoteDevice *)v5 setDevice:deviceCopy];
    v7 = objc_opt_new();
    [(AXRemoteDevice *)v6 setDeviceGestureCustomizations:v7];
  }

  return v6;
}

- (NSString)displayName
{
  device = [(AXRemoteDevice *)self device];
  name = [device name];
  v4 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v5 = @"<unknown>";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)identifier
{
  device = [(AXRemoteDevice *)self device];
  effectiveIdentifier = [device effectiveIdentifier];

  return effectiveIdentifier;
}

- (id)remoteActionsForPreferredContextType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  deviceRemoteActions = [(AXRemoteDevice *)self deviceRemoteActions];
  v5 = [deviceRemoteActions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(deviceRemoteActions);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 preferredContextType] == type)
        {
          remoteActions = [v10 remoteActions];

          goto LABEL_15;
        }

        if (![v10 preferredContextType])
        {
          remoteActions2 = [v10 remoteActions];

          v8 = remoteActions2;
        }
      }

      v6 = [deviceRemoteActions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v8 = v8;
  remoteActions = v8;
LABEL_15:

  return remoteActions;
}

- (id)customizedRemoteActionForHandGestureEventUsage:(int64_t)usage
{
  if ((usage - 2) > 2)
  {
    v3 = @"clench";
  }

  else
  {
    v3 = off_2786659D8[usage - 2];
  }

  deviceGestureCustomizations = [(AXRemoteDevice *)self deviceGestureCustomizations];
  v5 = [deviceGestureCustomizations objectForKeyedSubscript:v3];

  v6 = @"None";
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)_setRemoteAction:(id)action forHandGestureEventUsage:(int64_t)usage
{
  v15[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if ((usage - 2) > 2)
  {
    v7 = @"clench";
  }

  else
  {
    v7 = off_2786659D8[usage - 2];
  }

  deviceGestureCustomizations = [(AXRemoteDevice *)self deviceGestureCustomizations];
  v9 = [deviceGestureCustomizations objectForKeyedSubscript:v7];
  v10 = [v9 isEqualToString:actionCopy];

  if ((v10 & 1) == 0)
  {
    deviceGestureCustomizations2 = [(AXRemoteDevice *)self deviceGestureCustomizations];
    [deviceGestureCustomizations2 setObject:actionCopy forKeyedSubscript:v7];

    v14 = @"HandGestureCustomizedActions";
    deviceGestureCustomizations3 = [(AXRemoteDevice *)self deviceGestureCustomizations];
    v15[0] = deviceGestureCustomizations3;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(AXRemoteDevice *)self sendPayload:v13 withEventID:@"com.apple.AXRemoteServices.DefaultEventID"];
  }
}

- (void)connectIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([(AXRemoteDevice *)self connected])
  {
    necessaryCopy[2](necessaryCopy, 1);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D44160]);
    [v5 setServiceType:@"com.apple.accessibility.axremoted.rapportWake"];
    device = [(AXRemoteDevice *)self device];
    [v5 setDestinationDevice:device];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke;
    v14[3] = &unk_2786656F8;
    objc_copyWeak(&v15, &location);
    [v5 setDeviceLostHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke_2;
    v12[3] = &unk_2786658D0;
    objc_copyWeak(&v13, &location);
    [v5 setDisconnectHandler:v12];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke_3;
    v8[3] = &unk_278665920;
    objc_copyWeak(&v11, &location);
    v10 = necessaryCopy;
    v8[4] = self;
    v7 = v5;
    v9 = v7;
    [v7 activateWithCompletion:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __37__AXRemoteDevice_connectIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained connected])
    {
      v5 = [v10 effectiveIdentifier];
      v6 = [v4 device];
      v7 = [v6 effectiveIdentifier];
      v8 = [v5 isEqualToString:v7];

      if (v8)
      {
        v9 = [v4 connectionDelegate];
        [v9 remoteDeviceDidUnexpectedlyDisconnect:v4];
      }
    }
  }
}

uint64_t __37__AXRemoteDevice_connectIfNecessary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained connected])
    {
      v2 = [v4 connectionDelegate];
      [v2 remoteDeviceDidUnexpectedlyDisconnect:v4];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __37__AXRemoteDevice_connectIfNecessary___block_invoke_3(id *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v6 = [WeakRetained device];
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "Connected to device: %@ with error: %@", buf, 0x16u);
  }

  if (v3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v19 = @"requestsVoiceOverEnabled";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
    v20 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v18[0] = MEMORY[0x277CBEC38];
    v17[0] = @"isConnecting";
    v17[1] = @"connectingDeviceName";
    v9 = [a1[4] _deviceName];
    v18[1] = v9;
    v17[2] = @"connectingDeviceOptions";
    v18[2] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v11 = a1[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__AXRemoteDevice_connectIfNecessary___block_invoke_6;
    v12[3] = &unk_2786658F8;
    objc_copyWeak(&v16, a1 + 7);
    v13 = 0;
    v15 = a1[6];
    v14 = a1[5];
    [v11 sendRequestID:@"com.apple.AXRemoteServices.ConnectionSetup" request:v10 options:0 responseHandler:v12];

    objc_destroyWeak(&v16);
  }
}

void __37__AXRemoteDevice_connectIfNecessary___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = ax_remote_connection_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = [WeakRetained device];
    v10 = *(a1 + 32);
    *buf = 138412802;
    v50 = v9;
    v51 = 2112;
    v52 = v6;
    v53 = 2112;
    v54 = v10;
    _os_log_impl(&dword_22952F000, v7, OS_LOG_TYPE_INFO, "Requested actions from device: %@, response: %@, error: %@", buf, 0x20u);
  }

  v11 = [v6 objectForKeyedSubscript:@"remoteActions"];
  v12 = [v6 objectForKeyedSubscript:@"deviceType"];
  v13 = [v6 objectForKeyedSubscript:@"contextType"];
  v14 = [v6 objectForKeyedSubscript:@"HandGestureCustomizedActions"];
  if (!a4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = v14;
    v38 = v13;
    v39 = v12;
    v41 = a1;
    v42 = v6;
    v43 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v11;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v44 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:{@"preferredContextType", v37}];
          v22 = [v20 objectForKeyedSubscript:@"actionsList"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
          {
            v24 = [v21 integerValue];
            v25 = AXRLocalizedSectionTitleForPreferredContextType(v24);
            v26 = [[AXRDeviceRemoteActionSectionContainer alloc] initWithLocalizedTitle:v25 preferredContextType:v24 remoteActions:v22];
            [v43 addObject:v26];
          }

          else
          {
            v25 = ax_remote_connection_log(isKindOfClass);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v50 = v20;
              _os_log_fault_impl(&dword_22952F000, v25, OS_LOG_TYPE_FAULT, "unexpected payload data types: %@", buf, 0xCu);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v17);
    }

    v12 = v39;
    v27 = [v39 integerValue];
    v28 = objc_loadWeakRetained((v41 + 56));
    [v28 setDeviceType:v27];

    v13 = v38;
    v29 = [v38 integerValue];
    v30 = objc_loadWeakRetained((v41 + 56));
    [v30 setContextType:v29];

    v31 = objc_loadWeakRetained((v41 + 56));
    [v31 setDeviceRemoteActions:v43];

    v32 = objc_loadWeakRetained((v41 + 56));
    v33 = [v32 deviceGestureCustomizations];
    v14 = v37;
    [v33 addEntriesFromDictionary:v37];

    v34 = objc_loadWeakRetained((v41 + 56));
    [v34 setConnected:1];

    v35 = *(v41 + 40);
    v36 = objc_loadWeakRetained((v41 + 56));
    [v36 setDeviceLinkClient:v35];

    (*(*(v41 + 48) + 16))();
    v6 = v42;
    v11 = v40;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)_deviceName
{
  v2 = MGGetStringAnswer();
  if (!v2)
  {
    v2 = MGGetStringAnswer();
  }

  return v2;
}

- (void)disconnect
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277CBEC28];
  v9[0] = @"isConnecting";
  v9[1] = @"connectingDeviceName";
  _deviceName = [(AXRemoteDevice *)self _deviceName];
  v10[1] = _deviceName;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  objc_initWeak(&location, self);
  deviceLinkClient = [(AXRemoteDevice *)self deviceLinkClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__AXRemoteDevice_disconnect__block_invoke;
  v6[3] = &unk_278665948;
  objc_copyWeak(&v7, &location);
  [deviceLinkClient sendRequestID:@"com.apple.AXRemoteServices.ConnectionSetup" request:v4 options:0 responseHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __28__AXRemoteDevice_disconnect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained deviceLinkClient];
  [v3 invalidate];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setDeviceLinkClient:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setConnected:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setContextType:0];
}

- (void)sendPayload:(id)payload withEventID:(id)d withTimeout:(double)timeout completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dCopy = d;
  completionCopy = completion;
  v13 = ax_remote_connection_log(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v23 = payloadCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_22952F000, v13, OS_LOG_TYPE_INFO, "sending payload: %@, eventID: %@, timeout %.2fs", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke;
  v17[3] = &unk_2786659B8;
  v14 = completionCopy;
  v20 = v14;
  v21[1] = *&timeout;
  objc_copyWeak(v21, buf);
  v15 = dCopy;
  v18 = v15;
  v16 = payloadCopy;
  v19 = v16;
  [(AXRemoteDevice *)self connectIfNecessary:v17];

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
}

void __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke(uint64_t a1, char a2)
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x277CBEC38];
    v4 = *MEMORY[0x277D44290];
    v17[0] = *MEMORY[0x277D44288];
    v17[1] = v4;
    v18[0] = MEMORY[0x277CBEC38];
    v18[1] = MEMORY[0x277CBEC38];
    v17[2] = *MEMORY[0x277D442F0];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    v6 = *MEMORY[0x277D44268];
    v18[2] = v5;
    v18[3] = v3;
    v7 = *MEMORY[0x277D44270];
    v17[3] = v6;
    v17[4] = v7;
    v18[4] = &unk_283CD5390;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v10 = [WeakRetained deviceLinkClient];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *MEMORY[0x277D44228];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke_20;
    v15[3] = &unk_278665990;
    v16 = *(a1 + 48);
    [v10 sendEventID:v11 event:v12 destinationID:v13 options:v8 completion:v15];
  }

  else
  {
    v14 = ax_remote_connection_log(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __65__AXRemoteDevice_sendPayload_withEventID_withTimeout_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ax_remote_connection_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22952F000, v4, OS_LOG_TYPE_INFO, "event sent with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 == 0);
}

- (AXRemoteDeviceConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

@end