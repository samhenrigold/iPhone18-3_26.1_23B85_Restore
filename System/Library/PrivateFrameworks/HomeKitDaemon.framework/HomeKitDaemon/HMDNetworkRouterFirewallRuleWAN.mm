@interface HMDNetworkRouterFirewallRuleWAN
+ (BOOL)__decodeAddress:(id)address subject:(id *)subject;
+ (BOOL)__decodeAddressRange:(id)range endValue:(id)value subject:(id *)subject;
+ (BOOL)__decodeAddresses:(id)addresses subject:(id *)subject;
+ (BOOL)__decodeFlags:(id)flags critical:(BOOL *)critical;
+ (BOOL)__decodeHostnames:(id)hostnames subject:(id *)subject;
+ (BOOL)__decodePorts:(id)ports portStart:(unsigned __int16 *)start portEnd:(unsigned __int16 *)end;
+ (BOOL)__decodePurpose:(id)purpose purpose:(unint64_t *)a4;
+ (BOOL)__decodeSubject:(id)subject subject:(id *)a4;
+ (BOOL)__decodeType:(id)type transportProtocol:(unsigned __int8 *)protocol error:(id *)error;
+ (HMFNetAddress)ipAddressAny;
+ (HMFNetAddress)ipAddressAnyIPv4;
+ (HMFNetAddress)ipAddressAnyIPv6;
+ (id)__nonWildcardAddressFrom:(id)from key:(id)key;
+ (id)createWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleWAN)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose transportProtocol:(unsigned __int8)protocol subject:(id)subject portStart:(unsigned __int16)start portEnd:(unsigned __int16)self0 icmpTypes:(id)self1;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleWAN

- (id)prettyJSONDictionary
{
  v23.receiver = self;
  v23.super_class = HMDNetworkRouterFirewallRuleWAN;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRule *)&v23 prettyJSONDictionary];
  v4 = [prettyJSONDictionary mutableCopy];

  v5 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleWAN transportProtocol](self, "transportProtocol")}];
  [v4 setObject:v5 forKeyedSubscript:@"transportProtocol"];

  purpose = [(HMDNetworkRouterFirewallRuleWAN *)self purpose];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!purpose)
  {
    goto LABEL_41;
  }

  v8 = 1;
  v9 = purpose;
  do
  {
    if ((v8 & purpose) == 0)
    {
      goto LABEL_38;
    }

    if (v8 > 127)
    {
      if (v8 <= 1023)
      {
        switch(v8)
        {
          case 128:
            v10 = @"Metrics";
            break;
          case 256:
            v10 = @"Diagnostics";
            break;
          case 512:
            v10 = @"Remote Access";
            break;
          default:
            goto LABEL_38;
        }
      }

      else if (v8 > 4095)
      {
        if (v8 == 4096)
        {
          v10 = @"Connectivity Checks";
        }

        else
        {
          if (v8 != 0x2000)
          {
            goto LABEL_38;
          }

          v10 = @"Emergency Notifications";
        }
      }

      else if (v8 == 1024)
      {
        v10 = @"Alternative Home Ecosystem";
      }

      else
      {
        if (v8 != 2048)
        {
          goto LABEL_38;
        }

        v10 = @"Time Synchronization";
      }
    }

    else if (v8 <= 7)
    {
      switch(v8)
      {
        case 1:
          v10 = @"Other";
          break;
        case 2:
          v10 = @"Firmware Update";
          break;
        case 4:
          v10 = @"Account Management";
          break;
        default:
          goto LABEL_38;
      }
    }

    else if (v8 > 31)
    {
      if (v8 == 32)
      {
        v10 = @"Storage";
      }

      else
      {
        if (v8 != 64)
        {
          goto LABEL_38;
        }

        v10 = @"Notifications";
      }
    }

    else if (v8 == 8)
    {
      v10 = @"Peer to Peer";
    }

    else
    {
      if (v8 != 16)
      {
        goto LABEL_38;
      }

      v10 = @"Events";
    }

    v9 &= ~v8;
    [v7 addObject:v10];
LABEL_38:
    v8 *= 2;
  }

  while (v8 - 1 < purpose);
  if (v9)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (0x%llx)", v9];
    [v7 addObject:v11];
  }

