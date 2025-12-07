@interface HMDEventTriggerExecutionSession
+ (id)logCategory;
- (BOOL)containsSecureActionSet;
- (BOOL)needsUserConfirmation;
- (HMDEventTriggerExecutionSession)initWithEventTrigger:(id)trigger predicateUtilities:(id)utilities triggerEvent:(id)event causingDevice:(id)device workQueue:(id)queue actionSets:(id)sets evaluationCondition:(id)condition recurrences:(id)self0 endEvents:(id)self1 msgDispatcher:(id)self2;
- (NSString)description;
- (id)_monitoringEventsFromActionSetResponse:(id)response;
- (id)didOccurEvent:(id)event causingDevice:(id)device;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)durationEndEvents;
- (id)valueInActionSetWriteResponse:(id)response actionSetUUID:(id)d accUUID:(id)iD serviceID:(id)serviceID characteristicID:(id)characteristicID;
- (void)_activateDurationEvents;
- (void)_activateEvents:(id)events;
- (void)_activateMonitoringEvents;
- (void)_addEvent:(id)event causingDevice:(id)device;
- (void)_callExecutionComplete:(id)complete callDelegate:(BOOL)delegate;
- (void)_callExecutionCompleteIfNoMoreOutstandingRequests;
- (void)_directlyExecuteActionSetsWithCompletionHandler:(id)handler;
- (void)_evaluateFiringTrigger;
- (void)_executeTriggerAfterEvaluatingCondition:(id)condition;
- (void)_handleActionSetExecutionResponse:(id)response actionSetError:(id)error completion:(id)completion;
- (void)_handleMonitoringEvent:(id)event;
- (void)_removeUserDialog;
- (void)_restoreState;
- (void)_submitAnalyticsData:(id)data;
- (void)_userResponse:(unint64_t)response device:(id)device completionHandler:(id)handler;
- (void)addEvent:(id)event causingDevice:(id)device;
- (void)cancelSessionIfWaitingForUserResponse;
- (void)evaluateFiringTrigger;
- (void)handleSessionPlaybackStateUpdatedNotification:(id)notification;
- (void)postponeRestoreIfWaitingForEndEvent;
- (void)setExecutionState:(unint64_t)state;
- (void)timerDidFire:(id)fire;
- (void)userResponse:(unint64_t)response device:(id)device completionHandler:(id)handler;
@end

@implementation HMDEventTriggerExecutionSession

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDEventTriggerExecutionSession_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = fireCopy;
  v6 = fireCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDEventTriggerExecutionSession_timerDidFire___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) secureTriggerConfirmationTimer];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@No user has responded to the confirmation yet, declaring confirmation denied", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = *(a1 + 32);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v22 _callExecutionComplete:v23];

    [*(a1 + 32) setSecureTriggerConfirmationTimer:0];
  }

  else
  {
    v4 = [*(a1 + 32) startCharacteristicsMonitorTimer];
    v5 = *(a1 + 40);

    if (v4 == v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Start char monitor timer has fired, activating monitoring events", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = [*(a1 + 32) monitorEvents];
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            v16 = [v15 characteristic];
            v17 = [v16 value];
            [v15 setEventValue:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      [*(a1 + 32) setStartCharacteristicsMonitorTimer:0];
      [*(a1 + 32) _activateMonitoringEvents];
    }
  }
}

- (id)didOccurEvent:(id)event causingDevice:(id)device
{
  eventCopy = event;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMDEventTriggerExecutionSession_didOccurEvent_causingDevice___block_invoke;
  v9[3] = &unk_2797359B0;
  v9[4] = self;
  v10 = eventCopy;
  v7 = eventCopy;
  dispatch_async(workQueue, v9);

  return 0;
}

void __63__HMDEventTriggerExecutionSession_didOccurEvent_causingDevice___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) endEvents];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v22 = 138543618;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@End Event has occurred, declaring execution complete, %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _restoreState];
  }

  v9 = [*(a1 + 32) endEvents];
  if ([v9 containsObject:*(a1 + 40)])
  {

LABEL_7:
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v22 = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Monitored Event %{public}@ has occurred", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) _handleMonitoringEvent:*(a1 + 40)];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [*(a1 + 32) monitorEvents];
    v16 = [v15 containsObject:*(a1 + 40)];

    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = *(a1 + 40);
    v22 = 138543618;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received a delegate callback on event occurrence from %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
}

- (void)_callExecutionCompleteIfNoMoreOutstandingRequests
{
  v23 = *MEMORY[0x277D85DE8];
  writeRequests = [(HMDEventTriggerExecutionSession *)self writeRequests];
  if ([writeRequests count])
  {

LABEL_4:
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      writeRequests2 = [(HMDEventTriggerExecutionSession *)selfCopy writeRequests];
      v11 = [writeRequests2 description];
      mediaProfiles = [(HMDEventTriggerExecutionSession *)selfCopy mediaProfiles];
      v17 = 138543874;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = mediaProfiles;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Not ending the trigger execution session because there are write requests left %@ or media profiles %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    return;
  }

  mediaProfiles2 = [(HMDEventTriggerExecutionSession *)self mediaProfiles];
  v5 = [mediaProfiles2 count];

  if (v5)
  {
    goto LABEL_4;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@No more write requests in restore list, declaring execution complete", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDEventTriggerExecutionSession *)selfCopy2 _callExecutionComplete:0];
}

- (void)handleSessionPlaybackStateUpdatedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD09A8]];
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDEventTriggerExecutionSession_handleSessionPlaybackStateUpdatedNotification___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v10 = userInfo;
  v11 = v5;
  v7 = v5;
  v8 = userInfo;
  dispatch_async(workQueue, block);
}

void __81__HMDEventTriggerExecutionSession_handleSessionPlaybackStateUpdatedNotification___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification userInfo %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) eventTrigger];
  v8 = [v7 home];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 48)];
  v10 = [v8 mediaSessionWithUUID:v9];

  v11 = [v10 mediaProfiles];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [*(a1 + 32) mediaProfiles];
  v13 = objc_msgSend_copy(v12);

  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v30 = v10;
    v16 = 0;
    v17 = *v33;
    v18 = v13;
    do
    {
      v19 = 0;
      v31 = v15;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v18);
        }

        v20 = *(*(&v32 + 1) + 8 * v19);
        if ([v11 containsObject:v20])
        {
          v21 = objc_autoreleasePoolPush();
          v22 = *(a1 + 32);
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v24 = v17;
            v25 = v11;
            v26 = a1;
            v28 = v27 = v18;
            *buf = 138543618;
            v38 = v28;
            v39 = 2112;
            v40 = v20;
            _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Removing the media profile as it was changed, %@", buf, 0x16u);

            v18 = v27;
            a1 = v26;
            v11 = v25;
            v17 = v24;
            v15 = v31;
          }

          objc_autoreleasePoolPop(v21);
          v29 = [*(a1 + 32) mediaProfiles];
          [v29 removeObject:v20];

          v16 = 1;
        }

        ++v19;
      }

      while (v15 != v19);
      v15 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);

    v10 = v30;
    if (v16)
    {
      [*(a1 + 32) _callExecutionCompleteIfNoMoreOutstandingRequests];
    }
  }

  else
  {
  }
}

