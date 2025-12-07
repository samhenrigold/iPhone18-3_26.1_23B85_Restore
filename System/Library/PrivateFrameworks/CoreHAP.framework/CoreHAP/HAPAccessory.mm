@interface HAPAccessory
+ (BOOL)isAccessoryPairedWithIdentifier:(id)identifier;
+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)identifier;
+ (id)logCategory;
+ (id)productDataStringFromData:(id)data;
- (BOOL)_updateAndValidateServices;
- (BOOL)_updateService:(id)service;
- (BOOL)_validateCharacteristicValues;
- (BOOL)eligibleForRetry;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)mergeObject:(id)object;
- (BOOL)shouldDisconnectOnIdle;
- (BOOL)shouldMergeObject:(id)object;
- (BOOL)updateForAccessoryInformationService;
- (HAPAccessory)init;
- (HAPAccessory)initWithServer:(id)server instanceID:(id)d parsedServices:(id)services;
- (HAPAccessoryDelegate)delegate;
- (HAPAccessoryServer)server;
- (NSNumber)category;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (id)characteristicOfType:(id)type serviceType:(id)serviceType;
- (id)characteristicWithInstanceID:(id)d;
- (id)characteristicsOfType:(id)type;
- (id)serviceWithInstanceID:(id)d;
- (id)servicesOfType:(id)type;
- (id)shortDescription;
- (int)consecutiveFailedPingCount;
- (int64_t)linkLayerType;
- (unint64_t)hash;
- (unint64_t)suspendedState;
- (void)invalidateWithError:(id)error;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)readValueForCharacteristic:(id)characteristic timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)setConsecutiveFailedPingCount:(int)count;
- (void)setLinkLayerType:(int64_t)type;
- (void)setReachable:(BOOL)reachable;
- (void)setShouldDisconnectOnIdle:(BOOL)idle;
- (void)setSuspendedState:(unint64_t)state;
- (void)writeCharacteristicValue:(id)value timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HAPAccessory

