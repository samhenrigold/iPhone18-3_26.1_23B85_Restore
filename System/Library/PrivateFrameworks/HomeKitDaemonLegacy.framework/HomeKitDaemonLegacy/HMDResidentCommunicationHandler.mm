@interface HMDResidentCommunicationHandler
+ (id)createResponseSubset:(id)subset overallError:(id)error readRequest:(id)request error:(id *)a6;
+ (id)logCategory;
+ (void)_clearAllGeneratedRequests:(id)requests error:(id)error;
+ (void)_clearAllPendingRequests:(id)requests error:(id)error;
+ (void)_processResponseForMultireadRequest:(id)request overallError:(id)error response:(id)response;
- (BOOL)containsDevice:(id)device;
- (HMDDevice)preferredDevice;
- (HMDMessageDispatcher)remoteDispatcher;
- (HMDResidentCommunicationHandler)initWithHome:(id)home remoteDispatcher:(id)dispatcher;
- (NSString)description;
- (id)deviceForType:(int64_t)type;
- (id)logIdentifier;
- (int64_t)preferredDeviceType;
- (void)_processResponse:(id)response overallError:(id)error messageIdentifier:(id)identifier;
- (void)_sendMultipleCharacteristicRead;
- (void)dealloc;
- (void)redispatchMessage:(id)message target:(id)target responseQueue:(id)queue;
- (void)removeDeviceForType:(int64_t)type;
- (void)setDevice:(id)device forType:(int64_t)type;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDResidentCommunicationHandler

- (HMDMessageDispatcher)remoteDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteDispatcher);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDResidentCommunicationHandler *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (void)_processResponse:(id)response overallError:(id)error messageIdentifier:(id)identifier
{
  v45 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  identifierCopy = identifier;
  workQueue = [(HMDResidentCommunicationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  dispatchedReadRequests = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
  v12 = objc_msgSend_copy(dispatchedReadRequests);

  v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v36 + 1) + 8 * v16);
      identifier = [v17 identifier];
      v19 = [identifier isEqual:identifierCopy];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    dispatchedReadRequests2 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
    v21 = [dispatchedReadRequests2 objectForKey:v17];

    dispatchedReadRequests3 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
    [dispatchedReadRequests3 removeObjectForKey:v17];

    if (!v21)
    {
      goto LABEL_16;
    }

    v23 = responseCopy;
    [HMDResidentCommunicationHandler _processResponseForMultireadRequest:v21 overallError:errorCopy response:responseCopy];
    numOutstandingReadRequests = self->_numOutstandingReadRequests;
    self->_numOutstandingReadRequests = numOutstandingReadRequests - 1;
    if (numOutstandingReadRequests == 1)
    {
      multiReadCoalesceTimer = [(HMDResidentCommunicationHandler *)self multiReadCoalesceTimer];

      if (multiReadCoalesceTimer)
      {
        multiReadCoalesceTimer2 = [(HMDResidentCommunicationHandler *)self multiReadCoalesceTimer];
        [multiReadCoalesceTimer2 cancel];

        [(HMDResidentCommunicationHandler *)self setMultiReadCoalesceTimer:0];
        [(HMDResidentCommunicationHandler *)self _sendMultipleCharacteristicRead];
      }
    }

    else if (numOutstandingReadRequests <= 0)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@*** invalid reference counter for resident communication read coalese handler", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      self->_numOutstandingReadRequests = 0;
    }
  }

  else
  {
LABEL_9:

LABEL_16:
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    v23 = responseCopy;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v32;
      v42 = 2112;
      v43 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Cannot find the message with identifier %@ in the dispatched multi-read requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v21 = 0;
  }
}

