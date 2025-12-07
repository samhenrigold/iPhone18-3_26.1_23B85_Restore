@interface HMDNotificationRegistry
+ (id)logCategory;
- (BOOL)hasRegistrationsForActionSetUUID:(id)d;
- (BOOL)removeRegistrationsForActionSetUUID:(id)d;
- (BOOL)removeRegistrationsForMediaProfile:(id)profile;
- (BOOL)setNotificationsEnabled:(BOOL)enabled user:(id)user deviceIdsDestination:(id)destination characteristicsPayload:(id)payload characteristicChangeThresholdsPayload:(id)thresholdsPayload mediaPropertiesPayload:(id)propertiesPayload actionSetsPayload:(id)setsPayload matterNotificationPayload:(id)self0;
- (HMDNotificationRegistry)init;
- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)timer;
- (id)characteristicsByDestinationForCharacteristics:(id)characteristics applyChangeThresholding:(BOOL)thresholding;
- (id)delegates;
- (id)destinationsRegisteredForNotificationsForActionSetResponses:(id)responses;
- (id)destinationsRegisteredForNotificationsForCharacteristics:(id)characteristics applyChangeThresholding:(BOOL)thresholding;
- (id)destinationsRegisteredForNotificationsForProperties:(id)properties;
- (id)filterActionSetResponses:(id)responses deviceIdsDestination:(id)destination;
- (id)filterProperties:(id)properties deviceIdsDestination:(id)destination;
- (id)home;
- (id)logIdentifier;
- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier;
- (id)shortDescription;
- (uint64_t)_processMediaPropertiesRequests:(void *)requests;
- (void)_addPendingRequests:(void *)requests;
- (void)_processCharacteristicsRequests:(void *)requests;
- (void)addDelegate:(id)delegate;
- (void)auditNotificationDestinations:(id)destinations home:(id)home;
- (void)clearAllRegistrations;
- (void)configureWithHome:(id)home;
- (void)configureWithHome:(id)home coreDataAdapter:(id)adapter;
- (void)disableAllRegistrations;
- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(void *)profiles;
- (void)notifyDelegatesOfRegistryUpdatesForActionSets:(void *)sets;
- (void)removeRegistrationsForCharacteristics:(id)characteristics;
- (void)reprocessEnabledCharacteristicRegistrations;
- (void)storeCHIPRemoteSubscriberWithRemoteSourceID:(id)d;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDNotificationRegistry

- (void)timerDidFire:(id)fire
{
  v62 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
    dispatch_assert_queue_V2(Property);
    v8 = objc_getProperty(self, v7, 40, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v8 = 0;
  }

  if (v8 == fireCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Pending requests retry timer fired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (self)
    {
      v14 = objc_getProperty(selfCopy, v13, 64, 1);
      dispatch_assert_queue_V2(v14);
      v16 = objc_getProperty(selfCopy, v15, 48, 1);
      v17 = objc_msgSend_copy(v16);
      [objc_getProperty(selfCopy v18];
      v19 = [v17 count];
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v19)
      {
        v45 = fireCopy;
        if (v23)
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v17 count];
          *buf = 138543618;
          v59 = v24;
          v60 = 2048;
          v61 = v25;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Processing %lu pending request(s)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v47 = [MEMORY[0x277CBEB58] set];
        v46 = [MEMORY[0x277CBEB58] set];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v44 = v17;
        v26 = v17;
        v27 = [v26 countByEnumeratingWithState:&v48 objects:buf count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v49;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v49 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v48 + 1) + 8 * i);
              if ([v31 retryCount] < 5)
              {
                [v31 setRetryCount:{objc_msgSend(v31, "retryCount") + 1}];
                v37 = v31;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v38 = v37;
                }

                else
                {
                  v38 = 0;
                }

                v39 = v38;

                if (v39)
                {
                  [v47 addObject:v39];
                }

                else
                {
                  v40 = v37;
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
                    [v46 addObject:v42];
                  }
                }
              }

              else
              {
                v32 = objc_autoreleasePoolPush();
                v33 = v21;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = HMFGetLogIdentifier();
                  retryCount = [v31 retryCount];
                  *v52 = 138543874;
                  v53 = v35;
                  v54 = 2048;
                  v55 = retryCount;
                  v56 = 2112;
                  v57 = v31;
                  _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Dropping pending request that is still around after %ld retries: %@", v52, 0x20u);
                }

                objc_autoreleasePoolPop(v32);
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v48 objects:buf count:16];
          }

          while (v28);
        }

        [(HMDNotificationRegistry *)v21 _processCharacteristicsRequests:v47];
        [(HMDNotificationRegistry *)v21 _processMediaPropertiesRequests:v46];

        v17 = v44;
        fireCopy = v45;
      }

      else
      {
        if (v23)
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v43;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@No pending requests to process", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }
}

