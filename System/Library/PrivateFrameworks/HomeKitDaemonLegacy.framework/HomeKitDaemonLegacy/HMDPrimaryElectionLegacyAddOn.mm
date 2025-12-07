@interface HMDPrimaryElectionLegacyAddOn
+ (id)logCategory;
+ (int64_t)compareElectionVersions:(id)versions otherVersion:(id)version;
- (BOOL)isAtHome;
- (HMDPrimaryElectionLegacyAddOn)initWithContext:(id)context;
- (HMDPrimaryResidentElectionAddOnDelegate)delegate;
- (HMDResidentDeviceManagerContext)context;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)_electionParameters;
- (id)_electionParameters:(void *)parameters;
- (id)computePreferredElector:(unint64_t *)elector;
- (id)logIdentifier;
- (uint64_t)compareCapabilities:(void *)capabilities withCapabilities:;
- (void)__handleConfirmationRequest:(id)request;
- (void)_confirmResidentDevice:(void *)device electionParameters:(void *)parameters againstDevices:(void *)devices completionBlock:;
- (void)_handleConfirmResidentDevice:(id)device;
- (void)_handleResidentElectionParameters:(id)parameters;
- (void)_startMonitoringResident;
- (void)_stopMonitoringResident:(void *)resident;
- (void)_updateDischargingTimer:(void *)timer;
- (void)addDataSource:(id)source;
- (void)atHomeLevelChanged:(int64_t)changed;
- (void)confirmAsResident;
- (void)confirmElector:(void *)elector completionHandler:;
- (void)confirmOnAvailability;
- (void)confirmPrimaryResident;
- (void)confirmWithCompletionHandler:(id)handler;
- (void)handleBatteryLevelChange:(id)change;
- (void)handleBatteryStateChange:(id)change;
- (void)performElectionWithReason:(unint64_t)reason;
- (void)registerForMessages;
- (void)requestConfirmationForElector:(void *)elector completionHandler:;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDPrimaryElectionLegacyAddOn

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (HMDPrimaryResidentElectionAddOnDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  queue = [context queue];

  return queue;
}

- (NSUUID)messageTargetUUID
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  home = [context home];
  uuid = [home uuid];

  return uuid;
}

- (void)addDataSource:(id)source
{
  sourceCopy = source;
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    [(NSHashTable *)self->_devicePreferenceDataSources addObject:sourceCopy];
  }
}

- (void)atHomeLevelChanged:(int64_t)changed
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  if (context)
  {
    v11 = context;
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    if ([v11 isCurrentDeviceAvailableResident])
    {
      mEMORY[0x277D0F8C8] = [MEMORY[0x277D0F8C8] sharedManager];
      batteryState = [mEMORY[0x277D0F8C8] batteryState];

      if (batteryState == 1)
      {
        [(HMDPrimaryElectionLegacyAddOn *)self _updateDischargingTimer:changed];
      }
    }

    context = v11;
    if (changed == 1)
    {
      primaryResidentDevice = [v11 primaryResidentDevice];
      isCurrentDevice = [primaryResidentDevice isCurrentDevice];

      context = v11;
      if (isCurrentDevice)
      {
        [(HMDPrimaryElectionLegacyAddOn *)self performElectionWithReason:6];
        context = v11;
      }
    }
  }
}

- (void)_updateDischargingTimer:(void *)timer
{
  v27 = *MEMORY[0x277D85DE8];
  if (timer)
  {
    context = [timer context];
    v5 = context;
    if (!context)
    {
LABEL_15:

      return;
    }

    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    if (isAppleTV())
    {
      v7 = objc_autoreleasePoolPush();
      timerCopy2 = timer;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v10;
        v11 = "%{public}@We should only be pinging the resident on transient resident capable devices which are enabled";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v11, &v25, 0xCu);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (([v5 isResidentSupported] & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      timerCopy2 = timer;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v10;
        v11 = "%{public}@We shouldn't ping if resident is not supported.";
        goto LABEL_12;
      }

LABEL_13:

LABEL_14:
      objc_autoreleasePoolPop(v7);
      goto LABEL_15;
    }

    if (a2 == 1)
    {
      v7 = objc_autoreleasePoolPush();
      timerCopy3 = timer;
      v13 = HMFGetOSLogHandle();
      v14 = 1800.0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v15;
        v16 = "%{public}@Updating monitor timer since we are not at home and discharging";
LABEL_20:
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v16, &v25, 0xCu);
      }
    }

    else
    {
      atHomeLevel = [v5 atHomeLevel];
      v7 = objc_autoreleasePoolPush();
      timerCopy4 = timer;
      v19 = HMFGetOSLogHandle();
      v13 = v19;
      if (atHomeLevel != 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v24 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v24;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Battery state change does not require resetting the monitor timer.", &v25, 0xCu);
        }

        goto LABEL_14;
      }

      v14 = 600.0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v15;
        v16 = "%{public}@Updating monitor timer since we are at home and discharging";
        goto LABEL_20;
      }
    }

    objc_autoreleasePoolPop(v7);
    v20 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:13 options:v14];
    [timer setResidentMonitorTimer:v20];

    residentMonitorTimer = [timer residentMonitorTimer];
    [residentMonitorTimer setDelegate:timer];

    queue2 = [v5 queue];
    residentMonitorTimer2 = [timer residentMonitorTimer];
    [residentMonitorTimer2 setDelegateQueue:queue2];

    [(HMDPrimaryElectionLegacyAddOn *)timer _startMonitoringResident];
    goto LABEL_15;
  }
}

- (void)_startMonitoringResident
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    context = [self context];
    v3 = context;
    if (!context)
    {
LABEL_14:

      return;
    }

    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    primaryResidentDevice = [v3 primaryResidentDevice];
    v6 = primaryResidentDevice;
    if (primaryResidentDevice)
    {
      device = [primaryResidentDevice device];
      if ([device isCurrentDevice] & 1) == 0 && objc_msgSend(v3, "isResidentSupported") && (objc_msgSend(v3, "isResidentEnabled"))
      {
        isOwnerUser = [v3 isOwnerUser];

        if (isOwnerUser)
        {
          v9 = objc_autoreleasePoolPush();
          selfCopy = self;
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = HMFGetLogIdentifier();
            v14 = 138543618;
            v15 = v12;
            v16 = 2112;
            v17 = v6;
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Start monitoring resident, %@", &v14, 0x16u);
          }

          objc_autoreleasePoolPop(v9);
          residentMonitorTimer = [selfCopy residentMonitorTimer];
          [residentMonitorTimer resume];

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    [(HMDPrimaryElectionLegacyAddOn *)self _stopMonitoringResident:v6];
LABEL_13:

    goto LABEL_14;
  }
}

- (void)_stopMonitoringResident:(void *)resident
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (resident)
  {
    context = [resident context];
    v5 = context;
    if (context)
    {
      queue = [context queue];
      dispatch_assert_queue_V2(queue);

      v7 = objc_autoreleasePoolPush();
      residentCopy = resident;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v10;
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping monitoring resident, %@", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      residentMonitorTimer = [residentCopy residentMonitorTimer];
      [residentMonitorTimer suspend];
    }
  }
}