- (void)_sendMultipleCharacteristicRead
{
  v92 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentCommunicationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingReadRequests = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
  v4 = [pendingReadRequests count];

  if (v4)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    pendingReadRequests2 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
    v6 = objc_msgSend_copy(pendingReadRequests2);

    obj = v6;
    v75 = [v6 countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v75)
    {
      v74 = *v82;
      v71 = *MEMORY[0x277CD25F8];
      v70 = *MEMORY[0x277CD2140];
      qualityOfService = 9;
      *&v7 = 138543362;
      v67 = v7;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v82 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v81 + 1) + 8 * i);
          accessoryUUID = [v9 accessoryUUID];
          uUIDString = [accessoryUUID UUIDString];

          if (uUIDString)
          {
            dictionary2 = [dictionary hmf_mutableDictionaryForKey:uUIDString];
            if (!dictionary2)
            {
              dictionary2 = [MEMORY[0x277CBEB38] dictionary];
              [dictionary setObject:dictionary2 forKey:uUIDString];
            }

            readMessage = [v9 readMessage];
            messagePayload = [readMessage messagePayload];
            v15 = [messagePayload hmf_numberForKey:v71];
            v16 = HAPInstanceIDFromValue();

            stringValue = [v16 stringValue];
            array = [(HMDAssertionLogEvent *)dictionary2 hmf_mutableArrayForKey:stringValue];

            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              stringValue2 = [v16 stringValue];
              [(HMDAssertionLogEvent *)dictionary2 setObject:array forKey:stringValue2];
            }

            readMessage2 = [v9 readMessage];
            messagePayload2 = [readMessage2 messagePayload];
            v22 = [messagePayload2 hmf_numberForKey:v70];
            v23 = HAPInstanceIDFromValue();

            if (([array containsObject:v23] & 1) == 0)
            {
              [array addObject:v23];
            }

            readMessage3 = [v9 readMessage];
            [readMessage3 qualityOfService];
            v25 = HMFQualityOfServiceCompare() == -1;

            if (v25)
            {
              readMessage4 = [v9 readMessage];
              qualityOfService = [readMessage4 qualityOfService];
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            selfCopy = self;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = HMFGetLogIdentifier();
              *buf = 138543618;
              v88 = v30;
              v89 = 2112;
              v90 = v9;
              _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Ignoring bad request with nil accessory: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v27);
            v31 = objc_autoreleasePoolPush();
            v32 = selfCopy;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              v34 = HMFGetLogIdentifier();
              *buf = v67;
              v88 = v34;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Accessory UUID cannot be nil", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v31);
            dictionary2 = [[HMDAssertionLogEvent alloc] initWithReason:@"Accessory UUID cannot be nil"];
            v16 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v16 submitLogEvent:dictionary2];
          }
        }

        v75 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v75);
    }

    else
    {
      qualityOfService = 9;
    }

    v85[0] = *MEMORY[0x277CCE7A8];
    v39 = objc_msgSend_copy(dictionary);
    v86[0] = v39;
    v85[1] = *MEMORY[0x277CD0640];
    homeUUID = [(HMDResidentCommunicationHandler *)self homeUUID];
    uUIDString2 = [homeUUID UUIDString];
    v86[1] = uUIDString2;
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];

    uUID = [MEMORY[0x277CCAD78] UUID];
    v43 = objc_alloc(MEMORY[0x277D0F820]);
    homeUUID2 = [(HMDResidentCommunicationHandler *)self homeUUID];
    v45 = [v43 initWithTarget:homeUUID2];

    v46 = [MEMORY[0x277D0F848] messageWithName:@"kMultipleCharacteristicReadRequestKey" qualityOfService:qualityOfService destination:v45 payload:v76];
    [v46 setIdentifier:uUID];
    objc_initWeak(&location, self);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __66__HMDResidentCommunicationHandler__sendMultipleCharacteristicRead__block_invoke;
    v77[3] = &unk_279733AE8;
    objc_copyWeak(&v79, &location);
    v47 = uUID;
    v78 = v47;
    [v46 setResponseHandler:v77];
    dispatchedReadRequests = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
    pendingReadRequests3 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
    v50 = objc_msgSend_copy(pendingReadRequests3);
    [dispatchedReadRequests setObject:v50 forKey:v46];

    pendingReadRequests4 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
    [pendingReadRequests4 removeAllObjects];

    remoteDispatcher = [(HMDResidentCommunicationHandler *)self remoteDispatcher];
    if (remoteDispatcher)
    {
      ++self->_numOutstandingReadRequests;
      preferredDevice = [(HMDResidentCommunicationHandler *)self preferredDevice];
      homeUUID3 = [(HMDResidentCommunicationHandler *)self homeUUID];
      remoteDestinationString = [preferredDevice remoteDestinationString];
      remoteDestinationString2 = [preferredDevice remoteDestinationString];
      workQueue2 = [(HMDResidentCommunicationHandler *)self workQueue];
      responseHandler = [v46 responseHandler];
      [remoteDispatcher sendSecureMessage:v46 target:homeUUID3 userID:remoteDestinationString destination:remoteDestinationString2 responseQueue:workQueue2 responseHandler:responseHandler];

      v59 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v62;
        v89 = 2112;
        v90 = v47;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Sent off the multi-read request with identifier: %@ and adding it to tracking list", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v59);
    }

    else
    {
      v63 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v66;
        _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@IDS dispatcher is invalid, reporting error", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v63);
      preferredDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [(HMDResidentCommunicationHandler *)selfCopy3 _processResponse:0 overallError:preferredDevice messageIdentifier:v47];
    }

    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v88 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@No pending read requests to combine?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }
}