- (void)_processCharacteristicsRequests:(void *)requests
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v65 = v3;
  if (requests)
  {
    v5 = v3;
    Property = objc_getProperty(requests, v4, 64, 1);
    dispatch_assert_queue_V2(Property);
    if ([v5 count])
    {
      requestsCopy = requests;
      v69 = [MEMORY[0x277CBEB58] set];
      v66 = [MEMORY[0x277CBEB58] set];
      v68 = +[HMDHAPMetadata getSharedInstance];
      v82 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      obj = v65;
      v72 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v72)
      {
        v70 = *v80;
        do
        {
          v7 = 0;
          do
          {
            if (*v80 != v70)
            {
              v8 = v7;
              objc_enumerationMutation(obj);
              v7 = v8;
            }

            v73 = v7;
            v9 = *(*(&v79 + 1) + 8 * v7);
            v10 = objc_autoreleasePoolPush();
            self = requestsCopy;
            v11 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v12 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v9;
              _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Processing characteristics request: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v10);
            v13 = v9;
            v15 = objc_getProperty(self, v14, 64, 1);
            dispatch_assert_queue_V2(v15);
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v17 = objc_getProperty(self, v16, 48, 1);
            v75 = objc_msgSend_copy(v17);
            v18 = [v75 countByEnumeratingWithState:&v83 objects:buf count:16];
            if (v18)
            {
              v19 = *v84;
              do
              {
                v20 = 0;
                do
                {
                  if (*v84 != v19)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v21 = *(*(&v83 + 1) + 8 * v20);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = v22;

                  if (v23)
                  {
                    deviceIdsDestination = [v23 deviceIdsDestination];
                    deviceIdsDestination2 = [v13 deviceIdsDestination];
                    if ([deviceIdsDestination isEqualToString:deviceIdsDestination2])
                    {
                      accessoryUUID = [v23 accessoryUUID];
                      accessoryUUID2 = [v13 accessoryUUID];
                      v28 = [accessoryUUID isEqual:accessoryUUID2];

                      if (v28)
                      {
                        characteristicInstanceIDs = [v23 characteristicInstanceIDs];
                        characteristicInstanceIDs2 = [v13 characteristicInstanceIDs];
                        [characteristicInstanceIDs minusSet:characteristicInstanceIDs2];

                        characteristicInstanceIDs3 = [v23 characteristicInstanceIDs];
                        v32 = [characteristicInstanceIDs3 count] == 0;

                        v33 = objc_autoreleasePoolPush();
                        v34 = self;
                        v35 = HMFGetOSLogHandle();
                        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
                        if (v32)
                        {
                          if (v36)
                          {
                            v38 = HMFGetLogIdentifier();
                            *v88 = 138543618;
                            v89 = v38;
                            v90 = 2112;
                            v91 = v23;
                            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Removing pending characteristics request that matches a new characteristics request: %@", v88, 0x16u);
                          }

                          objc_autoreleasePoolPop(v33);
                          [objc_getProperty(v34 v39];
                        }

                        else
                        {
                          if (v36)
                          {
                            v37 = HMFGetLogIdentifier();
                            *v88 = 138543618;
                            v89 = v37;
                            v90 = 2112;
                            v91 = v23;
                            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Updated pending characteristics request: %@", v88, 0x16u);
                          }

                          objc_autoreleasePoolPop(v33);
                        }
                      }
                    }

                    else
                    {
                    }
                  }

                  ++v20;
                }

                while (v18 != v20);
                v40 = [v75 countByEnumeratingWithState:&v83 objects:buf count:16];
                v18 = v40;
              }

              while (v40);
            }

            WeakRetained = objc_loadWeakRetained(self + 7);
            accessoryUUID3 = [v13 accessoryUUID];
            v43 = [WeakRetained accessoryWithUUID:accessoryUUID3];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }

            v45 = v44;

            if (v45)
            {
              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v77[2] = __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke;
              v77[3] = &unk_278675CE8;
              v77[4] = v13;
              v78 = v68;
              v46 = [v45 characteristicsPassingTest:v77];
              v47 = [v46 count];
              characteristicInstanceIDs4 = [v13 characteristicInstanceIDs];
              LOBYTE(v47) = v47 == [characteristicInstanceIDs4 count];

              if (v47)
              {
                v76[0] = MEMORY[0x277D85DD0];
                v76[1] = 3221225472;
                v76[2] = __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke_214;
                v76[3] = &unk_27867EE38;
                v76[4] = v13;
                v49 = [v46 na_map:v76];
                v50 = [[HMDNotificationRegistryCoreDataCharacteristicsRequest alloc] initWithRequest:v13 characteristicThresholds:v49];
                [v66 addObject:v50];
              }

              else
              {
                v55 = objc_autoreleasePoolPush();
                v56 = self;
                v57 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                {
                  v58 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v58;
                  *&buf[12] = 2112;
                  *&buf[14] = v13;
                  _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Cannot find all characteristics for request so adding to pending requests: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v55);
                [v69 addObject:v13];
              }
            }

            else
            {
              v51 = objc_autoreleasePoolPush();
              v52 = self;
              v53 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                v54 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v54;
                *&buf[12] = 2112;
                *&buf[14] = v13;
                _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Cannot find accessory for characteristics request so adding to pending requests: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v51);
              [v69 addObject:v13];
            }

            v7 = v73 + 1;
          }

          while (v73 + 1 != v72);
          v72 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v72);
      }

      v60 = [objc_getProperty(requestsCopy v59];
      v61 = v69;
      v62 = objc_autoreleasePoolPush();
      *&v83 = 0;
      *(&v83 + 1) = &v83;
      *&v84 = 0x2020000000;
      BYTE8(v84) = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __79__HMDNotificationRegistry__processCoreDataRequestResults_pendingRequestsToAdd___block_invoke;
      v93 = &unk_278671C68;
      v94 = requestsCopy;
      v63 = v61;
      v95 = v63;
      v96 = &v83;
      [v60 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
      requests = *(*(&v83 + 1) + 24);

      _Block_object_dispose(&v83, 8);
      objc_autoreleasePoolPop(v62);

      [(HMDNotificationRegistry *)requestsCopy _addPendingRequests:v63];
    }

    else
    {
      requests = 0;
    }
  }

  return requests;
}

- (uint64_t)_processMediaPropertiesRequests:(void *)requests
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v84 = v3;
  if (!requests || (v5 = v3, Property = objc_getProperty(requests, v4, 64, 1), dispatch_assert_queue_V2(Property), ![v5 count]))
  {
    v88 = 0;
    goto LABEL_62;
  }

  requestsCopy = requests;
  v86 = [MEMORY[0x277CBEB58] set];
  v85 = [MEMORY[0x277CBEB58] set];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v84;
  v91 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (!v91)
  {
    v88 = 0;
    goto LABEL_59;
  }

  v88 = 0;
  v89 = *v96;
  do
  {
    v7 = 0;
    do
    {
      if (*v96 != v89)
      {
        v8 = v7;
        objc_enumerationMutation(obj);
        v7 = v8;
      }

      v92 = v7;
      v9 = *(*(&v95 + 1) + 8 * v7);
      v10 = objc_autoreleasePoolPush();
      self = requestsCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v109 = v12;
        v110 = 2112;
        v111 = v9;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing media properties request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v13 = v9;
      v15 = objc_getProperty(self, v14, 64, 1);
      dispatch_assert_queue_V2(v15);
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v17 = objc_getProperty(self, v16, 48, 1);
      v94 = objc_msgSend_copy(v17);
      v18 = [v94 countByEnumeratingWithState:&v99 objects:buf count:16];
      if (v18)
      {
        v19 = *v100;
        do
        {
          v20 = 0;
          do
          {
            if (*v100 != v19)
            {
              objc_enumerationMutation(v94);
            }

            v21 = *(*(&v99 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            if (v23)
            {
              deviceIdsDestination = [v23 deviceIdsDestination];
              deviceIdsDestination2 = [v13 deviceIdsDestination];
              if ([deviceIdsDestination isEqualToString:deviceIdsDestination2])
              {
                mediaProfileUUID = [v23 mediaProfileUUID];
                mediaProfileUUID2 = [v13 mediaProfileUUID];
                v28 = [mediaProfileUUID isEqual:mediaProfileUUID2];

                if (v28)
                {
                  mediaProperties = [v23 mediaProperties];
                  mediaProperties2 = [v13 mediaProperties];
                  [mediaProperties minusSet:mediaProperties2];

                  mediaProperties3 = [v23 mediaProperties];
                  v32 = [mediaProperties3 count] == 0;

                  v33 = objc_autoreleasePoolPush();
                  v34 = self;
                  v35 = HMFGetOSLogHandle();
                  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
                  if (v32)
                  {
                    if (v36)
                    {
                      v38 = HMFGetLogIdentifier();
                      *v104 = 138543618;
                      v105 = v38;
                      v106 = 2112;
                      v107 = v23;
                      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Removing pending media properties request that matches a new media properties request: %@", v104, 0x16u);
                    }

                    objc_autoreleasePoolPop(v33);
                    [objc_getProperty(v34 v39];
                  }

                  else
                  {
                    if (v36)
                    {
                      v37 = HMFGetLogIdentifier();
                      *v104 = 138543618;
                      v105 = v37;
                      v106 = 2112;
                      v107 = v23;
                      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Updated pending media properties request: %@", v104, 0x16u);
                    }

                    objc_autoreleasePoolPop(v33);
                  }
                }
              }

              else
              {
              }
            }

            ++v20;
          }

          while (v18 != v20);
          v40 = [v94 countByEnumeratingWithState:&v99 objects:buf count:16];
          v18 = v40;
        }

        while (v40);
      }

      home = [(HMDNotificationRegistry *)self home];
      mediaProfileUUID3 = [v13 mediaProfileUUID];
      v43 = [home mediaProfileWithUUID:mediaProfileUUID3];

      if (v43)
      {
        mediaProperties4 = [v13 mediaProperties];
        v45 = [mediaProperties4 count] == 0;

        if (!v45)
        {
          enable = [v13 enable];
          v47 = objc_autoreleasePoolPush();
          v48 = self;
          v49 = HMFGetOSLogHandle();
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_INFO);
          if (enable)
          {
            if (v50)
            {
              v51 = HMFGetLogIdentifier();
              mediaProperties5 = [v13 mediaProperties];
              *buf = 138543874;
              v109 = v51;
              v110 = 2112;
              v111 = v43;
              v112 = 2112;
              v113 = mediaProperties5;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for media profile: %@ media properties: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v47);
            mediaProperties6 = [v13 mediaProperties];
            user = [v13 user];
            deviceIdsDestination3 = [v13 deviceIdsDestination];
            v56 = v43;
            uniqueIdentifier = mediaProperties6;
            v58 = user;
            v59 = deviceIdsDestination3;
            if ([uniqueIdentifier count])
            {
              v60 = v48 + 2;
              os_unfair_lock_lock_with_options();
              v62 = objc_getProperty(v48, v61, 32, 1);
              v63 = [v62 enableNotificationForMediaProfile:v56 mediaProperties:uniqueIdentifier user:v58 deviceIdsDestination:v59];

              os_unfair_lock_unlock(v60);
              if ((v63 & 1) == 0)
              {
LABEL_39:
                v64 = 0;
LABEL_53:
                v88 |= v64;
                goto LABEL_54;
              }

              goto LABEL_50;
            }
          }

          else
          {
            if (v50)
            {
              v73 = HMFGetLogIdentifier();
              mediaProperties7 = [v13 mediaProperties];
              *buf = 138543874;
              v109 = v73;
              v110 = 2112;
              v111 = v43;
              v112 = 2112;
              v113 = mediaProperties7;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for media profile: %@ media properties: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v47);
            mediaProperties8 = [v13 mediaProperties];
            user2 = [v13 user];
            deviceIdsDestination4 = [v13 deviceIdsDestination];
            v56 = v43;
            uniqueIdentifier = mediaProperties8;
            v58 = user2;
            v59 = deviceIdsDestination4;
            if ([uniqueIdentifier count])
            {
              v78 = v48 + 2;
              os_unfair_lock_lock_with_options();
              v80 = objc_getProperty(v48, v79, 32, 1);
              v81 = [v80 disableNotificationForMediaProfile:v56 mediaProperties:uniqueIdentifier user:v58 deviceIdsDestination:v59];

              os_unfair_lock_unlock(v78);
              if ((v81 & 1) == 0)
              {
                goto LABEL_39;
              }

LABEL_50:
              uniqueIdentifier = [v43 uniqueIdentifier];
              [v85 addObject:uniqueIdentifier];
              v64 = 1;
LABEL_52:

              goto LABEL_53;
            }
          }

          v64 = 0;
          goto LABEL_52;
        }

        v69 = objc_autoreleasePoolPush();
        v70 = self;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = HMFGetLogIdentifier();
          *buf = 138543618;
          v109 = v72;
          v110 = 2112;
          v111 = v13;
          _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@No media properties exist for request: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v69);
      }

      else
      {
        v65 = objc_autoreleasePoolPush();
        v66 = self;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543618;
          v109 = v68;
          v110 = 2112;
          v111 = v13;
          _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Cannot find media profile for media properties request so adding to pending requests: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v65);
        [v86 addObject:v13];
      }

LABEL_54:

      v7 = v92 + 1;
    }

    while (v92 + 1 != v91);
    v91 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  }

  while (v91);
