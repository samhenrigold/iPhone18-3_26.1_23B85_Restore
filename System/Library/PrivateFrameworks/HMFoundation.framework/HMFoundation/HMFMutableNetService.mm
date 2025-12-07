@interface HMFMutableNetService
- (HMFMutableNetService)initWithDomain:(id)domain type:(id)type name:(id)name port:(unint64_t)port;
- (HMFMutableNetService)initWithNetService:(id)service;
- (id)internal;
- (void)netService:(id)service didNotPublish:(id)publish;
- (void)netServiceDidPublish:(id)publish;
- (void)netServiceDidStop:(id)stop;
- (void)netServiceWillPublish:(id)publish;
- (void)removeTXTRecordValueForKey:(id)key;
- (void)setInternal:(id)internal;
- (void)setTXTRecord:(id)record;
- (void)setTXTRecordValue:(id)value forKey:(id)key;
- (void)startPublishingWithCompletionHandler:(id)handler;
- (void)stopPublishing;
- (void)updateTXTRecord;
@end

@implementation HMFMutableNetService

- (HMFMutableNetService)initWithNetService:(id)service
{
  serviceCopy = service;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMFMutableNetService)initWithDomain:(id)domain type:(id)type name:(id)name port:(unint64_t)port
{
  v38 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  nameCopy = name;
  v13 = nameCopy;
  if (!domainCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle(selfCopy3, v27);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v29 = HMFGetLogIdentifier(selfCopy3);
    *buf = 138543362;
    v37 = v29;
    v30 = "%{public}@Service domain is required";
LABEL_13:
    _os_log_impl(&dword_22ADEC000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);

    goto LABEL_14;
  }

  if (!typeCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle(selfCopy3, v31);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v29 = HMFGetLogIdentifier(selfCopy3);
    *buf = 138543362;
    v37 = v29;
    v30 = "%{public}@Service type is required";
    goto LABEL_13;
  }

  if (!nameCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle(selfCopy3, v32);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier(selfCopy3);
      *buf = 138543362;
      v37 = v29;
      v30 = "%{public}@Service name is required";
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_15;
  }

  v34.receiver = self;
  v34.super_class = HMFMutableNetService;
  v14 = [(HMFNetService *)&v34 initWithNetService:0];
  if (v14)
  {
    v15 = [domainCopy copy];
    domain = v14->super._domain;
    v14->super._domain = v15;

    v17 = [typeCopy copy];
    type = v14->super._type;
    v14->super._type = v17;

    v19 = [v13 copy];
    name = v14->super._name;
    v14->super._name = v19;

    v14->super._port = port;
    v21 = +[HMFNetAddress localAddress];
    v35 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    addresses = v14->super._addresses;
    v14->super._addresses = v22;
  }

  selfCopy3 = v14;
  v25 = selfCopy3;
LABEL_15:

  return v25;
}

- (void)setTXTRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy mutableCopy];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableDictionary *)self->super._TXTRecord isEqualToDictionary:v4]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    if (v4)
    {
      dictionary = v4;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    TXTRecord = self->super._TXTRecord;
    self->super._TXTRecord = dictionary;

    [(HMFMutableNetService *)self updateTXTRecord];
    os_unfair_lock_unlock(&self->super._lock);
    v7 = [v4 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    __notifyUpdatedTXTRecord(self, v9);
  }
}

- (void)setTXTRecordValue:(id)value forKey:(id)key
{
  v24[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  selfCopy = self;
  v9 = keyCopy;
  v10 = MEMORY[0x277CBAB60];
  v23 = v9;
  data = [MEMORY[0x277CBEA90] data];
  v24[0] = data;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v13 = [v10 dataFromTXTRecordDictionary:v12];

  v14 = 0;
  v15 = selfCopy;
  v16 = valueCopy;
  v17 = MEMORY[0x277CBAB60];
  v23 = @"key";
  v24[0] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v19 = [v17 dataFromTXTRecordDictionary:v18];

  v20 = v14;
  os_unfair_lock_lock_with_options();
  v21 = [(NSMutableDictionary *)v15->super._TXTRecord objectForKey:v9];
  LODWORD(v18) = [v21 isEqualToData:v16];

  if (v18)
  {
    os_unfair_lock_unlock(&v15->super._lock);
  }

  else
  {
    [(NSMutableDictionary *)v15->super._TXTRecord setObject:v16 forKey:v9];
    [(HMFMutableNetService *)v15 updateTXTRecord];
    v22 = [(NSMutableDictionary *)v15->super._TXTRecord copy];
    os_unfair_lock_unlock(&v15->super._lock);
    if (v22)
    {
      __notifyUpdatedTXTRecord(v15, v22);
    }
  }
}

- (void)removeTXTRecordValueForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->super._TXTRecord removeObjectForKey:keyCopy];
  [(HMFMutableNetService *)self updateTXTRecord];
  v4 = [(NSMutableDictionary *)self->super._TXTRecord copy];
  os_unfair_lock_unlock(&self->super._lock);
  if (v4)
  {
    __notifyUpdatedTXTRecord(self, v4);
  }
}