- (void)_handleMonitoringEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v26 = eventCopy;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  writeRequests = [(HMDEventTriggerExecutionSession *)self writeRequests];
  v8 = objc_msgSend_copy(writeRequests);

  v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      v27 = v10;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        characteristic = [v6 characteristic];
        service = [characteristic service];
        service2 = [v13 service];

        if (service == service2)
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v11;
            v21 = v6;
            v22 = v8;
            v24 = v23 = self;
            *buf = 138543618;
            v33 = v24;
            v34 = 2112;
            v35 = v13;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing the write requests on characteristic as it was changed, %@", buf, 0x16u);

            self = v23;
            v8 = v22;
            v6 = v21;
            v11 = v20;
            v10 = v27;
          }

          objc_autoreleasePoolPop(v17);
          writeRequests2 = [(HMDEventTriggerExecutionSession *)selfCopy writeRequests];
          [writeRequests2 removeObjectForKey:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  [(HMDEventTriggerExecutionSession *)self _callExecutionCompleteIfNoMoreOutstandingRequests];
}

- (void)_restoreState
{
  v48 = *MEMORY[0x277D85DE8];
  if ([(HMDEventTriggerExecutionSession *)self restoreInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@State restoration is already in progress, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [(HMDEventTriggerExecutionSession *)self setRestoreInProgress:1];
    eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
    home = [eventTrigger home];

    if (home)
    {
      array = [MEMORY[0x277CBEB18] array];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      writeRequests = [(HMDEventTriggerExecutionSession *)self writeRequests];
      v11 = [writeRequests countByEnumeratingWithState:&v31 objects:v47 count:16];
      if (v11)
      {
        v12 = *v32;
        do
        {
          v13 = 0;
          do
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(writeRequests);
            }

            v14 = *(*(&v31 + 1) + 8 * v13);
            writeRequests2 = [(HMDEventTriggerExecutionSession *)self writeRequests];
            v16 = [writeRequests2 objectForKey:v14];
            [array addObject:v16];

            ++v13;
          }

          while (v11 != v13);
          v11 = [writeRequests countByEnumeratingWithState:&v31 objects:v47 count:16];
        }

        while (v11);
      }

      objc_initWeak(&location, self);
      uUID = [MEMORY[0x277CCAD78] UUID];
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v35 = 0uLL;
        if (uUID)
        {
          [uUID getUUIDBytes:&v35];
        }

        else
        {
          v35 = *MEMORY[0x277D0F960];
        }

        v36 = v35;
        v26 = [array count];
        *buf = 138544386;
        v38 = v21;
        v39 = 1042;
        v40 = 16;
        v41 = 2098;
        v42 = &v36;
        v43 = 2114;
        v44 = selfCopy2;
        v45 = 2048;
        v46 = v26;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P from event trigger execution session: %{public}@ count: %lu", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v18);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke;
      v27[3] = &unk_279733AE8;
      objc_copyWeak(&v29, &location);
      v28 = home;
      [v28 writeCharacteristicValues:array source:3 biomeSource:0 identifier:uUID transport:0 qualityOfService:-1 withCompletionHandler:v27];
      [(HMDEventTriggerExecutionSession *)selfCopy2 setExecutionState:5];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to get valid Home reference", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      array = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [(HMDEventTriggerExecutionSession *)selfCopy3 _callExecutionComplete:array];
    }
  }
}

void __48__HMDEventTriggerExecutionSession__restoreState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_2;
    aBlock[3] = &unk_2797359D8;
    aBlock[4] = WeakRetained;
    v6 = _Block_copy(aBlock);
    v7 = [v5 mediaProfiles];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [HMDMediaPlaybackAction alloc];
      v10 = [MEMORY[0x277CCAD78] UUID];
      v11 = [v5 mediaProfiles];
      v12 = [(HMDMediaPlaybackAction *)v9 initWithUUID:v10 mediaProfiles:v11 playbackState:2 volume:0 playbackArchive:0 actionSet:0];

      v13 = [*(a1 + 32) mediaActionRouter];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_4;
      v14[3] = &unk_279733F30;
      v16 = v6;
      v15 = v3;
      [v13 routeMediaActionForExecution:v12 source:3 clientName:@"com.apple.homed" completion:v14];
    }

    else
    {
      (*(v6 + 2))(v6, v3);
    }
  }
}

void __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_3;
  v6[3] = &unk_2797359B0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    a2 = *(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

- (void)_removeUserDialog
{
  userConfirmationSession = [(HMDEventTriggerExecutionSession *)self userConfirmationSession];
  causingDevices = [(HMDEventTriggerExecutionSession *)self causingDevices];
  [userConfirmationSession _removeUserDialog:causingDevices];

  causingDevices2 = [(HMDEventTriggerExecutionSession *)self causingDevices];
  [causingDevices2 removeAllObjects];
}

- (void)_submitAnalyticsData:(id)data
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CBEB18];
  triggerEvents = [(HMDEventTriggerExecutionSession *)self triggerEvents];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(triggerEvents, "count")}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  triggerEvents2 = [(HMDEventTriggerExecutionSession *)self triggerEvents];
  v9 = [triggerEvents2 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(triggerEvents2);
        }

        analyticsTriggerEventData = [*(*(&v43 + 1) + 8 * v12) analyticsTriggerEventData];
        [v7 addObject:analyticsTriggerEventData];

        ++v12;
      }

      while (v10 != v12);
      v10 = [triggerEvents2 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  v14 = [HomeKitEventTriggerExecutionSessionLogEvent alloc];
  [(HMDEventTriggerExecutionSession *)self executionStartTime];
  v16 = v15;
  sessionID = [(HMDEventTriggerSession *)self sessionID];
  uUIDString = [sessionID UUIDString];
  v19 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v14 initWithStartTime:uUIDString sessionID:v16];

  v20 = objc_msgSend_copy(v7);
  analyticsData = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [analyticsData setTriggerEvents:v20];

  v22 = MEMORY[0x277CBEB18];
  endEvents = [(HMDEventTriggerExecutionSession *)self endEvents];
  v24 = [v22 arrayWithCapacity:{objc_msgSend(endEvents, "count")}];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  endEvents2 = [(HMDEventTriggerExecutionSession *)self endEvents];
  v26 = [endEvents2 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(endEvents2);
        }

        analyticsTriggerEventData2 = [*(*(&v39 + 1) + 8 * v29) analyticsTriggerEventData];
        [v24 addObject:analyticsTriggerEventData2];

        ++v29;
      }

      while (v27 != v29);
      v27 = [endEvents2 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v27);
  }

  v31 = objc_msgSend_copy(v24);
  analyticsData2 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [analyticsData2 setEndEvents:v31];

  executionState = [(HMDEventTriggerExecutionSession *)self executionState];
  analyticsData3 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [analyticsData3 setExecutionState:executionState];

  code = [dataCopy code];
  analyticsData4 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [analyticsData4 setResultErrorCode:code];

  v37 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v37 submitLogEvent:v19 error:dataCopy];

  objc_autoreleasePoolPop(context);
}

