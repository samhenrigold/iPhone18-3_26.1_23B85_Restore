@interface HMFNetworkServiceInfo
+ (id)defaultServiceTypes;
+ (id)logCategory;
- (BOOL)isAirPlay;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHAP;
- (BOOL)isMatter;
- (BOOL)isTCP;
- (BOOL)isUDP;
- (HMFNetworkServiceInfo)initWithEndpoint:(id)endpoint txtRecord:(id)record;
- (HMFNetworkServiceInfo)initWithServiceName:(id)name serviceType:(id)type serviceDomain:(id)domain txtRecord:(id)record;
- (NSDictionary)txtRecord;
- (NSString)category;
- (NSString)configNumber;
- (NSString)deviceID;
- (NSString)model;
- (NSString)stateNumber;
- (NSString)statusFlag;
- (void)updateWithServiceInfo:(id)info;
@end

@implementation HMFNetworkServiceInfo

- (HMFNetworkServiceInfo)initWithEndpoint:(id)endpoint txtRecord:(id)record
{
  endpointCopy = endpoint;
  recordCopy = record;
  bonjour_service_name = nw_endpoint_get_bonjour_service_name(endpointCopy);
  if (bonjour_service_name)
  {
    bonjour_service_name = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_name];
  }

  bonjour_service_type = nw_endpoint_get_bonjour_service_type(endpointCopy);
  if (bonjour_service_type)
  {
    bonjour_service_type = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_type];
  }

  bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(endpointCopy);
  if (bonjour_service_domain)
  {
    bonjour_service_domain = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_domain];
  }

  v11 = recordCopy;
  v12 = v11;
  if (v11)
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:nw_txt_record_get_key_count(v11)];
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __txtRecordDictionary_block_invoke;
    applier[3] = &unk_2786E7E78;
    v14 = v13;
    v19 = v14;
    if (nw_txt_record_apply(v12, applier))
    {
      v15 = [v14 copy];
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

  v16 = [(HMFNetworkServiceInfo *)self initWithServiceName:bonjour_service_name serviceType:bonjour_service_type serviceDomain:bonjour_service_domain txtRecord:v15];
  return v16;
}

- (HMFNetworkServiceInfo)initWithServiceName:(id)name serviceType:(id)type serviceDomain:(id)domain txtRecord:(id)record
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  recordCopy = record;
  selfCopy = 0;
  if (nameCopy && typeCopy && domainCopy)
  {
    v19.receiver = self;
    v19.super_class = HMFNetworkServiceInfo;
    v16 = [(HMFNetworkServiceInfo *)&v19 init];
    p_isa = &v16->super.super.isa;
    if (v16)
    {
      objc_storeStrong(&v16->_serviceName, name);
      objc_storeStrong(p_isa + 4, type);
      objc_storeStrong(p_isa + 5, domain);
      objc_storeStrong(p_isa + 2, record);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSDictionary)txtRecord
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_txtRecord copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)deviceID
{
  if ([(HMFNetworkServiceInfo *)self isAirPlay])
  {
    txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = txtRecord;
    v5 = @"deviceid";
  }

  else
  {
    serviceType = [(HMFNetworkServiceInfo *)self serviceType];
    v7 = [serviceType containsString:@"_companion-link._tcp"];

    txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = txtRecord;
    if (v7)
    {
      v5 = @"rpBA";
    }

    else
    {
      v5 = @"id";
    }
  }

  v8 = [txtRecord hmf_stringForKey:v5];

  return v8;
}

- (NSString)model
{
  if ([(HMFNetworkServiceInfo *)self isAirPlay])
  {
    txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = txtRecord;
    v5 = @"model";
  }

  else
  {
    serviceType = [(HMFNetworkServiceInfo *)self serviceType];
    v7 = [serviceType containsString:@"_companion-link._tcp"];

    txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = txtRecord;
    if (v7)
    {
      v5 = @"rpMd";
    }

    else
    {
      v5 = @"md";
    }
  }

  v8 = [txtRecord hmf_stringForKey:v5];

  return v8;
}

- (NSString)category
{
  txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [txtRecord hmf_stringForKey:@"ci"];

  return v3;
}

- (NSString)statusFlag
{
  txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [txtRecord hmf_stringForKey:@"sf"];

  return v3;
}

- (NSString)stateNumber
{
  txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [txtRecord hmf_stringForKey:@"s#"];

  return v3;
}

- (NSString)configNumber
{
  txtRecord = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [txtRecord hmf_stringForKey:@"c#"];

  return v3;
}

