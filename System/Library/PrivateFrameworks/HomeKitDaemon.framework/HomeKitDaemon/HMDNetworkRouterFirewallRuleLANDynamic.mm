@interface HMDNetworkRouterFirewallRuleLANDynamic
+ (BOOL)__decodeAdvertisingProtocol:(id)protocol advertisingProtocol:(unsigned __int8 *)advertisingProtocol error:(id *)error;
+ (BOOL)__decodeFlags:(id)flags advertisingOnly:(BOOL *)only error:(id *)error;
+ (BOOL)__decodeServiceType:(id)type serviceType:(id *)serviceType error:(id *)error;
+ (id)__advertisingProtocolToString:(unsigned __int8)string;
+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleLANDynamic)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality transportProtocol:(unsigned __int8)self0 advertisingProtocol:(unsigned __int8)self1 advertisingOnly:(BOOL)self2 serviceType:(id)self3;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLANDynamic

- (id)prettyJSONDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRuleLAN *)&v12 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:prettyJSONDictionary];

  [v5 setObject:@"Dynamic Port Rule" forKeyedSubscript:@"type"];
  v6 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleLANDynamic transportProtocol](self, "transportProtocol")}];
  [v5 setObject:v6 forKeyedSubscript:@"transportProtocol"];

  v7 = [objc_opt_class() __advertisingProtocolToString:{-[HMDNetworkRouterFirewallRuleLANDynamic advertisingProtocol](self, "advertisingProtocol")}];
  [v5 setObject:v7 forKeyedSubscript:@"advertisingProtocol"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleLANDynamic isAdvertisingOnly](self, "isAdvertisingOnly")}];
  [v5 setObject:v8 forKeyedSubscript:@"advertisingOnly"];

  v9 = objc_msgSend_serviceType(self);
  [v5 setObject:v9 forKeyedSubscript:@"serviceType"];

  v10 = objc_msgSend_copy(v5);

  return v10;
}

