@interface HMFNetService
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)errorFromNetServiceErrorDict:(id)dict;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPublishing;
- (BOOL)isResolved;
- (HMFNetAddress)hostName;
- (HMFNetService)init;
- (HMFNetService)initWithDomain:(id)domain type:(id)type name:(id)name;
- (HMFNetService)initWithNetService:(id)service;
- (HMFNetServiceDelegate)delegate;
- (NSArray)addresses;
- (NSDictionary)TXTRecord;
- (id)bestAddress;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (int64_t)resolveRunningState;
- (int64_t)resolveState;
- (unint64_t)hash;
- (unint64_t)port;
- (void)_reallyResolveWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)confirmWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)dealloc;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceDidResolveAddress:(id)address;
- (void)netServiceDidStop:(id)stop;
- (void)netServiceWillResolve:(id)resolve;
- (void)notifyUpdatedAddresses:(id)addresses;
- (void)removeAllTXTRecordObjects;
- (void)resolveWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)setAddresses:(id)addresses;
- (void)setHostname:(id)hostname;
- (void)setPublishing:(BOOL)publishing;
- (void)setResolveRunningState:(int64_t)state;
- (void)setResolveState:(int64_t)state;
- (void)setResolved:(BOOL)resolved;
- (void)setTXTRecord:(id)record;
- (void)startMonitoring;
- (void)updateTXTRecordWithData:(id)data;
@end

@implementation HMFNetService

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"resolved"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isResolved") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"publishing") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isPublishing"))
  {
    v4 = 0;
  }

  else
  {
    v6 = NSStringFromSelector(sel_port);
    v7 = [keyCopy isEqualToString:v6];

    v4 = v7 ^ 1;
  }

  return v4;
}

+ (id)errorFromNetServiceErrorDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy hmf_numberForKey:*MEMORY[0x277CBAAB8]];
  v5 = v4;
  if (v4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"NSNetServiceErrorDomain" code:objc_msgSend(v4 userInfo:{"integerValue"), dictCopy}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 userInfo:dictCopy];
  }
  v6 = ;

  return v6;
}

- (HMFNetService)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFNetService)initWithDomain:(id)domain type:(id)type name:(id)name
{
  v8 = MEMORY[0x277CBAB60];
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v12 = [[v8 alloc] initWithDomain:domainCopy type:typeCopy name:nameCopy];

  v13 = [(HMFNetService *)self initWithNetService:v12];
  return v13;
}

- (HMFNetService)initWithNetService:(id)service
{
  serviceCopy = service;
  v26.receiver = self;
  v26.super_class = HMFNetService;
  v6 = [(HMFNetService *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, MEMORY[0x277D85CD0]);
    domain = [serviceCopy domain];
    v9 = [domain copy];
    domain = v7->_domain;
    v7->_domain = v9;

    type = [serviceCopy type];
    v12 = [type copy];
    type = v7->_type;
    v7->_type = v12;

    name = [serviceCopy name];
    v15 = [name copy];
    name = v7->_name;
    v7->_name = v15;

    v7->_port = [serviceCopy port];
    array = [MEMORY[0x277CBEB18] array];
    resolveBlocks = v7->_resolveBlocks;
    v7->_resolveBlocks = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    TXTRecord = v7->_TXTRecord;
    v7->_TXTRecord = dictionary;

    objc_storeStrong(&v7->_internal, service);
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v22 = *MEMORY[0x277CBE738];
    [serviceCopy removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [serviceCopy scheduleInRunLoop:mainRunLoop forMode:v22];

    if (serviceCopy)
    {
      tXTRecordData = [serviceCopy TXTRecordData];
      [(HMFNetService *)v7 updateTXTRecordWithData:tXTRecordData];
    }

    [(HMFNetService *)v7 startMonitoring];
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_internal;
  [(NSNetService *)v3 setDelegate:0];
  internal = self->_internal;
  self->_internal = 0;

  if (v3)
  {
    clientQueue = self->_clientQueue;
    if (clientQueue)
    {
      v6 = clientQueue;
    }

    else
    {
      v6 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__HMFNetService_dealloc__block_invoke;
    block[3] = &unk_2786E6C80;
    v10 = v3;
    dispatch_async(v6, block);
  }

  v8.receiver = self;
  v8.super_class = HMFNetService;
  [(HMFNetService *)&v8 dealloc];
}

uint64_t __24__HMFNetService_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 32);

  return [v2 stopMonitoring];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v17 = MEMORY[0x277CCACA8];
  shortDescription = [(HMFNetService *)self shortDescription];
  v19 = pointerCopy;
  if (pointerCopy)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v18 = &stru_283EBDA30;
  }

  domain = [(HMFNetService *)self domain];
  type = [(HMFNetService *)self type];
  name = [(HMFNetService *)self name];
  port = [(HMFNetService *)self port];
  addresses = [(HMFNetService *)self addresses];
  isPublishing = [(HMFNetService *)self isPublishing];
  v12 = self->_resolveState == 1;
  v13 = self->_resolveRunningState == 1;
  resolveBlocks = [(HMFNetService *)self resolveBlocks];
  v15 = [v17 stringWithFormat:@"<%@%@, Domain = %@, Type = %@, Name = %@, Port = %tu, Addresses = %@, isPublishing = %d, ResolveState = %d, ResolveRunningState = %d, ResolveBlocksCount = %d>", shortDescription, v18, domain, type, name, port, addresses, isPublishing, v12, v13, objc_msgSend(resolveBlocks, "count")];

  if (v19)
  {
  }

  return v15;
}

