@interface CMContinuityCaptureCompositeDevice
- (BOOL)hasValidStreamState;
- (BOOL)postEventAction:(unint64_t)action args:(id)args;
- (BOOL)setupCaptureDevices;
- (BOOL)shouldSwitchConnection;
- (BOOL)validConnectionResetEventForData:(id)data;
- (CMContinuityCaptureCompositeDevice)initWithDevice:(id)device provider:(id)provider;
- (CMContinuityCaptureProvider)provider;
- (NSString)description;
- (id)controlWithName:(id)name;
- (int64_t)currentPreferredAvailableTransport;
- (void)_device:(id)_device updatedValueForControl:(id)control;
- (void)_handlePlacementStepSkipped;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)connectionInterrupted:(id)interrupted forDevice:(id)device;
- (void)deferDevice:(BOOL)device;
- (void)device:(id)device updatedValueForControl:(id)control;
- (void)didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)disableAutoTransportSwitch:(BOOL)switch;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)handleBatteryState:(id)state;
- (void)handleRemoteSystemNotificationControl:(id)control;
- (void)logConnectionSwitch:(id)switch;
- (void)logRemoteSessionSummary:(id)summary;
- (void)notifyTransportError:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performConnectionChangeEventIfApplicable:(id)applicable;
- (void)performConnectionDisconnectEventIfApplicable:(id)applicable;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)postEventOnAllEntities:(id)entities data:(id)data;
- (void)postValueChangeForControl:(id)control;
- (void)registerStreamIntentForCaptureDevice:(id)device completion:(id)completion;
- (void)relayEvent:(id)event;
- (void)relayUserDisconnect;
- (void)resetTransportDevice:(id)device;
- (void)scheduleBatteryLevelNotification:(id)notification;
- (void)scheduleSystemPressureNotification:(id)notification;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setupControls;
- (void)setupSidebandMessageNotificationHandler;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)terminateCompleteForDevice:(id)device;
- (void)unregisterStreamIntentForCaptureDevice:(id)device;
@end

@implementation CMContinuityCaptureCompositeDevice

void *__62__CMContinuityCaptureCompositeDevice_initWithDevice_provider___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:? forKeyPath:? options:? context:?];
  [*(a1 + 32) addObserver:? forKeyPath:? options:? context:?];
  v2 = *(a1 + 32);

  return [v2 addObserver:? forKeyPath:? options:? context:?];
}

- (void)setupSidebandMessageNotificationHandler
{
  objc_initWeak(&location, self);
  v3 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke;
  v10 = &unk_278D5C058;
  objc_copyWeak(&v11, &location);
  v4 = [(ContinuityCaptureDeviceClient *)self->_client device:v7];
  deviceIdentifier = [v4 deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];
  [v3 addSidebandMessageNotificationHandler:? forDeviceIdentifier:?];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke_2;
    v10[3] = &unk_278D5C030;
    objc_copyWeak(&v14, (a1 + 32));
    v11 = v6;
    v12 = v5;
    v13 = v8;
    dispatch_async(v9, v10);

    objc_destroyWeak(&v14);
  }
}

void __77__CMContinuityCaptureCompositeDevice_setupSidebandMessageNotificationHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_45;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v49 = a1;
  if ([v3 integerValue] == 7 && (objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [*(a1 + 32) objectForKeyedSubscript:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [*(v49 + 32) objectForKeyedSubscript:?];
      v9 = [v8 unsignedLongValue];

      v10 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained((v49 + 56));
        v12 = *(v49 + 40);
        *buf = 138412802;
        v52 = v11;
        v53 = 2114;
        v54 = v12;
        v55 = 2048;
        v56 = v9;
        v13 = "%@ Received remote termination complete for %{public}@ transportSessionID : %llx";
LABEL_15:
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0x20u);

        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v14 = [*(v49 + 32) objectForKeyedSubscript:?];
  if ([v14 integerValue] != 3)
  {
    goto LABEL_18;
  }

  v15 = [*(v49 + 32) objectForKey:?];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [*(v49 + 32) objectForKeyedSubscript:?];
  if (![v17 isEqualToString:?] || (objc_msgSend(*(v49 + 32), "objectForKeyedSubscript:"), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_18:
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [*(v49 + 32) objectForKeyedSubscript:?];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [*(v49 + 32) objectForKeyedSubscript:?];
    v23 = [v22 unsignedLongValue];

    v10 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_loadWeakRetained((v49 + 56));
      v24 = *(v49 + 40);
      *buf = 138412802;
      v52 = v11;
      v53 = 2114;
      v54 = v24;
      v55 = 2048;
      v56 = v23;
      v13 = "%@ Received user disconnect for %{public}@ transportSessionID : %llx";
      goto LABEL_15;
    }

LABEL_16:

    [WeakRetained[8] remoteSessionTerminationForIdentifier:?];
    goto LABEL_45;
  }

LABEL_19:
  v25 = [*(v49 + 32) objectForKeyedSubscript:?];
  if ([v25 integerValue] != 9 || (objc_msgSend(*(v49 + 32), "objectForKeyedSubscript:"), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_45;
  }

  v27 = v26;
  v28 = [*(v49 + 32) objectForKeyedSubscript:?];
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();

  if (v29)
  {
    v48 = WeakRetained;
    obj = [*(v49 + 32) objectForKeyedSubscript:?];
    v30 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v30)
    {
      goto LABEL_43;
    }

    v31 = v30;
    v32 = v49;
    v33 = MEMORY[0];
    while (1)
    {
      for (i = 0; i != v31; i = (i + 1))
      {
        if (MEMORY[0] != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = MEMORY[0x277CCAAC8];
        objc_opt_class();
        v36 = [v35 unarchivedObjectOfClass:? fromData:? error:?];
        v37 = 0;
        if (v36)
        {
          v38 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = objc_loadWeakRetained((v32 + 56));
            *buf = 138412546;
            v52 = v39;
            v53 = 2114;
            v54 = v36;
            _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "%@ Received control %{public}@ update", buf, 0x16u);
          }

          v40 = [v36 name];
          if ([v40 isEqualToString:?])
          {
          }

          else
          {
            v41 = [v36 name];
            v42 = [v41 isEqualToString:?];

            if (!v42)
            {
              goto LABEL_41;
            }
          }

          v43 = [*(*(v32 + 48) + 16) allValues];
          v44 = [v43 countByEnumeratingWithState:? objects:? count:?];
          if (v44)
          {
            v45 = v44;
            v46 = MEMORY[0];
            do
            {
              for (j = 0; j != v45; j = (j + 1))
              {
                if (MEMORY[0] != v46)
                {
                  objc_enumerationMutation(v43);
                }

                [*(8 * j) setValueForControl:? completion:?];
              }

              v45 = [v43 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v45);
          }

          v32 = v49;
        }

LABEL_41:
      }

      v31 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (!v31)
      {
LABEL_43:

        WeakRetained = v48;
        break;
      }
    }
  }

LABEL_45:
}

- (void)relayUserDisconnect
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      *buf = 138543618;
      v17 = v4;
      v18 = 2082;
      v19 = "[CMContinuityCaptureCompositeDevice relayUserDisconnect]_block_invoke";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s", buf, 0x16u);
    }

    v5 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v6 = [v5 activeSession];
    v7 = [v6 shieldSessionID];

    if (v7)
    {
      v8 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v9 = [v8 activeSession];
      v10 = [v9 shieldSessionID];

      v11 = [WeakRetained[8] device];
      [WeakRetained currentPreferredAvailableTransport];
      [v11 relayUserDisconnectForTransport:? reason:? shieldSessionID:?];

      v12 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v13 = [v12 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke_17;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v15, (a1 + 32));
      dispatch_async(v13, block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v10 = @"Unknown";
    }
  }
}

void __57__CMContinuityCaptureCompositeDevice_relayUserDisconnect__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[8] device];
    [v2 setUserDisconnected:?];

    WeakRetained = v3;
  }
}

- (void)relayEvent:(id)event
{
  eventCopy = event;
  if (os_variant_allows_internal_security_policies() & 1) != 0 || ([eventCopy isEqualToString:?])
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__CMContinuityCaptureCompositeDevice_relayEvent___block_invoke;
    v7[3] = &unk_278D5C0A8;
    objc_copyWeak(&v9, location);
    v8 = eventCopy;
    dispatch_async(queue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138543874;
      *&location[4] = self;
      v11 = 2080;
      v12 = "[CMContinuityCaptureCompositeDevice relayEvent:]";
      v13 = 2114;
      v14 = eventCopy;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s not allowed for %{public}@", location, 0x20u);
    }
  }
}

void __49__CMContinuityCaptureCompositeDevice_relayEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = *(a1 + 32);
      v7 = 138543874;
      v8 = v4;
      v9 = 2082;
      v10 = "[CMContinuityCaptureCompositeDevice relayEvent:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s name %@", &v7, 0x20u);
    }

    v6 = [WeakRetained[8] device];
    [WeakRetained currentPreferredAvailableTransport];
    [v6 postEvent:? entity:? data:? forTransport:?];
  }
}