- (void)_handleConfirmResidentDevice:(id)device
{
  v43 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    currentResidentDevice = [v6 currentResidentDevice];
    isResidentSupported = [v6 isResidentSupported];
    isOwnerUser = [v6 isOwnerUser];
    if (isResidentSupported && ([currentResidentDevice isEnabled] & isOwnerUser & 1) != 0)
    {
      remoteSourceDevice = [deviceCopy remoteSourceDevice];
      v12 = [v6 residentDeviceForDevice:remoteSourceDevice];
      v33 = [deviceCopy dictionaryForKey:@"kResidentElectionParametersKey"];
      primaryResidentDevice = [v6 primaryResidentDevice];
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      v17 = v16;
      if (primaryResidentDevice)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v18;
          v37 = 2112;
          v38 = v12;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Confirming current resident on behalf of %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v34 = primaryResidentDevice;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        v20 = v33;
        [(HMDPrimaryElectionLegacyAddOn *)selfCopy _confirmResidentDevice:v12 electionParameters:v33 againstDevices:v19 completionBlock:0];

        [deviceCopy respondWithPayload:0];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v29;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No primary resident for confirmation.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        responseHandler = [deviceCopy responseHandler];

        v20 = v33;
        if (responseHandler)
        {
          responseHandler2 = [deviceCopy responseHandler];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          (responseHandler2)[2](responseHandler2, v32, 0);
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = HMFBooleanToString();
        [currentResidentDevice isEnabled];
        v26 = HMFBooleanToString();
        v27 = HMFBooleanToString();
        *buf = 138544130;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Current device is incapable of election and confirmation - Resident Supported: %@, Resident Enabled: %@, Owned Home: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      responseHandler3 = [deviceCopy responseHandler];

      if (!responseHandler3)
      {
        goto LABEL_18;
      }

      remoteSourceDevice = [deviceCopy responseHandler];
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (remoteSourceDevice)[2](remoteSourceDevice, v12, 0);
    }

LABEL_18:
  }
}

- (void)_confirmResidentDevice:(void *)device electionParameters:(void *)parameters againstDevices:(void *)devices completionBlock:
{
  v127 = *MEMORY[0x277D85DE8];
  v64 = a2;
  deviceCopy = device;
  parametersCopy = parameters;
  devicesCopy = devices;
  if (self)
  {
    val = self;
    context = [self context];
    v71 = context;
    if (!context)
    {
LABEL_48:

      goto LABEL_49;
    }

    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    home = [v71 home];
    if (home)
    {
      if (v64)
      {
        accessories = [home accessories];
        v12 = objc_msgSend_copy(accessories);

        if (v12)
        {
          [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        }

        else
        {
          [MEMORY[0x277CBEB18] array];
        }
        v80 = ;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        obj = v12;
        v21 = [obj countByEnumeratingWithState:&v106 objects:v126 count:16];
        if (v21)
        {
          v22 = *v107;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v107 != v22)
              {
                objc_enumerationMutation(obj);
              }

              uuid = [*(*(&v106 + 1) + 8 * i) uuid];
              uUIDString = [uuid UUIDString];
              [v80 addObject:uUIDString];
            }

            v21 = [obj countByEnumeratingWithState:&v106 objects:v126 count:16];
          }

          while (v21);
        }

        v124[0] = *MEMORY[0x277CD0640];
        uuid2 = [home uuid];
        uUIDString2 = [uuid2 UUIDString];
        v125[0] = uUIDString2;
        v124[1] = *MEMORY[0x277CCE7A8];
        v28 = objc_msgSend_copy(v80);
        v125[1] = v28;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];

        *&buf = 0;
        *(&buf + 1) = &buf;
        v120 = 0x3032000000;
        v121 = __Block_byref_object_copy__118213;
        v122 = __Block_byref_object_dispose__118214;
        v74 = v64;
        v123 = v74;
        v104[0] = 0;
        v104[1] = v104;
        v104[2] = 0x3032000000;
        v104[3] = __Block_byref_object_copy__118213;
        v104[4] = __Block_byref_object_dispose__118214;
        v105 = deviceCopy;
        primaryResidentDevice = [v71 primaryResidentDevice];
        if (primaryResidentDevice)
        {
          v79 = objc_alloc_init(HMDLegacyPrimaryElectionConfirmationLogEvent);
          -[HMDLegacyPrimaryElectionConfirmationLogEvent setAvailableResidentCount:](v79, "setAvailableResidentCount:", [parametersCopy count]);
          group = dispatch_group_create();
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v70 = parametersCopy;
          v29 = [v70 countByEnumeratingWithState:&v100 objects:v118 count:16];
          if (v29)
          {
            v73 = *v101;
            do
            {
              v76 = v29;
              for (j = 0; j != v76; ++j)
              {
                if (*v101 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v31 = *(*(&v100 + 1) + 8 * j);
                if ([v74 isEqual:v31])
                {
                  [(HMDLegacyPrimaryElectionConfirmationLogEvent *)v79 setAvailableResidentCount:[(HMDLegacyPrimaryElectionConfirmationLogEvent *)v79 availableResidentCount]- 1];
                }

                else
                {
                  v99 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Confirm against other resident"];
                  dispatch_group_enter(&group->super.super);
                  objc_initWeak(&location, val);
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke;
                  aBlock[3] = &unk_27972BBD0;
                  objc_copyWeak(&v97, &location);
                  v32 = v71;
                  v89 = v32;
                  v90 = v99;
                  v91 = v31;
                  v92 = v79;
                  p_buf = &buf;
                  v96 = v104;
                  v93 = primaryResidentDevice;
                  v94 = group;
                  v78 = _Block_copy(aBlock);
                  device = [v31 device];
                  isCurrentDevice = [device isCurrentDevice];

                  if (isCurrentDevice)
                  {
                    v35 = objc_autoreleasePoolPush();
                    v36 = val;
                    v37 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      v38 = HMFGetLogIdentifier();
                      identifier = [v99 identifier];
                      shortDescription = [identifier shortDescription];
                      *v110 = 138543618;
                      v111 = v38;
                      v112 = 2114;
                      v113 = shortDescription;
                      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Confirming against current device", v110, 0x16u);
                    }

                    objc_autoreleasePoolPop(v35);
                    v41 = [(HMDPrimaryElectionLegacyAddOn *)v36 _electionParameters:v80];
                    v78[2](v78, 0, v41);
                  }

                  else
                  {
                    v42 = [HMDRemoteDeviceMessageDestination alloc];
                    messageTargetUUID = [val messageTargetUUID];
                    device2 = [v31 device];
                    v41 = [(HMDRemoteDeviceMessageDestination *)v42 initWithTarget:messageTargetUUID device:device2];

                    v45 = [HMDRemoteMessage secureMessageWithName:@"kResidentElectionParametersInternalRequestKey" destination:v41 messagePayload:v67];
                    [v45 setResponseHandler:v78];
                    v46 = objc_autoreleasePoolPush();
                    v47 = val;
                    v48 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                    {
                      v66 = v46;
                      v68 = HMFGetLogIdentifier();
                      identifier2 = [v99 identifier];
                      shortDescription2 = [identifier2 shortDescription];
                      shortDescription3 = [v31 shortDescription];
                      shortDescription4 = [v45 shortDescription];
                      *v110 = 138544130;
                      v111 = v68;
                      v112 = 2114;
                      v113 = shortDescription2;
                      v114 = 2112;
                      v115 = shortDescription3;
                      v116 = 2112;
                      v117 = shortDescription4;
                      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Confirming against resident capable device %@ with message: %@", v110, 0x2Au);

                      v46 = v66;
                    }

                    objc_autoreleasePoolPop(v46);
                    messageDispatcher = [v32 messageDispatcher];
                    [messageDispatcher sendMessage:v45];
                  }

                  objc_destroyWeak(&v97);
                  objc_destroyWeak(&location);
                  __HMFActivityScopeLeave();
                }
              }

              v29 = [v70 countByEnumeratingWithState:&v100 objects:v118 count:16];
            }

            while (v29);
          }

          queue2 = [v71 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_50;
          block[3] = &unk_2797346B8;
          v82 = primaryResidentDevice;
          v83 = v71;
          v84 = val;
          v86 = devicesCopy;
          v87 = &buf;
          v85 = v79;
          v55 = v79;
          dispatch_group_notify(&group->super.super, queue2, block);
        }

        else
        {
          v56 = objc_autoreleasePoolPush();
          v57 = val;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            v59 = HMFGetLogIdentifier();
            *v110 = 138543362;
            v111 = v59;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Current resident cannot be determined", v110, 0xCu);
          }

          objc_autoreleasePoolPop(v56);
          group = [[HMDAssertionLogEvent alloc] initWithReason:@"Current resident cannot be determined"];
          v60 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v60 submitLogEvent:group];

          if (devicesCopy)
          {
            devicesCopy[2]();
          }
        }

        _Block_object_dispose(v104, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_47;
      }

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cancelling confirmation: device to confirm is not specified", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      if (!devicesCopy)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Returning early from confirming as resident since home does not exist", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      if (!devicesCopy)
      {
        goto LABEL_47;
      }
    }

    devicesCopy[2]();
