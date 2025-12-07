@interface HMDNotificationRegistry
+ (id)logCategory;
- (BOOL)disableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d;
- (BOOL)enableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d;
- (BOOL)removeRegistrationsForMediaProfile:(id)profile;
- (BOOL)setNotificationsEnabled:(BOOL)enabled forUserID:(id)d characteristicsPayload:(id)payload mediaPropertiesPayload:(id)propertiesPayload;
- (HMDNotificationRegistry)init;
- (HMDNotificationRegistry)initWithCoder:(id)coder;
- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)timer;
- (id)_createCharacteristicsMapForCharacteristics:(uint64_t)characteristics;
- (id)_reachabilityEventNotificationRegistryKeyForAccessoryUUID:(uint64_t)d;
- (id)_reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:(void *)ds;
- (id)filterCharacteristics:(id)characteristics forUser:(id)user;
- (id)filterProperties:(id)properties forUser:(id)user;
- (id)home;
- (id)keyForCharacteristic:(uint64_t)characteristic;
- (id)keyForProperty:(void *)property mediaProfile:;
- (id)logIdentifier;
- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier;
- (id)shortDescription;
- (id)userIDsRegisteredForReachabilityEventNotificationsForAccessoryUUIDs:(id)ds;
- (id)usersRegisteredForNotificationsForCharacteristics:(id)characteristics;
- (id)usersRegisteredForNotificationsForProperties:(id)properties;
- (os_unfair_lock)notificationRegistry;
- (uint64_t)_processCharacteristicsRequests:(void *)requests;
- (uint64_t)_processMediaPropertiesRequests:(void *)requests;
- (void)_addPendingRequests:(void *)requests;
- (void)addDelegate:(id)delegate;
- (void)auditUsersForNotifications:(id)notifications forHome:(id)home;
- (void)clearAllRegistrations;
- (void)configureWithHome:(id)home;
- (void)disableNotification:(void *)notification user:(void *)user home:;
- (void)encodeWithCoder:(id)coder;
- (void)notifyDelegatesIfKeysAreMediaRelated:(uint64_t)related;
- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(uint64_t)profiles;
- (void)removeAllReachabilityEventNotificationRegistrations;
- (void)removeRegistrationsForCharacteristics:(id)characteristics;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Pending requests retry timer fired", buf, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Processing %lu pending request(s)", buf, 0x16u);
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
                  _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Dropping pending request that is still around after %ld retries: %@", v52, 0x20u);
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
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@No pending requests to process", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }
}

