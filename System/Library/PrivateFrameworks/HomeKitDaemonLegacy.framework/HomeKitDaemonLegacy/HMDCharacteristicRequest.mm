@interface HMDCharacteristicRequest
+ (id)logCategory;
+ (id)requestWithCharacteristic:(id)characteristic;
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicRequest)initWithCharacteristic:(id)characteristic;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicRequest

- (unint64_t)hash
{
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  v3 = [characteristic hash];

  return v3;
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
  if (v6)
  {
    characteristic = [(HMDCharacteristicRequest *)self characteristic];
    characteristic2 = [v6 characteristic];
    v9 = [characteristic isEqual:characteristic2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDHAPAccessory)accessory
{
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  accessory = [characteristic accessory];

  return accessory;
}

- (HMDService)service
{
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  service = [characteristic service];

  return service;
}

- (id)attributeDescriptions
{
  v39[5] = *MEMORY[0x277D85DE8];
  characteristic = [(HMDCharacteristicRequest *)self characteristic];
  accessory = [characteristic accessory];

  characteristic2 = [(HMDCharacteristicRequest *)self characteristic];
  service = [characteristic2 service];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  v38 = accessory;
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v35 = [v8 stringWithFormat:@"(%@/%@)", name, uniqueIdentifier];
  v34 = [v7 initWithName:@"Accessory" value:v35];
  v39[0] = v34;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  v33 = service;
  type = [service type];
  v31 = shortHAPTypeDescription(type);
  instanceID = [service instanceID];
  v29 = [v10 stringWithFormat:@"(%@/%@)", v31, instanceID];
  v28 = [v9 initWithName:@"Service" value:v29];
  v39[1] = v28;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCACA8];
  characteristic3 = [(HMDCharacteristicRequest *)self characteristic];
  type2 = [characteristic3 type];
  v14 = shortHAPTypeDescription(type2);
  characteristic4 = [(HMDCharacteristicRequest *)self characteristic];
  instanceID2 = [characteristic4 instanceID];
  v17 = [v12 stringWithFormat:@"(%@/%@)", v14, instanceID2];
  v18 = [v11 initWithName:@"Characteristic" value:v17];
  v39[2] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  previousValue = [(HMDCharacteristicRequest *)self previousValue];
  v21 = [v19 initWithName:@"Previous Value" value:previousValue];
  v39[3] = v21;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  previousValue2 = [(HMDCharacteristicRequest *)self previousValue];
  v24 = [v22 initWithName:@"Type" value:objc_opt_class()];
  v39[4] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];

  return v26;
}

- (HMDCharacteristicRequest)initWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v11.receiver = self;
  v11.super_class = HMDCharacteristicRequest;
  v6 = [(HMDCharacteristicRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, characteristic);
    value = [characteristicCopy value];
    previousValue = v7->_previousValue;
    v7->_previousValue = value;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_191883 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_191883, &__block_literal_global_191884);
  }

  v3 = logCategory__hmf_once_v2_191885;

  return v3;
}

uint64_t __39__HMDCharacteristicRequest_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_191885;
  logCategory__hmf_once_v2_191885 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)requestWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = [[self alloc] initWithCharacteristic:characteristicCopy];

  return v5;
}

@end