@interface HMDNetworkRouterFirewallRuleLANStatic
+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleLANStatic)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality transportProtocol:(unsigned __int8)self0 ipAddress:(id)self1 portStart:(unsigned __int16)self2 portEnd:(unsigned __int16)self3 icmpTypes:(id)self4;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLANStatic

- (id)prettyJSONDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v17.receiver = self;
  v17.super_class = HMDNetworkRouterFirewallRuleLANStatic;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRuleLAN *)&v17 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:prettyJSONDictionary];

  [v5 setObject:@"Static Port Rule" forKeyedSubscript:@"type"];
  v6 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleLANStatic transportProtocol](self, "transportProtocol")}];
  [v5 setObject:v6 forKeyedSubscript:@"transportProtocol"];

  ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  addressString = [ipAddress addressString];
  [v5 setObject:addressString forKeyedSubscript:@"ipAddress"];

  transportProtocol = [(HMDNetworkRouterFirewallRuleLANStatic *)self transportProtocol];
  if (transportProtocol >= 2)
  {
    if (transportProtocol != 2)
    {
      goto LABEL_9;
    }

    icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
    v14 = [icmpTypes na_map:&__block_literal_global_283869];
    [v5 setObject:v14 forKeyedSubscript:@"icmpTypes"];
  }

  else
  {
    portStart = [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
    portEnd = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd];
    icmpTypes = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portStart](self, "portStart")}];
    if (portStart == portEnd)
    {
      v13 = @"port";
    }

    else
    {
      [v5 setObject:icmpTypes forKeyedSubscript:@"portStart"];

      icmpTypes = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portEnd](self, "portEnd")}];
      v13 = @"portEnd";
    }

    [v5 setObject:icmpTypes forKeyedSubscript:v13];
  }

LABEL_9:
  v15 = objc_msgSend_copy(v5);

  return v15;
}

- (id)attributeDescriptions
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDNetworkRouterFirewallRuleLANStatic;
  attributeDescriptions = [(HMDNetworkRouterFirewallRuleLAN *)&v19 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v5 = [v4 initWithName:@"IPAddress" value:ipAddress];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portStart](self, "portStart")}];
  v8 = [v6 initWithName:@"PortStart" value:v7];
  v20[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portEnd](self, "portEnd")}];
  v11 = [v9 initWithName:@"PortEnd" value:v10];
  v20[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
  v14 = [v12 initWithName:@"ICMPTypes" value:icmpTypes];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v16 = [attributeDescriptions arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (unint64_t)hash
{
  ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v4 = [ipAddress hash];

  v5 = v4 ^ [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
  portEnd = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd];
  icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
  v8 = portEnd ^ [icmpTypes hash];

  return v5 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDNetworkRouterFirewallRuleLANStatic;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v17 isEqual:equalCopy])
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

      if (v7 && ([(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress], v8 = objc_claimAutoreleasedReturnValue(), [(HMDNetworkRouterFirewallRuleLANStatic *)v7 ipAddress], v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10) && (v11 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart], v11 == [(HMDNetworkRouterFirewallRuleLANStatic *)v7 portStart]) && (v12 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd], v12 == [(HMDNetworkRouterFirewallRuleLANStatic *)v7 portEnd]))
      {
        icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
        icmpTypes2 = [(HMDNetworkRouterFirewallRuleLANStatic *)v7 icmpTypes];
        v15 = HMFEqualObjects();
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HMDNetworkRouterFirewallRuleLANStatic)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality transportProtocol:(unsigned __int8)self0 ipAddress:(id)self1 portStart:(unsigned __int16)self2 portEnd:(unsigned __int16)self3 icmpTypes:(id)self4
{
  directionCopy = direction;
  connectionsCopy = connections;
  criticalCopy = critical;
  addressCopy = address;
  typesCopy = types;
  v28.receiver = self;
  v28.super_class = HMDNetworkRouterFirewallRuleLANStatic;
  v21 = [(HMDNetworkRouterFirewallRuleLAN *)&v28 initWithJSONDictionary:dictionary name:name critical:criticalCopy purpose:purpose allowInterAccessoryConnections:connectionsCopy direction:directionCopy requiredForHAPFunctionality:functionality];
  v22 = v21;
  if (v21)
  {
    v21->_transportProtocol = protocol;
    objc_storeStrong(&v21->_ipAddress, address);
    v22->_portStart = start;
    v22->_portEnd = end;
    objc_storeStrong(&v22->_icmpTypes, types);
    v23 = v22;
  }

  return v22;
}