- (HAPAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HAPAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)mergeObject:(id)object
{
  v113 = *MEMORY[0x277D85DE8];
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
    v39 = 0;
    goto LABEL_57;
  }

  if (![(HAPAccessory *)self shouldMergeObject:v6])
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v110 = v38;
      v111 = 2112;
      v112 = v6;
      _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_INFO, "%{public}@Not merging with accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_28;
  }

  v85 = v6;
  v7 = MEMORY[0x277CBEB98];
  services = [(HAPAccessory *)self services];
  v9 = [v7 setWithArray:services];

  v10 = MEMORY[0x277CBEB98];
  v86 = objectCopy;
  services2 = [objectCopy services];
  v12 = [v10 setWithArray:services2];

  v87 = v9;
  v13 = [v9 mutableCopy];
  v88 = v12;
  [v13 minusSet:v12];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v102 objects:v108 count:16];
  v89 = v14 != 0;
  if (v14)
  {
    v15 = v14;
    v16 = *v103;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v103 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v102 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v110 = v22;
          v111 = 2112;
          v112 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Removed service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v102 objects:v108 count:16];
    }

    while (v15);
  }

  v23 = v88;
  v24 = [v88 mutableCopy];
  [v24 minusSet:v87];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v92 = v24;
  v25 = [v92 countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v99;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v99 != v27)
        {
          objc_enumerationMutation(v92);
        }

        v29 = *(*(&v98 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v110 = v33;
          v111 = 2112;
          v112 = v29;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Added service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        [v29 setAccessory:selfCopy3];
      }

      v26 = [v92 countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v26);
    v34 = 1;
    v23 = v88;
  }

  else
  {
    v34 = v89;
  }

  v90 = v34;

  v40 = [v87 mutableCopy];
  [v40 minusSet:obj];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v91 = v40;
  v41 = [v91 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v95;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v95 != v43)
        {
          objc_enumerationMutation(v91);
        }

        v45 = *(*(&v94 + 1) + 8 * k);
        v46 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543618;
          v110 = v49;
          v111 = 2112;
          v112 = v45;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        v50 = [v23 member:v45];
        if (v50 && [v45 mergeObject:v50])
        {
          v51 = objc_autoreleasePoolPush();
          v52 = selfCopy4;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543618;
            v110 = v54;
            v111 = 2112;
            v112 = v45;
            _os_log_impl(&dword_22AADC000, v53, OS_LOG_TYPE_INFO, "%{public}@Updated service: %@", buf, 0x16u);

            v23 = v88;
          }

          objc_autoreleasePoolPop(v51);
          v90 = 1;
        }
      }

      v42 = [v91 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v42);
  }

  v55 = MEMORY[0x277CBEB18];
  allObjects = [v91 allObjects];
  v57 = [v55 arrayWithArray:allObjects];

  allObjects2 = [v92 allObjects];
  [v57 addObjectsFromArray:allObjects2];

  v59 = [v57 copy];
  [(HAPAccessory *)self setServices:v59];

  name = [(HAPAccessory *)self name];
  v6 = v85;
  name2 = [v85 name];
  v62 = [name isEqualToString:name2];

  v39 = v90;
  if ((v62 & 1) == 0)
  {
    name3 = [v85 name];
    [(HAPAccessory *)self setName:name3];

    v39 = 1;
  }

  manufacturer = [(HAPAccessory *)self manufacturer];
  manufacturer2 = [v85 manufacturer];
  v66 = [manufacturer isEqualToString:manufacturer2];

  objectCopy = v86;
  if ((v66 & 1) == 0)
  {
    manufacturer3 = [v85 manufacturer];
    [(HAPAccessory *)self setManufacturer:manufacturer3];

    v39 = 1;
  }

  model = [(HAPAccessory *)self model];
  model2 = [v85 model];
  v70 = [model isEqualToString:model2];

  if ((v70 & 1) == 0)
  {
    model3 = [v85 model];
    [(HAPAccessory *)self setModel:model3];

    v39 = 1;
  }

  serialNumber = [(HAPAccessory *)self serialNumber];
  serialNumber2 = [v85 serialNumber];
  v74 = [serialNumber isEqualToString:serialNumber2];

  if ((v74 & 1) == 0)
  {
    serialNumber3 = [v85 serialNumber];
    [(HAPAccessory *)self setSerialNumber:serialNumber3];

    v39 = 1;
  }

  firmwareVersion = [(HAPAccessory *)self firmwareVersion];
  firmwareVersion2 = [v85 firmwareVersion];
  v78 = [firmwareVersion isEqualToString:firmwareVersion2];

  if ((v78 & 1) == 0)
  {
    firmwareVersion3 = [v85 firmwareVersion];
    [(HAPAccessory *)self setFirmwareVersion:firmwareVersion3];

    v39 = 1;
  }

  productData = [(HAPAccessory *)self productData];
  productData2 = [v85 productData];
  v82 = [productData isEqualToString:productData2];

  if ((v82 & 1) == 0)
  {
    productData3 = [v85 productData];
    [(HAPAccessory *)self setProductData:productData3];

    v39 = 1;
  }

LABEL_57:
  return v39 & 1;
}