- (uint64_t)_processCharacteristicsRequests:(void *)requests
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v84 = v3;
  if (requests && (v5 = v3, v6 = objc_getProperty(requests, v4, 64, 1), dispatch_assert_queue_V2(v6), [v5 count]))
  {
    requestsCopy = requests;
    v88 = [MEMORY[0x277CBEB58] set];
    v87 = +[HMDHAPMetadata getSharedInstance];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v84;
    v91 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
    if (v91)
    {
      v85 = 0;
      v89 = *v100;
      do
      {
        v7 = 0;
        do
        {
          if (*v100 != v89)
          {
            v8 = v7;
            objc_enumerationMutation(obj);
            v7 = v8;
          }

          v92 = v7;
          v9 = *(*(&v99 + 1) + 8 * v7);
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
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Processing characteristics request: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v94 = v9;
          Property = objc_getProperty(self, v13, 64, 1);
          dispatch_assert_queue_V2(Property);
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v16 = objc_getProperty(self, v15, 48, 1);
          v17 = objc_msgSend_copy(v16);
          v18 = [v17 countByEnumeratingWithState:&v103 objects:buf count:16];
          if (v18)
          {
            v19 = *v104;
            do
            {
              v20 = 0;
              do
              {
                if (*v104 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v103 + 1) + 8 * v20);
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
                  userID = [v23 userID];
                  userID2 = [v94 userID];
                  if ([userID isEqualToString:userID2])
                  {
                    accessoryUUID = [v23 accessoryUUID];
                    accessoryUUID2 = [v94 accessoryUUID];
                    v28 = [accessoryUUID isEqual:accessoryUUID2];

                    if (v28)
                    {
                      characteristicInstanceIDs = [v23 characteristicInstanceIDs];
                      characteristicInstanceIDs2 = [v94 characteristicInstanceIDs];
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
                          *v108 = 138543618;
                          v109 = v38;
                          v110 = 2112;
                          v111 = v23;
                          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Removing pending characteristics request that matches a new characteristics request: %@", v108, 0x16u);
                        }

                        objc_autoreleasePoolPop(v33);
                        [objc_getProperty(v34 v39];
                      }

                      else
                      {
                        if (v36)
                        {
                          v37 = HMFGetLogIdentifier();
                          *v108 = 138543618;
                          v109 = v37;
                          v110 = 2112;
                          v111 = v23;
                          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Updated pending characteristics request: %@", v108, 0x16u);
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
              v40 = [v17 countByEnumeratingWithState:&v103 objects:buf count:16];
              v18 = v40;
            }

            while (v40);
          }

          home = [(HMDNotificationRegistry *)self home];
          accessoryUUID3 = [v94 accessoryUUID];
          v43 = [home accessoryWithUUID:accessoryUUID3];

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
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v97[2] = __59__HMDNotificationRegistry__processCharacteristicsRequests___block_invoke;
            v97[3] = &unk_279723BA0;
            v97[4] = v94;
            v98 = v87;
            v46 = [v45 characteristicsPassingTest:v97];
            v47 = [v46 count];
            characteristicInstanceIDs4 = [v94 characteristicInstanceIDs];
            LOBYTE(v47) = v47 == [characteristicInstanceIDs4 count];

            if (v47)
            {
              enable = [v94 enable];
              userID3 = [v94 userID];
              if (enable)
              {
                v51 = v46;
                v52 = userID3;
                v53 = [(HMDNotificationRegistry *)self _createCharacteristicsMapForCharacteristics:v51];
                if ([v53 count])
                {
                  *&v103 = 0;
                  *(&v103 + 1) = &v103;
                  *&v104 = 0x2020000000;
                  BYTE8(v104) = 0;
                  os_unfair_lock_lock_with_options();
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __72__HMDNotificationRegistry_enableNotificationForCharacteristics_forUser___block_invoke;
                  v113 = &unk_279723AD8;
                  *&v114 = self;
                  *(&v114 + 1) = v52;
                  v115 = &v103;
                  [v53 enumerateKeysAndObjectsUsingBlock:buf];

                  os_unfair_lock_unlock(self + 2);
                  v54 = *(*(&v103 + 1) + 24);
                  _Block_object_dispose(&v103, 8);
                }

                else
                {
                  v54 = 0;
                }

                userID4 = [v94 userID];
                if (v54)
                {
                  v70 = objc_autoreleasePoolPush();
                  v71 = self;
                  v72 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
                  {
                    v95 = HMFGetLogIdentifier();
                    name = [v45 name];
                    uuid = [v45 uuid];
                    uUIDString = [uuid UUIDString];
                    *buf = 138544130;
                    *&buf[4] = v95;
                    *&buf[12] = 2112;
                    *&buf[14] = name;
                    *&buf[22] = 2112;
                    v113 = uUIDString;
                    LOWORD(v114) = 2112;
                    *(&v114 + 2) = v51;
                    _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for accessory %@/%@ characteristics %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v70);
                  [v45 setNotificationsEnabled:1 forCharacteristics:v51 clientIdentifier:userID4];
                  [v45 updateNotificationEnabled:1 forCharacteristics:v51 onBehalfOf:userID4];
                  v85 = 1;
                }

                else
                {
                  v85 = 0;
                }
              }

              else
              {
                v63 = v46;
                v64 = userID3;
                v65 = [(HMDNotificationRegistry *)self _createCharacteristicsMapForCharacteristics:v63];
                if ([v65 count])
                {
                  array = [MEMORY[0x277CBEB18] array];
                  *&v103 = 0;
                  *(&v103 + 1) = &v103;
                  *&v104 = 0x2020000000;
                  BYTE8(v104) = 0;
                  os_unfair_lock_lock_with_options();
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __104__HMDNotificationRegistry_disableNotificationForCharacteristics_forUser_characteristicsToDisableEvents___block_invoke;
                  v113 = &unk_279723B00;
                  *&v114 = self;
                  *(&v114 + 1) = v64;
                  v67 = array;
                  v115 = v67;
                  v116 = &v103;
                  [v65 enumerateKeysAndObjectsUsingBlock:buf];

                  os_unfair_lock_unlock(self + 2);
                  v68 = v67;
                  v85 = *(*(&v103 + 1) + 24);
                  _Block_object_dispose(&v103, 8);
                }

                else
                {
                  v85 = 0;
                  v67 = MEMORY[0x277CBEBF8];
                }

                userID4 = v67;
                userID5 = [v94 userID];
                if (v85)
                {
                  v77 = objc_autoreleasePoolPush();
                  v78 = self;
                  v79 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                  {
                    v96 = HMFGetLogIdentifier();
                    name2 = [v45 name];
                    uuid2 = [v45 uuid];
                    uUIDString2 = [uuid2 UUIDString];
                    *buf = 138544130;
                    *&buf[4] = v96;
                    *&buf[12] = 2112;
                    *&buf[14] = name2;
                    *&buf[22] = 2112;
                    v113 = uUIDString2;
                    LOWORD(v114) = 2112;
                    *(&v114 + 2) = userID4;
                    _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for accessory %@/%@ characteristics %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v77);
                  [v45 setNotificationsEnabled:0 forCharacteristics:userID4 clientIdentifier:userID5];
                  if ([userID4 count])
                  {
                    [v45 updateNotificationEnabled:0 forCharacteristics:userID4 onBehalfOf:userID5];
                  }
                }
              }
            }

            else
            {
              v59 = objc_autoreleasePoolPush();
              v60 = self;
              v61 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                v62 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v62;
                *&buf[12] = 2112;
                *&buf[14] = v94;
                _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Cannot find all characteristics for request so adding to pending requests: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v59);
              [v88 addObject:v94];
            }
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
              *&buf[14] = v94;
              _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Cannot find accessory for characteristics request so adding to pending requests: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v55);
            [v88 addObject:v94];
          }

          v7 = v92 + 1;
        }

        while (v92 + 1 != v91);
        v91 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
      }

      while (v91);
    }

    else
    {
      v85 = 0;
    }

    [(HMDNotificationRegistry *)requestsCopy _addPendingRequests:v88];
  }

  else
  {
    v85 = 0;
  }

  return v85 & 1;
}

