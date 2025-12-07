@interface HMDNetworkRouterFirewallRuleConfiguration
+ (BOOL)__decodeFullAccessFromNetworkDeclarations:(id)declarations key:(id)key fullAccess:(BOOL *)access;
+ (BOOL)__decodeNetworkDeclarationsFromJSONDictionary:(id)dictionary networkDeclarations:(id *)declarations;
+ (id)__decodeRulesFromNetworkDeclarations:(id)declarations key:(id)key class:(Class)class required:(BOOL)required;
+ (id)logCategory;
- (BOOL)hasAirplayRules;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)identifier jsonDictionary:(id)dictionary;
- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)identifier lastModifiedTime:(id)time fullAccessLAN:(BOOL)n lanRules:(id)rules fullAccessWAN:(BOOL)aN wanRules:(id)wanRules;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleConfiguration

- (BOOL)hasAirplayRules
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  lanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v3 = [lanRules countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(lanRules);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        if (v8)
        {
          direction = [v8 direction];
          advertisingProtocol = [v8 advertisingProtocol];
          v11 = objc_msgSend_serviceType(v8);
          v12 = [v11 isEqual:@"airplay"];

          v13 = direction == 1 && advertisingProtocol == 0;
          if (v13 && (v12 & 1) != 0)
          {

            LOBYTE(v3) = 1;
            goto LABEL_20;
          }
        }
      }

      v3 = [lanRules countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v3;
}

- (NSDictionary)prettyJSONDictionary
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = [HMDNetworkRouterClientConfiguration configurationForFirewallConfiguration:self hapAccessory:1 airplayAccessory:0 withClientIdentifier:0];
  fingerprint = [v3 fingerprint];

  v23[0] = @"lastModifiedTime";
  lastModifiedTime = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
  v21 = [lastModifiedTime description];
  v24[0] = v21;
  v23[1] = @"lanRules";
  lanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v19 = [lanRules na_map:&__block_literal_global_51_267728];
  null = objc_msgSend_copy(v19);
  v6 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v24[1] = null;
  v23[2] = @"hasFullAccessToLAN";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](self, "hasFullAccessToLAN", null)}];
  v24[2] = v18;
  v23[3] = @"wanRules";
  wanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
  v8 = [wanRules na_map:&__block_literal_global_61_267733];
  v9 = objc_msgSend_copy(v8);
  null2 = v9;
  if (!v9)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v24[3] = null2;
  v23[4] = @"hasFullAccessToWAN";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](self, "hasFullAccessToWAN")}];
  v24[4] = v11;
  v23[5] = @"fingerprint";
  v12 = fingerprint;
  uUIDString = [fingerprint UUIDString];
  null3 = uUIDString;
  if (!uUIDString)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v24[5] = null3;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  if (!uUIDString)
  {
  }

  if (!v9)
  {
  }

  if (!v6)
  {
  }

  return v15;
}

- (id)attributeDescriptions
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryIdentifier = [(HMDNetworkRouterFirewallRuleConfiguration *)self accessoryIdentifier];
  v21 = [v3 initWithName:@"AccessoryIdentifier" value:accessoryIdentifier];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  lastModifiedTime = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
  v5 = [v4 initWithName:@"LastModifiedTime" value:lastModifiedTime];
  v23[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](self, "hasFullAccessToLAN")}];
  v8 = [v6 initWithName:@"FullAccessLAN" value:v7];
  v23[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](self, "hasFullAccessToWAN")}];
  v11 = [v9 initWithName:@"FullAccessWAN" value:v10];
  v23[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  lanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v14 = [v12 initWithName:@"LANRules" value:lanRules];
  v23[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  wanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
  v17 = [v15 initWithName:@"WANRules" value:wanRules];
  v23[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];

  return v18;
}

- (unint64_t)hash
{
  accessoryIdentifier = [(HMDNetworkRouterFirewallRuleConfiguration *)self accessoryIdentifier];
  v4 = [accessoryIdentifier hash];

  lanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v6 = [lanRules hash] ^ v4;

  wanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
  v8 = v6 ^ [wanRules hash];

  hasFullAccessToLAN = [(HMDNetworkRouterFirewallRuleConfiguration *)self hasFullAccessToLAN];
  v10 = v8 ^ hasFullAccessToLAN ^ [(HMDNetworkRouterFirewallRuleConfiguration *)self hasFullAccessToWAN];
  lastModifiedTime = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
  v12 = [lastModifiedTime hash];

  return v10 ^ v12;
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      accessoryIdentifier = [(HMDNetworkRouterFirewallRuleConfiguration *)self accessoryIdentifier];
      accessoryIdentifier2 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 accessoryIdentifier];
      if ([accessoryIdentifier isEqual:accessoryIdentifier2])
      {
        lanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
        lanRules2 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 lanRules];
        if ([lanRules isEqualToArray:lanRules2])
        {
          wanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
          wanRules2 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 wanRules];
          if ([wanRules isEqualToArray:wanRules2] && (v13 = -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](self, "hasFullAccessToLAN"), v13 == -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](v6, "hasFullAccessToLAN")) && (v14 = -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](self, "hasFullAccessToWAN"), v14 == -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](v6, "hasFullAccessToWAN")))
          {
            lastModifiedTime = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
            lastModifiedTime2 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 lastModifiedTime];
            v15 = [lastModifiedTime isEqual:lastModifiedTime2];
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

- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)identifier jsonDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  firmwareVersion = [identifierCopy firmwareVersion];

  if (firmwareVersion)
  {
    v24 = 0;
    v9 = decodeTimeFromJSONDictionary(dictionaryCopy, @"t", &v24);
    v10 = v24;
    if (v9)
    {
      v23 = 0;
      v11 = [objc_opt_class() __decodeNetworkDeclarationsFromJSONDictionary:dictionaryCopy networkDeclarations:&v23];
      v12 = v23;
      if (v11 && (buf[0] = 0, [objc_opt_class() __decodeFullAccessFromNetworkDeclarations:v12 key:@"l" fullAccess:buf]))
      {
        v13 = objc_opt_class();
        v14 = [v13 __decodeRulesFromNetworkDeclarations:v12 key:@"m" class:objc_opt_class() required:(buf[0] & 1) == 0];
        if (v14 && (v22 = 0, [objc_opt_class() __decodeFullAccessFromNetworkDeclarations:v12 key:@"w" fullAccess:&v22]))
        {
          v15 = objc_opt_class();
          v16 = [v15 __decodeRulesFromNetworkDeclarations:v12 key:@"x" class:objc_opt_class() required:(v22 & 1) == 0];
          if (v16)
          {
            self = [(HMDNetworkRouterFirewallRuleConfiguration *)self initWithAccessoryIdentifier:identifierCopy lastModifiedTime:v10 fullAccessLAN:buf[0] lanRules:v14 fullAccessWAN:v22 wanRules:v16];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    self = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = identifierCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Network declaration must contain firmware version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)identifier lastModifiedTime:(id)time fullAccessLAN:(BOOL)n lanRules:(id)rules fullAccessWAN:(BOOL)aN wanRules:(id)wanRules
{
  identifierCopy = identifier;
  timeCopy = time;
  rulesCopy = rules;
  wanRulesCopy = wanRules;
  v23.receiver = self;
  v23.super_class = HMDNetworkRouterFirewallRuleConfiguration;
  v18 = [(HMDNetworkRouterFirewallRuleConfiguration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accessoryIdentifier, identifier);
    objc_storeStrong(&v19->_lastModifiedTime, time);
    v19->_fullAccessLAN = n;
    objc_storeStrong(&v19->_lanRules, rules);
    v19->_fullAccessWAN = aN;
    objc_storeStrong(&v19->_wanRules, wanRules);
    v20 = v19;
  }

  return v19;
}

+ (id)__decodeRulesFromNetworkDeclarations:(id)declarations key:(id)key class:(Class)class required:(BOOL)required
{
  requiredCopy = required;
  v62 = *MEMORY[0x277D85DE8];
  declarationsCopy = declarations;
  keyCopy = key;
  v12 = [declarationsCopy objectForKeyedSubscript:keyCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    objc_opt_class();
    v15 = objc_opt_isKindOfClass() & 1;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v15)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v18 = [v14 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v18)
      {
        v19 = v18;
        selfCopy = self;
        v47 = v13;
        v20 = 0;
        v21 = *v52;
        v48 = keyCopy;
        v49 = declarationsCopy;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v52 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v51 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            if (!v25)
            {
              v41 = objc_autoreleasePoolPush();
              v42 = selfCopy;
              v43 = HMFGetOSLogHandle();
              keyCopy = v48;
              declarationsCopy = v49;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = HMFGetLogIdentifier();
                *buf = 138543874;
                v57 = v44;
                v58 = 2112;
                v59 = v48;
                v60 = 2112;
                v61 = v49;
                _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains an invalid rule in '%@' value: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v41);
              v33 = 0;
              v39 = v17;
              goto LABEL_41;
            }

            v50 = 0;
            v26 = [(objc_class *)class createWithJSONDictionary:v25 error:&v50];
            v27 = v50;
            v28 = v27;
            if (v26)
            {
              if (v20)
              {
                [v20 addObject:v26];
              }

              else
              {
                v20 = [MEMORY[0x277CBEB18] arrayWithObject:v26];
              }
            }

            else if (![v27 isHMError] || objc_msgSend(v28, "code") != 1070)
            {

              v33 = 0;
              v39 = v17;
              keyCopy = v48;
              declarationsCopy = v49;
LABEL_41:
              v13 = v47;
              goto LABEL_42;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v51 objects:v55 count:16];
          keyCopy = v48;
          declarationsCopy = v49;
          v13 = v47;
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v20 = 0;
      }

      v38 = objc_msgSend_copy(v20);
      v39 = v38;
      v40 = MEMORY[0x277CBEBF8];
      if (v38)
      {
        v40 = v38;
      }

      v33 = v40;
LABEL_42:
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543874;
        v57 = v37;
        v58 = 2112;
        v59 = keyCopy;
        v60 = 2112;
        v61 = declarationsCopy;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains an invalid '%@' value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v34);
      v33 = 0;
    }
  }

  else if (requiredCopy)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v57 = v32;
      v58 = 2112;
      v59 = keyCopy;
      v60 = 2112;
      v61 = declarationsCopy;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains no '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  return v33;
}