LABEL_41:
  if ([v7 count])
  {
    v12 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"none";
  }

  [v4 setObject:v12 forKeyedSubscript:@"purpose"];
  subject = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
  prettyJSONDictionary2 = [subject prettyJSONDictionary];
  [v4 addEntriesFromDictionary:prettyJSONDictionary2];

  transportProtocol = [(HMDNetworkRouterFirewallRuleWAN *)self transportProtocol];
  if (transportProtocol >= 2)
  {
    if (transportProtocol == 2)
    {
      icmpTypes = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
      v20 = [icmpTypes na_map:&__block_literal_global_216];
      [v4 setObject:v20 forKeyedSubscript:@"icmpTypes"];

      goto LABEL_51;
    }
  }

  else
  {
    portStart = [(HMDNetworkRouterFirewallRuleWAN *)self portStart];
    portEnd = [(HMDNetworkRouterFirewallRuleWAN *)self portEnd];
    icmpTypes = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portStart](self, "portStart")}];
    if (portStart == portEnd)
    {
      v19 = @"port";
    }

    else
    {
      [v4 setObject:icmpTypes forKeyedSubscript:@"portStart"];

      icmpTypes = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portEnd](self, "portEnd")}];
      v19 = @"portEnd";
    }

    [v4 setObject:icmpTypes forKeyedSubscript:v19];
LABEL_51:
  }

  v21 = objc_msgSend_copy(v4);

  return v21;
}

- (id)attributeDescriptions
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HMDNetworkRouterFirewallRuleWAN;
  attributeDescriptions = [(HMDNetworkRouterFirewallRule *)&v25 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNetworkRouterFirewallRuleWAN purpose](self, "purpose")}];
  v23 = [v4 initWithName:@"Purpose" value:v24];
  v26[0] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleWAN transportProtocol](self, "transportProtocol")}];
  v21 = [v5 initWithName:@"TransportProtocol" value:v22];
  v26[1] = v21;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  subject = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
  v7 = [v6 initWithName:@"Subject" value:subject];
  v26[2] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portStart](self, "portStart")}];
  v10 = [v8 initWithName:@"PortStart" value:v9];
  v26[3] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleWAN portEnd](self, "portEnd")}];
  v13 = [v11 initWithName:@"PortEnd" value:v12];
  v26[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  icmpTypes = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
  v16 = [v14 initWithName:@"ICMPTypes" value:icmpTypes];
  v26[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];
  v18 = [attributeDescriptions arrayByAddingObjectsFromArray:v17];

  return v18;
}

