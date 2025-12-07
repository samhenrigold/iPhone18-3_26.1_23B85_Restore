@interface HMDNetworkRouterFirewallRule
+ (id)__transportProtocolToString:(unsigned __int8)string;
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRule)initWithJSONDictionary:(id)dictionary critical:(BOOL)critical;
- (HMDNetworkRouterFirewallRule)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical;
- (NSDictionary)prettyJSONDictionary;
- (NSString)jsonString;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRule

- (NSString)jsonString
{
  v21 = *MEMORY[0x277D85DE8];
  jsonDictionary = [(HMDNetworkRouterFirewallRule *)self jsonDictionary];
  if (jsonDictionary)
  {
    v14 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:jsonDictionary options:2 error:&v14];
    v5 = v14;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543874;
        v16 = v10;
        v17 = 2112;
        v18 = selfCopy;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to convert firewall WAN rule %@ to JSON: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to convert firewall WAN rule %@ to JSON: %@", selfCopy, v5];
      v12 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v12 submitLogEvent:v11];

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)prettyJSONDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"name";
  name = [(HMDNetworkRouterFirewallRule *)self name];
  v6[0] = name;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDNetworkRouterFirewallRule *)self name];
  v5 = [v3 initWithName:@"Name" value:name];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRule isCritical](self, "isCritical")}];
  v8 = [v6 initWithName:@"IsCritical" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (unint64_t)hash
{
  name = [(HMDNetworkRouterFirewallRule *)self name];
  v4 = [name hash];

  return v4 ^ [(HMDNetworkRouterFirewallRule *)self isCritical];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
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
      name = [(HMDNetworkRouterFirewallRule *)self name];
      name2 = [(HMDNetworkRouterFirewallRule *)v6 name];
      if ([name isEqualToString:name2])
      {
        isCritical = [(HMDNetworkRouterFirewallRule *)self isCritical];
        v10 = isCritical ^ [(HMDNetworkRouterFirewallRule *)v6 isCritical]^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HMDNetworkRouterFirewallRule)initWithJSONDictionary:(id)dictionary critical:(BOOL)critical
{
  criticalCopy = critical;
  dictionaryCopy = dictionary;
  v11 = 0;
  v7 = decodeStringFromJSONDictionary(dictionaryCopy, @"n", 1, &v11);
  v8 = v11;
  if (v7)
  {
    self = [(HMDNetworkRouterFirewallRule *)self initWithJSONDictionary:dictionaryCopy name:v8 critical:criticalCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDNetworkRouterFirewallRule)initWithJSONDictionary:(id)dictionary name:(id)name critical:(BOOL)critical
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = HMDNetworkRouterFirewallRule;
  v11 = [(HMDNetworkRouterFirewallRule *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_critical = critical;
    objc_storeStrong(&v12->_jsonDictionary, dictionary);
    v13 = v12;
  }

  return v12;
}

+ (id)__transportProtocolToString:(unsigned __int8)string
{
  if (string >= 3u)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", string];
  }

  else
  {
    string = off_279729A10[string];
  }

  return string;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_88877 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_88877, &__block_literal_global_88878);
  }

  v3 = logCategory__hmf_once_v1_88879;

  return v3;
}

uint64_t __43__HMDNetworkRouterFirewallRule_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_88879;
  logCategory__hmf_once_v1_88879 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end