LABEL_47:

    context = v71;
    goto LABEL_48;
  }

LABEL_49:
}

void __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained context];

    if (v9)
    {
      v10 = [*(a1 + 32) queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_2;
      v14[3] = &unk_27972BBA8;
      objc_copyWeak(&v23, (a1 + 96));
      v15 = v5;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v16 = v11;
      v17 = v12;
      v18 = v13;
      v22 = *(a1 + 80);
      v19 = v6;
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      dispatch_async(v10, v14);

      objc_destroyWeak(&v23);
    }
  }
}

- (id)_electionParameters:(void *)parameters
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (parameters)
  {
    context = [parameters context];
    if (context)
    {
      parametersCopy = parameters;
      [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
      v30 = v29 = v4;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v4;
      v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v6)
      {
        currentResidentDevice = v6;
        v7 = *v33;
        do
        {
          for (i = 0; i != currentResidentDevice; i = i + 1)
          {
            if (*v33 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v32 + 1) + 8 * i);
            home = [context home];
            v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
            v12 = [home accessoryWithUUID:v11];

            v13 = v12;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;

            v16 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v15 | v18)
            {
              if ([v16 isReachable])
              {
                v19 = &unk_286628D80;
              }

              else
              {
                v19 = &unk_286628D98;
              }

              [v30 setObject:v19 forKey:v9];
            }
          }

          currentResidentDevice = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (currentResidentDevice);
      }

      v20 = *MEMORY[0x277CCE7A8];
      v37[0] = v30;
      v36[0] = v20;
      v36[1] = @"kEnabledKey";
      v21 = MEMORY[0x277CCABB0];
      isResidentSupported = [context isResidentSupported];
      if (isResidentSupported)
      {
        currentResidentDevice = [context currentResidentDevice];
        isEnabled = [currentResidentDevice isEnabled];
      }

      else
      {
        isEnabled = 0;
      }

      v4 = v29;
      v25 = [v21 numberWithInt:isEnabled];
      v37[1] = v25;
      v36[2] = @"kAtHomeStateKey";
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(parametersCopy, "isAtHome")}];
      v37[2] = v26;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

      if (isResidentSupported)
      {
      }
    }

    else
    {
      v24 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_50(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) primaryResidentDevice];
  v3 = HMFEqualObjects();

  if (v3)
  {
    if ((HMFEqualObjects() & 1) == 0)
    {
      [*(a1 + 56) setChangedPrimary:1];
    }

    v4 = [*(a1 + 48) delegate];
    [v4 primaryElectionAddOn:*(a1 + 48) didElectPrimaryResident:*(*(*(a1 + 72) + 8) + 40) confirmed:1 electionLogEvent:*(a1 + 56)];

    result = *(a1 + 64);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) primaryResidentDevice];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Cancelling confirmation: resident device has changed from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    result = *(a1 + 64);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_2(uint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (!*(a1 + 32))
  {
    [*(a1 + 56) setResidentsRespondedCount:{objc_msgSend(*(a1 + 56), "residentsRespondedCount") + 1}];
    v90 = 0;
    v11 = *(*(*(a1 + 96) + 8) + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v89 = *(*(*(a1 + 88) + 8) + 40);
    v14 = v11;
    v15 = v12;
    v88 = v13;
    if (WeakRetained)
    {
      v16 = [WeakRetained context];
      if (v16)
      {
        v86 = v16;
        v85 = v14;
        v17 = [[HMDResidentDeviceElectionParameters alloc] initWithResident:v89 dictionaryRepresentation:v14];
        v18 = [[HMDResidentDeviceElectionParameters alloc] initWithResident:v15 dictionaryRepresentation:v88];
        v90 = 1;
        v87 = v17;
        v19 = [(HMDResidentDeviceElectionParameters *)v17 isEnabled];
        v20 = [(HMDResidentDeviceElectionParameters *)v18 isEnabled];
        v21 = objc_autoreleasePoolPush();
        v22 = WeakRetained;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v24 = v18;
          v26 = v25 = v22;
          *buf = 138543874;
          v92 = v26;
          v93 = 2112;
          v94 = v19;
          v95 = 2112;
          v96 = v20;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Comparing enabled status: %@ -> %@", buf, 0x20u);

          v22 = v25;
          v18 = v24;
        }

        objc_autoreleasePoolPop(v21);
        if (!(v19 | v20) || (!v19 ? (v27 = v20, v28 = 0) : (v27 = v19, v28 = v20), (v29 = [v27 compare:v28]) == 0))
        {

          v90 = 2;
          v31 = [v89 device];
          v32 = [v31 capabilities];

          v33 = [v15 device];
          v34 = [v33 capabilities];

          v35 = objc_autoreleasePoolPush();
          v84 = v22;
          v36 = v22;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v38 = v18;
            v40 = v39 = v15;
            *buf = 138543874;
            v92 = v40;
            v93 = 2112;
            v94 = v32;
            v95 = 2112;
            v96 = v34;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Comparing capabilities status: %@ -> %@", buf, 0x20u);

            v15 = v39;
            v18 = v38;
          }

          objc_autoreleasePoolPop(v35);
          v29 = [(HMDPrimaryElectionLegacyAddOn *)v36 compareCapabilities:v32 withCapabilities:v34];

          if (v29)
          {
            v30 = v87;
            v22 = v84;
            goto LABEL_25;
          }

          v41 = objc_autoreleasePoolPush();
          v42 = v36;
          v43 = HMFGetOSLogHandle();
          v30 = v87;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v44 = v18;
            v46 = v45 = v15;
            *buf = 138543874;
            v92 = v46;
            v93 = 2112;
            v94 = v87;
            v95 = 2112;
            v96 = v44;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Comparing parameters: %@ -> %@", buf, 0x20u);

            v15 = v45;
            v18 = v44;
          }

          objc_autoreleasePoolPop(v41);
          v47 = [(HMDResidentDeviceElectionParameters *)v87 compare:v18 outCriteria:&v90];
          v22 = v84;
          if (v47)
          {
            v29 = v47;
            goto LABEL_25;
          }

          v90 = 8;
          [v89 device];
          v61 = v60 = v15;
          v19 = [v61 version];

          v83 = v60;
          v62 = [v60 device];
          v20 = [v62 version];

          v63 = objc_autoreleasePoolPush();
          v64 = v42;
          v65 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v66 = HMFGetLogIdentifier();
            *buf = 138543874;
            v92 = v66;
            v93 = 2112;
            v94 = v19;
            v95 = 2112;
            v96 = v20;
            _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_DEBUG, "%{public}@Comparing election versions: %@ -> %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v63);
          v67 = [HMDPrimaryElectionLegacyAddOn compareElectionVersions:v19 otherVersion:v20];
          if (v67)
          {
            v29 = v67;
            v15 = v83;
            v22 = v84;
          }

          else
          {
            v90 = 10;
            v68 = [v86 primaryResidentDevice];
            v69 = objc_autoreleasePoolPush();
            v70 = v64;
            v71 = HMFGetOSLogHandle();
            v15 = v83;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v72 = v82 = v68;
              [v82 shortDescription];
              v73 = v80 = v70;
              [v89 shortDescription];
              v74 = v81 = v69;
              v75 = [v83 shortDescription];
              *buf = 138544130;
              v92 = v72;
              v93 = 2112;
              v94 = v73;
              v95 = 2112;
              v96 = v74;
              v97 = 2112;
              v98 = v75;
              _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_DEBUG, "%{public}@Comparing current primary %@: %@ -> %@", buf, 0x2Au);

              v15 = v83;
              v69 = v81;

              v70 = v80;
              v68 = v82;
            }

            objc_autoreleasePoolPop(v69);
            v22 = v84;
            if ([v68 isEqual:v89])
            {
              v29 = 1;
            }

            else if ([v68 isEqual:v15])
            {
              v29 = -1;
            }

            else
            {
              v76 = objc_autoreleasePoolPush();
              v77 = v70;
              v78 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
              {
                v79 = HMFGetLogIdentifier();
                *buf = 138543362;
                v92 = v79;
                _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_DEBUG, "%{public}@Comparing, equivalent", buf, 0xCu);

                v15 = v83;
              }

              objc_autoreleasePoolPop(v76);
              v29 = 0;
              v90 = 0;
              v22 = v84;
            }
          }
        }

        v30 = v87;