- (uint64_t)_processMediaPropertiesRequests:(void *)requests
{
  v126 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v91 = v3;
  if (!requests || (v5 = v3, Property = objc_getProperty(requests, v4, 64, 1), dispatch_assert_queue_V2(Property), ![v5 count]))
  {
    v95 = 0;
    goto LABEL_89;
  }

  requestsCopy = requests;
  v93 = [MEMORY[0x277CBEB58] set];
  v92 = [MEMORY[0x277CBEB58] set];
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v91;
  v98 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
  if (!v98)
  {
    v95 = 0;
    goto LABEL_86;
  }

  v95 = 0;
  v96 = *v108;
  do
  {
    v7 = 0;
    do
    {
      if (*v108 != v96)
      {
        v8 = v7;
        objc_enumerationMutation(obj);
        v7 = v8;
      }

      v99 = v7;
      v9 = *(*(&v107 + 1) + 8 * v7);
      v10 = objc_autoreleasePoolPush();
      self = requestsCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v121 = v12;
        v122 = 2112;
        v123 = v9;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Processing media properties request: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v13 = v9;
      v15 = objc_getProperty(self, v14, 64, 1);
      dispatch_assert_queue_V2(v15);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v17 = objc_getProperty(self, v16, 48, 1);
      v104 = objc_msgSend_copy(v17);
      v18 = [v104 countByEnumeratingWithState:&v111 objects:buf count:16];
      if (v18)
      {
        v19 = *v112;
        do
        {
          v20 = 0;
          do
          {
            if (*v112 != v19)
            {
              objc_enumerationMutation(v104);
            }

            v21 = *(*(&v111 + 1) + 8 * v20);
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
              userID = [v23 userID];
              userID2 = [v13 userID];
              if ([userID isEqualToString:userID2])
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
                      *v116 = 138543618;
                      v117 = v38;
                      v118 = 2112;
                      v119 = v23;
                      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Removing pending media properties request that matches a new media properties request: %@", v116, 0x16u);
                    }

                    objc_autoreleasePoolPop(v33);
                    [objc_getProperty(v34 v39];
                  }

                  else
                  {
                    if (v36)
                    {
                      v37 = HMFGetLogIdentifier();
                      *v116 = 138543618;
                      v117 = v37;
                      v118 = 2112;
                      v119 = v23;
                      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Updated pending media properties request: %@", v116, 0x16u);
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
          v40 = [v104 countByEnumeratingWithState:&v111 objects:buf count:16];
          v18 = v40;
        }

        while (v40);
      }

      home = [(HMDNotificationRegistry *)self home];
      mediaProfileUUID3 = [v13 mediaProfileUUID];
      v100 = [home mediaProfileWithUUID:mediaProfileUUID3];

      if (!v100)
      {
        v66 = objc_autoreleasePoolPush();
        v67 = self;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          v69 = HMFGetLogIdentifier();
          *buf = 138543618;
          v121 = v69;
          v122 = 2112;
          v123 = v13;
          _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@Cannot find media profile for media properties request so adding to pending requests: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v66);
        [v93 addObject:v13];
        goto LABEL_81;
      }

      mediaProperties4 = [v13 mediaProperties];
      v44 = [mediaProperties4 count] == 0;

      if (v44)
      {
        v70 = objc_autoreleasePoolPush();
        v71 = self;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543618;
          v121 = v73;
          v122 = 2112;
          v123 = v13;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_INFO, "%{public}@No media properties exist for request: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
        goto LABEL_81;
      }

      enable = [v13 enable];
      v46 = objc_autoreleasePoolPush();
      v47 = self;
      v48 = HMFGetOSLogHandle();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
      if (enable)
      {
        if (v49)
        {
          v50 = HMFGetLogIdentifier();
          mediaProperties5 = [v13 mediaProperties];
          *buf = 138543874;
          v121 = v50;
          v122 = 2112;
          v123 = v100;
          v124 = 2112;
          v125 = mediaProperties5;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Enabling notification for media profile: %@ media properties: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
        mediaProperties6 = [v13 mediaProperties];
        userID3 = [v13 userID];
        v54 = v100;
        v55 = mediaProperties6;
        v56 = userID3;
        v105 = v55;
        if ([v55 count])
        {
          selfa = v47 + 2;
          os_unfair_lock_lock_with_options();
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v105 = v55;
          v57 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
          if (v57)
          {
            v58 = 0;
            v59 = *v112;
            do
            {
              for (i = 0; i != v57; ++i)
              {
                if (*v112 != v59)
                {
                  objc_enumerationMutation(v105);
                }

                v61 = [(HMDNotificationRegistry *)v47 keyForProperty:v54 mediaProfile:?];
                notificationRegistry = [(HMDNotificationRegistry *)v47 notificationRegistry];
                v63 = [notificationRegistry objectForKeyedSubscript:v61];

                if (!v63)
                {
                  v63 = [MEMORY[0x277CBEB58] set];
                  notificationRegistry2 = [(HMDNotificationRegistry *)v47 notificationRegistry];
                  [notificationRegistry2 setObject:v63 forKeyedSubscript:v61];
                }

                if (([v63 containsObject:{v56, v91}] & 1) == 0)
                {
                  [v63 addObject:v56];
                  v58 = 1;
                }
              }

              v57 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
            }

            while (v57);

            os_unfair_lock_unlock(selfa);
            if ((v58 & 1) == 0)
            {
              goto LABEL_50;
            }

LABEL_74:
            uniqueIdentifier = [v100 uniqueIdentifier];
            [v92 addObject:uniqueIdentifier];
            v65 = 1;

            goto LABEL_80;
          }

          os_unfair_lock_unlock(selfa);
        }

        else
        {
        }

LABEL_79:
        v65 = 0;

        goto LABEL_80;
      }

      if (v49)
      {
        v74 = HMFGetLogIdentifier();
        mediaProperties7 = [v13 mediaProperties];
        *buf = 138543874;
        v121 = v74;
        v122 = 2112;
        v123 = v100;
        v124 = 2112;
        v125 = mediaProperties7;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Disabling notification for media profile: %@ media properties: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v46);
      mediaProperties8 = [v13 mediaProperties];
      userID4 = [v13 userID];
      v78 = v100;
      v79 = mediaProperties8;
      v80 = userID4;
      v105 = v79;
      if (![v79 count])
      {

        goto LABEL_79;
      }

      selfb = v47 + 2;
      os_unfair_lock_lock_with_options();
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v105 = v79;
      v81 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
      if (!v81)
      {

        os_unfair_lock_unlock(selfb);
        goto LABEL_79;
      }

      v82 = 0;
      v83 = *v112;
      do
      {
        for (j = 0; j != v81; ++j)
        {
          if (*v112 != v83)
          {
            objc_enumerationMutation(v105);
          }

          v85 = [(HMDNotificationRegistry *)v47 keyForProperty:v78 mediaProfile:?];
          notificationRegistry3 = [(HMDNotificationRegistry *)v47 notificationRegistry];
          v87 = [notificationRegistry3 objectForKeyedSubscript:v85];

          if (v87)
          {
            if (!v80)
            {
              goto LABEL_69;
            }

            if (![v87 containsObject:v80])
            {
              goto LABEL_71;
            }

            [v87 removeObject:v80];
            if (![v87 count])
            {
LABEL_69:
              notificationRegistry4 = [(HMDNotificationRegistry *)v47 notificationRegistry];
              [notificationRegistry4 removeObjectForKey:v85];
            }

            v82 = 1;
          }

LABEL_71:
        }

        v81 = [v105 countByEnumeratingWithState:&v111 objects:buf count:16];
      }

      while (v81);

      os_unfair_lock_unlock(selfb);
      if (v82)
      {
        goto LABEL_74;
      }

LABEL_50:
      v65 = 0;
LABEL_80:
      v95 |= v65;
LABEL_81:

      v7 = v99 + 1;
    }

    while (v99 + 1 != v98);
    v98 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
  }

  while (v98);
LABEL_86:

  [(HMDNotificationRegistry *)requestsCopy _addPendingRequests:v93];
  if ([v92 count])
  {
    allObjects = [v92 allObjects];
    [(HMDNotificationRegistry *)requestsCopy notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
  }

LABEL_89:
  return v95 & 1;
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Resuming pending requests timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [objc_getProperty(requestsCopy v11];
  }
}

- (void)notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:(uint64_t)profiles
{
  v3 = a2;
  if (profiles)
  {
    os_unfair_lock_lock_with_options();
    v4 = objc_msgSend_copy(*(profiles + 24));
    os_unfair_lock_unlock((profiles + 8));
    allObjects = [v4 allObjects];

    objc_initWeak(&location, profiles);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__HMDNotificationRegistry_notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles___block_invoke;
    v6[3] = &unk_279723BC8;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [allObjects na_each:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
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
    block[3] = &unk_279732670;
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@About to notify delegate of mediaPropertyRegistrationsDidChange %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) mediaPropertyRegistrationsDidChangeForMediaProfiles:*(a1 + 40)];
}

- (id)keyForProperty:(void *)property mediaProfile:
{
  if (self)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = a2;
    uniqueIdentifier = [property uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v8 = [v4 stringWithFormat:@"%@:%@", uUIDString, v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (os_unfair_lock)notificationRegistry
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_assert_owner(self + 2);
    self = *&selfCopy[4]._os_unfair_lock_opaque;
    v1 = vars8;
  }

  return self;
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

- (id)_createCharacteristicsMapForCharacteristics:(uint64_t)characteristics
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v3 = +[HMDHAPMetadata getSharedInstance];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          type = [v9 type];
          service = [v9 service];
          type2 = [service type];
          v13 = [v3 shouldFilterEnableNotificationsForCharacteristicType:type serviceType:type2];

          if ((v13 & 1) == 0)
          {
            v14 = [(HMDNotificationRegistry *)characteristics keyForCharacteristic:v9];
            if (v14)
            {
              [v18 setObject:v9 forKeyedSubscript:v14];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v15 = objc_msgSend_copy(v18);
    v2 = v17;
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  return v15;
}

void __104__HMDNotificationRegistry_disableNotificationForCharacteristics_forUser_characteristicsToDisableEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v7 = [v6 objectForKeyedSubscript:v9];

  if ([v7 containsObject:*(a1 + 40)])
  {
    [v7 removeObject:*(a1 + 40)];
    [*(a1 + 48) addObject:v5];
    if (![v7 count])
    {
      v8 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
      [v8 removeObjectForKey:v9];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)keyForCharacteristic:(uint64_t)characteristic
{
  v3 = a2;
  v4 = v3;
  if (characteristic)
  {
    accessory = [v3 accessory];
    v6 = accessory;
    if (accessory)
    {
      v7 = MEMORY[0x277CCACA8];
      uuid = [accessory uuid];
      uUIDString = [uuid UUIDString];
      instanceID = [v4 instanceID];
      stringValue = [instanceID stringValue];
      v12 = [v7 stringWithFormat:@"%@:%@", uUIDString, stringValue];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __72__HMDNotificationRegistry_enableNotificationForCharacteristics_forUser___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v4 addObject:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@adding delegate %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)selfCopy->_delegates addObject:delegateCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock_with_options();
  v5 = MEMORY[0x277CBEB38];
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(notificationRegistry, "count")}];

  notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HMDNotificationRegistry_encodeWithCoder___block_invoke;
  v10[3] = &unk_279723B50;
  v9 = v7;
  v11 = v9;
  [notificationRegistry2 enumerateKeysAndObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_lock);
  [coderCopy encodeObject:v9 forKey:@"notificationAndUsersRegistry"];
}

void __43__HMDNotificationRegistry_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_msgSend_copy(a3);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (HMDNotificationRegistry)initWithCoder:(id)coder
{
  v27[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21 = [(HMDNotificationRegistry *)self init];
  if (v21)
  {
    v5 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v7 = [v5 setWithArray:v6];

    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"notificationAndUsersRegistry"];
    if (!v8)
    {
      v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"characteristicNotificationAndUsersRegistry"];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [v8 allKeys];
    v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = MEMORY[0x277CBEB58];
          allObjects = [v14 allObjects];
          v17 = [v15 setWithArray:allObjects];
          [(NSMutableDictionary *)v21->_notificationRegistry setObject:v17 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  return v21;
}

- (BOOL)setNotificationsEnabled:(BOOL)enabled forUserID:(id)d characteristicsPayload:(id)payload mediaPropertiesPayload:(id)propertiesPayload
{
  enabledCopy = enabled;
  v113 = *MEMORY[0x277D85DE8];
  dCopy = d;
  payloadCopy = payload;
  propertiesPayloadCopy = propertiesPayload;
  if (self)
  {
    Property = objc_getProperty(self, v10, 64, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v94 = selfCopy;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    *buf = 138543874;
    v108 = v15;
    v109 = 2112;
    v110 = v16;
    v111 = 2112;
    v112 = dCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting notifications enabled to %@ for userID: %@", buf, 0x20u);

    selfCopy = v94;
  }

  objc_autoreleasePoolPop(v12);
  v89 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(payloadCopy, "count")}];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v17 = payloadCopy;
  v18 = [v17 countByEnumeratingWithState:&v101 objects:v106 count:16];
  v87 = v17;
  if (v18)
  {
    v19 = v18;
    v95 = *v102;
    do
    {
      v20 = 0;
      v90 = v19;
      do
      {
        if (*v102 != v95)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v101 + 1) + 8 * v20);
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
          v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
          v25 = v24;
          if (v24)
          {
            uUIDString = [v24 UUIDString];
            v27 = [v17 objectForKeyedSubscript:uUIDString];

            v28 = v27;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = v28;
            }

            else
            {
              v29 = 0;
            }

            v30 = v29;

            if (v30)
            {
              v31 = [[HMDNotificationRegistryCharacteristicsRequest alloc] initWithEnable:enabledCopy userID:dCopy accessoryUUID:v25];
              characteristicInstanceIDs = [(HMDNotificationRegistryCharacteristicsRequest *)v31 characteristicInstanceIDs];
              [characteristicInstanceIDs addObjectsFromArray:v30];

              [v89 addObject:v31];
            }

            else
            {
              v43 = objc_autoreleasePoolPush();
              v44 = selfCopy;
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = HMFGetLogIdentifier();
                v47 = objc_opt_class();
                *buf = 138543874;
                v108 = v46;
                v109 = 2112;
                v110 = v28;
                v111 = 2112;
                v112 = v47;
                v48 = v47;
                _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload value that is not an array: %@)%@)", buf, 0x20u);

                selfCopy = v94;
              }

              objc_autoreleasePoolPop(v43);
              v17 = v87;
              v19 = v90;
            }
          }

          else
          {
            v39 = objc_autoreleasePoolPush();
            v40 = selfCopy;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v108 = v42;
              v109 = 2112;
              v110 = v23;
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Ignoring accessory UUID string that cannot be converted in a UUID: %@", buf, 0x16u);

              selfCopy = v94;
            }

            objc_autoreleasePoolPop(v39);
          }
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            v37 = objc_opt_class();
            *buf = 138543874;
            v108 = v36;
            v109 = 2112;
            v110 = v21;
            v111 = 2112;
            v112 = v37;
            v38 = v37;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration characteristics payload key that is not a string: %@ (%@)", buf, 0x20u);

            selfCopy = v94;
          }

          objc_autoreleasePoolPop(v33);
        }

        ++v20;
      }

      while (v19 != v20);
      v19 = [v17 countByEnumeratingWithState:&v101 objects:v106 count:16];
    }

    while (v19);
  }

  v88 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(propertiesPayloadCopy, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v49 = propertiesPayloadCopy;
  v96 = [v49 countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v96)
  {
    v50 = *v98;
    v91 = *v98;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v98 != v50)
        {
          objc_enumerationMutation(v49);
        }

        v52 = *(*(&v97 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        v54 = v53;

        if (v54)
        {
          v55 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v54];
          v56 = v55;
          if (v55)
          {
            uUIDString2 = [v55 UUIDString];
            v58 = v49;
            v59 = [v49 objectForKeyedSubscript:uUIDString2];

            v60 = v59;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            v62 = v61;

            if (v62)
            {
              v63 = [[HMDNotificationRegistryMediaPropertiesRequest alloc] initWithEnable:enabledCopy userID:dCopy mediaProfileUUID:v56];
              mediaProperties = [(HMDNotificationRegistryMediaPropertiesRequest *)v63 mediaProperties];
              [mediaProperties addObjectsFromArray:v62];

              [v88 addObject:v63];
            }

            else
            {
              v75 = objc_autoreleasePoolPush();
              v76 = selfCopy;
              v77 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = HMFGetLogIdentifier();
                v79 = objc_opt_class();
                *buf = 138543874;
                v108 = v78;
                v109 = 2112;
                v110 = v60;
                v111 = 2112;
                v112 = v79;
                v86 = v75;
                v80 = v79;
                _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload value that is not an array: %@ (%@)", buf, 0x20u);

                v75 = v86;
              }

              objc_autoreleasePoolPop(v75);
              selfCopy = v94;
            }

            v49 = v58;
            v50 = v91;
          }

          else
          {
            v71 = objc_autoreleasePoolPush();
            v72 = selfCopy;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              v108 = v74;
              v109 = 2112;
              v110 = v54;
              _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Ignoring media profile UUID string that cannot be converted in a UUID: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v71);
            selfCopy = v94;
          }
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          v66 = selfCopy;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = HMFGetLogIdentifier();
            v69 = objc_opt_class();
            *buf = 138543874;
            v108 = v68;
            v109 = 2112;
            v110 = v52;
            v111 = 2112;
            v112 = v69;
            v70 = v69;
            _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Ignoring notification registration media properties payload key that is not a string: %@ (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v65);
        }
      }

      v96 = [v49 countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v96);
  }

  home = [(HMDNotificationRegistry *)&selfCopy->super.super.isa home];
  v82 = [(HMDNotificationRegistry *)selfCopy _processCharacteristicsRequests:v89];
  v83 = v82 | [(HMDNotificationRegistry *)selfCopy _processMediaPropertiesRequests:v88];
  if (v83)
  {
    [home saveToCurrentAccountWithReason:@"kModifyCharacterisiticNotificationsRequestKey"];
  }

  return v83 & 1;
}