- (void)_callExecutionComplete:(id)complete callDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v51 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  if ([(HMDEventTriggerExecutionSession *)self executionCompleteCalled])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Execution complete already called, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    triggerEvents = [(HMDEventTriggerExecutionSession *)self triggerEvents];
    v12 = [triggerEvents countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(triggerEvents);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&unk_28667F850])
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            [v18 didEndExecutionSession:self];
          }
        }

        v13 = [triggerEvents countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v13);
    }

    [(HMDEventTriggerExecutionSession *)self _removeUserDialog];
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    v36 = completeCopy;
    if (delegateCopy)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v23;
        v48 = 2114;
        v49 = completeCopy;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Informing that trigger action set execution is complete with error %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      eventTrigger = [(HMDEventTriggerSession *)selfCopy2 eventTrigger];
      [eventTrigger executionComplete:selfCopy2 error:completeCopy];
    }

    else
    {
      if (v22)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v25;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Not calling the delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }

    [(HMDEventTriggerExecutionSession *)selfCopy2 setSecureTriggerConfirmationTimer:0];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    endEvents = [(HMDEventTriggerExecutionSession *)selfCopy2 endEvents];
    v27 = [endEvents countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v38;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(endEvents);
          }

          v31 = *(*(&v37 + 1) + 8 * j);
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy2;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v47 = v35;
            v48 = 2112;
            v49 = v31;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Deactivating end event %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          [v31 _activate:0 completionHandler:0];
        }

        v28 = [endEvents countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v28);
    }

    completeCopy = v36;
    if (!v36)
    {
      [(HMDEventTriggerExecutionSession *)selfCopy2 setExecutionState:6];
    }

    [(HMDEventTriggerExecutionSession *)selfCopy2 setExecutionCompleteCalled:1];
    [(HMDEventTriggerExecutionSession *)selfCopy2 _submitAnalyticsData:v36];
  }
}

- (id)valueInActionSetWriteResponse:(id)response actionSetUUID:(id)d accUUID:(id)iD serviceID:(id)serviceID characteristicID:(id)characteristicID
{
  characteristicIDCopy = characteristicID;
  serviceIDCopy = serviceID;
  iDCopy = iD;
  v14 = [response hmf_dictionaryForKey:d];
  v15 = [v14 hmf_dictionaryForKey:iDCopy];

  v16 = [v15 hmf_dictionaryForKey:serviceIDCopy];

  v17 = [v16 hmf_dictionaryForKey:characteristicIDCopy];

  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  return v18;
}