- (void)terminateCompleteForDevice:(id)device
{
  deviceCopy = device;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke;
  v10[3] = &unk_278D5C0A8;
  objc_copyWeak(&v12, &location);
  v5 = deviceCopy;
  v11 = v5;
  v6 = MEMORY[0x245D12020](v10);
  client = self->_client;
  [v5 entity];
  objc_copyWeak(&v9, &location);
  v8 = v6;
  [ContinuityCaptureDeviceClient terminateEntity:"terminateEntity:option:completion:" option:? completion:?];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained provider];
    if (v4)
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v7 = *(a1 + 32);
        *buf = 138543618;
        v31 = v6;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate complete for %{public}@", buf, 0x16u);
      }

      v8 = *(v3 + 2);
      v9 = MEMORY[0x277CCABB0];
      [*(a1 + 32) entity];
      v10 = [v9 numberWithInteger:?];
      v11 = [v8 objectForKey:?];

      if (v11)
      {
        v12 = *(v3 + 2);
        v13 = MEMORY[0x277CCABB0];
        [*(a1 + 32) entity];
        v14 = [v13 numberWithInteger:?];
        [v12 removeObjectForKey:?];

        v15 = [v4 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_18;
        block[3] = &unk_278D5C0D0;
        v29 = *(a1 + 32);
        dispatch_async(v15, block);

        if (![*(v3 + 2) count])
        {
          v16 = *(v3 + 9);
          if (v16)
          {
            dispatch_block_cancel(v16);
            v17 = *(v3 + 9);
            *(v3 + 9) = 0;
          }

          v18 = +[CMContinuityCaptureDiscoverySession sharedInstance];
          v19 = [v18 queue];
          dispatch_assert_queue_not_V2(v19);

          v20 = +[CMContinuityCaptureDiscoverySession sharedInstance];
          v21 = [v20 queue];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_2;
          v27[3] = &unk_278D5C0D0;
          v27[4] = v3;
          dispatch_async_and_wait(v21, v27);

          v22 = [*(v3 + 3) objectForKeyedSubscript:?];
          [v22 removeObserver:? forKeyPath:? context:?];
          objc_storeWeak(v3 + 11, 0);
          v23 = +[CMContinuityCaptureDiscoverySession sharedInstance];
          v24 = [*(v3 + 8) device];
          v25 = [v24 deviceIdentifier];
          v26 = [v25 UUIDString];
          [v23 removeSidebandMessageNotificationHandlerForDeviceIdentifier:?];

          [*(v3 + 8) invalidate];
          [v4 terminateCompleteForDevice:?];
        }
      }
    }
  }
}

void __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) device];
  [v2 removeObserver:? forKeyPath:? context:?];

  v3 = [*(*(a1 + 32) + 64) device];
  [v3 removeObserver:? forKeyPath:? context:?];

  v4 = [*(*(a1 + 32) + 64) device];
  [v4 removeObserver:? forKeyPath:? context:?];
}

void __65__CMContinuityCaptureCompositeDevice_terminateCompleteForDevice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_async(WeakRetained[1], *(a1 + 32));
    WeakRetained = v3;
  }
}

- (void)device:(id)device updatedValueForControl:(id)control
{
  deviceCopy = device;
  controlCopy = control;
  objc_initWeak(&location, self);
  v8 = [controlCopy copy];
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CMContinuityCaptureCompositeDevice_device_updatedValueForControl___block_invoke;
  v12[3] = &unk_278D5C120;
  objc_copyWeak(&v15, &location);
  v13 = deviceCopy;
  v14 = v8;
  v10 = v8;
  v11 = deviceCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureCompositeDevice_device_updatedValueForControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _device:? updatedValueForControl:?];
    WeakRetained = v2;
  }
}

- (void)logConnectionSwitch:(id)switch
{
  connectionSwitchLogs = self->_connectionSwitchLogs;
  switchCopy = switch;
  if ([(NSMutableArray *)connectionSwitchLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_connectionSwitchLogs removeObjectAtIndex:?];
  }

  v6 = self->_connectionSwitchLogs;
  v7 = MEMORY[0x277CCACA8];
  v9 = CMContinuityCaptureGetCurrentTimeString();
  v8 = [v7 stringWithFormat:switchCopy, v9];

  [(NSMutableArray *)v6 addObject:?];
}

- (void)resetTransportDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke;
  v7[3] = &unk_278D5C008;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async_and_wait(queue, v7);
}

void __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [*(a1[2].i64[1] + 64) device];
  LOBYTE(v2) = [v2 isEqual:?];

  if ((v2 & 1) == 0)
  {
    v4 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v5 = [v4 queue];
    dispatch_assert_queue_not_V2(v5);

    v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v7 = [v6 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke_2;
    block[3] = &unk_278D5C008;
    v14 = a1[2];
    v8 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    dispatch_async_and_wait(v7, block);

    objc_storeWeak((a1[2].i64[1] + 88), a1[2].i64[0]);
  }

  [*(a1[2].i64[1] + 64) resetTransportDevice:*&v14];
  v9 = [*(a1[2].i64[1] + 16) allValues];
  v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(8 * i) resetTransportDevice:?];
      }

      v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }
}

void *__59__CMContinuityCaptureCompositeDevice_resetTransportDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v3 removeObserver:? forKeyPath:? context:?];

    v4 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v4 removeObserver:? forKeyPath:? context:?];

    v5 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v5 removeObserver:? forKeyPath:? context:?];
  }

  [*(a1 + 40) addObserver:? forKeyPath:? options:? context:?];
  [*(a1 + 40) addObserver:? forKeyPath:? options:? context:?];
  v6 = *(a1 + 40);

  return [v6 addObserver:? forKeyPath:? options:? context:?];
}

- (void)logRemoteSessionSummary:(id)summary
{
  summaryCopy = summary;
  if (summaryCopy)
  {
    if ([(NSMutableArray *)self->_remoteSessionLogs count]>= 6)
    {
      [(NSMutableArray *)self->_remoteSessionLogs removeObjectAtIndex:?];
    }

    v5 = [summaryCopy dataUsingEncoding:?];
    if (v5)
    {
      v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
      v7 = 0;
      if (v6)
      {
        [(NSMutableArray *)self->_remoteSessionLogs addObject:?];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }
}

- (void)setupControls
{
  v11 = 0;
  v12 = 0;
  v10 = 1;
  v3 = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v4 = [CMContinuityCaptureControl alloc];
  v11 = 0;
  v12 = 0;
  v10 = 1;
  v5 = [CMContinuityCaptureControl initWithName:v4 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v6 = [CMContinuityCaptureControl alloc];
  v11 = 0;
  v12 = 0;
  v10 = 1;
  v7 = [CMContinuityCaptureControl initWithName:v6 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v8 = [CMContinuityCaptureControl alloc];
  v11 = 0;
  v12 = 0;
  v10 = 1;
  v9 = [CMContinuityCaptureControl initWithName:v8 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
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

- (BOOL)setupCaptureDevices
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  device = [(ContinuityCaptureDeviceClient *)self->_client device];
  capabilities = [device capabilities];
  devicesCapabilities = [capabilities devicesCapabilities];

  v6 = [devicesCapabilities countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 138543618;
    v29 = v7;
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(devicesCapabilities);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        entityType = [v11 entityType];
        if (entityType != 1)
        {
          if (entityType == 2)
          {
            p_super = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              entityType2 = [v11 entityType];
              *buf = v29;
              selfCopy3 = self;
              v32 = 1024;
              LODWORD(v33) = entityType2;
              _os_log_impl(&dword_242545000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipped creating capture device for entity %d", buf, 0x12u);
            }

            goto LABEL_16;
          }

LABEL_14:
          p_super = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            entityType3 = [v11 entityType];
            *buf = v29;
            selfCopy3 = self;
            v32 = 1024;
            LODWORD(v33) = entityType3;
            _os_log_error_impl(&dword_242545000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ failed to create capture device for entity %d", buf, 0x12u);
          }

          goto LABEL_16;
        }

        v15 = [CMContinuityCaptureVideoDevice initWithCapabilities:"initWithCapabilities:compositeDelegate:" compositeDelegate:?];
        if (!v15)
        {
          goto LABEL_14;
        }

        p_super = &v15->super.super;
        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v29;
          selfCopy3 = self;
          v32 = 2114;
          v33 = p_super;
          _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Created %{public}@", buf, 0x16u);
        }

        captureDeviceByEntityType = self->_captureDeviceByEntityType;
        v18 = MEMORY[0x277CCABB0];
        [v11 entityType];
        v19 = [v18 numberWithInteger:?];
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

LABEL_16:
      }

      v8 = [devicesCapabilities countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v21 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
  if (v21)
  {
    v22 = v21;
    v23 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];

    if (v23)
    {
      v24 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
      v25 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
      [v25 setCompanionDevice:?];

      v26 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
      v27 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
      [v27 setCompanionDevice:?];
    }
  }

  return [(NSMutableDictionary *)self->_captureDeviceByEntityType count]!= 0;
}

- (void)connectionInterrupted:(id)interrupted forDevice:(id)device
{
  interruptedCopy = interrupted;
  deviceCopy = device;
  if (interruptedCopy && [interruptedCopy code] && (objc_msgSend(deviceCopy, "terminationDeferred") & 1) == 0)
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = interruptedCopy;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Interrupted, error %{public}@", buf, 0x16u);
    }

    if ([interruptedCopy code] == -1012)
    {
      [(CMContinuityCaptureCompositeDevice *)self relayEvent:?];
    }

    else
    {
      v9 = MEMORY[0x277CCABB0];
      mach_continuous_time();
      v11 = [v9 numberWithUnsignedLongLong:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      [CMContinuityCaptureCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];
    }
  }
}

- (int64_t)currentPreferredAvailableTransport
{
  dispatch_assert_queue_V2(self->_queue);
  device = [(ContinuityCaptureDeviceClient *)self->_client device];
  wired = [device wired];

  if (wired)
  {
    return 2;
  }

  device2 = [(ContinuityCaptureDeviceClient *)self->_client device];
  wifiP2pActive = [device2 wifiP2pActive];

  return wifiP2pActive;
}

- (void)notifyTransportError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (errorCopy && [errorCopy code] != -1010 && objc_msgSend(errorCopy, "code") != -1011 && objc_msgSend(errorCopy, "code") == -1005)
  {
    v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    client = [(CMContinuityCaptureCompositeDevice *)self client];
    device = [client device];
    deviceName = [device deviceName];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v6 = MEMORY[0x277CCACA8];
    client2 = [(CMContinuityCaptureCompositeDevice *)self client];
    device2 = [client2 device];
    deviceIdentifier = [device2 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    v21 = [v6 stringWithFormat:@"CMContinuityCaptureMultiDeviceNotification", uUIDString];
    client3 = [(CMContinuityCaptureCompositeDevice *)self client];
    device3 = [client3 device];
    deviceModel = [device3 deviceModel];
    client4 = [(CMContinuityCaptureCompositeDevice *)self client];
    device4 = [client4 device];
    deviceIdentifier2 = [device4 deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v5 scheduleNotification:? data:?];

    [CMContinuityCaptureCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];
  }
}

- (void)registerStreamIntentForCaptureDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureCompositeDevice registerStreamIntentForCaptureDevice:completion:]";
    v20 = 2114;
    v21 = deviceCopy;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke;
  block[3] = &unk_278D5C170;
  objc_copyWeak(&v15, &location);
  v13 = deviceCopy;
  v14 = completionCopy;
  v10 = deviceCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v4 = [WeakRetained client];
    v5 = [v4 device];
    v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    [v6 isSessionInitiatedOnCommunalDevice];
    v7 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    [v7 isSessionMicOnly];
    v31 = 0;
    v8 = [v3 startSessionWithDevice:? forTransportType:? validateTransport:? initiatedOnCommunalDevice:? micOnly:? outError:?];
    v9 = 0;

    if (v8)
    {
      v10 = [WeakRetained currentPreferredAvailableTransport];
      if (v10)
      {
        v11 = v10;
        v12 = [WeakRetained[7] count];
        v13 = WeakRetained[7];
        v14 = MEMORY[0x277CCABB0];
        [a1[4] entity];
        v15 = [v14 numberWithInteger:?];
        [v13 addObject:?];

        if (v12)
        {
          (*(a1[5] + 2))();
        }

        else
        {
          v22 = WeakRetained[8];
          v23 = MEMORY[0x277D85DD0];
          objc_copyWeak(v26, a1 + 6);
          v24 = a1[4];
          v26[1] = v11;
          v25 = a1[5];
          [v22 setPreferredTransport:v23 resetConnection:3221225472 completion:{__86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_64, &unk_278D5C148}];

          objc_destroyWeak(v26);
        }

        goto LABEL_13;
      }

      v20 = a1[5];
      v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      v20[2](v20, v21);
    }

    else
    {
      v16 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_loadWeakRetained(a1 + 6);
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ startSessionWithDevice returned %{public}@", buf, 0x16u);
      }

      [WeakRetained notifyTransportError:?];
      v18 = a1[5];
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      if (v9)
      {
        [v9 code];
      }

      v21 = [v19 initWithDomain:? code:? userInfo:?];
      v18[2](v18, v21);
    }

LABEL_13:
  }
}

