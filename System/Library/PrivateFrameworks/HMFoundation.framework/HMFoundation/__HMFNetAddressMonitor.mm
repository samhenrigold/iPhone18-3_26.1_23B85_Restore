@interface __HMFNetAddressMonitor
- (__HMFNetAddressMonitor)initWithNetAddress:(id)address;
- (__HMFNetAddressMonitor)initWithNetService:(id)service;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)reachabilityPath;
- (void)dealloc;
- (void)handleNetworkReachabilityChange:(unsigned int)change;
@end

@implementation __HMFNetAddressMonitor

- (__HMFNetAddressMonitor)initWithNetService:(id)service
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

- (__HMFNetAddressMonitor)initWithNetAddress:(id)address
{
  v43 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v37.receiver = self;
  v37.super_class = __HMFNetAddressMonitor;
  v7 = [(HMFNetMonitor *)&v37 initWithNetAddress:addressCopy];
  v8 = v7;
  if (!v7)
  {
LABEL_16:
    v34 = v8;
    goto LABEL_22;
  }

  v9 = HMFDispatchQueueName(v7, 0);
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v11 = dispatch_queue_create(v9, v10);
  queue = v8->_queue;
  v8->_queue = v11;

  objc_storeStrong(&v8->_netAddress, address);
  if (addressCopy)
  {
    v13 = *MEMORY[0x277CBECE8];
    addressString = [addressCopy addressString];
    v8->_networkReachabilityRef = SCNetworkReachabilityCreateWithName(v13, [addressString UTF8String]);

    if (v8->_networkReachabilityRef)
    {
LABEL_4:
      memset(&context, 0, sizeof(context));
      v15 = [[HMFWeakObject alloc] initWithWeakObject:v8];
      context.info = v15;
      context.retain = MEMORY[0x277CBE558];
      context.release = MEMORY[0x277CBE550];
      SCNetworkReachabilitySetCallback(v8->_networkReachabilityRef, _networkReachabilityChangeCallback, &context);
      SCNetworkReachabilitySetDispatchQueue(v8->_networkReachabilityRef, v8->_queue);
      flags = 0;
      v16 = SCNetworkReachabilityGetFlags(v8->_networkReachabilityRef, &flags);
      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v20 = HMFGetOSLogHandle(v18, v19);
      v21 = v20;
      if (v16)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier(v18);
          v23 = __SCNetworkReachabilityFlagsToString(flags);
          *buf = 138543618;
          v39 = v22;
          v40 = 2112;
          v41 = v23;
          _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_INFO, "%{public}@Initial flags: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v24 = flags;
        v18->_currentNetworkFlags = flags;
        v18->super._reachable = (v24 & 2) != 0;
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier(v18);
          *buf = 138543362;
          v39 = v33;
          _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get initial reachability", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }

      goto LABEL_16;
    }
  }

  else
  {
    *&context.version = xmmword_22AE829D0;
    v25 = SCNetworkReachabilityCreateWithAddress(0, &context);
    v8->_networkReachabilityRef = v25;
    if (v25)
    {
      goto LABEL_4;
    }
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v8;
  v29 = HMFGetOSLogHandle(v27, v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier(v27);
    if (addressCopy)
    {
      v31 = MEMORY[0x277CCACA8];
      addressString2 = [addressCopy addressString];
      v32 = [v31 stringWithFormat:@"for %@", addressString2];
    }

    else
    {
      v32 = &stru_283EBDA30;
    }

    LODWORD(context.version) = 138543618;
    *(&context.version + 4) = v30;
    WORD2(context.info) = 2112;
    *(&context.info + 6) = v32;
    _os_log_impl(&dword_22ADEC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create network reachability monitor%@.", &context, 0x16u);
    if (addressCopy)
    {
    }
  }

  objc_autoreleasePoolPop(v26);
  v34 = 0;
LABEL_22:

  return v34;
}

- (void)dealloc
{
  networkReachabilityRef = self->_networkReachabilityRef;
  if (networkReachabilityRef)
  {
    SCNetworkReachabilitySetCallback(networkReachabilityRef, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(self->_networkReachabilityRef, 0);
    CFRelease(self->_networkReachabilityRef);
    self->_networkReachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = __HMFNetAddressMonitor;
  [(__HMFNetAddressMonitor *)&v4 dealloc];
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  netAddress = [(__HMFNetAddressMonitor *)self netAddress];
  if (netAddress)
  {
    netAddress2 = [(__HMFNetAddressMonitor *)self netAddress];
    addressString = [netAddress2 addressString];
    v8 = [v3 stringWithFormat:@"%@ '%@'", shortDescription, addressString];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"%@ '%@'", shortDescription, @"localhost"];
  }

  return v8;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  netAddress = [(__HMFNetAddressMonitor *)self netAddress];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Address" value:netAddress];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (unint64_t)reachabilityPath
{
  os_unfair_lock_lock_with_options();
  currentNetworkFlags = self->_currentNetworkFlags;
  v4 = 2;
  if ((currentNetworkFlags & 0x40000) != 0)
  {
    v4 = 3;
  }

  if ((currentNetworkFlags & 2) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  os_unfair_lock_unlock(&self->super._lock);
  return v5;
}

- (void)handleNetworkReachabilityChange:(unsigned int)change
{
  v3 = *&change;
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v10 = __SCNetworkReachabilityFlagsToString(v3);
    v20 = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Received notification of updated flags: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  currentNetworkFlags = [(__HMFNetAddressMonitor *)selfCopy currentNetworkFlags];
  v12 = v3 & 2;
  [(__HMFNetAddressMonitor *)selfCopy setCurrentNetworkFlags:v3];
  if (((currentNetworkFlags >> 1) & 1) != v12 >> 1)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v16 = HMFGetOSLogHandle(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier(v14);
      v18 = v17;
      v19 = @"unreachable";
      if (v12)
      {
        v19 = @"reachable";
      }

      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&dword_22ADEC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Updating reachability to: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMFNetMonitor *)v14 setReachable:v12 != 0];
  }
}

- (id)logIdentifier
{
  netAddress = [(__HMFNetAddressMonitor *)self netAddress];
  if (netAddress)
  {
    netAddress2 = [(__HMFNetAddressMonitor *)self netAddress];
    addressString = [netAddress2 addressString];
  }

  else
  {
    addressString = @"localhost";
  }

  return addressString;
}

@end