- (id)_monitoringEventsFromActionSetResponse:(id)response
{
  v130 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  array = [MEMORY[0x277CBEB18] array];
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  home = [eventTrigger home];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = responseCopy;
  v74 = [obj countByEnumeratingWithState:&v114 objects:v129 count:16];
  if (v74)
  {
    v73 = *v115;
    v6 = *MEMORY[0x277CD21E8];
    v95 = *MEMORY[0x277CD21B8];
    selfCopy = self;
    v76 = *MEMORY[0x277CD21E8];
    do
    {
      v7 = 0;
      do
      {
        if (*v115 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v75 = v7;
        v91 = *(*(&v114 + 1) + 8 * v7);
        v8 = [obj hmf_dictionaryForKey:?];
        v79 = [v8 hmf_dictionaryForKey:v6];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v9 = v8;
        v81 = [v9 countByEnumeratingWithState:&v110 objects:v128 count:16];
        if (v81)
        {
          v10 = *v111;
          v77 = v9;
          v78 = *v111;
          do
          {
            v11 = 0;
            do
            {
              if (*v111 != v10)
              {
                v12 = v11;
                objc_enumerationMutation(v9);
                v11 = v12;
              }

              v82 = v11;
              v13 = *(*(&v110 + 1) + 8 * v11);
              if ((HMFEqualObjects() & 1) == 0)
              {
                v85 = [v79 hmf_dictionaryForKey:v13];
                v14 = [v9 hmf_dictionaryForKey:v13];
                v97 = v13;
                v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
                v16 = [home accessoryWithUUID:v15];

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

                v98 = v18;
                if (!v18)
                {
                  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v97];
                  v20 = [home mediaProfileWithUUID:v19];

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v21 = v20;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v22 = v21;

                  if (v22)
                  {
                    uniqueIdentifier = [v22 uniqueIdentifier];
                    v24 = [v85 objectForKey:uniqueIdentifier];

                    if ([v24 playbackState] == 1)
                    {

                      goto LABEL_69;
                    }

                    mediaProfiles = [(HMDEventTriggerExecutionSession *)self mediaProfiles];
                    [mediaProfiles addObject:v22];
                  }
                }

                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v22 = v14;
                v86 = [v22 countByEnumeratingWithState:&v106 objects:v127 count:16];
                if (v86)
                {
                  v80 = v14;
                  v83 = *v107;
                  v84 = v22;
                  while (1)
                  {
                    v26 = 0;
                    do
                    {
                      if (*v107 != v83)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v87 = v26;
                      v27 = *(*(&v106 + 1) + 8 * v26);
                      v28 = [v22 hmf_dictionaryForKey:v27];
                      v96 = [v85 hmf_dictionaryForKey:v27];
                      v102 = 0u;
                      v103 = 0u;
                      v104 = 0u;
                      v105 = 0u;
                      v94 = v28;
                      v100 = [v94 countByEnumeratingWithState:&v102 objects:v126 count:16];
                      if (v100)
                      {
                        v99 = *v103;
                        v101 = v27;
                        do
                        {
                          v29 = 0;
                          do
                          {
                            if (*v103 != v99)
                            {
                              objc_enumerationMutation(v94);
                            }

                            v30 = *(*(&v102 + 1) + 8 * v29);
                            v31 = HAPInstanceIDFromValue();
                            v32 = HAPInstanceIDFromValue();
                            v33 = [v98 findCharacteristic:v31 forService:v32];

                            if (v33)
                            {
                              v34 = [v96 objectForKey:v30];
                              v35 = [v34 objectForKey:v95];
                              type = [v33 type];
                              v37 = isRestoreSupportedForCharacteristic();

                              if (!v37)
                              {
                                goto LABEL_39;
                              }

                              if (v35 && ([v35 isEqual:MEMORY[0x277CBEC28]] & 1) == 0)
                              {
                                v67 = objc_autoreleasePoolPush();
                                selfCopy2 = self;
                                v69 = HMFGetOSLogHandle();
                                if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                                {
                                  v70 = HMFGetLogIdentifier();
                                  *buf = 138543618;
                                  v119 = v70;
                                  v120 = 2112;
                                  v121 = v33;
                                  _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_INFO, "%{public}@Did not create write request for characteristic because it was ON prior to trigger, %@", buf, 0x16u);
                                }

                                objc_autoreleasePoolPop(v67);
                              }

                              else
                              {
                                authorizationData = [v33 authorizationData];
                                v39 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v33 value:MEMORY[0x277CBEC28] authorizationData:authorizationData type:1];

                                writeRequests = [(HMDEventTriggerExecutionSession *)self writeRequests];
                                [writeRequests setObject:v39 forKey:v33];

LABEL_39:
                                v41 = objc_autoreleasePoolPush();
                                selfCopy3 = self;
                                v43 = HMFGetOSLogHandle();
                                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                                {
                                  v44 = HMFGetLogIdentifier();
                                  v45 = v44;
                                  *buf = 138544130;
                                  v46 = "Did not create";
                                  if (v37)
                                  {
                                    v46 = "Created";
                                  }

                                  v119 = v44;
                                  v47 = "is not";
                                  if (v37)
                                  {
                                    v47 = "is";
                                  }

                                  v120 = 2080;
                                  v121 = v46;
                                  v122 = 2080;
                                  v123 = v47;
                                  v124 = 2112;
                                  v125 = v33;
                                  _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@%s write request for characteristic because characteristic type %s supported for Duration Event, %@", buf, 0x2Au);
                                }

                                objc_autoreleasePoolPop(v41);
                                v48 = [(HMDEventTriggerExecutionSession *)selfCopy3 valueInActionSetWriteResponse:obj actionSetUUID:v91 accUUID:v97 serviceID:v101 characteristicID:v30];
                                if (v48)
                                {
                                  v49 = [HMDCharacteristicEventModel alloc];
                                  uUID = [MEMORY[0x277CCAD78] UUID];
                                  v51 = [(HMDBackingStoreModelObject *)v49 initWithUUID:uUID];

                                  [(HMDCharacteristicEventModel *)v51 setAccessory:v97];
                                  v52 = HAPInstanceIDFromValue();
                                  [(HMDCharacteristicEventModel *)v51 setServiceID:v52];

                                  v53 = HAPInstanceIDFromValue();
                                  [(HMDCharacteristicEventModel *)v51 setCharacteristicID:v53];

                                  [(HMDCharacteristicEventModel *)v51 setEventValue:v48];
                                  v54 = [(HMDCharacteristicEvent *)[HMDCharacteristicMonitorEvent alloc] initWithModel:v51 home:home];
                                  if (v54)
                                  {
                                    [array addObject:v54];
                                    self = selfCopy;
                                  }

                                  else
                                  {
                                    v63 = objc_autoreleasePoolPush();
                                    v64 = selfCopy3;
                                    v65 = HMFGetOSLogHandle();
                                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                                    {
                                      HMFGetLogIdentifier();
                                      v66 = v88 = v63;
                                      *buf = 138543618;
                                      v119 = v66;
                                      v120 = 2112;
                                      v121 = v33;
                                      _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@Failed to create monitor event for %@", buf, 0x16u);

                                      v63 = v88;
                                    }

                                    objc_autoreleasePoolPop(v63);
                                    self = selfCopy;
                                  }
                                }

                                else
                                {
                                  v59 = objc_autoreleasePoolPush();
                                  v60 = selfCopy3;
                                  v61 = HMFGetOSLogHandle();
                                  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                                  {
                                    v62 = HMFGetLogIdentifier();
                                    *buf = 138543618;
                                    v119 = v62;
                                    v120 = 2112;
                                    v121 = v33;
                                    _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@No value reported in action set result, Not creating the monitor event for %@", buf, 0x16u);
                                  }

                                  objc_autoreleasePoolPop(v59);
                                  self = selfCopy;
                                }

                                v27 = v101;
                              }

                              goto LABEL_60;
                            }

                            v55 = objc_autoreleasePoolPush();
                            selfCopy4 = self;
                            v57 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                            {
                              v58 = HMFGetLogIdentifier();
                              *buf = 138544130;
                              v119 = v58;
                              v120 = 2112;
                              v121 = v97;
                              v122 = 2112;
                              v123 = v27;
                              v124 = 2112;
                              v125 = v30;
                              _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Could not find the characteristic %@/%@/%@", buf, 0x2Au);
                            }

                            objc_autoreleasePoolPop(v55);
LABEL_60:

                            ++v29;
                          }

                          while (v100 != v29);
                          v71 = [v94 countByEnumeratingWithState:&v102 objects:v126 count:16];
                          v100 = v71;
                        }

                        while (v71);
                      }

                      v26 = v87 + 1;
                      v22 = v84;
                    }

                    while (v87 + 1 != v86);
                    v86 = [v84 countByEnumeratingWithState:&v106 objects:v127 count:16];
                    if (!v86)
                    {
                      v6 = v76;
                      v9 = v77;
                      v14 = v80;
                      break;
                    }
                  }
                }

LABEL_69:

                v10 = v78;
              }

              v11 = v82 + 1;
            }

            while (v82 + 1 != v81);
            v81 = [v9 countByEnumeratingWithState:&v110 objects:v128 count:16];
          }

          while (v81);
        }

        v7 = v75 + 1;
      }

      while (v75 + 1 != v74);
      v74 = [obj countByEnumeratingWithState:&v114 objects:v129 count:16];
    }

    while (v74);
  }

  return array;
}

- (void)_activateEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = eventsCopy;
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        msgDispatcher = [eventTrigger msgDispatcher];
        workQueue = [(HMDEventTriggerSession *)self workQueue];
        [v10 configure:eventTrigger messageDispatcher:msgDispatcher queue:workQueue delegate:self];

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke;
        v14[3] = &unk_2797358C8;
        v14[4] = self;
        v14[5] = v10;
        [v10 _activate:3 completionHandler:v14];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

