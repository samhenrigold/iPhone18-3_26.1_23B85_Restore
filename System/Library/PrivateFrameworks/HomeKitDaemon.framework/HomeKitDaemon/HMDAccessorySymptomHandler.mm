@interface HMDAccessorySymptomHandler
+ (id)logCategory;
- (BOOL)_shouldFilterWiFiMismatchSymptomForAccessory:(id)accessory;
- (HMDAccessory)accessory;
- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory;
- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier symptomManager:(id)manager activeClientConnectionsManager:(id)connectionsManager;
- (id)_filteredSymptomsForSymptoms:(id)symptoms;
- (void)_handleInitiateFixMessage:(id)message;
- (void)_handleSetSymptomsMessage:(id)message;
- (void)_handleSubscribeMessage:(id)message;
- (void)_handleUnsubscribeMessage:(id)message;
- (void)_notifyAllSubscribedClientConnections;
- (void)_notifySubscribedClientConnection:(id)connection;
- (void)_notifySubscribedClientConnections:(id)connections;
- (void)_registerMessages;
- (void)_updateSFDeviceIdentifier:(id)identifier;
- (void)clientConnectionsManager:(id)manager didHandleActivationForClientConnection:(id)connection;
- (void)configure;
- (void)handleAccessoryDeviceUpdated;
- (void)symptomManager:(id)manager didChangeSFDeviceIdentifier:(id)identifier;
- (void)symptomManager:(id)manager didChangeSymptoms:(id)symptoms;
- (void)updateSymptoms:(id)symptoms;
@end

@implementation HMDAccessorySymptomHandler

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)clientConnectionsManager:(id)manager didHandleActivationForClientConnection:(id)connection
{
  connectionCopy = connection;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessorySymptomHandler *)self _notifySubscribedClientConnection:connectionCopy];
}

- (void)symptomManager:(id)manager didChangeSFDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDAccessorySymptomHandler_symptomManager_didChangeSFDeviceIdentifier___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(workQueue, v8);
}

- (void)symptomManager:(id)manager didChangeSymptoms:(id)symptoms
{
  symptomsCopy = symptoms;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMDAccessorySymptomHandler_symptomManager_didChangeSymptoms___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = symptomsCopy;
  v7 = symptomsCopy;
  dispatch_async(workQueue, v8);
}

void __63__HMDAccessorySymptomHandler_symptomManager_didChangeSymptoms___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _filteredSymptomsForSymptoms:*(a1 + 40)];
  [v1 updateSymptoms:v2];
}

- (void)_handleSetSymptomsMessage:(id)message
{
  v59 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v54 = v9;
    v55 = 2112;
    v56 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling set symptoms message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = transport;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = *MEMORY[0x277CD11F8];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v16 = [messageCopy unarchivedObjectForKey:v14 ofClasses:v15];

    if (v16)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v48;
        while (2)
        {
          v21 = 0;
          do
          {
            if (*v48 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v47 + 1) + 8 * v21);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v30 = objc_autoreleasePoolPush();
              v31 = selfCopy;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v54 = v33;
                v55 = 2112;
                v56 = v22;
                _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid type of symptom is pass in: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
              [messageCopy respondWithError:v34];

              goto LABEL_26;
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      workQueue2 = [(HMDAccessorySymptomHandler *)selfCopy workQueue];
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __56__HMDAccessorySymptomHandler__handleSetSymptomsMessage___block_invoke;
      v44 = &unk_27868A750;
      v45 = selfCopy;
      v17 = v17;
      v46 = v17;
      dispatch_async(workQueue2, &v41);

      [messageCopy respondWithSuccess];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        shortDescription2 = [messageCopy shortDescription];
        *buf = 138543618;
        v54 = v38;
        v55 = 2112;
        v56 = shortDescription2;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Symptom values not found in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v40];

      v17 = 0;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = objc_opt_class();
      transport2 = [messageCopy transport];
      *buf = 138543874;
      v54 = v27;
      v55 = 2112;
      v56 = v28;
      v57 = 2112;
      v58 = transport2;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Set symptoms transport was not of expected class %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v17];
  }

LABEL_26:
}

- (void)_handleUnsubscribeMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v22 = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = transport;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)selfCopy activeClientConnectionsManager];
    [activeClientConnectionsManager removeClientConnection:v13];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = objc_opt_class();
      transport2 = [messageCopy transport];
      v22 = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = transport2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v21];
  }
}

- (void)_handleSubscribeMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v22 = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = transport;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)selfCopy activeClientConnectionsManager];
    [activeClientConnectionsManager addClientConnection:v13];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = objc_opt_class();
      transport2 = [messageCopy transport];
      v22 = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = transport2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v21];
  }
}

