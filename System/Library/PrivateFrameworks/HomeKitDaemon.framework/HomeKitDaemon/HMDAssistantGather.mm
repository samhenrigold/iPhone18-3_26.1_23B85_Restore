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
  v7[3] = &unk_27868A7A0;
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
  v7[3] = &unk_27868A7A0;
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
  v235 = *MEMORY[0x277D85DE8];
  v152 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.gather-home-objects"];
  array = [MEMORY[0x277CBEB18] array];
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  selfCopy = self;
  manager = [(HMDAssistantGather *)self manager];
  homes = [manager homes];
  v6 = objc_msgSend_copy(homes);

  obj = v6;
  v155 = [v6 countByEnumeratingWithState:&v214 objects:v234 count:16];
  if (v155)
  {
    v154 = *v215;
    v158 = *MEMORY[0x277CCF1A8];
    do
    {
      v7 = 0;
      do
      {
        if (*v215 != v154)
        {
          objc_enumerationMutation(obj);
        }

        v157 = v7;
        v8 = *(*(&v214 + 1) + 8 * v7);
        assistantObject = [v8 assistantObject];
        v160 = v8;
        v156 = assistantObject;
        if (!assistantObject)
        {
          v141 = objc_autoreleasePoolPush();
          v142 = selfCopy;
          v143 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            v144 = HMFGetLogIdentifier();
            name = [v160 name];
            uuid = [v160 uuid];
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v223 = v144;
            v224 = 2112;
            v225 = name;
            v226 = 2112;
            v227 = uUIDString;
            _os_log_impl(&dword_229538000, v143, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create an assistant object for home %@/%@; skipping all objects in home", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v141);
          goto LABEL_142;
        }

        [array addObject:assistantObject];
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        accessories = [v8 accessories];
        v162 = [accessories countByEnumeratingWithState:&v210 objects:v233 count:16];
        if (!v162)
        {
          goto LABEL_74;
        }

        v161 = *v211;
        do
        {
          v10 = 0;
          do
          {
            if (*v211 != v161)
            {
              objc_enumerationMutation(accessories);
            }

            v169 = v10;
            v11 = *(*(&v210 + 1) + 8 * v10);
            if ([v11 conformsToProtocol:&unk_283F010C8])
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }

            v13 = v12;

            matterAdapter = [v13 matterAdapter];

            supportsRVC = [matterAdapter supportsRVC];
            v16 = supportsRVC;
            if (supportsRVC)
            {
              v17 = objc_autoreleasePoolPush();
              v18 = selfCopy;
              v19 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = HMFGetLogIdentifier();
                v21 = MEMORY[0x277CCABB0];
                [matterAdapter rvcRooms];
                v23 = v22 = matterAdapter;
                v24 = [v21 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
                *buf = 138543874;
                v223 = v20;
                v224 = 2112;
                v225 = v24;
                v226 = 2112;
                v227 = v22;
                _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding RVC Rooms [%@] for %@", buf, 0x20u);

                matterAdapter = v22;
              }

              objc_autoreleasePoolPop(v17);
              rvcRooms = [matterAdapter rvcRooms];
              v208[0] = MEMORY[0x277D85DD0];
              v208[1] = 3221225472;
              v208[2] = __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke;
              v208[3] = &unk_27867F4C0;
              v26 = array;
              v209 = v26;
              [rvcRooms na_each:v208];

              v27 = objc_autoreleasePoolPush();
              v28 = v18;
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = HMFGetLogIdentifier();
                v31 = matterAdapter;
                v32 = MEMORY[0x277CCABB0];
                [v31 rvcZones];
                v33 = v173 = v27;
                v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
                *buf = 138543874;
                v223 = v30;
                v224 = 2112;
                v225 = v34;
                v226 = 2112;
                v227 = v31;
                _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Adding RVC Zones [%@] for %@", buf, 0x20u);

                matterAdapter = v31;
                v27 = v173;
              }

              objc_autoreleasePoolPop(v27);
              rvcZones = [matterAdapter rvcZones];
              v206[0] = MEMORY[0x277D85DD0];
              v206[1] = 3221225472;
              v206[2] = __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke_217;
              v206[3] = &unk_27867F4E8;
              v206[4] = v28;
              v206[5] = v160;
              v207 = v26;
              [rvcZones na_each:v206];
            }

            v36 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }

            v38 = v37;

            if (v38)
            {
              mediaProfile = [v38 mediaProfile];

              if (mediaProfile)
              {
                mediaProfile2 = [v38 mediaProfile];
                assistantObject2 = [mediaProfile2 assistantObject];

                if (assistantObject2)
                {
                  [array addObject:assistantObject2];
                  v16 = 1;
                }
              }

              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              services = [v38 services];
              v43 = [services countByEnumeratingWithState:&v202 objects:v232 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v203;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v203 != v45)
                    {
                      objc_enumerationMutation(services);
                    }

                    v47 = *(*(&v202 + 1) + 8 * i);
                    if (([v47 isHidden] & 1) == 0)
                    {
                      assistantObject3 = [v47 assistantObject];
                      if (assistantObject3)
                      {
                        [array addObject:assistantObject3];
                        v16 = 1;
                      }
                    }
                  }

                  v44 = [services countByEnumeratingWithState:&v202 objects:v232 count:16];
                }

                while (v44);
              }
            }

            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            cameraProfiles = [v38 cameraProfiles];
            v50 = [cameraProfiles countByEnumeratingWithState:&v198 objects:v231 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v199;
              do
              {
                for (j = 0; j != v51; ++j)
                {
                  if (*v199 != v52)
                  {
                    objc_enumerationMutation(cameraProfiles);
                  }

                  assistantObject4 = [*(*(&v198 + 1) + 8 * j) assistantObject];
                  if (assistantObject4)
                  {
                    [array addObject:assistantObject4];
                    v16 = 1;
                  }
                }

                v51 = [cameraProfiles countByEnumeratingWithState:&v198 objects:v231 count:16];
              }

              while (v51);
            }

            v55 = v36;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = v55;
            }

            else
            {
              v56 = 0;
            }

            v57 = v56;

            v174 = v38;
            if (v57)
            {
              mediaProfile3 = [v57 mediaProfile];
              assistantObject5 = [mediaProfile3 assistantObject];

              if (assistantObject5)
              {
                [array addObject:assistantObject5];
                v16 = 1;
              }
            }

            v60 = v55;
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

            audioDestinationController = [v62 audioDestinationController];
            data = [audioDestinationController data];
            destinationIdentifier = [data destinationIdentifier];

            if (!destinationIdentifier)
            {
              goto LABEL_64;
            }

            v164 = v57;
            v66 = matterAdapter;
            home = [v62 home];
            name2 = [v62 name];
            v69 = [audioDestinationController assistantObjectWithHome:home name:name2];

            if (!v69)
            {
              matterAdapter = v66;
              v57 = v164;
LABEL_64:
              if ((v16 & 1) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_65;
            }

            [array addObject:v69];

            matterAdapter = v66;
            v57 = v164;
LABEL_65:
            hostAccessory = [v174 hostAccessory];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = hostAccessory;
            }

            else
            {
              v71 = 0;
            }

            v72 = v71;

            if (!v72)
            {
              assistantObject6 = [v60 assistantObject];
              if (assistantObject6)
              {
                [array addObject:assistantObject6];
              }
            }

