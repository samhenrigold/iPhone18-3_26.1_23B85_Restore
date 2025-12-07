@interface HMDThreadNetworkStatusReporter
+ (id)logCategory;
- (HMDHome)home;
- (HMDThreadNetworkStatusReporter)initWithHome:(id)home;
- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)completion;
- (void)_registerForThreadNetworkEvents;
- (void)_runThreadNetworkStateCapture;
- (void)_runThreadNetworkStatusPeriodicUpdate;
- (void)_scheduleThreadNetworkStatusPeriodicUpdate;
- (void)_unregisterForThreadNetworkEvents;
- (void)registerForThreadNetworkEvents;
- (void)run;
- (void)threadBTCallStateChange:(id)change;
- (void)threadNetworkStateChange:(id)change;
- (void)threadPeripheralDeviceNodeTypeChange:(id)change;
- (void)threadPreferredNetworkUpdated:(id)updated;
- (void)threadWakeOnDeviceConnectionStateChange:(id)change;
- (void)unregisterForThreadNetworkEvents;
@end

@implementation HMDThreadNetworkStatusReporter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_runThreadNetworkStateCapture
{
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  threadRadioClient = [(HMDThreadNetworkStatusReporter *)self threadRadioClient];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HMDThreadNetworkStatusReporter__runThreadNetworkStateCapture__block_invoke;
  v5[3] = &unk_2786732D8;
  objc_copyWeak(&v6, &location);
  [threadRadioClient triggerThreadNetworkStateCaptureWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__HMDThreadNetworkStatusReporter__runThreadNetworkStateCapture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Periodic Thread network health reporting failed with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      v9 = [WeakRetained home];
      v10 = [v9 homeManager];
      v11 = [v10 metricsManager];
      v12 = [v11 threadNetworkObserver];

      [v12 generateLogForPeriodicReport:v5];
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138546178;
        v22 = v20;
        v23 = 2048;
        v24 = [v5 reportDuration];
        v25 = 2048;
        v26 = [v5 numAdvertisedBRs];
        v27 = 2048;
        v28 = [v5 numAppleBRs];
        v29 = 2048;
        v30 = [v5 numThirdPartyBRs];
        v31 = 2048;
        v32 = [v5 numThreadNetworks];
        v33 = 2048;
        v34 = [v5 maxSimuIPPrefixesDetected];
        v35 = 2048;
        v36 = [v5 txTotal];
        v37 = 2048;
        v38 = [v5 txSuccess];
        v39 = 2048;
        v40 = [v5 txDelayAvg];
        v41 = 2048;
        v42 = [v5 rxTotal];
        v43 = 2048;
        v44 = [v5 rxSuccess];
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Periodic Thread network health reporting - duration=%ld BRs:(T=%ld A=%ld 3=%ld) Ntwk:(#=%ld IPpfx=%ld) Tx:(T=%ld S=%ld AvgDelay=%ld) Rx:(T=%ld S=%ld)", buf, 0x7Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[HMDThreadNetworkMetadataStore defaultStore];
  v7 = v6;
  if (v6)
  {
    [v6 checkIfThreadNetworkIsRunningWithCompletion:completionCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No thread network metadata store", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)_unregisterForThreadNetworkEvents
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
    name = [home name];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@_unregisterForThreadNetworkEvents for home %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  threadRadioClient = [(HMDThreadNetworkStatusReporter *)selfCopy threadRadioClient];
  [threadRadioClient unregisterForThreadNetworkEvents:selfCopy];

  home2 = [(HMDThreadNetworkStatusReporter *)selfCopy home];
  v12 = home2;
  if (home2)
  {
    [home2 onThreadNetworkConnectionStateChange:1];
    [v12 onThreadNetworkNodeTypeStateChange:0];
  }
}

- (void)unregisterForThreadNetworkEvents
{
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDThreadNetworkStatusReporter_unregisterForThreadNetworkEvents__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_registerForThreadNetworkEvents
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
    name = [home name];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@_registerForThreadNetworkEvents for home %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  threadRadioClient = [(HMDThreadNetworkStatusReporter *)selfCopy threadRadioClient];
  [threadRadioClient registerForThreadNetworkEvents:selfCopy];
}

- (void)registerForThreadNetworkEvents
{
  objc_initWeak(&location, self);
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDThreadNetworkStatusReporter_registerForThreadNetworkEvents__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__HMDThreadNetworkStatusReporter_registerForThreadNetworkEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerForThreadNetworkEvents];
}

- (void)threadBTCallStateChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v8;
    v23 = 2112;
    v24 = changeCopy;
    v25 = 2048;
    callState = [changeCopy callState];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@threadBTCallStateChange - received event %@, value %ld", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
  if (home)
  {
    callState2 = [changeCopy callState];
    if (callState2)
    {
      if (callState2 == 1)
      {
        v11 = 1;
LABEL_14:
        [home onThreadNetworkCallStateChange:v11];
        goto LABEL_15;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v20;
        v23 = 2112;
        v24 = changeCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unexpected event %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    v11 = 0;
    goto LABEL_14;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    callState3 = [changeCopy callState];
    v21 = 138543874;
    v22 = v15;
    v23 = 2112;
    v24 = changeCopy;
    v25 = 2048;
    callState = callState3;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadBTCallStateChange event %@, value %ld", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
LABEL_15:
}

- (void)threadPreferredNetworkUpdated:(id)updated
{
  v25 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    eventValue = [updatedCopy eventValue];
    v19 = 138543874;
    v20 = v8;
    v21 = 2112;
    v22 = updatedCopy;
    v23 = 2112;
    v24 = eventValue;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@threadPreferredNetworkUpdated - received event %@, value %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
  if (home)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
      eventValue2 = [updatedCopy eventValue];

      if (eventValue2)
      {
        eventValue3 = [updatedCopy eventValue];
        v13 = objc_msgSend_copy(eventValue3);
        [home saveAndSyncWithThreadOperationalDataset:v13];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      eventValue4 = [updatedCopy eventValue];
      v19 = 138543874;
      v20 = v17;
      v21 = 2112;
      v22 = updatedCopy;
      v23 = 2112;
      v24 = eventValue4;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadPreferredNetworkUpdated event %@, value %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)threadPeripheralDeviceNodeTypeChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = changeCopy;
    v19 = 2048;
    peripheralDeviceNodeType = [changeCopy peripheralDeviceNodeType];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@threadPeripheralDeviceNodeTypeChange - received event %@, peripheral nodeType %ld", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
  v10 = home;
  if (home)
  {
    [home onThreadNetworkPeripheralDeviceNodeTypeChange:changeCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadPeripheralDeviceNodeTypeChange event", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)threadWakeOnDeviceConnectionStateChange:(id)change
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    eMACAddressAsString = [changeCopy eMACAddressAsString];
    v16 = 138544130;
    v17 = v8;
    v18 = 2112;
    v19 = changeCopy;
    v20 = 2112;
    v21 = eMACAddressAsString;
    v22 = 2048;
    connectionState = [changeCopy connectionState];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@threadWakeOnDeviceConnectionStateChange - received event %@, eMACAddress %@, connectionState %ld", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
  v11 = home;
  if (home)
  {
    [home onThreadNetworkWakeOnDeviceConnectionStateChange:changeCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadWakeOnDeviceConnectionStateChange event", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)threadNetworkStateChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138544130;
    v21 = v8;
    v22 = 2112;
    v23 = changeCopy;
    v24 = 2048;
    eventType = [changeCopy eventType];
    v26 = 2048;
    eventValue = [changeCopy eventValue];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@threadNetworkStateChange - received event %@, type %ld, value %ld", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDThreadNetworkStatusReporter *)selfCopy home];
  if (!home)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      eventType2 = [changeCopy eventType];
      eventValue2 = [changeCopy eventValue];
      v20 = 138544130;
      v21 = v14;
      v22 = 2112;
      v23 = changeCopy;
      v24 = 2048;
      eventType = eventType2;
      v26 = 2048;
      eventValue = eventValue2;
      v17 = "%{public}@No linked home, dropping threadNetworkStateChange event %@, type %ld, value %ld";
      v18 = v13;
      v19 = 42;
LABEL_12:
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, v17, &v20, v19);
    }

LABEL_13:

    objc_autoreleasePoolPop(v11);
    goto LABEL_14;
  }

  eventType3 = [changeCopy eventType];
  if (eventType3 == 1)
  {
    [home onThreadNetworkNodeTypeStateChange:{objc_msgSend(changeCopy, "eventValue")}];
    goto LABEL_14;
  }

  if (eventType3)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = changeCopy;
      v17 = "%{public}@Unexpected event %@";
      v18 = v13;
      v19 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  [home onThreadNetworkConnectionStateChange:{objc_msgSend(changeCopy, "eventValue")}];
LABEL_14:
}

- (void)_runThreadNetworkStatusPeriodicUpdate
{
  location[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[HMDThreadNetworkMetadataStore defaultStore];
  if (v4)
  {
    home = [(HMDThreadNetworkStatusReporter *)self home];
    if (home && (objc_opt_respondsToSelector() & 1) != 0)
    {
      threadOperationalDataset = [home threadOperationalDataset];
    }

    else
    {
      threadOperationalDataset = 0;
    }

    objc_initWeak(location, self);
    doesHomeContainResident = [home doesHomeContainResident];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke;
    v21[3] = &unk_278673288;
    objc_copyWeak(&v23, location);
    v8 = home;
    v22 = v8;
    [v4 retrieveMetadata:threadOperationalDataset homeHasResident:doesHomeContainResident completion:v21];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_2;
    v18[3] = &unk_2786732B0;
    objc_copyWeak(&v20, location);
    v9 = v8;
    v19 = v9;
    [(HMDThreadNetworkStatusReporter *)self _checkIfThreadNetworkIsRunningWithCompletion:v18];
    [(HMDThreadNetworkStatusReporter *)self _runThreadNetworkStateCapture];
    v10 = dispatch_time(0, 60000000000 * [(HMDThreadNetworkStatusReporter *)self threadNetworkPeriodicCheckFrequencyInMins]);
    workQueue2 = [(HMDThreadNetworkStatusReporter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_3;
    block[3] = &unk_278686B80;
    objc_copyWeak(&v17, location);
    dispatch_after(v10, workQueue2, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No thread network metadata store", location, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if (v9)
      {
        [v4 setThreadPreferredNetworkExists:1];
        if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
        {
          v5 = [v9 operationalDataset];

          if (v5)
          {
            v6 = *(a1 + 32);
            v7 = [v9 operationalDataset];
            v8 = objc_msgSend_copy(v7);
            [v6 saveAndSyncWithThreadOperationalDataset:v8];
          }
        }
      }

      else
      {
        [v4 setThreadPreferredNetworkExists:0];
      }
    }
  }
}

void __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!a3)
  {
    if (WeakRetained)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = v7;
        [v8 setThreadNetworkIsUp:a2];
        v7 = v9;
      }
    }
  }
}

void __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runThreadNetworkStatusPeriodicUpdate];
}

- (void)_scheduleThreadNetworkStatusPeriodicUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDThreadNetworkStatusReporter *)self threadNetworkPeriodicCheckFrequencyInMins])
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v5 = [mEMORY[0x277D0F8D0] preferenceForKey:@"ThreadNetworkHealthReportingPeriodInMinutes"];
    numberValue = [v5 numberValue];

    if ([numberValue intValue] < 1)
    {
      unsignedIntValue = 240;
    }

    else
    {
      unsignedIntValue = [numberValue unsignedIntValue];
    }

    [(HMDThreadNetworkStatusReporter *)self setThreadNetworkPeriodicCheckFrequencyInMins:unsignedIntValue];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2048;
      threadNetworkPeriodicCheckFrequencyInMins = [(HMDThreadNetworkStatusReporter *)selfCopy threadNetworkPeriodicCheckFrequencyInMins];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling start of periodic Thread network health reporting (for every %lu minutes)", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDThreadNetworkStatusReporter *)selfCopy _runThreadNetworkStatusPeriodicUpdate];
  }
}