void __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_64(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2 && [a2 code])
    {
      v5 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 48));
        v7 = *(a1 + 32);
        v8 = *(a1 + 56);
        *buf = 138544130;
        v15 = v6;
        v16 = 2114;
        v17 = v7;
        v18 = 1024;
        v19 = v8;
        v20 = 2114;
        v21 = a2;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ registerStreamIntentForDevice setPreferredTransport %{public}@ transport %d error %{public}@", buf, 0x26u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = objc_loadWeakRetained(WeakRetained + 15);
      if (v9)
      {
        v10 = MEMORY[0x277D85DD0];
        objc_copyWeak(v13, (a1 + 48));
        v11 = *(a1 + 32);
        v13[1] = *(a1 + 56);
        v12 = *(a1 + 40);
        [v9 registerStreamIntentForDevice:v10 forTransportType:3221225472 completion:{__86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_65, &unk_278D5C148}];

        objc_destroyWeak(v13);
      }
    }
  }
}

void __86__CMContinuityCaptureCompositeDevice_registerStreamIntentForCaptureDevice_completion___block_invoke_65(uint64_t a1, void *a2)
{
  if (a2 && [a2 code])
  {
    v4 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v6 = *(a1 + 32);
      v7 = *(a1 + 56);
      *buf = 138544130;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v20 = 2114;
      v21 = a2;
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ registerStreamIntentForDevice %{public}@ transport %d error %{public}@", buf, 0x26u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    if (v8)
    {
      v13 = v8;
      v9 = [v8[8] device];
      v10 = [v9 magicStateMonitor];
      [v10 holdMagicStateAssertion:?];

      v11 = [v13[8] device];
      v12 = [v11 magicStateMonitor];
      [v12 releaseMagicStateAssertion:? stateTransitionCoolDownTime:?];

      (*(*(a1 + 40) + 16))();
      v8 = v13;
    }
  }
}

- (void)unregisterStreamIntentForCaptureDevice:(id)device
{
  deviceCopy = device;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v16 = 2080;
    v17 = "[CMContinuityCaptureCompositeDevice unregisterStreamIntentForCaptureDevice:]";
    v18 = 2114;
    v19 = deviceCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  v6 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v7 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  dispatch_get_specific(v7);
  v8 = [v6 isEqual:?] ^ 1;

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMContinuityCaptureCompositeDevice_unregisterStreamIntentForCaptureDevice___block_invoke;
  block[3] = &unk_278D5C198;
  block[4] = self;
  v12 = deviceCopy;
  v13 = v8;
  v10 = deviceCopy;
  dispatch_async_and_wait(queue, block);
}

void __77__CMContinuityCaptureCompositeDevice_unregisterStreamIntentForCaptureDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([*(*(a1 + 32) + 56) count] == 1 && (v4 = *(*(a1 + 32) + 56), v5 = MEMORY[0x277CCABB0], objc_msgSend(*(a1 + 40), "entity"), objc_msgSend(v5, "numberWithInteger:"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "containsObject:"), v6, v4))
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 120));

      v8 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        v17 = 138543874;
        v18 = v9;
        v19 = 2080;
        v20 = "[CMContinuityCaptureCompositeDevice unregisterStreamIntentForCaptureDevice:]_block_invoke";
        v21 = 1024;
        v22 = v10;
        _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s syncOnSessionQueue:%d", &v17, 0x1Cu);
      }

      if (v7)
      {
        [v7 unregisterStreamIntentForDevice:?];
      }

      v11 = [*(*(a1 + 32) + 64) device];
      v12 = [v11 magicStateMonitor];
      [v12 releaseMagicStateAssertion:? stateTransitionCoolDownTime:?];
    }

    else
    {
      v7 = v3;
    }

    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 56);
    v15 = MEMORY[0x277CCABB0];
    [v13 entity];
    v16 = [v15 numberWithInteger:?];
    [v14 removeObject:?];
  }
}

- (void)disableAutoTransportSwitch:(BOOL)switch
{
  switchCopy = switch;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Off";
    if (switchCopy)
    {
      v6 = "On";
    }

    v7 = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ turn %s transport switch guard", &v7, 0x16u);
  }

  atomic_store(switchCopy, &self->autoTransportSwitchDisabled);
}

- (BOOL)shouldSwitchConnection
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = atomic_load(&self->autoTransportSwitchDisabled);
  if (v3)
  {
    activeStreams = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(activeStreams, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_242545000, activeStreams, OS_LOG_TYPE_DEFAULT, "%{public}@ skip transport switch since auto switch is disabled", &v18, 0xCu);
    }

    goto LABEL_8;
  }

  device = [(ContinuityCaptureDeviceClient *)self->_client device];
  objc_sync_enter(device);
  device2 = [(ContinuityCaptureDeviceClient *)self->_client device];
  activeStreams = [device2 activeStreams];

  objc_sync_exit(device);
  v7 = [activeStreams count];
  preferredTransport = [(ContinuityCaptureDeviceClient *)self->_client preferredTransport];
  currentPreferredAvailableTransport = [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
  if (v7)
  {
    v10 = currentPreferredAvailableTransport;
    if (preferredTransport == currentPreferredAvailableTransport)
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543618;
        selfCopy4 = self;
        v20 = 1024;
        LODWORD(currentSessionID) = preferredTransport;
        v12 = "%{public}@ Transport status unchanged %d";
        v13 = v11;
        v14 = 18;
LABEL_15:
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
      }
    }

    else
    {
      v11 = CMContinuityCaptureLog(2);
      v16 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v16)
        {
          v18 = 138544130;
          selfCopy4 = self;
          v20 = 2048;
          currentSessionID = [(CMContinuityCaptureCompositeDevice *)self currentSessionID];
          v22 = 1024;
          v23 = preferredTransport;
          v24 = 1024;
          v25 = v10;
          _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Transport Switch from %d -> %d", &v18, 0x22u);
        }

        v15 = 1;
        goto LABEL_17;
      }

      if (v16)
      {
        v18 = 138543362;
        selfCopy4 = self;
        v12 = "%{public}@  No valid transport available for switch";
        v13 = v11;
        v14 = 12;
        goto LABEL_15;
      }
    }

    v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

LABEL_8:
  v15 = 0;
LABEL_18:

  return v15;
}

- (void)deferDevice:(BOOL)device
{
  if (device)
  {
    v4 = MEMORY[0x277CCABB0];
    mach_continuous_time();
    v22 = [v4 numberWithUnsignedLongLong:?];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [CMContinuityCaptureCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];

    v20 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession = [v20 activeSession];
    device = [activeSession device];
    deviceIdentifier = [device deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    [(CMContinuityCaptureCompositeDevice *)self client];
    v11 = v10 = self;
    device2 = [v11 device];
    deviceIdentifier2 = [device2 deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    v15 = [uUIDString isEqualToString:?];

    if (!v15)
    {
      return;
    }

    client = [(CMContinuityCaptureCompositeDevice *)v10 client];
    [client abortRemoteSession];
  }

  else
  {
    if (self->_undeferBlockForSidecarClient)
    {
      return;
    }

    v17 = MEMORY[0x277CCABB0];
    mach_continuous_time();
    client = [v17 numberWithUnsignedLongLong:?];
    v18 = MEMORY[0x277CCABB0];
    [(CMContinuityCaptureCompositeDevice *)self hasValidStreamState];
    v21 = [v18 numberWithBool:?];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [CMContinuityCaptureCompositeDevice postEvent:"postEvent:entity:data:" entity:? data:?];
  }
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
  v17[2] = __85__CMContinuityCaptureCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
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

void __85__CMContinuityCaptureCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:? ofObject:? change:? context:?];
    WeakRetained = v2;
  }
}