- (void)removeAllReachabilityEventNotificationRegistrations
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  allKeys = [notificationRegistry allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 containsString:@":ReachabilityEventNotification"])
        {
          notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
          [notificationRegistry2 setObject:0 forKeyedSubscript:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)userIDsRegisteredForReachabilityEventNotificationsForAccessoryUUIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(HMDNotificationRegistry *)self _reachabilityEventNotificationRegistryKeyForAccessoryUUID:?];
        notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
        v12 = [notificationRegistry objectForKeyedSubscript:{v10, v15}];

        if (v12)
        {
          [v5 unionSet:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = objc_msgSend_copy(v5);

  return v13;
}

- (id)_reachabilityEventNotificationRegistryKeyForAccessoryUUID:(uint64_t)d
{
  if (d)
  {
    v2 = MEMORY[0x277CCACA8];
    uUIDString = [a2 UUIDString];
    v4 = [v2 stringWithFormat:@"%@%@", uUIDString, @":ReachabilityEventNotification"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)disableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v8 = [(HMDNotificationRegistry *)self _reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:dsCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HMDNotificationRegistry_disableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke;
  v11[3] = &unk_279723B78;
  v11[4] = self;
  v9 = dCopy;
  v12 = v9;
  v13 = &v14;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

- (id)_reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:(void *)ds
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (ds)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(HMDNotificationRegistry *)ds _reachabilityEventNotificationRegistryKeyForAccessoryUUID:?];
          [v4 addObject:{v10, v12}];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    ds = objc_msgSend_copy(v4);
  }

  return ds;
}

void __91__HMDNotificationRegistry_disableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (v4)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_5;
    }

    if (![v4 containsObject:?])
    {
      goto LABEL_7;
    }

    [v4 removeObject:*(a1 + 40)];
    if (![v4 count])
    {
LABEL_5:
      v5 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
      [v5 setObject:0 forKeyedSubscript:v6];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_7:
}

