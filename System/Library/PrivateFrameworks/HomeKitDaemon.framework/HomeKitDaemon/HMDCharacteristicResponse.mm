@interface HMDCharacteristicResponse
+ (HMDCharacteristicResponse)responseWithRequest:(id)request characteristicUpdateDictionary:(id)dictionary;
+ (HMDCharacteristicResponse)responseWithRequest:(id)request error:(id)error;
+ (id)characteristicsUpdateDictionaryFromResponses:(id)responses;
+ (id)responsesWithRequests:(id)requests characteristicUpdateDictionary:(id)dictionary;
+ (id)responsesWithRequests:(id)requests error:(id)error;
- (BOOL)isRemote;
- (HMDCharacteristicResponse)initWithRequest:(id)request error:(id)error;
- (NSDictionary)characteristicUpdateDictionary;
- (id)attributeDescriptions;
- (void)setRemote:(BOOL)remote;
- (void)setValue:(id)value updatedTime:(id)time stateNumber:(id)number notificationContext:(id)context;
@end

@implementation HMDCharacteristicResponse

- (id)attributeDescriptions
{
  v48[8] = *MEMORY[0x277D85DE8];
  request = [(HMDCharacteristicResponse *)self request];
  characteristic = [request characteristic];

  accessory = [characteristic accessory];
  service = [characteristic service];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  v47 = accessory;
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v44 = [v8 stringWithFormat:@"(%@/%@)", name, uniqueIdentifier];
  v43 = [v7 initWithName:@"Accessory" value:v44];
  v48[0] = v43;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCACA8];
  v42 = service;
  type = [service type];
  v40 = shortHAPTypeDescription(type);
  instanceID = [service instanceID];
  v37 = [v10 stringWithFormat:@"(%@/%@)", v40, instanceID];
  v36 = [v9 initWithName:@"Service" value:v37];
  v48[1] = v36;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = MEMORY[0x277CCACA8];
  v39 = characteristic;
  type2 = [characteristic type];
  v34 = shortHAPTypeDescription(type2);
  instanceID2 = [characteristic instanceID];
  v32 = [v12 stringWithFormat:@"(%@/%@)", v34, instanceID2];
  v31 = [v11 initWithName:@"Characteristic" value:v32];
  v48[2] = v31;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  request2 = [(HMDCharacteristicResponse *)self request];
  previousValue = [request2 previousValue];
  v14 = [v13 initWithName:@"Previous Value" value:previousValue];
  v48[3] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicResponse *)self value];
  v17 = [v15 initWithName:@"Value" value:value];
  v48[4] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  value2 = [(HMDCharacteristicResponse *)self value];
  v20 = [v18 initWithName:@"Type" value:objc_opt_class()];
  v48[5] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  notificationContext = [(HMDCharacteristicResponse *)self notificationContext];
  v23 = [v21 initWithName:@"Notification Context" value:notificationContext];
  v48[6] = v23;
  v24 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMDCharacteristicResponse *)self error];
  v26 = [v24 initWithName:@"Error" value:error];
  v48[7] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:8];

  return v27;
}

- (void)setRemote:(BOOL)remote
{
  os_unfair_lock_lock_with_options();
  self->_remote = remote;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isRemote
{
  os_unfair_lock_lock_with_options();
  remote = self->_remote;
  os_unfair_lock_unlock(&self->_lock);
  return remote;
}

- (NSDictionary)characteristicUpdateDictionary
{
  request = [(HMDCharacteristicResponse *)self request];
  characteristic = [request characteristic];

  service = [characteristic service];
  accessory = [service accessory];
  v7 = accessory;
  dictionary = MEMORY[0x277CBEC10];
  if (service && accessory)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    uuid = [v7 uuid];
    uUIDString = [uuid UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

    instanceID = [service instanceID];
    [dictionary setObject:instanceID forKeyedSubscript:*MEMORY[0x277CD25F8]];

    instanceID2 = [characteristic instanceID];
    [dictionary setObject:instanceID2 forKeyedSubscript:*MEMORY[0x277CD2140]];

    if ([(HMDCharacteristicResponse *)self isRemote])
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDCharacteristicRequestIsRemoteKey"];
    }

    error = [(HMDCharacteristicResponse *)self error];

    if (error)
    {
      v14 = MEMORY[0x277CCAAB0];
      error2 = [(HMDCharacteristicResponse *)self error];
      v16 = [v14 archivedDataWithRootObject:error2 requiringSecureCoding:1 error:0];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277CD2128]];
    }

    else
    {
      value = [(HMDCharacteristicResponse *)self value];
      [dictionary setObject:value forKeyedSubscript:*MEMORY[0x277CD21B8]];

      valueUpdatedTime = [(HMDCharacteristicResponse *)self valueUpdatedTime];
      if (valueUpdatedTime)
      {
        [dictionary setObject:valueUpdatedTime forKeyedSubscript:*MEMORY[0x277CD21E0]];
      }

      else
      {
        lastKnownValueUpdateTime = [characteristic lastKnownValueUpdateTime];
        [dictionary setObject:lastKnownValueUpdateTime forKeyedSubscript:*MEMORY[0x277CD21E0]];
      }

      stateNumber = [(HMDCharacteristicResponse *)self stateNumber];
      if (stateNumber)
      {
        [dictionary setObject:stateNumber forKeyedSubscript:*MEMORY[0x277CD21D0]];
      }

      else
      {
        stateNumber2 = [characteristic stateNumber];
        [dictionary setObject:stateNumber2 forKeyedSubscript:*MEMORY[0x277CD21D0]];
      }

      notificationContext = [(HMDCharacteristicResponse *)self notificationContext];
      if (notificationContext)
      {
        error2 = notificationContext;
        [dictionary setObject:notificationContext forKeyedSubscript:*MEMORY[0x277CD2150]];
      }

      else
      {
        notificationContext2 = [characteristic notificationContext];
        [dictionary setObject:notificationContext2 forKeyedSubscript:*MEMORY[0x277CD2150]];

        error2 = 0;
      }
    }
  }

  return dictionary;
}