LABEL_25:

        if (v29 != -1)
        {
LABEL_30:
          if (v90 > 0x11)
          {
            v58 = @"unknown reason";
          }

          else
          {
            v58 = off_279728B88[v90];
          }

          v59 = v58;
          [*(a1 + 56) setCriteria:v59];

          goto LABEL_34;
        }

        v48 = objc_autoreleasePoolPush();
        v49 = v22;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          v52 = [*(a1 + 40) identifier];
          v53 = [v52 shortDescription];
          v54 = *(a1 + 48);
          v55 = *(a1 + 72);
          *buf = 138544130;
          v92 = v51;
          v93 = 2114;
          v94 = v53;
          v95 = 2112;
          v96 = v54;
          v97 = 2112;
          v98 = v55;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Preferring device: %@ over current primary resident: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v48);
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 48));
        v56 = *(*(a1 + 96) + 8);
        v57 = *(a1 + 64);
        v89 = *(v56 + 40);
        *(v56 + 40) = v57;
LABEL_29:

        goto LABEL_30;
      }
    }

    goto LABEL_29;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) identifier];
    v8 = [v7 shortDescription];
    v9 = [*(a1 + 48) shortDescription];
    v10 = *(a1 + 32);
    *buf = 138544130;
    v92 = v6;
    v93 = 2114;
    v94 = v8;
    v95 = 2112;
    v96 = v9;
    v97 = 2112;
    v98 = v10;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Failed to get election parameters from resident device %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
LABEL_34:
  dispatch_group_leave(*(a1 + 80));
}

- (uint64_t)compareCapabilities:(void *)capabilities withCapabilities:
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  capabilitiesCopy = capabilities;
  if (self)
  {
    context = [self context];
    if (context && (HMFEqualObjects() & 1) == 0)
    {
      if (!v5)
      {
        self = -1;
        goto LABEL_5;
      }

      if (!capabilitiesCopy)
      {
        self = 1;
        goto LABEL_5;
      }

      v21 = context;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      devicePreferenceDataSources = [self devicePreferenceDataSources];
      v10 = [devicePreferenceDataSources countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = 0;
        v14 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(devicePreferenceDataSources);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v13 += [v16 supportsDeviceWithCapabilities:v5];
            v12 += [v16 supportsDeviceWithCapabilities:capabilitiesCopy];
          }

          v11 = [devicePreferenceDataSources countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v20;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v12;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Comparing device preferences: %ld -> %ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      if (v13 > v12)
      {
        self = 1;
      }

      else
      {
        self = -1;
      }

      context = v21;
      if (v13 != v12)
      {
        goto LABEL_5;
      }
    }

    self = 0;
LABEL_5:
  }

  return self;
}

- (void)_handleResidentElectionParameters:(id)parameters
{
  parametersCopy = parameters;
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    messagePayload = [parametersCopy messagePayload];
    v8 = [messagePayload hmf_arrayForKey:*MEMORY[0x277CCE7A8]];

    responseHandler = [parametersCopy responseHandler];

    if (responseHandler)
    {
      v10 = [(HMDPrimaryElectionLegacyAddOn *)self _electionParameters:v8];
      responseHandler2 = [parametersCopy responseHandler];
      (responseHandler2)[2](responseHandler2, 0, v10);
    }
  }
}

- (BOOL)isAtHome
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v3 = context;
  if (context)
  {
    v4 = [context atHomeLevel] == 2 || objc_msgSend(v3, "atHomeLevel") == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)confirmPrimaryResident
{
  v40 = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    currentResidentDevice = [v4 currentResidentDevice];
    isResidentSupported = [v4 isResidentSupported];
    isOwnerUser = [v4 isOwnerUser];
    if (isResidentSupported && ([currentResidentDevice isEnabled] & isOwnerUser & 1) != 0)
    {
      primaryResidentDevice = [v4 primaryResidentDevice];
      v10 = primaryResidentDevice;
      if (primaryResidentDevice)
      {
        device = [primaryResidentDevice device];
        isCurrentDevice = [device isCurrentDevice];

        if ((isCurrentDevice & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            shortDescription = [v10 shortDescription];
            *buf = 138543618;
            v33 = v16;
            v34 = 2112;
            v35 = shortDescription;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Confirming primary resident: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          device2 = [v10 device];
          capabilities = [device2 capabilities];
          device3 = [currentResidentDevice device];
          capabilities2 = [device3 capabilities];
          v22 = [(HMDPrimaryElectionLegacyAddOn *)selfCopy compareCapabilities:capabilities withCapabilities:capabilities2];

          if (v22 == -1)
          {
            objc_initWeak(buf, selfCopy);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __55__HMDPrimaryElectionLegacyAddOn_confirmPrimaryResident__block_invoke;
            v30[3] = &unk_279734708;
            objc_copyWeak(&v31, buf);
            [(HMDPrimaryElectionLegacyAddOn *)selfCopy confirmWithCompletionHandler:v30];
            objc_destroyWeak(&v31);
            objc_destroyWeak(buf);
          }
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = HMFBooleanToString();
        [currentResidentDevice isEnabled];
        v28 = HMFBooleanToString();
        v29 = HMFBooleanToString();
        *buf = 138544130;
        v33 = v26;
        v34 = 2112;
        v35 = v27;
        v36 = 2112;
        v37 = v28;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Current device is incapable of election and confirmation - Resident Supported: %@, Resident Enabled: %@, Owned Home: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v23);
    }
  }
}

void __55__HMDPrimaryElectionLegacyAddOn_confirmPrimaryResident__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Confirmed with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)confirmOnAvailability
{
  v39 = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    currentResidentDevice = [v4 currentResidentDevice];
    _electionParameters = [(HMDPrimaryElectionLegacyAddOn *)self _electionParameters];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Resident device has become available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDPrimaryElectionLegacyAddOn *)selfCopy computePreferredElector:0];
    primaryResidentDevice = [v4 primaryResidentDevice];
    if (primaryResidentDevice)
    {
      device = [v12 device];
      isCurrentDevice = [device isCurrentDevice];

      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (isCurrentDevice)
      {
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          primaryResidentDevice2 = [v4 primaryResidentDevice];
          *buf = 138543618;
          v36 = v20;
          v37 = 2112;
          v38 = primaryResidentDevice2;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Confirming ourselves against primary resident %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v34 = primaryResidentDevice;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        [(HMDPrimaryElectionLegacyAddOn *)v17 _confirmResidentDevice:currentResidentDevice electionParameters:_electionParameters againstDevices:v22 completionBlock:0];
      }

      else
      {
        if (v19)
        {
          v23 = HMFGetLogIdentifier();
          primaryResidentDevice3 = [v4 primaryResidentDevice];
          *buf = 138543618;
          v36 = v23;
          v37 = 2112;
          v38 = primaryResidentDevice3;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Requesting to confirm this device against primary resident %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v25 = [HMDRemoteDeviceMessageDestination alloc];
        messageTargetUUID = [(HMDPrimaryElectionLegacyAddOn *)v17 messageTargetUUID];
        device2 = [v12 device];
        v28 = [(HMDRemoteDeviceMessageDestination *)v25 initWithTarget:messageTargetUUID device:device2];

        v32 = @"kResidentElectionParametersKey";
        v33 = _electionParameters;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v30 = [HMDRemoteMessage secureMessageWithName:@"kResidentConfirmDeviceInternalRequestKey" destination:v28 messagePayload:v29];

        messageDispatcher = [v4 messageDispatcher];
        [messageDispatcher sendMessage:v30 completionHandler:0];
      }
    }

    else
    {
      [(HMDPrimaryElectionLegacyAddOn *)selfCopy performElectionWithReason:0];
    }
  }
}