- (BOOL)hasValidStreamState
{
  client = [(CMContinuityCaptureCompositeDevice *)self client];
  device = [client device];
  if ([device hasStreamIntent])
  {
    client2 = [(CMContinuityCaptureCompositeDevice *)self client];
    device2 = [client2 device];
    if ([device2 userDisconnected])
    {
      v7 = 0;
    }

    else
    {
      client3 = [(CMContinuityCaptureCompositeDevice *)self client];
      device3 = [client3 device];
      capabilities = [device3 capabilities];
      if (capabilities)
      {
        client4 = [(CMContinuityCaptureCompositeDevice *)self client];
        device4 = [client4 device];
        capabilities2 = [device4 capabilities];
        v16 = client3;
        userDisabled = [capabilities2 userDisabled];

        v7 = userDisabled ^ 1;
        client3 = v16;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)validConnectionResetEventForData:(id)data
{
  dataCopy = data;
  if (!-[ContinuityCaptureDeviceClient lastActivationTime](self->_client, "lastActivationTime") || dataCopy && ([dataCopy objectForKeyedSubscript:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(dataCopy, "objectForKeyedSubscript:"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedLongLongValue"), v9 = -[ContinuityCaptureDeviceClient lastActivationTime](self->_client, "lastActivationTime"), v7, v6, v8 < v9) || !-[CMContinuityCaptureCompositeDevice hasValidStreamState](self, "hasValidStreamState"))
  {
    v11 = 0;
  }

  else
  {
    v10 = [dataCopy objectForKeyedSubscript:?];
    v11 = v10 != 0;
  }

  return v11;
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureCompositeDevice postEvent:entity:data:]";
    v23 = 2112;
    v24 = eventCopy;
    v25 = 2048;
    entityCopy = entity;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %ld", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke;
  block[3] = &unk_278D5C1C0;
  objc_copyWeak(v18, buf);
  v15 = eventCopy;
  selfCopy2 = self;
  v17 = dataCopy;
  v18[1] = entity;
  v12 = dataCopy;
  v13 = eventCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqualToString:?])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2;
      block[3] = &unk_278D5C080;
      objc_copyWeak(v56, (a1 + 56));
      v3 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
      v4 = *(WeakRetained + 9);
      *(WeakRetained + 9) = v3;

      v5 = dispatch_time(0, 4000000000);
      dispatch_after(v5, *(WeakRetained + 1), *(WeakRetained + 9));
      objc_destroyWeak(v56);
    }

    if ([*(a1 + 32) isEqualToString:?])
    {
      v6 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      v7 = [v6 queue];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_3;
      v53[3] = &unk_278D5C080;
      objc_copyWeak(&v54, (a1 + 56));
      dispatch_async(v7, v53);

      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138543362;
        v40 = WeakRetained;
        _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ User Disconnect", &v39, 0xCu);
      }

      objc_destroyWeak(&v54);
      goto LABEL_28;
    }

    if ([*(a1 + 32) isEqualToString:?])
    {
      v9 = [*(a1 + 40) client];
      v10 = [v9 device];
      v11 = [v10 wired];

      if (v11)
      {
        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_loadWeakRetained((a1 + 56));
          v39 = 138543362;
          v40 = v13;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip kCMContinuityCaptureEventStreamDisableForWifiContention since we have active session on USB", &v39, 0xCu);
        }

        goto LABEL_28;
      }
    }

    if ([*(a1 + 32) isEqualToString:?])
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = [v14 objectForKeyedSubscript:?];

        if (v15)
        {
          goto LABEL_31;
        }
      }

      if ([WeakRetained shouldSwitchConnection] && (objc_msgSend(WeakRetained, "validConnectionResetEventForData:") & 1) != 0)
      {
        goto LABEL_31;
      }

LABEL_28:
      v24 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

        goto LABEL_37;
      }

      v25 = objc_loadWeakRetained((a1 + 56));
      v26 = *(a1 + 32);
      v39 = 138543618;
      v40 = v25;
      v41 = 2114;
      v42 = v26;
      _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@  skip event %{public}@", &v39, 0x16u);
LABEL_35:

      goto LABEL_36;
    }

    if (([*(a1 + 32) isEqualToString:?] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:"))
    {
      v16 = [*(WeakRetained + 8) device];
      objc_sync_enter(v16);
      v17 = [*(WeakRetained + 8) device];
      v18 = [v17 activeStreams];

      objc_sync_exit(v16);
      v19 = ![v18 count] || (objc_msgSend(WeakRetained, "validConnectionResetEventForData:") & 1) == 0;
      v20 = [*(a1 + 48) objectForKeyedSubscript:?];
      if (v20)
      {
        v21 = v20;
        v22 = [*(a1 + 48) objectForKeyedSubscript:?];
        v23 = [v22 BOOLValue];

        if ((v23 & 1) == 0 && v19)
        {
          goto LABEL_28;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_31:
    if (!*(a1 + 64))
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v24 = [*(WeakRetained + 2) allKeys];
      v30 = [NSObject countByEnumeratingWithState:v24 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v30)
      {
        v31 = v30;
        v32 = *v50;
        v33 = MEMORY[0x277CBEC10];
        do
        {
          for (i = 0; i != v31; i = (i + 1))
          {
            if (*v50 != v32)
            {
              objc_enumerationMutation(v24);
            }

            v35 = *(*(&v49 + 1) + 8 * i);
            v36 = [WeakRetained eventQueue];
            v46 = *(a1 + 32);
            v47 = v35;
            v37 = *(a1 + 48);
            if (!v37)
            {
              v37 = v33;
            }

            v48 = v37;
            v38 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
            [v36 enqueueEventAction:? args:?];
          }

          v31 = [NSObject countByEnumeratingWithState:v24 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v31);
      }

      goto LABEL_36;
    }

    v24 = [WeakRetained eventQueue];
    v43 = *(a1 + 32);
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v25 = v27;
    v28 = *(a1 + 48);
    if (!v28)
    {
      v28 = MEMORY[0x277CBEC10];
    }

    v44 = v27;
    v45 = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [NSObject enqueueEventAction:v24 args:"enqueueEventAction:args:"];

    goto LABEL_35;
  }

LABEL_37:
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138543362;
    v21 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ termination timeout", buf, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [v4[2] allKeys];
    v6 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [v5[2] objectForKeyedSubscript:?];
          v12 = [v11 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_73;
          block[3] = &unk_278D5C0A8;
          objc_copyWeak(&v15, (a1 + 32));
          block[4] = v10;
          dispatch_async(v12, block);

          objc_destroyWeak(&v15);
          v9 = (v9 + 1);
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }
  }
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[2] objectForKeyedSubscript:?];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2_74;
    v8 = &unk_278D5C0A8;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [v4 terminateComplete:{v5, 3221225472, __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2_74, &unk_278D5C0A8, v9}];

    objc_destroyWeak(&v10);
  }
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_2_74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[2] objectForKeyedSubscript:?];
    [v3 terminateCompleteForDevice:?];

    WeakRetained = v3;
  }
}

void __60__CMContinuityCaptureCompositeDevice_postEvent_entity_data___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[8] device];
    [v2 setUserDisconnected:?];

    WeakRetained = v3;
  }
}

- (void)performConnectionDisconnectEventIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy3 = self;
    v36 = 2080;
    v37 = "[CMContinuityCaptureCompositeDevice performConnectionDisconnectEventIfApplicable:]";
    v38 = 2112;
    v39 = applicableCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s data %@", buf, 0x20u);
  }

  currentPreferredAvailableTransport = [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
  device = [(ContinuityCaptureDeviceClient *)self->_client device];
  objc_sync_enter(device);
  device2 = [(ContinuityCaptureDeviceClient *)self->_client device];
  activeStreams = [device2 activeStreams];

  objc_sync_exit(device);
  v10 = [activeStreams count];
  if (applicableCopy && ([applicableCopy objectForKeyedSubscript:?], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && ((objc_msgSend(applicableCopy, "objectForKeyedSubscript:"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), currentPreferredAvailableTransport) ? (v14 = v13) : (v14 = 0), v12, v11, v14 == 1))
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v36 = 2080;
      v37 = "[CMContinuityCaptureCompositeDevice performConnectionDisconnectEventIfApplicable:]";
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s force reset", buf, 0x16u);
    }
  }

  else if (!v10 || ((v16 = [(CMContinuityCaptureCompositeDevice *)self validConnectionResetEventForData:?], currentPreferredAvailableTransport) ? (v17 = v16) : (v17 = 0), (v17 & 1) == 0))
  {
    eventQueue = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
    [eventQueue notifyCompletion];
    goto LABEL_31;
  }

  v18 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  client = [(CMContinuityCaptureCompositeDevice *)self client];
  device3 = [client device];
  v21 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  [v21 isSessionInitiatedOnCommunalDevice];
  v22 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  [v22 isSessionMicOnly];
  v33 = 0;
  v23 = [v18 startSessionWithDevice:? forTransportType:? validateTransport:? initiatedOnCommunalDevice:? micOnly:? outError:?];
  eventQueue = 0;

  if ((v23 & 1) == 0)
  {
    if (eventQueue && ([eventQueue code] == -1011 || objc_msgSend(eventQueue, "code") == -1010 || objc_msgSend(eventQueue, "code") == -1013))
    {
      [(CMContinuityCaptureCompositeDevice *)self notifyTransportError:?];
    }

    eventQueue2 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
    [eventQueue2 notifyCompletion];
    goto LABEL_30;
  }

  v31[1] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
  v31[2] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
  v31[3] = &unk_2854EC7D0;
  v25 = MEMORY[0x277CCABB0];
  mach_continuous_time();
  v32 = [v25 numberWithUnsignedLongLong:?];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [CMContinuityCaptureCompositeDevice _postEvent:"_postEvent:entity:data:" entity:? data:?];

  if (![(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport])
  {
    v29 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ No valid transport for reset", buf, 0xCu);
    }

    eventQueue2 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
    [eventQueue2 notifyCompletion];
LABEL_30:

    goto LABEL_31;
  }

  client = self->_client;
  v30 = MEMORY[0x277D85DD0];
  objc_copyWeak(v31, &location);
  [(ContinuityCaptureDeviceClient *)client resetSession:v30, 3221225472, __83__CMContinuityCaptureCompositeDevice_performConnectionDisconnectEventIfApplicable___block_invoke, &unk_278D5C1E8];
  objc_destroyWeak(v31);
LABEL_31:

  objc_destroyWeak(&location);
}

