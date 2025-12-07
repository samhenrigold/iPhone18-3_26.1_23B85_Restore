@interface NSDictionary(HMDCharacteristicResponse)
- (id)hmd_responseByRemovingEntriesForCharacteristics:()HMDCharacteristicResponse;
- (id)hmd_valueOfCharacteristic:()HMDCharacteristicResponse error:;
- (uint64_t)hmd_isValidResponseForWriteRequest:()HMDCharacteristicResponse naturalLightingEnabled:error:;
@end

@implementation NSDictionary(HMDCharacteristicResponse)

- (id)hmd_responseByRemovingEntriesForCharacteristics:()HMDCharacteristicResponse
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = [self mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v31 = *v34;
    selfCopy = self;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        service = [v6 service];
        instanceID = [service instanceID];
        stringValue = [instanceID stringValue];

        accessory = [service accessory];
        uuid = [accessory uuid];
        uUIDString = [uuid UUIDString];

        instanceID2 = [v6 instanceID];
        stringValue2 = [instanceID2 stringValue];

        v15 = [self hmf_dictionaryForKey:uUIDString];
        v16 = v15;
        if (v15)
        {
          v17 = stringValue;
          v18 = [v15 hmf_dictionaryForKey:stringValue];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 hmf_dictionaryForKey:stringValue2];
            if (v20)
            {
              v29 = v20;
              v21 = [v19 mutableCopy];
              [v21 setObject:0 forKeyedSubscript:stringValue2];
              v22 = [v16 mutableCopy];
              if ([v21 count])
              {
                v23 = objc_msgSend_copy(v21);
                [v22 setObject:v23 forKeyedSubscript:v17];
              }

              else
              {
                [v22 setObject:0 forKeyedSubscript:v17];
              }

              if ([v22 count])
              {
                v24 = objc_msgSend_copy(v22);
                [v28 setObject:v24 forKeyedSubscript:uUIDString];
              }

              else
              {
                [v28 removeObjectForKey:uUIDString];
              }

              self = selfCopy;

              v20 = v29;
            }
          }

          stringValue = v17;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  v25 = objc_msgSend_copy(v28);

  return v25;
}

