@interface HMDRemoteDeviceMonitor
+ (id)logCategory;
+ (id)pingMessageForDevice:(id)device timeout:(double)timeout restriction:(unint64_t)restriction;
- (BOOL)isReachable;
- (HMDModernTransportDeviceReachabilityObserver)transportReachabilityObserver;
- (HMDRemoteDeviceInformation)_startMonitoringDevice:(void *)device withInitialReachability:(void *)reachability forClient:;
- (HMDRemoteDeviceMonitor)init;
- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)registry activityObserver:(id)observer accountManager:(id)manager;
- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)registry activityObserver:(id)observer queue:(id)queue service:(id)service modernService:(id)modernService accountManager:(id)manager remoteAccountManager:(id)accountManager netMonitor:(id)self0 factory:(id)self1;
- (NSArray)unreachableDevices;
- (id)_deviceInformationForDevice:(uint64_t)device;
- (id)devices;
- (id)dumpState;
- (id)iCloudAccount;
- (id)newConfirmationHandlerWithTimeout:(double)timeout workQueue:(id)queue handler:(id)handler;
- (id)newDeviceMonitoringTimer;
- (id)newInitialDeviceHealthTimer;
- (id)newRepeatingDeviceHealthTimer;
- (id)newSendMessageOperationWithMessage:(id)message;
- (void)_confirmDevice:(void *)device timeout:(double)timeout completionHandler:;
- (void)_handleGlobalReachabilityChange;
- (void)_handleIncomingMessageForDevice:(id)device;
- (void)_sendPingToDevice:(dispatch_queue_t *)device;
- (void)_stopMonitoringDevice:(uint64_t)device;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)account:(id)account loginChanged:(id)changed;
- (void)confirmDevice:(id)device forClient:(id)client timeout:(double)timeout completionHandler:(id)handler;
- (void)dealloc;
- (void)handleAccountRemoved:(id)removed;
- (void)handleCurrentDeviceUpdate:(id)update;
- (void)handleDeviceRemovedFromAccount:(id)account;
- (void)handleReachabilityChange:(void *)change deviceInformation:(unint64_t)information reason:(char)reason didStartMonitoringDevice:;
- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)update isReachable:(BOOL)reachable;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)notifyDeviceReachabilityChange:(void *)change forDevice:;
- (void)observer:(id)observer didUpdateDevice:(id)device isOnline:(BOOL)online;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)setReachable:(uint64_t)reachable;
- (void)setTransportReachabilityObserver:(id)observer;
- (void)start;
- (void)startMonitoringDevice:(id)device withInitialReachability:(id)reachability forClient:(id)client;
- (void)stopMonitoringDevice:(id)device forClient:(id)client;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDRemoteDeviceMonitor

- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)update isReachable:(BOOL)reachable
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accountRegistry = [(HMDRemoteDeviceMonitor *)self accountRegistry];
  v8 = [accountRegistry deviceForAddress:updateCopy];

  if (!reachable && v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [v8 shortDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Transport detects device %{public}@ might be unreachable, confirming...", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDRemoteDeviceMonitor *)selfCopy confirmDevice:v8 forClient:selfCopy timeout:0 completionHandler:65.0];
  }
}

- (void)observer:(id)observer didUpdateDevice:(id)device isOnline:(BOOL)online
{
  deviceCopy = device;
  v9 = deviceCopy;
  if (self)
  {
    activityObserver = self->_activityObserver;
  }

  else
  {
    activityObserver = 0;
  }

  if (activityObserver == observer)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke;
    block[3] = &unk_279734938;
    block[4] = self;
    v13 = deviceCopy;
    onlineCopy = online;
    dispatch_async(queue, block);
  }
}

void __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    v7 = v6;
    v8 = *(a1 + 48);
    *buf = 138543874;
    if (v8)
    {
      v9 = @"Connected";
    }

    else
    {
      v9 = @"Disconnected";
    }

    v31 = v5;
    v32 = 2114;
    v33 = v6;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received IDS Activity update for device %{public}@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = [[HMDRemoteDeviceReachabilityChangeLogEvent alloc] initWithReason:4 reachable:*(a1 + 48) targetSupportsIDSPresence:1];
  v11 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v11 submitLogEvent:v10];

  v12 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v13 = [(HMDRemoteDeviceMonitor *)*(a1 + 32) _deviceInformationForDevice:?];
  os_unfair_lock_unlock(v12 + 2);
  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) shortDescription];
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No Device Information found for device: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (*(a1 + 48) == (*(v13 + 8) & 1))
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) shortDescription];
      *buf = 138543618;
      v31 = v17;
      v32 = 2114;
      v33 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Server reachability is the same as our reachability for device: %{public}@", buf, 0x16u);
    }

LABEL_10:

    objc_autoreleasePoolPop(v14);
    goto LABEL_17;
  }

  dispatch_assert_queue_V2(*(v13 + 24));
  *(v13 + 40) &= ~8uLL;
  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v31 = v24;
    v32 = 2114;
    v33 = v25;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Confirming device %{public}@ because server reachability is different from our reachability", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  [*(v13 + 64) suspend];
  v26 = *(v13 + 64);
  *(v13 + 64) = 0;

  v27 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke_197;
  v28[3] = &unk_2797358C8;
  v28[4] = v27;
  v29 = *(a1 + 40);
  [(HMDRemoteDeviceMonitor *)v27 _confirmDevice:v13 timeout:v28 completionHandler:65.0];

LABEL_17:
}

- (id)_deviceInformationForDevice:(uint64_t)device
{
  deviceCopy = device;
  if (device)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((deviceCopy + 8));
    deviceCopy = [*(deviceCopy + 120) objectForKey:v3];
  }

  return deviceCopy;
}