LABEL_59:

  [(HMDNotificationRegistry *)requestsCopy _addPendingRequests:v86];
  if ([v85 count])
  {
    allObjects = [v85 allObjects];
    [(HMDNotificationRegistry *)requestsCopy notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
  }

LABEL_62:
  return v88 & 1;
}

- (id)home
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 7);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_addPendingRequests:(void *)requests
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(requests, v4, 64, 1);
  dispatch_assert_queue_V2(Property);
  if ([v3 count])
  {
    [objc_getProperty(requests v6];
    v7 = objc_autoreleasePoolPush();
    requestsCopy = requests;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Resuming pending requests timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [objc_getProperty(requestsCopy v11];
  }
}

- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(void *)profiles
{
  v3 = a2;
  if (profiles)
  {
    delegates = [(HMDNotificationRegistry *)profiles delegates];
    allObjects = [delegates allObjects];

    objc_initWeak(&location, profiles);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke;
    v6[3] = &unk_278671C90;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [allObjects na_each:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)delegates
{
  os_unfair_lock_lock_with_options();
  v2 = objc_msgSend_copy(*(self + 16));
  os_unfair_lock_unlock((self + 8));

  return v2;
}

void __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = objc_getProperty(WeakRetained, v5, 64, 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke_2;
    block[3] = &unk_278685F38;
    v7 = WeakRetained;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
  }
}

void __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@About to notify delegate of mediaPropertyRegistrationsDidChange %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) mediaPropertyRegistrationsDidChangeForMediaProfiles:*(a1 + 40)];
}

uint64_t __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [v3 service];
  v6 = [v5 type];

  v7 = [*(a1 + 32) characteristicInstanceIDs];
  v8 = [v3 instanceID];

  if ([v7 containsObject:v8])
  {
    v9 = [*(a1 + 40) shouldFilterChangeNotificationsForCharacteristicType:v4 serviceType:v6] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

HMDCharacteristicNotificationChangeThreshold *__59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristicChangeThresholds];
  v5 = [v3 instanceID];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [[HMDCharacteristicNotificationChangeThreshold alloc] initWithCharacteristic:v3 threshold:v6];

  return v7;
}

void __79__HMDNotificationRegistry__processCoreDataRequestResults_pendingRequestsToAdd___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 coreDataRequest];
  v5 = [v4 request];
  if ([v3 didSucceed])
  {
    if ([v3 didModify])
    {
      v6 = [v4 characteristicThresholds];
      v7 = [v6 firstObject];
      v8 = [v7 characteristic];
      v9 = [v8 accessory];

      v10 = [v3 modifiedCharacteristics];
      v11 = [v5 deviceIdsDestination];
      if ([v10 hmf_isEmpty])
      {
LABEL_14:

        goto LABEL_15;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v12 = [v5 enable];
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v16)
        {
          v25 = HMFGetLogIdentifier();
          v17 = [v9 name];
          v24 = [v9 uuid];
          [v24 UUIDString];
          v18 = v26 = v13;
          *buf = 138544130;
          v28 = v25;
          v29 = 2112;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          v33 = 2112;
          v34 = v10;
          v19 = "%{public}@Enabling notification for accessory %@/%@ characteristics %@";
LABEL_12:
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, v19, buf, 0x2Au);

          v13 = v26;
        }
      }

      else if (v16)
      {
        v25 = HMFGetLogIdentifier();
        v17 = [v9 name];
        v24 = [v9 uuid];
        [v24 UUIDString];
        v18 = v26 = v13;
        *buf = 138544130;
        v28 = v25;
        v29 = 2112;
        v30 = v17;
        v31 = 2112;
        v32 = v18;
        v33 = 2112;
        v34 = v10;
        v19 = "%{public}@Disabling notification for accessory %@/%@ characteristics %@";
        goto LABEL_12;
      }

      objc_autoreleasePoolPop(v13);
      [v9 setNotificationsEnabled:objc_msgSend(v5 forCharacteristics:"enable") clientIdentifier:{v10, v11}];
      [v9 updateNotificationEnabled:objc_msgSend(v5 forCharacteristics:"enable") onBehalfOf:{v10, v11}];
      goto LABEL_14;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Processing request: %@ failed, adding to pending requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    [*(a1 + 40) addObject:v5];
  }