- (unint64_t)hash
{
  purpose = [(HMDNetworkRouterFirewallRuleWAN *)self purpose];
  transportProtocol = [(HMDNetworkRouterFirewallRuleWAN *)self transportProtocol];
  subject = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
  v6 = purpose ^ [subject hash] ^ transportProtocol;

  portStart = [(HMDNetworkRouterFirewallRuleWAN *)self portStart];
  v8 = v6 ^ portStart ^ [(HMDNetworkRouterFirewallRuleWAN *)self portEnd];
  icmpTypes = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
  v10 = [icmpTypes hash];

  return v8 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HMDNetworkRouterFirewallRuleWAN;
    if ([(HMDNetworkRouterFirewallRule *)&v18 isEqual:equalCopy])
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

      if (v7 && (v8 = [(HMDNetworkRouterFirewallRuleWAN *)self purpose], v8 == [(HMDNetworkRouterFirewallRuleWAN *)v7 purpose]) && (v9 = [(HMDNetworkRouterFirewallRuleWAN *)self transportProtocol], v9 == [(HMDNetworkRouterFirewallRuleWAN *)v7 transportProtocol]))
      {
        subject = [(HMDNetworkRouterFirewallRuleWAN *)self subject];
        subject2 = [(HMDNetworkRouterFirewallRuleWAN *)v7 subject];
        if ([subject isEqual:subject2] && (v12 = -[HMDNetworkRouterFirewallRuleWAN portStart](self, "portStart"), v12 == -[HMDNetworkRouterFirewallRuleWAN portStart](v7, "portStart")) && (v13 = -[HMDNetworkRouterFirewallRuleWAN portEnd](self, "portEnd"), v13 == -[HMDNetworkRouterFirewallRuleWAN portEnd](v7, "portEnd")))
        {
          icmpTypes = [(HMDNetworkRouterFirewallRuleWAN *)self icmpTypes];
          icmpTypes2 = [(HMDNetworkRouterFirewallRuleWAN *)v7 icmpTypes];
          v16 = HMFEqualObjects();
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (HMDNetworkRouterFirewallRuleWAN)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical purpose:(unint64_t)purpose transportProtocol:(unsigned __int8)protocol subject:(id)subject portStart:(unsigned __int16)start portEnd:(unsigned __int16)self0 icmpTypes:(id)self1
{
  criticalCopy = critical;
  subjectCopy = subject;
  typesCopy = types;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterFirewallRuleWAN;
  v20 = [(HMDNetworkRouterFirewallRule *)&v24 initWithJSONDictionary:dictionary name:name critical:criticalCopy];
  v21 = v20;
  if (v20)
  {
    v20->_purpose = purpose;
    v20->_transportProtocol = protocol;
    objc_storeStrong(&v20->_subject, subject);
    v21->_portStart = start;
    v21->_portEnd = end;
    objc_storeStrong(&v21->_icmpTypes, types);
    v22 = v21;
  }

  return v21;
}

+ (id)createWithJSONDictionary:(id)dictionary error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v29 = 0;
  if (![self __decodeType:dictionaryCopy transportProtocol:&v29 error:error])
  {
LABEL_15:
    v14 = 0;
    goto LABEL_33;
  }

  v28 = 0;
  if (([self __decodeFlags:dictionaryCopy critical:&v28] & 1) == 0)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v14 = 0;
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  v7 = [HMDNetworkRouterFirewallRule alloc];
  v8 = [(HMDNetworkRouterFirewallRule *)v7 initWithJSONDictionary:dictionaryCopy critical:v28];
  if (!v8 || (v27 = 0, ([self __decodePurpose:dictionaryCopy purpose:&v27] & 1) == 0))
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_32;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"r"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v18;
      v32 = 2112;
      v33 = @"r";
      v34 = 2112;
      v35 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an invalid '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_31;
  }

  v26 = 0;
  v12 = [self __decodeSubject:v11 subject:&v26];
  v13 = v26;
  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  *buf = 0;
  v25 = 0;
  if (v29 < 2u)
  {
    if ([self __decodePorts:v11 portStart:buf portEnd:&v25])
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v29 != 2)
  {
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v19 = [HMDNetworkRouterFirewallRuleICMPType createListWithJSONDictionary:v11 key:@"it"];
  if (!v19)
  {
LABEL_25:
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_30;
  }

LABEL_29:
  v20 = [self alloc];
  name = [(HMDNetworkRouterFirewallRule *)v8 name];
  isCritical = [(HMDNetworkRouterFirewallRule *)v8 isCritical];
  WORD1(v24) = v25;
  LOWORD(v24) = *buf;
  v14 = [v20 initWithJSONDictionary:dictionaryCopy name:name critical:isCritical purpose:v27 transportProtocol:v29 subject:v13 portStart:v24 portEnd:v19 icmpTypes:?];

LABEL_30:
LABEL_31:

LABEL_32:
LABEL_33:

  return v14;
}

+ (BOOL)__decodePorts:(id)ports portStart:(unsigned __int16 *)start portEnd:(unsigned __int16 *)end
{
  v21 = *MEMORY[0x277D85DE8];
  portsCopy = ports;
  v18 = 0;
  v9 = 0;
  if (decodePortFromJSONDictionary(portsCopy, @"p", 1, &v18, 0))
  {
    v17 = 0;
    v16 = 0;
    v9 = 0;
    if (decodePortFromJSONDictionary(portsCopy, @"q", 0, &v17, &v16))
    {
      v10 = v18;
      if (v16 && (v10 = v17, v18 > v17))
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v20 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Must have portStart less than or equal to portEnd", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        v9 = 0;
      }

      else
      {
        *start = v18;
        *end = v10;
        v9 = 1;
      }
    }
  }

  return v9;
}

+ (BOOL)__decodeSubject:(id)subject subject:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  subjectCopy = subject;
  v7 = [subjectCopy objectForKeyedSubscript:@"h"];
  v8 = [subjectCopy objectForKeyedSubscript:@"i"];
  v9 = [subjectCopy objectForKeyedSubscript:@"j"];
  v10 = [subjectCopy objectForKeyedSubscript:@"is"];
  v11 = v10;
  if (!v7 && !v8 && !v10)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      v16 = "%{public}@One subject must be set";
LABEL_24:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (v8)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (v8 | v10)
  {
    v19 = v7 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19 || v18)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      v16 = "%{public}@Only one subject can be set";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v9 && !v8)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      v16 = "%{public}@ipAddressEnd is only valid if ipAddressStart is specified";
      goto LABEL_24;
    }