void __60__HMDRemoteDeviceMonitor_observer_didUpdateDevice_isOnline___block_invoke_197(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v9 = v8;
    v10 = @"Success";
    v11 = 138543874;
    v12 = v7;
    if (v3)
    {
      v10 = v3;
    }

    v13 = 2114;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Ping result due to IDS Activity for device %{public}@: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_confirmDevice:(void *)device timeout:(double)timeout completionHandler:
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  deviceCopy = device;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    os_unfair_lock_lock_with_options();
    v9 = *(self + 41);
    os_unfair_lock_unlock((self + 8));
    if (v9)
    {
      if (v7)
      {
        Property = objc_getProperty(v7, v10, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v12 = Property;
      if ([self isReachable])
      {
        if ([v12 isCurrentDevice])
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v40 = 138543362;
            v41 = v16;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Confirming ourselves, returning success", &v40, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          if (deviceCopy)
          {
            deviceCopy[2](deviceCopy, 0);
          }

          goto LABEL_19;
        }

        if (v7)
        {
          v27 = (v7[5] & 0xA) == 0;
          if ((v7[1] & 1) == 0 && (v7[5] & 0xA) != 0)
          {
            v28 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = HMFGetLogIdentifier();
              shortDescription = [v12 shortDescription];
              v40 = 138543618;
              v41 = v31;
              v42 = 2114;
              v43 = shortDescription;
              _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@The device is already unreachable: %{public}@", &v40, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
            dispatch_assert_queue_V2(v7[3]);
            v7[5] = (v7[5] | 1);
            if (!deviceCopy)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v27 = 1;
        }

        if (deviceCopy)
        {
          [(HMDRemoteDeviceInformation *)v7 queueConfirmationHandler:deviceCopy timeout:timeout];
        }

        if (v27)
        {
          [(HMDRemoteDeviceMonitor *)self _sendPingToDevice:v7];
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            if (v7)
            {
              v38 = objc_getProperty(v7, v36, 16, 1);
            }

            else
            {
              v38 = 0;
            }

            shortDescription2 = [v38 shortDescription];
            v40 = 138543618;
            v41 = v37;
            v42 = 2114;
            v43 = shortDescription2;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@The device is already being confirmed: %{public}@", &v40, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
        }

        goto LABEL_19;
      }

      v21 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        shortDescription3 = [v12 shortDescription];
        v40 = 138543618;
        v41 = v24;
        v42 = 2114;
        v43 = shortDescription3;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@We are currently unreachable, so failing confirm for device: %{public}@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      if (!deviceCopy)
      {
        goto LABEL_19;
      }

LABEL_18:
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      (deviceCopy)[2](deviceCopy, v26);

      goto LABEL_19;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v40 = 138543362;
      v41 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot confirm device before monitor has started", &v40, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (deviceCopy)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (deviceCopy)[2](deviceCopy, v12);
LABEL_19:
    }
  }
}

- (void)_sendPingToDevice:(dispatch_queue_t *)device
{
  v62[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (device)
  {
    dispatch_assert_queue_V2(device[2]);
    if (v3)
    {
      if ([objc_getProperty(v3 v4])
      {
        v5 = objc_autoreleasePoolPush();
        deviceCopy = device;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to send ping to ourselves", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
      }

      else
      {
        v9 = (*(v3 + 5) & 2) == 0;
        v10 = objc_autoreleasePoolPush();
        deviceCopy2 = device;
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (v9)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = HMFGetLogIdentifier();
            v16 = [objc_getProperty(v3 v15];
            *buf = 138543618;
            *&buf[4] = v14;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending ping to device: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          [*(v3 + 8) suspend];
          objc_initWeak(&location, deviceCopy2);
          aBlock = MEMORY[0x277D85DD0];
          v50 = 3221225472;
          v51 = __44__HMDRemoteDeviceMonitor__sendPingToDevice___block_invoke;
          v52 = &unk_2797338E8;
          objc_copyWeak(&v54, &location);
          v17 = v3;
          v53 = v17;
          v48 = _Block_copy(&aBlock);
          v18 = 65.0;
          if ((_pingTimeoutAdjustedForIDSPushBlackout_isPushAvailable & 1) == 0)
          {
            processInfo = [MEMORY[0x277CCAC38] processInfo];
            [processInfo systemUptime];
            v21 = v20;

            v22 = 120.0 - v21;
            if (v22 <= 0.0)
            {
              v30 = objc_autoreleasePoolPush();
              v31 = deviceCopy2;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v33;
                *&buf[12] = 2048;
                *&buf[14] = 0x4050400000000000;
                _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Push is available, using default ping timeout: %f", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              _pingTimeoutAdjustedForIDSPushBlackout_isPushAvailable = 1;
            }

            else
            {
              v23 = objc_autoreleasePoolPush();
              v24 = deviceCopy2;
              v25 = HMFGetOSLogHandle();
              v18 = v22 + 65.0;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v26;
                *&buf[12] = 2048;
                *&buf[14] = v22 + 65.0;
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Push is unavailable, using extended ping timeout: %f", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v23);
            }
          }

          [(HMDRemoteDeviceInformation *)v17 queueConfirmationHandler:v48 timeout:v18];
          dispatch_assert_queue_V2(v17[3]);
          v17[5] = (v17[5] | 2);
          dispatch_assert_queue_V2(v17[3]);
          v17[5] = (v17[5] & 0xFFFFFFFFFFFFFFFBLL);
          v34 = v17;
          v36 = [HMDRemoteDeviceMonitor pingMessageForDevice:objc_getProperty(v34 timeout:v35 restriction:16, 1), 0, v18];
          WeakRetained = objc_loadWeakRetained(deviceCopy2 + 14);
          v38 = [WeakRetained newSendMessageOperationWithMessage:v36];
          objc_initWeak(&from, deviceCopy2);
          objc_initWeak(&v56, v38);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke;
          v59 = &unk_279733938;
          objc_copyWeak(&v61, &from);
          objc_copyWeak(v62, &v56);
          v39 = v34;
          v60 = v39;
          [v38 setCompletionBlock:buf];

          objc_destroyWeak(v62);
          objc_destroyWeak(&v61);
          objc_destroyWeak(&v56);
          objc_destroyWeak(&from);

          v40 = objc_autoreleasePoolPush();
          v41 = deviceCopy2;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = HMFGetLogIdentifier();
            shortDescription = [v38 shortDescription];
            v46 = objc_getProperty(v39, v45, 16, 1);
            shortDescription2 = [v46 shortDescription];
            *buf = 138543874;
            *&buf[4] = v43;
            *&buf[12] = 2114;
            *&buf[14] = shortDescription;
            *&buf[22] = 2114;
            v59 = shortDescription2;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Starting ping operation %{public}@ for device: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v40);
          [v41[3] addOperation:v38];

          objc_destroyWeak(&v54);
          objc_destroyWeak(&location);
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            v29 = [objc_getProperty(v3 v28];
            *buf = 138543618;
            *&buf[4] = v27;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Already pinging to device: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
        }
      }
    }
  }
}

void __44__HMDRemoteDeviceMonitor__sendPingToDevice___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[2]);
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v9, 16, 1);
      }

      v12 = [Property shortDescription];
      v32 = 138543874;
      v33 = v10;
      v34 = 2114;
      v35 = v12;
      v36 = 2112;
      v37 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Confirmation completed for device %{public}@ with error: %@", &v32, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (!v3)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 32);
        if (v29)
        {
          v29 = objc_getProperty(v29, v27, 16, 1);
        }

        v30 = [v29 shortDescription];
        v32 = 138543618;
        v33 = v28;
        v34 = 2114;
        v35 = v30;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Confirmation succeeded to reachable device: %{public}@", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      [(HMDRemoteDeviceMonitor *)v25 handleReachabilityChange:*(a1 + 32) deviceInformation:1uLL reason:0 didStartMonitoringDevice:?];
      goto LABEL_27;
    }

    v13 = *(a1 + 32);
    if (!v13 || (*(v13 + 8) & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v7;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 32);
        if (v19)
        {
          v19 = objc_getProperty(v19, v17, 16, 1);
        }

        v20 = [v19 shortDescription];
        v32 = 138543874;
        v33 = v18;
        v34 = 2114;
        v35 = v20;
        v36 = 2112;
        v37 = v3;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Confirmation failed to unreachable device %{public}@ with error: %@", &v32, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v21 = [v3 domain];
    if ([v21 isEqual:*MEMORY[0x277D0F1A0]])
    {
      v22 = [v3 code];

      if (v22 == 13)
      {
        v23 = 3;
LABEL_24:
        [(HMDRemoteDeviceMonitor *)v7 handleReachabilityChange:*(a1 + 32) deviceInformation:v23 reason:0 didStartMonitoringDevice:?];
        [(HMDRemoteDeviceInformation *)*(a1 + 32) addState:?];
        v31 = *(a1 + 32);
        if (v31 && (*(v31 + 40) & 4) != 0)
        {
          dispatch_assert_queue_V2(*(v31 + 24));
          *(v31 + 40) &= ~2uLL;
        }

LABEL_27:
        [(HMDRemoteDeviceInformation *)*(a1 + 32) completeConfirmationsWithError:v3];
        goto LABEL_28;
      }
    }

    else
    {
    }

    v23 = 2;
    goto LABEL_24;
  }

LABEL_28:
}