- (id)_electionParameters
{
  selfCopy = self;
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    context = [self context];
    v3 = context;
    if (context)
    {
      home = [context home];
      accessories = [home accessories];
      v6 = objc_msgSend_copy(accessories);

      if (v6)
      {
        [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      }

      else
      {
        [MEMORY[0x277CBEB18] array];
      }
      v7 = ;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            uuid = [*(*(&v16 + 1) + 8 * i) uuid];
            uUIDString = [uuid UUIDString];
            [v7 addObject:uUIDString];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      selfCopy = [(HMDPrimaryElectionLegacyAddOn *)selfCopy _electionParameters:v7];
    }

    else
    {
      selfCopy = MEMORY[0x277CBEC10];
    }
  }

  return selfCopy;
}

- (void)confirmAsResident
{
  v26 = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    if (([v4 isResidentSupported] & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Do not confirm ourselves as the resident; We are not currently supported", buf, 0xCu);
      }

      v18 = v14;
      goto LABEL_11;
    }

    if (![(HMDPrimaryElectionLegacyAddOn *)self isConfirming])
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting to confirm ourselves as the resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      home = [v4 home];

      if (home)
      {
        [(HMDPrimaryElectionLegacyAddOn *)selfCopy2 setConfirming:1];
        currentResidentDevice = [v4 currentResidentDevice];
        _electionParameters = [(HMDPrimaryElectionLegacyAddOn *)selfCopy2 _electionParameters];
        availableResidentDevices = [v4 availableResidentDevices];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __50__HMDPrimaryElectionLegacyAddOn_confirmAsResident__block_invoke;
        v23[3] = &unk_279735D00;
        v23[4] = selfCopy2;
        [(HMDPrimaryElectionLegacyAddOn *)selfCopy2 _confirmResidentDevice:currentResidentDevice electionParameters:_electionParameters againstDevices:availableResidentDevices completionBlock:v23];

        goto LABEL_12;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy2;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Returning early from confirming as resident since home does not exist", buf, 0xCu);
      }

      v18 = v19;
LABEL_11:
      objc_autoreleasePoolPop(v18);
    }
  }

LABEL_12:
}

- (void)__handleConfirmationRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    if ([v6 isResidentSupported] && (objc_msgSend(v6, "isCurrentDeviceAvailableResident") & 1) != 0)
    {
      if ([requestCopy BOOLForKey:@"shouldElect"])
      {
        [(HMDPrimaryElectionLegacyAddOn *)self computePreferredElector:0];
      }

      else
      {
        [v6 currentResidentDevice];
      }
      v12 = ;
      if (v12)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __61__HMDPrimaryElectionLegacyAddOn___handleConfirmationRequest___block_invoke;
        v18[3] = &unk_2797359D8;
        v19 = requestCopy;
        [(HMDPrimaryElectionLegacyAddOn *)self confirmElector:v12 completionHandler:v18];
        v13 = v19;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v21 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Confirmation failed, unable to determine the elector", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Confirmation failed." reason:@"Unable to determine the elector" suggestion:0];
        [requestCopy respondWithError:v13];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Confirmation failed, not an available resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Confirmation failed." reason:@"Not an available resident device." suggestion:0];
      [requestCopy respondWithError:v12];
    }
  }
}

- (void)confirmElector:(void *)elector completionHandler:
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  electorCopy = elector;
  if (self)
  {
    context = [self context];
    v8 = context;
    if (context)
    {
      queue = [context queue];
      dispatch_assert_queue_V2(queue);

      device = [v5 device];
      isCurrentDevice = [device isCurrentDevice];

      if (isCurrentDevice)
      {
        primaryResidentDevice = [v8 primaryResidentDevice];
        v13 = primaryResidentDevice;
        if (primaryResidentDevice)
        {
          v14 = primaryResidentDevice;
          context2 = [self context];
          if (context2)
          {
            v44 = v14;
            capabilities = [v14 capabilities];
            if (capabilities)
            {
              v42 = v13;
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              devicePreferenceDataSources = [self devicePreferenceDataSources];
              v18 = [devicePreferenceDataSources countByEnumeratingWithState:&v45 objects:buf count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v46;
                while (2)
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v46 != v20)
                    {
                      objc_enumerationMutation(devicePreferenceDataSources);
                    }

                    if (([*(*(&v45 + 1) + 8 * i) supportsDeviceWithCapabilities:capabilities] & 1) == 0)
                    {

                      v22 = 0;
                      goto LABEL_22;
                    }
                  }

                  v19 = [devicePreferenceDataSources countByEnumeratingWithState:&v45 objects:buf count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }
              }

              v22 = 1;
LABEL_22:
              v13 = v42;
            }

            else
            {
              v29 = objc_autoreleasePoolPush();
              selfCopy = self;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v41 = HMFGetLogIdentifier();
                v43 = v29;
                [v44 shortDescription];
                *buf = 138543618;
                v50 = v41;
                v52 = v51 = 2112;
                v32 = v52;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to confirm device, %@, missing capabilities", buf, 0x16u);

                v29 = v43;
              }

              objc_autoreleasePoolPop(v29);
              v22 = 0;
            }

            v14 = v44;
          }

          else
          {
            v22 = 0;
          }

          v33 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v35 = HMFGetOSLogHandle();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
          if (v22)
          {
            if (v36)
            {
              v37 = HMFGetLogIdentifier();
              shortDescription = [v14 shortDescription];
              *buf = 138543618;
              v50 = v37;
              v51 = 2112;
              v52 = shortDescription;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Confirmed device: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            if (!electorCopy)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          if (v36)
          {
            v39 = HMFGetLogIdentifier();
            shortDescription2 = [v14 shortDescription];
            *buf = 138543618;
            v50 = v39;
            v51 = 2112;
            v52 = shortDescription2;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Confirmation of device, %@, failed, starting full election", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          v27 = selfCopy2;
          v28 = 5;
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543362;
            v50 = v26;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@No primary resident, starting full election", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v23);
          v27 = selfCopy3;
          v28 = 0;
        }

        [v27 performElectionWithReason:v28];
        if (!electorCopy)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:
        electorCopy[2](electorCopy, 0);
        goto LABEL_37;
      }

      [(HMDPrimaryElectionLegacyAddOn *)self requestConfirmationForElector:v5 completionHandler:electorCopy];
    }

LABEL_38:
  }
}