- (id)attributeDescriptions
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
  attributeDescriptions = [(HMDNetworkRouterFirewallRuleLAN *)&v19 attributeDescriptions];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleLANDynamic transportProtocol](self, "transportProtocol")}];
  v4 = [v3 initWithName:@"TransportProtocol" value:v18];
  v20[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleLANDynamic advertisingProtocol](self, "advertisingProtocol")}];
  v7 = [v5 initWithName:@"AdvertisingProtocol" value:v6];
  v20[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleLANDynamic isAdvertisingOnly](self, "isAdvertisingOnly")}];
  v10 = [v8 initWithName:@"AdvertisingOnly" value:v9];
  v20[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = objc_msgSend_serviceType(self);
  v13 = [v11 initWithName:@"ServiceType" value:v12];
  v20[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  return v15;
}

- (unint64_t)hash
{
  transportProtocol = [(HMDNetworkRouterFirewallRuleLANDynamic *)self transportProtocol];
  v4 = [(HMDNetworkRouterFirewallRuleLANDynamic *)self advertisingProtocol]^ transportProtocol;
  v5 = v4 ^ [(HMDNetworkRouterFirewallRuleLANDynamic *)self isAdvertisingOnly];
  v6 = objc_msgSend_serviceType(self);
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v15 isEqual:equalCopy])
    {
      v5 = equalCopy;
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

      transportProtocol = [(HMDNetworkRouterFirewallRuleLANDynamic *)self transportProtocol];
      if (transportProtocol == [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 transportProtocol]&& (v9 = [(HMDNetworkRouterFirewallRuleLANDynamic *)self advertisingProtocol], v9 == [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 advertisingProtocol]) && (v10 = [(HMDNetworkRouterFirewallRuleLANDynamic *)self isAdvertisingOnly], v10 == [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 isAdvertisingOnly]))
      {
        v13 = objc_msgSend_serviceType(self);
        v14 = objc_msgSend_serviceType(v7);
        v11 = HMFEqualObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDNetworkRouterFirewallRuleLANDynamic)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality transportProtocol:(unsigned __int8)self0 advertisingProtocol:(unsigned __int8)self1 advertisingOnly:(BOOL)self2 serviceType:(id)self3
{
  directionCopy = direction;
  connectionsCopy = connections;
  criticalCopy = critical;
  typeCopy = type;
  v26.receiver = self;
  v26.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
  v21 = [(HMDNetworkRouterFirewallRuleLAN *)&v26 initWithJSONDictionary:dictionary name:name critical:criticalCopy purpose:purpose allowInterAccessoryConnections:connectionsCopy direction:directionCopy requiredForHAPFunctionality:functionality];
  v22 = v21;
  if (v21)
  {
    v21->_transportProtocol = protocol;
    v21->_advertisingProtocol = advertisingProtocol;
    v21->_advertisingOnly = only;
    objc_storeStrong(&v21->_serviceType, type);
    v23 = v22;
  }

  return v22;
}

+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1
{
  directionCopy = direction;
  connectionsCopy = connections;
  criticalCopy = critical;
  v40 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  nameCopy = name;
  ruleDictionaryCopy = ruleDictionary;
  v33 = 0;
  if (![self __decodeTransportProtocolFromJSONDictionary:ruleDictionaryCopy key:@"r" transportProtocol:&v33 error:error])
  {
    goto LABEL_12;
  }

  if (v33 >= 2u)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v22;
      v36 = 2112;
      v37 = @"r";
      v38 = 2112;
      v39 = ruleDictionaryCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v23 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  buf[0] = 0;
  if (![self __decodeAdvertisingProtocol:ruleDictionaryCopy advertisingProtocol:buf error:error] || (v32 = 0, !objc_msgSend(self, "__decodeFlags:advertisingOnly:error:", ruleDictionaryCopy, &v32, error)))
  {
LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v31 = 0;
  v24 = [self __decodeServiceType:ruleDictionaryCopy serviceType:&v31 error:error];
  v25 = v31;
  v23 = 0;
  if (v24)
  {
    v26 = v25;
    v27 = [self alloc];
    BYTE3(v29) = v32;
    *(&v29 + 1) = __PAIR16__(buf[0], v33);
    LOBYTE(v29) = functionality;
    v23 = [v27 initWithJSONDictionary:dictionaryCopy name:nameCopy critical:criticalCopy purpose:purpose allowInterAccessoryConnections:connectionsCopy direction:directionCopy requiredForHAPFunctionality:v29 transportProtocol:v26 advertisingProtocol:? advertisingOnly:? serviceType:?];
    v25 = v26;
  }

LABEL_13:

  return v23;
}

+ (BOOL)__decodeServiceType:(id)type serviceType:(id *)serviceType error:(id *)error
{
  v12 = 0;
  v7 = decodeStringFromJSONDictionary(type, @"s", 1, &v12);
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
    *serviceType = v9;
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v7;
}

+ (BOOL)__decodeFlags:(id)flags advertisingOnly:(BOOL *)only error:(id *)error
{
  v11 = 0;
  v7 = decodeUnsignedIntegerFromJSONDictionary(flags, @"f", 0, 0xFFFFFFFFuLL, &v11);
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    *only = [v8 unsignedLongValue] & 1;
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v7;
}

+ (BOOL)__decodeAdvertisingProtocol:(id)protocol advertisingProtocol:(unsigned __int8 *)advertisingProtocol error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  v20 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(protocolCopy, @"a", 1, 0xFFuLL, &v20);
  v10 = v20;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_12:
      v13 = 0;
      *error = v14;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  unsignedCharValue = [v10 unsignedCharValue];
  if (unsignedCharValue == 1)
  {
    v13 = 1;
    *advertisingProtocol = 1;
    goto LABEL_14;
  }

  if (unsignedCharValue)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = @"a";
      v25 = 2112;
      v26 = protocolCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  *advertisingProtocol = 0;
  v13 = 1;
LABEL_14:

  return v13;
}

+ (id)__advertisingProtocolToString:(unsigned __int8)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"SSDP";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"DNS-SD";
  }
}

@end