LABEL_15:
}

- (id)logIdentifier
{
  home = [(HMDNotificationRegistry *)&self->super.super.isa home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)addDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = delegateCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@adding delegate %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)selfCopy->_delegates addObject:delegateCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (BOOL)setNotificationsEnabled:(BOOL)enabled user:(id)user deviceIdsDestination:(id)destination characteristicsPayload:(id)payload characteristicChangeThresholdsPayload:(id)thresholdsPayload mediaPropertiesPayload:(id)propertiesPayload actionSetsPayload:(id)setsPayload matterNotificationPayload:(id)self0
{
  enabledCopy = enabled;
  v271 = *MEMORY[0x277D85DE8];
  userCopy = user;
  destinationCopy = destination;
  payloadCopy = payload;
  thresholdsPayloadCopy = thresholdsPayload;
  propertiesPayloadCopy = propertiesPayload;
  setsPayloadCopy = setsPayload;
  notificationPayloadCopy = notificationPayload;
  if (self)
  {
    Property = objc_getProperty(self, v16, 64, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  selfa = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = HMFBooleanToString();
    shortDescription = [userCopy shortDescription];
    *buf = 138544130;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    *&buf[22] = 2112;
    v269 = shortDescription;
    LOWORD(v270) = 2112;
    *(&v270 + 2) = destinationCopy;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Setting notifications enabled to %@ for user: %@ deviceIdsDestination: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v213 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(setsPayloadCopy, "count")}];
  v207 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(payloadCopy, "count")}];
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  obj = payloadCopy;
  v225 = [obj countByEnumeratingWithState:&v247 objects:v262 count:16];
  if (v225)
  {
    v222 = *v248;
    do
    {
      v23 = 0;
      do
      {
        if (*v248 != v222)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v247 + 1) + 8 * v23);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26)
        {
          v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v26];
          v227 = v27;
          if (v27)
          {
            uUIDString = [v27 UUIDString];
            v29 = [obj objectForKeyedSubscript:uUIDString];

            v30 = v29;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = v30;
            }

            else
            {
              v31 = 0;
            }

            v32 = v31;

            if (v32)
            {
              v33 = [[HMDNotificationRegistryCharacteristicsRequest alloc] initWithEnable:enabledCopy user:userCopy deviceIdsDestination:destinationCopy accessoryUUID:v227];
              v34 = thresholdsPayloadCopy;
              v215 = v227;
              if (selfCopy)
              {
                v35 = objc_autoreleasePoolPush();
                uUIDString2 = [v215 UUIDString];
                v37 = [v34 objectForKeyedSubscript:uUIDString2];

                v38 = v37;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = v38;
                }

                else
                {
                  v39 = 0;
                }

                v40 = v39;

                if (v40)
                {
                  dictionary = [MEMORY[0x277CBEB38] dictionary];
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __74__HMDNotificationRegistry_parseChangeThresholdsFromPayload_accessoryUUID___block_invoke;
                  v269 = &unk_278671C40;
                  *&v270 = selfa;
                  v42 = dictionary;
                  *(&v270 + 1) = v42;
                  [v40 na_each:buf];
                  v210 = v26;
                  v43 = v30;
                  v44 = v35;
                  v45 = v33;
                  v46 = v32;
                  v47 = v34;
                  v48 = *(&v270 + 1);
                  v49 = v42;

                  v34 = v47;
                  v32 = v46;
                  v33 = v45;
                  v35 = v44;
                  v30 = v43;
                  v26 = v210;
                }

                else
                {
                  v49 = MEMORY[0x277CBEC10];
                }

                objc_autoreleasePoolPop(v35);
              }

              else
              {
                v49 = 0;
              }

              if ([v49 count])
              {
                characteristicChangeThresholds = [(HMDNotificationRegistryCharacteristicsRequest *)v33 characteristicChangeThresholds];
                [characteristicChangeThresholds addEntriesFromDictionary:v49];
              }

              characteristicInstanceIDs = [(HMDNotificationRegistryCharacteristicsRequest *)v33 characteristicInstanceIDs];
              [characteristicInstanceIDs addObjectsFromArray:v32];

              [v207 addObject:v33];
            }

            else
            {
              v60 = objc_autoreleasePoolPush();
              v61 = selfa;
              v62 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                v63 = HMFGetLogIdentifier();
                v64 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v63;
                *&buf[12] = 2112;
                *&buf[14] = v30;
                *&buf[22] = 2112;
                v269 = v64;
                v65 = v64;
                _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload value that is not an array: %@)%@)", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v60);
            }
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            v57 = selfa;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = v26;
              _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Ignoring accessory UUID string that cannot be converted in a UUID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v56);
          }
        }

        else
        {
          v50 = objc_autoreleasePoolPush();
          v51 = selfa;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            v54 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v53;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v269 = v54;
            v55 = v54;
            _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload key that is not a string: %@ (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v50);
        }

        ++v23;
      }

      while (v225 != v23);
      v68 = [obj countByEnumeratingWithState:&v247 objects:v262 count:16];
      v225 = v68;
    }

    while (v68);
  }

  v211 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(propertiesPayloadCopy, "count")}];
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v223 = propertiesPayloadCopy;
  v69 = [v223 countByEnumeratingWithState:&v243 objects:v261 count:16];
  if (v69)
  {
    v228 = *v244;
    do
    {
      v70 = 0;
      v208 = v69;
      do
      {
        if (*v244 != v228)
        {
          objc_enumerationMutation(v223);
        }

        v71 = *(*(&v243 + 1) + 8 * v70);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v72 = v71;
        }

        else
        {
          v72 = 0;
        }

        v73 = v72;

        if (v73)
        {
          v74 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v73];
          v75 = v74;
          if (v74)
          {
            uUIDString3 = [v74 UUIDString];
            v77 = [v223 objectForKeyedSubscript:uUIDString3];

            v78 = v77;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v79 = v78;
            }

            else
            {
              v79 = 0;
            }

            v80 = v79;

            if (v80)
            {
              v81 = [[HMDNotificationRegistryMediaPropertiesRequest alloc] initWithEnable:enabledCopy user:userCopy deviceIdsDestination:destinationCopy mediaProfileUUID:v75];
              mediaProperties = [(HMDNotificationRegistryMediaPropertiesRequest *)v81 mediaProperties];
              [mediaProperties addObjectsFromArray:v80];

              [v211 addObject:v81];
            }

            else
            {
              v93 = objc_autoreleasePoolPush();
              v94 = selfa;
              v95 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
              {
                v96 = HMFGetLogIdentifier();
                v97 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v96;
                *&buf[12] = 2112;
                *&buf[14] = v78;
                *&buf[22] = 2112;
                v269 = v97;
                v98 = v97;
                _os_log_impl(&dword_229538000, v95, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload value that is not an array: %@ (%@)", buf, 0x20u);

                v69 = v208;
              }

              objc_autoreleasePoolPop(v93);
            }
          }

          else
          {
            v89 = objc_autoreleasePoolPush();
            v90 = selfa;
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              v92 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v92;
              *&buf[12] = 2112;
              *&buf[14] = v73;
              _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_INFO, "%{public}@Ignoring media profile UUID string that cannot be converted in a UUID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v89);
          }
        }

        else
        {
          v83 = objc_autoreleasePoolPush();
          v84 = selfa;
          v85 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            v86 = HMFGetLogIdentifier();
            v87 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v86;
            *&buf[12] = 2112;
            *&buf[14] = v71;
            *&buf[22] = 2112;
            v269 = v87;
            v88 = v87;
            _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload key that is not a string: %@ (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v83);
        }

        ++v70;
      }

      while (v69 != v70);
      v69 = [v223 countByEnumeratingWithState:&v243 objects:v261 count:16];
    }

    while (v69);
  }

  v241 = 0u;
  v242 = 0u;
  v240 = 0u;
  v239 = 0u;
  v216 = setsPayloadCopy;
  v99 = [v216 countByEnumeratingWithState:&v239 objects:v260 count:16];
  if (v99)
  {
    v100 = *v240;
    do
    {
      for (i = 0; i != v99; ++i)
      {
        if (*v240 != v100)
        {
          objc_enumerationMutation(v216);
        }

        v102 = *(*(&v239 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v103 = v102;
        }

        else
        {
          v103 = 0;
        }

        v104 = v103;

        if (v104)
        {
          v105 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v104];
          if (v105)
          {
            v106 = [[HMDNotificationRegistryActionSetRequest alloc] initWithEnable:enabledCopy user:userCopy deviceIdsDestination:destinationCopy actionSetUUID:v105];
            [v213 addObject:v106];
          }

          else
          {
            v111 = objc_autoreleasePoolPush();
            v112 = selfa;
            v113 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              v114 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v114;
              *&buf[12] = 2112;
              *&buf[14] = v104;
              _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_ERROR, "%{public}@Action set uuid string (%@) could not be converted to a uuid", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v111);
          }
        }

        else
        {
          v107 = objc_autoreleasePoolPush();
          v108 = selfa;
          v109 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v110 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v110;
            _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_ERROR, "%{public}@Action set element was not a string", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v107);
        }
      }

      v99 = [v216 countByEnumeratingWithState:&v239 objects:v260 count:16];
    }

    while (v99);
  }

  v197 = v213;
  if (!selfCopy || (v116 = objc_getProperty(selfa, v115, 64, 1), dispatch_assert_queue_V2(v116), ![v197 count]))
  {
    v209 = 0;
    goto LABEL_141;
  }

  v200 = [MEMORY[0x277CBEB58] set];
  v198 = [MEMORY[0x277CBEB58] set];
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  v202 = v197;
  v206 = [v202 countByEnumeratingWithState:&v251 objects:v263 count:16];
  if (!v206)
  {
    v209 = 0;
    goto LABEL_138;
  }

  v209 = 0;
  v203 = *v252;
  do
  {
    v117 = 0;
    do
    {
      if (*v252 != v203)
      {
        v118 = v117;
        objc_enumerationMutation(v202);
        v117 = v118;
      }

      v214 = v117;
      v119 = *(*(&v251 + 1) + 8 * v117);
      v120 = objc_autoreleasePoolPush();
      v229 = selfa;
      v121 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        v122 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v122;
        *&buf[12] = 2112;
        *&buf[14] = v119;
        _os_log_impl(&dword_229538000, v121, OS_LOG_TYPE_INFO, "%{public}@Processing action set request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v120);
      v218 = v119;
      v124 = objc_getProperty(v229, v123, 64, 1);
      dispatch_assert_queue_V2(v124);
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      v126 = objc_getProperty(v229, v125, 48, 1);
      v127 = objc_msgSend_copy(v126);
      v128 = [v127 countByEnumeratingWithState:&v255 objects:buf count:16];
      if (v128)
      {
        v129 = *v256;
        do
        {
          for (j = 0; j != v128; ++j)
          {
            if (*v256 != v129)
            {
              objc_enumerationMutation(v127);
            }

            v131 = *(*(&v255 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v132 = v131;
            }

            else
            {
              v132 = 0;
            }

            v133 = v132;

            if (v133)
            {
              deviceIdsDestination = [v133 deviceIdsDestination];
              deviceIdsDestination2 = [v133 deviceIdsDestination];
              if ([deviceIdsDestination isEqualToString:deviceIdsDestination2])
              {
                actionSetUUID = [v133 actionSetUUID];
                actionSetUUID2 = [v133 actionSetUUID];
                v138 = [actionSetUUID isEqual:actionSetUUID2];

                if (v138)
                {
                  v139 = objc_autoreleasePoolPush();
                  v140 = v229;
                  v141 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
                  {
                    v142 = HMFGetLogIdentifier();
                    *v264 = 138543618;
                    v265 = v142;
                    v266 = 2112;
                    v267 = v133;
                    _os_log_impl(&dword_229538000, v141, OS_LOG_TYPE_INFO, "%{public}@Removing pending action set request that matches a new action set request: %@", v264, 0x16u);
                  }

                  objc_autoreleasePoolPop(v139);
                  [objc_getProperty(v140 v143];
                }
              }

              else
              {
              }
            }
          }

          v128 = [v127 countByEnumeratingWithState:&v255 objects:buf count:16];
        }

        while (v128);
      }

      home = [(HMDNotificationRegistry *)&v229->super.super.isa home];
      actionSetUUID3 = [v218 actionSetUUID];
      v146 = [home actionSetWithUUID:actionSetUUID3];

      if (v146)
      {
        enable = [v218 enable];
        v148 = objc_autoreleasePoolPush();
        v149 = v229;
        v150 = HMFGetOSLogHandle();
        v151 = os_log_type_enabled(v150, OS_LOG_TYPE_INFO);
        if (enable)
        {
          if (v151)
          {
            v152 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v152;
            *&buf[12] = 2112;
            *&buf[14] = v146;
            _os_log_impl(&dword_229538000, v150, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for action set: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v148);
          uuid = [v146 uuid];
          user = [v218 user];
          deviceIdsDestination3 = [v218 deviceIdsDestination];
          v156 = uuid;
          v157 = user;
          v158 = deviceIdsDestination3;
          v159 = v149 + 2;
          os_unfair_lock_lock_with_options();
          v161 = objc_getProperty(v149, v160, 32, 1);
          v162 = [v161 enableNotificationForActionSetUUID:v156 user:v157 deviceIdsDestination:v158];

          os_unfair_lock_unlock(v159);
          if ((v162 & 1) == 0)
          {
            goto LABEL_124;
          }

LABEL_131:
          uuid2 = [v146 uuid];
          [v198 addObject:uuid2];

          v163 = 1;
        }

        else
        {
          if (v151)
          {
            v168 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v168;
            *&buf[12] = 2112;
            *&buf[14] = v146;
            _os_log_impl(&dword_229538000, v150, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for action set: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v148);
          uuid3 = [v146 uuid];
          user2 = [v218 user];
          deviceIdsDestination4 = [v218 deviceIdsDestination];
          v172 = uuid3;
          v173 = user2;
          v174 = deviceIdsDestination4;
          v175 = v149 + 2;
          os_unfair_lock_lock_with_options();
          v177 = objc_getProperty(v149, v176, 32, 1);
          v178 = [v177 disableNotificationForActionSetUUID:v172 user:v173 deviceIdsDestination:v174];

          os_unfair_lock_unlock(v175);
          if (v178)
          {
            goto LABEL_131;
          }

LABEL_124:
          v163 = 0;
        }

        v209 |= v163;
        goto LABEL_133;
      }

      v164 = objc_autoreleasePoolPush();
      v165 = v229;
      v166 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
      {
        v167 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v167;
        *&buf[12] = 2112;
        *&buf[14] = v218;
        _os_log_impl(&dword_229538000, v166, OS_LOG_TYPE_INFO, "%{public}@Cannot find action set for action set request so adding to pending requests: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v164);
      [v200 addObject:v218];
LABEL_133:

      v117 = v214 + 1;
    }

    while (v214 + 1 != v206);
    v206 = [v202 countByEnumeratingWithState:&v251 objects:v263 count:16];
  }

  while (v206);
LABEL_138:

  [(HMDNotificationRegistry *)selfa _addPendingRequests:v200];
  if ([v198 count])
  {
    allObjects = [v198 allObjects];
    [(HMDNotificationRegistry *)selfa notifyDelegatesOfRegistryUpdatesForActionSets:allObjects];
  }

LABEL_141:
  home2 = [(HMDNotificationRegistry *)&selfa->super.super.isa home];
  v181 = objc_autoreleasePoolPush();
  v230 = selfa;
  v182 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
  {
    v183 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v183;
    *&buf[12] = 2112;
    *&buf[14] = notificationPayloadCopy;
    _os_log_impl(&dword_229538000, v182, OS_LOG_TYPE_INFO, "%{public}@Handling notification registration for matter attributes. payload=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v181);
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  hapAccessories = [home2 hapAccessories];
  v185 = [hapAccessories countByEnumeratingWithState:&v235 objects:v259 count:16];
  if (v185)
  {
    v186 = 0;
    v187 = *v236;
    do
    {
      for (k = 0; k != v185; ++k)
      {
        if (*v236 != v187)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v189 = *(*(&v235 + 1) + 8 * k);
        matterNodeID = [v189 matterNodeID];
        if (([matterNodeID isEqual:&unk_283E71D08] & 1) == 0)
        {
          v191 = [notificationPayloadCopy hmf_dictionaryForKey:matterNodeID];
          v192 = v191 == 0;

          if (!v192)
          {
            v231[0] = MEMORY[0x277D85DD0];
            v231[1] = 3221225472;
            v231[2] = __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke;
            v231[3] = &unk_278689668;
            v232 = matterNodeID;
            v233 = v230;
            v234 = home2;
            [v189 setCHIPReportHandler:v231];

            v186 = 1;
          }
        }
      }

      v185 = [hapAccessories countByEnumeratingWithState:&v235 objects:v259 count:16];
    }

    while (v185);

    if (v186)
    {
      [(HMDNotificationRegistry *)v230 storeCHIPRemoteSubscriberWithRemoteSourceID:destinationCopy];
      v193 = 1;
      goto LABEL_157;
    }
  }

  else
  {
  }

  v193 = 0;
LABEL_157:
  v194 = [(HMDNotificationRegistry *)v230 _processCharacteristicsRequests:v207];
  v195 = v194 | [(HMDNotificationRegistry *)v230 _processMediaPropertiesRequests:v211];
  if ((v193 | v209 | v195))
  {
    [home2 saveToCurrentAccountWithReason:@"kModifyCharacterisiticNotificationsRequestKey"];
  }

  return (v195 | v209 | v193) & 1;
}

void __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v9[0] = @"HMDHomeCHIPNodeIDMessageKey";
  v9[1] = @"HMDHomeCHIPReportMessageKey";
  v10[0] = v3;
  v10[1] = a2;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [MEMORY[0x277D0F848] messageWithName:@"HMDHomeCHIPSendReportMessage" messagePayload:v6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke_2;
  v8[3] = &unk_278689DC0;
  v8[4] = *(a1 + 40);
  [v7 setResponseHandler:v8];
  [*(a1 + 48) handleCHIPSendReportMessage:v7];
}

void __205__HMDNotificationRegistry_setNotificationsEnabled_user_deviceIdsDestination_characteristicsPayload_characteristicChangeThresholdsPayload_mediaPropertiesPayload_actionSetsPayload_matterNotificationPayload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@CHIP report handling complete: error %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)notifyDelegatesOfRegistryUpdatesForActionSets:(void *)sets
{
  v3 = a2;
  if (sets)
  {
    delegates = [(HMDNotificationRegistry *)sets delegates];
    allObjects = [delegates allObjects];

    objc_initWeak(&location, sets);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke;
    v6[3] = &unk_278671C90;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [allObjects na_each:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = objc_getProperty(WeakRetained, v5, 64, 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke_2;
    block[3] = &unk_278685F38;
    v7 = WeakRetained;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);

    objc_destroyWeak(&v11);
  }
}

void __73__HMDNotificationRegistry_notifyDelegatesOfRegistryUpdatesForActionSets___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@About to notify delegate of stateRegistrationsDidChangeForActionSetUUIDs %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) stateRegistrationsDidChangeForActionSetUUIDs:*(a1 + 40)];
}

void __74__HMDNotificationRegistry_parseChangeThresholdsFromPayload_accessoryUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v12;
      v18 = "%{public}@Change threshold key %@ or value %@ was not of expected type";
LABEL_18:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v18, &v22, 0x20u);
    }

LABEL_19:

    objc_autoreleasePoolPop(v14);
    goto LABEL_20;
  }

  v19 = [v9 integerValue];
  if (v19 <= 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v12;
      v18 = "%{public}@Change threshold key %@ with value %@ is an invalid instance id";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v20 = *(a1 + 40);
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
  [v20 setObject:v12 forKeyedSubscript:v21];

LABEL_20:
}

- (void)storeCHIPRemoteSubscriberWithRemoteSourceID:(id)d
{
  if (d)
  {
    dCopy = d;
    chipRemoteSubscribers = [(HMDNotificationRegistry *)self chipRemoteSubscribers];

    if (!chipRemoteSubscribers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(HMDNotificationRegistry *)self setChipRemoteSubscribers:v6];
    }

    chipRemoteSubscribers2 = [(HMDNotificationRegistry *)self chipRemoteSubscribers];
    [chipRemoteSubscribers2 addObject:dCopy];
  }
}

- (void)auditNotificationDestinations:(id)destinations home:(id)home
{
  destinationsCopy = destinations;
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v8, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v11 = [v10 removeCharacteristicRegistrationsWithoutAllowedDestinations:destinationsCopy];

  if (isiOSDevice())
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke;
    v39[3] = &unk_278671B90;
    v40 = homeCopy;
    v41 = array;
    [v11 na_each:v39];
  }

  v12 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v12 isResidentCapable];

  if (isResidentCapable)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_188;
    v37[3] = &unk_278671BB8;
    v38 = homeCopy;
    v15 = [v11 na_map:v37];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_190;
    v35[3] = &unk_278682908;
    v35[4] = self;
    v36 = array;
    [v15 na_each:v35];
  }

  if (self)
  {
    v16 = objc_getProperty(self, v14, 32, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 removeMediaRegistrationsWithoutAllowedDestinations:destinationsCopy];

  if ([v18 count])
  {
    v20 = [v18 na_map:&__block_literal_global_28743];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_193;
    aBlock[3] = &unk_27868A750;
    aBlock[4] = self;
    v21 = v20;
    v34 = v21;
    v22 = _Block_copy(aBlock);
    [array addObject:v22];
  }

  if (self)
  {
    v23 = objc_getProperty(self, v19, 32, 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  v25 = [v24 removeActionSetRegistrationsWithoutAllowedDestinations:destinationsCopy];

  if ([v25 count])
  {
    v26 = [v25 na_map:&__block_literal_global_197];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_4;
    v31[3] = &unk_27868A750;
    v31[4] = self;
    v27 = v26;
    v32 = v27;
    v28 = _Block_copy(v31);
    [array addObject:v28];
  }

  os_unfair_lock_unlock((self + v29));
  [array na_each:&__block_literal_global_200_28744];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v3 characteristicInstanceID];
    v10 = [v8 hmdCharacteristicForInstanceId:v9];

    v11 = [v3 deviceIdsDestination];
    v12 = *(a1 + 40);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2;
    aBlock[3] = &unk_27868A010;
    v17 = v11;
    v18 = v10;
    v19 = v8;
    v13 = v10;
    v14 = v11;
    v15 = _Block_copy(aBlock);
    [v12 addObject:v15];
  }
}