LABEL_25:

    objc_autoreleasePoolPop(v12);
    v20 = 0;
    goto LABEL_26;
  }

  if (v7)
  {
    v22 = [self __decodeHostnames:v7 subject:a4];
LABEL_36:
    v20 = v22;
    goto LABEL_26;
  }

  if (v9)
  {
    v23 = 1;
  }

  else
  {
    v23 = v8 == 0;
  }

  if (v23 && !v10)
  {
    v22 = [self __decodeAddressRange:v8 endValue:v9 subject:a4];
    goto LABEL_36;
  }

  if (v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = v10;
  }

  v25 = v24;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  if (v27)
  {
    v20 = [self __decodeAddresses:v27 subject:a4];
  }

  else
  {
    v28 = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (v30)
    {
      v20 = [self __decodeAddress:v30 subject:a4];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v33;
        v37 = 2112;
        v38 = v28;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid address value: %@", buf, 0x16u);

        v30 = 0;
      }

      objc_autoreleasePoolPop(context);
      v20 = 0;
    }

    v27 = 0;
  }

LABEL_26:
  return v20;
}

+ (BOOL)__decodeAddressRange:(id)range endValue:(id)value subject:(id *)subject
{
  v22 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  valueCopy = value;
  v10 = [self __nonWildcardAddressFrom:rangeCopy key:@"addressStart"];
  if (v10)
  {
    v11 = [self __nonWildcardAddressFrom:valueCopy key:@"addressEnd"];
    if (v11)
    {
      addressFamily = [v10 addressFamily];
      if (addressFamily == [v11 addressFamily])
      {
        v13 = [[HMDNetworkRouterFirewallRuleWANAddressRange alloc] initWithAddressStart:v10 addressEnd:v11];
        *subject = [[HMDNetworkRouterFirewallRuleWANSubject alloc] initWithHostnames:0 addresses:0 addressRange:v13];

        v14 = 1;
LABEL_10:

        goto LABEL_11;
      }

      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@IP address range must have matching address family", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (id)__nonWildcardAddressFrom:(id)from key:(id)key
{
  v33 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  keyCopy = key;
  v8 = fromCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v14;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 2112;
      v32 = v8;
      v15 = "%{public}@WAN rule contains a non-string %@: %@";
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v11);
    v16 = 0;
    goto LABEL_23;
  }

  if ([v10 isEqualToString:@"*"])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v14;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 2112;
      v32 = v10;
      v15 = "%{public}@WAN rule contains a wildcard address for %@: %@";
LABEL_10:
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v15, &v27, 0x20u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v17 = createHMFNetAddressFromIPAddressString(v10);
  if (v17)
  {
    ipAddressAnyIPv4 = [self ipAddressAnyIPv4];
    if ([v17 isEqual:ipAddressAnyIPv4])
    {
    }

    else
    {
      ipAddressAnyIPv6 = [self ipAddressAnyIPv6];
      v25 = [v17 isEqual:ipAddressAnyIPv6];

      if (!v25)
      {
        v16 = v17;
        goto LABEL_22;
      }
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v22;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 2112;
      v32 = v10;
      v23 = "%{public}@WAN rule contains a wildcard address for %@: %@";
      goto LABEL_20;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v22;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 2112;
      v32 = v10;
      v23 = "%{public}@WAN rule contains an invalid %@: %@";
LABEL_20:
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, v23, &v27, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v19);
  v16 = 0;
LABEL_22:

LABEL_23:

  return v16;
}

+ (BOOL)__decodeAddresses:(id)addresses subject:(id *)subject
{
  v64 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  if (![addressesCopy count])
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v60 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an empty address array", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    v35 = 0;
    goto LABEL_48;
  }

  v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v50 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = addressesCopy;
  v54 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (!v54)
  {

    goto LABEL_41;
  }

  subjectCopy = subject;
  v48 = addressesCopy;
  v51 = 0;
  v49 = 0;
  v53 = 0;
  v8 = *v56;
  v9 = v50;
  do
  {
    v10 = 0;
    do
    {
      if (*v56 != v8)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v55 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (!v13)
      {
        v36 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v60 = v39;
          v61 = 2112;
          v62 = v11;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a non-string address: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        goto LABEL_45;
      }

      if ([v13 isEqualToString:@"*"])
      {
        ipAddressAny = [self ipAddressAny];
        v51 = 1;
LABEL_15:
        v53 = 1;
        goto LABEL_16;
      }

      v15 = createHMFNetAddressFromIPAddressString(v13);
      if (!v15)
      {
        v42 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v60 = v45;
          v61 = 2112;
          v62 = v13;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an invalid address: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
LABEL_45:
        addressesCopy = v48;

LABEL_46:
        v35 = 0;
        goto LABEL_47;
      }

      ipAddressAny = v15;
      ipAddressAnyIPv4 = [self ipAddressAnyIPv4];
      v17 = [ipAddressAny isEqual:ipAddressAnyIPv4];

      if (v17)
      {
        goto LABEL_15;
      }

      ipAddressAnyIPv6 = [self ipAddressAnyIPv6];
      v25 = [ipAddressAny isEqual:ipAddressAnyIPv6];

      if (v25)
      {
        v51 = 1;
      }

      else if ([ipAddressAny addressFamily] == 1)
      {
        LODWORD(v49) = 1;
      }

      else
      {
        HIDWORD(v49) |= [ipAddressAny addressFamily] == 2;
      }

LABEL_16:
      if ([v9 containsObject:ipAddressAny])
      {
        v18 = v8;
        v19 = v7;
        v20 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v60 = v23;
          v61 = 2112;
          v62 = ipAddressAny;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a duplicate address: %@", buf, 0x16u);

          v9 = v50;
        }

        objc_autoreleasePoolPop(v20);
        v7 = v19;
        v8 = v18;
      }

      else
      {
        [v52 addObject:ipAddressAny];
        [v9 addObject:ipAddressAny];
      }

      ++v10;
    }

    while (v54 != v10);
    v26 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
    v54 = v26;
  }

  while (v26);

  subject = subjectCopy;
  addressesCopy = v48;
  if (v53 & v49 & 1) != 0 || (v51 & HIDWORD(v49))
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v30;
      v61 = 2112;
      v62 = v7;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a mix of wildcard and non-wildcard addresses: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    goto LABEL_46;
  }