void __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = [v3 error];
    v5 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke_2;
    block[3] = &unk_279734960;
    block[4] = WeakRetained;
    v8 = v4;
    v9 = a1[4];
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void __61__HMDRemoteDeviceMonitor__createRemotePingOperation_timeout___block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v9 = [Property shortDescription];
    v50 = 138543874;
    v51 = v6;
    v52 = 2112;
    v53 = v8;
    v54 = 2114;
    v55 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Operation completed with error %@ to device %{public}@", &v50, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *(a1 + 48);
  if (v10 && (*(v10 + 40) & 2) != 0)
  {
    v11 = *(a1 + 40);
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = *(a1 + 48);
        if (v18)
        {
          v18 = objc_getProperty(v18, v16, 16, 1);
        }

        v19 = [v18 shortDescription];
        v20 = *(a1 + 40);
        v50 = 138543874;
        v51 = v17;
        v52 = 2114;
        v53 = v19;
        v54 = 2112;
        v55 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to send ping to device %{public}@ with error: %@", &v50, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDRemoteDeviceInformation *)*(a1 + 48) completeConfirmationsWithError:?];
      v22 = *(a1 + 32);
      if (v22)
      {
        WeakRetained = objc_loadWeakRetained((v22 + 96));
      }

      else
      {
        WeakRetained = 0;
      }

      v25 = *(a1 + 40);
      v24 = *(a1 + 48);
      if (v24)
      {
        v24 = objc_getProperty(v24, v21, 16, 1);
      }

      v26 = [v24 remoteDestinationString];
      [WeakRetained __handleSendMessageFailureWithError:v25 destination:v26];

      [(HMDRemoteDeviceInformation *)*(a1 + 48) addState:?];
      [HMDRemoteDeviceInformation clearState:?];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 48);
        if (v29)
        {
          v29 = objc_getProperty(v29, v27, 16, 1);
        }

        v30 = [v29 shortDescription];
        v50 = 138543618;
        v51 = v28;
        v52 = 2114;
        v53 = v30;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully sent ping to device: %{public}@", &v50, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDRemoteDeviceInformation *)*(a1 + 48) addState:?];
    }

    v31 = *(a1 + 32);
    v32 = *(a1 + 48);
    v33 = v32;
    if (!v31)
    {
      goto LABEL_33;
    }

    if (v32)
    {
      v34 = v32[8];
    }

    else
    {
      v34 = 0;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v31;
    v37 = HMFGetOSLogHandle();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (v34)
    {
      if (v38)
      {
        v40 = HMFGetLogIdentifier();
        if (v33)
        {
          v41 = objc_getProperty(v33, v39, 16, 1);
        }

        else
        {
          v41 = 0;
        }

        v42 = [v41 shortDescription];
        v50 = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v42;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Resuming actively monitoring device: %{public}@", &v50, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      if (v33)
      {
LABEL_31:
        v43 = v33[8];
LABEL_32:
        [v43 resume];
LABEL_33:

        return;
      }
    }

    else
    {
      if (v38)
      {
        v45 = HMFGetLogIdentifier();
        if (v33)
        {
          v46 = objc_getProperty(v33, v44, 16, 1);
        }

        else
        {
          v46 = 0;
        }

        v47 = [v46 shortDescription];
        v50 = 138543618;
        v51 = v45;
        v52 = 2114;
        v53 = v47;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Starting to actively monitor device: %{public}@", &v50, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v48 = objc_loadWeakRetained(v36 + 14);
      v49 = [v48 newDeviceMonitoringTimer];

      [v49 setDelegateQueue:v36[2]];
      [v49 setDelegate:v36];
      [(HMDRemoteDeviceInformation *)v33 setRetryTimer:v49];

      if (v33)
      {
        goto LABEL_31;
      }
    }

    v43 = 0;
    goto LABEL_32;
  }
}

- (void)handleReachabilityChange:(void *)change deviceInformation:(unint64_t)information reason:(char)reason didStartMonitoringDevice:
{
  v47 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v10 = changeCopy;
  if (self)
  {
    if (information < 5)
    {
      if (changeCopy)
      {
        v11 = changeCopy + 9;
LABEL_5:
        *v11 = 1;
      }

LABEL_6:
      v12 = off_2797280C8[information];
      goto LABEL_7;
    }

    if (information != 6)
    {
      if (information > 6)
      {
        v12 = @"unknown";
LABEL_7:
        v13 = v12;
        v14 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
        if (v10)
        {
          v15 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
          if ((*(v10 + 10) & 1) != 0 && information == 5 && (*(v10 + 9) & 1) == 0)
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v39 = 138543874;
              v40 = v19;
              v41 = 2114;
              v42 = v13;
              v43 = 2112;
              Property = objc_getProperty(v10, v20, 16, 1);
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Skipping updating reachability with reason: %{public}@ because initial reachability is set and waiting for non-network reachability changes for device: %@", &v39, 0x20u);

              v14 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
            }

            objc_autoreleasePoolPop(v16);
            v15 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
            if ((reason & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_17;
          }

          if ((reason & 1) != 0 || (v10[1] & 1) != a2)
          {
LABEL_17:
            dispatch_assert_queue_V2(v10[3]);
            v22 = [objc_getProperty(v10 v21];
            supportsIDSActivityMonitorPresence = [v22 supportsIDSActivityMonitorPresence];

            v24 = [[HMDRemoteDeviceReachabilityChangeLogEvent alloc] initWithReason:information reachable:a2 targetSupportsIDSPresence:supportsIDSActivityMonitorPresence];
            v25 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v25 submitLogEvent:v24];

            *(v10 + v15[878]) = a2;
LABEL_18:
            v26 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              v31 = HMFBooleanToString();
              if (v10)
              {
                v32 = objc_getProperty(v10, v30, v14[875], 1);
              }

              else
              {
                v32 = 0;
              }

              v39 = 138544130;
              v40 = v29;
              v41 = 2114;
              v42 = v31;
              v43 = 2114;
              Property = v13;
              v45 = 2112;
              v46 = v32;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating reachability to %{public}@ with reason: %{public}@, for device: %@", &v39, 0x2Au);
            }

            objc_autoreleasePoolPop(v26);
            if (v10)
            {
              v34 = objc_getProperty(v10, v33, v14[875], 1);
            }

            else
            {
              v34 = 0;
            }

            [(HMDRemoteDeviceMonitor *)selfCopy2 notifyDeviceReachabilityChange:a2 forDevice:v34];
          }
        }

        else if (a2 & 1) != 0 || (reason)
        {
          goto LABEL_18;
        }

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (!changeCopy)
    {
      goto LABEL_6;
    }

    v11 = changeCopy + 10;
    if ((changeCopy[10] & 1) == 0 && (changeCopy[9] & 1) == 0)
    {
      goto LABEL_5;
    }

    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Skipping updating reachability with initial reachability reason", &v39, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

LABEL_26:
}

- (void)notifyDeviceReachabilityChange:(void *)change forDevice:
{
  v3 = a2;
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    shortDescription = [changeCopy shortDescription];
    v15 = 138543874;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2114;
    v20 = shortDescription;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Notifying clients of reachability change, %@, for device: %{public}@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = defaultCenter;
  if (v3)
  {
    v14 = @"HMDRemoteDeviceIsReachableNotification";
  }

  else
  {
    v14 = @"HMDRemoteDeviceIsNotReachableNotification";
  }

  [defaultCenter postNotificationName:v14 object:changeCopy];
}

- (void)_handleIncomingMessageForDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDRemoteDeviceMonitor *)self _startMonitoringDevice:deviceCopy withInitialReachability:0 forClient:0];
  v6 = v5;
  if (v5)
  {
    [(HMDRemoteDeviceInformation *)v5 completeConfirmationsWithError:?];
    v7 = v6;
    if (*(v7 + 8))
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = [objc_getProperty(v7 v12];
        v18 = 138543618;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopping actively monitoring device: %{public}@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(v7 + 8) suspend];
      objc_storeStrong(v7 + 8, 0);
    }

    dispatch_assert_queue_V2(*(v7 + 3));
    dispatch_assert_queue_V2(*(v7 + 3));
    *(v7 + 5) &= 0xFFFFFFFFFFFFFFF0;
    [(HMDRemoteDeviceMonitor *)self handleReachabilityChange:v7 deviceInformation:0 reason:0 didStartMonitoringDevice:?];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v17;
      v20 = 2112;
      v21 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring incoming message from device %@ because no clients have registered to monitor it", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (HMDRemoteDeviceInformation)_startMonitoringDevice:(void *)device withInitialReachability:(void *)reachability forClient:
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a2;
  deviceCopy = device;
  reachabilityCopy = reachability;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if (v7)
    {
      v67 = reachabilityCopy;
      v71 = 0;
      accountRegistry = [self accountRegistry];
      v10 = [accountRegistry deviceForDevice:v7 exists:&v71];

      if (([v10 isCurrentDevice] & 1) == 0)
      {
        handles = [v10 handles];
        hmf_isEmpty = [handles hmf_isEmpty];

        if (!hmf_isEmpty)
        {
          os_unfair_lock_lock_with_options();
          v20 = [(HMDRemoteDeviceMonitor *)self _deviceInformationForDevice:v10];
          v22 = v20;
          if (v20)
          {
            objc_setProperty_atomic(v20, v21, v10, 16);
            v18 = v22;
          }

          else
          {
            v18 = [HMDRemoteDeviceInformation alloc];
            v23 = *(self + 16);
            WeakRetained = objc_loadWeakRetained((self + 112));
            v25 = v10;
            HIDWORD(obj) = HIDWORD(v23);
            v65 = v23;
            v26 = WeakRetained;
            v27 = v26;
            v63 = v25;
            if (v18)
            {
              if (!v25 || !v65 || !v26)
              {
                _HMFPreconditionFailure();
                __break(1u);
              }

              *buf = v18;
              *&buf[8] = HMDRemoteDeviceInformation;
              v28 = objc_msgSendSuper2(buf, sel_init);
              v18 = v28;
              if (v28)
              {
                objc_storeStrong(&v28->_device, v10);
                objc_storeStrong(&v18->_workQueue, v23);
                objc_storeWeak(&v18->_factory, v27);
                v18->_reachable = 1;
                array = [MEMORY[0x277CBEB18] array];
                confirmationHandlers = v18->_confirmationHandlers;
                v18->_confirmationHandlers = array;

                weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
                clients = v18->_clients;
                v18->_clients = weakObjectsHashTable;
              }
            }

            v33 = *(self + 120);
            [v33 setObject:v18 forKey:v63];
          }

          os_unfair_lock_unlock((self + 8));
          if (v67)
          {
            os_unfair_lock_lock_with_options();
            if (v18)
            {
              v34 = v18->_clients;
            }

            else
            {
              v34 = 0;
            }

            v35 = v34;
            [(NSHashTable *)v35 addObject:v67];

            os_unfair_lock_unlock((self + 8));
          }

          if (v22)
          {
            if (deviceCopy && ([deviceCopy BOOLValue] & 1) == 0)
            {
              -[HMDRemoteDeviceMonitor handleReachabilityChange:deviceInformation:reason:didStartMonitoringDevice:](self, [deviceCopy BOOLValue], v18, 6uLL, 1);
            }
          }

          else
          {
            v18 = v18;
            v64 = deviceCopy;
            dispatch_assert_queue_V2(*(self + 16));
            if (v18)
            {
              Property = objc_getProperty(v18, v36, 16, 1);
            }

            else
            {
              Property = 0;
            }

            account = [Property account];
            if (account)
            {
              defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
              [defaultCenter addObserver:self selector:sel_handleDeviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:account];
            }

            LODWORD(obj) = [self isReachable];
            if (v64 && ([v64 BOOLValue] & 1) == 0)
            {
              LODWORD(obj) = [v64 BOOLValue];
              v39 = 6;
            }

            else
            {
              v39 = 5;
            }

            v60 = v39;
            context = objc_autoreleasePoolPush();
            selfCopy = self;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v43 = HMFGetLogIdentifier();
              if (v18)
              {
                v44 = objc_getProperty(v18, v42, 16, 1);
              }

              else
              {
                v44 = 0;
              }

              shortDescription = [v44 shortDescription];
              v46 = HMFBooleanToString();
              *buf = 138543874;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription;
              v73 = 2112;
              v74 = v46;
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Marking newly added device: %{public}@ with reachability: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            [(HMDRemoteDeviceMonitor *)selfCopy handleReachabilityChange:v18 deviceInformation:v60 reason:1 didStartMonitoringDevice:?];

            os_unfair_lock_lock_with_options();
            v47 = BYTE1(selfCopy[10]._os_unfair_lock_opaque);
            os_unfair_lock_unlock(selfCopy + 2);
            if (v47 == 1 && !isWatch())
            {
              [(HMDRemoteDeviceInformation *)v18 addState:?];
              v69[0] = MEMORY[0x277D85DD0];
              v69[1] = 3221225472;
              v69[2] = __83__HMDRemoteDeviceMonitor__startMonitoringDevice_withInitialReachability_forClient___block_invoke;
              v69[3] = &unk_2797358C8;
              v69[4] = selfCopy;
              v70 = v10;
              [(HMDRemoteDeviceMonitor *)selfCopy _confirmDevice:v18 timeout:v69 completionHandler:65.0];
            }

            v48 = *&selfCopy[8]._os_unfair_lock_opaque;
            deviceAddress = [v10 deviceAddress];
            [v48 addListener:selfCopy forDeviceAddress:deviceAddress];

            v50 = objc_autoreleasePoolPush();
            v51 = selfCopy;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              v54 = HMFGetLogIdentifier();
              if (v18)
              {
                v55 = objc_getProperty(v18, v53, 16, 1);
              }

              else
              {
                v55 = 0;
              }

              shortDescription2 = [v55 shortDescription];
              *buf = 138543618;
              *&buf[4] = v54;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription2;
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Starting IDS Activity for device: %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v50);
            v58 = v51[10];
            if (v18)
            {
              v59 = objc_getProperty(v18, v57, 16, 1);
            }

            else
            {
              v59 = 0;
            }

            [v58 startObservingPresenceForDevice:v59];
          }

          goto LABEL_9;
        }

        v13 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v17 = HMFBooleanToString();
          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[12] = 2112;
          *&buf[14] = v10;
          v73 = 2112;
          v74 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot monitor a device without any handles: %@, device found in account register: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }

      v18 = 0;
LABEL_9:

      reachabilityCopy = v67;
      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

void __83__HMDRemoteDeviceMonitor__startMonitoringDevice_withInitialReachability_forClient___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) shortDescription];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Determined newly monitored device is unreachable: %{public}@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  v16 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    serviceIdentifier = [serviceCopy serviceIdentifier];
    *buf = 138543874;
    v30 = v20;
    v31 = 2112;
    v32 = v16;
    v33 = 2114;
    v34 = serviceIdentifier;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Received incoming message from: %@, on service: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  accountRegistry = [(HMDRemoteDeviceMonitor *)selfCopy accountRegistry];
  v23 = [accountRegistry deviceForHandle:v16];

  if (v23 && ![v23 isCurrentDevice])
  {
    [(HMDRemoteDeviceMonitor *)selfCopy _handleIncomingMessageForDevice:v23];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v27;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring incoming message from device because it is nil or it is the current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@IDS Service active accounts changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  iCloudAccount = [serviceCopy iCloudAccount];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_iCloudAccount);
  if (iCloudAccount && ([iCloudAccount isEqual:WeakRetained] & 1) == 0)
  {
    context = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v16 = v17 = changedCopy;
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@iCloud account changed, updating delegate", buf, 0xCu);

      changedCopy = v17;
    }

    objc_autoreleasePoolPop(context);
    [WeakRetained removeDelegate:v14];
    [WeakRetained removeRegistrationDelegate:v14];
    [iCloudAccount addDelegate:v14 queue:self->_queue];
    [iCloudAccount addRegistrationDelegate:v14 queue:self->_queue];
    objc_storeWeak(v14 + 9, iCloudAccount);
  }

  [(HMDRemoteDeviceMonitor *)selfCopy _handleGlobalReachabilityChange];
}