- (void)updateTXTRecord
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFMutableNetService_updateTXTRecord__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __39__HMFMutableNetService_updateTXTRecord__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPublishing])
  {
    v2 = [*(a1 + 32) internal];
    v3 = MEMORY[0x277CBAB60];
    v4 = [*(a1 + 32) TXTRecord];
    v5 = [v3 dataFromTXTRecordDictionary:v4];
    v6 = [v2 setTXTRecordData:v5];

    if ((v6 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v10 = HMFGetOSLogHandle(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier(v8);
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to update TXT record", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (id)internal
{
  os_unfair_lock_lock_with_options();
  v3 = self->super._internal;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setInternal:(id)internal
{
  internalCopy = internal;
  os_unfair_lock_lock_with_options();
  internal = self->super._internal;
  self->super._internal = internalCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)startPublishingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMFNetService *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMFMutableNetService_startPublishingWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786E6D68;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

void __61__HMFMutableNetService_startPublishingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPublishing])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v5 = HMFGetOSLogHandle(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(v3);
      v32 = 138543362;
      v33 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@The service is already publishing", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    return;
  }

  if ([*(a1 + 32) port])
  {
    v8 = objc_alloc(MEMORY[0x277CBAB60]);
    v9 = [*(a1 + 32) domain];
    v10 = [*(a1 + 32) type];
    v11 = [*(a1 + 32) name];
    v12 = [v8 initWithDomain:v9 type:v10 name:v11 port:{objc_msgSend(*(a1 + 32), "port")}];

    if (v12)
    {
      [*(a1 + 32) setInternal:v12];
      [v12 setDelegate:*(a1 + 32)];
      v13 = MEMORY[0x277CBAB60];
      v14 = [*(a1 + 32) TXTRecord];
      v15 = [v13 dataFromTXTRecordDictionary:v14];
      [v12 setTXTRecordData:v15];

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v19 = HMFGetOSLogHandle(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier(v17);
        v32 = 138543362;
        v33 = v20;
        _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_INFO, "%{public}@Start publishing the net service", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [*(a1 + 32) setPublishing:1];
      [*(a1 + 32) setPublishBlock:*(a1 + 40)];
      v21 = [*(a1 + 32) internal];
      [v21 publishWithOptions:0];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v30 = HMFGetOSLogHandle(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier(v28);
        v32 = 138543362;
        v33 = v31;
        _os_log_impl(&dword_22ADEC000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to create internal net service", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      if (!*(a1 + 40))
      {
        goto LABEL_20;
      }

      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Failed to create record."];
      (*(*(a1 + 40) + 16))();
    }

LABEL_20:
    return;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = *(a1 + 32);
  v25 = HMFGetOSLogHandle(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier(v23);
    v32 = 138543362;
    v33 = v26;
    _os_log_impl(&dword_22ADEC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot publish without a resolved port", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  if (*(a1 + 40))
  {
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Cannot publish without a resolved port."];
    (*(*(a1 + 40) + 16))();
    goto LABEL_20;
  }
}

- (void)stopPublishing
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMFNetService *)self isPublishing])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle(selfCopy, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping the net service", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFNetService *)selfCopy setPublishing:0];
    clientQueue = [(HMFNetService *)selfCopy clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__HMFMutableNetService_stopPublishing__block_invoke;
    block[3] = &unk_2786E6C80;
    block[4] = selfCopy;
    dispatch_async(clientQueue, block);
  }
}

void __38__HMFMutableNetService_stopPublishing__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) internal];
  [v1 stop];
}

- (void)netServiceWillPublish:(id)publish
{
  v12 = *MEMORY[0x277D85DE8];
  publishCopy = publish;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Net service will publish", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)netServiceDidPublish:(id)publish
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMFMutableNetService_netServiceDidPublish___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __45__HMFMutableNetService_netServiceDidPublish___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(v3);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Published", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) publishBlock];
  if (v7)
  {
    [*(a1 + 32) setPublishBlock:0];
    v7[2](v7, 0);
  }
}

- (void)netService:(id)service didNotPublish:(id)publish
{
  publishCopy = publish;
  clientQueue = [(HMFNetService *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMFMutableNetService_netService_didNotPublish___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = publishCopy;
  v7 = publishCopy;
  dispatch_async(clientQueue, v8);
}

void __49__HMFMutableNetService_netService_didNotPublish___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(v3);
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Failed to publish", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v10 = HMFGetOSLogHandle(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier(v8);
    v12 = *(a1 + 40);
    v17 = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Failed to publish with error: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [*(a1 + 32) publishBlock];
  if (v13)
  {
    [*(a1 + 32) setPublishBlock:0];
    v14 = MEMORY[0x277CCA9B8];
    v15 = [objc_opt_class() errorFromNetServiceErrorDict:*(a1 + 40)];
    v16 = [v14 hmfErrorWithCode:11 reason:@"Failed to publish net service." suggestion:0 underlyingError:v15];

    (v13)[2](v13, v16);
  }
}

- (void)netServiceDidStop:(id)stop
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMFMutableNetService_netServiceDidStop___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __42__HMFMutableNetService_netServiceDidStop___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Net service did stop", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setPublishing:0];
  [*(a1 + 32) setInternal:0];
  v7 = [*(a1 + 32) publishBlock];
  if (v7)
  {
    [*(a1 + 32) setPublishBlock:0];
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12 reason:@"Net service stopped publishing."];
    (v7)[2](v7, v8);
  }
}

@end