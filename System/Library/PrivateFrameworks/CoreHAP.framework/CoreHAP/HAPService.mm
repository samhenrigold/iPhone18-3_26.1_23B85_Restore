@interface HAPService
+ (BOOL)hap2_mergeServices:(id)services discoveredServices:(id)discoveredServices mergedServices:(id)mergedServices;
- (BOOL)_validateMandatoryCharacteristics;
- (BOOL)_validateServiceCharacteristics;
- (BOOL)hap2_mergeWithService:(id)service;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeObject:(id)object;
- (BOOL)shouldMergeObject:(id)object;
- (BOOL)updateAndValidateCharacteristics;
- (CBService)cbService;
- (HAPAccessory)accessory;
- (HAPService)initWithType:(id)type instanceID:(id)d parsedCharacteristics:(id)characteristics serviceProperties:(unint64_t)properties linkedServices:(id)services;
- (NSArray)characteristics;
- (NSString)description;
- (id)characteristicsOfType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertiesDescription;
- (unint64_t)hash;
@end

@implementation HAPService

- (HAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)mergeObject:(id)object
{
  v91 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_28:
    v41 = 0;
    goto LABEL_45;
  }

  if (![(HAPService *)self shouldMergeObject:v6])
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v88 = v40;
      v89 = 2112;
      v90 = v6;
      _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_INFO, "%{public}@Not merging with service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    goto LABEL_28;
  }

  v64 = v6;
  v7 = MEMORY[0x277CBEB98];
  characteristics = [(HAPService *)self characteristics];
  v9 = [v7 setWithArray:characteristics];

  v10 = MEMORY[0x277CBEB98];
  v65 = objectCopy;
  characteristics2 = [objectCopy characteristics];
  v12 = [v10 setWithArray:characteristics2];

  v66 = v9;
  v13 = [v9 mutableCopy];
  v71 = v12;
  [v13 minusSet:v12];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
  v67 = v14 != 0;
  if (v14)
  {
    v15 = v14;
    v16 = *v81;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v80 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v88 = v22;
          v89 = 2112;
          v90 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Removed characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v15);
  }

  v23 = [v12 mutableCopy];
  [v23 minusSet:v66];
  characteristics3 = [(HAPService *)self characteristics];
  firstObject = [characteristics3 firstObject];
  shouldValidateValueAfterReading = [firstObject shouldValidateValueAfterReading];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v69 = v23;
  v27 = [v69 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v77;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v77 != v29)
        {
          objc_enumerationMutation(v69);
        }

        v31 = *(*(&v76 + 1) + 8 * j);
        v32 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v88 = v35;
          v89 = 2112;
          v90 = v31;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Added characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        [v31 setService:selfCopy3];
        [v31 setShouldValidateValueAfterReading:shouldValidateValueAfterReading];
      }

      v28 = [v69 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v28);
    v36 = 1;
  }

  else
  {
    v36 = v67;
  }

  v42 = [v66 mutableCopy];
  [v42 minusSet:obj];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v68 = v42;
  v43 = [v68 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v73;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v73 != v45)
        {
          objc_enumerationMutation(v68);
        }

        v47 = *(*(&v72 + 1) + 8 * k);
        v48 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543618;
          v88 = v51;
          v89 = 2112;
          v90 = v47;
          _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
        v52 = [v71 member:v47];
        if (v52 && [v47 mergeObject:v52])
        {
          v53 = objc_autoreleasePoolPush();
          v54 = selfCopy4;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            v88 = v56;
            v89 = 2112;
            v90 = v47;
            _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_INFO, "%{public}@Updated characteristic: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v53);
          v36 = 1;
        }
      }

      v44 = [v68 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v44);
  }

  v41 = v36;

  v57 = MEMORY[0x277CBEB18];
  allObjects = [v68 allObjects];
  v59 = [v57 arrayWithArray:allObjects];

  allObjects2 = [v69 allObjects];
  [v59 addObjectsFromArray:allObjects2];

  v61 = [v59 copy];
  [(HAPService *)self setCharacteristics:v61];

  v6 = v64;
  -[HAPService setServiceProperties:](self, "setServiceProperties:", [v64 serviceProperties]);
  linkedServices = [v64 linkedServices];
  [(HAPService *)self setLinkedServices:linkedServices];

  objectCopy = v65;