void __83__CMContinuityCaptureCompositeDevice_performConnectionDisconnectEventIfApplicable___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [WeakRetained[8] preferredTransport];
      *buf = 138543874;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 2114;
      v23 = a2;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resetSession %d error %{public}@", buf, 0x1Cu);
    }

    obj = [WeakRetained[2] allKeys];
    v8 = [obj countByEnumeratingWithState:? objects:? count:?];
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
            objc_enumerationMutation(obj);
          }

          [*(8 * i) integerValue];
          v12 = MEMORY[0x277CCABB0];
          v13 = [WeakRetained client];
          [v13 currentSessionID];
          v17 = [v12 numberWithUnsignedLongLong:?];
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
          [WeakRetained postEvent:? entity:? data:?];
        }

        v9 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    v15 = [WeakRetained eventQueue];
    [v15 notifyCompletion];
  }
}

- (void)performConnectionChangeEventIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  objc_initWeak(location, self);
  provider = [(CMContinuityCaptureCompositeDevice *)self provider];
  if (provider)
  {
    if (applicableCopy && ([applicableCopy objectForKeyedSubscript:?], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [applicableCopy objectForKeyedSubscript:?];
        *buf = 138543618;
        selfCopy2 = self;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Force Connection Switch to %@", buf, 0x16u);
      }
    }

    else
    {
      if (![(CMContinuityCaptureCompositeDevice *)self shouldSwitchConnection]|| ![(CMContinuityCaptureCompositeDevice *)self validConnectionResetEventForData:?])
      {
        eventQueue = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
        [eventQueue notifyCompletion];
LABEL_25:

        goto LABEL_26;
      }

      if (!applicableCopy)
      {
        goto LABEL_14;
      }
    }

    v9 = [applicableCopy objectForKeyedSubscript:?];

    if (v9)
    {
      v10 = [applicableCopy objectForKeyedSubscript:?];
      integerValue = [v10 integerValue];

      goto LABEL_15;
    }

LABEL_14:
    integerValue = [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
LABEL_15:
    v12 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    client = [(CMContinuityCaptureCompositeDevice *)self client];
    device = [client device];
    v15 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    [v15 isSessionInitiatedOnCommunalDevice];
    v16 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    [v16 isSessionMicOnly];
    v26[2] = 0;
    v17 = [v12 startSessionWithDevice:? forTransportType:? validateTransport:? initiatedOnCommunalDevice:? micOnly:? outError:?];
    eventQueue = 0;

    if (v17)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke;
      v25[3] = &unk_278D5C210;
      objc_copyWeak(v26, location);
      v26[1] = v22;
      v18 = MEMORY[0x245D12020](v25);
      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ go ahead with connection switch", buf, 0xCu);
      }

      objc_copyWeak(&v24, location);
      v23 = v18;
      [provider registerStreamIntentForDevice:? forTransportType:? completion:?];

      objc_destroyWeak(&v24);
      objc_destroyWeak(v26);
    }

    else
    {
      if (eventQueue && ([eventQueue code] == -1011 || objc_msgSend(eventQueue, "code") == -1010 || objc_msgSend(eventQueue, "code") == -1013))
      {
        [(CMContinuityCaptureCompositeDevice *)self notifyTransportError:?];
      }

      eventQueue2 = [(CMContinuityCaptureCompositeDevice *)self eventQueue];
      [eventQueue2 notifyCompletion];
    }

    goto LABEL_25;
  }

LABEL_26:

  objc_destroyWeak(location);
}

void __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138543618;
    v15 = WeakRetained;
    v16 = 2114;
    v17 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ registerStreamIntentForDevice (performConnectionChangeEventIfApplicable) error %{public}@", buf, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    if (a2 && [a2 code])
    {
      v7 = [v6 eventQueue];
      [v7 notifyCompletion];
    }

    else
    {
      v6[12] = [v6 currentSessionID];
      v13[2] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
      v13[3] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
      v13[4] = &unk_2854EC7D0;
      v8 = MEMORY[0x277CCABB0];
      mach_continuous_time();
      v9 = [v8 numberWithUnsignedLongLong:?];
      v13[5] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      [v6 _postEvent:? entity:? data:?];

      v11 = v6[8];
      v12 = MEMORY[0x277D85DD0];
      objc_copyWeak(v13, (a1 + 32));
      v13[1] = *(a1 + 40);
      [v11 setPreferredTransport:v12 resetConnection:3221225472 completion:{__79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_75, &unk_278D5C210}];
      objc_destroyWeak(v13);
    }
  }
}

void __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_75(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = *(a1 + 40);
      *buf = 138543874;
      v20 = v6;
      v21 = 1024;
      v22 = v7;
      v23 = 2114;
      v24 = a2;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setPreferredTransport %d error %{public}@", buf, 0x1Cu);
    }

    obj = [WeakRetained[2] allKeys];
    v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v16 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(obj);
          }

          [*(8 * i) integerValue];
          v11 = MEMORY[0x277CCABB0];
          v12 = [WeakRetained client];
          [v12 currentSessionID];
          v17 = [v11 numberWithUnsignedLongLong:?];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
          [WeakRetained postEvent:? entity:? data:?];
        }

        v9 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    v14 = [WeakRetained eventQueue];
    [v14 notifyCompletion];
  }
}

void __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__CMContinuityCaptureCompositeDevice_performConnectionChangeEventIfApplicable___block_invoke_2;
    v7[3] = &unk_278D5C238;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
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
      selfCopy2 = self;
      v33 = 2048;
      actionCopy = action;
      v35 = 2112;
      v36 = argsCopy;
      _os_log_debug_impl(&dword_242545000, v9, OS_LOG_TYPE_DEBUG, "%@ Perform %lu %@", buf, 0x20u);
    }
  }

  if (action == 3)
  {
    if ([argsCopy count] < 2 || (objc_msgSend(argsCopy, "objectAtIndexedSubscript:"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) == 0) || (objc_msgSend(argsCopy, "objectAtIndexedSubscript:"), v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v13 = objc_opt_isKindOfClass(), v12, (v13 & 1) == 0))
    {
      v27 = 0;
      goto LABEL_21;
    }

    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [argsCopy objectAtIndexedSubscript:?];
      *buf = 138412546;
      selfCopy2 = self;
      v33 = 2114;
      actionCopy = v15;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ Perform event %{public}@", buf, 0x16u);
    }

    v16 = [argsCopy objectAtIndexedSubscript:?];
    v17 = [v16 isEqualToString:?];

    if (v17)
    {
      v18 = [argsCopy objectAtIndexedSubscript:?];
      [(CMContinuityCaptureCompositeDevice *)self performConnectionChangeEventIfApplicable:?];
    }

    else
    {
      v19 = [argsCopy objectAtIndexedSubscript:?];
      v20 = [v19 isEqualToString:?];

      if (v20)
      {
        v18 = [argsCopy objectAtIndexedSubscript:?];
        [(CMContinuityCaptureCompositeDevice *)self performConnectionDisconnectEventIfApplicable:?];
      }

      else
      {
        v21 = [argsCopy objectAtIndexedSubscript:?];
        if (v21)
        {
          v22 = objc_alloc(MEMORY[0x277CBEB38]);
          v23 = [argsCopy objectAtIndexedSubscript:?];
          v18 = [v22 initWithDictionary:?];
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __59__CMContinuityCaptureCompositeDevice_postEventAction_args___block_invoke;
        v29[3] = &unk_278D5C1E8;
        objc_copyWeak(&v30, &location);
        v24 = MEMORY[0x245D12020](v29);
        [v18 setObject:? forKeyedSubscript:?];

        v25 = [argsCopy objectAtIndexedSubscript:?];
        v26 = [argsCopy objectAtIndexedSubscript:?];
        [v26 unsignedIntValue];
        [CMContinuityCaptureCompositeDevice _postEvent:"_postEvent:entity:data:" entity:? data:?];

        objc_destroyWeak(&v30);
      }
    }
  }

  v27 = 1;
LABEL_21:
  objc_destroyWeak(&location);

  return v27;
}

void __59__CMContinuityCaptureCompositeDevice_postEventAction_args___block_invoke(uint64_t a1)
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

- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  v10 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543874;
    selfCopy = self;
    v22 = 2114;
    v23 = eventCopy;
    v24 = 1024;
    entityCopy = entity;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ postEvent : %{public}@ entity : %d", &v20, 0x1Cu);
  }

  if (entity)
  {
    captureDeviceByEntityType = self->_captureDeviceByEntityType;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v13 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKey:?];

    if (v13)
    {
      v14 = self->_captureDeviceByEntityType;
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:?];
      [v16 postEvent:? entity:? data:?];
    }

    else if (dataCopy)
    {
      v17 = [dataCopy objectForKeyedSubscript:?];

      if (v17)
      {
        v18 = [dataCopy objectForKeyedSubscript:?];
        v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
        (v18)[2](v18, v19);
      }
    }
  }

  else
  {
    [CMContinuityCaptureCompositeDevice postEventOnAllEntities:"postEventOnAllEntities:data:" data:?];
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
  block[2] = __68__CMContinuityCaptureCompositeDevice_startStream_option_completion___block_invoke;
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

void __68__CMContinuityCaptureCompositeDevice_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startStream:? option:? completion:?];
    WeakRetained = v2;
  }
}

- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  objc_initWeak(location, self);
  provider = [(CMContinuityCaptureCompositeDevice *)self provider];
  if (provider)
  {
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = __Block_byref_object_copy_;
    v55[4] = __Block_byref_object_dispose_;
    v56 = 0;
    dispatch_assert_queue_V2(self->_queue);
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      *&buf[4] = self;
      *&buf[12] = 2080;
      *&buf[14] = "[CMContinuityCaptureCompositeDevice _startStream:option:completion:]";
      *&buf[22] = 2114;
      v53 = streamCopy;
      LOWORD(v54) = 2048;
      *(&v54 + 2) = option;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %s starting stream with configuration %{public}@, option '%lu'", buf, 0x2Au);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = __Block_byref_object_copy_;
    *&v54 = __Block_byref_object_dispose_;
    *(&v54 + 1) = dispatch_group_create();
    captureDeviceByEntityType = self->_captureDeviceByEntityType;
    v13 = MEMORY[0x277CCABB0];
    [streamCopy entity];
    v14 = [v13 numberWithInteger:?];
    v15 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:?];

    if (v15)
    {
      v27 = provider;
      dispatch_group_enter(*(*&buf[8] + 40));
      dispatch_group_enter(*(*&buf[8] + 40));
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke;
      v46[3] = &unk_278D5C300;
      objc_copyWeak(v51, location);
      v16 = streamCopy;
      v47 = v16;
      v49 = buf;
      v50 = v55;
      v17 = v15;
      v48 = v17;
      v51[1] = option;
      v18 = MEMORY[0x245D12020](v46);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2_79;
      v41[3] = &unk_278D5C2D8;
      objc_copyWeak(&v45, location);
      v19 = v16;
      v42 = v19;
      v43 = v55;
      v44 = buf;
      v20 = MEMORY[0x245D12020](v41);
      client = self->_client;
      [v19 entity];
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2_81;
      v39 = &unk_278D5C328;
      v22 = v18;
      v40 = v22;
      v34[1] = MEMORY[0x277D85DD0];
      v34[2] = 3221225472;
      v34[3] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_3;
      v34[4] = &unk_278D5C328;
      v23 = v20;
      v35 = v23;
      [ContinuityCaptureDeviceClient activateEntity:"activateEntity:configuration:option:entityCompletion:overallCompletion:" configuration:? option:? entityCompletion:? overallCompletion:?];
      v24 = *(*&buf[8] + 40);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_4;
      block[3] = &unk_278D5C350;
      objc_copyWeak(v34, location);
      v32 = v55;
      v29 = v19;
      v30 = v17;
      v31 = completionCopy;
      v33 = buf;
      dispatch_group_notify(v24, queue, block);

      objc_destroyWeak(v34);
      objc_destroyWeak(&v45);

      objc_destroyWeak(v51);
      provider = v27;
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
      (*(completionCopy + 2))(completionCopy, v26);
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v55, 8);
  }

  objc_destroyWeak(location);
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained((a1 + 64));
        v14 = [WeakRetained client];
        v15 = [v14 currentSessionID];
        v16 = [*(a1 + 32) entity];
        *buf = 138544130;
        v21 = v13;
        v22 = 2048;
        v23 = v15;
        v24 = 1024;
        v25 = v16;
        v26 = 2114;
        v27 = a2;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] Activation failure for entity %d error %{public}@", buf, 0x26u);
      }

      if ([a2 code])
      {
        v7 = WeakRetained[1];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_77;
        block[3] = &unk_278D5C2B0;
        block[4] = *(a1 + 48);
        dispatch_async(v7, block);
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        goto LABEL_11;
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained client];
        v10 = [v9 currentSessionID];
        v11 = [*(a1 + 32) entity];
        *buf = 138543874;
        v21 = v8;
        v22 = 2048;
        v23 = v10;
        v24 = 1024;
        v25 = v11;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Activation complete for entity %d", buf, 0x1Cu);
      }
    }

    v12 = *(a1 + 40);
    objc_copyWeak(&v18, (a1 + 64));
    v17 = *(a1 + 32);
    [v12 startStream:? option:? completion:?];

    objc_destroyWeak(&v18);
  }

LABEL_11:
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_77(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_loadWeakRetained((a1 + 56));
        v8 = *(a1 + 32);
        *buf = 138543874;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = a2;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ start stream failure for %@ error %@", buf, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_loadWeakRetained((a1 + 56));
      v9 = *(a1 + 32);
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ start stream complete for %@", buf, 0x16u);
      goto LABEL_7;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v10 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_78;
    block[3] = &unk_278D5C2B0;
    block[4] = *(a1 + 48);
    dispatch_async(v10, block);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_78(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_2_79(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_loadWeakRetained((a1 + 56));
        v17 = [WeakRetained client];
        v18 = [v17 currentSessionID];
        v19 = [*(a1 + 32) entity];
        *buf = 138544130;
        v22 = v16;
        v23 = 2048;
        v24 = v18;
        v25 = 1024;
        v26 = v19;
        v27 = 2114;
        v28 = v4;
        _os_log_error_impl(&dword_242545000, v7, OS_LOG_TYPE_ERROR, "%{public}@ [sessionID:%llx] Overall activation failure for entity %d error %{public}@", buf, 0x26u);
      }

      WeakRetained[12] = [WeakRetained currentSessionID];
      if ([v4 code])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        block[5] = @"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart";
        block[6] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
        block[7] = MEMORY[0x277CBEC28];
        v8 = MEMORY[0x277CCABB0];
        mach_continuous_time();
        v9 = [v8 numberWithUnsignedLongLong:?];
        block[8] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        [WeakRetained postEvent:? entity:? data:?];
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained((a1 + 56));
        v12 = [WeakRetained client];
        v13 = [v12 currentSessionID];
        v14 = [*(a1 + 32) entity];
        *buf = 138543874;
        v22 = v11;
        v23 = 2048;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Overall activation complete for entity %d", buf, 0x1Cu);
      }

      WeakRetained[12] = [WeakRetained currentSessionID];
    }

    v15 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_80;
    block[3] = &unk_278D5C2B0;
    block[4] = *(a1 + 48);
    dispatch_async(v15, block);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_80(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void __69__CMContinuityCaptureCompositeDevice__startStream_option_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = CMContinuityCaptureLog(2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = objc_loadWeakRetained((a1 + 72));
    v7 = [WeakRetained client];
    v8 = [v7 currentSessionID];
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138544130;
    v30 = v6;
    v31 = 2048;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v11 = "%{public}@ [sessionID:%llx] Overall start stream failure for configuration %@ with error %@";
    v12 = v4;
    v13 = 42;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = objc_loadWeakRetained((a1 + 72));
    v7 = [WeakRetained client];
    v14 = [v7 currentSessionID];
    v15 = *(a1 + 32);
    *buf = 138543874;
    v30 = v6;
    v31 = 2048;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    v11 = "%{public}@ [sessionID:%llx] Overall start stream completion for configuration %@";
    v12 = v4;
    v13 = 32;
  }

  _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);

LABEL_8:
  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (v16)
  {
    if ([v16 code])
    {
      v17 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v18 = [v17 shouldResetConnectionForDevice:?];

      if (v18)
      {
        v19 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_loadWeakRetained((a1 + 72));
          *buf = 138543362;
          v30 = v20;
          _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ stream failed try reset", buf, 0xCu);
        }

        [*(a1 + 40) entity];
        v21 = MEMORY[0x277CCABB0];
        mach_continuous_time();
        v27 = [v21 numberWithUnsignedLongLong:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];
        v22 = MEMORY[0x277CCABB0];
        [WeakRetained hasValidStreamState];
        v28 = [v22 numberWithBool:?];
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        [WeakRetained postEvent:? entity:? data:?];
      }
    }
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, *(*(*(a1 + 56) + 8) + 40));
  }

  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;

LABEL_17:
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CMContinuityCaptureCompositeDevice_stopStream_option_completion___block_invoke;
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

void __67__CMContinuityCaptureCompositeDevice_stopStream_option_completion___block_invoke(uint64_t a1)
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
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  provider = [(CMContinuityCaptureCompositeDevice *)self provider];
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2080;
    v21 = "[CMContinuityCaptureCompositeDevice _stopStream:option:completion:]";
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s ", buf, 0x16u);
  }

  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v13 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:?];

  if (v13 && provider)
  {
    v15 = MEMORY[0x277D85DD0];
    objc_copyWeak(v17, &location);
    v17[1] = option;
    v17[2] = stream;
    v16 = completionCopy;
    [v13 stopStream:v15 option:3221225472 completion:{__68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke, &unk_278D5C3F0}];

    objc_destroyWeak(v17);
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(completionCopy + 2))(completionCopy, v14);
  }

  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke_2;
    block[3] = &unk_278D5C3C8;
    objc_copyWeak(&v10, (a1 + 40));
    v11 = *(a1 + 48);
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56))
    {
      v4 = (*(a1 + 56) & 0x200) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        (*(v6 + 16))(v6, 0);
      }
    }

    else
    {
      v5 = *(WeakRetained + 8);
      v7 = MEMORY[0x277D85DD0];
      v9 = *(a1 + 40);
      v8 = *(a1 + 32);
      [v5 terminateEntity:v7 option:3221225472 completion:{__68__CMContinuityCaptureCompositeDevice__stopStream_option_completion___block_invoke_3, &unk_278D5C3A0}];
    }
  }
}

- (void)scheduleSystemPressureNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  if (v5)
  {
    value = [notificationCopy value];
    [v5 setValue:?];
  }

  value2 = [notificationCopy value];
  v8 = [value2 isEqualToString:?];

  if (v8)
  {
    device = [(ContinuityCaptureDeviceClient *)self->_client device];
    deviceModel = [device deviceModel];
    v11 = continuityCaptureNotificationCenter_isiPhone(deviceModel);

    v12 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v13 = @"SYSTEM_PRESSURE_TITLE_IPAD";
    if (v11)
    {
      v13 = @"SYSTEM_PRESSURE_TITLE_IPHONE";
    }

    v28 = @"kContinuityCaptureNotificationKeyTitle";
    v29 = @"kContinuityCaptureNotificationKeyBody";
    v14 = @"SYSTEM_PRESSURE_SHUTDOWN_IPAD";
    if (v11)
    {
      v14 = @"SYSTEM_PRESSURE_SHUTDOWN_IPHONE";
    }

    v34 = v13;
    v35 = v14;
    v30 = @"kContinuityCaptureNotificationKeyBodyArgs";
    device2 = [(ContinuityCaptureDeviceClient *)self->_client device];
    deviceName = [device2 deviceName];
    v27 = deviceName;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v36 = v24;
    v37 = MEMORY[0x277CBEC28];
    v31 = @"kContinuityCaptureNotificationKeyOneTime";
    v32 = @"kContinuityCaptureNotificationKeyIdentifier";
    v15 = MEMORY[0x277CCACA8];
    device3 = [(ContinuityCaptureDeviceClient *)self->_client device];
    deviceIdentifier = [device3 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    v19 = [v15 stringWithFormat:@"CMContinuityCaptureSystemPressueNotification", uUIDString];
    v38 = v19;
    v33 = @"kContinuityCaptureNotificationKeyDeviceModel";
    device4 = [(ContinuityCaptureDeviceClient *)self->_client device];
    deviceModel2 = [device4 deviceModel];
    v39 = deviceModel2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v12 scheduleNotification:? data:?];
  }

  else
  {
    v23 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v23 unscheduleNotification:?];
  }
}

