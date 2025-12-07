@interface HMMTRHAPEnumerator
+ (id)logCategory;
- (HMMTRHAPEnumerator)initWithClusterIDCharacteristicMap:(id)map;
- (id)_createBridgedHAPAccessoryWithServer:(id)server services:(id)services instanceId:(id)id endpointID:(id)d;
- (id)_serviceLabelIndexMapForDescriptions:(id)descriptions;
- (id)enumerateBridgedAccessoriesFromAccessories:(id)accessories serviceDescriptionsDictionary:(id)dictionary namesDictionary:(id)namesDictionary topology:(id)topology server:(id)server legacyInstanceIDAssignment:(BOOL)assignment;
- (id)enumerateServicesFromServices:(id)services serviceDescriptionsDictionary:(id)dictionary topology:(id)topology nodeID:(id)d primaryAccessory:(id)accessory legacyInstanceIDAssignment:(BOOL)assignment;
- (void)_createHAPServicesFromServiceDescriptions:(id)descriptions topology:(id)topology nodeID:(id)d accessoryEndpointID:(id)iD services:(id)services startingServiceInstanceID:(int64_t *)instanceID primaryAccessory:(id)accessory standaloneServiceLabelIndexMap:(id)self0;
@end

@implementation HMMTRHAPEnumerator

- (id)_createBridgedHAPAccessoryWithServer:(id)server services:(id)services instanceId:(id)id endpointID:(id)d
{
  serverCopy = server;
  v9 = MEMORY[0x277CFE9F8];
  idCopy = id;
  servicesCopy = services;
  v12 = [[v9 alloc] initWithServer:serverCopy instanceID:idCopy parsedServices:servicesCopy];

  if (v12)
  {
    nodeID = [serverCopy nodeID];
    v14 = [HMMTRUtilities identifierStringWithCHIPNodeID:nodeID];
    [v12 setIdentifier:v14];

    primaryAccessory = [serverCopy primaryAccessory];
    serverIdentifier = [primaryAccessory serverIdentifier];
    [v12 setServerIdentifier:serverIdentifier];

    [v12 setPrimary:0];
  }

  return v12;
}

