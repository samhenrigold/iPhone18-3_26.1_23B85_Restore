@interface HMDCharacteristicResponseNotificationContext
+ (id)notificationUpdateMessagePayloadForHome:(id)home notificationEnabled:(BOOL)enabled characteristics:(id)characteristics characteristicsErrorsMap:(id)map;
+ (id)responsePayloadForHome:(id)home changedAccessories:(id)accessories moreMessagesInMultipart:(id)multipart;
+ (id)updateMultipleCharacteristicReadWriteResponsePayload:(id)payload withUnhandledRequests:(id)requests;
- (HMDCharacteristicResponseNotificationContext)initWithRequestIdentifier:(id)identifier responses:(id)responses pendingMultiPartResponses:(BOOL)partResponses;
- (id)attributeDescriptions;
- (id)notificationWithHome:(id)home;
@end

@implementation HMDCharacteristicResponseNotificationContext

- (id)attributeDescriptions
{
  v20[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  requestIdentifier = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];
  v4 = [v3 initWithName:@"Request Identifier" value:requestIdentifier];
  v20[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicResponseNotificationContext *)self hasPendingMultiPartResponses];
  v6 = HMFBooleanToString();
  v7 = [v5 initWithName:@"Has Pending Multi Part Responses" value:v6];
  v20[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  changedCharacteristics = [(HMDCharacteristicResponseNotificationContext *)self changedCharacteristics];
  v10 = [v8 initWithName:@"Changed Characteristics" value:changedCharacteristics];
  v20[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  previouslyNilChangedCharacteristics = [(HMDCharacteristicResponseNotificationContext *)self previouslyNilChangedCharacteristics];
  v13 = [v11 initWithName:@"Previously Nil Changed Characteristics" value:previouslyNilChangedCharacteristics];
  v20[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  notificationPayloadByAccessoryUUID = [(HMDCharacteristicResponseNotificationContext *)self notificationPayloadByAccessoryUUID];
  v16 = [v14 initWithName:@"Notification Payload" value:notificationPayloadByAccessoryUUID];
  v20[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  return v17;
}

- (id)notificationWithHome:(id)home
{
  homeCopy = home;
  requestIdentifier = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];

  if (requestIdentifier)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notificationPayloadByAccessoryUUID = [(HMDCharacteristicResponseNotificationContext *)self notificationPayloadByAccessoryUUID];
    [v6 setObject:notificationPayloadByAccessoryUUID forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];

    requestIdentifier2 = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];
    [v6 setObject:requestIdentifier2 forKeyedSubscript:@"kModifiedCharacteristicsMessageIdentifierKey"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicResponseNotificationContext hasPendingMultiPartResponses](self, "hasPendingMultiPartResponses")}];
    [v6 setObject:v9 forKeyedSubscript:@"kMultiPartResponseKey"];

    v10 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:homeCopy userInfo:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDCharacteristicResponseNotificationContext)initWithRequestIdentifier:(id)identifier responses:(id)responses pendingMultiPartResponses:(BOOL)partResponses
{
  v129 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  responsesCopy = responses;
  v117.receiver = self;
  v117.super_class = HMDCharacteristicResponseNotificationContext;
  v10 = [(HMDCharacteristicResponseNotificationContext *)&v117 init];
  if (v10)
  {
    v90 = identifierCopy;
    v11 = objc_msgSend_copy(identifierCopy);
    requestIdentifier = v10->_requestIdentifier;
    v10->_requestIdentifier = v11;

    v98 = v10;
    v10->_pendingMultiPartResponses = partResponses;
    v106 = [MEMORY[0x277CBEB58] set];
    v97 = [MEMORY[0x277CBEB58] set];
    v91 = [MEMORY[0x277CBEB58] set];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v89 = responsesCopy;
    obj = responsesCopy;
    v14 = [obj countByEnumeratingWithState:&v113 objects:v128 count:16];
    if (!v14)
    {
      goto LABEL_67;
    }

    v15 = v14;
    v16 = *v114;
    v92 = *MEMORY[0x277CCFD28];
    v99 = *MEMORY[0x277CD2128];
    v95 = *MEMORY[0x277CD21E0];
    v96 = *MEMORY[0x277CD21B8];
    v94 = *MEMORY[0x277CD2150];
    v93 = *MEMORY[0x277CD21D0];
    v104 = dictionary;
    v105 = *v114;
    while (1)
    {
      v17 = 0;
      v107 = v15;
      do
      {
        if (*v114 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v113 + 1) + 8 * v17);
        request = [v18 request];
        characteristic = [request characteristic];

        service = [characteristic service];
        accessory = [service accessory];
        v23 = accessory;
        if (characteristic)
        {
          v24 = service == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24 && accessory != 0)
        {
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          dictionary2 = [dictionary hmf_mutableDictionaryForKey:uUIDString];
          if (!dictionary2)
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
            [dictionary setObject:dictionary2 forKeyedSubscript:uUIDString];
          }

          v109 = uUIDString;
          instanceID = [service instanceID];
          stringValue = [instanceID stringValue];
          v31 = [dictionary2 hmf_mutableDictionaryForKey:stringValue];

          v111 = v31;
          if (!v31)
          {
            dictionary3 = [MEMORY[0x277CBEB38] dictionary];
            instanceID2 = [service instanceID];
            stringValue2 = [instanceID2 stringValue];
            v111 = dictionary3;
            [dictionary2 setObject:dictionary3 forKeyedSubscript:stringValue2];
          }

          [v106 addObject:characteristic];
          error = [v18 error];
          v110 = v23;
          if (error || ([v18 value], v42 = objc_claimAutoreleasedReturnValue(), v42, !v42) && (objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", v92, 4, 0), (error = objc_claimAutoreleasedReturnValue()) != 0))
          {
            value = error;
            v37 = dictionary2;
            v112 = 0;
            v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:error requiringSecureCoding:1 error:&v112];
            previousValue = v112;
            if (v38)
            {
              v126 = v99;
              v127 = v38;
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
              v41 = [v40 mutableCopy];
            }

            else
            {
              contexta = objc_autoreleasePoolPush();
              v52 = v98;
              v53 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v54 = HMFGetLogIdentifier();
                *buf = 138543874;
                v121 = v54;
                v122 = 2112;
                v123 = value;
                v124 = 2112;
                v125 = previousValue;
                _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize error %@: %@", buf, 0x20u);

                dictionary = v104;
              }

              objc_autoreleasePoolPop(contexta);
              v41 = 0;
            }

            v55 = v37;
          }

          else
          {
            value = [v18 value];
            request2 = [v18 request];
            v44 = [request2 isMemberOfClass:objc_opt_class()];

            if (v44)
            {
              v45 = dictionary2;
              lastKnownValue = [characteristic lastKnownValue];
              lastKnownValueUpdateTime = [characteristic lastKnownValueUpdateTime];
              valueUpdatedTime = [v18 valueUpdatedTime];
              v49 = [lastKnownValueUpdateTime compare:valueUpdatedTime] != 1 || lastKnownValue == 0;
              v50 = !v49;
              context = v50;
              if (v49)
              {
              }

              else
              {
                v51 = [lastKnownValue isEqual:value];

                if (v51)
                {
                  context = 0;
                  dictionary = v104;
                  goto LABEL_45;
                }

                v56 = objc_autoreleasePoolPush();
                v57 = v98;
                v58 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v59 = v100 = v56;
                  *buf = 138543874;
                  v121 = v59;
                  v122 = 2112;
                  v123 = v18;
                  v124 = 2112;
                  v125 = lastKnownValue;
                  _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating notification context response to last known characteristic value %@ -> %@", buf, 0x20u);

                  v56 = v100;
                }

                objc_autoreleasePoolPop(v56);
                lastKnownValueUpdateTime = value;
                value = lastKnownValue;
              }

              dictionary = v104;

LABEL_45:
              dictionary2 = v45;

              if (!value)
              {
LABEL_46:
                value = [MEMORY[0x277CBEB68] null];
              }
            }

            else
            {
              context = 0;
              dictionary = v104;
              if (!value)
              {
                goto LABEL_46;
              }
            }

            v101 = dictionary2;
            v118 = v96;
            v119 = value;
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
            v41 = [v60 mutableCopy];

            lastKnownValueUpdateTime2 = [characteristic lastKnownValueUpdateTime];
            [v41 setObject:lastKnownValueUpdateTime2 forKeyedSubscript:v95];

            notificationContext = [characteristic notificationContext];
            [v41 setObject:notificationContext forKeyedSubscript:v94];

            stateNumber = [v18 stateNumber];
            if (stateNumber)
            {
              v64 = stateNumber;
              stateNumber2 = [v18 stateNumber];
              stateNumber3 = [characteristic stateNumber];
              v67 = HAPCompareStateNumberWithRollover();

              if (v67 == 1)
              {
                stateNumber4 = [v18 stateNumber];
                [characteristic setStateNumber:stateNumber4];

                v69 = 1;
              }

              else
              {
                v69 = 0;
              }

              dictionary = v104;
            }

            else
            {
              v69 = 0;
            }

            stateNumber5 = [characteristic stateNumber];
            [v41 setObject:stateNumber5 forKeyedSubscript:v93];

            request3 = [v18 request];
            previousValue = [request3 previousValue];

            if (previousValue)
            {
              v72 = context;
            }

            else
            {
              v72 = 1;
            }

            if ((v72 & 1) != 0 || ![HMDCharacteristic value:value differentThan:previousValue])
            {
              v75 = 0;
            }

            else
            {
              previousValue2 = [characteristic previousValue];
              lastKnownValue2 = [characteristic lastKnownValue];
              v75 = [HMDCharacteristic value:previousValue2 differentThan:lastKnownValue2];

              dictionary = v104;
            }

            v76 = v69 | v75;
            v77 = v97;
            v55 = v101;
            if ((v76 & 1) != 0 || !previousValue && (v77 = v91, value))
            {
              [v77 addObject:characteristic];
            }
          }

          instanceID3 = [characteristic instanceID];
          stringValue3 = [instanceID3 stringValue];
          [v111 setObject:v41 forKeyedSubscript:stringValue3];

          v16 = v105;
          v15 = v107;
          v23 = v110;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v113 objects:v128 count:16];
      if (!v15)
      {
LABEL_67:

        v80 = objc_msgSend_copy(v106);
        v10 = v98;
        responseCharacteristics = v98->_responseCharacteristics;
        v98->_responseCharacteristics = v80;

        v82 = objc_msgSend_copy(v97);
        changedCharacteristics = v98->_changedCharacteristics;
        v98->_changedCharacteristics = v82;

        v84 = objc_msgSend_copy(v91);
        previouslyNilChangedCharacteristics = v98->_previouslyNilChangedCharacteristics;
        v98->_previouslyNilChangedCharacteristics = v84;

        v86 = objc_msgSend_copy(dictionary);
        notificationPayloadByAccessoryUUID = v98->_notificationPayloadByAccessoryUUID;
        v98->_notificationPayloadByAccessoryUUID = v86;

        responsesCopy = v89;
        identifierCopy = v90;
        break;
      }
    }
  }

  return v10;
}