LABEL_72:

            v10 = v169 + 1;
          }

          while (v169 + 1 != v162);
          v162 = [accessories countByEnumeratingWithState:&v210 objects:v233 count:16];
        }

        while (v162);
LABEL_74:

        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        serviceGroups = [v160 serviceGroups];
        v75 = [serviceGroups countByEnumeratingWithState:&v194 objects:v230 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v195;
          v170 = serviceGroups;
          v165 = *v195;
          do
          {
            v78 = 0;
            v175 = v76;
            do
            {
              if (*v195 != v77)
              {
                objc_enumerationMutation(serviceGroups);
              }

              v79 = *(*(&v194 + 1) + 8 * v78);
              serviceUUIDs = [v79 serviceUUIDs];
              v81 = [serviceUUIDs count];

              if (v81)
              {
                assistantObject7 = [v79 assistantObject];
                if (assistantObject7)
                {
                  [array addObject:assistantObject7];
                }
              }

              else
              {
                v83 = objc_autoreleasePoolPush();
                v84 = selfCopy;
                v85 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                {
                  v86 = HMFGetLogIdentifier();
                  name3 = [v79 name];
                  name4 = [v160 name];
                  uuid2 = [v160 uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  *buf = 138544130;
                  v223 = v86;
                  v224 = 2112;
                  v225 = name3;
                  v226 = 2112;
                  v227 = name4;
                  v228 = 2112;
                  v229 = uUIDString2;
                  _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Dropping empty service group %@ in home %@/%@ from sync data", buf, 0x2Au);

                  v76 = v175;
                  serviceGroups = v170;

                  v77 = v165;
                }

                objc_autoreleasePoolPop(v83);
              }

              ++v78;
            }

            while (v76 != v78);
            v76 = [serviceGroups countByEnumeratingWithState:&v194 objects:v230 count:16];
          }

          while (v76);
        }

        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        rooms = [v160 rooms];
        v92 = [rooms countByEnumeratingWithState:&v190 objects:v221 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = *v191;
          do
          {
            for (k = 0; k != v93; ++k)
            {
              if (*v191 != v94)
              {
                objc_enumerationMutation(rooms);
              }

              assistantObject8 = [*(*(&v190 + 1) + 8 * k) assistantObject];
              if (assistantObject8)
              {
                [array addObject:assistantObject8];
              }
            }

            v93 = [rooms countByEnumeratingWithState:&v190 objects:v221 count:16];
          }

          while (v93);
        }

        roomForEntireHome = [v160 roomForEntireHome];
        assistantObject9 = [roomForEntireHome assistantObject];

        if (assistantObject9)
        {
          [array addObject:assistantObject9];
        }

        v163 = assistantObject9;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        zones = [v160 zones];
        v100 = [zones countByEnumeratingWithState:&v186 objects:v220 count:16];
        v101 = v158;
        if (v100)
        {
          v102 = v100;
          v103 = *v187;
          v171 = zones;
          v166 = *v187;
          do
          {
            v104 = 0;
            v176 = v102;
            do
            {
              if (*v187 != v103)
              {
                objc_enumerationMutation(zones);
              }

              v105 = *(*(&v186 + 1) + 8 * v104);
              roomUUIDs = [v105 roomUUIDs];
              v107 = [roomUUIDs count];

              if (v107)
              {
                assistantObject10 = [v105 assistantObject];
                if (assistantObject10)
                {
                  [array addObject:assistantObject10];
                }
              }

              else
              {
                v109 = objc_autoreleasePoolPush();
                v110 = selfCopy;
                v111 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
                {
                  v112 = HMFGetLogIdentifier();
                  name5 = [v105 name];
                  name6 = [v160 name];
                  uuid3 = [v160 uuid];
                  uUIDString3 = [uuid3 UUIDString];
                  *buf = 138544130;
                  v223 = v112;
                  v224 = 2112;
                  v225 = name5;
                  v226 = 2112;
                  v227 = name6;
                  v228 = 2112;
                  v229 = uUIDString3;
                  _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", buf, 0x2Au);

                  zones = v171;
                  v102 = v176;

                  v101 = v158;
                  v103 = v166;
                }

                objc_autoreleasePoolPop(v109);
              }

              ++v104;
            }

            while (v102 != v104);
            v102 = [zones countByEnumeratingWithState:&v186 objects:v220 count:16];
          }

          while (v102);
        }

        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        actionSets = [v160 actionSets];
        v118 = [actionSets countByEnumeratingWithState:&v182 objects:v219 count:16];
        if (v118)
        {
          v119 = v118;
          v120 = *v183;
          v177 = *v183;
          v167 = actionSets;
          do
          {
            for (m = 0; m != v119; ++m)
            {
              if (*v183 != v120)
              {
                objc_enumerationMutation(actionSets);
              }

              v122 = *(*(&v182 + 1) + 8 * m);
              type = [v122 type];
              if ([type isEqualToString:v101])
              {
                actions = [v122 actions];
                v125 = [actions count];

                if (!v125)
                {
                  v126 = objc_autoreleasePoolPush();
                  v127 = selfCopy;
                  v128 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                  {
                    v129 = HMFGetLogIdentifier();
                    [v122 name];
                    v130 = v172 = v126;
                    name7 = [v160 name];
                    uuid4 = [v160 uuid];
                    uUIDString4 = [uuid4 UUIDString];
                    *buf = 138544130;
                    v223 = v129;
                    v224 = 2112;
                    v225 = v130;
                    v226 = 2112;
                    v227 = name7;
                    v228 = 2112;
                    v229 = uUIDString4;
                    _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_INFO, "%{public}@Dropping empty user-defined actionSet %@ in home %@/%@ from sync data", buf, 0x2Au);

                    actionSets = v167;
                    v126 = v172;

                    v101 = v158;
                  }

                  objc_autoreleasePoolPop(v126);
                  v120 = v177;
                  continue;
                }
              }

              else
              {
              }

              assistantObject11 = [v122 assistantObject];
              if (assistantObject11)
              {
                [array addObject:assistantObject11];
              }
            }

            v119 = [actionSets countByEnumeratingWithState:&v182 objects:v219 count:16];
          }

          while (v119);
        }

        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        mediaSystems = [v160 mediaSystems];
        v136 = [mediaSystems countByEnumeratingWithState:&v178 objects:v218 count:16];
        if (v136)
        {
          v137 = v136;
          v138 = *v179;
          do
          {
            for (n = 0; n != v137; ++n)
            {
              if (*v179 != v138)
              {
                objc_enumerationMutation(mediaSystems);
              }

              assistantObject12 = [*(*(&v178 + 1) + 8 * n) assistantObject];
              if (assistantObject12)
              {
                [array addObject:assistantObject12];
              }
            }

            v137 = [mediaSystems countByEnumeratingWithState:&v178 objects:v218 count:16];
          }

          while (v137);
        }