- (void)_handleInitiateFixMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling initiate fix message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  accessory = [(HMDAccessorySymptomHandler *)selfCopy accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = accessory;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    symptomManager = [(HMDAccessorySymptomHandler *)selfCopy symptomManager];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__HMDAccessorySymptomHandler__handleInitiateFixMessage___block_invoke;
    v21[3] = &unk_278688D58;
    v21[4] = selfCopy;
    v22 = v13;
    v23 = messageCopy;
    [symptomManager initiateFixForAccessory:v22 completion:v21];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      accessory2 = [(HMDAccessorySymptomHandler *)v16 accessory];
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = accessory2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot initiate fix for non-Apple-media accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }
}

void __56__HMDAccessorySymptomHandler__handleInitiateFixMessage___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to initiate fix for accessory %@: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully initiated fix for accessory: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithSuccess];
  }
}

- (void)_notifySubscribedClientConnections:(id)connections
{
  v27 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  symptoms = [(HMDAccessorySymptomHandler *)self symptoms];
  v8 = encodeRootObjectForIncomingXPCMessage(symptoms, 0);
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CD11F8]];

  sfDeviceIdentifier = [(HMDAccessorySymptomHandler *)self sfDeviceIdentifier];
  [dictionary setObject:sfDeviceIdentifier forKeyedSubscript:*MEMORY[0x277CD11D8]];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = connectionsCopy;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = *MEMORY[0x277CD11F0];
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = [MEMORY[0x277D0F848] entitledMessageWithName:v13 messagePayload:dictionary];
        [v16 setTransport:v15];
        v17 = objc_alloc(MEMORY[0x277D0F820]);
        messageTargetUUID = [(HMDAccessorySymptomHandler *)self messageTargetUUID];
        v19 = [v17 initWithTarget:messageTargetUUID];
        [v16 setDestination:v19];

        msgDispatcher = [(HMDAccessorySymptomHandler *)self msgDispatcher];
        [msgDispatcher sendMessage:v16];

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)_notifySubscribedClientConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = connectionCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribed client of updated symptom state: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB98] setWithObject:connectionCopy];
  [(HMDAccessorySymptomHandler *)selfCopy _notifySubscribedClientConnections:v10];
}

- (void)_notifyAllSubscribedClientConnections
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  clientConnections = [activeClientConnectionsManager clientConnections];

  v6 = [clientConnections count];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2048;
      v16 = [clientConnections count];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying all %lu subscribed clients of updated symptom state", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDAccessorySymptomHandler *)selfCopy _notifySubscribedClientConnections:clientConnections];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed clients to notify of updated symptom state", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (BOOL)_shouldFilterWiFiMismatchSymptomForAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  device = [accessoryCopy device];
  productInfo = [device productInfo];

  if (productInfo)
  {
    if ([productInfo productClass] != 6)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because it is not an audio accessory";
LABEL_18:
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v14, &buf, 0xCu);
      }

LABEL_19:

      objc_autoreleasePoolPop(v10);
      v18 = 1;
      goto LABEL_20;
    }

    softwareVersion = [productInfo softwareVersion];
    v9 = softwareVersion;
    if (softwareVersion)
    {
      objc_msgSend_operatingSystemVersion(softwareVersion);
    }

    else
    {
      buf = 0uLL;
      v24 = 0;
    }

    v21 = *MEMORY[0x277D0F5A0];
    v22 = *(MEMORY[0x277D0F5A0] + 16);
    v15 = HMFOperatingSystemVersionCompare();

    if (v15 == -1)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because it is a pre-Peace accessory";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  if ([home synchronouslyFetchIsConnectedToCarPlayNetwork])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because there is a wireless CarPlay connection";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ([home hasActiveWACPairing])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      v14 = "%{public}@Removing WiFi network mismatch symptom for accessory because there is an active WAC pairing";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:

  return v18;
}

- (id)_filteredSymptomsForSymptoms:(id)symptoms
{
  v23 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [symptomsCopy mutableCopy];
  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = accessory;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
    if ([v6 containsObject:v10] && -[HMDAccessorySymptomHandler _shouldFilterWiFiMismatchSymptomForAccessory:](self, "_shouldFilterWiFiMismatchSymptomForAccessory:", v9))
    {
      [v6 removeObject:v10];
    }

    capabilities = [v9 capabilities];
    if (([capabilities supportsCaptiveNetworks] & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Remove NeedCaptiveLeaseRenewal symptom as accessory %@ does not support captive networks", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:19];
      [v6 removeObject:v16];
    }
  }

  v17 = objc_msgSend_copy(v6);

  return v17;
}

- (void)_registerMessages
{
  v25[2] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD11D0];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v25[0] = v5;
  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  home = [accessory home];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v25[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v9 selector:sel__handleInitiateFixMessage_];

  msgDispatcher2 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v11 = *MEMORY[0x277CD11E8];
  v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [msgDispatcher2 registerForMessage:v11 receiver:self policies:v13 selector:sel__handleSubscribeMessage_];

  msgDispatcher3 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v15 = *MEMORY[0x277CD1200];
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [msgDispatcher3 registerForMessage:v15 receiver:self policies:v17 selector:sel__handleUnsubscribeMessage_];

  msgDispatcher4 = [(HMDAccessorySymptomHandler *)self msgDispatcher];
  v19 = *MEMORY[0x277CD11E0];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v22 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [msgDispatcher4 registerForMessage:v19 receiver:self policies:v21 selector:sel__handleSetSymptomsMessage_];
}