+ (id)updateMultipleCharacteristicReadWriteResponsePayload:(id)payload withUnhandledRequests:(id)requests
{
  payloadCopy = payload;
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    v7 = [payloadCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = MEMORY[0x277CCAAB0];
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke;
      v22 = &unk_279733E90;
      v13 = v8;
      v23 = v13;
      v24 = v12;
      v14 = v12;
      [requestsCopy enumerateKeysAndObjectsUsingBlock:&v19];
      v15 = [payloadCopy mutableCopy];
      v16 = objc_msgSend_copy(v13);
      [v15 setObject:v16 forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];

      v17 = objc_msgSend_copy(v15);
      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v17 = payloadCopy;
    }
  }

  else
  {
    v17 = payloadCopy;
  }

  return v17;
}

void __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 hmf_dictionaryForKey:v7];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = v11;

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke_2;
  v18 = &unk_279733E68;
  v19 = v12;
  v20 = *(a1 + 40);
  v13 = v12;
  [v6 enumerateKeysAndObjectsUsingBlock:&v15];

  v14 = objc_msgSend_copy(v13, v15, v16, v17, v18);
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
}

void __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v20 = v5;
  v7 = [*(a1 + 32) hmf_dictionaryForKey:v5];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v13 = *MEMORY[0x277CD2128];
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = *(a1 + 40);
        v25 = v13;
        v26 = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v18 = [v15 stringValue];
        [v8 setObject:v17 forKeyedSubscript:v18];

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = objc_msgSend_copy(v8);
  [*(a1 + 32) setObject:v19 forKeyedSubscript:v20];
}