LABEL_41:
  v40 = [HMDNetworkRouterFirewallRuleWANSubject alloc];
  v41 = objc_msgSend_copy(v52);
  *subject = [(HMDNetworkRouterFirewallRuleWANSubject *)v40 initWithHostnames:0 addresses:v41 addressRange:0];

  v35 = 1;
LABEL_47:

LABEL_48:
  return v35;
}

+ (BOOL)__decodeAddress:(id)address subject:(id *)subject
{
  v11 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v6 = MEMORY[0x277CBEA60];
  addressCopy2 = address;
  v8 = [v6 arrayWithObjects:&addressCopy count:1];

  LOBYTE(subject) = [self __decodeAddresses:v8 subject:{subject, addressCopy, v11}];
  return subject;
}

+ (BOOL)__decodeHostnames:(id)hostnames subject:(id *)subject
{
  v115 = *MEMORY[0x277D85DE8];
  hostnamesCopy = hostnames;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = hostnamesCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = hostnamesCopy;
  if (!v8)
  {
    v102 = hostnamesCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  }

  if (![v9 count])
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v112 = v42;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an empty hostname array", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
    goto LABEL_57;
  }

  subjectCopy = subject;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = 0x277CCA000uLL;
  v15 = *v94;
  v89 = v11;
  v90 = v12;
  selfCopy2 = self;
  v92 = v9;
  v87 = v10;
  v84 = *v94;
