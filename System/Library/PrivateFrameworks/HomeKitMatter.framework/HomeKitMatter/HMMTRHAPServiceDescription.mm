@interface HMMTRHAPServiceDescription
+ (id)descriptionsDictionaryFromAccessoryInfo:(id)info;
- (HMMTRHAPServiceDescription)initWithType:(id)type linkedServiceTypes:(id)types endpoint:(id)endpoint name:(id)name optionalServiceLabelIndexIncluded:(BOOL)included;
- (id)attributeDescriptions;
- (id)padCharacteristicIDWithZeros:(id)zeros;
- (void)addFeatureMapForCharacteristic:(id)characteristic featureMap:(id)map;
- (void)addMandatoryCharacteristic:(id)characteristic;
- (void)addOptionalCharacteristic:(id)characteristic;
- (void)removeCharacteristic:(id)characteristic;
@end

@implementation HMMTRHAPServiceDescription

- (id)attributeDescriptions
{
  v29[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  serviceType = [(HMMTRHAPServiceDescription *)self serviceType];
  v27 = [v3 initWithName:@"ServiceType" value:serviceType];
  v29[0] = v27;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  endpoint = [(HMMTRHAPServiceDescription *)self endpoint];
  v25 = [v4 initWithName:@"Endpoint" value:endpoint];
  v29[1] = v25;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMMTRHAPServiceDescription *)self name];
  v23 = [v5 initWithName:@"Name" value:name];
  v29[2] = v23;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  requiredCharacteristics = [(HMMTRHAPServiceDescription *)self requiredCharacteristics];
  v7 = [v6 initWithName:@"RequiredCharacteristics" value:requiredCharacteristics];
  v29[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  optionalCharacteristics = [(HMMTRHAPServiceDescription *)self optionalCharacteristics];
  v10 = [v8 initWithName:@"OptionalCharacteristics" value:optionalCharacteristics];
  v29[4] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicFeatureMap = [(HMMTRHAPServiceDescription *)self characteristicFeatureMap];
  v13 = [v11 initWithName:@"CharacteristicFeatureMap" value:characteristicFeatureMap];
  v29[5] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMMTRHAPServiceDescription optionalServiceLabelIndexIncluded](self, "optionalServiceLabelIndexIncluded")}];
  v16 = [v14 initWithName:@"OptionalServiceLabelIndexIncluded" value:v15];
  v29[6] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  linkedServiceTypes = [(HMMTRHAPServiceDescription *)self linkedServiceTypes];
  v19 = [v17 initWithName:@"LinkedServiceTypes" value:linkedServiceTypes];
  v29[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:8];

  return v20;
}

- (id)padCharacteristicIDWithZeros:(id)zeros
{
  zerosCopy = zeros;
  v4 = [zerosCopy length];
  if ((v4 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:off_2786EC680[v4 - 1], zerosCopy, "-0000-1000-8000-0026BB765291"];
  }

  return v5;
}

- (void)removeCharacteristic:(id)characteristic
{
  v11 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (v11)
  {
    if ([(NSArray *)self->_requiredCharacteristics containsObject:v11])
    {
      v4 = [MEMORY[0x277CBEB18] arrayWithArray:self->_requiredCharacteristics];
      [(NSArray *)v4 removeObject:v11];
      requiredCharacteristics = self->_requiredCharacteristics;
      self->_requiredCharacteristics = v4;
    }

    if ([(NSArray *)self->_optionalCharacteristics containsObject:v11])
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithArray:self->_optionalCharacteristics];
      [(NSArray *)v6 removeObject:v11];
      optionalCharacteristics = self->_optionalCharacteristics;
      self->_optionalCharacteristics = v6;
    }

    v8 = [(NSDictionary *)self->_characteristicFeatureMap objectForKeyedSubscript:v11];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_characteristicFeatureMap];
      [(NSDictionary *)v9 removeObjectForKey:v11];
      characteristicFeatureMap = self->_characteristicFeatureMap;
      self->_characteristicFeatureMap = v9;
    }
  }
}

- (void)addFeatureMapForCharacteristic:(id)characteristic featureMap:(id)map
{
  mapCopy = map;
  v6 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (mapCopy && v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_characteristicFeatureMap];
    [(NSDictionary *)v7 setObject:mapCopy forKey:v6];
    characteristicFeatureMap = self->_characteristicFeatureMap;
    self->_characteristicFeatureMap = v7;
  }
}

