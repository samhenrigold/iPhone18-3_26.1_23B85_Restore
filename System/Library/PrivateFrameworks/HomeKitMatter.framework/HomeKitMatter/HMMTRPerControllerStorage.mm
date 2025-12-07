@interface HMMTRPerControllerStorage
+ (id)logCategory;
- (BOOL)controller:(id)controller removeValueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (BOOL)controller:(id)controller storeValue:(id)value forKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (BOOL)controller:(id)controller storeValues:(id)values securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (HMMTRPerControllerStorage)initWithQueue:(id)queue fabric:(id)fabric;
- (HMMTRPerControllerStorage)initWithQueue:(id)queue privateDataSource:(id)source;
- (id)attributeDescriptions;
- (id)controller:(id)controller valueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type;
- (id)logIdentifier;
- (id)valuesForController:(id)controller securityLevel:(unint64_t)level sharingType:(unint64_t)type;
@end

@implementation HMMTRPerControllerStorage

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  fabricID = [(HMMTRPerControllerStorage *)self fabricID];
  v6 = [v4 initWithName:@"FabricID" value:fabricID];
  [array addObject:v6];

  v7 = [array copy];

  return v7;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  fabricID = [(HMMTRPerControllerStorage *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", fabricID];

  return v4;
}

- (BOOL)controller:(id)controller storeValues:(id)values securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  valuesCopy = values;
  context = objc_autoreleasePoolPush();
  v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  allKeys = [valuesCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v9)
  {
    v10 = *v38;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [valuesCopy objectForKeyedSubscript:v12];
        v36 = 0;
        v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v36];
        v15 = v36;
        if (!v14)
        {
          v24 = objc_autoreleasePoolPush();
          selfCopy = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            *&buf[22] = 2112;
            v42 = v15;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive requested value for key %@ with error %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v24);
          v23 = 0;
          goto LABEL_15;
        }

        [v32 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "count")}];
    *buf = 138543618;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating %@ key-value pairs in local storage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v42) = 0;
  privateDataSource = [(HMMTRPerControllerStorage *)selfCopy2 privateDataSource];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__HMMTRPerControllerStorage_controller_storeValues_securityLevel_sharingType___block_invoke;
  v33[3] = &unk_2786F0D18;
  v35 = buf;
  allKeys = v21;
  v34 = allKeys;
  [privateDataSource setKeyValuePairs:v32 completion:v33];

  dispatch_group_wait(allKeys, 0xFFFFFFFFFFFFFFFFLL);
  v23 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_15:

  objc_autoreleasePoolPop(context);
  return v23 & 1;
}

- (id)valuesForController:(id)controller securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v50 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  privateDataSource = [(HMMTRPerControllerStorage *)self privateDataSource];
  allKeyValuePairs = [privateDataSource allKeyValuePairs];

  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allKeyValuePairs, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [allKeyValuePairs allKeys];
  v8 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  v33 = allKeyValuePairs;
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = 0;
      v35 = v9;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = [allKeyValuePairs objectForKeyedSubscript:v13];
        v15 = *(v11 + 2760);
        v16 = MTRDeviceControllerStorageClasses();
        v38 = 0;
        v17 = [v15 unarchivedObjectOfClasses:v16 fromData:v14 error:&v38];
        v18 = v38;

        if (v17)
        {
          [v37 setObject:v17 forKeyedSubscript:v13];
        }

        else
        {
          v19 = v10;
          v20 = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543874;
            v44 = v23;
            v45 = 2112;
            v46 = v13;
            v47 = 2112;
            v48 = v18;
            _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive value for key %@ with error %@", buf, 0x20u);

            allKeyValuePairs = v33;
          }

          objc_autoreleasePoolPop(v20);
          v10 = v19;
          v11 = 0x277CCA000;
          v9 = v35;
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v9);
  }

  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v37, "count")}];
    *buf = 138543618;
    v44 = v27;
    v45 = 2112;
    v46 = v28;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched %@ key-value pairs from local storage", buf, 0x16u);

    allKeyValuePairs = v33;
  }

  objc_autoreleasePoolPop(v24);
  objc_autoreleasePoolPop(context);
  v29 = [v37 copy];

  return v29;
}

- (id)controller:(id)controller valueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  keyCopy = key;
  privateDataSource = [(HMMTRPerControllerStorage *)self privateDataSource];
  v11 = [privateDataSource valueForKey:keyCopy];

  if (v11)
  {
    v12 = MEMORY[0x277CCAAC8];
    v13 = MTRDeviceControllerStorageClasses();
    v21 = 0;
    v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v11 error:&v21];
    v15 = v21;

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v19;
        v24 = 2112;
        v25 = keyCopy;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive value for key %@ with error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)controller:(id)controller storeValue:(id)value forKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  valueCopy = value;
  keyCopy = key;
  v27 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:&v27];
  v14 = v27;
  if (v13)
  {
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v29) = 0;
    privateDataSource = [(HMMTRPerControllerStorage *)self privateDataSource];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__HMMTRPerControllerStorage_controller_storeValue_forKey_securityLevel_sharingType___block_invoke;
    v24[3] = &unk_2786F0D18;
    v26 = buf;
    v17 = v15;
    v25 = v17;
    [privateDataSource setValue:v13 forKey:keyCopy completion:v24];

    dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = keyCopy;
      *&buf[22] = 2112;
      v29 = v14;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive requested value for key %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18 & 1;
}

- (BOOL)controller:(id)controller removeValueForKey:(id)key securityLevel:(unint64_t)level sharingType:(unint64_t)type
{
  controllerCopy = controller;
  keyCopy = key;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  privateDataSource = [(HMMTRPerControllerStorage *)self privateDataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMMTRPerControllerStorage_controller_removeValueForKey_securityLevel_sharingType___block_invoke;
  v14[3] = &unk_2786F0D18;
  v16 = &v17;
  v12 = v10;
  v15 = v12;
  [privateDataSource removeValueForKey:keyCopy completion:v14];

  dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(privateDataSource) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return privateDataSource;
}

- (HMMTRPerControllerStorage)initWithQueue:(id)queue privateDataSource:(id)source
{
  queueCopy = queue;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HMMTRPerControllerStorage;
  v9 = [(HMMTRPerControllerStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_privateDataSource, source);
  }

  return v10;
}

- (HMMTRPerControllerStorage)initWithQueue:(id)queue fabric:(id)fabric
{
  queueCopy = queue;
  fabricCopy = fabric;
  v16.receiver = self;
  v16.super_class = HMMTRPerControllerStorage;
  v9 = [(HMMTRPerControllerStorage *)&v16 init];
  if (v9)
  {
    fabricID = [fabricCopy fabricID];
    fabricID = v9->_fabricID;
    v9->_fabricID = fabricID;

    objc_storeStrong(&v9->_queue, queue);
    currentDeviceNodeData = [fabricCopy currentDeviceNodeData];
    privateDataSource = [currentDeviceNodeData privateDataSource];
    privateDataSource = v9->_privateDataSource;
    v9->_privateDataSource = privateDataSource;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_2119 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_2119, &__block_literal_global_2120);
  }

  v3 = logCategory__hmf_once_v7_2121;

  return v3;
}

uint64_t __40__HMMTRPerControllerStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_2121;
  logCategory__hmf_once_v7_2121 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end