void __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke_2;
    block[3] = &unk_279734960;
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, block);
  }
}

uint64_t __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Activating event failed with error %@, %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _callExecutionComplete:*(a1 + 40)];
}

- (void)_activateMonitoringEvents
{
  monitorEvents = [(HMDEventTriggerExecutionSession *)self monitorEvents];
  [(HMDEventTriggerExecutionSession *)self _activateEvents:monitorEvents];
}

- (void)_activateDurationEvents
{
  durationEndEvents = [(HMDEventTriggerExecutionSession *)self durationEndEvents];
  [(HMDEventTriggerExecutionSession *)self _activateEvents:durationEndEvents];
}

- (void)_handleActionSetExecutionResponse:(id)response actionSetError:(id)error completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  completionCopy = completion;
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  [eventTrigger triggerFired];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *v50 = 138543874;
    *&v50[4] = v15;
    *&v50[12] = 2112;
    *&v50[14] = errorCopy;
    v51 = 2112;
    v52 = responseCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Action set execution responded with error %@ and response %@", v50, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = _Block_copy(completionCopy);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, errorCopy);
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
    {
      code = [errorCopy code];

      if (code == 64)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *v50 = 138543362;
          *&v50[4] = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Action set has resulted in partial success, proceeding with successful ones", v50, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v33 = selfCopy;
    v34 = errorCopy;
LABEL_22:
    [(HMDEventTriggerExecutionSession *)v33 _callExecutionComplete:v34, *v50, *&v50[8]];
    goto LABEL_27;
  }

LABEL_11:
  endEvents = [(HMDEventTriggerExecutionSession *)selfCopy endEvents];
  v25 = [endEvents count];

  if (!v25)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      objc_autoreleasePoolPop(v35);
      v33 = v36;
      v34 = 0;
      goto LABEL_22;
    }

    v38 = HMFGetLogIdentifier();
    *v50 = 138543362;
    *&v50[4] = v38;
    v39 = "%{public}@There are no end events, declaring execution is complete";
LABEL_20:
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, v39, v50, 0xCu);

    goto LABEL_21;
  }

  v26 = [(HMDEventTriggerExecutionSession *)selfCopy _monitoringEventsFromActionSetResponse:responseCopy];
  [(HMDEventTriggerExecutionSession *)selfCopy setMonitorEvents:v26];

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    monitorEvents = [(HMDEventTriggerExecutionSession *)v28 monitorEvents];
    *v50 = 138543618;
    *&v50[4] = v30;
    *&v50[12] = 2112;
    *&v50[14] = monitorEvents;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Created monitoring events %@", v50, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  writeRequests = [(HMDEventTriggerExecutionSession *)v28 writeRequests];
  if (![writeRequests count])
  {
    mediaProfiles = [(HMDEventTriggerExecutionSession *)v28 mediaProfiles];
    v41 = [mediaProfiles count];

    if (v41)
    {
      goto LABEL_24;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v28;
    v37 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v38 = HMFGetLogIdentifier();
    *v50 = 138543362;
    *&v50[4] = v38;
    v39 = "%{public}@There are no characteristic writes or media profiles playback actions to perform upon restore, declaring execution is complete";
    goto LABEL_20;
  }

LABEL_24:
  v42 = objc_autoreleasePoolPush();
  v43 = v28;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    *v50 = 138543362;
    *&v50[4] = v45;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@There are end events with the execution session, activating them", v50, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  [(HMDEventTriggerExecutionSession *)v43 _activateDurationEvents];
  [(HMDEventTriggerExecutionSession *)v43 setExecutionState:4];
  v46 = objc_alloc(MEMORY[0x277D0F920]);
  v47 = [v46 initWithTimeInterval:1 options:startCharacteristicsMonitorWaitPeriod];
  [(HMDEventTriggerExecutionSession *)v43 setStartCharacteristicsMonitorTimer:v47];

  startCharacteristicsMonitorTimer = [(HMDEventTriggerExecutionSession *)v43 startCharacteristicsMonitorTimer];
  [startCharacteristicsMonitorTimer setDelegate:v43];

  startCharacteristicsMonitorTimer2 = [(HMDEventTriggerExecutionSession *)v43 startCharacteristicsMonitorTimer];
  [startCharacteristicsMonitorTimer2 resume];

LABEL_27:
}

- (void)_directlyExecuteActionSetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(HMDEventTriggerExecutionSession *)self setActionSetExecutionInProgress:1];
  [(HMDEventTriggerExecutionSession *)self setSecureTriggerConfirmationTimer:0];
  objc_initWeak(&location, self);
  eventTrigger = [(HMDEventTriggerSession *)self eventTrigger];
  actionSets = [(HMDEventTriggerExecutionSession *)self actionSets];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HMDEventTriggerExecutionSession__directlyExecuteActionSetsWithCompletionHandler___block_invoke;
  v8[3] = &unk_2797355F8;
  objc_copyWeak(&v10, &location);
  v7 = handlerCopy;
  v9 = v7;
  [eventTrigger _executeActionSets:actionSets captureCurrentState:1 completionHandler:v8];

  [(HMDEventTriggerExecutionSession *)self setExecutionState:3];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __83__HMDEventTriggerExecutionSession__directlyExecuteActionSetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__HMDEventTriggerExecutionSession__directlyExecuteActionSetsWithCompletionHandler___block_invoke_69;
    v13[3] = &unk_279734578;
    v13[4] = v8;
    v14 = v6;
    v15 = v5;
    v16 = *(a1 + 32);
    dispatch_async(v9, v13);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self while executing action set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_addEvent:(id)event causingDevice:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  deviceCopy = device;
  if ([(HMDEventTriggerExecutionSession *)self executionState]> 2)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMDEventTriggerExecutionStateAsString([(HMDEventTriggerExecutionSession *)selfCopy executionState]);
      v32 = 138543618;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Current state has moved beyond waiting for user response: %@", &v32, 0x16u);
    }

    v15 = v16;
    goto LABEL_9;
  }

  causingDevices = [(HMDEventTriggerExecutionSession *)self causingDevices];
  v9 = [causingDevices containsObject:deviceCopy];

  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v32 = 138543618;
      v33 = v14;
      v34 = 2112;
      v35 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Device is already in the causing devices list, %@", &v32, 0x16u);
    }

    v15 = v10;
