@interface HMDAppleMediaAccessoryLocalMessageHandler
+ (id)logCategory;
- (HMDAppleMediaAccessoryLocalMessageHandler)initWithIdentifier:(id)identifier assistantSettingsConnection:(id)connection;
- (HMDAppleMediaAccessoryLocalMessageHandlerDataSource)dataSource;
- (id)dataSourceAccessoryWithUUID:(id)d;
- (id)logIdentifier;
- (void)handleSiriEndpointDeleteSiriHistoryMessage:(id)message;
@end

@implementation HMDAppleMediaAccessoryLocalMessageHandler

- (HMDAppleMediaAccessoryLocalMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDAppleMediaAccessoryLocalMessageHandler *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)dataSourceAccessoryWithUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDAppleMediaAccessoryLocalMessageHandler *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource accessoryWithUUID:dCopy forAppleMediaAccessoryLocalMessageHandler:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory with uuid: %@ due to no data source", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (void)handleSiriEndpointDeleteSiriHistoryMessage:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v8;
    v39 = 2112;
    v40 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling siri endpoint delete siri history message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E18]) initWithPayload:messagePayload];
    v11 = v10;
    if (v10)
    {
      accessoryUUID = [v10 accessoryUUID];
      v13 = [(HMDAppleMediaAccessoryLocalMessageHandler *)selfCopy dataSourceAccessoryWithUUID:accessoryUUID];
      v14 = v13;
      if (v13)
      {
        endpointIdentifier = [v13 endpointIdentifier];
        if (endpointIdentifier)
        {
          assistantSettingsConnection = [(HMDAppleMediaAccessoryLocalMessageHandler *)selfCopy assistantSettingsConnection];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __88__HMDAppleMediaAccessoryLocalMessageHandler_handleSiriEndpointDeleteSiriHistoryMessage___block_invoke;
          v35[3] = &unk_2797359D8;
          v36 = messageCopy;
          [assistantSettingsConnection deleteSiriHistoryWithEndpointUUID:endpointIdentifier completionHandler:v35];

          v17 = v36;
        }

        else
        {
          v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          v30 = objc_autoreleasePoolPush();
          v31 = selfCopy;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v33 = v34 = v30;
            *buf = 138544130;
            v38 = v33;
            v39 = 2112;
            v40 = v14;
            v41 = 2112;
            v42 = messageCopy;
            v43 = 2112;
            v44 = v17;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to get endpoint identifier for accessory: %@ for delete siri history message: %@ error: %@", buf, 0x2Au);

            v30 = v34;
          }

          objc_autoreleasePoolPop(v30);
          [messageCopy respondWithError:v17];
        }
      }

      else
      {
        endpointIdentifier = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v29;
          v39 = 2112;
          v40 = accessoryUUID;
          v41 = 2112;
          v42 = messageCopy;
          v43 = 2112;
          v44 = endpointIdentifier;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory with uuid: %@ for delete siri history message: %@ error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v26);
        [messageCopy respondWithError:endpointIdentifier];
      }
    }

    else
    {
      accessoryUUID = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v25;
        v39 = 2112;
        v40 = messagePayload;
        v41 = 2112;
        v42 = accessoryUUID;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode message payload from delete siri history message payload: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      [messageCopy respondWithError:accessoryUUID];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v21;
      v39 = 2112;
      v40 = messageCopy;
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from delete siri history message: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [messageCopy respondWithError:v11];
  }
}

uint64_t __88__HMDAppleMediaAccessoryLocalMessageHandler_handleSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) respondWithError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 respondWithSuccess];
}

- (HMDAppleMediaAccessoryLocalMessageHandler)initWithIdentifier:(id)identifier assistantSettingsConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = connectionCopy;
  if (!connectionCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryLocalMessageHandler *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoryLocalMessageHandler;
  v10 = [(HMDAppleMediaAccessoryLocalMessageHandler *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, identifier);
    objc_storeStrong(&v11->_assistantSettingsConnection, connection);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_42092 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_42092, &__block_literal_global_42093);
  }

  v3 = logCategory__hmf_once_v7_42094;

  return v3;
}

uint64_t __56__HMDAppleMediaAccessoryLocalMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_42094;
  logCategory__hmf_once_v7_42094 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end