- (id)iCloudAccount
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)account:(id)account loginChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_queue);
  iCloudAccount = [(HMDRemoteDeviceMonitor *)&self->super.super.isa iCloudAccount];
  uniqueID = [iCloudAccount uniqueID];
  v10 = [uniqueID isEqual:accountCopy];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@IDS Account login changed", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDRemoteDeviceMonitor *)selfCopy _handleGlobalReachabilityChange];
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Ignoring IDS Account login change on non-iCloud account", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dispatch_assert_queue_V2(self->_queue);
  iCloudAccount = [(HMDRemoteDeviceMonitor *)&self->super.super.isa iCloudAccount];
  v7 = [iCloudAccount isEqual:accountCopy];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@IDS Account active state changed to %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDRemoteDeviceMonitor *)selfCopy _handleGlobalReachabilityChange];
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Ignoring IDS Account active state change on non-iCloud account", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)timerDidFire:(id)fire
{
  v92 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  deviceHealthTimer = self->_deviceHealthTimer;
  if (deviceHealthTimer == fireCopy || self->_initialDeviceHealthTimer == fireCopy)
  {
    v76 = fireCopy;
    [(HMFTimer *)deviceHealthTimer resume];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v88 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Confirming all reachable devices", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = [(HMDRemoteDeviceMonitor *)selfCopy devices];
    v22 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v83;
      v25 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
      do
      {
        v26 = 0;
        do
        {
          if (*v83 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v82 + 1) + 8 * v26);
          if (v27)
          {
            v28 = (v27[v25[881]] & 0xA) == 0;
          }

          else
          {
            v28 = 1;
          }

          isReachable = [(HMDRemoteDeviceMonitor *)selfCopy isReachable];
          if (!v28 || isReachable)
          {
            v37 = v27;
            v38 = v37;
            if (selfCopy && v27)
            {
              v39 = v37[8];

              if (v39)
              {
                v40 = objc_autoreleasePoolPush();
                v41 = selfCopy;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  v43 = HMFGetLogIdentifier();
                  v45 = [objc_getProperty(v38 v44];
                  *buf = 138543618;
                  v88 = v43;
                  v89 = 2114;
                  v90 = v45;
                  _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Trying reachability health check to device: %{public}@", buf, 0x16u);

                  v25 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
                }

                objc_autoreleasePoolPop(v40);
                [(HMDRemoteDeviceMonitor *)v41 _sendPingToDevice:v38];
              }
            }

            else
            {
            }
          }

          else
          {
            v30 = objc_autoreleasePoolPush();
            v31 = selfCopy;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v34 = HMFGetLogIdentifier();
              if (v27)
              {
                Property = objc_getProperty(v27, v33, 16, 1);
              }

              else
              {
                Property = 0;
              }

              shortDescription = [Property shortDescription];
              *buf = 138543618;
              v88 = v34;
              v89 = 2114;
              v90 = shortDescription;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Deferring ping to device while we are unreachable: %{public}@", buf, 0x16u);

              v25 = &OBJC_IVAR___HMDUserCloudShareOwnerAdoptionDailyEvent__percentageOfAcceptedParticipantsWithoutCloudShareID;
            }

            objc_autoreleasePoolPop(v30);
            [(HMDRemoteDeviceInformation *)v27 addState:?];
          }

          ++v26;
        }

        while (v23 != v26);
        v46 = [obj countByEnumeratingWithState:&v82 objects:v91 count:16];
        v23 = v46;
      }

      while (v46);
    }

    fireCopy = v76;
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    devices = [(HMDRemoteDeviceMonitor *)self devices];
    v7 = [devices countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v79;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v79 != v9)
          {
            objc_enumerationMutation(devices);
          }

          v11 = *(*(&v78 + 1) + 8 * v10);
          if (v11)
          {
            v12 = *(v11 + 64);
          }

          else
          {
            v12 = 0;
          }

          if (v12 == fireCopy)
          {
            v47 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v51 = HMFGetLogIdentifier();
              if (v11)
              {
                v52 = objc_getProperty(v11, v50, 16, 1);
              }

              else
              {
                v52 = 0;
              }

              shortDescription2 = [v52 shortDescription];
              *buf = 138543618;
              v88 = v51;
              v89 = 2114;
              v90 = shortDescription2;
              _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEBUG, "%{public}@Timer fired for device: %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            if ([(HMDRemoteDeviceMonitor *)selfCopy2 isReachable])
            {
              if (!v11 || (*(v11 + 40) & 1) == 0)
              {
                v54 = objc_autoreleasePoolPush();
                v55 = selfCopy2;
                v56 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  v58 = HMFGetLogIdentifier();
                  v59 = fireCopy;
                  if (v11)
                  {
                    v60 = objc_getProperty(v11, v57, 16, 1);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  shortDescription3 = [v60 shortDescription];
                  *buf = 138543618;
                  v88 = v58;
                  v89 = 2114;
                  v90 = shortDescription3;
                  _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Timer fired but should confirm is not set for device: %{public}@", buf, 0x16u);

                  fireCopy = v59;
                }

                objc_autoreleasePoolPop(v54);
              }

              v62 = objc_autoreleasePoolPush();
              v63 = selfCopy2;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v66 = HMFGetLogIdentifier();
                if (v11)
                {
                  v67 = objc_getProperty(v11, v65, 16, 1);
                }

                else
                {
                  v67 = 0;
                }

                shortDescription4 = [v67 shortDescription];
                *buf = 138543618;
                v88 = v66;
                v89 = 2114;
                v90 = shortDescription4;
                _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Retrying ping to device: %{public}@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v62);
              [(HMDRemoteDeviceMonitor *)v63 _sendPingToDevice:v11];
            }

            else
            {
              v69 = objc_autoreleasePoolPush();
              v70 = selfCopy2;
              v71 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                v73 = HMFGetLogIdentifier();
                if (v11)
                {
                  v74 = objc_getProperty(v11, v72, 16, 1);
                }

                else
                {
                  v74 = 0;
                }

                shortDescription5 = [v74 shortDescription];
                *buf = 138543618;
                v88 = v73;
                v89 = 2114;
                v90 = shortDescription5;
                _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Deferring ping while unreachable to device: %{public}@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v69);
              [(HMDRemoteDeviceInformation *)v11 addState:?];
            }

            goto LABEL_70;
          }

          ++v10;
        }

        while (v8 != v10);
        v13 = [devices countByEnumeratingWithState:&v78 objects:v86 count:16];
        v8 = v13;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v17;
      v89 = 2112;
      v90 = fireCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unhandled timer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_70:
}