+ (id)createWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose allowInterAccessoryConnections:(BOOL)connections direction:(unsigned __int8)direction requiredForHAPFunctionality:(BOOL)functionality ruleDictionary:(id)self0 error:(id *)self1
{
  directionCopy = direction;
  connectionsCopy = connections;
  criticalCopy = critical;
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  nameCopy = name;
  ruleDictionaryCopy = ruleDictionary;
  v50 = 0;
  if (![self __decodeTransportProtocolFromJSONDictionary:ruleDictionaryCopy key:@"r" transportProtocol:&v50 error:error])
  {
    v29 = 0;
    goto LABEL_45;
  }

  v46 = dictionaryCopy;
  v49 = 0;
  v20 = decodeAddressFromJSONDictionary(ruleDictionaryCopy, @"i", 0, &v49);
  v21 = v49;
  if ((v20 & 1) == 0)
  {
    if (error)
    {
      v30 = v21;
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v29 = 0;
      v21 = v30;
    }

    else
    {
      v29 = 0;
    }

    dictionaryCopy = v46;
    goto LABEL_44;
  }

  v45 = nameCopy;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 addressFamily] == 1;
    v21 = v22;
    if (!v23)
    {
      v23 = [v22 addressFamily] == 2;
      v21 = v22;
      if (!v23)
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v39;
          v53 = 2112;
          v54 = v22;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid IP address value: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          *error = v29 = 0;
        }

        else
        {
          v29 = 0;
        }

        v21 = v22;
        nameCopy = v45;
        dictionaryCopy = v46;
        goto LABEL_44;
      }
    }
  }

  v48 = 0;
  if (v50 >= 2u)
  {
    if (v50 != 2)
    {
      nameCopy = v45;
      dictionaryCopy = v46;
      if (error)
      {
        v34 = v21;
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *error = v29 = 0;
        v21 = v34;
      }

      else
      {
        v29 = 0;
      }

      goto LABEL_44;
    }

    v44 = v21;
    v31 = [HMDNetworkRouterFirewallRuleICMPType createListWithJSONDictionary:ruleDictionaryCopy key:@"it"];
    if (!v31)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *error = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      dictionaryCopy = v46;
      goto LABEL_43;
    }

    v32 = v31;
    v24 = 0;
    v33 = 0;
  }

  else
  {
    v44 = v21;
    dictionaryCopy = v46;
    if ((decodePortFromJSONDictionary(ruleDictionaryCopy, @"p", 1, &v48 + 1, 0) & 1) == 0)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *error = v29 = 0;
LABEL_43:
        v21 = v44;
        nameCopy = v45;
        goto LABEL_44;
      }

LABEL_29:
      v29 = 0;
      goto LABEL_43;
    }

    v47 = 0;
    if ((decodePortFromJSONDictionary(ruleDictionaryCopy, @"q", 0, &v48, &v47) & 1) == 0)
    {
LABEL_15:
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      goto LABEL_29;
    }

    v24 = HIWORD(v48);
    if (v47)
    {
      v24 = v48;
      if (HIWORD(v48) > v48)
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v52 = v28;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Must have portStart less than or equal to portEnd", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        dictionaryCopy = v46;
        goto LABEL_15;
      }
    }

    v32 = 0;
    v33 = HIWORD(v48);
  }

  v40 = [self alloc];
  WORD1(v43) = v24;
  LOWORD(v43) = v33;
  BYTE1(v42) = v50;
  LOBYTE(v42) = functionality;
  v29 = [v40 initWithJSONDictionary:v46 name:v45 critical:criticalCopy purpose:purpose allowInterAccessoryConnections:connectionsCopy direction:directionCopy requiredForHAPFunctionality:v42 transportProtocol:v44 ipAddress:v43 portStart:v32 portEnd:? icmpTypes:?];

  v21 = v44;
  nameCopy = v45;
  dictionaryCopy = v46;
LABEL_44:

LABEL_45:

  return v29;
}

@end