- (void)_createHAPServicesFromServiceDescriptions:(id)descriptions topology:(id)topology nodeID:(id)d accessoryEndpointID:(id)iD services:(id)services startingServiceInstanceID:(int64_t *)instanceID primaryAccessory:(id)accessory standaloneServiceLabelIndexMap:(id)self0
{
  v121 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  topologyCopy = topology;
  dCopy = d;
  iDCopy = iD;
  servicesCopy = services;
  accessoryCopy = accessory;
  mapCopy = map;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v19 = descriptionsCopy;
  v20 = [v19 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v107;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v107 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v106 + 1) + 8 * i);
        linkedServiceTypes = [v24 linkedServiceTypes];
        if ([linkedServiceTypes count])
        {
          v26 = v17;
        }

        else
        {
          v26 = v87;
        }

        [v26 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v106 objects:v120 count:16];
    }

    while (v21);
  }

  v83 = mapCopy;
  v85 = accessoryCopy;
  v78 = v19;

  v27 = [MEMORY[0x277CBEB18] arrayWithArray:v87];
  v77 = v17;
  [v27 addObjectsFromArray:v17];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v27;
  v89 = [obj countByEnumeratingWithState:&v102 objects:v119 count:16];
  if (v89)
  {
    v90 = 0;
    v86 = *v103;
    v80 = 1;
    while (1)
    {
      for (j = 0; j != v89; ++j)
      {
        if (*v103 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v102 + 1) + 8 * j);
        array = [MEMORY[0x277CBEB18] array];
        serviceType = [v29 serviceType];
        linkedServiceTypes2 = [v29 linkedServiceTypes];
        endpoint = [v29 endpoint];
        v33 = MEMORY[0x277CBEB18];
        requiredCharacteristics = [v29 requiredCharacteristics];
        v35 = [v33 arrayWithArray:requiredCharacteristics];

        optionalCharacteristics = [v29 optionalCharacteristics];
        [v35 addObjectsFromArray:optionalCharacteristics];

        [v95 setObject:MEMORY[0x277CBEBF8] forKey:serviceType];
        v96 = v35;
        if ([v35 count])
        {
          v92 = linkedServiceTypes2;
          if ([v29 optionalServiceLabelIndexIncluded])
          {
            if (v83)
            {
              endpoint2 = [v29 endpoint];
              stringValue = [endpoint2 stringValue];
              v94 = [v83 valueForKey:stringValue];
            }

            else
            {
              v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
              ++v80;
            }

            v44 = objc_autoreleasePoolPush();
            selfCopy = self;
            v46 = HMFGetOSLogHandle();
            v43 = v90;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              endpoint3 = [v29 endpoint];
              *buf = 138544130;
              v112 = v47;
              v113 = 2112;
              v114 = v94;
              v115 = 2112;
              v116 = endpoint3;
              v117 = 2112;
              v118 = dCopy;
              _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_INFO, "%{public}@Service label index enumerated to %@ for endpoint %@ of node %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v44);
            linkedServiceTypes2 = v92;
            if (!v90)
            {
LABEL_29:
              if (v83 || v80 >= 2)
              {
                v49 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v51 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  v52 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v112 = v52;
                  v113 = 2112;
                  v114 = iDCopy;
                  v115 = 2112;
                  v116 = dCopy;
                  _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@Constructed Service Label service at endpoint %@ of node %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v49);
                v53 = [HMMTRAccessoryServerFactory createHMMTRHAPServiceLabelServiceWithEndpointID:iDCopy nodeID:dCopy];
                v43 = v53;
                if (v85)
                {
                  [v53 setAccessory:?];
                }

                [servicesCopy addObject:v43];
                if (v43)
                {
                  goto LABEL_36;
                }
              }

              v90 = 0;
LABEL_38:
              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v55 = linkedServiceTypes2;
              v56 = [v55 countByEnumeratingWithState:&v98 objects:v110 count:16];
              if (v56)
              {
                v57 = v56;
                v58 = *v99;
                do
                {
                  for (k = 0; k != v57; ++k)
                  {
                    if (*v99 != v58)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = [v18 objectForKey:*(*(&v98 + 1) + 8 * k)];
                    if (v60)
                    {
                      [array addObject:v60];
                    }
                  }

                  v57 = [v55 countByEnumeratingWithState:&v98 objects:v110 count:16];
                }

                while (v57);
              }

              v61 = [MEMORY[0x277CBEA60] arrayWithArray:array];
              [v95 setValue:v61 forKey:serviceType];

              v62 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v65 = HMFGetLogIdentifier();
                *buf = 138543874;
                v112 = v65;
                v113 = 2112;
                v114 = v96;
                v115 = 2112;
                v116 = dCopy;
                _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_INFO, "%{public}@Will construct service with characteristics %@ for nodeID %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v62);
              if (instanceID)
              {
                v66 = [MEMORY[0x277CCABB0] numberWithInteger:*instanceID];
              }

              else
              {
                v66 = 0;
              }

              clusterIDCharacteristicMap = [(HMMTRHAPEnumerator *)selfCopy3 clusterIDCharacteristicMap];
              v68 = [v95 objectForKey:serviceType];
              v69 = [HMMTRAccessoryServerFactory createHMMTRHAPServiceCommon:serviceType characteristics:v96 serviceLabelIndex:v94 serviceInstanceID:v66 endpointID:endpoint nodeID:dCopy topology:topologyCopy clusterIDCharacteristicMap:clusterIDCharacteristicMap linkedServices:v68];

              if (v85)
              {
                [v69 setAccessory:?];
              }

              v70 = objc_autoreleasePoolPush();
              v71 = selfCopy3;
              v72 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                v73 = HMFGetLogIdentifier();
                *buf = 138544130;
                v112 = v73;
                v113 = 2112;
                v114 = v69;
                v115 = 2112;
                v116 = endpoint;
                v117 = 2112;
                v118 = dCopy;
                _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_INFO, "%{public}@Constructed new service to add %@ at endpoint %@ of node %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v70);
              if (v69)
              {
                if (instanceID)
                {
                  v74 = *instanceID;
                  characteristics = [v69 characteristics];
                  *instanceID = +[HMMTRUtilities nextServiceInstanceID:previousCharacteristicsCount:](HMMTRUtilities, "nextServiceInstanceID:previousCharacteristicsCount:", v74, [characteristics count]);
                }

                [servicesCopy addObject:v69];
                instanceID = [v69 instanceID];
                [v18 setObject:instanceID forKey:serviceType];
              }

              linkedServiceTypes2 = v92;
              goto LABEL_61;
            }
          }

          else
          {
            v94 = 0;
            v43 = v90;
            if (!v90)
            {
              goto LABEL_29;
            }
          }

LABEL_36:
          v90 = v43;
          instanceID2 = [v43 instanceID];
          [array addObject:instanceID2];

          goto LABEL_38;
        }

        v39 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v112 = v42;
          v113 = 2112;
          v114 = serviceType;
          v115 = 2112;
          v116 = endpoint;
          _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Not constructing new service of type %@ as there are no supported characteristics at endpoint %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
LABEL_61:
      }

      v89 = [obj countByEnumeratingWithState:&v102 objects:v119 count:16];
      if (!v89)
      {
        goto LABEL_65;
      }
    }
  }

  v90 = 0;