LABEL_9:
  v16 = 0;
  v85 = v13;
LABEL_10:
  if (*v94 != v15)
  {
    objc_enumerationMutation(v12);
  }

  v17 = v14;
  v18 = *(*(&v93 + 1) + 8 * v16);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (!v20)
  {
    v61 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v63 = HMFGetOSLogHandle();
    v9 = v92;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = HMFGetLogIdentifier();
      v65 = v18;
      v66 = v64;
      *buf = 138543618;
      v112 = v64;
      v113 = 2112;
      v114 = v65;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a non-string hostname: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v61);
    goto LABEL_55;
  }

  v88 = v18;
  v21 = v20;
  if (![v21 length] || objc_msgSend(v21, "length") >= 0xFE)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = objc_opt_class();
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      v60 = [v21 length];
      *v103 = 138543874;
      v104 = v59;
      v105 = 2112;
      v106 = v21;
      v107 = 2048;
      v108 = v60;
      _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its length is out of bounds: %lu", v103, 0x20u);

      v11 = v89;
    }

    objc_autoreleasePoolPop(v56);
LABEL_61:
    v9 = v92;
    goto LABEL_52;
  }

  v22 = [v21 componentsSeparatedByString:@"."];
  if ([v22 count] > 1)
  {
    if (validateHostNameForWANFirewallRule_onceTokenRegex != -1)
    {
      dispatch_once(&validateHostNameForWANFirewallRule_onceTokenRegex, &__block_literal_global_223108);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v22 = v22;
    v23 = [v22 countByEnumeratingWithState:&v97 objects:buf count:16];
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    v25 = *v98;
LABEL_23:
    v26 = 0;
    while (1)
    {
      if (*v98 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v97 + 1) + 8 * v26);
      v28 = [v27 length];
      if ((v28 - 64) <= 0xFFFFFFFFFFFFFFC0)
      {
        break;
      }

      if ([validateHostNameForWANFirewallRule_componentRegex numberOfMatchesInString:v27 options:0 range:{0, v28}] != 1)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = objc_opt_class();
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          *v103 = 138543874;
          v104 = v46;
          v105 = 2112;
          v106 = v21;
          v107 = 2112;
          v108 = v27;
          v48 = "%{public}@Hostname '%@' component '%@' is invalid because it does not match regular expression";
          v49 = v45;
          v50 = 32;
LABEL_49:
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, v48, v103, v50);
        }

        goto LABEL_50;
      }

      if (v24 == ++v26)
      {
        v24 = [v22 countByEnumeratingWithState:&v97 objects:buf count:16];
        v12 = v90;
        if (v24)
        {
          goto LABEL_23;
        }

LABEL_30:

        v29 = [v22 objectAtIndexedSubscript:{objc_msgSend(v22, "count") - 2}];
        v30 = [v29 containsString:@"*"];

        if (v30)
        {
          v71 = objc_autoreleasePoolPush();
          v72 = objc_opt_class();
          v73 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v74 = HMFGetLogIdentifier();
            *v103 = 138543618;
            v104 = v74;
            v105 = 2112;
            v106 = v21;
            _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its second-to-last component contains a wildcard", v103, 0x16u);
          }

          objc_autoreleasePoolPop(v71);
          self = selfCopy2;
          v9 = v92;
          goto LABEL_51;
        }

        lastObject = [v22 lastObject];
        if ([lastObject isEqualToString:@"local"])
        {
          v75 = objc_autoreleasePoolPush();
          v76 = objc_opt_class();
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = HMFGetLogIdentifier();
            *v103 = 138543618;
            v104 = v78;
            v105 = 2112;
            v106 = v21;
            _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its last component is 'local'", v103, 0x16u);
          }

          self = selfCopy2;
          v9 = v92;
          goto LABEL_76;
        }

        self = selfCopy2;
        if ([lastObject containsString:@"*"])
        {
          v75 = objc_autoreleasePoolPush();
          v76 = objc_opt_class();
          v77 = HMFGetOSLogHandle();
          v9 = v92;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v79 = HMFGetLogIdentifier();
            *v103 = 138543618;
            v104 = v79;
            v105 = 2112;
            v106 = v21;
            _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its last component contains a wildcard", v103, 0x16u);

            self = selfCopy2;
          }