void __66__HMDResidentCommunicationHandler__sendMultipleCharacteristicRead__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HMDResidentCommunicationHandler__sendMultipleCharacteristicRead__block_invoke_2;
  v11[3] = &unk_279734870;
  v11[4] = WeakRetained;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDResidentCommunicationHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDResidentCommunicationHandler_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = fireCopy;
  selfCopy = self;
  v6 = fireCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDResidentCommunicationHandler_timerDidFire___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) multiReadCoalesceTimer];

  if (v2 == v3)
  {
    [*(a1 + 40) setMultiReadCoalesceTimer:0];
    v8 = *(a1 + 40);

    [v8 _sendMultipleCharacteristicRead];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Read request timer is not matching", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)redispatchMessage:(id)message target:(id)target responseQueue:(id)queue
{
  messageCopy = message;
  targetCopy = target;
  queueCopy = queue;
  workQueue = [(HMDResidentCommunicationHandler *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HMDResidentCommunicationHandler_redispatchMessage_target_responseQueue___block_invoke;
  v15[3] = &unk_279734870;
  v16 = messageCopy;
  v17 = targetCopy;
  selfCopy = self;
  v19 = queueCopy;
  v12 = queueCopy;
  v13 = targetCopy;
  v14 = messageCopy;
  dispatch_async(workQueue, v15);
}

void __74__HMDResidentCommunicationHandler_redispatchMessage_target_responseQueue___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagePayload];
  v3 = [v2 mutableCopy];

  v56[0] = @"kIDSMessageSourceIDKey";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  [v3 removeObjectsForKeys:v4];

  v5 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v5 = [*(a1 + 32) mutableCopy];
  }

  [v5 setMessagePayload:v3];
  [v5 setSecureRemote:1];
  v8 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:*(a1 + 40)];
  [v5 setDestination:v8];
  v9 = [v5 name];
  v10 = [v9 isEqualToString:@"kCharacteristicReadRequestKey"];

  if (v10)
  {
    v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCF0B0]];
    if (v11 && (v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11]) != 0)
    {
      v13 = v12;
      v14 = [[HMDRemoteReadRequestMessage alloc] initWithReadMessage:v5 accessoryUUID:v12 responseQueue:*(a1 + 56)];
      v15 = [*(a1 + 48) pendingReadRequests];
      [v15 addObject:v14];

      v16 = [*(a1 + 48) multiReadCoalesceTimer];

      if (!v16)
      {
        if (*(*(a1 + 48) + 12) < 1)
        {
          v42 = objc_autoreleasePoolPush();
          v43 = *(a1 + 48);
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v45 = contextb = v42;
            *buf = 138543362;
            v51 = v45;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Sending read request immediately.  Will collect further incoming read packets", buf, 0xCu);

            v42 = contextb;
          }

          objc_autoreleasePoolPop(v42);
          [*(a1 + 48) _sendMultipleCharacteristicRead];
        }

        else
        {
          v17 = [MEMORY[0x277D0F8D0] sharedPreferences];
          v18 = [v17 preferenceForKey:@"residentReadCoalesceTimeout_ms"];
          v19 = [v18 numberValue];

          if (!v19)
          {
            context = objc_autoreleasePoolPush();
            v20 = *(a1 + 48);
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543362;
              v51 = v46;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@*** resident communication handler read coalesce timeout missing from preferences", buf, 0xCu);
            }

            objc_autoreleasePoolPop(context);
          }

          [v19 doubleValue];
          v23 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v22 / 1000.0];
          [*(a1 + 48) setMultiReadCoalesceTimer:v23];

          v24 = *(a1 + 48);
          v25 = [v24 multiReadCoalesceTimer];
          [v25 setDelegate:v24];

          v26 = [*(a1 + 48) multiReadCoalesceTimer];
          [v26 resume];

          v27 = objc_autoreleasePoolPush();
          v28 = *(a1 + 48);
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v30 = contexta = v19;
            *buf = 138543362;
            v51 = v30;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Kicked off the multi-read request timer", buf, 0xCu);

            v19 = contexta;
          }

          objc_autoreleasePoolPop(v27);
        }
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 48);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [*(a1 + 32) shortDescription];
        *buf = 138543874;
        v51 = v39;
        v52 = 2112;
        v53 = v40;
        v54 = 2112;
        v55 = v3;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Request message: %@ cannot be redispatched due to invalid payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
      v41 = *(a1 + 32);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v41 respondWithError:v13];
    }
  }

  else
  {
    v11 = [*(a1 + 48) preferredDevice];
    [v5 name];

    [v11 identifier];
    v13 = [*(a1 + 48) remoteDispatcher];
    v31 = *(a1 + 40);
    v32 = [v11 remoteDestinationString];
    v33 = [v11 remoteDestinationString];
    v34 = *(a1 + 56);
    v35 = [v5 responseHandler];
    [v13 sendSecureMessage:v5 target:v31 userID:v32 destination:v33 responseQueue:v34 responseHandler:v35];
  }
}