LABEL_65:
}

- (id)enumerateBridgedAccessoriesFromAccessories:(id)accessories serviceDescriptionsDictionary:(id)dictionary namesDictionary:(id)namesDictionary topology:(id)topology server:(id)server legacyInstanceIDAssignment:(BOOL)assignment
{
  assignmentCopy = assignment;
  v73 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  dictionaryCopy = dictionary;
  namesDictionaryCopy = namesDictionary;
  topologyCopy = topology;
  serverCopy = server;
  v45 = accessoriesCopy;
  v48 = [MEMORY[0x277CBEB18] arrayWithArray:accessoriesCopy];
  v65 = 20;
  v51 = assignmentCopy;
  v16 = &v65;
  v61 = 0u;
  v62 = 0u;
  if (!assignmentCopy)
  {
    v16 = 0;
  }

  v50 = v16;
  v63 = 0uLL;
  v64 = 0uLL;
  v54 = dictionaryCopy;
  obj = [dictionaryCopy allKeys];
  v55 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v55)
  {
    v49 = *v62;
    v17 = 0x277CCA000uLL;
    v57 = serverCopy;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v62 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v61 + 1) + 8 * i);
        v60 = [v54 objectForKey:v19];
        v20 = objc_opt_new();
        v21 = [namesDictionaryCopy objectForKey:v19];
        v22 = v21;
        if (!v21 || [v21 isEqual:&stru_283ED2308])
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", @"Matter Accessory", v19];

          v22 = v23;
        }

        v24 = [HMMTRUtilities sanitizeHAPName:v22];

        v56 = v19;
        v25 = [*(v17 + 2992) numberWithInteger:{objc_msgSend(v19, "integerValue")}];
        v26 = v65;
        nodeID = [serverCopy nodeID];
        LOBYTE(v44) = v51;
        v58 = v24;
        v28 = [HMMTRAccessoryServerFactory createInfoService:v24 model:@"Unknown" manufacturer:@"Unknown" serialNumber:@"Unknown" instanceID:v26 endpointID:v25 nodeID:nodeID legacyInstanceIDAssignment:v44];

        [v20 addObject:v28];
        v29 = v65;
        characteristics = [v28 characteristics];
        v65 = +[HMMTRUtilities nextServiceInstanceID:previousCharacteristicsCount:](HMMTRUtilities, "nextServiceInstanceID:previousCharacteristicsCount:", v29, [characteristics count]);

        serverCopy = v57;
        nodeID2 = [v57 nodeID];
        [(HMMTRHAPEnumerator *)self _createHAPServicesFromServiceDescriptions:v60 topology:topologyCopy nodeID:nodeID2 accessoryEndpointID:v25 services:v20 startingServiceInstanceID:v50 primaryAccessory:0 standaloneServiceLabelIndexMap:0];

        v32 = +[HMMTRProtocolMap protocolMap];
        v33 = [v32 primaryHAPServiceAmongServices:v20];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = v34;

        [v35 setPrimary];
        if (v51)
        {
          v36 = [MEMORY[0x277CCABB0] numberWithInteger:v65];
        }

        else
        {
          nodeID3 = [v57 nodeID];
          v36 = [HMMTRAccessoryServerFactory instanceIDForCharacteristicType:0 serviceType:0 endpointID:v25 nodeID:nodeID3];
        }

        v38 = [(HMMTRHAPEnumerator *)self _createBridgedHAPAccessoryWithServer:v57 services:v20 instanceId:v36 endpointID:v25];
        if (v38)
        {
          [v48 addObject:v38];
          v39 = objc_autoreleasePoolPush();
          selfCopy = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v42 = v47 = v39;
            *buf = 138543874;
            v67 = v42;
            v68 = 2112;
            v69 = v56;
            v70 = 2112;
            v71 = v38;
            _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Constructed at endpoint %@ a bridged accessory %@", buf, 0x20u);

            v39 = v47;
          }

          objc_autoreleasePoolPop(v39);
          serverCopy = v57;
        }

        v17 = 0x277CCA000;
      }

      v55 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v55);
  }

  return v48;
}