LABEL_76:

          objc_autoreleasePoolPop(v75);
          goto LABEL_51;
        }

        v32 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        if ([lastObject rangeOfCharacterFromSet:v32] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v80 = objc_autoreleasePoolPush();
          v81 = objc_opt_class();
          v82 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            v83 = HMFGetLogIdentifier();
            *v103 = 138543618;
            v104 = v83;
            v105 = 2112;
            v106 = v21;
            _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because its last component does not contain letters", v103, 0x16u);

            self = selfCopy2;
          }

          objc_autoreleasePoolPop(v80);
          v11 = v89;
          goto LABEL_61;
        }

        v11 = v89;
        if ([v89 containsObject:v21])
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy2;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v112 = v36;
            v113 = 2112;
            v114 = v21;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains a duplicate hostname: %@", buf, 0x16u);

            self = selfCopy2;
          }

          objc_autoreleasePoolPop(v33);
          v12 = v90;
        }

        else
        {
          [v87 addObject:v21];
          [v89 addObject:v21];
        }

        ++v16;
        v15 = v84;
        v14 = v17;
        v9 = v92;
        if (v16 == v85)
        {
          v13 = [v12 countByEnumeratingWithState:&v93 objects:v101 count:16];
          v10 = v87;
          if (!v13)
          {
LABEL_41:

            v37 = [HMDNetworkRouterFirewallRuleWANSubject alloc];
            v12 = objc_msgSend_copy(v10);
            *subjectCopy = [(HMDNetworkRouterFirewallRuleWANSubject *)v37 initWithHostnames:v12 addresses:0 addressRange:0];
            v38 = 1;
            goto LABEL_56;
          }

          goto LABEL_9;
        }

        goto LABEL_10;
      }
    }

    v43 = objc_autoreleasePoolPush();
    v44 = objc_opt_class();
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      v47 = [v27 length];
      *v103 = 138544130;
      v104 = v46;
      v105 = 2112;
      v106 = v21;
      v107 = 2112;
      v108 = v27;
      v109 = 2048;
      v110 = v47;
      v48 = "%{public}@Hostname '%@' component '%@' is invalid because its length is out of bounds: %lu";
      v49 = v45;
      v50 = 42;
      goto LABEL_49;
    }