- (unint64_t)hash
{
  name = [(HMFNetService *)self name];
  v4 = [name hash];
  type = [(HMFNetService *)self type];
  v6 = [type hash] ^ v4;
  domain = [(HMFNetService *)self domain];
  v8 = [domain hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[HMFNetService port](self, "port"), v6 = -[HMFNetService port](equalCopy, "port"), v5 == -1) || v6 == -1 || (v7 = -[HMFNetService port](self, "port"), v7 == -[HMFNetService port](equalCopy, "port"))) && (-[HMFNetService name](self, "name"), v8 = objc_claimAutoreleasedReturnValue(), -[HMFNetService name](equalCopy, "name"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, v10) && (-[HMFNetService type](self, "type"), v11 = objc_claimAutoreleasedReturnValue(), -[HMFNetService type](equalCopy, "type"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v13))
    {
      domain = [(HMFNetService *)self domain];
      if ([domain length])
      {
        domain2 = [(HMFNetService *)equalCopy domain];
        if ([domain2 length])
        {
          domain3 = [(HMFNetService *)self domain];
          domain4 = [(HMFNetService *)equalCopy domain];
          v18 = [domain3 isEqualToString:domain4];
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18 & 1;
}

- (void)startMonitoring
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMFNetService_startMonitoring__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __32__HMFNetService_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internal];
  [v2 setDelegate:*(a1 + 32)];

  v3 = [*(a1 + 32) internal];
  [v3 startMonitoring];
}

- (unint64_t)port
{
  os_unfair_lock_lock_with_options();
  port = self->_port;
  os_unfair_lock_unlock(&self->_lock);
  return port;
}

- (BOOL)isResolved
{
  os_unfair_lock_lock_with_options();
  resolved = self->_resolved;
  os_unfair_lock_unlock(&self->_lock);
  return resolved;
}

- (void)setResolved:(BOOL)resolved
{
  if (resolved)
  {
    [(HMFNetService *)self willChangeValueForKey:@"isResolved"];
    os_unfair_lock_lock_with_options();
    self->_resolved = 1;
    os_unfair_lock_unlock(&self->_lock);

    [(HMFNetService *)self didChangeValueForKey:@"isResolved"];
  }
}

- (BOOL)isPublishing
{
  os_unfair_lock_lock_with_options();
  publishing = self->_publishing;
  os_unfair_lock_unlock(&self->_lock);
  return publishing;
}

- (void)setPublishing:(BOOL)publishing
{
  publishingCopy = publishing;
  [(HMFNetService *)self willChangeValueForKey:@"isPublishing"];
  os_unfair_lock_lock_with_options();
  if (self->_publishing == publishingCopy)
  {
    os_unfair_lock_unlock(&self->_lock);

    [(HMFNetService *)self didChangeValueForKey:@"isPublishing"];
  }

  else
  {
    self->_publishing = publishingCopy;
    os_unfair_lock_unlock(&self->_lock);
    [(HMFNetService *)self didChangeValueForKey:@"isPublishing"];
    delegate = [(HMFNetService *)self delegate];
    if (publishingCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate netServiceDidStartPublishing:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate netServiceDidStopPublishing:self];
    }
  }
}

