@interface HMDHAPAccessoryRemoteOperationTask
- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list;
- (BOOL)_buildMessageAccessoryListFromAccessoryRequestMap:(id)map accessoryList:(id)list;
- (BOOL)_buildMessageAccessoryListFromRequests:(id)requests accessoryList:(id)list;
- (HMDHAPAccessoryRemoteOperationTask)initWithContext:(id)context remoteMessageName:(id)name requests:(id)requests delegateDevice:(id)device timeout:(double)timeout completion:(id)completion;
- (id)_remoteMessageFromAccessoryRequestMap:(id)map;
- (id)activityRequestEventName;
- (void)_receivedRemotelyChangedCharacteristicResponses:(id)responses message:(id)message;
- (void)execute;
@end

@implementation HMDHAPAccessoryRemoteOperationTask

- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list
{
  requestCopy = request;
  listCopy = list;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)_buildMessageAccessoryListFromRequests:(id)requests accessoryList:(id)list
{
  v46 = *MEMORY[0x277D85DE8];
  obj = requests;
  listCopy = list;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v42;
    v31 = *MEMORY[0x277CD2678];
    v33 = *v42;
    selfCopy = self;
    do
    {
      v10 = 0;
      v35 = v7;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        characteristic = [v11 characteristic];
        service = [v11 service];
        accessory = [v11 accessory];
        v15 = accessory;
        if (accessory)
        {
          v16 = service == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && characteristic != 0)
        {
          v18 = v8;
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          dictionary = [listCopy hmf_mutableDictionaryForKey:uUIDString];
          if (!dictionary)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            [listCopy setObject:dictionary forKeyedSubscript:uUIDString];
          }

          context = [(HMDHAPAccessoryTask *)self context];
          isShortActionOperation = [context isShortActionOperation];

          v24 = v18;
          if (isShortActionOperation)
          {
            [listCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v31];
            v24 = 1;
          }

          if ([v15 hasBTLELink] && (objc_msgSend(v15, "hasIPLink") & 1) == 0)
          {
            v40 = 0;
            v39 = 5;
            home = [v15 home];
            identifier = [v15 identifier];
            v38 = 0;
            [home retrieveStateForTrackedAccessory:identifier stateNumber:0 isReachable:&v40 linkQuality:&v39 lastSeen:&v38];
            v32 = v38;

            if (v40 == 1)
            {
              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
              v28 = [listCopy objectForKeyedSubscript:uUIDString];
              [v28 setObject:v27 forKeyedSubscript:@"kAccessoryLinkQuality"];

              v29 = [listCopy objectForKeyedSubscript:uUIDString];
              [v29 setObject:v32 forKeyedSubscript:@"kAccessoryLastSeen"];
            }
          }

          self = selfCopy;
          v8 = [(HMDHAPAccessoryRemoteOperationTask *)selfCopy _appendServiceListWithRequest:v11 serviceList:dictionary]| v24;

          v9 = v33;
          v7 = v35;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)_buildMessageAccessoryListFromAccessoryRequestMap:(id)map accessoryList:(id)list
{
  v20 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  listCopy = list;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [mapCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(mapCopy);
        }

        v13 = [mapCopy objectForKey:*(*(&v15 + 1) + 8 * i)];
        v10 |= [(HMDHAPAccessoryRemoteOperationTask *)self _buildMessageAccessoryListFromRequests:v13 accessoryList:listCopy];
      }

      v9 = [mapCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

- (id)_remoteMessageFromAccessoryRequestMap:(id)map
{
  v52[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  mapCopy = map;
  dictionary = [v4 dictionary];
  v7 = [(HMDHAPAccessoryRemoteOperationTask *)self _buildMessageAccessoryListFromAccessoryRequestMap:mapCopy accessoryList:dictionary];

  if ([dictionary count])
  {
    if (v7)
    {
      v8 = *MEMORY[0x277CD2678];
      v9 = 1;
    }

    else
    {
      context = [(HMDHAPAccessoryTask *)self context];
      requestMessage = [context requestMessage];
      v8 = *MEMORY[0x277CD2678];
      v9 = [requestMessage BOOLForKey:*MEMORY[0x277CD2678]];
    }

    context2 = [(HMDHAPAccessoryTask *)self context];
    requestMessage2 = [context2 requestMessage];
    v15 = [requestMessage2 uuidForKey:*MEMORY[0x277CD2050]];

    v16 = (v15 != 0) | v9;
    v48 = MEMORY[0x277CBEB38];
    v50 = dictionary;
    v51[0] = *MEMORY[0x277CCE7A8];
    v47 = objc_msgSend_copy(dictionary);
    v52[0] = v47;
    v51[1] = *MEMORY[0x277CD0640];
    context3 = [(HMDHAPAccessoryTask *)self context];
    homeUniqueIdentifier = [context3 homeUniqueIdentifier];
    uUIDString = [homeUniqueIdentifier UUIDString];
    v52[1] = uUIDString;
    v51[2] = v8;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];
    v52[2] = v20;
    v51[3] = @"kDoNotForwardMessageKey";
    v21 = MEMORY[0x277CCABB0];
    delegateDevice = [(HMDHAPAccessoryRemoteOperationTask *)self delegateDevice];
    v23 = [v21 numberWithInt:delegateDevice != 0];
    v52[3] = v23;
    v51[4] = @"kRequestIdentifierKey";
    requestIdentifier = [(HMDHAPAccessoryTask *)self requestIdentifier];
    uUIDString2 = [requestIdentifier UUIDString];
    v52[4] = uUIDString2;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:5];
    v49 = [v48 dictionaryWithDictionary:v26];

    remoteMessageName = [(HMDHAPAccessoryRemoteOperationTask *)self remoteMessageName];
    context4 = [(HMDHAPAccessoryTask *)self context];
    requestMessage3 = [context4 requestMessage];
    name = [requestMessage3 name];
    LODWORD(homeUniqueIdentifier) = [name isEqualToString:@"kCharacteristicReadRequestKey"];

    if (homeUniqueIdentifier)
    {
      context5 = [(HMDHAPAccessoryTask *)self context];
      requestMessage4 = [context5 requestMessage];
      name2 = [requestMessage4 name];

      context6 = [(HMDHAPAccessoryTask *)self context];
      requestMessage5 = [context6 requestMessage];
      messagePayload = [requestMessage5 messagePayload];
      v37 = v49;
      [v49 addEntriesFromDictionary:messagePayload];

      remoteMessageName = name2;
    }

    else
    {
      v37 = v49;
    }

    dictionary = v50;
    if ([(HMDHAPAccessoryTask *)self supportsMultiPartResponse])
    {
      v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHAPAccessoryTask supportsMultiPartResponse](self, "supportsMultiPartResponse")}];
      [v37 setObject:v38 forKeyedSubscript:@"kMultiPartResponseKey"];
    }

    context7 = [(HMDHAPAccessoryTask *)self context];
    qualityOfService = [context7 qualityOfService];

    if (qualityOfService <= 17)
    {
      v41 = 17;
    }

    else
    {
      v41 = qualityOfService;
    }

    v42 = MEMORY[0x277D0F848];
    context8 = [(HMDHAPAccessoryTask *)self context];
    homeMessageDestination = [context8 homeMessageDestination];
    v45 = objc_msgSend_copy(v37);
    v10 = [v42 messageWithName:remoteMessageName qualityOfService:v41 destination:homeMessageDestination payload:v45];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)activityRequestEventName
{
  v2 = MEMORY[0x277CCACA8];
  operationName = [(HMDHAPAccessoryTask *)self operationName];
  capitalizedString = [operationName capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryRemoteOperationTask.Forward%@sToResident", capitalizedString];

  return v5;
}

- (void)_receivedRemotelyChangedCharacteristicResponses:(id)responses message:(id)message
{
  responsesCopy = responses;
  messageCopy = message;
  workQueue = [(HMDHAPAccessoryTask *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([responsesCopy count] && -[HMDHAPAccessoryTask supportsMultiPartResponse](self, "supportsMultiPartResponse") && !-[HMDHAPAccessoryRemoteOperationTask isFinished](self, "isFinished"))
  {
    completion = [(HMDHAPAccessoryTask *)self completion];
    (completion)[2](completion, responsesCopy);

    if ([(HMDHAPAccessoryTask *)self allResponsesReceived])
    {
      [(HMDHAPAccessoryRemoteOperationTask *)self setFinished:1];
    }

    v9 = objc_opt_class();
    logEvents = [(HMDHAPAccessoryRemoteOperationTask *)self logEvents];
    userInfo = [messageCopy userInfo];
    requestIdentifier = [(HMDHAPAccessoryTask *)self requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    [v9 updateLogEvents:logEvents withResponses:responsesCopy remoteMessageResponse:userInfo forTaskID:uUIDString shouldSubmit:1];
  }
}

- (void)execute
{
  v51 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  array = [MEMORY[0x277CBEB18] array];
  requests = [(HMDHAPAccessoryTask *)self requests];
  context = [(HMDHAPAccessoryTask *)self context];
  user = [context user];
  v7 = accessoryRequestMapFromRequests(requests, array, user);

  [(HMDHAPAccessoryTask *)self addCharacteristicResponses:array isRemote:0];
  v8 = [(HMDHAPAccessoryRemoteOperationTask *)self _remoteMessageFromAccessoryRequestMap:v7];
  [(HMDHAPAccessoryRemoteOperationTask *)self remoteMessageTimeout];
  [v8 setTimeout:?];
  messagePayload = [v8 messagePayload];
  v10 = [messagePayload objectForKeyedSubscript:*MEMORY[0x277CCE7A8]];
  obj = [(HMDHAPAccessoryTask *)self logEventsFromAccessoryRequestMap:v7 accessoryList:v10];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v12)
  {
    v13 = *v39;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        activity = [(HMDHAPAccessoryTask *)self activity];
        [(HMDHAPAccessoryRemoteOperationTask *)self activityRequestEventName];

        [(HMDHAPAccessoryTask *)self operationName];
        [v15 uuid];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v12);
  }

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke;
  v33[3] = &unk_279735248;
  objc_copyWeak(&v36, &location);
  v18 = v11;
  v34 = v18;
  v19 = v17;
  v35 = v19;
  [v8 setResponseHandler:v33];
  objc_storeStrong(&self->_logEvents, obj);
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    delegateDevice = [(HMDHAPAccessoryRemoteOperationTask *)selfCopy delegateDevice];
    shortDescription2 = [delegateDevice shortDescription];
    *buf = 138544130;
    v43 = v23;
    v44 = 2114;
    v45 = selfCopy;
    v46 = 2114;
    v47 = shortDescription;
    v48 = 2114;
    v49 = shortDescription2;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Dispatching message: %{public}@ to device: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  context2 = [(HMDHAPAccessoryTask *)selfCopy context];
  delegateDevice2 = [(HMDHAPAccessoryRemoteOperationTask *)selfCopy delegateDevice];
  [context2 dispatchMessage:v8 delegateDevice:delegateDevice2];

  workQueue = [(HMDHAPAccessoryTask *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke_310;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_group_notify(v19, workQueue, block);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v42 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v38 = v6;
      v39 = v5;
      v9 = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = *(a1 + 32);
      v43 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
      if (v43)
      {
        v41 = *v49;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v11 = [*(v42 + 32) objectForKey:*(*(&v48 + 1) + 8 * i)];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v45;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v45 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v44 + 1) + 8 * j);
                  v17 = [v8 requestToResponseMap];
                  v18 = [v17 objectForKey:v16];

                  if (!v18)
                  {
                    [v9 addObject:v16];
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v44 objects:v60 count:16];
              }

              while (v13);
            }
          }

          v43 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
        }

        while (v43);
      }

      v5 = v39;
      v19 = [HMDCharacteristicResponse responsesWithRequests:v9 error:v39];
      v20 = objc_autoreleasePoolPush();
      v21 = v8;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v19 count];
        *buf = 138544130;
        v53 = v23;
        v54 = 2112;
        v55 = v21;
        v56 = 2048;
        v57 = v24;
        v58 = 2112;
        v59 = v39;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Received remote characteristic responses: [%ld] with error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      v6 = v38;
    }

    else
    {
      v28 = [WeakRetained requests];
      v19 = [HMDCharacteristicResponse responsesWithRequests:v28 characteristicUpdateDictionary:v6];

      v29 = objc_autoreleasePoolPush();
      v30 = v8;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        v53 = v32;
        v54 = 2112;
        v55 = v30;
        v56 = 2048;
        v57 = [v19 count];
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Received remote characteristic responses: [%ld]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
    }

    [v8 addCharacteristicResponses:v19 isRemote:1];
    v33 = [v8 characteristicResponses];
    [v8 _updateCharacteristicsWithResponses:v33 accessoryRequests:*(v42 + 32) completedGroup:*(v42 + 40)];

    v34 = objc_opt_class();
    v35 = [v8 logEvents];
    v36 = [v8 requestIdentifier];
    v37 = [v36 UUIDString];
    [v34 updateLogEvents:v35 withResponses:v19 remoteMessageResponse:v6 forTaskID:v37 shouldSubmit:0];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for remote operation message response handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }
}

void __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke_310(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    [*(a1 + 32) setFinished:1];
    v3 = [*(a1 + 32) completion];
    v2 = [*(a1 + 32) characteristicResponses];
    v3[2](v3, v2);
  }
}

- (HMDHAPAccessoryRemoteOperationTask)initWithContext:(id)context remoteMessageName:(id)name requests:(id)requests delegateDevice:(id)device timeout:(double)timeout completion:(id)completion
{
  nameCopy = name;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = HMDHAPAccessoryRemoteOperationTask;
  v17 = [(HMDHAPAccessoryTask *)&v20 initWithContext:context requests:requests completion:completion];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_remoteMessageName, name);
    objc_storeStrong(&v18->_delegateDevice, device);
    v18->_remoteMessageTimeout = timeout;
  }

  return v18;
}

@end