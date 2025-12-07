@interface HMFNetAddress
+ (id)localAddress;
- (BOOL)isEqual:(id)equal;
- (HMFNetAddress)init;
- (HMFNetAddress)initWithHostname:(id)hostname;
- (HMFNetAddress)initWithSocketAddress:(const sockaddr *)address;
- (NSString)addressString;
- (id)attributeDescriptions;
- (id)dataUsingEncoding:(unint64_t)encoding;
- (unint64_t)addressFamily;
- (unint64_t)hash;
@end

@implementation HMFNetAddress

+ (id)localAddress
{
  if (qword_280AFC6C0 != -1)
  {
    dispatch_once(&qword_280AFC6C0, &__block_literal_global_41);
  }

  v3 = _MergedGlobals_73;

  return v3;
}

void __29__HMFNetAddress_localAddress__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = xmmword_22AE82970;
  v0 = [[HMFNetAddress alloc] initWithSocketAddress:&v2];
  v1 = _MergedGlobals_73;
  _MergedGlobals_73 = v0;
}

- (HMFNetAddress)init
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

- (HMFNetAddress)initWithSocketAddress:(const sockaddr *)address
{
  v24 = *MEMORY[0x277D85DE8];
  sa_family = address->sa_family;
  if (sa_family == 2)
  {
    v6 = off_2786E64E8;
  }

  else
  {
    if (sa_family != 30)
    {
      goto LABEL_9;
    }

    v6 = off_2786E64F0;
  }

  v7 = [objc_alloc(*v6) initWithSocketAddress:address];
  if (v7)
  {
    v8 = v7;
    v19.receiver = self;
    v19.super_class = HMFNetAddress;
    v9 = [(HMFNetAddress *)&v19 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_internal, v8);
    }

    selfCopy = v10;

    v12 = selfCopy;
    goto LABEL_12;
  }

LABEL_9:
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle(selfCopy, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier(selfCopy);
    v17 = address->sa_family;
    *buf = 138543618;
    v21 = v16;
    v22 = 1024;
    v23 = v17;
    _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid socket address family: 0x%02x", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_12:

  return v12;
}

- (HMFNetAddress)initWithHostname:(id)hostname
{
  v18 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  if (hostnameCopy)
  {
    v15.receiver = self;
    v15.super_class = HMFNetAddress;
    v5 = [(HMFNetAddress *)&v15 init];
    if (v5)
    {
      v6 = [[_HMFNetAddressHostname alloc] initWithHostname:hostnameCopy];
      internal = v5->_internal;
      v5->_internal = &v6->super;
    }

    selfCopy = v5;
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle(selfCopy, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid hostname", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  internal = [(HMFNetAddress *)self internal];
  v3 = [internal hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      internal = [(HMFNetAddress *)self internal];
      internal2 = [(HMFNetAddress *)equalCopy internal];
      v7 = [internal isEqual:internal2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  addressString = [(HMFNetAddress *)self addressString];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Address" value:addressString];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (unint64_t)addressFamily
{
  internal = [(HMFNetAddress *)self internal];
  addressFamily = [internal addressFamily];

  return addressFamily;
}

- (NSString)addressString
{
  internal = [(HMFNetAddress *)self internal];
  addressString = [internal addressString];

  return addressString;
}

- (id)dataUsingEncoding:(unint64_t)encoding
{
  internal = [(HMFNetAddress *)self internal];
  v5 = [internal dataUsingEncoding:encoding];

  return v5;
}

@end