- (BOOL)shouldMergeObject:(id)object
{
  v42 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if ([(HAPAccessory *)self isEqual:objectCopy])
  {
    v5 = MEMORY[0x277CBEB98];
    services = [(HAPAccessory *)self services];
    v7 = [v5 setWithArray:services];

    v8 = MEMORY[0x277CBEB98];
    v29 = objectCopy;
    services2 = [objectCopy services];
    v10 = [v8 setWithArray:services2];

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
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to merge service, %@, with existing service: %@", buf, 0x20u);

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

- (BOOL)eligibleForRetry
{
  server = [(HAPAccessory *)self server];
  if (server)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)characteristicWithInstanceID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  services = [(HAPAccessory *)self services];
  v20 = [services countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(services);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        characteristics = [v8 characteristics];
        v10 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(characteristics);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              instanceID = [v14 instanceID];
              v16 = [dCopy isEqualToNumber:instanceID];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v17 = 0;
      v20 = [services countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)characteristicOfType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v8 = serviceTypeCopy;
  v11FirstObject = 0;
  if (!typeCopy || !serviceTypeCopy)
  {
    goto LABEL_8;
  }

  v10 = [(HAPAccessory *)self servicesOfType:serviceTypeCopy];
  firstObject = [v10 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11FirstObject = 0;
    goto LABEL_7;
  }

  v12 = [(HAPAccessory *)self servicesOfType:v8];
  firstObject2 = [v12 firstObject];

  if (firstObject2)
  {
    firstObject = [firstObject2 characteristicsOfType:typeCopy];
    v11FirstObject = [firstObject firstObject];
    v10 = firstObject2;
LABEL_7:

    goto LABEL_8;
  }

  v11FirstObject = 0;
LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v11FirstObject;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)characteristicsOfType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  services = [(HAPAccessory *)self services];
  v7 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(services);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) characteristicsOfType:typeCopy];
        [array addObjectsFromArray:v11];
      }

      v8 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)serviceWithInstanceID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  services = [(HAPAccessory *)self services];
  v6 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        instanceID = [v9 instanceID];
        v11 = [dCopy isEqualToNumber:instanceID];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)servicesOfType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  services = [(HAPAccessory *)self services];
  v7 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (BOOL)_validateCharacteristicValues
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  services = [(HAPAccessory *)self services];
  v3 = [services countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    v25 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(services);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        characteristics = [v7 characteristics];
        v9 = [characteristics countByEnumeratingWithState:&v26 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(characteristics);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              if ([v13 shouldValidateValueAfterReading])
              {
                value = [v13 value];
                if (value)
                {
                  v15 = value;
                  properties = [v13 properties];

                  if ((properties & 2) != 0)
                  {
                    value2 = [v13 value];
                    v18 = [v13 validateValue:value2 outValue:0];

                    if (v18)
                    {
                      v20 = objc_autoreleasePoolPush();
                      v21 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                      {
                        v22 = HMFGetLogIdentifier();
                        type = [v13 type];
                        *buf = 138543874;
                        v35 = v22;
                        v36 = 2112;
                        v37 = type;
                        v38 = 2112;
                        v39 = v18;
                        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@[HAP Accessory] ### Failed to validate value with type %@ with error %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v20);
                      v19 = 0;
                      goto LABEL_24;
                    }
                  }
                }
              }
            }

            v10 = [characteristics countByEnumeratingWithState:&v26 objects:v40 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v25;
      }

      v4 = [services countByEnumeratingWithState:&v30 objects:v41 count:16];
      v19 = 1;
    }

    while (v4);
  }

  else
  {
    v19 = 1;
  }

LABEL_24:

  return v19;
}