- (int64_t)resolveState
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  return self->_resolveState;
}

- (void)setResolveState:(int64_t)state
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_resolveState = state;
}

- (int64_t)resolveRunningState
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  return self->_resolveRunningState;
}

- (void)setResolveRunningState:(int64_t)state
{
  clientQueue = [(HMFNetService *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_resolveRunningState = state;
}

- (HMFNetAddress)hostName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hostName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHostname:(id)hostname
{
  hostnameCopy = hostname;
  os_unfair_lock_lock_with_options();
  hostName = self->_hostName;
  self->_hostName = hostnameCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)addresses
{
  os_unfair_lock_lock_with_options();
  v3 = self->_addresses;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = [addressesCopy copy];
  os_unfair_lock_lock_with_options();
  if (([(NSArray *)self->_addresses isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_addresses, v4);
    [(HMFNetService *)self notifyUpdatedAddresses:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyUpdatedAddresses:(id)addresses
{
  addressesCopy = addresses;
  clientQueue = [(HMFNetService *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMFNetService_notifyUpdatedAddresses___block_invoke;
  v7[3] = &unk_2786E6D18;
  v7[4] = self;
  v8 = addressesCopy;
  v6 = addressesCopy;
  dispatch_async(clientQueue, v7);
}

void __40__HMFNetService_notifyUpdatedAddresses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 netService:*(a1 + 32) didUpdateAddresses:*(a1 + 40)];
  }
}

- (NSDictionary)TXTRecord
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_TXTRecord copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTXTRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy mutableCopy];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableDictionary *)self->_TXTRecord isEqualToDictionary:recordCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
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

    TXTRecord = self->_TXTRecord;
    self->_TXTRecord = dictionary;

    os_unfair_lock_unlock(&self->_lock);
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

- (void)removeAllTXTRecordObjects
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableDictionary *)self->_TXTRecord count])
  {
    [(NSMutableDictionary *)self->_TXTRecord removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v3 = MEMORY[0x277CBEC10];

    __notifyUpdatedTXTRecord(self, v3);
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)updateTXTRecordWithData:(id)data
{
  dataCopy = data;
  if (dataCopy && ([MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:dataCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [(HMFNetService *)self setTXTRecord:v4];
  }

  else
  {
    [(HMFNetService *)self removeAllTXTRecordObjects];
  }
}

- (id)bestAddress
{
  hostName = [(HMFNetService *)self hostName];
  v4 = hostName;
  if (hostName)
  {
    firstObject = hostName;
  }

  else
  {
    addresses = [(HMFNetService *)self addresses];
    firstObject = [addresses firstObject];
  }

  return firstObject;
}

- (void)resolveWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFNetService_resolveWithTimeout_completionHandler___block_invoke;
  block[3] = &unk_2786E7208;
  block[4] = self;
  v10 = handlerCopy;
  timeoutCopy = timeout;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __54__HMFNetService_resolveWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) resolveState] == 1 && (objc_msgSend(*(a1 + 32), "bestAddress"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v7 = HMFGetOSLogHandle(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier(v5);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Skipping resolving service, already have a cached address: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v3, 0);
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);

    [v11 _reallyResolveWithTimeout:v12 completionHandler:v10];
  }
}

- (void)confirmWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke;
  block[3] = &unk_2786E7208;
  block[4] = self;
  v10 = handlerCopy;
  timeoutCopy = timeout;
  v8 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) resolveRunningState] == 1 && objc_msgSend(*(a1 + 32), "resolveState") == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v5 = HMFGetOSLogHandle(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier(v3);
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Skipping resolving service, still running and already resolved", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke_43;
    v10[3] = &unk_2786E80B0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _reallyResolveWithTimeout:v10 completionHandler:v8];
  }
}

