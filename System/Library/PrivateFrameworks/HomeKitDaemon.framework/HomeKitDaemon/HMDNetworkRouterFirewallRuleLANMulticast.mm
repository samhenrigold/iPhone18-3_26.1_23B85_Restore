@interface HMDNetworkRouterFirewallRuleLANMulticast
+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleLANMulticast)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ipAddress:(id)self0 port:(unsigned __int16)self1;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLANMulticast

- (id)prettyJSONDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRuleLAN *)&v11 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:prettyJSONDictionary];

  [v5 setObject:@"Multicast Bridging Rule" forKeyedSubscript:@"type"];
  ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  addressString = [ipAddress addressString];
  [v5 setObject:addressString forKeyedSubscript:@"ipAddress"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANMulticast port](self, "port")}];
  [v5 setObject:v8 forKeyedSubscript:@"port"];

  v9 = objc_msgSend_copy(v5);

  return v9;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
  attributeDescriptions = [(HMDNetworkRouterFirewallRuleLAN *)&v13 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v6 = [v4 initWithName:@"IPAddress" value:ipAddress];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANMulticast port](self, "port")}];
  v9 = [v7 initWithName:@"Port" value:v8];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  return v11;
}

- (unint64_t)hash
{
  ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v4 = [ipAddress hash];

  return v4 ^ [(HMDNetworkRouterFirewallRuleLANMulticast *)self port];
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
    v13.receiver = self;
    v13.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v13 isEqual:equalCopy])
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

      if (v7)
      {
        ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
        ipAddress2 = [(HMDNetworkRouterFirewallRuleLANMulticast *)v7 ipAddress];
        if ([ipAddress isEqual:ipAddress2])
        {
          port = [(HMDNetworkRouterFirewallRuleLANMulticast *)self port];
          v11 = port == [(HMDNetworkRouterFirewallRuleLANMulticast *)v7 port];
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

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDNetworkRouterFirewallRuleLANMulticast)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ipAddress:(id)self0 port:(unsigned __int16)self1
{
  directionCopy = direction;
  connectionsCopy = connections;
  criticalCopy = critical;
  addressCopy = address;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
  v19 = [(HMDNetworkRouterFirewallRuleLAN *)&v24 initWithJSONDictionary:dictionary name:name critical:criticalCopy purpose:purpose allowInterAccessoryConnections:connectionsCopy direction:directionCopy requiredForHAPFunctionality:functionality];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_ipAddress, address);
    v20->_port = port;
    v21 = v20;
  }

  return v20;
}

+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1
{
  directionCopy = direction;
  connectionsCopy = connections;
  criticalCopy = critical;
  v38 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  nameCopy = name;
  ruleDictionaryCopy = ruleDictionary;
  v33 = 0;
  v18 = decodeAddressFromJSONDictionary(ruleDictionaryCopy, @"i", 1, &v33);
  v19 = v33;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  if ([v19 addressFamily] != 1 && objc_msgSend(v20, "addressFamily") != 2)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v27;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid IP address value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_11;
  }

  *buf = 0;
  if ((decodePortFromJSONDictionary(ruleDictionaryCopy, @"p", 1, buf, 0) & 1) == 0)
  {
LABEL_11:
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    v22 = dictionaryCopy;
    goto LABEL_15;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  v21 = [self alloc];
  LOWORD(v30) = *buf;
  LOBYTE(v29) = functionality;
  v22 = dictionaryCopy;
  v23 = [v21 initWithJSONDictionary:dictionaryCopy name:nameCopy critical:criticalCopy purpose:purpose allowInterAccessoryConnections:connectionsCopy direction:directionCopy requiredForHAPFunctionality:v29 ipAddress:v20 port:v30];
LABEL_15:

  return v23;
}

@end