- (id)devices
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 120);
    v3 = NSAllMapTableValues(v2);

    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDRemoteDeviceMonitor_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__HMDRemoteDeviceMonitor_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@NetworkMonitor status changed to disconnected", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleGlobalReachabilityChange];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDRemoteDeviceMonitor_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__HMDRemoteDeviceMonitor_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@NetworkMonitor status changed to connected", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleGlobalReachabilityChange];
}

- (id)newConfirmationHandlerWithTimeout:(double)timeout workQueue:(id)queue handler:(id)handler
{
  v7 = MEMORY[0x277D0F920];
  handlerCopy = handler;
  queueCopy = queue;
  v10 = [[v7 alloc] initWithTimeInterval:0 options:timeout];
  v11 = [[HMDRemoteDeviceConfirmationHandler alloc] initWithTimeoutTimer:v10 workQueue:queueCopy handler:handlerCopy];

  return v11;
}

- (id)newSendMessageOperationWithMessage:(id)message
{
  messageCopy = message;
  v5 = [HMDIDSSendMessageOperation alloc];
  if (self)
  {
    service = self->_service;
  }

  else
  {
    service = 0;
  }

  v7 = [(HMDIDSSendMessageOperation *)v5 initWithMessage:messageCopy service:service];

  return v7;
}