+ (id)notificationUpdateMessagePayloadForHome:(id)home notificationEnabled:(BOOL)enabled characteristics:(id)characteristics characteristicsErrorsMap:(id)map
{
  enabledCopy = enabled;
  v74 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  characteristicsCopy = characteristics;
  mapCopy = map;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = characteristicsCopy;
  v60 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v60)
  {
    v59 = *v62;
    v54 = *MEMORY[0x277CD2128];
    v52 = *MEMORY[0x277CD2158];
    v51 = *MEMORY[0x277CD2168];
    v55 = dictionary;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        service = [v11 service];
        instanceID = [service instanceID];
        accessory = [service accessory];
        uuid = [accessory uuid];
        uUIDString = [uuid UUIDString];

        if (instanceID)
        {
          v17 = uUIDString == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543874;
            v68 = v21;
            v69 = 2112;
            v70 = service;
            v71 = 2112;
            v72 = v11;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing required service (%@) properties for characteristic %@ - dropping the notification", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
        }

        else
        {
          v22 = MEMORY[0x277CBEB38];
          v23 = [dictionary objectForKeyedSubscript:uUIDString];
          v24 = v23;
          v25 = MEMORY[0x277CBEC10];
          if (v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = MEMORY[0x277CBEC10];
          }

          v27 = [v22 dictionaryWithDictionary:v26];

          v28 = MEMORY[0x277CBEB38];
          v29 = [v27 objectForKeyedSubscript:instanceID];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v25;
          }

          v32 = [v28 dictionaryWithDictionary:v31];

          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          v34 = [mapCopy objectForKey:v11];
          if (v34)
          {
            notificationEnabledTime = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v34 requiringSecureCoding:1 error:0];
            v36 = dictionary2;
            v37 = notificationEnabledTime;
            v38 = v54;
          }

          else
          {
            v39 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
            [dictionary2 setObject:v39 forKeyedSubscript:v52];

            notificationEnabledTime = [v11 notificationEnabledTime];
            v36 = dictionary2;
            v37 = notificationEnabledTime;
            v38 = v51;
          }

          [v36 setObject:v37 forKeyedSubscript:v38];

          v40 = objc_msgSend_copy(dictionary2);
          instanceID2 = [v11 instanceID];
          [v32 setObject:v40 forKeyedSubscript:instanceID2];

          v42 = objc_msgSend_copy(v32);
          [v27 setObject:v42 forKeyedSubscript:instanceID];

          v43 = objc_msgSend_copy(v27);
          [v55 setObject:v43 forKeyedSubscript:uUIDString];

          dictionary = v55;
        }
      }

      v60 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v60);
  }

  if ([dictionary count])
  {
    v65[0] = *MEMORY[0x277CD2490];
    v44 = objc_msgSend_copy(dictionary);
    v66[0] = v44;
    v65[1] = *MEMORY[0x277CD0640];
    v45 = homeCopy;
    uuid2 = [homeCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    v66[1] = uUIDString2;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  }

  else
  {
    v48 = MEMORY[0x277CBEC10];
    v45 = homeCopy;
  }

  return v48;
}

+ (id)responsePayloadForHome:(id)home changedAccessories:(id)accessories moreMessagesInMultipart:(id)multipart
{
  homeCopy = home;
  accessoriesCopy = accessories;
  multipartCopy = multipart;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (accessoriesCopy)
  {
    [dictionary setObject:accessoriesCopy forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];
  }

  if (homeCopy)
  {
    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    [v11 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD0640]];
  }

  if (multipartCopy)
  {
    [v11 setObject:multipartCopy forKeyedSubscript:@"kMultiPartResponseKey"];
  }

  v14 = objc_msgSend_copy(v11);

  return v14;
}

@end