LABEL_142:
        v7 = v157 + 1;
      }

      while (v157 + 1 != v155);
      v155 = [obj countByEnumeratingWithState:&v214 objects:v234 count:16];
    }

    while (v155);
  }

  v148 = objc_autoreleasePoolPush();
  v149 = selfCopy;
  v150 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
  {
    v151 = HMFGetLogIdentifier();
    *buf = 138543618;
    v223 = v151;
    v224 = 2112;
    v225 = array;
    _os_log_impl(&dword_229538000, v150, OS_LOG_TYPE_DEBUG, "%{public}@currentHomekitObjects: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v148);
  [(HMDAssistantGather *)v149 setCurrentHomekitObjects:array];
}

void __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assistantObject];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __43__HMDAssistantGather__gatherHomeKitObjects__block_invoke_217(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 roomUUIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 assistantObject];
    if (v6)
    {
      [a1[6] addObject:v6];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v3 name];
      v12 = [a1[5] name];
      v13 = [a1[5] uuid];
      v14 = [v13 UUIDString];
      v15 = 138544130;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Dropping empty zone %@ in home %@/%@ from sync data", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }
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
  if (logCategory__hmf_once_t0_200917 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_200917, &__block_literal_global_200918);
  }

  v3 = logCategory__hmf_once_v1_200919;

  return v3;
}

void __33__HMDAssistantGather_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_200919;
  logCategory__hmf_once_v1_200919 = v0;
}

@end