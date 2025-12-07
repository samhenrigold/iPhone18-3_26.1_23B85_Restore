@interface HAPSocketInfo
+ (id)ipAddressAddScopeWithAddress:(id)address;
+ (id)ipAddressRemoveScopeWithAddress:(id)address;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HAPSocketInfo)initWithDictionary:(id)dictionary;
- (HAPSocketInfo)initWithIPAddressString:(id)string ipAddressType:(int64_t)type port:(id)port;
- (HAPSocketInfo)initWithIPAddressString:(id)string port:(id)port;
- (HAPSocketInfo)initWithSocket:(const sockaddr_storage *)socket;
- (NSDictionary)dictionaryRepresentation;
- (NSString)ipAddressStringWithScope;
@end

@implementation HAPSocketInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ipAddressString = self->_ipAddressString, !(ipAddressString | equalCopy[1])) || -[NSString isEqualToString:](ipAddressString, "isEqualToString:")))
  {
    port = self->_port;
    if (port | equalCopy[2])
    {
      v7 = [(NSNumber *)port isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x277D85DE8];
  ipAddressString = [(HAPSocketInfo *)self ipAddressString];
  v4 = [HAPSocketInfo ipAddressRemoveScopeWithAddress:ipAddressString];

  v8[0] = @"HAPSocketInfoIPAddressString";
  v8[1] = @"HAPSocketInfoPort";
  v9[0] = v4;
  port = [(HAPSocketInfo *)self port];
  v9[1] = port;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (NSString)ipAddressStringWithScope
{
  ipAddressType = [(HAPSocketInfo *)self ipAddressType];
  if (ipAddressType <= 4)
  {
    ipAddressType = [(HAPSocketInfo *)self ipAddressString];
  }

  return ipAddressType;
}

- (HAPSocketInfo)initWithIPAddressString:(id)string ipAddressType:(int64_t)type port:(id)port
{
  stringCopy = string;
  portCopy = port;
  v14.receiver = self;
  v14.super_class = HAPSocketInfo;
  v11 = [(HAPSocketInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ipAddressString, string);
    v12->_ipAddressType = type;
    objc_storeStrong(&v12->_port, port);
  }

  return v12;
}

- (HAPSocketInfo)initWithIPAddressString:(id)string port:(id)port
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  portCopy = port;
  v8 = portCopy;
  selfCopy = 0;
  if (stringCopy && portCopy)
  {
    v18 = 0;
    if (inet_pton(2, [stringCopy UTF8String], &v18) == 1)
    {
      v10 = [(HAPSocketInfo *)self initWithIPAddressString:stringCopy ipAddressType:1 port:v8];
LABEL_18:
      self = v10;
      selfCopy = self;
      goto LABEL_19;
    }

    v17[0] = 0;
    v17[1] = 0;
    if (inet_pton(30, [stringCopy UTF8String], v17) == 1)
    {
      if (LOBYTE(v17[0]) == 255)
      {
        if ((BYTE1(v17[0]) & 0xF) == 0xE)
        {
          v11 = 3;
          goto LABEL_17;
        }
      }

      else if (LOBYTE(v17[0]) == 254)
      {
        if ((BYTE1(v17[0]) & 0xC0) == 0x80)
        {
          v11 = 2;
LABEL_17:
          v10 = [(HAPSocketInfo *)self initWithIPAddressString:stringCopy ipAddressType:v11 port:v8];
          goto LABEL_18;
        }
      }

      else if ((v17[0] & 0xFE) == 0xFC)
      {
        v11 = 4;
        goto LABEL_17;
      }
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = stringCopy;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not determine IP address type from string: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
    goto LABEL_17;
  }

LABEL_19:

  return selfCopy;
}

- (HAPSocketInfo)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_stringForKey:@"HAPSocketInfoIPAddressString"];
  v6 = [dictionaryCopy hmf_numberForKey:@"HAPSocketInfoPort"];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [HAPSocketInfo ipAddressRemoveScopeWithAddress:v5];
    v9 = [HAPSocketInfo ipAddressAddScopeWithAddress:v8];
    selfCopy = [(HAPSocketInfo *)self initWithIPAddressString:v9 port:v7];

    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dictionaryCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize socket info from dictionary: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

- (HAPSocketInfo)initWithSocket:(const sockaddr_storage *)socket
{
  v27 = *MEMORY[0x277D85DE8];
  ss_family = socket->ss_family;
  if (ss_family == 2 || ss_family == 30)
  {
    v6 = SockAddrToString();
    if (!v6)
    {
      Port = SockAddrGetPort();
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:Port];
      selfCopy2 = [(HAPSocketInfo *)self initWithIPAddressString:v16 port:v17];

      v14 = selfCopy2;
      goto LABEL_13;
    }

    v7 = v6;
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v8;
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize HAPSocketInfo: failed to obtain socket address string: %d", &v19, 0x12u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v13;
      v25 = 1024;
      v26 = ss_family;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize HAPSocketInfo: invalid socket address family: %d", buf, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v14 = 0;
LABEL_13:

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)ipAddressAddScopeWithAddress:(id)address
{
  addressCopy = address;
  v4 = addressCopy;
  if (addressCopy)
  {
    v9[0] = 0;
    v9[1] = 0;
    if (inet_pton(30, [addressCopy UTF8String], v9) == 1 && LOBYTE(v9[0]) == 254 && (BYTE1(v9[0]) & 0xC0) == 0x80)
    {
      v5 = +[HAPInterfaceConfig activeWifiOrEthernetInterfaceName];
      v6 = v5;
      if (v5)
      {
        v7 = [v4 stringByAppendingFormat:@"%%%@", v5];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)ipAddressRemoveScopeWithAddress:(id)address
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8[2] = 0;
  addressCopy = address;
  v4 = addressCopy;
  if (addressCopy)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (inet_pton(30, [addressCopy UTF8String], v8) == 1 && LOBYTE(v8[0]) == 254 && (BYTE1(v8[0]) & 0xC0) == 0x80 && (objc_msgSend(v4, "UTF8String"), !StringToSockAddr()))
    {
      SockAddrToString();
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end