- (id)newDeviceMonitoringTimer
{
  v2 = objc_alloc(MEMORY[0x277D0F7B0]);
  v3 = *&remoteDeviceMonitorRetryTimerMinimumTimeInterval;
  v4 = *&remoteDeviceMonitorRetryTimerMaximumTimeInterval;
  v5 = remoteDeviceMonitorRetryTimerFactor;

  return [v2 initWithMinimumTimeInterval:v5 maximumTimeInterval:0 exponentialFactor:v3 options:v4];
}

- (id)newRepeatingDeviceHealthTimer
{
  v2 = objc_alloc(MEMORY[0x277D0F920]);
  v3 = *&remoteDeviceMonitorHealthTimerTimeInterval;

  return [v2 initWithTimeInterval:4 options:v3];
}

- (id)newInitialDeviceHealthTimer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *&remoteDeviceMonitorHealthTimerTimeInterval;
  v4 = arc4random_uniform(*&remoteDeviceMonitorHealthTimerTimeInterval) + v3 / 2;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Initial health timer interval is %d seconds", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  return [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v4];
}

- (void)handleAccountRemoved:(id)removed
{
  removedCopy = removed;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDRemoteDeviceMonitor_handleAccountRemoved___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(queue, v7);
}

void __47__HMDRemoteDeviceMonitor_handleAccountRemoved___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v5 shortDescription];
      *buf = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping monitoring account: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v5 devices];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(HMDRemoteDeviceMonitor *)*(a1 + 40) _stopMonitoringDevice:?];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)_stopMonitoringDevice:(uint64_t)device
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (device)
  {
    dispatch_assert_queue_V2(*(device + 16));
    if (v3)
    {
      os_unfair_lock_lock_with_options();
      v4 = *(device + 120);
      v5 = [v4 objectForKey:v3];

      if (v5)
      {
        v6 = *(device + 120);
        [v6 removeObjectForKey:v3];

        os_unfair_lock_unlock((device + 8));
        v7 = objc_autoreleasePoolPush();
        deviceCopy = device;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v12 = [objc_getProperty(v5 v11];
          v19 = 138543618;
          v20 = v10;
          v21 = 2114;
          v22 = v12;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Stopping monitoring of device: %{public}@", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v13 = deviceCopy[10];
        [v13 stopObservingPresenceForDevice:{objc_getProperty(v5, v14, 16, 1)}];

        v15 = deviceCopy[4];
        v17 = [objc_getProperty(v5 v16];
        [v15 removeListener:deviceCopy forDeviceAddress:v17];

        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        [(HMDRemoteDeviceInformation *)v5 completeConfirmationsWithError:v18];
      }

      else
      {
        os_unfair_lock_unlock((device + 8));
      }
    }
  }
}

- (void)handleDeviceRemovedFromAccount:(id)account
{
  accountCopy = account;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDRemoteDeviceMonitor_handleDeviceRemovedFromAccount___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(queue, v7);
}

void __57__HMDRemoteDeviceMonitor_handleDeviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [(HMDRemoteDeviceMonitor *)*(a1 + 40) _stopMonitoringDevice:v6];
    v5 = v6;
  }
}

- (void)handleCurrentDeviceUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDRemoteDeviceMonitor_handleCurrentDeviceUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

void __52__HMDRemoteDeviceMonitor_handleCurrentDeviceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 device];

  if (v5)
  {
    [(HMDRemoteDeviceMonitor *)*(a1 + 40) _stopMonitoringDevice:v5];
  }

  [*(a1 + 40) _handleGlobalReachabilityChange];
}

- (void)confirmDevice:(id)device forClient:(id)client timeout:(double)timeout completionHandler:(id)handler
{
  deviceCopy = device;
  clientCopy = client;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (deviceCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__HMDRemoteDeviceMonitor_confirmDevice_forClient_timeout_completionHandler___block_invoke;
    block[3] = &unk_2797309E0;
    block[4] = self;
    v17 = deviceCopy;
    v18 = clientCopy;
    timeoutCopy = timeout;
    v19 = v13;
    dispatch_async(queue, block);
  }

  else if (handlerCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (v13)[2](v13, v15);
  }
}

void __76__HMDRemoteDeviceMonitor_confirmDevice_forClient_timeout_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(HMDRemoteDeviceMonitor *)*(a1 + 32) _startMonitoringDevice:0 withInitialReachability:*(a1 + 48) forClient:?];
  if (v2)
  {
    [(HMDRemoteDeviceMonitor *)*(a1 + 32) _confirmDevice:v2 timeout:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain device information even after monitoring was started for device: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_handleGlobalReachabilityChange
{
  selfCopy = self;
  v58 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (__HMDRemoteDeviceMonitorReachable(selfCopy))
  {
    [(HMDRemoteDeviceMonitor *)selfCopy setReachable:?];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    devices = [(HMDRemoteDeviceMonitor *)selfCopy devices];
    objectEnumerator = [devices objectEnumerator];
    allObjects = [objectEnumerator allObjects];

    v6 = [allObjects countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (!v6)
    {
      goto LABEL_43;
    }

    v9 = v6;
    v10 = *v49;
    *&v8 = 138543618;
    v40 = v8;
    v42 = selfCopy;
    v43 = allObjects;
    v41 = *v49;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v48 + 1) + 8 * v11);
        if (v12)
        {
          if ([objc_getProperty(*(*(&v48 + 1) + 8 * v11) v7])
          {
            goto LABEL_22;
          }

          v13 = *(v12 + 8);
          v14 = *(v12 + 40);
          if ((v14 & 8) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if ([0 isCurrentDevice])
          {
            goto LABEL_22;
          }

          LOBYTE(v14) = 0;
          v13 = 0;
        }

        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          if (v12)
          {
            Property = objc_getProperty(v12, v18, 16, 1);
          }

          else
          {
            Property = 0;
          }

          shortDescription = [Property shortDescription];
          *buf = v40;
          v54 = v19;
          v55 = 2114;
          v56 = shortDescription;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Marking formerly unreachable device as reachable now that we are reachable: %{public}@", buf, 0x16u);

          v10 = v41;
          selfCopy = v42;
        }

        objc_autoreleasePoolPop(v15);
        [(HMDRemoteDeviceMonitor *)v16 handleReachabilityChange:v12 deviceInformation:5uLL reason:0 didStartMonitoringDevice:?];
        allObjects = v43;
LABEL_15:
        if (v13 & 1) == 0 && (v14)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            if (v12)
            {
              v27 = objc_getProperty(v12, v25, 16, 1);
            }

            else
            {
              v27 = 0;
            }

            shortDescription2 = [v27 shortDescription];
            *buf = v40;
            v54 = v26;
            v55 = 2114;
            v56 = shortDescription2;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Confirming device due to network change: %{public}@", buf, 0x16u);

            v10 = v41;
            selfCopy = v42;
          }

          objc_autoreleasePoolPop(v22);
          [(HMDRemoteDeviceMonitor *)v23 _confirmDevice:v12 timeout:0 completionHandler:65.0];
          allObjects = v43;
        }

LABEL_22:
        ++v11;
      }

      while (v9 != v11);
      v29 = [allObjects countByEnumeratingWithState:&v48 objects:v57 count:16];
      v9 = v29;
      if (!v29)
      {
        goto LABEL_43;
      }
    }
  }

  [(HMDRemoteDeviceMonitor *)selfCopy setReachable:?];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  devices2 = [(HMDRemoteDeviceMonitor *)selfCopy devices];
  objectEnumerator2 = [devices2 objectEnumerator];
  allObjects = [objectEnumerator2 allObjects];

  v32 = [allObjects countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v32)
  {
    v34 = v32;
    v35 = *v45;
    do
    {
      v36 = 0;
      do
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(allObjects);
        }

        v37 = *(*(&v44 + 1) + 8 * v36);
        if (v37)
        {
          v38 = objc_getProperty(*(*(&v44 + 1) + 8 * v36), v33, 16, 1);
        }

        else
        {
          v38 = 0;
        }

        if (([v38 isCurrentDevice] & 1) == 0)
        {
          [(HMDRemoteDeviceMonitor *)selfCopy handleReachabilityChange:v37 deviceInformation:5uLL reason:0 didStartMonitoringDevice:?];
        }

        ++v36;
      }

      while (v34 != v36);
      v39 = [allObjects countByEnumeratingWithState:&v44 objects:v52 count:16];
      v34 = v39;
    }

    while (v39);
  }