- (void)postValueChangeForControl:(id)control
{
  controlCopy = control;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CMContinuityCaptureCompositeDevice_postValueChangeForControl___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = controlCopy;
  v6 = controlCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__CMContinuityCaptureCompositeDevice_postValueChangeForControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setValueForControl:? completion:?];
    WeakRetained = v2;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(ContinuityCaptureDeviceClient *)self->_client device];
  deviceIdentifier = [device deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];
  v9 = [v3 stringWithFormat:v5, uUIDString, self];

  return v9;
}

- (id)controlWithName:(id)name
{
  nameCopy = name;
  controls = [(CMContinuityCaptureCompositeDevice *)self controls];
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

- (CMContinuityCaptureProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (CMContinuityCaptureCompositeDevice)initWithDevice:(id)device provider:(id)provider
{
  deviceCopy = device;
  providerCopy = provider;
  v8 = MEMORY[0x277CCACA8];
  deviceIdentifier = [deviceCopy deviceIdentifier];
  v10 = [v8 stringWithFormat:deviceIdentifier];
  [v10 UTF8String];
  v11 = FigDispatchQueueCreateWithPriority();

  v47.receiver = self;
  v47.super_class = CMContinuityCaptureCompositeDevice;
  v12 = [(CMContinuityCaptureCompositeDevice *)&v47 init];
  if (v12 && (v13 = [CMContinuityCaptureNWClient initWithDevice:"initWithDevice:queue:taskDelegate:" queue:? taskDelegate:?]) != 0)
  {
    v14 = v13;
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v44 = v12;
      v45 = 2114;
      v46 = v14;
      OUTLINED_FUNCTION_9(&dword_242545000, v15, v16, "%{public}@ create with client %{public}@", buf);
    }

    objc_storeWeak(&v12->_provider, providerCopy);
    objc_storeStrong(&v12->_client, v14);
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    captureDeviceByEntityType = v12->_captureDeviceByEntityType;
    v12->_captureDeviceByEntityType = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cmControlByName = v12->_cmControlByName;
    v12->_cmControlByName = v19;

    objc_storeStrong(&v12->_queue, v11);
    v21 = [CMContinuityCaptureEventQueue initWithActionDelegate:"initWithActionDelegate:queue:" queue:?];
    eventQueue = v12->_eventQueue;
    v12->_eventQueue = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connectionSwitchLogs = v12->_connectionSwitchLogs;
    v12->_connectionSwitchLogs = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    remoteSessionLogs = v12->_remoteSessionLogs;
    v12->_remoteSessionLogs = v25;

    v27 = CMContinuityCaptureGetCurrentTimeString();
    publishTime = v12->_publishTime;
    v12->_publishTime = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    streamingIntentEntities = v12->_streamingIntentEntities;
    v12->_streamingIntentEntities = v29;

    [(CMContinuityCaptureCompositeDevice *)v12 setupControls];
    if ([(CMContinuityCaptureCompositeDevice *)v12 setupCaptureDevices])
    {
      v31 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      queue = [v31 queue];
      dispatch_assert_queue_not_V2(queue);

      v33 = +[CMContinuityCaptureDiscoverySession sharedInstance];
      queue2 = [v33 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__CMContinuityCaptureCompositeDevice_initWithDevice_provider___block_invoke;
      block[3] = &unk_278D5C008;
      v35 = deviceCopy;
      v41 = v35;
      v36 = v12;
      v42 = v36;
      dispatch_async_and_wait(queue2, block);

      objc_storeWeak(v36 + 11, v35);
      [v36 setupSidebandMessageNotificationHandler];
      v37 = v36;
    }

    else
    {
      v39 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v12;
        _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to setup capture devices", buf, 0xCu);
      }

      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (void)_device:(id)_device updatedValueForControl:(id)control
{
  controlCopy = control;
  _deviceCopy = _device;
  name = [controlCopy name];
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:?];
  v10 = [_deviceCopy isEqual:?];

  if (!v10)
  {
    goto LABEL_13;
  }

  if (![OUTLINED_FUNCTION_0() isEqualToString:?])
  {
    if ([OUTLINED_FUNCTION_0() isEqualToString:?] || objc_msgSend(OUTLINED_FUNCTION_0(), "isEqualToString:") || objc_msgSend(OUTLINED_FUNCTION_0(), "isEqualToString:"))
    {
      v11 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
      value = [controlCopy value];
      [v11 setValue:?];

      value3 = 0;
      value2 = 0;
      goto LABEL_12;
    }

LABEL_13:
    value3 = 0;
    value2 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  value2 = [v11 value];
  value3 = [controlCopy value];
  if (([value2 isEqualToNumber:?] & 1) == 0)
  {
    [v11 setValue:?];
    if ([value3 isEqualToNumber:?])
    {
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        device = [(ContinuityCaptureDeviceClient *)self->_client device];
        v20 = 138543618;
        selfCopy = self;
        v22 = 2112;
        v23 = device;
        OUTLINED_FUNCTION_9(&dword_242545000, v14, v16, "%{public}@ relay skip placement step message on device %@", &v20);
      }

      device2 = [(ContinuityCaptureDeviceClient *)self->_client device];
      [device2 setPlacementStepSkipped:?];

      device3 = [(ContinuityCaptureDeviceClient *)self->_client device];
      [(CMContinuityCaptureCompositeDevice *)self currentPreferredAvailableTransport];
      [device3 relaySkipPlacementStepForTranport:?];
    }
  }

LABEL_12:
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [OUTLINED_FUNCTION_0() objectForKeyedSubscript:?];

  if (v6)
  {
    [OUTLINED_FUNCTION_4() handleAVCNegotiation:? data:?];
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5(5.7781e-34);
    v62 = 2080;
    v63 = "[CMContinuityCaptureCompositeDevice _observeValueForKeyPath:ofObject:change:context:]";
    v64 = 2112;
    v65 = pathCopy;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (![pathCopy isEqualToString:?])
  {
    if ([pathCopy isEqualToString:?] && -[CMContinuityCaptureCompositeDevice shouldSwitchConnection](self, "shouldSwitchConnection"))
    {
      v38 = MEMORY[0x277CCABB0];
      [(ContinuityCaptureDeviceClient *)self->_client currentSessionID];
      v59 = [v38 numberWithUnsignedLongLong:?];
      v39 = MEMORY[0x277CCABB0];
      mach_continuous_time();
      v60 = [v39 numberWithUnsignedLongLong:?];
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      OUTLINED_FUNCTION_3();
      [v41 postEvent:? entity:? data:?];

LABEL_49:
      name2 = 0;
      name = 0;
      v31 = 0;
      v37 = 0;
      goto LABEL_50;
    }

    if (![pathCopy isEqualToString:?])
    {
      if ([pathCopy isEqualToString:?])
      {
        v48 = [changeCopy objectForKeyedSubscript:?];
        bOOLValue = [v48 BOOLValue];

        if (bOOLValue)
        {
          [(CMContinuityCaptureCompositeDevice *)self _handlePlacementStepSkipped];
        }
      }

      goto LABEL_49;
    }

    v42 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
    if ([v42 BOOLValue])
    {
      v43 = [changeCopy objectForKeyedSubscript:?];
      bOOLValue2 = [v43 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        v45 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5(5.8381e-34);
          OUTLINED_FUNCTION_8(&dword_242545000, v46, v47, "%{public}@ Defer device");
        }

        goto LABEL_48;
      }
    }

    else
    {
    }

    v50 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
    if ([v50 BOOLValue])
    {

      goto LABEL_49;
    }

    v51 = [changeCopy objectForKeyedSubscript:?];
    bOOLValue3 = [v51 BOOLValue];

    if (!bOOLValue3)
    {
      goto LABEL_49;
    }

    v45 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5(5.8381e-34);
      OUTLINED_FUNCTION_8(&dword_242545000, v53, v54, "%{public}@ Un-Defer device");
    }

LABEL_48:

    [(CMContinuityCaptureCompositeDevice *)self deferDevice:?];
    goto LABEL_49;
  }

  contextCopy = context;
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v14 = MEMORY[0x277CCABB0];
  v58 = contextCopy;
  [contextCopy entity];
  v15 = [v14 numberWithInteger:?];
  v16 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKey:?];

  if (!v16 || ([OUTLINED_FUNCTION_1() objectForKeyedSubscript:?], (v17 = objc_claimAutoreleasedReturnValue()) == 0) || (v18 = v17, objc_msgSend(OUTLINED_FUNCTION_1(), "objectForKeyedSubscript:"), v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) == 0) || (objc_msgSend(changeCopy, "objectForKeyedSubscript:"), (v21 = objc_claimAutoreleasedReturnValue()) == 0) || (v22 = v21, objc_msgSend(changeCopy, "objectForKeyedSubscript:"), v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, v22, (v24 & 1) == 0))
  {
    name2 = 0;
    name = 0;
    v31 = 0;
LABEL_32:
    v37 = v58;
    goto LABEL_50;
  }

  v25 = [OUTLINED_FUNCTION_1() objectForKeyedSubscript:?];
  name = [v25 name];

  v27 = [changeCopy objectForKeyedSubscript:?];
  name2 = [v27 name];

  v29 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5(5.8384e-34);
    v62 = 2112;
    v63 = name2;
    v64 = 2112;
    v65 = name;
    v66 = 2112;
    v67 = v58;
    _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_INFO, "%{public}@ Change of state from %@ to %@ for %@", buf, 0x2Au);
  }

  allValues = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v31 = allValues;
  if (!allValues)
  {
    goto LABEL_32;
  }

  selfCopy = self;
  if (![allValues count])
  {
    goto LABEL_32;
  }

  v55 = changeCopy;
  v56 = pathCopy;
  v31 = v31;
  v32 = [v31 countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v33 = v32;
    v34 = MEMORY[0];
    do
    {
      for (i = 0; i != v33; i = (i + 1))
      {
        if (MEMORY[0] != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(8 * i);
        if (v36 != v58 && ((([name2 isEqualToString:?] & 1) != 0 || objc_msgSend(name2, "isEqualToString:")) && ((objc_msgSend(name, "isEqualToString:", v55, v56) & 1) != 0 || (objc_msgSend(name, "isEqualToString:") & 1) != 0) || objc_msgSend(name, "isEqualToString:", v55, v56)))
        {
          [v36 entity];
          [CMContinuityCaptureCompositeDevice postEvent:selfCopy entity:"postEvent:entity:data:" data:?];
        }
      }

      v33 = [v31 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v33);
  }

  changeCopy = v55;
  pathCopy = v56;
  v37 = v58;
LABEL_50:
}

- (void)scheduleBatteryLevelNotification:(id)notification
{
  notificationCopy = notification;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  v7 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_37;
  }

  if (!v7)
  {
    goto LABEL_37;
  }

  name = [notificationCopy name];
  v10 = [name isEqualToString:?];

  if (!v10)
  {
    goto LABEL_37;
  }

  value = [v6 value];
  [value floatValue];
  v13 = v12;

  value2 = [notificationCopy value];
  [value2 floatValue];
  v16 = v15;

  value3 = [v8 value];
  intValue = [value3 intValue];

  client = [(CMContinuityCaptureCompositeDevice *)self client];
  device = [client device];
  deviceModel = [device deviceModel];
  continuityCaptureNotificationCenter_isiPhone(deviceModel);

  v48 = v8;
  if (v13 <= 0.05 || v16 > 0.05 || v16 <= 0.0)
  {
    if (v13 <= 0.1 || v16 > 0.1 || v16 <= 0.05)
    {
      if (v13 <= 0.2 || v16 > 0.2 || v16 <= 0.1)
      {
        goto LABEL_18;
      }

      client2 = [(CMContinuityCaptureCompositeDevice *)self client];
      device2 = [client2 device];
      deviceName = [device2 deviceName];
      v57 = deviceName;
      v25 = [MEMORY[0x277CCABB8] localizedStringFromNumber:? numberStyle:?];
      v58 = v25;
      v26 = MEMORY[0x277CBEA60];
    }

    else
    {
      client2 = [(CMContinuityCaptureCompositeDevice *)self client];
      device2 = [client2 device];
      deviceName = [device2 deviceName];
      v59 = deviceName;
      v25 = [MEMORY[0x277CCABB8] localizedStringFromNumber:? numberStyle:?];
      v60 = v25;
      v26 = MEMORY[0x277CBEA60];
    }

    v27 = [v26 arrayWithObjects:? count:?];
    [v5 setObject:? forKeyedSubscript:?];
  }

  else
  {
    client2 = [(CMContinuityCaptureCompositeDevice *)self client];
    device2 = [client2 device];
    deviceName2 = [device2 deviceName];
    v62 = [MEMORY[0x277CCABB8] localizedStringFromNumber:? numberStyle:?];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [v5 setObject:? forKeyedSubscript:?];
  }

LABEL_18:
  v28 = [v5 objectForKeyedSubscript:?];
  v29 = v28;
  if (!v28)
  {
    goto LABEL_26;
  }

  if (intValue != 4 && intValue != 1)
  {
    goto LABEL_26;
  }

  if (v16 < v13)
  {
    [v5 setObject:? forKeyedSubscript:?];
    [v5 setObject:? forKeyedSubscript:?];
    v31 = MEMORY[0x277CCACA8];
    device3 = [(ContinuityCaptureDeviceClient *)self->_client device];
    deviceIdentifier = [device3 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    v35 = [v31 stringWithFormat:@"CMContinuityCaptureBatteryNotification", uUIDString];
    [v5 setObject:? forKeyedSubscript:?];

    [v5 setObject:? forKeyedSubscript:?];
    device4 = [(ContinuityCaptureDeviceClient *)self->_client device];
    deviceModel2 = [device4 deviceModel];
    [v5 setObject:? forKeyedSubscript:?];

    v29 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v29 scheduleNotification:? data:?];
LABEL_26:
  }

  value4 = [notificationCopy value];
  [v6 setValue:?];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  allValues = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v40 = [allValues countByEnumeratingWithState:? objects:? count:?];
  if (v40)
  {
    v41 = v40;
    v42 = *v54;
    do
    {
      for (i = 0; i != v41; i = (i + 1))
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(allValues);
        }

        OUTLINED_FUNCTION_3();
        [v44 setValueForControl:? completion:?];
      }

      v41 = [allValues countByEnumeratingWithState:? objects:? count:?];
    }

    while (v41);
  }

  v45 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138543618;
    selfCopy = self;
    v51 = 2112;
    v52 = v6;
    OUTLINED_FUNCTION_9(&dword_242545000, v45, v46, "%{public}@ Battery Level %@ updated", &v49);
  }

  v8 = v48;