- (void)requestConfirmationForElector:(void *)elector completionHandler:
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  primaryResidentDevice = v5;
  electorCopy = elector;
  if (self)
  {
    context = [self context];
    v9 = context;
    if (context)
    {
      queue = [context queue];
      dispatch_assert_queue_V2(queue);

      if (v5)
      {
        goto LABEL_7;
      }

      primaryResidentDevice = [v9 primaryResidentDevice];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v14;
        v44 = 2112;
        v45 = primaryResidentDevice;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@No elector provided, using current primary: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      if (primaryResidentDevice)
      {
LABEL_7:
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          shortDescription = [primaryResidentDevice shortDescription];
          *buf = 138543618;
          v43 = v18;
          v44 = 2112;
          v45 = shortDescription;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting confirmation from %@", buf, 0x16u);
        }

        v20 = v5 == 0;

        objc_autoreleasePoolPop(v15);
        device = [primaryResidentDevice device];
        v22 = [HMDRemoteDeviceMessageDestination alloc];
        messageTargetUUID = [selfCopy2 messageTargetUUID];
        v24 = [(HMDRemoteDeviceMessageDestination *)v22 initWithTarget:messageTargetUUID device:device];

        v25 = MEMORY[0x277D0F848];
        v40 = @"shouldElect";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:v20];
        v41 = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v28 = [v25 messageWithName:*MEMORY[0x277CCFEA0] destination:v24 payload:v27];

        [v28 setSecureRemote:1];
        objc_initWeak(buf, selfCopy2);
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __81__HMDPrimaryElectionLegacyAddOn_requestConfirmationForElector_completionHandler___block_invoke;
        v37 = &unk_2797355F8;
        objc_copyWeak(&v39, buf);
        v38 = electorCopy;
        [v28 setResponseHandler:&v34];
        messageDispatcher = [v9 messageDispatcher];
        [messageDispatcher sendMessage:v28 completionHandler:0];

        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v33;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot confirm, unable to determine primary resident", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        if (!electorCopy)
        {
          primaryResidentDevice = 0;
          goto LABEL_11;
        }

        device = [MEMORY[0x277CCA9B8] hmErrorWithCode:91 description:@"Cannot confirm." reason:@"Unable to determine primary resident" suggestion:0];
        (*(electorCopy + 2))(electorCopy, device);
        primaryResidentDevice = 0;
      }
    }

LABEL_11:
  }
}

void __81__HMDPrimaryElectionLegacyAddOn_requestConfirmationForElector_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    v13 = "%{public}@Confirmation request failed with error: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v12;
    v13 = "%{public}@Confirmation request succeeded";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 12;
  }

  _os_log_impl(&dword_2531F8000, v14, v15, v13, &v18, v16);

LABEL_7:
  objc_autoreleasePoolPop(v8);
  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v5);
  }
}

- (void)confirmWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    if ([v6 isOwnerUser])
    {
      currentResidentDevice = [v6 currentResidentDevice];
      availableResidentDevices = [v6 availableResidentDevices];
      v10 = [availableResidentDevices containsObject:currentResidentDevice];

      if (v10)
      {
        v11 = [(HMDPrimaryElectionLegacyAddOn *)self computePreferredElector:0];
        if (v11)
        {
          [(HMDPrimaryElectionLegacyAddOn *)self confirmElector:v11 completionHandler:handlerCopy];
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v25 = 138543362;
            v26 = v23;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Confirmation failed, unable to determine the elector", &v25, 0xCu);
          }

          objc_autoreleasePoolPop(v20);
          if (handlerCopy)
          {
            v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Confirmation failed." reason:@"Unable to determine the elector" suggestion:0];
            (*(handlerCopy + 2))(handlerCopy, v24);
          }
        }
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v19;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Requesting confirmation from primary resident device", &v25, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        [(HMDPrimaryElectionLegacyAddOn *)selfCopy2 requestConfirmationForElector:handlerCopy completionHandler:?];
      }

      goto LABEL_18;
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Confirmation is only available to the owner of the home", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (handlerCopy)
    {
      currentResidentDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:0 reason:@"Confirmation is only available to the owner of the home." suggestion:0];
      (*(handlerCopy + 2))(handlerCopy, currentResidentDevice);
LABEL_18:
    }
  }
}

- (id)computePreferredElector:(unint64_t *)elector
{
  selfCopy = self;
  v54 = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = context;
  if (context)
  {
    if (elector)
    {
      *elector = 11;
    }

    v36 = context;
    availableResidentDevices = [context availableResidentDevices];
    v8 = [availableResidentDevices mutableCopy];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v8;
    v9 = objc_msgSend_copy(v8);
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      v37 = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          if (([v14 isReachable] & 1) == 0)
          {
            v15 = objc_autoreleasePoolPush();
            v16 = selfCopy;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v18 = v38 = v15;
              device = [v14 device];
              [device isCurrentDevice];
              HMFBooleanToString();
              v20 = v12;
              v22 = v21 = selfCopy;
              *buf = 138543874;
              v48 = v18;
              v49 = 2112;
              v50 = v14;
              v51 = 2112;
              v52 = v22;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not electing resident as it is unreachable: %@, isCurrentDevice: %@", buf, 0x20u);

              v9 = v37;
              selfCopy = v21;
              v12 = v20;

              v15 = v38;
            }

            objc_autoreleasePoolPop(v15);
            [v39 removeObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v11);
    }

    if (isInternalBuild())
    {
      v6 = v36;
      home = [v36 home];
      uuid = [home uuid];

      v25 = [preferredPrimaryForHome objectForKey:uuid];
      if (v25)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          uUIDString = [uuid UUIDString];
          uUIDString2 = [v25 UUIDString];
          *buf = 138543874;
          v48 = v29;
          v49 = 2112;
          v50 = uUIDString;
          v51 = 2112;
          v52 = uUIDString2;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@The house %@ has a preferred primary device of %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    else
    {
      v25 = 0;
      v6 = v36;
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __57__HMDPrimaryElectionLegacyAddOn_computePreferredElector___block_invoke;
    v40[3] = &unk_27972BB80;
    v41 = v25;
    v42 = v35;
    v33 = v25;
    [v39 sortUsingComparator:v40];
    lastObject = [v39 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

uint64_t __57__HMDPrimaryElectionLegacyAddOn_computePreferredElector___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v8 device];

  v13 = [v11 device];

  if (isInternalBuild())
  {
    v14 = *(a1 + 32);
    v15 = [v12 identifier];
    LODWORD(v14) = [v14 isEqual:v15];

    if (v14)
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = 12;
LABEL_32:
        *v16 = v17;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    v18 = *(a1 + 32);
    v19 = [v13 identifier];
    LODWORD(v18) = [v18 isEqual:v19];

    if (v18)
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        v21 = 12;
LABEL_27:
        *v20 = v21;
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  v22 = [v12 version];
  v23 = [v13 version];
  v24 = [v22 compare:v23];

  if (v24)
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      *v25 = 16;
    }
  }

  else
  {
    v26 = [v12 productInfo];
    v27 = [v26 productClass];
    v28 = [v13 productInfo];
    v29 = [v28 productClass];

    if (v27 != v29)
    {
      v30 = [v12 productInfo];
      v31 = [v30 productClass];

      if (v31 == 3)
      {
        v20 = *(a1 + 40);
        if (v20)
        {
          v21 = 4;
          goto LABEL_27;
        }

LABEL_28:
        v24 = -1;
        goto LABEL_34;
      }

      v33 = [v13 productInfo];
      v34 = [v33 productClass];

      if (v34 == 3)
      {
        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = 4;
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    if ([v12 isCurrentDevice])
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = 11;
        goto LABEL_32;
      }

LABEL_33:
      v24 = 1;
      goto LABEL_34;
    }

    v32 = [v13 isCurrentDevice];
    v20 = *(a1 + 40);
    if (v32)
    {
      if (v20)
      {
        v21 = 11;
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v24 = 0;
    if (v20)
    {
      *v20 = 0;
    }
  }

LABEL_34:

  return v24;
}

- (void)handleBatteryLevelChange:(id)change
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = context;
  if (context)
  {
    queue = [context queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__HMDPrimaryElectionLegacyAddOn_handleBatteryLevelChange___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = v5;
    dispatch_async(queue, v7);
  }
}

void __58__HMDPrimaryElectionLegacyAddOn_handleBatteryLevelChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received notification that of battery level change", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) currentResidentDevice];
  if (v6)
  {
    v7 = [MEMORY[0x277D0F8C8] sharedManager];
    [v7 batteryLevel];
    v9 = v8;

    v10 = v9 <= 0.2 && (v9 > 0.0);
    if (v10 != [v6 isLowBattery])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v14)
        {
          v15 = HMFGetLogIdentifier();
          v18 = 138543362;
          v19 = v15;
          v16 = "%{public}@Currently in a low battery state, notifying clients";
LABEL_13:
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v16, &v18, 0xCu);
        }
      }

      else if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        v16 = "%{public}@No longer in a low battery state, notifying clients";
        goto LABEL_13;
      }

      objc_autoreleasePoolPop(v11);
      [v6 setLowBattery:v10];
      v17 = [*(a1 + 32) delegate];
      [v17 primaryElectionAddOn:*(a1 + 32) didUpdateResidentDevice:v6];
    }
  }
}