LABEL_43:
}

- (void)setReachable:(uint64_t)reachable
{
  v16 = *MEMORY[0x277D85DE8];
  if (reachable)
  {
    os_unfair_lock_lock_with_options();
    if (*(reachable + 40) == a2)
    {

      os_unfair_lock_unlock((reachable + 8));
    }

    else
    {
      *(reachable + 40) = a2;
      os_unfair_lock_unlock((reachable + 8));
      WeakRetained = objc_loadWeakRetained((reachable + 88));
      device = [WeakRetained device];

      if (device)
      {
        v6 = objc_autoreleasePoolPush();
        reachableCopy = reachable;
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v10 = v9;
          v11 = "unreachable";
          if (a2)
          {
            v11 = "reachable";
          }

          v12 = 138543618;
          v13 = v9;
          v14 = 2080;
          v15 = v11;
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Marking current device as %s", &v12, 0x16u);
        }

        objc_autoreleasePoolPop(v6);
        [(HMDRemoteDeviceMonitor *)reachableCopy notifyDeviceReachabilityChange:a2 forDevice:device];
        logAndPostNotification(@"HMDRemoteDeviceMonitorReachableNotification", reachableCopy, 0);
      }
    }
  }
}

- (void)stopMonitoringDevice:(id)device forClient:(id)client
{
  deviceCopy = device;
  clientCopy = client;
  if (deviceCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDRemoteDeviceMonitor_stopMonitoringDevice_forClient___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v10 = deviceCopy;
    v11 = clientCopy;
    dispatch_async(queue, block);
  }
}

void __57__HMDRemoteDeviceMonitor_stopMonitoringDevice_forClient___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[15];
  }

  v4 = v3;
  v5 = [v4 objectForKey:*(a1 + 40)];

  if (v5)
  {
    v6 = v5[7];
    [v6 removeObject:*(a1 + 48)];

    v7 = v5[7];
    v8 = [v7 count];

    if (!v8)
    {
      os_unfair_lock_unlock(v2 + 2);
      [(HMDRemoteDeviceMonitor *)*(a1 + 32) _stopMonitoringDevice:?];
      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = v9;
      v12 = HMFGetLogIdentifier();
      v13 = v5[7];
      v14 = [v13 count];
      v16 = objc_getProperty(v5, v15, 16, 1);
      v17 = [v16 shortDescription];
      *buf = 138543874;
      v20 = v12;
      v21 = 2048;
      v22 = v14;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@There are still %lu clients monitoring device: %{public}@", buf, 0x20u);

      v9 = v18;
    }

    objc_autoreleasePoolPop(v9);
  }

  os_unfair_lock_unlock(v2 + 2);
LABEL_10:
}

- (void)startMonitoringDevice:(id)device withInitialReachability:(id)reachability forClient:(id)client
{
  deviceCopy = device;
  reachabilityCopy = reachability;
  clientCopy = client;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HMDRemoteDeviceMonitor_startMonitoringDevice_withInitialReachability_forClient___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = reachabilityCopy;
  v18 = clientCopy;
  v12 = clientCopy;
  v13 = reachabilityCopy;
  v14 = deviceCopy;
  dispatch_async(queue, v15);
}

id __82__HMDRemoteDeviceMonitor_startMonitoringDevice_withInitialReachability_forClient___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] shortDescription];
    v7 = a1[6];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received request to start monitoring device: %{public}@ with initial reachability: %{public}@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [(HMDRemoteDeviceMonitor *)a1[4] _startMonitoringDevice:a1[6] withInitialReachability:a1[7] forClient:?];
}

- (NSArray)unreachableDevices
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  devices = [(HMDRemoteDeviceMonitor *)self devices];
  v5 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v5;
  v8 = *v18;
  do
  {
    v9 = 0;
    do
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(devices);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if (v10)
      {
        if (v10[8])
        {
          goto LABEL_10;
        }

        Property = objc_getProperty(v10, v6, 16, 1);
      }

      else
      {
        Property = 0;
      }

      [v3 addObject:{Property, v17}];
LABEL_10:
      ++v9;
    }

    while (v7 != v9);
    v12 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
    v7 = v12;
  }

  while (v12);
LABEL_14:

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accountManager);
  }

  else
  {
    WeakRetained = 0;
  }

  device = [WeakRetained device];

  if (device && ![(HMDRemoteDeviceMonitor *)self isReachable])
  {
    [v3 addObject:device];
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDRemoteDeviceMonitor_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__HMDRemoteDeviceMonitor_start__block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v47 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  [v7 addDelegate:v6 queue:*(v6 + 16)];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 64);
  }

  else
  {
    v9 = 0;
  }

  [v9 addDelegate:v8 queue:*(v8 + 16)];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 56);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 iCloudAccount];
  [v12 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  [v12 addRegistrationDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  v13 = *(a1 + 32);
  v39 = v12;
  if (v13 && (objc_storeWeak((v13 + 72), v12), (v14 = *(a1 + 32)) != 0))
  {
    v15 = *(v14 + 80);
  }

  else
  {
    v15 = 0;
  }

  [v15 addObserver:? forSubActivity:?];
  v16 = *(a1 + 32);
  if (v16)
  {
    dispatch_assert_queue_V2(*(v16 + 16));
    os_unfair_lock_lock_with_options();
    *(v16 + 41) = 1;
    os_unfair_lock_unlock((v16 + 8));
    v17 = *(a1 + 32);
  }

  else
  {
    v17 = 0;
  }

  [v17 _handleGlobalReachabilityChange];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(HMDRemoteDeviceMonitor *)*(a1 + 32) devices];
  v18 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v41 = *v43;
    do
    {
      v20 = 0;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v42 + 1) + 8 * v20);
        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 32);
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          if (v21)
          {
            Property = objc_getProperty(v21, v25, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v28 = [Property shortDescription];
          *buf = 138543618;
          v47 = v26;
          v48 = 2114;
          v49 = v28;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Initializing IDS Activity for device: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v29 = *(a1 + 32);
        if (v29)
        {
          v29 = v29[10];
        }

        v31 = v29;
        if (v21)
        {
          v32 = objc_getProperty(v21, v30, 16, 1);
        }

        else
        {
          v32 = 0;
        }

        [v31 startObservingPresenceForDevice:v32];

        v34 = [*(a1 + 32) transportReachabilityObserver];
        v35 = *(a1 + 32);
        if (v21)
        {
          v36 = objc_getProperty(v21, v33, 16, 1);
        }

        else
        {
          v36 = 0;
        }

        v37 = [v36 deviceAddress];
        [v34 addListener:v35 forDeviceAddress:v37];

        if (!isWatch())
        {
          [(HMDRemoteDeviceInformation *)v21 addState:?];
          [(HMDRemoteDeviceMonitor *)*(a1 + 32) _confirmDevice:v21 timeout:0 completionHandler:65.0];
        }

        ++v20;
      }

      while (v19 != v20);
      v38 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      v19 = v38;
    }

    while (v38);
  }
}