- (int64_t)preferredDeviceType
{
  deviceMapping = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v4 = [deviceMapping count];

  if (!v4)
  {
    return 0;
  }

  deviceMapping2 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v6 = [deviceMapping2 objectForKey:&unk_286627AD8];

  if (v6)
  {
    return 2;
  }

  deviceMapping3 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v9 = [deviceMapping3 objectForKey:&unk_286627AF0];

  return v9 != 0;
}

- (HMDDevice)preferredDevice
{
  preferredDeviceType = [(HMDResidentCommunicationHandler *)self preferredDeviceType];

  return [(HMDResidentCommunicationHandler *)self deviceForType:preferredDeviceType];
}

- (id)deviceForType:(int64_t)type
{
  deviceMapping = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v6 = [deviceMapping objectForKey:v5];

  return v6;
}

- (BOOL)containsDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceMapping = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v6 = objc_msgSend_copy(deviceMapping);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        v12 = [v11 isEqual:deviceCopy];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)removeDeviceForType:(int64_t)type
{
  deviceMapping = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = [deviceMapping objectForKey:v6];

  if (v7)
  {
    if ([(HMDResidentCommunicationHandler *)self preferredDeviceType]== type)
    {
      dispatchedReadRequests = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
      v9 = objc_msgSend_copy(dispatchedReadRequests);

      dispatchedReadRequests2 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
      [dispatchedReadRequests2 removeAllObjects];

      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [HMDResidentCommunicationHandler _clearAllGeneratedRequests:v9 error:v11];
    }

    deviceMapping2 = [(HMDResidentCommunicationHandler *)self deviceMapping];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [deviceMapping2 removeObjectForKey:v12];
  }
}

- (void)setDevice:(id)device forType:(int64_t)type
{
  deviceCopy = device;
  v6 = [(HMDResidentCommunicationHandler *)self deviceForType:type];
  if (([v6 isEqual:deviceCopy] & 1) == 0)
  {
    if (v6)
    {
      [(HMDResidentCommunicationHandler *)self removeDeviceForType:type];
    }

    if (deviceCopy)
    {
      deviceMapping = [(HMDResidentCommunicationHandler *)self deviceMapping];
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [deviceMapping setObject:deviceCopy forKey:v8];
    }
  }
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  homeUUID = [(HMDResidentCommunicationHandler *)self homeUUID];
  uUIDString = [homeUUID UUIDString];
  v5 = [v2 stringWithFormat:@"[RCH %@]", uUIDString];

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating resident communication handler", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  pendingReadRequests = [(HMDResidentCommunicationHandler *)selfCopy pendingReadRequests];
  v8 = objc_msgSend_copy(pendingReadRequests);

  dispatchedReadRequests = [(HMDResidentCommunicationHandler *)selfCopy dispatchedReadRequests];
  v10 = objc_msgSend_copy(dispatchedReadRequests);

  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  [HMDResidentCommunicationHandler _clearAllGeneratedRequests:v10 error:v11];
  [HMDResidentCommunicationHandler _clearAllPendingRequests:v8 error:v11];

  v12.receiver = selfCopy;
  v12.super_class = HMDResidentCommunicationHandler;
  [(HMDResidentCommunicationHandler *)&v12 dealloc];
}

