@interface HMDAssistantGather
+ (id)logCategory;
- (HMDAssistantGather)initWithHomeManager:(id)manager queue:(id)queue;
- (HMDHomeManager)manager;
- (NSArray)homeKitObjects;
- (NSString)currentHomeAssistantIdentifier;
- (NSString)currentHomeName;
- (NSString)primaryHomeAssistantIdentifier;
- (NSString)primaryHomeName;
- (id)_getCurrentHome;
- (id)_getPrimaryHome;
- (int64_t)homeCount;
- (void)_gatherHomeKitObjects;
- (void)gatherHomeKitObjectsWithCompletion:(id)completion;
- (void)getSyncEntityObjectsWithCompletionHandler:(id)handler;
@end

@implementation HMDAssistantGather

- (HMDHomeManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)getSyncEntityObjectsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDAssistantGather *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAssistantGather_getSyncEntityObjectsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDAssistantGather_getSyncEntityObjectsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeKitObjects];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = entityFromObject(*(*(&v12 + 1) + 8 * v8), 1);
        v10 = v9;
        if (v9)
        {
          v11 = [v9 dictionary];
          [v3 addObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
}

- (NSArray)homeKitObjects
{
  currentHomekitObjects = [(HMDAssistantGather *)self currentHomekitObjects];
  v3 = objc_msgSend_copy(currentHomekitObjects);

  return v3;
}

- (void)gatherHomeKitObjectsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAssistantGather *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAssistantGather_gatherHomeKitObjectsWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMDAssistantGather_gatherHomeKitObjectsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _gatherHomeKitObjects];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) currentHomekitObjects];
    (*(v3 + 16))(v3, [v4 count]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_gatherHomeKitObjects
{
  v205 = *MEMORY[0x277D85DE8];
  v128 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.gather-home-objects"];
  array = [MEMORY[0x277CBEB18] array];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  selfCopy = self;
  manager = [(HMDAssistantGather *)self manager];
  homes = [manager homes];
  v6 = objc_msgSend_copy(homes);

  obj = v6;
  v131 = [v6 countByEnumeratingWithState:&v184 objects:v204 count:16];
  if (v131)
  {
    v130 = *v185;
    v136 = *MEMORY[0x277CCF1A8];
    do
    {
      v7 = 0;
      do
      {
        if (*v185 != v130)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v133 = v7;
        v9 = *(*(&v184 + 1) + 8 * v7);
        assistantObject = [v9 assistantObject];
        v132 = assistantObject;
        if (!assistantObject)
        {
          v117 = objc_autoreleasePoolPush();
          v118 = selfCopy;
          v119 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = HMFGetLogIdentifier();
            name = [v9 name];
            uuid = [v9 uuid];
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v193 = v120;
            v194 = 2112;
            v195 = name;
            v196 = 2112;
            v197 = uUIDString;
            _os_log_impl(&dword_2531F8000, v119, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create an assistant object for home %@/%@; skipping all objects in home", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v117);
          goto LABEL_133;
        }

        [array addObject:assistantObject];
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        accessories = [v9 accessories];
        v139 = [accessories countByEnumeratingWithState:&v180 objects:v203 count:16];
        v143 = v9;
        if (!v139)
        {
          goto LABEL_65;
        }

        v137 = *v181;
        do
        {
          v11 = 0;
          do
          {
            if (*v181 != v137)
            {
              objc_enumerationMutation(accessories);
            }

            v144 = v11;
            v12 = *(*(&v180 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }

            v14 = v13;

            if (v14)
            {
              mediaProfile = [v14 mediaProfile];

              if (mediaProfile)
              {
                mediaProfile2 = [v14 mediaProfile];
                assistantObject2 = [mediaProfile2 assistantObject];

                v18 = assistantObject2 != 0;
                if (assistantObject2)
                {
                  [array addObject:assistantObject2];
                }
              }

              else
              {
                v18 = 0;
              }

              v178 = 0u;
              v179 = 0u;
              v176 = 0u;
              v177 = 0u;
              services = [v14 services];
              v20 = [services countByEnumeratingWithState:&v176 objects:v202 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v177;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v177 != v22)
                    {
                      objc_enumerationMutation(services);
                    }

                    v24 = *(*(&v176 + 1) + 8 * i);
                    if (([v24 isHidden] & 1) == 0)
                    {
                      assistantObject3 = [v24 assistantObject];
                      if (assistantObject3)
                      {
                        [array addObject:assistantObject3];
                        v18 = 1;
                      }
                    }
                  }

                  v21 = [services countByEnumeratingWithState:&v176 objects:v202 count:16];
                }

                while (v21);
              }
            }

            else
            {
              v18 = 0;
            }

            v174 = 0u;
            v175 = 0u;
            v172 = 0u;
            v173 = 0u;
            cameraProfiles = [v14 cameraProfiles];
            v27 = [cameraProfiles countByEnumeratingWithState:&v172 objects:v201 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v173;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v173 != v29)
                  {
                    objc_enumerationMutation(cameraProfiles);
                  }

                  assistantObject4 = [*(*(&v172 + 1) + 8 * j) assistantObject];
                  if (assistantObject4)
                  {
                    [array addObject:assistantObject4];
                    v18 = 1;
                  }
                }

                v28 = [cameraProfiles countByEnumeratingWithState:&v172 objects:v201 count:16];
              }

              while (v28);
            }

            v32 = v12;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;

            v148 = v14;
            if (v34)
            {
              mediaProfile3 = [v34 mediaProfile];
              assistantObject5 = [mediaProfile3 assistantObject];

              if (assistantObject5)
              {
                [array addObject:assistantObject5];
                v18 = 1;
              }
            }

            v37 = v32;
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

            audioDestinationController = [v39 audioDestinationController];
            data = [audioDestinationController data];
            destinationIdentifier = [data destinationIdentifier];

            if (!destinationIdentifier)
            {
              goto LABEL_57;
            }

            home = [v39 home];
            name2 = [v39 name];
            v45 = [audioDestinationController assistantObjectWithHome:home name:name2];

            if (!v45)
            {
              v9 = v143;
LABEL_57:
              if (!v18)
              {
                goto LABEL_63;
              }

              goto LABEL_58;
            }

            [array addObject:v45];

            v9 = v143;
LABEL_58:
            hostAccessory = [v148 hostAccessory];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0 || !hostAccessory)
            {
              assistantObject6 = [v37 assistantObject];
              if (assistantObject6)
              {
                [array addObject:assistantObject6];
              }
            }

LABEL_63:

            v11 = v144 + 1;
          }

          while (v144 + 1 != v139);
          v139 = [accessories countByEnumeratingWithState:&v180 objects:v203 count:16];
        }

        while (v139);