- (id)enumerateServicesFromServices:(id)services serviceDescriptionsDictionary:(id)dictionary topology:(id)topology nodeID:(id)d primaryAccessory:(id)accessory legacyInstanceIDAssignment:(BOOL)assignment
{
  assignmentCopy = assignment;
  v76 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  dictionaryCopy = dictionary;
  topologyCopy = topology;
  dCopy = d;
  accessoryCopy = accessory;
  v65 = 20;
  if (assignmentCopy)
  {
    v16 = &v65;
  }

  else
  {
    v16 = 0;
  }

  v55 = objc_opt_new();
  v53 = [(HMMTRHAPEnumerator *)self _serviceLabelIndexMapForDescriptions:dictionaryCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v69 = v20;
    v70 = 2112;
    v71 = accessoryCopy;
    v72 = 2112;
    v73 = dCopy;
    v74 = 2112;
    v75 = v53;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Computed service label index map for non-bridged accessory %@ of node %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v50 = dictionaryCopy;
  allValues = [dictionaryCopy allValues];
  v22 = [allValues countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v62;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v62 != v24)
        {
          objc_enumerationMutation(allValues);
        }

        [(HMMTRHAPEnumerator *)selfCopy _createHAPServicesFromServiceDescriptions:*(*(&v61 + 1) + 8 * i) topology:topologyCopy nodeID:dCopy accessoryEndpointID:&unk_283EE7BA8 services:v55 startingServiceInstanceID:v16 primaryAccessory:accessoryCopy standaloneServiceLabelIndexMap:v53];
      }

      v23 = [allValues countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v23);
  }

  v26 = v55;
  if ([v55 count])
  {
    v27 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v49 = servicesCopy;
    v28 = servicesCopy;
    v29 = [v28 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v58;
      do
      {
        v32 = 0;
        v51 = v30;
        do
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v57 + 1) + 8 * v32);
          instanceID = [v33 instanceID];
          unsignedLongLongValue = [instanceID unsignedLongLongValue];

          if (unsignedLongLongValue > 0x13)
          {
            v36 = objc_autoreleasePoolPush();
            v37 = selfCopy;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v39 = v31;
              v40 = selfCopy;
              v41 = v28;
              v43 = v42 = v27;
              *buf = 138543874;
              v69 = v43;
              v70 = 2112;
              v71 = v33;
              v72 = 2112;
              v73 = dCopy;
              _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Dropping existing service %@ of node %@ to replace", buf, 0x20u);

              v27 = v42;
              v28 = v41;
              selfCopy = v40;
              v31 = v39;
              v30 = v51;
            }

            objc_autoreleasePoolPop(v36);
          }

          else
          {
            [v27 addObject:v33];
          }

          ++v32;
        }

        while (v30 != v32);
        v30 = [v28 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v30);
    }

    v26 = v55;
    [v27 addObjectsFromArray:v55];
    servicesCopy = v49;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v69 = v47;
      v70 = 2112;
      v71 = dCopy;
      _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not construct any of the services of node %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v27 = 0;
  }

  return v27;
}

- (id)_serviceLabelIndexMapForDescriptions:(id)descriptions
{
  v34 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allKeys = [descriptionsCopy allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_489];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    v7 = 1;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v8;
        v9 = [descriptionsCopy objectForKey:*(*(&v28 + 1) + 8 * v8)];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              if ([v14 optionalServiceLabelIndexIncluded])
              {
                v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
                endpoint = [v14 endpoint];
                stringValue = [endpoint stringValue];
                [v4 setValue:v15 forKey:stringValue];

                ++v7;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }

        v8 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  if ([v4 count])
  {
    v18 = v4;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __59__HMMTRHAPEnumerator__serviceLabelIndexMapForDescriptions___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (HMMTRHAPEnumerator)initWithClusterIDCharacteristicMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = HMMTRHAPEnumerator;
  v6 = [(HMMTRHAPEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clusterIDCharacteristicMap, map);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10, &__block_literal_global_62);
  }

  v3 = logCategory__hmf_once_v11;

  return v3;
}

uint64_t __33__HMMTRHAPEnumerator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11;
  logCategory__hmf_once_v11 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end