- (void)run
{
  if (![(HMDThreadNetworkStatusReporter *)self threadNetworkPeriodicCheckFrequencyInMins])
  {
    objc_initWeak(&location, self);
    workQueue = [(HMDThreadNetworkStatusReporter *)self workQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__HMDThreadNetworkStatusReporter_run__block_invoke;
    v4[3] = &unk_278686B80;
    objc_copyWeak(&v5, &location);
    dispatch_async(workQueue, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __37__HMDThreadNetworkStatusReporter_run__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleThreadNetworkStatusPeriodicUpdate];
    WeakRetained = v2;
  }
}

- (HMDThreadNetworkStatusReporter)initWithHome:(id)home
{
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HMDThreadNetworkStatusReporter;
  v5 = [(HMDThreadNetworkStatusReporter *)&v14 init];
  if (v5)
  {
    v6 = HMFDispatchQueueName();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_get_global_queue(25, 0);
    v9 = dispatch_queue_create_with_target_V2(v6, v7, v8);
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    objc_storeWeak(&v5->_home, homeCopy);
    v5->_threadNetworkPeriodicCheckFrequencyInMins = 0;
    v11 = objc_opt_new();
    threadRadioClient = v5->_threadRadioClient;
    v5->_threadRadioClient = v11;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_46330 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_46330, &__block_literal_global_46331);
  }

  v3 = logCategory__hmf_once_v1_46332;

  return v3;
}

void __45__HMDThreadNetworkStatusReporter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_46332;
  logCategory__hmf_once_v1_46332 = v0;
}

@end