- (void)setValue:(id)value updatedTime:(id)time stateNumber:(id)number notificationContext:(id)context
{
  valueCopy = value;
  timeCopy = time;
  numberCopy = number;
  contextCopy = context;
  error = [(HMDCharacteristicResponse *)self error];

  if (!error)
  {
    objc_storeStrong(&self->_value, value);
    if (timeCopy)
    {
      date = timeCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    valueUpdatedTime = self->_valueUpdatedTime;
    self->_valueUpdatedTime = date;

    if (numberCopy)
    {
      objc_storeStrong(&self->_stateNumber, number);
    }

    objc_storeStrong(&self->_notificationContext, context);
  }
}

- (HMDCharacteristicResponse)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = HMDCharacteristicResponse;
  v9 = [(HMDCharacteristicResponse *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_error, error);
    characteristic = [requestCopy characteristic];
    value = [characteristic value];
    value = v10->_value;
    v10->_value = value;
  }

  return v10;
}

+ (id)characteristicsUpdateDictionaryFromResponses:(id)responses
{
  v42 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = responsesCopy;
  v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v32 = *v38;
    v33 = dictionary;
    do
    {
      v8 = 0;
      v34 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        request = [v9 request];
        characteristic = [request characteristic];

        service = [characteristic service];
        accessory = [characteristic accessory];
        v14 = accessory;
        if (characteristic)
        {
          v15 = service == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && accessory != 0)
        {
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          instanceID = [service instanceID];
          stringValue = [instanceID stringValue];

          instanceID2 = [characteristic instanceID];
          stringValue2 = [instanceID2 stringValue];

          v22 = [dictionary hmf_mutableDictionaryForKey:uUIDString];
          v23 = v22;
          if (v22)
          {
            dictionary2 = v22;
          }

          else
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          }

          v25 = dictionary2;

          [dictionary setObject:v25 forKeyedSubscript:uUIDString];
          v26 = [v25 hmf_mutableDictionaryForKey:stringValue];
          v27 = v26;
          if (v26)
          {
            dictionary3 = v26;
          }

          else
          {
            dictionary3 = [MEMORY[0x277CBEB38] dictionary];
          }

          v29 = dictionary3;

          [v25 setObject:v29 forKeyedSubscript:stringValue];
          characteristicUpdateDictionary = [v9 characteristicUpdateDictionary];
          [v29 setObject:characteristicUpdateDictionary forKeyedSubscript:stringValue2];

          v7 = v32;
          dictionary = v33;
          v6 = v34;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v6);
  }

  return dictionary;
}

