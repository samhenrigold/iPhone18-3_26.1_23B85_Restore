@interface HAPBLEServiceCache
- (BOOL)isEqual:(id)equal;
- (HAPBLEServiceCache)initWithCoder:(id)coder;
- (HAPBLEServiceCache)initWithServiceUUID:(id)d instanceId:(id)id instanceOrder:(unint64_t)order serviceProperties:(unint64_t)properties linkedServices:(id)services;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithCharacteristic:(id)characteristic;
- (void)updateWithService:(id)service;
@end

@implementation HAPBLEServiceCache

- (id)description
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v5 = [v3 stringWithFormat:@"\nList of Characteristics: %tu\n", objc_msgSend(cachedCharacteristics, "count")];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  cachedCharacteristics2 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v7 = [cachedCharacteristics2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(cachedCharacteristics2);
        }

        v5 = [v11 stringByAppendingFormat:@"%@", *(*(&v25 + 1) + 8 * v10)];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [cachedCharacteristics2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277CCACA8];
  serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
  serviceInstanceId = [(HAPBLEServiceCache *)self serviceInstanceId];
  serviceInstanceOrder = [(HAPBLEServiceCache *)self serviceInstanceOrder];
  serviceProperties = [(HAPBLEServiceCache *)self serviceProperties];
  string = [MEMORY[0x277CCAB68] string];
  v18 = string;
  if (serviceProperties)
  {
    v23 = [string stringByAppendingString:@": Primary"];

    v18 = v23;
    if ((serviceProperties & 2) == 0)
    {
LABEL_10:
      if ((serviceProperties & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((serviceProperties & 2) == 0)
  {
    goto LABEL_10;
  }

  v24 = [v18 stringByAppendingString:@": Hidden"];

  v18 = v24;
  if ((serviceProperties & 4) != 0)
  {
LABEL_11:
    v19 = [v18 stringByAppendingString:@": Configurable"];

    v18 = v19;
  }

LABEL_12:
  linkedServices = [(HAPBLEServiceCache *)self linkedServices];
  v21 = [v12 stringWithFormat:@"\n\nService Info:\n\tService UUID: %@, \n\tInstanceId: %@, \n\tOrder: %lu, \n\tProperties: %@, \n\tLinkedServices: %@, \n\t %@", serviceUUID, serviceInstanceId, serviceInstanceOrder, v18, linkedServices, v5];

  return v21;
}

- (HAPBLEServiceCache)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HAPBLEServiceCache;
  v5 = [(HAPBLEServiceCache *)&v22 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUUI"], v6 = objc_claimAutoreleasedReturnValue(), serviceUUID = v5->_serviceUUID, v5->_serviceUUID = v6, serviceUUID, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"SI"), v8 = objc_claimAutoreleasedReturnValue(), serviceInstanceId = v5->_serviceInstanceId, v5->_serviceInstanceId = v8, serviceInstanceId, v5->_serviceInstanceOrder = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"SO"), v5->_serviceProperties = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"SP"), v10 = MEMORY[0x277CBEB98], v24[0] = objc_opt_class(), v24[1] = objc_opt_class(), objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 2), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setWithArray:", v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v12, @"LS"), v13 = objc_claimAutoreleasedReturnValue(), linkedServices = v5->_linkedServices, v5->_linkedServices = v13, linkedServices, v12, v11, v15 = MEMORY[0x277CBEB98], v23[0] = objc_opt_class(), v23[1] = objc_opt_class(), objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v23, 2), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setWithArray:", v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v17, @"CC"), v18 = objc_claimAutoreleasedReturnValue(), cachedCharacteristics = v5->_cachedCharacteristics, v5->_cachedCharacteristics = v18, cachedCharacteristics, v17, v16, v5->_serviceInstanceId) && v5->_serviceUUID)
  {
    v20 = v5;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
  [coderCopy encodeObject:serviceUUID forKey:@"SUUI"];

  serviceInstanceId = [(HAPBLEServiceCache *)self serviceInstanceId];
  [coderCopy encodeObject:serviceInstanceId forKey:@"SI"];

  [coderCopy encodeInteger:-[HAPBLEServiceCache serviceInstanceOrder](self forKey:{"serviceInstanceOrder"), @"SO"}];
  [coderCopy encodeInteger:-[HAPBLEServiceCache serviceProperties](self forKey:{"serviceProperties"), @"SP"}];
  linkedServices = [(HAPBLEServiceCache *)self linkedServices];
  [coderCopy encodeObject:linkedServices forKey:@"LS"];

  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [coderCopy encodeObject:cachedCharacteristics forKey:@"CC"];
}

- (void)updateWithCharacteristic:(id)characteristic
{
  v16 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v6 = [cachedCharacteristics countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(cachedCharacteristics);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:characteristicCopy])
        {
          [v10 updateWithCharacteristic:characteristicCopy];
          goto LABEL_11;
        }
      }

      v7 = [cachedCharacteristics countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  cachedCharacteristics = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [cachedCharacteristics addObject:characteristicCopy];
LABEL_11:
}

- (void)updateWithService:(id)service
{
  serviceCopy = service;
  -[HAPBLEServiceCache setServiceInstanceOrder:](self, "setServiceInstanceOrder:", [serviceCopy serviceInstanceOrder]);
  -[HAPBLEServiceCache setServiceProperties:](self, "setServiceProperties:", [serviceCopy serviceProperties]);
  linkedServices = [serviceCopy linkedServices];
  [(HAPBLEServiceCache *)self setLinkedServices:linkedServices];

  cachedCharacteristics = [serviceCopy cachedCharacteristics];

  [(HAPBLEServiceCache *)self setCachedCharacteristics:cachedCharacteristics];
}

- (unint64_t)hash
{
  serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
  v4 = [serviceUUID hash];
  serviceInstanceId = [(HAPBLEServiceCache *)self serviceInstanceId];
  v6 = [serviceInstanceId hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serviceUUID = [(HAPBLEServiceCache *)self serviceUUID];
      serviceUUID2 = [(HAPBLEServiceCache *)v5 serviceUUID];
      v8 = [serviceUUID isEqual:serviceUUID2];

      if (v8 && (-[HAPBLEServiceCache serviceInstanceId](self, "serviceInstanceId"), v9 = objc_claimAutoreleasedReturnValue(), -[HAPBLEServiceCache serviceInstanceId](v5, "serviceInstanceId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        serviceInstanceOrder = [(HAPBLEServiceCache *)self serviceInstanceOrder];
        v13 = serviceInstanceOrder == [(HAPBLEServiceCache *)v5 serviceInstanceOrder];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (HAPBLEServiceCache)initWithServiceUUID:(id)d instanceId:(id)id instanceOrder:(unint64_t)order serviceProperties:(unint64_t)properties linkedServices:(id)services
{
  dCopy = d;
  idCopy = id;
  servicesCopy = services;
  v21.receiver = self;
  v21.super_class = HAPBLEServiceCache;
  v16 = [(HAPBLEServiceCache *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_serviceUUID, d);
    objc_storeStrong(&v17->_serviceInstanceId, id);
    v17->_serviceInstanceOrder = order;
    v17->_serviceProperties = properties;
    objc_storeStrong(&v17->_linkedServices, services);
    array = [MEMORY[0x277CBEB18] array];
    cachedCharacteristics = v17->_cachedCharacteristics;
    v17->_cachedCharacteristics = array;
  }

  return v17;
}

@end