- (void)invalidateWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [(HAPAccessory *)selfCopy shortDescription];
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = shortDescription;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Invalidating and updating connection state for HAP Accessory: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (BOOL)updateForAccessoryInformationService
{
  v57 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  services = [(HAPAccessory *)self services];
  v4 = [services countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v50;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        type = [v9 type];
        v11 = [type isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          if (v6)
          {
            v39 = objc_autoreleasePoolPush();
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543362;
              v55 = v41;
              _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has more than one Accessory Information Service", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v39);
            return 0;
          }

          v6 = v9;
        }
      }

      v5 = [services countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      characteristics = [v6 characteristics];
      v13 = [characteristics countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v46;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(characteristics);
            }

            v17 = *(*(&v45 + 1) + 8 * j);
            value = [v17 value];

            if (value)
            {
              value2 = [v17 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = value2;
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;

              v22 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v21];

              type2 = [v17 type];
              v24 = [type2 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

              if (v24)
              {
                [(HAPAccessory *)self setName:v22];
              }

              else
              {
                type3 = [v17 type];
                v26 = [type3 isEqualToString:@"00000020-0000-1000-8000-0026BB765291"];

                if (v26)
                {
                  [(HAPAccessory *)self setManufacturer:v22];
                }

                else
                {
                  type4 = [v17 type];
                  v28 = [type4 isEqualToString:@"00000021-0000-1000-8000-0026BB765291"];

                  if (v28)
                  {
                    [(HAPAccessory *)self setModel:v22];
                  }

                  else
                  {
                    type5 = [v17 type];
                    v30 = [type5 isEqualToString:@"00000030-0000-1000-8000-0026BB765291"];

                    if (v30)
                    {
                      [(HAPAccessory *)self setSerialNumber:v22];
                    }

                    else
                    {
                      type6 = [v17 type];
                      v32 = [type6 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

                      if (v32)
                      {
                        [(HAPAccessory *)self setFirmwareVersion:v22];
                      }

                      else
                      {
                        type7 = [v17 type];
                        v34 = [type7 isEqualToString:@"00000220-0000-1000-8000-0026BB765291"];

                        if (v34)
                        {
                          v35 = objc_opt_class();
                          value3 = [v17 value];
                          v37 = [v35 productDataStringFromData:value3];
                          [(HAPAccessory *)self setProductData:v37];
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v14 = [characteristics countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v14);
      }

      return 1;
    }
  }

  else
  {
  }

  v42 = objc_autoreleasePoolPush();
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v44;
    _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@### Accessory is missing an Accessory Information Service", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  return 0;
}

- (BOOL)_updateService:(id)service
{
  if (service)
  {
    [service setAccessory:self];
  }

  return 1;
}

- (BOOL)_updateAndValidateServices
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  services = [(HAPAccessory *)self services];
  v5 = [services countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    selfCopy = self;
    v40 = services;
    v37 = *v46;
    while (2)
    {
      v8 = 0;
      v38 = v6;
      do
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
        instanceID = [v9 instanceID];
        v11 = [v3 containsObject:instanceID];

        if (v11)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            instanceID2 = [v9 instanceID];
            stringValue = [instanceID2 stringValue];
            *buf = 138543618;
            v51 = v34;
            v52 = 2112;
            v53 = stringValue;
            _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has service with duplicate instance ID '%@'", buf, 0x16u);

            goto LABEL_33;
          }

LABEL_34:

          objc_autoreleasePoolPop(v32);
LABEL_23:

          goto LABEL_27;
        }

        instanceID3 = [v9 instanceID];
        [v3 addObject:instanceID3];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        characteristics = [v9 characteristics];
        v14 = [characteristics countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v42;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v42 != v16)
              {
                objc_enumerationMutation(characteristics);
              }

              v18 = *(*(&v41 + 1) + 8 * i);
              instanceID4 = [v18 instanceID];
              v20 = [v3 containsObject:instanceID4];

              if (v20)
              {
                v23 = objc_autoreleasePoolPush();
                v24 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v25 = HMFGetLogIdentifier();
                  instanceID5 = [v18 instanceID];
                  stringValue2 = [instanceID5 stringValue];
                  *buf = 138543618;
                  v51 = v25;
                  v52 = 2112;
                  v53 = stringValue2;
                  _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has characteristic with duplicate instance ID '%@'", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v23);
                services = v40;
                goto LABEL_23;
              }

              instanceID6 = [v18 instanceID];
              [v3 addObject:instanceID6];
            }

            v15 = [characteristics countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
        if (![(HAPAccessory *)selfCopy _updateService:v9])
        {
          v32 = objc_autoreleasePoolPush();
          v33 = HMFGetOSLogHandle();
          services = v40;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v34;
            _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateService", buf, 0xCu);
LABEL_33:
          }

          goto LABEL_34;
        }

        ++v8;
        v7 = v37;
        services = v40;
      }

      while (v8 != v38);
      v6 = [v40 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([(HAPAccessory *)self updateForAccessoryInformationService])
  {
    v22 = 1;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v30;
      _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateForAccessoryInformationService", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
LABEL_27:
    v22 = 0;
  }

  return v22;
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if ([valuesCopy count])
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v27 = v26;
      HMFUptime();
      v29 = v27 - v28;
      v30 = objc_autoreleasePoolPush();
      selfCopy = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v33;
        v57 = 2048;
        v58 = v29;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for write multiple characteristic values request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      if (v29 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v21 = server;
          [server writeCharacteristicValues:valuesCopy timeout:expiryCopy expiry:queueCopy completionQueue:handlerCopy completionHandler:timeout];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v42;
            v57 = 2112;
            v58 = *&valuesCopy;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to write characteristics %@ because there is no server.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v39);
          v21 = 0;
          if (queueCopy && handlerCopy)
          {
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_135;
            v43[3] = &unk_2786D65D8;
            v44 = currentActivity;
            v45 = handlerCopy;
            dispatch_async(queueCopy, v43);

            v21 = 0;
          }
        }

        goto LABEL_29;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v38;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      if (queueCopy && handlerCopy)
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_134;
        v46[3] = &unk_2786D65D8;
        v47 = currentActivity;
        v48 = handlerCopy;
        dispatch_async(queueCopy, v46);

        v21 = v47;
        goto LABEL_29;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v20;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_133;
        block[3] = &unk_2786D65D8;
        v50 = currentActivity;
        v51 = handlerCopy;
        dispatch_async(queueCopy, block);

        v21 = v50;
LABEL_29:
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v25;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristic writes are required.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    if (queueCopy && handlerCopy)
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v52[3] = &unk_2786D65D8;
      v53 = currentActivity;
      v54 = handlerCopy;
      dispatch_async(queueCopy, v52);

      v21 = v53;
      goto LABEL_29;
    }
  }
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"One or more target characteristic writes are required." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_133(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_134(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_135(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2202];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

- (void)writeCharacteristicValue:(id)value timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v67 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  if (valueCopy)
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v26 = v25;
      HMFUptime();
      v28 = v26 - v27;
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v64 = v32;
        v65 = 2048;
        v66 = v28;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for write characteristic value request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if (v28 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v62 = valueCopy;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_2;
          v47[3] = &unk_2786D6060;
          v35 = &v49;
          v49 = handlerCopy;
          v36 = &v48;
          v48 = valueCopy;
          [server writeCharacteristicValues:v34 timeout:expiryCopy expiry:queueCopy completionQueue:v47 completionHandler:timeout];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            [valueCopy characteristic];
            v45 = v46 = v41;
            *buf = 138543618;
            v64 = v44;
            v65 = 2112;
            v66 = *&v45;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to write value for characteristic %@ because there is no server.", buf, 0x16u);

            v41 = v46;
          }

          objc_autoreleasePoolPop(v41);
          v20 = 0;
          if (!queueCopy || !handlerCopy)
          {
            goto LABEL_30;
          }

          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_123;
          v50[3] = &unk_2786D65D8;
          v35 = &v52;
          v52 = handlerCopy;
          v36 = &v51;
          v51 = valueCopy;
          dispatch_async(queueCopy, v50);
        }

        v20 = server;
LABEL_30:

        goto LABEL_31;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v40;
        _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      if (queueCopy && handlerCopy)
      {
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_122;
        v53[3] = &unk_2786D65D8;
        v55 = handlerCopy;
        v54 = valueCopy;
        dispatch_async(queueCopy, v53);

        v20 = v55;
        goto LABEL_30;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v19;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_121;
        block[3] = &unk_2786D65D8;
        v58 = handlerCopy;
        v57 = valueCopy;
        dispatch_async(queueCopy, block);

        v20 = v58;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic write request is a required parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    if (queueCopy && handlerCopy)
    {
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v59[3] = &unk_2786D65D8;
      v60 = 0;
      v61 = handlerCopy;
      dispatch_async(queueCopy, v59);

      v20 = v61;
      goto LABEL_30;
    }
  }

LABEL_31:
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"Characteristic write request is a required parameter." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_121(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_122(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_123(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2201];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v14 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    v8 = [*(a1 + 32) characteristic];
    if ([v7 isEqual:v8])
    {
      v9 = [v6 error];

      if (v9)
      {
        v10 = [v6 error];
LABEL_7:
        v11 = v10;
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) characteristic];
        (*(v12 + 16))(v12, v13, v11);

        v5 = v14;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = v14;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if ([valuesCopy count])
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v27 = v26;
      HMFUptime();
      v29 = v27 - v28;
      v30 = objc_autoreleasePoolPush();
      selfCopy = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v33;
        v57 = 2048;
        v58 = v29;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for read multiple characteristic values request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      if (v29 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v21 = server;
          [server readCharacteristicValues:valuesCopy timeout:expiryCopy expiry:queueCopy completionQueue:handlerCopy completionHandler:timeout];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v42;
            v57 = 2112;
            v58 = *&valuesCopy;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to read characteristics %@ because there is no server.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v39);
          v21 = 0;
          if (queueCopy && handlerCopy)
          {
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_117;
            v43[3] = &unk_2786D65D8;
            v44 = currentActivity;
            v45 = handlerCopy;
            dispatch_async(queueCopy, v43);

            v21 = 0;
          }
        }

        goto LABEL_29;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v38;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      if (queueCopy && handlerCopy)
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_116;
        v46[3] = &unk_2786D65D8;
        v47 = currentActivity;
        v48 = handlerCopy;
        dispatch_async(queueCopy, v46);

        v21 = v47;
        goto LABEL_29;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v20;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_115;
        block[3] = &unk_2786D65D8;
        v50 = currentActivity;
        v51 = handlerCopy;
        dispatch_async(queueCopy, block);

        v21 = v50;
LABEL_29:
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v25;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristics are required.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    if (queueCopy && handlerCopy)
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v52[3] = &unk_2786D65D8;
      v53 = currentActivity;
      v54 = handlerCopy;
      dispatch_async(queueCopy, v52);

      v21 = v53;
      goto LABEL_29;
    }
  }
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"One or more target characteristics are required." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_115(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_116(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_117(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2302];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

- (void)readValueForCharacteristic:(id)characteristic timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  if (characteristicCopy)
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v26 = v25;
      HMFUptime();
      v28 = v26 - v27;
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v62 = v32;
        v63 = 2048;
        v64 = v28;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for read characteristic value request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if (v28 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v60 = characteristicCopy;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_2;
          v45[3] = &unk_2786D6060;
          v35 = &v47;
          v47 = handlerCopy;
          v36 = &v46;
          v46 = characteristicCopy;
          [server readCharacteristicValues:v34 timeout:expiryCopy expiry:queueCopy completionQueue:v45 completionHandler:timeout];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v62 = v44;
            v63 = 2112;
            v64 = *&characteristicCopy;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to read value for characteristic %@ because there is no server.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v20 = 0;
          if (!queueCopy || !handlerCopy)
          {
            goto LABEL_30;
          }

          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_98;
          v48[3] = &unk_2786D65D8;
          v35 = &v50;
          v50 = handlerCopy;
          v36 = &v49;
          v49 = characteristicCopy;
          dispatch_async(queueCopy, v48);
        }

        v20 = server;
LABEL_30:

        goto LABEL_31;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v40;
        _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      if (queueCopy && handlerCopy)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_94;
        v51[3] = &unk_2786D65D8;
        v53 = handlerCopy;
        v52 = characteristicCopy;
        dispatch_async(queueCopy, v51);

        v20 = v53;
        goto LABEL_30;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v19;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_90;
        block[3] = &unk_2786D65D8;
        v56 = handlerCopy;
        v55 = characteristicCopy;
        dispatch_async(queueCopy, block);

        v20 = v56;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v62 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic is a required parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    if (queueCopy && handlerCopy)
    {
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v57[3] = &unk_2786D65D8;
      v58 = 0;
      v59 = handlerCopy;
      dispatch_async(queueCopy, v57);

      v20 = v59;
      goto LABEL_30;
    }
  }

LABEL_31:
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"Characteristic is a required parameter." suggestion:0 underlyingError:0];
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_90(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_94(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_98(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2301];
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v11 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = [v6 error];

      if (v8)
      {
        v9 = [v6 error];
LABEL_7:
        v10 = v9;
        (*(*(a1 + 40) + 16))();

        v5 = v11;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v9 = v11;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)shortDescription
{
  v3 = HAPIsInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    name = [(HAPAccessory *)self name];
    identifier = [(HAPAccessory *)self identifier];
    instanceID = [(HAPAccessory *)self instanceID];
    v8 = [v4 stringWithFormat:@"%@/%@+%@", name, identifier, instanceID];
  }

  else
  {
    name = [(HAPAccessory *)self identifier];
    identifier = [(HAPAccessory *)self instanceID];
    v8 = [v4 stringWithFormat:@"%@+%@", name, identifier];
  }

  return v8;
}

- (NSNumber)category
{
  server = [(HAPAccessory *)self server];
  if (server && (v4 = server, v5 = [(HAPAccessory *)self isPrimary], v4, v5))
  {
    server2 = [(HAPAccessory *)self server];
    category = [server2 category];
  }

  else
  {
    category = 0;
  }

  return category;
}

- (NSString)uniqueIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (!self->_uniqueIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_server);
      identifier = [v4 identifier];
      v6 = HAPUniqueIdentifier(identifier, self->_instanceID);
      uniqueIdentifier = self->_uniqueIdentifier;
      self->_uniqueIdentifier = v6;
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        identifier = self->_identifier;
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = identifier;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot create globally unique identifier because there is no server for accessory: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = self->_uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (void)setConsecutiveFailedPingCount:(int)count
{
  os_unfair_lock_lock_with_options();
  self->_consecutiveFailedPingCount = count;

  os_unfair_lock_unlock(&self->_lock);
}

- (int)consecutiveFailedPingCount
{
  os_unfair_lock_lock_with_options();
  consecutiveFailedPingCount = self->_consecutiveFailedPingCount;
  os_unfair_lock_unlock(&self->_lock);
  return consecutiveFailedPingCount;
}

- (BOOL)shouldDisconnectOnIdle
{
  os_unfair_lock_lock_with_options();
  shouldDisconnectOnIdle = self->_shouldDisconnectOnIdle;
  os_unfair_lock_unlock(&self->_lock);
  return shouldDisconnectOnIdle;
}

- (void)setShouldDisconnectOnIdle:(BOOL)idle
{
  idleCopy = idle;
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_shouldDisconnectOnIdle == idleCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_shouldDisconnectOnIdle = idleCopy;
    os_unfair_lock_unlock(&self->_lock);
    server = [(HAPAccessory *)self server];

    if (server)
    {
      server2 = [(HAPAccessory *)self server];
      [server2 setShouldDisconnectOnIdle:idleCopy];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        shortDescription = [(HAPAccessory *)selfCopy shortDescription];
        *buf = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = shortDescription;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set shouldDisconnectOnIdle due to no server instance for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

- (void)setSuspendedState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_suspendedState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)suspendedState
{
  os_unfair_lock_lock_with_options();
  suspendedState = self->_suspendedState;
  os_unfair_lock_unlock(&self->_lock);
  return suspendedState;
}

- (void)setLinkLayerType:(int64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_linkLayerType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)linkLayerType
{
  os_unfair_lock_lock_with_options();
  linkLayerType = self->_linkLayerType;
  os_unfair_lock_unlock(&self->_lock);
  return linkLayerType;
}

- (void)setReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  os_unfair_lock_lock_with_options();
  if (self->_reachable == reachableCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_reachable = reachableCopy;
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HAPAccessory *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(HAPAccessory *)self delegate];
      [delegate2 accessory:self didUpdateReachabilityState:reachableCopy];
    }
  }
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (BOOL)isPaired
{
  server = [(HAPAccessory *)self server];
  isPaired = [server isPaired];

  return isPaired;
}

- (NSString)description
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  instanceID = [(HAPAccessory *)self instanceID];
  [v4 appendFormat:@"Instance ID: %@    ", instanceID];

  v6 = HAPIsInternalBuild();
  if (v6)
  {
    server = [(HAPAccessory *)self server];
    name = [server name];
  }

  else
  {
    name = @"<private>";
  }

  server2 = [(HAPAccessory *)self server];
  identifier = [server2 identifier];
  [v4 appendFormat:@"Server: '%@' (%@)    ", name, identifier];

  if (v6)
  {
  }

  if ([(HAPAccessory *)self isPrimary])
  {
    category = [(HAPAccessory *)self category];
    [v4 appendFormat:@"Category: %@    ", category];
  }

  name2 = [(HAPAccessory *)self name];

  if (name2)
  {
    if (HAPIsInternalBuild())
    {
      name3 = [(HAPAccessory *)self name];
      [v4 appendFormat:@"Name: %@    ", name3];
    }

    else
    {
      [v4 appendFormat:@"Name: %@    ", @"<private>"];
    }
  }

  v13 = HAPAccessorySuspendedStateDescription([(HAPAccessory *)self suspendedState]);
  [v4 appendFormat:@"Suspended State: %@    ", v13];

  model = [(HAPAccessory *)self model];
  if (model || ([(HAPAccessory *)self manufacturer], (model = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    serialNumber = [(HAPAccessory *)self serialNumber];

    if (!serialNumber)
    {
      goto LABEL_22;
    }
  }

  model2 = [(HAPAccessory *)self model];

  if (model2)
  {
    model3 = [(HAPAccessory *)self model];
    [v4 appendFormat:@"Model: %@    ", model3];
  }

  manufacturer = [(HAPAccessory *)self manufacturer];

  if (manufacturer)
  {
    manufacturer2 = [(HAPAccessory *)self manufacturer];
    [v4 appendFormat:@"Manufacturer: %@    ", manufacturer2];
  }

  serialNumber2 = [(HAPAccessory *)self serialNumber];

  if (serialNumber2)
  {
    serialNumber3 = [(HAPAccessory *)self serialNumber];
    [v4 appendFormat:@"Serial Number: %@    ", serialNumber3];
  }

  [v4 appendFormat:@"\n"];
LABEL_22:
  services = [(HAPAccessory *)self services];
  [v4 appendFormat:@"Services: %@    ", services];

  return v4;
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
    if (v6 && (-[HAPAccessory instanceID](self, "instanceID"), v7 = objc_claimAutoreleasedReturnValue(), -[HAPAccessory instanceID](v6, "instanceID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToNumber:v8], v8, v7, v9) && (-[HAPAccessory identifier](self, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), -[HAPAccessory identifier](v6, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12) && (v13 = -[HAPAccessory linkType](self, "linkType"), v13 == -[HAPAccessory linkType](v6, "linkType")))
    {
      communicationProtocol = [(HAPAccessory *)self communicationProtocol];
      v15 = communicationProtocol == [(HAPAccessory *)v6 communicationProtocol];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  identifier = [(HAPAccessory *)self identifier];
  v4 = [identifier hash];
  instanceID = [(HAPAccessory *)self instanceID];
  v6 = [instanceID hash];

  return v6 ^ v4;
}

- (HAPAccessory)initWithServer:(id)server instanceID:(id)d parsedServices:(id)services
{
  v55 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dCopy = d;
  servicesCopy = services;
  if (isValidInstanceID(dCopy))
  {
    v50.receiver = self;
    v50.super_class = HAPAccessory;
    v11 = [(HAPAccessory *)&v50 init];
    self = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_server, serverCopy);
      self->_linkType = [serverCopy linkType];
      self->_communicationProtocol = [serverCopy communicationProtocol];
      objc_storeStrong(&self->_instanceID, d);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.HAPAccessory", v12);
      workQueue = self->_workQueue;
      self->_workQueue = v13;

      if (servicesCopy)
      {
        if ([servicesCopy count] >= 0x65)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543362;
            v54 = v17;
            v18 = "%{public}@### Accessory exceeds maximum number of allowed services";
LABEL_9:
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

            goto LABEL_10;
          }

          goto LABEL_10;
        }

        objc_storeStrong(&self->_services, services);
        if (![(HAPAccessory *)self _validateCharacteristicValues])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v17;
          v18 = "%{public}@### Accessory failed validateCharacteristicValues";
          goto LABEL_9;
        }

        if (![(HAPAccessory *)self _updateAndValidateServices])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v17;
          v18 = "%{public}@### Accessory failed _updateAndValidateServices";
          goto LABEL_9;
        }
      }

      v37 = servicesCopy;
      self->_consecutiveFailedPingCount = 0;
      self->_primary = 1;
      self->_reachable = 1;
      self->_shouldDisconnectOnIdle = 0;
      v38 = serverCopy;
      if ([serverCopy wakeNumber])
      {
        self->_suspendedState = 3;
      }

      selfCopy = self;
      self->_suspendCapable = 0;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = [(HAPAccessory *)self services];
      v20 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v47;
        v23 = @"00000221-0000-1000-8000-0026BB765291";
        do
        {
          v24 = 0;
          v40 = v21;
          do
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v46 + 1) + 8 * v24);
            type = [v25 type];
            v27 = [type isEqualToString:v23];

            if (v27)
            {
              v28 = v23;
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              characteristics = [v25 characteristics];
              v30 = [characteristics countByEnumeratingWithState:&v42 objects:v51 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v43;
                while (2)
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v43 != v32)
                    {
                      objc_enumerationMutation(characteristics);
                    }

                    type2 = [*(*(&v42 + 1) + 8 * i) type];
                    v35 = [type2 isEqualToString:@"00000251-0000-1000-8000-0026BB765291"];

                    if (v35)
                    {
                      selfCopy->_suspendCapable = 1;
                      goto LABEL_31;
                    }
                  }

                  v31 = [characteristics countByEnumeratingWithState:&v42 objects:v51 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_31:

              v23 = v28;
              v21 = v40;
            }

            ++v24;
          }

          while (v24 != v21);
          v21 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v21);
      }

      self = selfCopy;
      serverCopy = v38;
      servicesCopy = v37;
    }

    self = self;
    selfCopy2 = self;
    goto LABEL_36;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v17;
    v18 = "%{public}@### Unable to initialize accessory because of invalid arguments";
    goto LABEL_9;
  }

LABEL_10:

  objc_autoreleasePoolPop(v15);
  selfCopy2 = 0;
LABEL_36:

  return selfCopy2;
}

- (HAPAccessory)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t56 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56, &__block_literal_global_19922);
  }

  v3 = logCategory__hmf_once_v57;

  return v3;
}

uint64_t __27__HAPAccessory_logCategory__block_invoke()
{
  logCategory__hmf_once_v57 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"+"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = [v4 isEqualToString:@"1"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)productDataStringFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 hmf_hexadecimalStringWithOptions:2];

  return v6;
}

+ (BOOL)isAccessoryPairedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = +[HAPSystemKeychainStore systemStore];
    v13 = 0;
    v14 = 0;
    [v4 getControllerPublicKey:&v14 secretKey:0 username:0 allowCreation:0 forAccessory:identifierCopy error:&v13];
    v5 = v14;
    v6 = v13;

    v7 = 0;
    if (!v6 && v5)
    {
      v12 = 0;
      v8 = +[HAPSystemKeychainStore systemStore];
      v11 = 0;
      v9 = [v8 readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:&v12 error:&v11];
      v6 = v11;

      v7 = 0;
      if (!v6 && v9)
      {
        v7 = v12;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end