- (void)handleBatteryStateChange:(id)change
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = context;
  if (context)
  {
    queue = [context queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__HMDPrimaryElectionLegacyAddOn_handleBatteryStateChange___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = v5;
    dispatch_async(queue, v7);
  }
}

void __58__HMDPrimaryElectionLegacyAddOn_handleBatteryStateChange___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v40 = 138543362;
    v41 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification that of battery state change", &v40, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) currentResidentDevice];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 batteryState];
    v9 = [MEMORY[0x277D0F8C8] sharedManager];
    v10 = [v9 batteryState];

    if (v10 != v8)
    {
      if (v8)
      {
        if (v10 == 1)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 32);
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v40 = 138543362;
            v41 = v14;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Currently discharging, notifying clients", &v40, 0xCu);
          }

          objc_autoreleasePoolPop(v11);
          -[HMDPrimaryElectionLegacyAddOn _updateDischargingTimer:](*(a1 + 32), [*(a1 + 40) atHomeLevel]);
          goto LABEL_29;
        }

        if (v8 == 1)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v40 = 138543362;
            v41 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Currently charging, notifying clients", &v40, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = *(a1 + 32);
          if (!v19)
          {
            goto LABEL_29;
          }

          v20 = [*(a1 + 32) context];
          v21 = v20;
          if (!v20)
          {
            goto LABEL_28;
          }

          v22 = [v20 queue];
          dispatch_assert_queue_V2(v22);

          if (isAppleTV())
          {
            v23 = objc_autoreleasePoolPush();
            v24 = v19;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              v40 = 138543362;
              v41 = v26;
              _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@We should only be pinging the resident on transient resident capable devices which are enabled", &v40, 0xCu);
            }

            v27 = v23;
          }

          else
          {
            v28 = [v21 isResidentSupported];
            v29 = objc_autoreleasePoolPush();
            v30 = v19;
            v31 = HMFGetOSLogHandle();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
            if (v28)
            {
              if (v32)
              {
                v33 = HMFGetLogIdentifier();
                v40 = 138543362;
                v41 = v33;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Updating monitor timer since we are charging", &v40, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              v34 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:60.0];
              [v30 setResidentMonitorTimer:v34];

              v35 = [v30 residentMonitorTimer];
              [v35 setDelegate:v30];

              v36 = [v21 queue];
              v37 = [v30 residentMonitorTimer];
              [v37 setDelegateQueue:v36];

              [(HMDPrimaryElectionLegacyAddOn *)v30 _startMonitoringResident];
              goto LABEL_28;
            }

            if (v32)
            {
              v38 = HMFGetLogIdentifier();
              v40 = 138543362;
              v41 = v38;
              _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@We shouldn't ping if resident is not supported.", &v40, 0xCu);
            }

            v27 = v29;
          }

          objc_autoreleasePoolPop(v27);
LABEL_28:

LABEL_29:
          [v7 setBatteryState:v10];
          v39 = [*(a1 + 32) delegate];
          [v39 primaryElectionAddOn:*(a1 + 32) didUpdateResidentDevice:v7];

          goto LABEL_30;
        }
      }

      [v7 setBatteryState:v10];
    }
  }

LABEL_30:
}

- (void)timerDidFire:(id)fire
{
  v22 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    primaryResidentDevice = [v6 primaryResidentDevice];
    device = [primaryResidentDevice device];

    if (device && ([device isCurrentDevice] & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = device;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Pinging resident: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      messageDispatcher = [v6 messageDispatcher];
      secureRemoteTransport = [messageDispatcher secureRemoteTransport];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__HMDPrimaryElectionLegacyAddOn_timerDidFire___block_invoke;
      v16[3] = &unk_27972C528;
      v16[4] = selfCopy;
      v17 = device;
      [secureRemoteTransport pingDevice:v17 completionHandler:v16];
    }
  }
}

