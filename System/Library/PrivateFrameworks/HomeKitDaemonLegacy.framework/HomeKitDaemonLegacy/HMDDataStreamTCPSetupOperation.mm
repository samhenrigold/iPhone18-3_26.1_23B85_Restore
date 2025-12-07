@interface HMDDataStreamTCPSetupOperation
- (BOOL)_isComplete;
- (HMDDataStreamTCPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service;
- (id)_createTCPTransport;
- (id)_fullKeySalt;
- (void)_finishStreamTransport;
- (void)_generateStreamKeys;
- (void)processTransportSetupResponse:(id)response;
- (void)startSetup;
@end

@implementation HMDDataStreamTCPSetupOperation

- (void)_finishStreamTransport
{
  v23 = *MEMORY[0x277D85DE8];
  _isComplete = [(HMDDataStreamTCPSetupOperation *)self _isComplete];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (_isComplete)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] DataStream configuration valid; starting stream", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    _createTCPTransport = [(HMDDataStreamTCPSetupOperation *)selfCopy _createTCPTransport];
    sessionEncryption = [(HMDDataStreamTCPSetupOperation *)selfCopy sessionEncryption];
    [(HMDDataStreamSetupOperation *)selfCopy postDidSucceedWithTransport:_createTCPTransport sessionEncryption:sessionEncryption];
  }

  else
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDDataStreamTCPSetupOperation *)selfCopy remoteTcpPort]!= 0;
      remoteNetAddress = [(HMDDataStreamTCPSetupOperation *)selfCopy remoteNetAddress];
      sessionEncryption2 = [(HMDDataStreamTCPSetupOperation *)selfCopy sessionEncryption];
      v15 = 138544130;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = remoteNetAddress != 0;
      v21 = 1024;
      v22 = sessionEncryption2 != 0;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] Setup still in progress (hasPort=%d, hasHostname=%d, hasEnc=%d)", &v15, 0x1Eu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (id)_createTCPTransport
{
  v21 = *MEMORY[0x277D85DE8];
  accessory = [(HMDDataStreamSetupOperation *)self accessory];
  siriEndpointProfile = [accessory siriEndpointProfile];

  if (siriEndpointProfile)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] Accessory is a Siri endpoint, creating transport with elevated scheduling mode", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [HMDDataStreamTCPTransport alloc];
    remoteNetAddress = [(HMDDataStreamTCPSetupOperation *)selfCopy remoteNetAddress];
    remoteTcpPort = [(HMDDataStreamTCPSetupOperation *)selfCopy remoteTcpPort];
    queue = [(HMDDataStreamSetupOperation *)selfCopy queue];
    logIdentifier = [(HMDDataStreamSetupOperation *)selfCopy logIdentifier];
    v14 = [(HMDDataStreamTCPTransport *)v9 initWithAddress:remoteNetAddress port:remoteTcpPort targetQueue:queue logIdentifier:logIdentifier];
  }

  else
  {
    v15 = [HMDDataStreamTCPTransport alloc];
    remoteNetAddress = [(HMDDataStreamTCPSetupOperation *)self remoteNetAddress];
    remoteTcpPort2 = [(HMDDataStreamTCPSetupOperation *)self remoteTcpPort];
    queue = [(HMDDataStreamSetupOperation *)self queue];
    logIdentifier = [(HMDDataStreamSetupOperation *)self logIdentifier];
    v14 = [(HMDDataStreamTCPTransport *)v15 initWithAddress:remoteNetAddress port:remoteTcpPort2 workQueue:queue logIdentifier:logIdentifier];
  }

  v17 = v14;

  return v17;
}

- (void)_generateStreamKeys
{
  location[3] = *MEMORY[0x277D85DE8];
  accessory = [(HMDDataStreamSetupOperation *)self accessory];
  anyIPServer = [accessory anyIPServer];

  if (anyIPServer)
  {
    objc_initWeak(location, self);
    _fullKeySalt = [(HMDDataStreamTCPSetupOperation *)self _fullKeySalt];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__HMDDataStreamTCPSetupOperation__generateStreamKeys__block_invoke;
    v11[3] = &unk_2797239B8;
    objc_copyWeak(&v12, location);
    [anyIPServer createKeysForDataStreamWithKeySalt:_fullKeySalt completionHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; device appears to have lost IP-connectivity", location, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDDataStreamSetupOperation *)selfCopy postDidFailWithError:v10];
  }
}

void __53__HMDDataStreamTCPSetupOperation__generateStreamKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (!v5 || v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v13;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create secure session for the accessory (%@)", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      if (!v6)
      {
        v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      }

      [v9 postDidFailWithError:v6];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] Key creation succeeded; will use session encryption %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [v9 setSessionEncryption:v5];
      [v9 _finishStreamTransport];
      v6 = 0;
    }
  }
}