- (BOOL)isUDP
{
  if ([(HMFNetworkServiceInfo *)self isMatter])
  {
    return 1;
  }

  serviceType = [(HMFNetworkServiceInfo *)self serviceType];
  v5 = [serviceType hasSuffix:@"._udp"];

  return v5;
}

- (BOOL)isTCP
{
  serviceType = [(HMFNetworkServiceInfo *)self serviceType];
  v3 = [serviceType hasSuffix:@"._tcp"];

  return v3;
}

- (BOOL)isAirPlay
{
  serviceType = [(HMFNetworkServiceInfo *)self serviceType];
  v3 = [serviceType isEqualToString:@"_airplay._tcp"];

  return v3;
}

- (BOOL)isHAP
{
  serviceType = [(HMFNetworkServiceInfo *)self serviceType];
  if ([serviceType isEqualToString:@"_hap._tcp"])
  {
    v4 = 1;
  }

  else
  {
    serviceType2 = [(HMFNetworkServiceInfo *)self serviceType];
    v4 = [serviceType2 isEqualToString:@"_hap._udp"];
  }

  return v4;
}

- (BOOL)isMatter
{
  serviceType = [(HMFNetworkServiceInfo *)self serviceType];
  if ([serviceType isEqualToString:@"_matter._tcp"])
  {
    v4 = 1;
  }

  else
  {
    serviceType2 = [(HMFNetworkServiceInfo *)self serviceType];
    v4 = [serviceType2 isEqualToString:@"_matterc._udp"];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  v7 = v6;
  if (v6 && ([v6 serviceName], v8 = objc_claimAutoreleasedReturnValue(), -[HMFNetworkServiceInfo serviceName](self, "serviceName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(v8, v9), v9, v8, v10) && (objc_msgSend(v7, "serviceType"), v11 = objc_claimAutoreleasedReturnValue(), -[HMFNetworkServiceInfo serviceType](self, "serviceType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(v11, v12), v12, v11, v13) && (objc_msgSend(v7, "serviceDomain"), v14 = objc_claimAutoreleasedReturnValue(), -[HMFNetworkServiceInfo serviceDomain](self, "serviceDomain"), v15 = objc_claimAutoreleasedReturnValue(), v16 = HMFEqualObjects(v14, v15), v15, v14, v16))
  {
    txtRecord = [v7 txtRecord];
    txtRecord2 = [(HMFNetworkServiceInfo *)self txtRecord];
    v19 = HMFEqualObjects(txtRecord, txtRecord2);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)updateWithServiceInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  serviceName = [infoCopy serviceName];
  v6 = HMFEqualObjects(serviceName, self->_serviceName);

  if (v6 && ([infoCopy serviceType], v7 = objc_claimAutoreleasedReturnValue(), v8 = HMFEqualObjects(v7, self->_serviceType), v7, v8) && (objc_msgSend(infoCopy, "serviceDomain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(v9, self->_serviceDomain), v9, v10) && (objc_msgSend(infoCopy, "txtRecord"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(v11, self->_txtRecord), v11, (v12 & 1) == 0))
  {
    txtRecord = [infoCopy txtRecord];
    txtRecord = self->_txtRecord;
    self->_txtRecord = txtRecord;

    os_unfair_lock_unlock(&self->_lock);
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle(selfCopy, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier(selfCopy);
      txtRecord2 = [infoCopy txtRecord];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = txtRecord2;
      _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating with new txt record: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (id)defaultServiceTypes
{
  if (_MergedGlobals_3_14 != -1)
  {
    dispatch_once(&_MergedGlobals_3_14, &__block_literal_global_42);
  }

  v3 = qword_280AFC430;

  return v3;
}

void __44__HMFNetworkServiceInfo_defaultServiceTypes__block_invoke()
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = @"_hap._tcp";
  v2[1] = @"_hap._udp";
  v2[2] = @"_airplay._tcp";
  v2[3] = @"_matter._tcp";
  v2[4] = @"_matterc._udp";
  v2[5] = @"_companion-link._tcp";
  v2[6] = @"_sleep-proxy._udp";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:7];
  v1 = qword_280AFC430;
  qword_280AFC430 = v0;
}

+ (id)logCategory
{
  if (qword_280AFC438 != -1)
  {
    dispatch_once(&qword_280AFC438, &__block_literal_global_62);
  }

  v3 = qword_280AFC440;

  return v3;
}

uint64_t __36__HMFNetworkServiceInfo_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"HMFNetworkService", @"com.apple.HMFoundation");
  v1 = qword_280AFC440;
  qword_280AFC440 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end