uint64_t __54__HMFNetService_confirmWithTimeout_completionHandler___block_invoke_43(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)_reallyResolveWithTimeout:(double)timeout completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    resolveBlocks = [(HMFNetService *)self resolveBlocks];
    v8 = [handlerCopy copy];
    v9 = _Block_copy(v8);
    [resolveBlocks addObject:v9];
  }

  if ([(HMFNetService *)self resolveRunningState]!= 1)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle(selfCopy, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier(selfCopy);
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Starting to resolve service", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMFNetService *)selfCopy setResolveRunningState:1];
    internal = [(HMFNetService *)selfCopy internal];
    v16 = internal;
    timeoutCopy = 15.0;
    if (timeout > 0.0)
    {
      timeoutCopy = timeout;
    }

    [internal resolveWithTimeout:timeoutCopy];
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3_19 != -1)
  {
    dispatch_once(&_MergedGlobals_3_19, &__block_literal_global_52);
  }

  v3 = qword_280AFC490;

  return v3;
}

uint64_t __28__HMFNetService_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.Service", @"com.apple.HMFoundation");
  v1 = qword_280AFC490;
  qword_280AFC490 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)netServiceWillResolve:(id)resolve
{
  v12 = *MEMORY[0x277D85DE8];
  resolveCopy = resolve;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Net service will resolve", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)netServiceDidResolveAddress:(id)address
{
  addressCopy = address;
  clientQueue = [(HMFNetService *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMFNetService_netServiceDidResolveAddress___block_invoke;
  v7[3] = &unk_2786E6D18;
  v7[4] = self;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(clientQueue, v7);
}

void __45__HMFNetService_netServiceDidResolveAddress___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v39 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Net service resolved", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setResolveState:1];
  v7 = [*(a1 + 40) port];
  if (v7 != [*(a1 + 32) port])
  {
    __HMFNetServiceUpdatePort(*(a1 + 32), v7);
  }

  v8 = [HMFNetAddress alloc];
  v9 = [*(a1 + 40) hostName];
  v10 = [(HMFNetAddress *)v8 initWithHostname:v9];

  [*(a1 + 32) setHostname:v10];
  v11 = [*(a1 + 40) addresses];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count") + 1}];
  v13 = v12;
  if (v10)
  {
    [v12 addObject:v10];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = -[HMFNetAddress initWithSocketAddress:]([HMFNetAddress alloc], "initWithSocketAddress:", [*(*(&v32 + 1) + 8 * i) bytes]);
        if (v19)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v16);
  }

  [*(a1 + 32) setAddresses:v13];
  [*(a1 + 32) setResolved:1];
  if ([v13 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [*(a1 + 32) resolveBlocks];
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v28 + 1) + 8 * j);
          if (v10)
          {
            (*(v25 + 16))(*(*(&v28 + 1) + 8 * j), v10, 0);
          }

          else
          {
            v26 = [v13 firstObject];
            (*(v25 + 16))(v25, v26, 0);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v22);
    }

    v27 = [*(a1 + 32) resolveBlocks];
    [v27 removeAllObjects];
  }
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  resolveCopy = resolve;
  clientQueue = [(HMFNetService *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HMFNetService_netService_didNotResolve___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = resolveCopy;
  v7 = resolveCopy;
  dispatch_async(clientQueue, v8);
}

void __42__HMFNetService_netService_didNotResolve___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    v7 = *(a1 + 40);
    *buf = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Net service failed to resolve with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setResolveState:0];
  [*(a1 + 32) setResolveRunningState:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [*(a1 + 32) resolveBlocks];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = MEMORY[0x277CCA9B8];
        v15 = [objc_opt_class() errorFromNetServiceErrorDict:*(a1 + 40)];
        v16 = [v14 hmfErrorWithCode:2 reason:@"Failed to resolve." suggestion:0 underlyingError:v15];

        (*(v13 + 16))(v13, 0, v16);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = [*(a1 + 32) resolveBlocks];
  [v17 removeAllObjects];
}

- (void)netServiceDidStop:(id)stop
{
  clientQueue = [(HMFNetService *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMFNetService_netServiceDidStop___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __35__HMFNetService_netServiceDidStop___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Net service stopped resolving", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setResolveRunningState:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*(a1 + 32) resolveBlocks];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12 reason:@"Net service stopped resolving."];
        (*(v12 + 16))(v12, 0, v13);

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [*(a1 + 32) resolveBlocks];
  [v14 removeAllObjects];
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle(selfCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier(selfCopy);
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = dataCopy;
    _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Net service TXT record updated: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMFNetService *)selfCopy updateTXTRecordWithData:dataCopy];
}

- (HMFNetServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end