id __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v3 characteristicInstanceID];
    v10 = [v8 hmdCharacteristicForInstanceId:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_190(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 32, 1);
  }

  v6 = [Property destinationsToNotifyForCharacteristic:v4 applyChangeThresholding:0];
  if (![v6 count])
  {
    v7 = [v4 accessory];
    v8 = *(a1 + 40);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_3;
    v14 = &unk_27868A750;
    v15 = v4;
    v16 = v7;
    v9 = v7;
    v10 = _Block_copy(&v11);
    [v8 addObject:{v10, v11, v12, v13, v14}];
  }
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2_193(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [(HMDNotificationRegistry *)v1 notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v2];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [(HMDNotificationRegistry *)v1 notifyDelegatesOfRegistryUpdatesForActionSets:v2];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = *(a1 + 32);
    *buf = 138543874;
    v10 = v4;
    v11 = 2112;
    v12 = 0;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Deregistering client %@ for notification for characteristic %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  v8 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [v6 setNotificationsEnabled:0 forCharacteristics:v7 clientIdentifier:0];
}

void __62__HMDNotificationRegistry_auditNotificationDestinations_home___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138543874;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Deregistering client %@ for notification for characteristic %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[6];
  v9 = a1[5];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v7 setNotificationsEnabled:0 forCharacteristics:v8 clientIdentifier:a1[4]];
}