LABEL_9:
    objc_autoreleasePoolPop(v15);
    goto LABEL_17;
  }

  if (v13)
  {
    v21 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v21;
    v34 = 2112;
    v35 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding device to ask for confirmation, %@", &v32, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  causingDevices2 = [(HMDEventTriggerExecutionSession *)selfCopy2 causingDevices];
  [causingDevices2 addObject:deviceCopy];

  triggerEvents = [(HMDEventTriggerExecutionSession *)selfCopy2 triggerEvents];
  v24 = [triggerEvents containsObject:eventCopy];

  if ((v24 & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy2;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v32 = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = eventCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Adding event as an additional event, %@", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    triggerEvents2 = [(HMDEventTriggerExecutionSession *)v26 triggerEvents];
    [triggerEvents2 addObject:eventCopy];
  }

  userConfirmationSession = [(HMDEventTriggerExecutionSession *)selfCopy2 userConfirmationSession];
  [userConfirmationSession askForUserPermission:deviceCopy];

  secureTriggerConfirmationTimer = [(HMDEventTriggerExecutionSession *)selfCopy2 secureTriggerConfirmationTimer];
  [secureTriggerConfirmationTimer resume];

LABEL_17:
}

- (void)addEvent:(id)event causingDevice:(id)device
{
  eventCopy = event;
  deviceCopy = device;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDEventTriggerExecutionSession_addEvent_causingDevice___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = eventCopy;
  v13 = deviceCopy;
  v9 = deviceCopy;
  v10 = eventCopy;
  dispatch_async(workQueue, block);
}

- (void)_userResponse:(unint64_t)response device:(id)device completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  secureTriggerConfirmationTimer = [(HMDEventTriggerExecutionSession *)self secureTriggerConfirmationTimer];

  if (!secureTriggerConfirmationTimer)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v48 = 138543362;
      v49 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@There is no confirmation timer running, not processing the confirmation", &v48, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v17 = _Block_copy(handlerCopy);
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 58;
    goto LABEL_11;
  }

  actionSetExecutionInProgress = [(HMDEventTriggerExecutionSession *)self actionSetExecutionInProgress];
  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (actionSetExecutionInProgress)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v48 = 138543362;
      v49 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Action set execution is already in progress", &v48, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v17 = _Block_copy(handlerCopy);
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 15;
LABEL_11:
    v24 = [v18 hmErrorWithCode:v19];
    v17[2](v17, v24);

LABEL_12:
    goto LABEL_13;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = HMDUserConfirmationResponseAsString(response);
    v48 = 138543874;
    v49 = v25;
    v50 = 2112;
    v51 = deviceCopy;
    v52 = 2112;
    v53 = v26;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received response from %@ with %@", &v48, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (response > 2)
  {
    if (response == 3)
    {
      v42 = objc_autoreleasePoolPush();
      v35 = selfCopy2;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        v48 = 138543362;
        v49 = v44;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@User confirms not to execute trigger", &v48, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      v45 = _Block_copy(handlerCopy);
      v46 = v45;
      if (v45)
      {
        (*(v45 + 2))(v45, 0);
      }

      v40 = MEMORY[0x277CCA9B8];
      v41 = 3001;
      goto LABEL_35;
    }

    if (response != 4)
    {
      goto LABEL_13;
    }

LABEL_24:
    causingDevices = [(HMDEventTriggerExecutionSession *)selfCopy2 causingDevices];
    [causingDevices removeObject:deviceCopy];

    causingDevices2 = [(HMDEventTriggerExecutionSession *)selfCopy2 causingDevices];
    v33 = [causingDevices2 count];

    if (v33)
    {
      goto LABEL_13;
    }

    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy2;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v48 = 138543362;
      v49 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@None of the devices have answered the dialog, ending the session", &v48, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v38 = _Block_copy(handlerCopy);
    v39 = v38;
    if (v38)
    {
      (*(v38 + 2))(v38, 0);
    }

    v40 = MEMORY[0x277CCA9B8];
    v41 = 3000;
LABEL_35:
    v47 = [v40 hmInternalErrorWithCode:v41];
    [(HMDEventTriggerExecutionSession *)v35 _callExecutionComplete:v47];

    goto LABEL_13;
  }

  if (response == 1)
  {
    goto LABEL_24;
  }

  if (response == 2)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy2;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v48 = 138543362;
      v49 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@User confirms to execute trigger", &v48, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [(HMDEventTriggerExecutionSession *)v28 _removeUserDialog];
    [(HMDEventTriggerExecutionSession *)v28 _directlyExecuteActionSetsWithCompletionHandler:handlerCopy];
  }

LABEL_13:
}

- (void)userResponse:(unint64_t)response device:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HMDEventTriggerExecutionSession_userResponse_device_completionHandler___block_invoke;
  v13[3] = &unk_279734820;
  v13[4] = self;
  v14 = deviceCopy;
  v15 = handlerCopy;
  responseCopy = response;
  v11 = handlerCopy;
  v12 = deviceCopy;
  dispatch_async(workQueue, v13);
}

- (id)durationEndEvents
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  endEvents = [(HMDEventTriggerExecutionSession *)self endEvents];
  v5 = [endEvents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(endEvents);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
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

        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [endEvents countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)postponeRestoreIfWaitingForEndEvent
{
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDEventTriggerExecutionSession_postponeRestoreIfWaitingForEndEvent__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__70__HMDEventTriggerExecutionSession_postponeRestoreIfWaitingForEndEvent__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) executionState];
  if (result == 4)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Waiting for end event, received request to postpone the end event", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return [*(a1 + 32) _activateDurationEvents];
  }

  return result;
}

- (void)cancelSessionIfWaitingForUserResponse
{
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDEventTriggerExecutionSession_cancelSessionIfWaitingForUserResponse__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __72__HMDEventTriggerExecutionSession_cancelSessionIfWaitingForUserResponse__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) executionState] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Waiting for user response, received request to cancel the session", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v6 _callExecutionComplete:v7];
  }
}