- (BOOL)enableReachabilityEventNotificationForAccessoryUUIDs:(id)ds forUserID:(id)d
{
  dsCopy = ds;
  dCopy = d;
  v8 = [(HMDNotificationRegistry *)self _reachabilityEventNotificationRegistryKeysForAccessoryUUIDs:dsCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HMDNotificationRegistry_enableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke;
  v11[3] = &unk_279723B78;
  v11[4] = self;
  v9 = dCopy;
  v12 = v9;
  v13 = &v14;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return self;
}

void __90__HMDNotificationRegistry_enableReachabilityEventNotificationForAccessoryUUIDs_forUserID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [(HMDNotificationRegistry *)*(a1 + 32) notificationRegistry];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v4 addObject:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
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

- (void)auditUsersForNotifications:(id)notifications forHome:(id)home
{
  v77 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  homeCopy = home;
  v46 = isiOSDevice();
  v5 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v5 isResidentCapable];

  v6 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __62__HMDNotificationRegistry_auditUsersForNotifications_forHome___block_invoke;
  v53[3] = &unk_279723B50;
  v36 = v6;
  v54 = v36;
  [notificationRegistry enumerateKeysAndObjectsUsingBlock:v53];

  [v36 minusSet:notificationsCopy];
  if ([v36 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v10;
      v75 = 2112;
      v76 = v36;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Users %@ are not associated with this phone anymore. Deregistering them from notification registry", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = v36;
    v43 = homeCopy;
    if (self)
    {
      os_unfair_lock_assert_owner(&self->_lock);
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
      obj = [notificationRegistry2 allKeys];

      v41 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
      if (v41)
      {
        v40 = *v64;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v64 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v63 + 1) + 8 * i);
            notificationRegistry3 = [(HMDNotificationRegistry *)self notificationRegistry];
            v47 = v13;
            v48 = [notificationRegistry3 objectForKeyedSubscript:v13];

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v15 = objc_msgSend_copy(v48);
            v16 = [v15 countByEnumeratingWithState:&v59 objects:v72 count:16];
            if (v16)
            {
              v17 = *v60;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v60 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v59 + 1) + 8 * j);
                  v20 = IDSCopyRawAddressForDestination();
                  if (([v11 containsObject:v20] & 1) != 0 || objc_msgSend(v11, "containsObject:", v19))
                  {
                    v21 = objc_autoreleasePoolPush();
                    v22 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      v23 = HMFGetLogIdentifier();
                      *v68 = 138543874;
                      *&v68[4] = v23;
                      *&v68[12] = 2112;
                      *&v68[14] = v19;
                      *&v68[22] = 2112;
                      v69 = v47;
                      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Removing user %@ from notification registry for acc-uuid:iid %@", v68, 0x20u);
                    }

                    objc_autoreleasePoolPop(v21);
                    [v48 removeObject:v19];
                    if (v46)
                    {
                      aBlock[0] = MEMORY[0x277D85DD0];
                      aBlock[1] = 3221225472;
                      aBlock[2] = __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke;
                      aBlock[3] = &unk_279734870;
                      aBlock[4] = self;
                      aBlock[5] = v47;
                      aBlock[6] = v19;
                      v58 = v43;
                      v24 = _Block_copy(aBlock);
                      [array addObject:v24];
                    }
                  }
                }

                v16 = [v15 countByEnumeratingWithState:&v59 objects:v72 count:16];
              }

              while (v16);
            }

            if (![v48 count])
            {
              if (isResidentCapable)
              {
                v55[0] = MEMORY[0x277D85DD0];
                v55[1] = 3221225472;
                v55[2] = __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke_2;
                v55[3] = &unk_279734960;
                v55[4] = self;
                v55[5] = v47;
                v56 = v43;
                v25 = _Block_copy(v55);
                [array addObject:v25];
              }

              [array2 addObject:{v47, homeCopy}];
              notificationRegistry4 = [(HMDNotificationRegistry *)self notificationRegistry];
              [notificationRegistry4 removeObjectForKey:v47];
            }
          }

          v41 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
        }

        while (v41);
      }

      *v68 = MEMORY[0x277D85DD0];
      *&v68[8] = 3221225472;
      *&v68[16] = __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke_3;
      v69 = &unk_2797359B0;
      selfCopy = self;
      v71 = array2;
      v27 = array2;
      v28 = _Block_copy(v68);
      [array addObject:v28];

      v29 = objc_msgSend_copy(array);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v49 objects:v67 count:16];
  if (v31)
  {
    v32 = *v50;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v30);
        }

        (*(*(*(&v49 + 1) + 8 * k) + 16))();
      }

      v31 = [v30 countByEnumeratingWithState:&v49 objects:v67 count:16];
    }

    while (v31);
  }
}