- (void)setTransportReachabilityObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  transportReachabilityObserver = self->_transportReachabilityObserver;
  self->_transportReachabilityObserver = observerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDModernTransportDeviceReachabilityObserver)transportReachabilityObserver
{
  os_unfair_lock_lock_with_options();
  v3 = self->_transportReachabilityObserver;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDRemoteDeviceMonitor;
  [(HMDRemoteDeviceMonitor *)&v4 dealloc];
}

- (id)dumpState
{
  v16 = *MEMORY[0x277D85DE8];
  devices = [(HMDRemoteDeviceMonitor *)self devices];
  if ([devices count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(devices, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = devices;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) description];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)registry activityObserver:(id)observer queue:(id)queue service:(id)service modernService:(id)modernService accountManager:(id)manager remoteAccountManager:(id)accountManager netMonitor:(id)self0 factory:(id)self1
{
  registryCopy = registry;
  observerCopy = observer;
  queueCopy = queue;
  serviceCopy = service;
  modernServiceCopy = modernService;
  managerCopy = manager;
  obj = accountManager;
  monitorCopy = monitor;
  factoryCopy = factory;
  v40.receiver = self;
  v40.super_class = HMDRemoteDeviceMonitor;
  v20 = [(HMDRemoteDeviceMonitor *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_queue, queue);
    v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v21->_operationQueue;
    v21->_operationQueue = v22;

    [(NSOperationQueue *)v21->_operationQueue setName:@"HMDRemoteDeviceMonitor"];
    [(NSOperationQueue *)v21->_operationQueue setQualityOfService:9];
    [(NSOperationQueue *)v21->_operationQueue setUnderlyingQueue:v21->_queue];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceInformationByDevice = v21->_deviceInformationByDevice;
    v21->_deviceInformationByDevice = strongToStrongObjectsMapTable;

    objc_storeStrong(&v21->_accountRegistry, registry);
    objc_storeStrong(&v21->_activityObserver, observer);
    objc_storeStrong(&v21->_service, service);
    objc_storeStrong(&v21->_modernService, modernService);
    objc_storeWeak(&v21->_accountManager, managerCopy);
    objc_storeWeak(&v21->_remoteAccountManager, obj);
    objc_storeStrong(&v21->_netMonitor, monitor);
    [(HMFNetMonitor *)v21->_netMonitor setDelegate:v21];
    objc_storeWeak(&v21->_factory, factoryCopy);
    newInitialDeviceHealthTimer = [factoryCopy newInitialDeviceHealthTimer];
    initialDeviceHealthTimer = v21->_initialDeviceHealthTimer;
    v21->_initialDeviceHealthTimer = newInitialDeviceHealthTimer;

    [(HMFTimer *)v21->_initialDeviceHealthTimer setDelegateQueue:v21->_queue];
    [(HMFTimer *)v21->_initialDeviceHealthTimer setDelegate:v21];
    [(HMFTimer *)v21->_initialDeviceHealthTimer resume];
    newRepeatingDeviceHealthTimer = [factoryCopy newRepeatingDeviceHealthTimer];
    deviceHealthTimer = v21->_deviceHealthTimer;
    v21->_deviceHealthTimer = newRepeatingDeviceHealthTimer;

    [(HMFTimer *)v21->_deviceHealthTimer setDelegateQueue:v21->_queue];
    [(HMFTimer *)v21->_deviceHealthTimer setDelegate:v21];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_handleCurrentDeviceUpdate_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:managerCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v21 selector:sel_handleAccountRemoved_ name:@"HMDAccountRegistryRemovedAccountNotification" object:managerCopy];

    v21->_reachable = __HMDRemoteDeviceMonitorReachable(v21);
  }

  return v21;
}

- (HMDRemoteDeviceMonitor)initWithAccountRegistry:(id)registry activityObserver:(id)observer accountManager:(id)manager
{
  v54 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  observerCopy = observer;
  managerCopy = manager;
  v11 = +[HMDIDSServiceManager sharedManager];
  service = [v11 service];

  if (!service)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: IDSService is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [[HMDAssertionLogEvent alloc] initWithReason:@"IDSService is nil"];
    v32 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v32 submitLogEvent:v31];
  }

  v13 = +[HMDIDSServiceManager sharedManager];
  v14 = [v13 serviceWithName:@"com.apple.private.alloy.home"];

  if (!v14)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      HMFGetLogIdentifier();
      v37 = v36 = registryCopy;
      *buf = 138543362;
      v53 = v37;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: IDSService for Modern Transport is nil", buf, 0xCu);

      registryCopy = v36;
    }

    objc_autoreleasePoolPop(v33);
    v38 = [[HMDAssertionLogEvent alloc] initWithReason:@"IDSService for Modern Transport is nil"];
    v39 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v39 submitLogEvent:v38];
  }

  if ([service isEqual:v14])
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      HMFGetLogIdentifier();
      v44 = v43 = registryCopy;
      *buf = 138543362;
      v53 = v44;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: IDSService for Modern Transport and legacy transport is the same", buf, 0xCu);

      registryCopy = v43;
    }

    objc_autoreleasePoolPop(v40);
    v45 = [[HMDAssertionLogEvent alloc] initWithReason:@"IDSService for Modern Transport and legacy transport is the same"];
    v46 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v46 submitLogEvent:v45];

    if (service)
    {
      goto LABEL_5;
    }
  }

  else if (service)
  {
LABEL_5:
    v15 = HMDispatchQueueNameString();
    uTF8String = [v15 UTF8String];
    v51 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String, v51);
    +[HMDRemoteAccountManager sharedManager];
    v18 = v14;
    v19 = service;
    v20 = managerCopy;
    v21 = observerCopy;
    v23 = v22 = registryCopy;
    v24 = [objc_alloc(MEMORY[0x277D0F868]) initWithNetAddress:0];
    selfCopy4 = [(HMDRemoteDeviceMonitor *)self initWithAccountRegistry:v22 activityObserver:v21 queue:v17 service:v19 modernService:v18 accountManager:v20 remoteAccountManager:v23 netMonitor:v24 factory:self];

    registryCopy = v22;
    observerCopy = v21;
    managerCopy = v20;
    service = v19;
    v14 = v18;

    v26 = selfCopy4;
    goto LABEL_18;
  }

  v47 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v49;
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@An IDS service is not available", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v47);
  v26 = 0;
LABEL_18:

  return v26;
}

- (HMDRemoteDeviceMonitor)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59_161022 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59_161022, &__block_literal_global_161023);
  }

  v3 = logCategory__hmf_once_v60_161024;

  return v3;
}

uint64_t __37__HMDRemoteDeviceMonitor_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v60_161024;
  logCategory__hmf_once_v60_161024 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)pingMessageForDevice:(id)device timeout:(double)timeout restriction:(unint64_t)restriction
{
  deviceCopy = device;
  v8 = [HMDRemoteDeviceMessageDestination alloc];
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v9 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v11 = [(HMDRemoteDeviceMessageDestination *)v8 initWithTarget:v10 device:deviceCopy];

  version = [deviceCopy version];

  v13 = +[HMDHomeKitVersion version3];
  v14 = [version isAtLeastVersion:v13];

  v15 = [HMDRemoteMessage alloc];
  if (v14)
  {
    v16 = @"kPingInternalRequestKey";
  }

  else
  {
    v16 = @"kElectDeviceForIDSSessionKey";
  }

  v17 = [(HMDRemoteMessage *)v15 initWithName:v16 destination:v11 payload:0 type:0 timeout:0 secure:restriction restriction:timeout];

  return v17;
}

@end