+ (BOOL)__decodeFullAccessFromNetworkDeclarations:(id)declarations key:(id)key fullAccess:(BOOL *)access
{
  v27 = *MEMORY[0x277D85DE8];
  declarationsCopy = declarations;
  keyCopy = key;
  v20 = 0;
  v10 = decodeUnsignedIntegerFromJSONDictionary(declarationsCopy, keyCopy, 1, 0xFFuLL, &v20);
  v11 = v20;
  v12 = v11;
  if (!v10)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  unsignedIntegerValue = [v11 unsignedIntegerValue];
  if (unsignedIntegerValue == 1)
  {
    *access = 0;
    v14 = 1;
    goto LABEL_10;
  }

  if (unsignedIntegerValue)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = keyCopy;
      v25 = 2112;
      v26 = declarationsCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains an invalid '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_9;
  }

  v14 = 1;
  *access = 1;
LABEL_10:

  return v14;
}

+ (BOOL)__decodeNetworkDeclarationsFromJSONDictionary:(id)dictionary networkDeclarations:(id *)declarations
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"n"];
  v8 = v7;
  if (!v7)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = @"n";
      v25 = 2112;
      v26 = dictionaryCopy;
      v18 = "%{public}@JSON contains no '%@' value: %@";
LABEL_11:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v18, &v21, 0x20u);
    }

LABEL_12:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_13;
  }

  v9 = v7;
  objc_opt_class();
  v10 = objc_opt_isKindOfClass() & 1;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  *declarations = v11;
  if (!v10)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = @"n";
      v25 = 2112;
      v26 = dictionaryCopy;
      v18 = "%{public}@JSON contains an invalid '%@' value: %@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = 1;
LABEL_13:

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_267816 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_267816, &__block_literal_global_267817);
  }

  v3 = logCategory__hmf_once_v1_267818;

  return v3;
}

void __56__HMDNetworkRouterFirewallRuleConfiguration_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_267818;
  logCategory__hmf_once_v1_267818 = v0;
}

@end