- (HMDResidentCommunicationHandler)initWithHome:(id)home remoteDispatcher:(id)dispatcher
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  v20.receiver = self;
  v20.super_class = HMDResidentCommunicationHandler;
  v8 = [(HMDResidentCommunicationHandler *)&v20 init];
  if (v8)
  {
    uuid = [homeCopy uuid];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = uuid;

    v8->_ownerUser = [homeCopy isOwnerUser];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceMapping = v8->_deviceMapping;
    v8->_deviceMapping = strongToStrongObjectsMapTable;

    workQueue = [dispatcherCopy workQueue];
    workQueue = v8->_workQueue;
    v8->_workQueue = workQueue;

    objc_storeWeak(&v8->_remoteDispatcher, dispatcherCopy);
    array = [MEMORY[0x277CBEB18] array];
    pendingReadRequests = v8->_pendingReadRequests;
    v8->_pendingReadRequests = array;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    dispatchedReadRequests = v8->_dispatchedReadRequests;
    v8->_dispatchedReadRequests = strongToStrongObjectsMapTable2;

    v8->_numOutstandingReadRequests = 0;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23, &__block_literal_global_23215);
  }

  v3 = logCategory__hmf_once_v24;

  return v3;
}

uint64_t __46__HMDResidentCommunicationHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v24;
  logCategory__hmf_once_v24 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)_clearAllPendingRequests:(id)requests error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Clearing off all pending read requests with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [HMDResidentCommunicationHandler _processResponseForMultireadRequest:requestsCopy overallError:errorCopy response:0];
}

+ (void)_clearAllGeneratedRequests:(id)requests error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Clearing off all pending dispatched multi-read requests with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = requestsCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v12 objectForKey:{*(*(&v18 + 1) + 8 * v16), v18}];
        [HMDResidentCommunicationHandler _processResponseForMultireadRequest:v17 overallError:errorCopy response:0];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

