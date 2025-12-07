@interface HMDCharacteristicUpdateTuple
+ (id)characteristicUpdateTuplesWithCharacteristics:(id)characteristics isBroadcast:(BOOL)broadcast;
- (BOOL)isEqual:(id)equal;
- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)characteristic updatedValue:(id)value isBroadcast:(BOOL)broadcast reasons:(unint64_t)reasons;
- (id)attributeDescriptions;
- (id)updatedValue;
- (unint64_t)hash;
@end

@implementation HMDCharacteristicUpdateTuple

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
  v5 = [v3 initWithName:@"characteristic" value:characteristic];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicUpdateTuple *)self value];
  v8 = [v6 initWithName:@"value" value:value];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicUpdateTuple *)self isBroadcast];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isBroadcast" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicUpdateTuple reasons](self, "reasons")}];
  v14 = [v12 initWithName:@"reasons" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (unint64_t)hash
{
  characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
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
  if (v6 && (v7 = -[HMDCharacteristicUpdateTuple reasons](self, "reasons"), v7 == [v6 reasons]))
  {
    characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
    characteristic2 = [v6 characteristic];
    if ([characteristic isEqual:characteristic2])
    {
      value = [(HMDCharacteristicUpdateTuple *)self value];
      value2 = [v6 value];
      if ([value isEqual:value2])
      {
        isBroadcast = [(HMDCharacteristicUpdateTuple *)self isBroadcast];
        v13 = isBroadcast ^ [v6 isBroadcast] ^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (id)updatedValue
{
  v26 = *MEMORY[0x277D85DE8];
  characteristicResponse = [(HMDCharacteristicUpdateTuple *)self characteristicResponse];
  request = [characteristicResponse request];
  v5 = [request isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    characteristic = [(HMDCharacteristicUpdateTuple *)self characteristic];
    lastKnownValue = [characteristic lastKnownValue];

    characteristic2 = [(HMDCharacteristicUpdateTuple *)self characteristic];
    lastKnownValueUpdateTime = [characteristic2 lastKnownValueUpdateTime];
    characteristicResponse2 = [(HMDCharacteristicUpdateTuple *)self characteristicResponse];
    valueUpdatedTime = [characteristicResponse2 valueUpdatedTime];
    if ([lastKnownValueUpdateTime compare:valueUpdatedTime] == 1)
    {
      value = [(HMDCharacteristicUpdateTuple *)self value];
      v13 = [lastKnownValue isEqual:value];

      if ((v13 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v20 = 138543874;
          v21 = v17;
          v22 = 2112;
          v23 = selfCopy;
          v24 = 2112;
          v25 = lastKnownValue;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating tuple to last known characteristic value %@ -> %@", &v20, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDCharacteristicUpdateTuple *)selfCopy setValue:lastKnownValue];
      }
    }

    else
    {
    }
  }

  value2 = [(HMDCharacteristicUpdateTuple *)self value];

  return value2;
}

- (HMDCharacteristicUpdateTuple)initWithCharacteristic:(id)characteristic updatedValue:(id)value isBroadcast:(BOOL)broadcast reasons:(unint64_t)reasons
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = HMDCharacteristicUpdateTuple;
  v13 = [(HMDCharacteristicUpdateTuple *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_characteristic, characteristic);
    objc_storeStrong(&v14->_value, value);
    v14->_broadcast = broadcast;
    v14->_reasons = reasons;
  }

  return v14;
}

+ (id)characteristicUpdateTuplesWithCharacteristics:(id)characteristics isBroadcast:(BOOL)broadcast
{
  broadcastCopy = broadcast;
  v23 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = characteristicsCopy;
  v7 = [MEMORY[0x277CBEB98] setWithArray:characteristicsCopy];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [HMDCharacteristicUpdateTuple alloc];
        value = [v12 value];
        v15 = [(HMDCharacteristicUpdateTuple *)v13 initWithCharacteristic:v12 updatedValue:value isBroadcast:broadcastCopy];

        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

@end