- (BOOL)containsSecureActionSet
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  actionSets = [(HMDEventTriggerExecutionSession *)self actionSets];
  v3 = [actionSets countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(actionSets);
        }

        if ([*(*(&v7 + 1) + 8 * i) containsSecureCharacteristic])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [actionSets countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_executeTriggerAfterEvaluatingCondition:(id)condition
{
  v55 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v8;
    v53 = 2112;
    v54 = conditionCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to evaluate the trigger After evaluating : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (conditionCopy)
  {
    v49 = @"THIS_OBJECT";
    predicateUtilities = [(HMDEventTriggerExecutionSession *)selfCopy predicateUtilities];
    v50 = predicateUtilities;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v14;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Evaluating the trigger predicate using %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [conditionCopy allowEvaluation];
    predicateUtilities2 = [(HMDEventTriggerExecutionSession *)v12 predicateUtilities];
    v16 = [conditionCopy evaluateWithObject:predicateUtilities2 substitutionVariables:v10];

    if ((v16 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v12;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v38;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Trigger condition evaluated to NO, not firing action set", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3006];
      [(HMDEventTriggerExecutionSession *)v36 _callExecutionComplete:v39];

      goto LABEL_27;
    }
  }

  causingDevices = [(HMDEventTriggerExecutionSession *)selfCopy causingDevices];
  if ([causingDevices count])
  {
    containsSecureActionSet = [(HMDEventTriggerExecutionSession *)selfCopy containsSecureActionSet];

    if (containsSecureActionSet)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Location triggers that contain secure action sets should ask for a confirmation before execution", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      causingDevices2 = [(HMDEventTriggerExecutionSession *)v20 causingDevices];
      v24 = [causingDevices2 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v45;
        do
        {
          v27 = 0;
          do
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(causingDevices2);
            }

            v28 = *(*(&v44 + 1) + 8 * v27);
            userConfirmationSession = [(HMDEventTriggerExecutionSession *)v20 userConfirmationSession];
            [userConfirmationSession askForUserPermission:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [causingDevices2 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v25);
      }

      v30 = [HMDTriggerConfirmationTimer alloc];
      sessionID = [(HMDEventTriggerSession *)v20 sessionID];
      v32 = [(HMDTriggerConfirmationTimer *)v30 initWithExecutionSessionID:sessionID timeoutInterval:secureTriggerUserResponseTimeoutInSeconds];
      [(HMDEventTriggerExecutionSession *)v20 setSecureTriggerConfirmationTimer:v32];

      secureTriggerConfirmationTimer = [(HMDEventTriggerExecutionSession *)v20 secureTriggerConfirmationTimer];
      [secureTriggerConfirmationTimer setDelegate:v20];

      secureTriggerConfirmationTimer2 = [(HMDEventTriggerExecutionSession *)v20 secureTriggerConfirmationTimer];
      [secureTriggerConfirmationTimer2 resume];

      [(HMDEventTriggerExecutionSession *)v20 setExecutionState:2];
      goto LABEL_27;
    }
  }

  else
  {
  }

  v40 = objc_autoreleasePoolPush();
  v41 = selfCopy;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v43;
    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Directly executing action set as user confirmation is not required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  [(HMDEventTriggerExecutionSession *)v41 _directlyExecuteActionSetsWithCompletionHandler:0];
LABEL_27:
}

- (void)_evaluateFiringTrigger
{
  v84 = *MEMORY[0x277D85DE8];
  recurrences = [(HMDEventTriggerExecutionSession *)self recurrences];
  v3 = [recurrences count];

  if (!v3)
  {
    goto LABEL_6;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [currentCalendar components:512 fromDate:date];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    recurrences2 = [(HMDEventTriggerExecutionSession *)selfCopy recurrences];
    *buf = 138543874;
    v79 = v10;
    v80 = 2112;
    v81 = recurrences2;
    v82 = 2112;
    v83 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@recurrences : %@, dateComponents: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  recurrences3 = [(HMDEventTriggerExecutionSession *)selfCopy recurrences];
  v13 = [recurrences3 containsObject:v6];

  if (v13)
  {

LABEL_6:
    evaluationCondition = [(HMDEventTriggerExecutionSession *)self evaluationCondition];

    if (evaluationCondition)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      predicateUtilities = [(HMDEventTriggerExecutionSession *)self predicateUtilities];
      evaluationCondition2 = [(HMDEventTriggerExecutionSession *)self evaluationCondition];
      v75 = 0;
      v56 = [predicateUtilities rewritePredicate:evaluationCondition2 currentCharacteristicInPredicate:&v75 characteristicsToRead:strongToStrongObjectsMapTable homePresence:0];
      v55 = v75;

      v17 = objc_autoreleasePoolPush();
      val = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        evaluationCondition3 = [(HMDEventTriggerExecutionSession *)val evaluationCondition];
        *buf = 138543874;
        v79 = v19;
        v80 = 2112;
        v81 = evaluationCondition3;
        v82 = 2112;
        v83 = v56;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Evaluation condition : %@, Re-written predicate : %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      if ([strongToStrongObjectsMapTable count])
      {
        array = [MEMORY[0x277CBEB18] array];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = strongToStrongObjectsMapTable;
        v22 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
        if (v22)
        {
          v59 = *v72;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v72 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v71 + 1) + 8 * i);
              v25 = [obj objectForKey:{v24, v55}];
              v26 = objc_autoreleasePoolPush();
              v27 = val;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                name = [v24 name];
                *buf = 138543618;
                v79 = v29;
                v80 = 2112;
                v81 = name;
                _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Going to read characteristics from accessory %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v26);
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v31 = v25;
              v32 = [v31 countByEnumeratingWithState:&v67 objects:v76 count:16];
              if (v32)
              {
                v33 = *v68;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v68 != v33)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v35 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v67 + 1) + 8 * j)];
                    [array addObject:v35];
                  }

                  v32 = [v31 countByEnumeratingWithState:&v67 objects:v76 count:16];
                }

                while (v32);
              }
            }

            v22 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
          }

          while (v22);
        }

        objc_initWeak(&location, val);
        eventTrigger = [(HMDEventTriggerSession *)val eventTrigger];
        home = [eventTrigger home];
        v38 = [(HMDEventTriggerExecutionSession *)val description];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __57__HMDEventTriggerExecutionSession__evaluateFiringTrigger__block_invoke;
        v62[3] = &unk_279735248;
        objc_copyWeak(&v65, &location);
        v39 = array;
        v63 = v39;
        v64 = v56;
        [home readCharacteristicValues:v39 source:3 sourceForLogging:v38 qualityOfService:-1 withCompletionHandler:v62];

        [(HMDEventTriggerExecutionSession *)val setExecutionState:1];
        v40 = objc_autoreleasePoolPush();
        v41 = val;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          v44 = [obj count];
          *buf = 138543618;
          v79 = v43;
          v80 = 2048;
          v81 = v44;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Waiting to read [%lu] characterics before executing the trigger", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        objc_destroyWeak(&v65);
        objc_destroyWeak(&location);
      }

      else
      {
        [(HMDEventTriggerExecutionSession *)val _executeTriggerAfterEvaluatingCondition:v56];
      }
    }

    else
    {
      [(HMDEventTriggerExecutionSession *)self _executeTriggerAfterEvaluatingCondition:0];
    }

    v50 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v54 = HMDEventTriggerExecutionStateAsString([(HMDEventTriggerExecutionSession *)selfCopy2 executionState]);
      *buf = 138543618;
      v79 = v53;
      v80 = 2112;
      v81 = v54;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@EventTrigger Evaluation State : [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    return;
  }

  v45 = objc_autoreleasePoolPush();
  v46 = selfCopy;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    *buf = 138543362;
    v79 = v48;
    _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Trigger not fired since recurrence does not match", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v45);
  v49 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3005];
  [(HMDEventTriggerExecutionSession *)v46 _callExecutionComplete:v49];
}