+ (id)responsesWithRequests:(id)requests characteristicUpdateDictionary:(id)dictionary
{
  v93[1] = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
  v51 = dictionaryCopy;
  if (!v7)
  {
    v7 = [dictionaryCopy hmf_dictionaryForKey:@"kCharacteristicNotificationsKey"];
    if (!v7)
    {
      if ([requestsCopy count] == 1)
      {
        v8 = [dictionaryCopy hmf_stringForKey:*MEMORY[0x277CCF0B0]];
        v9 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD2140]];
        v10 = HAPInstanceIDFromValue();

        if (v8)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v68 = v10;
          firstObject = [requestsCopy firstObject];
          characteristic = [firstObject characteristic];
          accessory = [characteristic accessory];
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];
          if ([uUIDString isEqualToString:v8])
          {
            characteristic2 = [firstObject characteristic];
            [characteristic2 instanceID];
            v19 = v18 = self;
            v66 = [v19 isEqualToNumber:v68];

            self = v18;
            if (v66)
            {
              v20 = [HMDCharacteristicResponse responseWithRequest:firstObject characteristicUpdateDictionary:dictionaryCopy];
              v93[0] = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];

              array = v68;
              goto LABEL_53;
            }
          }

          else
          {
          }

          v10 = v68;
        }
      }

      v7 = dictionaryCopy;
    }
  }

  v8 = v7;
  array = [MEMORY[0x277CBEB18] array];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = [v8 allKeys];
  v56 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v56)
  {
    v53 = *v81;
    v54 = v8;
    selfCopy = self;
    do
    {
      v23 = 0;
      do
      {
        if (*v81 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v23;
        v24 = *(*(&v80 + 1) + 8 * v23);
        v25 = [v8 objectForKeyedSubscript:v24];
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

        strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __82__HMDCharacteristicResponse_responsesWithRequests_characteristicUpdateDictionary___block_invoke;
        v78[3] = &unk_278689EF8;
        v78[4] = v24;
        v29 = strongToStrongObjectsMapTable;
        v79 = v29;
        [requestsCopy na_each:v78];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v60 = v27;
        allKeys = [v27 allKeys];
        v61 = [allKeys countByEnumeratingWithState:&v74 objects:v91 count:16];
        if (v61)
        {
          v59 = *v75;
          v64 = v29;
          do
          {
            v30 = 0;
            do
            {
              if (*v75 != v59)
              {
                objc_enumerationMutation(allKeys);
              }

              v62 = v30;
              v31 = [v60 objectForKeyedSubscript:*(*(&v74 + 1) + 8 * v30)];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              v33 = v32;

              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v67 = v33;
              allKeys2 = [v33 allKeys];
              v34 = [allKeys2 countByEnumeratingWithState:&v70 objects:v90 count:16];
              if (v34)
              {
                v35 = v34;
                v69 = *v71;
                do
                {
                  for (i = 0; i != v35; ++i)
                  {
                    if (*v71 != v69)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v37 = *(*(&v70 + 1) + 8 * i);
                    v38 = HAPInstanceIDFromValue();
                    v39 = [v29 objectForKey:v38];

                    if (v39)
                    {
                      v40 = [v67 objectForKeyedSubscript:v37];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v41 = v40;
                      }

                      else
                      {
                        v41 = 0;
                      }

                      v42 = v41;

                      if (v42)
                      {
                        v43 = [HMDCharacteristicResponse responseWithRequest:v39 characteristicUpdateDictionary:v42];
                        [array addObject:v43];
                      }

                      else
                      {
                        v44 = array;
                        v45 = objc_autoreleasePoolPush();
                        selfCopy2 = self;
                        v47 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                        {
                          v48 = HMFGetLogIdentifier();
                          v49 = [v67 objectForKeyedSubscript:v37];
                          *buf = 138543874;
                          v85 = v48;
                          v86 = 2112;
                          v87 = v39;
                          v88 = 2112;
                          v89 = v49;
                          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristic update for request: %@. Update Dict: %@", buf, 0x20u);

                          self = selfCopy;
                        }

                        objc_autoreleasePoolPop(v45);
                        array = v44;
                        v29 = v64;
                      }
                    }
                  }

                  v35 = [allKeys2 countByEnumeratingWithState:&v70 objects:v90 count:16];
                }

                while (v35);
              }

              v30 = v62 + 1;
            }

            while (v62 + 1 != v61);
            v61 = [allKeys countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v61);
        }

        v23 = v57 + 1;
        v8 = v54;
      }

      while (v57 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v56);
  }

  v21 = objc_msgSend_copy(array);
  dictionaryCopy = v51;
LABEL_53:

  return v21;
}

void __82__HMDCharacteristicResponse_responsesWithRequests_characteristicUpdateDictionary___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 characteristic];
  v4 = [v3 accessory];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v11 characteristic];
    v10 = [v9 instanceID];
    [v8 setObject:v11 forKey:v10];
  }
}

+ (HMDCharacteristicResponse)responseWithRequest:(id)request characteristicUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = *MEMORY[0x277CD2128];
  requestCopy = request;
  v8 = [dictionaryCopy errorFromDataForKey:v6];
  v9 = [objc_opt_class() responseWithRequest:requestCopy error:v8];

  if (!v8)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
    v11 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD21D0]];
    v12 = [dictionaryCopy hmf_dateForKey:*MEMORY[0x277CD21E0]];
    v13 = [dictionaryCopy hmf_dataForKey:*MEMORY[0x277CD2150]];
    [v9 setValue:v10 updatedTime:v12 stateNumber:v11 notificationContext:v13];
  }

  return v9;
}

+ (id)responsesWithRequests:(id)requests error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  errorCopy = error;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = requestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [HMDCharacteristicResponse responseWithRequest:*(*(&v15 + 1) + 8 * i) error:errorCopy, v15];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (HMDCharacteristicResponse)responseWithRequest:(id)request error:(id)error
{
  errorCopy = error;
  requestCopy = request;
  v8 = [[self alloc] initWithRequest:requestCopy error:errorCopy];

  return v8;
}

@end