LABEL_65:

        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        serviceGroups = [v9 serviceGroups];
        v50 = [serviceGroups countByEnumeratingWithState:&v168 objects:v200 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v169;
          v145 = serviceGroups;
          v140 = *v169;
          do
          {
            v53 = 0;
            v149 = v51;
            do
            {
              if (*v169 != v52)
              {
                objc_enumerationMutation(serviceGroups);
              }

              v54 = *(*(&v168 + 1) + 8 * v53);
              serviceUUIDs = [v54 serviceUUIDs];
              v56 = [serviceUUIDs count];

              if (v56)
              {
                assistantObject7 = [v54 assistantObject];
                if (assistantObject7)
                {
                  [array addObject:assistantObject7];
                }
              }

              else
              {
                v58 = objc_autoreleasePoolPush();
                v59 = selfCopy;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v61 = HMFGetLogIdentifier();
                  name3 = [v54 name];
                  name4 = [v143 name];
                  uuid2 = [v143 uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  *buf = 138544130;
                  v193 = v61;
                  v194 = 2112;
                  v195 = name3;
                  v196 = 2112;
                  v197 = name4;
                  v198 = 2112;
                  v199 = uUIDString2;
                  _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Dropping empty service group %@ in home %@/%@ from sync data", buf, 0x2Au);

                  serviceGroups = v145;
                  v52 = v140;

                  v51 = v149;
                }

                objc_autoreleasePoolPop(v58);
              }

              ++v53;
            }

            while (v51 != v53);
            v51 = [serviceGroups countByEnumeratingWithState:&v168 objects:v200 count:16];
          }

          while (v51);
        }

        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v66 = v143;
        rooms = [v143 rooms];
        v68 = [rooms countByEnumeratingWithState:&v164 objects:v191 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v165;
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v165 != v70)
              {
                objc_enumerationMutation(rooms);
              }

              assistantObject8 = [*(*(&v164 + 1) + 8 * k) assistantObject];
              if (assistantObject8)
              {
                [array addObject:assistantObject8];
              }
            }

            v69 = [rooms countByEnumeratingWithState:&v164 objects:v191 count:16];
          }

          while (v69);
        }

        roomForEntireHome = [v143 roomForEntireHome];
        assistantObject9 = [roomForEntireHome assistantObject];

        if (assistantObject9)
        {
          [array addObject:assistantObject9];
        }

        v138 = assistantObject9;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        zones = [v143 zones];
        v76 = [zones countByEnumeratingWithState:&v160 objects:v190 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v161;
          v141 = zones;
          do
          {
            v79 = 0;
            v146 = v77;
            do
            {
              if (*v161 != v78)
              {
                objc_enumerationMutation(zones);
              }

              v80 = *(*(&v160 + 1) + 8 * v79);
              roomUUIDs = [v80 roomUUIDs];
              v82 = [roomUUIDs count];

              if (v82)
              {
                assistantObject10 = [v80 assistantObject];
                if (assistantObject10)
                {
                  [array addObject:assistantObject10];
                }
              }

              else
              {
                v84 = objc_autoreleasePoolPush();
                v85 = selfCopy;
                v86 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                {
                  v87 = HMFGetLogIdentifier();
                  name5 = [v80 name];
                  name6 = [v66 name];
                  [v66 uuid];
                  v150 = v84;
                  v91 = v90 = v78;
                  uUIDString3 = [v91 UUIDString];
                  *buf = 138544130;
                  v193 = v87;
                  v194 = 2112;
                  v195 = name5;
                  v196 = 2112;
                  v197 = name6;
                  v198 = 2112;
                  v199 = uUIDString3;
                  _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v78 = v90;
                  v84 = v150;

                  zones = v141;
                  v66 = v143;

                  v77 = v146;
                }

                objc_autoreleasePoolPop(v84);
              }

              ++v79;
            }

            while (v77 != v79);
            v77 = [zones countByEnumeratingWithState:&v160 objects:v190 count:16];
          }

          while (v77);
        }

        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        actionSets = [v66 actionSets];
        v94 = [actionSets countByEnumeratingWithState:&v156 objects:v189 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v157;
          v142 = actionSets;
          v151 = *v157;
          do
          {
            for (m = 0; m != v95; ++m)
            {
              if (*v157 != v96)
              {
                objc_enumerationMutation(actionSets);
              }

              v98 = *(*(&v156 + 1) + 8 * m);
              type = [v98 type];
              if ([type isEqualToString:v136])
              {
                actions = [v98 actions];
                v101 = [actions count];

                if (!v101)
                {
                  v102 = objc_autoreleasePoolPush();
                  v103 = selfCopy;
                  v104 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v105 = v147 = v102;
                    name7 = [v98 name];
                    name8 = [v66 name];
                    uuid3 = [v66 uuid];
                    uUIDString4 = [uuid3 UUIDString];
                    *buf = 138544130;
                    v193 = v105;
                    v194 = 2112;
                    v195 = name7;
                    v196 = 2112;
                    v197 = name8;
                    v198 = 2112;
                    v199 = uUIDString4;
                    _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_INFO, "%{public}@Dropping empty user-defined actionSet %@ in home %@/%@ from sync data", buf, 0x2Au);

                    actionSets = v142;
                    v66 = v143;

                    v102 = v147;
                  }

                  objc_autoreleasePoolPop(v102);
                  v96 = v151;
                  continue;
                }
              }

              else
              {
              }

              assistantObject11 = [v98 assistantObject];
              if (assistantObject11)
              {
                [array addObject:assistantObject11];
              }
            }

            v95 = [actionSets countByEnumeratingWithState:&v156 objects:v189 count:16];
          }

          while (v95);
        }

        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        mediaSystems = [v66 mediaSystems];
        v112 = [mediaSystems countByEnumeratingWithState:&v152 objects:v188 count:16];
        if (v112)
        {
          v113 = v112;
          v114 = *v153;
          do
          {
            for (n = 0; n != v113; ++n)
            {
              if (*v153 != v114)
              {
                objc_enumerationMutation(mediaSystems);
              }

              assistantObject12 = [*(*(&v152 + 1) + 8 * n) assistantObject];
              if (assistantObject12)
              {
                [array addObject:assistantObject12];
              }
            }

            v113 = [mediaSystems countByEnumeratingWithState:&v152 objects:v188 count:16];
          }

          while (v113);
        }