void __99__HMDNotificationRegistry__delayedBlocksCollectedWhileDeregisteringUsers_forHome_isiOS_isResident___block_invoke_3(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_copy(*(a1 + 40), a2);
  [(HMDNotificationRegistry *)v3 notifyDelegatesIfKeysAreMediaRelated:v4];
}

- (void)notifyDelegatesIfKeysAreMediaRelated:(uint64_t)related
{
  if (related)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [a2 na_map:&__block_literal_global_20604];
    v6 = [v3 setWithArray:v4];

    if ([v6 count])
    {
      allObjects = [v6 allObjects];
      [(HMDNotificationRegistry *)related notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:allObjects];
    }
  }
}

id __64__HMDNotificationRegistry_notifyDelegatesIfKeysAreMediaRelated___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@":"];
  if ([v2 count] == 2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = [v2 objectAtIndexedSubscript:0];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)disableNotification:(void *)notification user:(void *)user home:
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  notificationCopy = notification;
  userCopy = user;
  if (self)
  {
    v10 = [v7 componentsSeparatedByString:@":"];
    if ([v10 count] == 2)
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = [v10 objectAtIndexedSubscript:0];
      v13 = [v11 initWithUUIDString:v12];

      v14 = [userCopy accessoryWithUUID:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = [v10 objectAtIndexedSubscript:1];
        v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue")}];

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __57__HMDNotificationRegistry_disableNotification_user_home___block_invoke;
        v26[3] = &unk_279733D48;
        v20 = v19;
        v27 = v20;
        v21 = [v16 characteristicsPassingTest:v26];
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v24 = v25 = v13;
          *buf = 138543874;
          v29 = v24;
          v30 = 2112;
          v31 = notificationCopy;
          v32 = 2112;
          v33 = v21;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Deregistering client %@ for notification for characteristics %@", buf, 0x20u);

          v13 = v25;
        }

        objc_autoreleasePoolPop(v22);
        [v16 setNotificationsEnabled:0 forCharacteristics:v21 clientIdentifier:notificationCopy];
      }
    }
  }
}