void __46__HMDPrimaryElectionLegacyAddOn_timerDidFire___block_invoke(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Ping failed for resident: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)performElectionWithReason:(unint64_t)reason
{
  v45 = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = context;
  if (!context)
  {
    goto LABEL_21;
  }

  queue = [context queue];
  dispatch_assert_queue_V2(queue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    if (reason - 1 > 6)
    {
      v12 = @"no primary";
    }

    else
    {
      v12 = off_279728B50[reason - 1];
    }

    v13 = v12;
    *buf = 138543618;
    v42 = v11;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Performing election with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (([v6 isResidentEnabled] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v23;
    v24 = "%{public}@Only resident capable devices which are enabled should perform resident election";
LABEL_19:
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, v24, buf, 0xCu);

    goto LABEL_20;
  }

  if (([v6 isResidentSupported] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v23;
    v24 = "%{public}@Resident election is not supported on this device.";
    goto LABEL_19;
  }

  if (([v6 isOwnerUser] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v23;
      v24 = "%{public}@Only owners can perform resident election";
      goto LABEL_19;
    }

LABEL_20:

    objc_autoreleasePoolPop(v20);
    goto LABEL_21;
  }

  currentResidentDevice = [v6 currentResidentDevice];
  [(HMDPrimaryElectionLegacyAddOn *)selfCopy _stopMonitoringResident:currentResidentDevice];

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    if (reason - 1 > 6)
    {
      v19 = @"no primary";
    }

    else
    {
      v19 = off_279728B50[reason - 1];
    }

    v25 = v19;
    *buf = 138543618;
    v42 = v18;
    v43 = 2112;
    v44 = v25;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Starting primary resident election: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v40 = 0;
  v26 = [(HMDPrimaryElectionLegacyAddOn *)v16 computePreferredElector:&v40];
  delegate = [(HMDPrimaryElectionLegacyAddOn *)v16 delegate];
  v28 = objc_autoreleasePoolPush();
  v29 = v16;
  v30 = HMFGetOSLogHandle();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v31)
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v32;
      v43 = 2112;
      v44 = v26;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Resident device elected: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v33 = objc_alloc_init(HMDLegacyPrimaryElectionLogEvent);
    if (reason - 1 > 6)
    {
      v34 = @"no primary";
    }

    else
    {
      v34 = off_279728B50[reason - 1];
    }

    v36 = v34;
    [(HMDLegacyPrimaryElectionLogEvent *)v33 setReason:v36];

    if (v40 > 0x11)
    {
      v37 = @"unknown reason";
    }

    else
    {
      v37 = off_279728B88[v40];
    }

    v38 = v37;
    [(HMDLegacyPrimaryElectionLogEvent *)v33 setCriteria:v38];

    availableResidentDevices = [v6 availableResidentDevices];
    -[HMDLegacyPrimaryElectionLogEvent setAvailableResidentCount:](v33, "setAvailableResidentCount:", [availableResidentDevices count]);

    [delegate primaryElectionAddOn:v29 didElectPrimaryResident:v26 confirmed:0 electionLogEvent:v33];
  }

  else
  {
    if (v31)
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v35;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@No resident device available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"No valid resident found" reason:0 suggestion:0];
    [delegate primaryElectionAddOn:v29 didFailToElectWithError:v33];
  }

LABEL_21:
}

- (void)registerForMessages
{
  v18[2] = *MEMORY[0x277D85DE8];
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = context;
  if (context)
  {
    messageDispatcher = [context messageDispatcher];
    home = [v4 home];
    v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v6 setRequiresSecureMessage:1];
    [v6 setRequiresAccountMessage:1];
    [v6 setTransportRestriction:-1];
    v7 = objc_msgSend_copy(v6);
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v18[0] = v7;
    v18[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [messageDispatcher registerForMessage:@"kResidentElectionParametersInternalRequestKey" receiver:self policies:v9 selector:sel__handleResidentElectionParameters_];

    v10 = *MEMORY[0x277CCFEA0];
    v17[0] = v7;
    v17[1] = v8;
    v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v17[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    [messageDispatcher registerForMessage:v10 receiver:self policies:v12 selector:sel___handleConfirmationRequest_];

    v16[0] = v7;
    v16[1] = v8;
    v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v16[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    [messageDispatcher registerForMessage:@"kResidentConfirmDeviceInternalRequestKey" receiver:self policies:v14 selector:sel__handleConfirmResidentDevice_];
  }
}

- (void)stop
{
  residentMonitorTimer = [(HMDPrimaryElectionLegacyAddOn *)self residentMonitorTimer];
  [residentMonitorTimer suspend];
}

- (void)start
{
  context = [(HMDPrimaryElectionLegacyAddOn *)self context];
  if (context)
  {
    v5 = context;
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    [(HMDPrimaryElectionLegacyAddOn *)self _startMonitoringResident];
    context = v5;
  }
}

- (HMDPrimaryElectionLegacyAddOn)initWithContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = HMDPrimaryElectionLegacyAddOn;
  v5 = [(HMDPrimaryElectionLegacyAddOn *)&v23 init];
  v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  devicePreferenceDataSources = v5->_devicePreferenceDataSources;
  v5->_devicePreferenceDataSources = v6;

  objc_storeWeak(&v5->_context, contextCopy);
  v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:60.0];
  residentMonitorTimer = v5->_residentMonitorTimer;
  v5->_residentMonitorTimer = v8;

  [(HMFTimer *)v5->_residentMonitorTimer setDelegate:v5];
  queue = [contextCopy queue];
  [(HMFTimer *)v5->_residentMonitorTimer setDelegateQueue:queue];

  v11 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v11 isResidentCapable];

  if (isResidentCapable)
  {
    mEMORY[0x277D0F8C8] = [MEMORY[0x277D0F8C8] sharedManager];
    hasBattery = [mEMORY[0x277D0F8C8] hasBattery];

    if (hasBattery)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Monitoring power state information for transient resident device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v16 selector:sel_handleBatteryStateChange_ name:*MEMORY[0x277D0F200] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v16 selector:sel_handleBatteryLevelChange_ name:*MEMORY[0x277D0F1F8] object:0];

      mEMORY[0x277D0F8C8]2 = [MEMORY[0x277D0F8C8] sharedManager];
      [mEMORY[0x277D0F8C8]2 start];
    }
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t87 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t87, &__block_literal_global_118351);
  }

  v3 = logCategory__hmf_once_v88;

  return v3;
}

uint64_t __44__HMDPrimaryElectionLegacyAddOn_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v88;
  logCategory__hmf_once_v88 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (int64_t)compareElectionVersions:(id)versions otherVersion:(id)version
{
  versionsCopy = versions;
  versionCopy = version;
  v7 = +[HMDHomeKitVersion version5];
  if (([versionsCopy isEqualToVersion:versionCopy] & 1) == 0 && (!objc_msgSend(versionsCopy, "isAtLeastVersion:", v7) || (objc_msgSend(versionCopy, "isAtLeastVersion:", v7) & 1) == 0))
  {
    if ([versionsCopy isAtLeastVersion:v7])
    {
      goto LABEL_24;
    }

    if ([versionCopy isAtLeastVersion:v7])
    {
      goto LABEL_26;
    }
  }

  v7 = +[HMDHomeKitVersion version4];
  if (([versionsCopy isEqualToVersion:versionCopy] & 1) == 0 && (!objc_msgSend(versionsCopy, "isAtLeastVersion:", v7) || (objc_msgSend(versionCopy, "isAtLeastVersion:", v7) & 1) == 0))
  {
    if ([versionsCopy isAtLeastVersion:v7])
    {
      goto LABEL_24;
    }

    if ([versionCopy isAtLeastVersion:v7])
    {
      goto LABEL_26;
    }
  }

  v7 = +[HMDHomeKitVersion version3];
  if ([versionsCopy isEqualToVersion:versionCopy] & 1) != 0 || objc_msgSend(versionsCopy, "isAtLeastVersion:", v7) && (objc_msgSend(versionCopy, "isAtLeastVersion:", v7))
  {
    goto LABEL_4;
  }

  if ([versionsCopy isAtLeastVersion:v7])
  {
LABEL_24:
    v8 = 1;
    goto LABEL_27;
  }

  if ([versionCopy isAtLeastVersion:v7])
  {
    goto LABEL_26;
  }

LABEL_4:

  v7 = +[HMDHomeKitVersion version3];
  if (([versionsCopy isEqualToVersion:versionCopy] & 1) == 0 && (!objc_msgSend(versionsCopy, "isAtLeastVersion:", v7) || (objc_msgSend(versionCopy, "isAtLeastVersion:", v7) & 1) == 0))
  {
    if ([versionsCopy isAtLeastVersion:v7])
    {
      goto LABEL_24;
    }

    if ([versionCopy isAtLeastVersion:v7])
    {
LABEL_26:
      v8 = -1;
      goto LABEL_27;
    }
  }

  v8 = 0;
LABEL_27:

  return v8;
}

@end