LABEL_133:
        v7 = v133 + 1;
      }

      while (v133 + 1 != v131);
      v131 = [obj countByEnumeratingWithState:&v184 objects:v204 count:16];
    }

    while (v131);
  }

  v124 = objc_autoreleasePoolPush();
  v125 = selfCopy;
  v126 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
  {
    v127 = HMFGetLogIdentifier();
    *buf = 138543618;
    v193 = v127;
    v194 = 2112;
    v195 = array;
    _os_log_impl(&dword_2531F8000, v126, OS_LOG_TYPE_DEBUG, "%{public}@currentHomekitObjects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v124);
  [(HMDAssistantGather *)v125 setCurrentHomekitObjects:array];
}

- (NSString)currentHomeAssistantIdentifier
{
  _getCurrentHome = [(HMDAssistantGather *)self _getCurrentHome];
  urlString = [_getCurrentHome urlString];

  return urlString;
}

- (NSString)currentHomeName
{
  _getCurrentHome = [(HMDAssistantGather *)self _getCurrentHome];
  v3 = _getCurrentHome;
  if (_getCurrentHome)
  {
    name = [_getCurrentHome name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (NSString)primaryHomeAssistantIdentifier
{
  _getPrimaryHome = [(HMDAssistantGather *)self _getPrimaryHome];
  urlString = [_getPrimaryHome urlString];

  return urlString;
}

- (NSString)primaryHomeName
{
  _getPrimaryHome = [(HMDAssistantGather *)self _getPrimaryHome];
  name = [_getPrimaryHome name];

  return name;
}

- (int64_t)homeCount
{
  manager = [(HMDAssistantGather *)self manager];
  homes = [manager homes];
  v4 = [homes count];

  return v4;
}

- (id)_getCurrentHome
{
  v18 = *MEMORY[0x277D85DE8];
  manager = [(HMDAssistantGather *)self manager];
  currentHomeUUID = [manager currentHomeUUID];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  homes = [manager homes];
  v5 = objc_msgSend_copy(homes);

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [currentHomeUUID isEqual:uuid];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_getPrimaryHome
{
  v18 = *MEMORY[0x277D85DE8];
  manager = [(HMDAssistantGather *)self manager];
  primaryHomeUUID = [manager primaryHomeUUID];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  homes = [manager homes];
  v5 = objc_msgSend_copy(homes);

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [primaryHomeUUID isEqual:uuid];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (HMDAssistantGather)initWithHomeManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDAssistantGather;
  v8 = [(HMDAssistantGather *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, managerCopy);
    objc_storeStrong(&v9->_workQueue, queue);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_134031 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_134031, &__block_literal_global_134032);
  }

  v3 = logCategory__hmf_once_v1_134033;

  return v3;
}

uint64_t __33__HMDAssistantGather_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_134033;
  logCategory__hmf_once_v1_134033 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end