- (void)_updateSFDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sfDeviceIdentifier = [(HMDAccessorySymptomHandler *)self sfDeviceIdentifier];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    [(HMDAccessorySymptomHandler *)self setSfDeviceIdentifier:identifierCopy];
    [(HMDAccessorySymptomHandler *)self _notifyAllSubscribedClientConnections];
  }
}

- (void)updateSymptoms:(id)symptoms
{
  v22 = *MEMORY[0x277D85DE8];
  symptomsCopy = symptoms;
  workQueue = [(HMDAccessorySymptomHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  symptoms = [(HMDAccessorySymptomHandler *)self symptoms];
  v7 = [symptoms isEqualToSet:symptomsCopy];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      symptoms2 = [(HMDAccessorySymptomHandler *)selfCopy symptoms];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = symptoms2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not updating accessory symptoms from %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      symptoms3 = [(HMDAccessorySymptomHandler *)selfCopy symptoms];
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = symptoms3;
      v20 = 2112;
      v21 = symptomsCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory symptoms from %@ to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDAccessorySymptomHandler *)selfCopy setSymptoms:symptomsCopy];
    [(HMDAccessorySymptomHandler *)selfCopy _notifyAllSubscribedClientConnections];
  }
}

- (void)handleAccessoryDeviceUpdated
{
  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessory;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;

  home = [v8 home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    symptomManager = [(HMDAccessorySymptomHandler *)self symptomManager];
    [symptomManager registerAccessory:v8 delegate:self];
  }
}

- (void)configure
{
  activeClientConnectionsManager = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  [activeClientConnectionsManager setDelegate:self];

  activeClientConnectionsManager2 = [(HMDAccessorySymptomHandler *)self activeClientConnectionsManager];
  [activeClientConnectionsManager2 configure];

  accessory = [(HMDAccessorySymptomHandler *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessory;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  home = [v10 home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    if (v10)
    {
      symptomManager = [(HMDAccessorySymptomHandler *)self symptomManager];
      [symptomManager registerAccessory:v10 delegate:self];
    }

    [(HMDAccessorySymptomHandler *)self _registerMessages];
  }
}

- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory logIdentifier:(id)identifier symptomManager:(id)manager activeClientConnectionsManager:(id)connectionsManager
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  managerCopy = manager;
  connectionsManagerCopy = connectionsManager;
  v27.receiver = self;
  v27.super_class = HMDAccessorySymptomHandler;
  v14 = [(HMDAccessorySymptomHandler *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeStrong(&v15->_logIdentifier, identifier);
    objc_storeStrong(&v15->_symptomManager, manager);
    objc_storeStrong(&v15->_activeClientConnectionsManager, connectionsManager);
    workQueue = [accessoryCopy workQueue];
    workQueue = v15->_workQueue;
    v15->_workQueue = workQueue;

    msgDispatcher = [accessoryCopy msgDispatcher];
    msgDispatcher = v15->_msgDispatcher;
    v15->_msgDispatcher = msgDispatcher;

    uuid = [accessoryCopy uuid];
    accessoryUUID = v15->_accessoryUUID;
    v15->_accessoryUUID = uuid;

    v22 = [MEMORY[0x277CBEB98] set];
    symptoms = v15->_symptoms;
    v15->_symptoms = v22;

    v24 = [MEMORY[0x277CD1E88] symptomsHandlerUUIDFromAccessoryUUID:v15->_accessoryUUID];
    uuid = v15->_uuid;
    v15->_uuid = v24;
  }

  return v15;
}

- (HMDAccessorySymptomHandler)initWithAccessory:(id)accessory
{
  v4 = MEMORY[0x277CCACA8];
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  uuid2 = [(HMDAccessorySymptomHandler *)self uuid];
  v8 = [v4 stringWithFormat:@"%@.%@", uuid, uuid2];

  v9 = +[HMDMainDriver driver];
  symptomManager = [v9 symptomManager];

  v11 = [HMDActiveXPCClientConnectionsManager alloc];
  workQueue = [accessoryCopy workQueue];
  v13 = [(HMDActiveXPCClientConnectionsManager *)v11 initWithLogIdentifier:v8 workQueue:workQueue];

  v14 = [(HMDAccessorySymptomHandler *)self initWithAccessory:accessoryCopy logIdentifier:v8 symptomManager:symptomManager activeClientConnectionsManager:v13];
  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29, &__block_literal_global_21643);
  }

  v3 = logCategory__hmf_once_v30;

  return v3;
}

void __41__HMDAccessorySymptomHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v30;
  logCategory__hmf_once_v30 = v0;
}

@end