LABEL_37:
}

- (void)handleBatteryState:(id)state
{
  stateCopy = state;
  v5 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  if (v5)
  {
    value = [stateCopy value];
    intValue = [value intValue];

    if (intValue == 2)
    {
      v8 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
      [v8 unscheduleNotification:?];
    }

    value2 = [stateCopy value];
    [v5 setValue:?];

    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      selfCopy = self;
      v22 = 2112;
      v23 = v5;
      OUTLINED_FUNCTION_9(&dword_242545000, v10, v11, "%{public}@ Battery state %@ updated", &v20);
    }

    allValues = [OUTLINED_FUNCTION_6() allValues];
    OUTLINED_FUNCTION_7();
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(allValues);
          }

          OUTLINED_FUNCTION_3();
          [v18 setValueForControl:? completion:?];
          v17 = (v17 + 1);
        }

        while (v15 != v17);
        OUTLINED_FUNCTION_7();
        v15 = [allValues countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }
  }
}

- (void)handleRemoteSystemNotificationControl:(id)control
{
  controlCopy = control;
  v5 = controlCopy;
  if (controlCopy)
  {
    name = [controlCopy name];

    if (name)
    {
      dispatch_assert_queue_V2(self->_queue);
      name2 = [v5 name];
      v8 = [name2 isEqualToString:?];

      if (v8)
      {
        [OUTLINED_FUNCTION_4() scheduleSystemPressureNotification:?];
        goto LABEL_24;
      }

      name3 = [v5 name];
      v10 = [name3 isEqualToString:?];

      if (v10)
      {
        [OUTLINED_FUNCTION_4() scheduleBatteryLevelNotification:?];
        goto LABEL_24;
      }

      name4 = [v5 name];
      v12 = [name4 isEqualToString:?];

      if (v12)
      {
        [OUTLINED_FUNCTION_4() handleBatteryState:?];
        goto LABEL_24;
      }

      name5 = [v5 name];
      v14 = [name5 isEqualToString:?];

      if (v14)
      {
        value = [v5 value];

        if (value)
        {
          goto LABEL_24;
        }

        value5 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(value5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }
      }

      else
      {
        name6 = [v5 name];
        v19 = [name6 isEqualToString:?];

        if (v19)
        {
          value2 = [v5 value];

          if (value2)
          {
            v21 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
            [v21 unscheduleNotification:?];

            v22 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
            [v22 unscheduleNotification:?];

            goto LABEL_24;
          }

          value5 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(value5, OS_LOG_TYPE_DEFAULT))
          {
LABEL_12:
            OUTLINED_FUNCTION_2();
            v17 = "%{public}@ Invalid call data";
LABEL_29:
            _os_log_impl(&dword_242545000, value5, OS_LOG_TYPE_DEFAULT, v17, v32, 0xCu);
          }
        }

        else
        {
          name7 = [v5 name];
          v24 = [name7 isEqualToString:?];

          if (!v24)
          {
            goto LABEL_24;
          }

          value3 = [v5 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (CMContinityCaptureDebugLogEnabled(v27, v28))
            {
              v29 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                value4 = [v5 value];
                OUTLINED_FUNCTION_2();
                v33 = 2114;
                v34 = v31;
                _os_log_debug_impl(&dword_242545000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ RemoteSessionSummary %{public}@", v32, 0x16u);
              }
            }

            value5 = [v5 value];
            [OUTLINED_FUNCTION_0() logRemoteSessionSummary:?];
            goto LABEL_23;
          }

          value5 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(value5, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_2();
            v17 = "%{public}@ Invalid control data";
            goto LABEL_29;
          }
        }
      }

LABEL_23:
    }
  }

LABEL_24:
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v9 = MEMORY[0x277CCABB0];
  [controlCopy entity];
  v10 = [v9 numberWithInteger:?];
  v11 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:?];

  dispatch_assert_queue_V2(self->_queue);
  if ([controlCopy entity] == 4)
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = controlCopy;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_INFO, "%@ system notification for %@", &v13, 0x16u);
    }

    [(CMContinuityCaptureCompositeDevice *)self handleRemoteSystemNotificationControl:?];
  }

  else if (v11)
  {
    [v11 setValueForControl:? completion:?];
  }
}

- (void)didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [OUTLINED_FUNCTION_0() objectForKeyedSubscript:?];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 didCaptureStillImage:? entity:?];
    }
  }
}

- (void)_handlePlacementStepSkipped
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    value = [v3 value];
    if (([value isEqualToNumber:?] & 1) == 0)
    {
      [v4 setValue:?];
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy = self;
        v17 = 2082;
        v18 = "[CMContinuityCaptureCompositeDevice _handlePlacementStepSkipped]";
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s updated value for %@", buf, 0x20u);
      }

      allValues = [OUTLINED_FUNCTION_6() allValues];
      OUTLINED_FUNCTION_7();
      v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; i = (i + 1))
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            OUTLINED_FUNCTION_3();
            [v13 setValueForControl:? completion:?];
          }

          OUTLINED_FUNCTION_7();
          v10 = [allValues countByEnumeratingWithState:? objects:? count:?];
        }

        while (v10);
      }
    }
  }

  else
  {
    value = 0;
  }
}

@end