LABEL_45:

  return v41 & 1;
}

- (BOOL)shouldMergeObject:(id)object
{
  v42 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if ([(HAPService *)self isEqual:objectCopy])
  {
    v5 = MEMORY[0x277CBEB98];
    characteristics = [(HAPService *)self characteristics];
    v7 = [v5 setWithArray:characteristics];

    v8 = MEMORY[0x277CBEB98];
    v29 = objectCopy;
    characteristics2 = [objectCopy characteristics];
    v10 = [v8 setWithArray:characteristics2];

    v28 = v7;
    v11 = [v7 mutableCopy];
    [v11 intersectSet:v10];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (!v13)
    {
      v16 = 1;
      goto LABEL_18;
    }

    v14 = v13;
    v15 = *v32;
    v16 = 1;
    while (1)
    {
      v17 = 0;
      v30 = v14;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        v19 = [v10 member:v18];
        if (v19)
        {
          if ([v18 shouldMergeObject:v19])
          {
            goto LABEL_13;
          }

          v20 = objc_autoreleasePoolPush();
          selfCopy = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v23 = v15;
            v24 = v10;
            v26 = v25 = self;
            *buf = 138543874;
            v36 = v26;
            v37 = 2112;
            v38 = v19;
            v39 = 2112;
            v40 = v12;
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to merge characteristic, %@, with existing characteristic: %@", buf, 0x20u);

            self = v25;
            v10 = v24;
            v15 = v23;
            v14 = v30;
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = 0;
LABEL_13:

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (!v14)
      {
LABEL_18:

        objectCopy = v29;
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:

  return v16 & 1;
}

- (id)characteristicsOfType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  characteristics = [(HAPService *)self characteristics];
  v7 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(characteristics);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [characteristics countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (BOOL)_validateMandatoryCharacteristics
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[HAPMetadata getSharedInstance];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [(HAPService *)self characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(characteristics);
        }

        type = [*(*(&v14 + 1) + 8 * v9) type];
        [array addObject:type];

        ++v9;
      }

      while (v7 != v9);
      v7 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  type2 = [(HAPService *)self type];
  v12 = [v3 validateMandatoryCharacteristics:array forService:type2];

  return v12;
}

- (BOOL)_validateServiceCharacteristics
{
  v16 = *MEMORY[0x277D85DE8];
  characteristics = [(HAPService *)self characteristics];
  v4 = [characteristics count];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      v9 = "%{public}@One or more characteristics are required";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v5);
    return v4 != 0;
  }

  if (![(HAPService *)self _validateMandatoryCharacteristics])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      v9 = "%{public}@Invalid mandatory characteristics";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_22AADC000, v10, v11, v9, &v14, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return v4 != 0;
}

- (BOOL)updateAndValidateCharacteristics
{
  v34 = *MEMORY[0x277D85DE8];
  if (![(HAPService *)self _validateServiceCharacteristics])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate characteristics", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  characteristics = [(HAPService *)self characteristics];
  v5 = [v3 initWithCapacity:{objc_msgSend(characteristics, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  characteristics2 = [(HAPService *)self characteristics];
  v7 = [characteristics2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v7)
  {
    v15 = 1;
    goto LABEL_22;
  }

  v8 = v7;
  v9 = *v28;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(characteristics2);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      instanceID = [v11 instanceID];
      v13 = [v5 containsObject:instanceID];

      if (v13)
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v23;
          v24 = "%{public}@Duplicate characteristic instance IDs";
LABEL_20:
          _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
        }

LABEL_21:

        objc_autoreleasePoolPop(v20);
        v15 = 0;
        goto LABEL_22;
      }

      instanceID2 = [v11 instanceID];
      [v5 addObject:instanceID2];

      if (![(HAPService *)self _updateCharacteristic:v11])
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v23;
          v24 = "%{public}@Failed to update characteristic";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    v8 = [characteristics2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v15 = 1;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:

  return v15;
}

- (id)propertiesDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([(HAPService *)self serviceProperties]& 1) != 0)
  {
    [v3 addObject:@"primary"];
  }

  if (([(HAPService *)self serviceProperties]& 2) != 0)
  {
    [v3 addObject:@"hidden"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"<none>";
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  instanceID = [(HAPService *)self instanceID];
  type = [(HAPService *)self type];
  propertiesDescription = [(HAPService *)self propertiesDescription];
  linkedServices = [(HAPService *)self linkedServices];
  v8 = [v3 stringWithFormat:@"Instance ID: %@, Type: %@, Properties: %@, Linked Service: %@", instanceID, type, propertiesDescription, linkedServices];

  return v8;
}

- (NSArray)characteristics
{
  if (self->_characteristics)
  {
    return self->_characteristics;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
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
    if (!v6 || (-[HAPService instanceID](self, "instanceID"), v7 = objc_claimAutoreleasedReturnValue(), -[HAPService instanceID](v6, "instanceID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = numbersAreNotEqualNilSafe(v7, v8), v8, v7, (v9 & 1) != 0) || (-[HAPService type](self, "type"), v12 = objc_claimAutoreleasedReturnValue(), -[HAPService type](v6, "type"), v13 = objc_claimAutoreleasedReturnValue(), v12 | v13) && (v14 = v13, v15 = [v12 isEqualToString:v13], v14, v12, !v15))
    {
      v10 = 0;
    }

    else
    {
      accessory = [(HAPService *)self accessory];
      if (accessory)
      {
        v17 = accessory;
        accessory2 = [(HAPService *)v6 accessory];
        if (accessory2)
        {
          v19 = accessory2;
          accessory3 = [(HAPService *)self accessory];
          accessory4 = [(HAPService *)v6 accessory];
          v10 = [accessory3 isEqual:accessory4];
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 1;
      }
    }
  }

  return v10 & 1;
}

- (unint64_t)hash
{
  instanceID = [(HAPService *)self instanceID];
  v3 = [instanceID hash];

  return v3;
}

- (HAPService)initWithType:(id)type instanceID:(id)d parsedCharacteristics:(id)characteristics serviceProperties:(unint64_t)properties linkedServices:(id)services
{
  v54 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  characteristicsCopy = characteristics;
  servicesCopy = services;
  if (isValidTypeName(typeCopy))
  {
    hap_validatedAndNormalizedUUIDString = [typeCopy hap_validatedAndNormalizedUUIDString];
    if (hap_validatedAndNormalizedUUIDString)
    {
      if (isValidInstanceID(dCopy))
      {
        v45.receiver = self;
        v45.super_class = HAPService;
        self = [(HAPService *)&v45 init];
        if (self)
        {
          v43 = servicesCopy;
          +[HAPMetadata getSharedInstance];
          v18 = v17 = hap_validatedAndNormalizedUUIDString;
          v19 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v17];
          type = self->_type;
          self->_type = v19;

          v44 = v18;
          v21 = v18;
          hap_validatedAndNormalizedUUIDString = v17;
          v22 = [v21 serviceUTIFromType:v17];
          if (v22)
          {
            context = objc_autoreleasePoolPush();
            log = HMFGetOSLogHandle();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v23 = HMFGetLogIdentifier();
              v24 = self->_type;
              *buf = 138544130;
              v47 = v23;
              v25 = v23;
              v48 = 2112;
              v49 = v24;
              v50 = 2112;
              v51 = v22;
              v52 = 2112;
              v53 = dCopy;
              _os_log_impl(&dword_22AADC000, log, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(context);
          }

          v26 = v22;
          objc_storeStrong(&self->_instanceID, d);
          servicesCopy = v43;
          if (characteristicsCopy)
          {
            if ([characteristicsCopy count] >= 0x65)
            {
              v27 = objc_autoreleasePoolPush();
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543362;
                v47 = v29;
                v30 = "%{public}@### HAPService exceeds maximum number of allowed characteristics";
LABEL_33:
                _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);

                goto LABEL_34;
              }

              goto LABEL_34;
            }

            objc_storeStrong(&self->_characteristics, characteristics);
            if (![(HAPService *)self updateAndValidateCharacteristics])
            {
              v27 = objc_autoreleasePoolPush();
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543362;
                v47 = v29;
                v30 = "%{public}@### HAPService failed updateAndValidateCharacteristics";
                goto LABEL_33;
              }

LABEL_34:

              objc_autoreleasePoolPop(v27);
              goto LABEL_22;
            }
          }

          self->_serviceProperties = properties;
          if (v43)
          {
            v39 = v43;
          }

          else
          {
            v39 = MEMORY[0x277CBEBF8];
          }

          objc_storeStrong(&self->_linkedServices, v39);
        }

        self = self;
        selfCopy = self;
        goto LABEL_29;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v37;
        v38 = "%{public}@### Unable to initialize service because of invalid instance ID";
        goto LABEL_20;
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v37;
        v38 = "%{public}@### Unable to initialize service because type name is not a UUID";
LABEL_20:
        _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v35);
LABEL_22:
    selfCopy = 0;
LABEL_29:

    goto LABEL_30;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v33;
    v48 = 2112;
    v49 = typeCopy;
    _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize service because of invalid service type name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  selfCopy = 0;
LABEL_30:

  return selfCopy;
}

- (CBService)cbService
{
  v2 = objc_getAssociatedObject(self, "cbService");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hap2_mergeWithService:(id)service
{
  serviceCopy = service;
  v5 = MEMORY[0x277CBEB38];
  characteristics = [(HAPService *)self characteristics];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(characteristics, "count")}];

  characteristics2 = [(HAPService *)self characteristics];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__HAPService_HAP2__hap2_mergeWithService___block_invoke;
  v30[3] = &unk_2786D60B0;
  v9 = v7;
  v31 = v9;
  [characteristics2 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = MEMORY[0x277CBEB18];
  characteristics3 = [serviceCopy characteristics];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(characteristics3, "count")}];

  characteristics4 = [serviceCopy characteristics];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __42__HAPService_HAP2__hap2_mergeWithService___block_invoke_2;
  v22 = &unk_2786D6238;
  v14 = v9;
  v23 = v14;
  v25 = &v26;
  v15 = v12;
  v24 = v15;
  [characteristics4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v19];

  if ([v14 count])
  {
    *(v27 + 24) = 1;
  }

  v16 = [v15 copy];
  [(HAPService *)self setCharacteristics:v16];

  v17 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __42__HAPService_HAP2__hap2_mergeWithService___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 instanceID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __42__HAPService_HAP2__hap2_mergeWithService___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v14 = v3;
  v5 = [v3 instanceID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = a1[4];
    v8 = [v14 instanceID];
    [v7 removeObjectForKey:v8];

    v9 = [v6 hap2_mergeWithCharacteristic:v14];
    v10 = *(a1[6] + 8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 & 1;
    v12 = a1[5];
    v13 = v6;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
    v12 = a1[5];
    v13 = v14;
  }

  [v12 addObject:v13];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  type = [(HAPService *)self type];
  v7 = [type copyWithZone:zone];
  instanceID = [(HAPService *)self instanceID];
  v9 = [instanceID copyWithZone:zone];
  v10 = objc_alloc(MEMORY[0x277CBEA60]);
  characteristics = [(HAPService *)self characteristics];
  v12 = [v10 initWithArray:characteristics copyItems:1];
  serviceProperties = [(HAPService *)self serviceProperties];
  v14 = objc_alloc(MEMORY[0x277CBEA60]);
  linkedServices = [(HAPService *)self linkedServices];
  v16 = [v14 initWithArray:linkedServices copyItems:1];
  v17 = [v5 initWithType:v7 instanceID:v9 parsedCharacteristics:v12 serviceProperties:serviceProperties linkedServices:v16];

  return v17;
}

+ (BOOL)hap2_mergeServices:(id)services discoveredServices:(id)discoveredServices mergedServices:(id)mergedServices
{
  servicesCopy = services;
  discoveredServicesCopy = discoveredServices;
  mergedServicesCopy = mergedServices;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(servicesCopy, "count")}];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke;
  v27[3] = &unk_2786D5B58;
  v11 = v10;
  v28 = v11;
  [servicesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke_2;
  v19 = &unk_2786D5050;
  v12 = v11;
  v20 = v12;
  v13 = mergedServicesCopy;
  v21 = v13;
  v22 = &v23;
  [discoveredServicesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];
  if ([v12 count])
  {
    v14 = 1;
    *(v24 + 24) = 1;
  }

  else
  {
    v14 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v14 & 1;
}

void __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 instanceID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [v3 instanceID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v12 instanceID];
    [v7 removeObjectForKey:v8];

    v9 = [v6 hap2_mergeWithService:v12];
    v10 = *(*(a1 + 48) + 8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 & 1;
    [v6 updateAndValidateCharacteristics];
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    [*(a1 + 40) addObject:v12];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end