+ (id)createResponseSubset:(id)subset overallError:(id)error readRequest:(id)request error:(id *)a6
{
  v85 = *MEMORY[0x277D85DE8];
  subsetCopy = subset;
  errorCopy = error;
  requestCopy = request;
  if (errorCopy)
  {
    v13 = errorCopy;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  }

  v14 = v13;
  if (subsetCopy)
  {
    readMessage = [requestCopy readMessage];
    messagePayload = [readMessage messagePayload];

    v76 = requestCopy;
    accessoryUUID = [requestCopy accessoryUUID];
    v18 = *MEMORY[0x277CD25F8];
    v19 = [messagePayload hmf_numberForKey:*MEMORY[0x277CD25F8]];
    v20 = HAPInstanceIDFromValue();

    v21 = *MEMORY[0x277CD2140];
    v77 = messagePayload;
    v22 = [messagePayload hmf_numberForKey:*MEMORY[0x277CD2140]];
    v78 = HAPInstanceIDFromValue();

    v23 = [subsetCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
    v75 = v23;
    if (v23)
    {
      v24 = v23;
      v73 = a6;
      uUIDString = [accessoryUUID UUIDString];
      v26 = [v24 hmf_dictionaryForKey:uUIDString];

      v74 = accessoryUUID;
      if (v26)
      {
        v27 = v20;
        stringValue = [v20 stringValue];
        v72 = v26;
        v29 = [v26 hmf_dictionaryForKey:stringValue];

        v71 = v29;
        if (v29)
        {
          stringValue2 = [v78 stringValue];
          v31 = [v29 hmf_dictionaryForKey:stringValue2];

          requestCopy = v76;
          v70 = v31;
          if (v31)
          {
            v32 = [v31 errorFromDataForKey:*MEMORY[0x277CD2128]];
            if (v32)
            {
              v33 = v32;
              v34 = v32;

              v35 = 0;
              v14 = v34;
              v26 = v72;
              a6 = v73;
              v36 = v74;
            }

            else
            {
              v67 = *MEMORY[0x277CD21B8];
              v69 = [v31 objectForKeyedSubscript:?];
              v66 = *MEMORY[0x277CD21D0];
              null = [v31 objectForKeyedSubscript:?];
              if (!null)
              {
                null = [MEMORY[0x277CBEB68] null];
              }

              a6 = v73;
              if (v69)
              {
                v56 = [subsetCopy objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
                if (!v56)
                {
                  v56 = [MEMORY[0x277CCABB0] numberWithInt:0];
                }

                v79[0] = *MEMORY[0x277CCF0B0];
                uUIDString2 = [v74 UUIDString];
                v80[0] = uUIDString2;
                v80[1] = v27;
                v79[1] = v18;
                v79[2] = v21;
                v59 = null;
                v58 = v69;
                v80[2] = v78;
                v80[3] = v69;
                v79[3] = v67;
                v79[4] = v66;
                v79[5] = @"kRemoteMessageTransportAttributionKey";
                v80[4] = null;
                v80[5] = v56;
                v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:6];

                v14 = 0;
                a6 = v73;
              }

              else
              {
                v60 = objc_autoreleasePoolPush();
                selfCopy = self;
                v62 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v63 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v82 = v63;
                  _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Value key is missing in the response dictionary", buf, 0xCu);

                  a6 = v73;
                }

                objc_autoreleasePoolPop(v60);
                v35 = 0;
                v59 = null;
                v58 = 0;
              }

              v26 = v72;
              v36 = v74;
              v33 = 0;
            }
          }

          else
          {
            v52 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = HMFGetLogIdentifier();
              *buf = 138543618;
              v82 = v55;
              v83 = 2112;
              v84 = v78;
              _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Could not find the characteristic instance ID %@ in the service changes", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            v35 = 0;
            v26 = v72;
            a6 = v73;
            v36 = v74;
          }
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v50 = HMFGetOSLogHandle();
          requestCopy = v76;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543618;
            v82 = v51;
            v83 = 2112;
            v84 = v27;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Could not find the service instance ID %@ in the accessory changes", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          v35 = 0;
          a6 = v73;
          v36 = v74;
        }
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v44 = HMFGetOSLogHandle();
        v27 = v20;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v46 = v45 = v42;
          uUIDString3 = [v74 UUIDString];
          *buf = 138543618;
          v82 = v46;
          v83 = 2112;
          v84 = uUIDString3;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not find the accessory %@ in the accessory list", buf, 0x16u);

          v42 = v45;
        }

        objc_autoreleasePoolPop(v42);
        v35 = 0;
        a6 = v73;
        v36 = v74;
        requestCopy = v76;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v41 = v40 = a6;
        *buf = 138543362;
        v82 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not find the modified accessory characteristics key", buf, 0xCu);

        a6 = v40;
      }

      objc_autoreleasePoolPop(v37);
      v35 = 0;
      v36 = accessoryUUID;
      v27 = v20;
      requestCopy = v76;
    }

    if (a6)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v35 = 0;
    if (a6)
    {
LABEL_40:
      v64 = v14;
      *a6 = v14;
    }
  }

  return v35;
}

+ (void)_processResponseForMultireadRequest:(id)request overallError:(id)error response:(id)response
{
  v56 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  responseCopy = response;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = requestCopy;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v8)
  {
    v10 = v8;
    v36 = *v44;
    *&v9 = 138543618;
    v32 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        readMessage = [v12 readMessage];
        responseHandler = [readMessage responseHandler];

        if (responseHandler)
        {
          v42 = errorCopy;
          v15 = errorCopy;
          v16 = [HMDResidentCommunicationHandler createResponseSubset:responseCopy overallError:v15 readRequest:v12 error:&v42];
          v17 = v42;

          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138544130;
            v48 = v21;
            v49 = 2112;
            v50 = v12;
            v51 = 2112;
            v52 = v16;
            v53 = 2112;
            v54 = v17;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@%@ is getting a response %@ with error %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v18);
          responseQueue = [v12 responseQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __93__HMDResidentCommunicationHandler__processResponseForMultireadRequest_overallError_response___block_invoke;
          block[3] = &unk_2797355D0;
          v23 = responseHandler;
          v40 = v16;
          v41 = v23;
          v39 = v17;
          v24 = v17;
          v25 = v16;
          dispatch_async(responseQueue, block);
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            readMessage2 = [v12 readMessage];
            identifier = [readMessage2 identifier];
            *buf = v32;
            v48 = v29;
            v49 = 2112;
            v50 = identifier;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Response handler is not set for the request %@, skipping", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v10);
  }
}

@end