void __57__HMDEventTriggerExecutionSession__evaluateFiringTrigger__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v24 = v11;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to fulfill read requests before evaluating trigger due to error (%@), (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 _callExecutionComplete:v5];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (WeakRetained)
    {
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 32);
        *buf = 138543874;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Finished read requests %@ with response %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [v14 workQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __57__HMDEventTriggerExecutionSession__evaluateFiringTrigger__block_invoke_64;
      v21[3] = &unk_2797359B0;
      v21[4] = v14;
      v22 = *(a1 + 40);
      dispatch_async(v18, v21);
    }

    else
    {
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Execution session is no more valid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

- (void)evaluateFiringTrigger
{
  workQueue = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDEventTriggerExecutionSession_evaluateFiringTrigger__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)setExecutionState:(unint64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDEventTriggerExecutionStateAsString([(HMDEventTriggerExecutionSession *)selfCopy executionState]);
    v10 = HMDEventTriggerExecutionStateAsString(state);
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting the execution from %{public}@ to %{public}@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  selfCopy->_executionState = state;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v19.receiver = self;
  v19.super_class = HMDEventTriggerExecutionSession;
  v4 = [(HMDEventTriggerSession *)&v19 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  triggerEvents = [(HMDEventTriggerExecutionSession *)self triggerEvents];
  v7 = [triggerEvents description];
  [v5 setObject:v7 forKeyedSubscript:@"triggering event"];

  monitorEvents = [(HMDEventTriggerExecutionSession *)self monitorEvents];
  v9 = [monitorEvents description];
  [v5 setObject:v9 forKeyedSubscript:@"monitored events"];

  [(HMDEventTriggerExecutionSession *)self restoreInProgress];
  v10 = HMFBooleanToString();
  [v5 setObject:v10 forKeyedSubscript:@"restore in progress"];

  writeRequests = [(HMDEventTriggerExecutionSession *)self writeRequests];
  v12 = [writeRequests description];
  [v5 setObject:v12 forKeyedSubscript:@"restore writes"];

  mediaProfiles = [(HMDEventTriggerExecutionSession *)self mediaProfiles];
  v14 = [mediaProfiles description];
  [v5 setObject:v14 forKeyedSubscript:@"pause media profiles"];

  secureTriggerConfirmationTimer = [(HMDEventTriggerExecutionSession *)self secureTriggerConfirmationTimer];
  v16 = [secureTriggerConfirmationTimer description];
  [v5 setObject:v16 forKeyedSubscript:@"trigger confirmation timer"];

  v17 = objc_msgSend_copy(v5);

  return v17;
}

- (BOOL)needsUserConfirmation
{
  causingDevices = [(HMDEventTriggerExecutionSession *)self causingDevices];
  v3 = [causingDevices count] != 0;

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  logString = [(HMDEventTriggerSession *)self logString];
  v4 = [v2 stringWithFormat:@"[Trigger Execution Session: %@]", logString];

  return v4;
}

- (HMDEventTriggerExecutionSession)initWithEventTrigger:(id)trigger predicateUtilities:(id)utilities triggerEvent:(id)event causingDevice:(id)device workQueue:(id)queue actionSets:(id)sets evaluationCondition:(id)condition recurrences:(id)self0 endEvents:(id)self1 msgDispatcher:(id)self2
{
  v56[1] = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  obj = utilities;
  utilitiesCopy = utilities;
  eventCopy = event;
  deviceCopy = device;
  queueCopy = queue;
  setsCopy = sets;
  conditionCopy = condition;
  recurrencesCopy = recurrences;
  eventsCopy = events;
  v21 = deviceCopy;
  dispatcherCopy = dispatcher;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v54.receiver = self;
  v54.super_class = HMDEventTriggerExecutionSession;
  v53 = queueCopy;
  v24 = [(HMDEventTriggerSession *)&v54 initWithSessionID:uUID eventTrigger:triggerCopy workQueue:queueCopy msgDispatcher:dispatcherCopy];

  if (v24)
  {
    v56[0] = eventCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    v26 = [v25 mutableCopy];
    triggerEvents = v24->_triggerEvents;
    v24->_triggerEvents = v26;

    objc_storeStrong(&v24->_predicateUtilities, obj);
    objc_storeStrong(&v24->_actionSets, sets);
    objc_storeStrong(&v24->_evaluationCondition, condition);
    objc_storeStrong(&v24->_recurrences, recurrences);
    objc_storeStrong(&v24->_endEvents, events);
    v24->_restoreInProgress = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    writeRequests = v24->_writeRequests;
    v24->_writeRequests = strongToStrongObjectsMapTable;

    v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mediaProfiles = v24->_mediaProfiles;
    v24->_mediaProfiles = v30;

    v24->_executionState = 0;
    [MEMORY[0x277D17DC0] currentTime];
    v24->_executionStartTime = v32;
    if (v21)
    {
      v55 = v21;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      v34 = [v33 mutableCopy];
      causingDevices = v24->_causingDevices;
      v24->_causingDevices = v34;

      v36 = [HMDEventTriggerDevice alloc];
      home = [triggerCopy home];
      v38 = [(HMDEventTriggerDevice *)v36 initWithCurrentDeviceForHome:home];

      v39 = [HMDEventTriggerUserConfirmationSession alloc];
      [(HMDEventTriggerSession *)v24 sessionID];
      v41 = v40 = v21;
      v42 = [(HMDEventTriggerUserConfirmationSession *)v39 initWithSessionID:v41 eventTrigger:triggerCopy workQueue:v53 msgDispatcher:dispatcherCopy requestingDevice:v38];
      userConfirmationSession = v24->_userConfirmationSession;
      v24->_userConfirmationSession = v42;

      v21 = v40;
      [(HMDEventTriggerUserConfirmationSession *)v24->_userConfirmationSession setExecutionSession:v24];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v24 selector:sel_handleSessionPlaybackStateUpdatedNotification_ name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];
  }

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_183062 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_183062, &__block_literal_global_183063);
  }

  v3 = logCategory__hmf_once_v1_183064;

  return v3;
}

uint64_t __46__HMDEventTriggerExecutionSession_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_183064;
  logCategory__hmf_once_v1_183064 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end