LABEL_50:
    v12 = v90;
    self = selfCopy2;
    v9 = v92;

    objc_autoreleasePoolPop(v43);
    goto LABEL_51;
  }

  v67 = objc_autoreleasePoolPush();
  v68 = objc_opt_class();
  v69 = HMFGetOSLogHandle();
  v9 = v92;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    v70 = HMFGetLogIdentifier();
    *v103 = 138543874;
    v104 = v70;
    v105 = 2112;
    v106 = v21;
    v107 = 2048;
    v108 = 2;
    _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@Hostname '%@' is invalid because it does not contain at least %lu components", v103, 0x20u);
  }

  objc_autoreleasePoolPop(v67);
LABEL_51:

  v11 = v89;
LABEL_52:
  v51 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = HMFGetLogIdentifier();
    *buf = 138543618;
    v112 = v54;
    v113 = 2112;
    v114 = v21;
    _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@WAN rule contains an invalid hostname: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v51);
LABEL_55:
  v38 = 0;
  v10 = v87;
LABEL_56:

LABEL_57:
  return v38;
}

+ (BOOL)__decodeType:(id)type transportProtocol:(unsigned __int8 *)protocol error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v20 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(typeCopy, @"t", 1, 0xFFuLL, &v20);
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    unsignedCharValue = [v10 unsignedCharValue];
    switch(unsignedCharValue)
    {
      case 5:
        *protocol = 2;
        goto LABEL_11;
      case 2:
        v14 = 1;
        *protocol = 1;
        goto LABEL_17;
      case 1:
        *protocol = 0;
LABEL_11:
        v14 = 1;
        goto LABEL_17;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = typeCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@WAN rule contains an unkown type value %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_8;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (!error)
  {
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_8:
  v14 = 0;
  *error = v13;
LABEL_17:

  return v14;
}

+ (BOOL)__decodeFlags:(id)flags critical:(BOOL *)critical
{
  v9 = 0;
  v5 = decodeUnsignedIntegerFromJSONDictionary(flags, @"f", 0, 0xFFFFFFFFuLL, &v9);
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    *critical = [v6 unsignedLongValue] & 1;
  }

  return v5;
}

+ (BOOL)__decodePurpose:(id)purpose purpose:(unint64_t *)a4
{
  v9 = 0;
  v5 = decodeUnsignedIntegerFromJSONDictionary(purpose, @"u", 1, 0xFFFFFFFFFFFFFFFFLL, &v9);
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    *a4 = [v6 unsignedLongLongValue];
  }

  return v5;
}

+ (HMFNetAddress)ipAddressAny
{
  if (ipAddressAny_onceToken != -1)
  {
    dispatch_once(&ipAddressAny_onceToken, &__block_literal_global_168_215749);
  }

  v3 = ipAddressAny_address;

  return v3;
}

void __47__HMDNetworkRouterFirewallRuleWAN_ipAddressAny__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0F858]) initWithHostname:@"*"];
  v1 = ipAddressAny_address;
  ipAddressAny_address = v0;
}

+ (HMFNetAddress)ipAddressAnyIPv6
{
  if (ipAddressAnyIPv6_onceToken != -1)
  {
    dispatch_once(&ipAddressAnyIPv6_onceToken, &__block_literal_global_165_215752);
  }

  v3 = ipAddressAnyIPv6_address;

  return v3;
}

void __51__HMDNetworkRouterFirewallRuleWAN_ipAddressAnyIPv6__block_invoke()
{
  v2[0] = xmmword_22A587CE8;
  *(v2 + 12) = *(&xmmword_22A587CE8 + 12);
  v0 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:v2];
  v1 = ipAddressAnyIPv6_address;
  ipAddressAnyIPv6_address = v0;
}

+ (HMFNetAddress)ipAddressAnyIPv4
{
  if (ipAddressAnyIPv4_onceToken != -1)
  {
    dispatch_once(&ipAddressAnyIPv4_onceToken, &__block_literal_global_162_215754);
  }

  v3 = ipAddressAnyIPv4_address;

  return v3;
}

void __51__HMDNetworkRouterFirewallRuleWAN_ipAddressAnyIPv4__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = xmmword_22A587040;
  v0 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:&v2];
  v1 = ipAddressAnyIPv4_address;
  ipAddressAnyIPv4_address = v0;
}

@end