uint64_t __57__HMDNotificationRegistry_disableNotification_user_home___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 instanceID];
  v4 = [v2 isEqualToNumber:v3];

  return v4;
}

- (id)usersRegisteredForNotificationsForProperties:(id)properties
{
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v18 = [MEMORY[0x277CBEB58] set];
  if ([propertiesCopy count])
  {
    v16 = 8;
    os_unfair_lock_lock_with_options();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = propertiesCopy;
    v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          request = [*(*(&v20 + 1) + 8 * i) request];
          property = [request property];
          mediaProfile = [request mediaProfile];
          if (mediaProfile)
          {
            v10 = [(HMDNotificationRegistry *)self keyForProperty:property mediaProfile:mediaProfile];
            notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
            v12 = [notificationRegistry objectForKeyedSubscript:v10];

            if (v12)
            {
              allObjects = [v12 allObjects];
              [v18 addObjectsFromArray:allObjects];
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }

    os_unfair_lock_unlock((self + v16));
  }

  v14 = objc_msgSend_copy(v18, v16);

  return v14;
}

- (id)usersRegisteredForNotificationsForCharacteristics:(id)characteristics
{
  v21 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = [MEMORY[0x277CBEB58] set];
  if ([characteristicsCopy count])
  {
    os_unfair_lock_lock_with_options();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = characteristicsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(HMDNotificationRegistry *)self keyForCharacteristic:?];
          notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
          v12 = [notificationRegistry objectForKeyedSubscript:v10];

          if (v12)
          {
            allObjects = [v12 allObjects];
            [v5 addObjectsFromArray:allObjects];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v14 = objc_msgSend_copy(v5);

  return v14;
}

- (id)propertiesRegisteredForMediaProfileUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HMDNotificationRegistry_propertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke;
  v9[3] = &unk_279723B28;
  v6 = identifierCopy;
  v10 = v6;
  v7 = [notificationRegistry na_map:v9];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

id __79__HMDNotificationRegistry_propertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@":"];
  if ([v3 count] == 2)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v4 initWithUUIDString:v5];

    v7 = [*(a1 + 32) hmf_isEqualToUUID:v6];
    v8 = 0;
    if (v7)
    {
      v8 = [v3 objectAtIndexedSubscript:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)filterProperties:(id)properties forUser:(id)user
{
  v29 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  userCopy = user;
  v19 = propertiesCopy;
  if ([propertiesCopy count])
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
    v18 = 8;
    os_unfair_lock_lock_with_options();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = propertiesCopy;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          request = [v9 request];
          property = [request property];
          mediaProfile = [request mediaProfile];
          if (mediaProfile)
          {
            v13 = [(HMDNotificationRegistry *)self keyForProperty:property mediaProfile:mediaProfile];
            notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
            v15 = [notificationRegistry objectForKeyedSubscript:v13];

            if ([v15 containsObject:userCopy])
            {
              [v20 addObject:v9];
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock((self + v18));
    v16 = objc_msgSend_copy(v20);
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (id)filterCharacteristics:(id)characteristics forUser:(id)user
{
  v25 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  userCopy = user;
  v18 = characteristicsCopy;
  if ([characteristicsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock_with_options();
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = characteristicsCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(HMDNotificationRegistry *)self keyForCharacteristic:v12];
          if (v13)
          {
            notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
            v15 = [notificationRegistry objectForKeyedSubscript:v13];

            if ([v15 containsObject:userCopy])
            {
              [array addObject:v12];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock(&self->_lock);
    v16 = objc_msgSend_copy(array);
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (BOOL)removeRegistrationsForMediaProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  os_unfair_lock_lock_with_options();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  allKeys = [notificationRegistry allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v7)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_16;
  }

  v8 = 0;
  v9 = *v21;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      if (self)
      {
        uniqueIdentifier = [profileCopy uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        if (uUIDString)
        {
          v14 = [v11 hasPrefix:uUIDString];

          if (!v14)
          {
            continue;
          }

          notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
          [notificationRegistry2 removeObjectForKey:v11];
          v8 = 1;
          v11 = notificationRegistry2;
        }
      }
    }

    v7 = [allKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
  }

  while (v7);

  os_unfair_lock_unlock(&self->_lock);
  if ((v8 & 1) == 0)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  uniqueIdentifier2 = [profileCopy uniqueIdentifier];
  v24 = uniqueIdentifier2;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [(HMDNotificationRegistry *)self notifyDelegatesOfMediaRegistryUpdatesForMediaProfiles:v17];

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)removeRegistrationsForCharacteristics:(id)characteristics
{
  v16 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  os_unfair_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = characteristicsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(HMDNotificationRegistry *)self keyForCharacteristic:?];
        if (v9)
        {
          notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
          [notificationRegistry setObject:0 forKeyedSubscript:{v9, v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)shortDescription
{
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  shortDescription = [notificationRegistry shortDescription];

  os_unfair_lock_unlock(&self->_lock);

  return shortDescription;
}

- (void)clearAllRegistrations
{
  os_unfair_lock_lock_with_options();
  notificationRegistry = [(HMDNotificationRegistry *)self notificationRegistry];
  allKeys = [notificationRegistry allKeys];

  notificationRegistry2 = [(HMDNotificationRegistry *)self notificationRegistry];
  [notificationRegistry2 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDNotificationRegistry *)self notifyDelegatesIfKeysAreMediaRelated:allKeys];
}

- (void)configureWithHome:(id)home
{
  obj = home;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    objc_storeWeak(&self->_home, obj);
  }

  workQueue = [obj workQueue];
  v6 = workQueue;
  if (self)
  {
    objc_setProperty_atomic(self, v5, workQueue, 64);

    Property = objc_getProperty(self, v7, 40, 1);
  }

  else
  {

    Property = 0;
  }

  v9 = Property;
  [v9 setDelegate:self];

  if (self)
  {
    v11 = objc_getProperty(self, v10, 64, 1);
    v13 = objc_getProperty(self, v12, 40, 1);
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = v13;
  [v14 setDelegateQueue:v11];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDNotificationRegistry)initWithPendingRequestsRetryTimer:(id)timer
{
  timerCopy = timer;
  v15.receiver = self;
  v15.super_class = HMDNotificationRegistry;
  v6 = [(HMDNotificationRegistry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pendingRequestsRetryTimer, timer);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    notificationRegistry = v7->_notificationRegistry;
    v7->_notificationRegistry = dictionary;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = weakObjectsHashTable;

    v12 = [MEMORY[0x277CBEB58] set];
    pendingRequests = v7->_pendingRequests;
    v7->_pendingRequests = v12;
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
  if (logCategory__hmf_once_t68 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68, &__block_literal_global_192);
  }

  v3 = logCategory__hmf_once_v69;

  return v3;
}

uint64_t __38__HMDNotificationRegistry_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v69;
  logCategory__hmf_once_v69 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end