- (id)destinationsRegisteredForNotificationsForActionSetResponses:(id)responses
{
  v24 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  if ([responsesCopy count])
  {
    v4 = [MEMORY[0x277CBEB58] set];
    os_unfair_lock_lock_with_options();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = responsesCopy;
    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          if (self)
          {
            Property = objc_getProperty(self, v6, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v12 = Property;
          actionSetUUID = [v10 actionSetUUID];
          v14 = [v12 destinationsToNotifyForActionSetUUID:actionSetUUID];

          [v4 addObjectsFromArray:v14];
          ++v9;
        }

        while (v7 != v9);
        v15 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v7 = v15;
      }

      while (v15);
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = objc_msgSend_copy(v4);
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  return v16;
}

- (id)destinationsRegisteredForNotificationsForProperties:(id)properties
{
  v23 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if ([propertiesCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    os_unfair_lock_lock_with_options();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = propertiesCopy;
    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          if (self)
          {
            Property = objc_getProperty(self, v7, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v13 = Property;
          v14 = [v13 destinationsToNotifyForMediaPropertyResponse:v11];

          [v5 addObjectsFromArray:v14];
          ++v10;
        }

        while (v8 != v10);
        v15 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v8 = v15;
      }

      while (v15);
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = objc_msgSend_copy(v5);
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
  }

  return v16;
}

- (id)destinationsRegisteredForNotificationsForCharacteristics:(id)characteristics applyChangeThresholding:(BOOL)thresholding
{
  thresholdingCopy = thresholding;
  v26 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v6 = [MEMORY[0x277CBEB58] set];
  if ([characteristicsCopy count])
  {
    v19 = 8;
    os_unfair_lock_lock_with_options();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = characteristicsCopy;
    v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          if (self)
          {
            Property = objc_getProperty(self, v8, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v14 = Property;
          v15 = [v14 destinationsToNotifyForCharacteristic:v12 applyChangeThresholding:thresholdingCopy];

          [v6 addObjectsFromArray:v15];
          ++v11;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v9 = v16;
      }

      while (v16);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v17 = objc_msgSend_copy(v6, v19);

  return v17;
}

- (id)characteristicsByDestinationForCharacteristics:(id)characteristics applyChangeThresholding:(BOOL)thresholding
{
  v6 = MEMORY[0x277CBEB38];
  characteristicsCopy = characteristics;
  dictionary = [v6 dictionary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke;
  v12[3] = &unk_278671B68;
  v12[4] = self;
  thresholdingCopy = thresholding;
  v9 = [characteristicsCopy na_reduceWithInitialValue:dictionary reducer:v12];

  v10 = objc_msgSend_copy(v9);

  return v10;
}

id __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 32, 1);
  }

  v9 = [Property destinationsToNotifyForCharacteristic:v5 applyChangeThresholding:*(a1 + 40)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke_2;
  v15[3] = &unk_278686270;
  v10 = v7;
  v16 = v10;
  v17 = v5;
  v11 = v5;
  [v9 na_each:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __98__HMDNotificationRegistry_characteristicsByDestinationForCharacteristics_applyChangeThresholding___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  [v3 addObject:*(a1 + 40)];
}

- (id)filterActionSetResponses:(id)responses deviceIdsDestination:(id)destination
{
  v28 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  destinationCopy = destination;
  v20 = responsesCopy;
  if ([responsesCopy count])
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    os_unfair_lock_lock_with_options();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = responsesCopy;
    v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          if (self)
          {
            Property = objc_getProperty(self, v8, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v14 = Property;
          actionSetUUID = [v12 actionSetUUID];
          v16 = [v14 destinationsToNotifyForActionSetUUID:actionSetUUID];

          if ([v16 containsObject:destinationCopy])
          {
            [v21 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v17 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        v9 = v17;
      }

      while (v17);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18 = objc_msgSend_copy(v21);
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

- (BOOL)hasRegistrationsForActionSetUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 hasEnabledRegistrationForActionSetUUID:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 mediaPropertiesRegisteredForMediaProfileUniqueIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)filterProperties:(id)properties deviceIdsDestination:(id)destination
{
  v26 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  destinationCopy = destination;
  if ([propertiesCopy count])
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    os_unfair_lock_lock_with_options();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = propertiesCopy;
    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          if (self)
          {
            Property = objc_getProperty(self, v9, 32, 1);
          }

          else
          {
            Property = 0;
          }

          v15 = Property;
          v16 = [v15 destinationsToNotifyForMediaPropertyResponse:v13];

          if ([v16 containsObject:destinationCopy])
          {
            [v20 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v17 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v10 = v17;
      }

      while (v17);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18 = objc_msgSend_copy(v20);
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  return v18;
}

- (BOOL)removeRegistrationsForActionSetUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registrations for action set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 removeRegistrationsForActionSetUUID:dCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v12)
  {
    v15 = dCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [(HMDNotificationRegistry *)selfCopy notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v13];
  }

  return v12;
}

- (BOOL)removeRegistrationsForMediaProfile:(id)profile
{
  v21 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = profileCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registrations for media profile: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 removeRegistrationsForMediaProfile:profileCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v12)
  {
    uniqueIdentifier = [profileCopy uniqueIdentifier];
    v16 = uniqueIdentifier;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(HMDNotificationRegistry *)selfCopy notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v14];
  }

  return v12;
}

- (void)removeRegistrationsForCharacteristics:(id)characteristics
{
  v16 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = characteristicsCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing registrations for characteristics: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  [v11 removeRegistrationsForCharacteristics:characteristicsCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (id)shortDescription
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  shortDescription = [v5 shortDescription];

  os_unfair_lock_unlock(&self->_lock);

  return shortDescription;
}

- (void)clearAllRegistrations
{
  if (self)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    v4 = [MEMORY[0x277CBEB98] set];
    os_unfair_lock_lock_with_options();
    v6 = objc_getProperty(self, v5, 32, 1);
    [v6 removeAllCharacteristicRegistrations];

    v8 = objc_getProperty(self, v7, 32, 1);
    removeAllActionSetRegistrations = [v8 removeAllActionSetRegistrations];

    v11 = objc_getProperty(self, v10, 32, 1);
    removeAllMediaProfileRegistrations = [v11 removeAllMediaProfileRegistrations];

    os_unfair_lock_unlock(&self->_lock);
    if ([removeAllMediaProfileRegistrations count])
    {
      allObjects = [removeAllMediaProfileRegistrations allObjects];
      [(HMDNotificationRegistry *)self notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
    }

    if ([removeAllActionSetRegistrations count])
    {
      allObjects2 = [removeAllActionSetRegistrations allObjects];
      [(HMDNotificationRegistry *)self notifyDelegatesOfRegistryUpdatesForActionSets:allObjects2];
    }
  }
}

- (void)disableAllRegistrations
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__28761;
  v36 = __Block_byref_object_dispose__28762;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__28761;
  v30 = __Block_byref_object_dispose__28762;
  v31 = 0;
  home = [(HMDNotificationRegistry *)&self->super.super.isa home];
  hapAccessories = [home hapAccessories];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke;
  v25[3] = &unk_278671B18;
  v25[4] = &v26;
  v25[5] = &v32;
  [hapAccessories hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = v33[5];
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Disabling all registrations, then re-registering local registrations with instance ids by client: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v10, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;
  [v12 disableAllCharacteristicRegistrations];

  if (selfCopy)
  {
    v14 = objc_getProperty(selfCopy, v13, 32, 1);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  disableAllActionSetRegistrations = [v15 disableAllActionSetRegistrations];

  if (selfCopy)
  {
    v18 = objc_getProperty(selfCopy, v17, 32, 1);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  disableAllMediaProfileRegistrations = [v19 disableAllMediaProfileRegistrations];

  if (v27[5] && [v33[5] count])
  {
    v21 = v33[5];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_180;
    v24[3] = &unk_278671B40;
    v24[4] = selfCopy;
    v24[5] = &v26;
    [v21 na_each:v24];
  }

  if ([disableAllMediaProfileRegistrations count])
  {
    allObjects = [disableAllMediaProfileRegistrations allObjects];
    [(HMDNotificationRegistry *)selfCopy notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
  }

  if ([disableAllActionSetRegistrations count])
  {
    allObjects2 = [disableAllActionSetRegistrations allObjects];
    [(HMDNotificationRegistry *)selfCopy notifyDelegatesOfRegistryUpdatesForActionSets:allObjects2];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isCurrentAccessory])
  {
    *a4 = 1;
    v7 = [v6 uuid];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v6 services];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_2;
    v11[3] = &unk_278671AF0;
    v11[4] = *(a1 + 40);
    [v10 na_each:v11];
  }
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_180(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 UUIDString];
  v13 = v8;
  v14[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = *(a1 + 32);
  v11 = [(HMDNotificationRegistry *)v10 home];
  v12 = [v11 currentUser];
  [v10 setNotificationsEnabled:1 user:v12 deviceIdsDestination:v7 characteristicsPayload:v9 characteristicChangeThresholdsPayload:MEMORY[0x277CBEC10] mediaPropertiesPayload:MEMORY[0x277CBEC10] actionSetsPayload:MEMORY[0x277CBEBF8] matterNotificationPayload:MEMORY[0x277CBEC10]];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_3;
  v4[3] = &unk_278671AC8;
  v4[4] = *(a1 + 32);
  [v3 na_each:v4];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localClientIdentifiersWithNotificationsEnabled];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_4;
  v7[3] = &unk_278671AA0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 na_each:v7];
}

void __50__HMDNotificationRegistry_disableAllRegistrations__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:v5];
  }

  v4 = [*(a1 + 32) instanceID];
  [v3 addObject:v4];
}

- (void)reprocessEnabledCharacteristicRegistrations
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDNotificationRegistry_reprocessEnabledCharacteristicRegistrations__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(&self->super.super, block);
}

void __70__HMDNotificationRegistry_reprocessEnabledCharacteristicRegistrations__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 64, 1);
    dispatch_assert_queue_V2(Property);
    v5 = [objc_getProperty(v2 v4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke;
    v6[3] = &unk_278683BA0;
    v6[4] = v2;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 64, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_2;
  v9[3] = &unk_27868A750;
  v9[4] = v7;
  v10 = v4;
  v8 = v4;
  dispatch_async(Property, v9);
}

void __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_2(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v4 = [Property characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_3;
  v6[3] = &unk_278671A78;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 na_each:v6];
}

void __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = [(HMDNotificationRegistry *)*(a1 + 32) home];
  v24 = v5;
  v8 = [v7 accessoryWithUUID:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__HMDNotificationRegistry__reprocessEnabledCharacteristicRegistrations__block_invoke_4;
    v26[3] = &unk_278671A50;
    v11 = v10;
    v27 = v11;
    v12 = [v6 na_map:v26];
    v13 = [v12 allObjects];

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v21 = [v11 name];
      [v11 uuid];
      v19 = v23 = v6;
      [v19 UUIDString];
      v20 = v22 = v14;
      *buf = 138544386;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Re-Enabling notification for destination: %@ accessory %@/%@ characteristics %@", buf, 0x34u);

      v14 = v22;
      v6 = v23;
    }

    objc_autoreleasePoolPop(v14);
    [v11 setNotificationsEnabled:1 forCharacteristics:v13 clientIdentifier:*(a1 + 40)];
    [v11 updateNotificationEnabled:1 forCharacteristics:v13 onBehalfOf:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(context);
}

- (void)configureWithHome:(id)home coreDataAdapter:(id)adapter
{
  obj = home;
  adapterCopy = adapter;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    objc_storeWeak(&self->_home, obj);
  }

  workQueue = [obj workQueue];
  v9 = workQueue;
  if (self)
  {
    objc_setProperty_atomic(self, v8, workQueue, 64);

    Property = objc_getProperty(self, v10, 40, 1);
  }

  else
  {

    Property = 0;
  }

  v12 = Property;
  [v12 setDelegate:self];

  if (self)
  {
    v14 = objc_getProperty(self, v13, 64, 1);
    v16 = objc_getProperty(self, v15, 40, 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = v16;
  [v17 setDelegateQueue:v14];

  coreDataAdapter = self->_coreDataAdapter;
  self->_coreDataAdapter = adapterCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)configureWithHome:(id)home
{
  homeCopy = home;
  v5 = [[HMDNotificationRegistryCoreDataAdapter alloc] initWithHome:homeCopy];
  [(HMDNotificationRegistry *)self configureWithHome:homeCopy coreDataAdapter:v5];
}

- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)timer
{
  timerCopy = timer;
  v13.receiver = self;
  v13.super_class = HMDNotificationRegistry;
  v6 = [(HMDNotificationRegistry *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pendingRequestsRetryTimer, timer);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = weakObjectsHashTable;

    v10 = [MEMORY[0x277CBEB58] set];
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v10;
  }

  return v7;
}

- (HMDNotificationRegistry)init
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:5.0];
  v4 = [(HMDNotificationRegistry *)self initWithPendingRequestsRetryTimer:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t84 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t84, &__block_literal_global_225_28777);
  }

  v3 = logCategory__hmf_once_v85;

  return v3;
}

void __38__HMDNotificationRegistry_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v85;
  logCategory__hmf_once_v85 = v0;
}

@end