- (void)processTransportSetupResponse:(id)response
{
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  accessoryKeySalt = [responseCopy accessoryKeySalt];

  if (!accessoryKeySalt)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      v20 = "%{public}@[Start Stream] The setup transfer write reply did not contain key information";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v20, &v22, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v8);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [(HMDDataStreamSetupOperation *)selfCopy2 postDidFailWithError:v21];

    goto LABEL_12;
  }

  parameters = [responseCopy parameters];
  tcpListeningPort = [parameters tcpListeningPort];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (!tcpListeningPort)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      v20 = "%{public}@[Start Stream] The setup transfer write reply did not contain a TCP port";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    parameters2 = [responseCopy parameters];
    tcpListeningPort2 = [parameters2 tcpListeningPort];
    v22 = 138543618;
    v23 = v12;
    v24 = 2112;
    v25 = tcpListeningPort2;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] The setup transfer succeeded; will use port %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  parameters3 = [responseCopy parameters];
  tcpListeningPort3 = [parameters3 tcpListeningPort];
  value = [tcpListeningPort3 value];
  -[HMDDataStreamTCPSetupOperation setRemoteTcpPort:](selfCopy2, "setRemoteTcpPort:", [value integerValue]);

  accessoryKeySalt2 = [responseCopy accessoryKeySalt];
  [(HMDDataStreamTCPSetupOperation *)selfCopy2 setAccessoryKeySalt:accessoryKeySalt2];

  [(HMDDataStreamTCPSetupOperation *)selfCopy2 _generateStreamKeys];
LABEL_12:
}

- (void)startSetup
{
  v36 = *MEMORY[0x277D85DE8];
  accessory = [(HMDDataStreamSetupOperation *)self accessory];
  anyIPServer = [accessory anyIPServer];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (anyIPServer)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating new DataStream using TCP", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    controllerKeySalt = [(HMDDataStreamTCPSetupOperation *)selfCopy controllerKeySalt];
    v11 = [objc_alloc(MEMORY[0x277CFEB08]) initWithValue:0];
    v12 = [objc_alloc(MEMORY[0x277CFEB18]) initWithValue:0];
    v26 = [objc_alloc(MEMORY[0x277CFEB20]) initWithCommand:v11 transportType:v12 controllerKeySalt:controllerKeySalt];

    v30 = 0;
    v13 = [v26 serializeWithError:&v30];
    v14 = v30;
    if (v13)
    {
      transferManagementService = [(HMDDataStreamSetupOperation *)selfCopy transferManagementService];
      v16 = [transferManagementService findCharacteristicWithType:@"00000131-0000-1000-8000-0026BB765291"];

      v17 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v16 value:v13 authorizationData:0 type:0];
      objc_initWeak(buf, selfCopy);
      accessory2 = [(HMDDataStreamSetupOperation *)selfCopy accessory];
      v31 = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      queue = [(HMDDataStreamSetupOperation *)selfCopy queue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __44__HMDDataStreamTCPSetupOperation_startSetup__block_invoke;
      v27[3] = &unk_2797353F8;
      objc_copyWeak(&v29, buf);
      v28 = anyIPServer;
      [accessory2 writeCharacteristicValues:v19 source:1090 queue:queue completionHandler:v27];

      [(HMDDataStreamTCPSetupOperation *)selfCopy _finishStreamTransport];
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v25;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; cannot serialize request (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDDataStreamSetupOperation *)v23 postDidFailWithError:v14];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; does not appear to be IP-connected", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDDataStreamSetupOperation *)selfCopy postDidFailWithError:v14];
  }
}

void __44__HMDDataStreamTCPSetupOperation_startSetup__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) peerAddressEx];
    [WeakRetained setRemoteNetAddress:v5];

    v6 = [WeakRetained remoteNetAddress];

    if (v6)
    {
      [WeakRetained continueStreamSetupWithResponse:v3];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = WeakRetained;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; invalid IP address", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277CCFD28] code:54 userInfo:0];
      [v8 postDidFailWithError:v12];
    }
  }
}

- (id)_fullKeySalt
{
  controllerKeySalt = [(HMDDataStreamTCPSetupOperation *)self controllerKeySalt];
  v4 = [controllerKeySalt mutableCopy];

  accessoryKeySalt = [(HMDDataStreamTCPSetupOperation *)self accessoryKeySalt];
  [v4 appendData:accessoryKeySalt];

  v6 = objc_msgSend_copy(v4);

  return v6;
}

- (BOOL)_isComplete
{
  remoteNetAddress = [(HMDDataStreamTCPSetupOperation *)self remoteNetAddress];
  if (remoteNetAddress && [(HMDDataStreamTCPSetupOperation *)self remoteTcpPort])
  {
    sessionEncryption = [(HMDDataStreamTCPSetupOperation *)self sessionEncryption];
    v5 = sessionEncryption != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HMDDataStreamTCPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service
{
  v10.receiver = self;
  v10.super_class = HMDDataStreamTCPSetupOperation;
  v6 = [(HMDDataStreamSetupOperation *)&v10 initWithAccessory:accessory queue:queue logIdentifier:identifier transferManagementService:service];
  if (v6)
  {
    v7 = HMFRandomDataWithLength();
    controllerKeySalt = v6->_controllerKeySalt;
    v6->_controllerKeySalt = v7;
  }

  return v6;
}

@end