- (id)hmd_valueOfCharacteristic:()HMDCharacteristicResponse error:
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  service = [v6 service];
  instanceID = [service instanceID];
  accessory = [service accessory];
  uuid = [accessory uuid];

  instanceID2 = [v6 instanceID];
  uUIDString = [uuid UUIDString];
  v13 = [self hmf_dictionaryForKey:uUIDString];

  if (v13)
  {
    stringValue = [instanceID stringValue];
    v15 = [v13 hmf_dictionaryForKey:stringValue];

    if (v15)
    {
      v43 = instanceID2;
      stringValue2 = [instanceID2 stringValue];
      v17 = [v15 hmf_dictionaryForKey:stringValue2];

      if (v17)
      {
        v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
        v19 = [v17 hmf_dataForKey:*MEMORY[0x277CD2128]];
        v20 = v19;
        if (a4 && !v18)
        {
          v39 = instanceID;
          v41 = v19;
          v21 = MEMORY[0x277CCAAC8];
          v22 = objc_opt_class();
          v45 = 0;
          v23 = v21;
          v20 = v41;
          v24 = [v23 unarchivedObjectOfClass:v22 fromData:v41 error:&v45];
          v40 = v45;
          if (v24)
          {
            v25 = v24;
            *a4 = v24;
          }

          else
          {
            *a4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
            context = objc_autoreleasePoolPush();
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543874;
              v47 = v36;
              v48 = 2112;
              v49 = v41;
              v50 = 2112;
              v51 = v40;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode error from data %@:%@", buf, 0x20u);

              v20 = v41;
            }

            objc_autoreleasePoolPop(context);
          }

          instanceID = v39;
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v34 = v42 = v32;
          *buf = 138544130;
          v47 = v34;
          v48 = 2112;
          v49 = v43;
          v50 = 2112;
          v51 = instanceID;
          v52 = 2112;
          v53 = uuid;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Missing entry for characteristic with iid of service with iid of accessory with uuid %@:%@:%@", buf, 0x2Au);

          v32 = v42;
        }

        objc_autoreleasePoolPop(v32);
        if (a4)
        {
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
          *a4 = v18 = 0;
        }

        else
        {
          v18 = 0;
        }
      }

      instanceID2 = v43;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v31 = v44 = instanceID2;
        *buf = 138543874;
        v47 = v31;
        v48 = 2112;
        v49 = instanceID;
        v50 = 2112;
        v51 = uuid;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Missing entry for service with iid of accessory with uuid %@:%@", buf, 0x20u);

        instanceID2 = v44;
      }

      objc_autoreleasePoolPop(v29);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        *a4 = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v28;
      v48 = 2112;
      v49 = uuid;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Missing entry for accessory with uuid in write response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      *a4 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (uint64_t)hmd_isValidResponseForWriteRequest:()HMDCharacteristicResponse naturalLightingEnabled:error:
{
  v6 = a4;
  v67[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v67[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
    *buf = 138543874;
    v60 = v11;
    v61 = 2112;
    v62 = v12;
    v63 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Natural Lighting] Received response for requests %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  characteristic = [v8 characteristic];
  v58 = 0;
  v14 = [self hmd_valueOfCharacteristic:characteristic error:&v58];
  v15 = v58;

  if (v14)
  {
    v16 = v14;
    objc_opt_class();
    v17 = objc_opt_isKindOfClass() & 1;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v17)
    {
      v56 = v19;
      value = [v8 value];
      v21 = [v16 isEqual:value];

      v22 = objc_autoreleasePoolPush();
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v60 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Natural Lighting] Calling completion by ignoring the write response", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = 1;
        v27 = v15;
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v37 = HMFGetLogIdentifier();
          hmf_hexadecimalRepresentation = [v16 hmf_hexadecimalRepresentation];
          *buf = 138543618;
          v60 = v37;
          v61 = 2112;
          v62 = hmf_hexadecimalRepresentation;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@[Natural Lighting] Decoding value transition control response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v57 = v15;
        v39 = [MEMORY[0x277CFEAC0] parsedFromData:v16 error:&v57];
        v27 = v57;

        v40 = objc_autoreleasePoolPush();
        v41 = HMFGetOSLogHandle();
        v42 = v41;
        if (v39)
        {
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v43 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v43;
            v61 = 2112;
            v62 = v39;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@[Natural Lighting] Transition control response is: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
          characteristic2 = [v8 characteristic];
          service = [characteristic2 service];
          v46 = [service findCharacteristicWithType:*MEMORY[0x277CCF7D8]];

          v47 = [v39 isNaturalLightingEnabledForCharacteristic:v46] ^ v6;
          if (v47 == 1)
          {
            context = objc_autoreleasePoolPush();
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v54 = HMFGetLogIdentifier();
              v49 = HMFBooleanToString();
              v50 = HMFBooleanToString();
              *buf = 138543874;
              v60 = v54;
              v61 = 2112;
              v62 = v49;
              v63 = 2112;
              selfCopy = v50;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Write response indicates Natural Lighting was enabled: %@ expected: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            *a5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          }

          v26 = v47 ^ 1u;
        }

        else
        {
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543874;
            v60 = v51;
            v61 = 2112;
            v62 = v16;
            v63 = 2112;
            selfCopy = v27;
            _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Failed to parse Transition Control Response %@:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v40);
          if (a5)
          {
            v52 = v27;
            v26 = 0;
            *a5 = v27;
          }

          else
          {
            v26 = 0;
          }
        }
      }

      v19 = v56;
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v34 = v19;
        v36 = objc_opt_class();
        *buf = 138544130;
        v60 = v35;
        v61 = 2112;
        v62 = v8;
        v63 = 2112;
        selfCopy = v16;
        v65 = 2112;
        v66 = v36;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Response value for request %@ is not of expected type %@:%@", buf, 0x2Au);

        v19 = v34;
      }

      objc_autoreleasePoolPop(v32);
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        *a5 = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      v27 = v15;
    }

    v15 = v27;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v60 = v30;
      v61 = 2112;
      v62 = v8;
      v63 = 2112;
      selfCopy = v15;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Natural Lighting] Failed to parse response for request %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    if (a5)
    {
      v31 = v15;
      v26 = 0;
      *a5 = v15;
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

@end