- (void)addMandatoryCharacteristic:(id)characteristic
{
  v4 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (v4)
  {
    v7 = v4;
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_requiredCharacteristics];
    [(NSArray *)v5 addObject:v7];
    requiredCharacteristics = self->_requiredCharacteristics;
    self->_requiredCharacteristics = v5;

    v4 = v7;
  }
}

- (void)addOptionalCharacteristic:(id)characteristic
{
  v4 = [(HMMTRHAPServiceDescription *)self padCharacteristicIDWithZeros:characteristic];
  if (v4)
  {
    v7 = v4;
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:self->_optionalCharacteristics];
    [(NSArray *)v5 addObject:v7];
    optionalCharacteristics = self->_optionalCharacteristics;
    self->_optionalCharacteristics = v5;

    v4 = v7;
  }
}

- (HMMTRHAPServiceDescription)initWithType:(id)type linkedServiceTypes:(id)types endpoint:(id)endpoint name:(id)name optionalServiceLabelIndexIncluded:(BOOL)included
{
  typeCopy = type;
  typesCopy = types;
  endpointCopy = endpoint;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = HMMTRHAPServiceDescription;
  v17 = [(HMMTRHAPServiceDescription *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceType, type);
    objc_storeStrong(&v18->_linkedServiceTypes, types);
    objc_storeStrong(&v18->_endpoint, endpoint);
    objc_storeStrong(&v18->_name, name);
    optionalCharacteristics = v18->_optionalCharacteristics;
    v20 = MEMORY[0x277CBEBF8];
    v18->_optionalCharacteristics = MEMORY[0x277CBEBF8];

    requiredCharacteristics = v18->_requiredCharacteristics;
    v18->_requiredCharacteristics = v20;

    characteristicFeatureMap = v18->_characteristicFeatureMap;
    v18->_characteristicFeatureMap = MEMORY[0x277CBEC10];

    v18->_optionalServiceLabelIndexIncluded = included;
  }

  return v18;
}

+ (id)descriptionsDictionaryFromAccessoryInfo:(id)info
{
  v69 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CBEB18];
  v47 = infoCopy;
  accessoryInfoDictionary = [infoCopy accessoryInfoDictionary];
  allKeys = [accessoryInfoDictionary allKeys];
  v7 = [v4 arrayWithArray:allKeys];

  [v7 sortUsingComparator:&__block_literal_global];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v38 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v38)
  {
    v36 = *v57;
    do
    {
      v8 = 0;
      do
      {
        if (*v57 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v8;
        v9 = *(*(&v56 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v39 = v9;
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "integerValue")}];
        v12 = [v47 partsListForEndpoint:v11];
        v13 = [v47 serviceDescriptionsForEndpoint:v11];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543874;
          v63 = v17;
          v64 = 2112;
          v65 = v13;
          v66 = 2112;
          v67 = v11;
          _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Retrieved service description @%@ at endpoint %@", buf, 0x20u);
        }

        v42 = v11;

        objc_autoreleasePoolPop(v14);
        if (v13)
        {
          [v10 addObjectsFromArray:v13];
        }

        v41 = v13;
        v46 = v10;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v44 = v12;
        v18 = [v44 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v53;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v53 != v20)
              {
                objc_enumerationMutation(v44);
              }

              v22 = *(*(&v52 + 1) + 8 * i);
              v23 = [v47 serviceDescriptionsForEndpoint:v22];
              v24 = objc_autoreleasePoolPush();
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543874;
                v63 = v27;
                v64 = 2112;
                v65 = v23;
                v66 = 2112;
                v67 = v22;
                _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Retrieved service description @%@ at composed endpoint %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v24);
              if (v23)
              {
                [v46 addObjectsFromArray:v23];
                stringValue = [v22 stringValue];
                [v45 addObject:stringValue];
              }
            }

            v19 = [v44 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v19);
        }

        if (v46)
        {
          [v40 setObject:v46 forKey:v39];
        }

        v8 = v43 + 1;
      }

      while (v43 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v38);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = v45;
  v30 = [v29 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v49;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [v40 removeObjectForKey:*(*(&v48 + 1) + 8 * j)];
      }

      v31 = [v29 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v31);
  }

  return v40;
}

uint64_t __70__HMMTRHAPServiceDescription_descriptionsDictionaryFromAccessoryInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

@end