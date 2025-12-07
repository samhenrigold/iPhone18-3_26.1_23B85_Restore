@interface HMDZone
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_handleSetRoomsTransactionWithRoomUUIDStrings:(id)strings error:(id *)error;
- (BOOL)updateZoneWithModel:(id)model message:(id)message error:(id *)error;
- (HMDHome)home;
- (HMDZone)initWithCoder:(id)coder;
- (HMDZone)initWithName:(id)name uuid:(id)uuid home:(id)home;
- (NSArray)roomUUIDs;
- (NSArray)rooms;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)urlString;
- (id)_checkForAddValidity:(id)validity;
- (id)_initWithCoder:(id)coder;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_handleAddRoom:(id)room;
- (void)_handleRemoveRoom:(id)room;
- (void)_handleRename:(id)rename;
- (void)_registerForMessages;
- (void)addRoomIfNotPresent:(id)present;
- (void)configure:(id)configure queue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeRoom:(id)room;
- (void)setName:(id)name;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDZone

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)backingStoreObjects:(int64_t)objects
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDZone *)self modelObjectWithChangeType:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDZoneModel alloc];
  uuid = [(HMDZone *)self uuid];
  home = [(HMDZone *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  name = [(HMDZone *)self name];
  [(HMDZoneModel *)v9 setName:name];

  roomUUIDs = [(HMDZone *)self roomUUIDs];
  v12 = [roomUUIDs mutableCopy];
  [(HMDZoneModel *)v9 setRoomUUIDs:v12];

  return v9;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v23 = 0;
    [(HMDZone *)self updateZoneWithModel:v13 message:messageCopy error:&v23];
    v14 = v23;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = objc_opt_class();
      v19 = v29;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  v20 = v14;
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v20, 0);
  }
}

- (BOOL)updateZoneWithModel:(id)model message:(id)message error:(id *)error
{
  modelCopy = model;
  transactionResult = [message transactionResult];
  name = [modelCopy name];
  if (name)
  {
    v11 = name;
    name2 = [(HMDZone *)self name];
    name3 = [modelCopy name];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      name4 = [modelCopy name];
      hm_truncatedNameString = [name4 hm_truncatedNameString];

      home = [(HMDZone *)self home];
      name5 = [(HMDZone *)self name];
      v19 = [home replaceName:name5 withNewName:hm_truncatedNameString];

      [(HMDZone *)self setName:hm_truncatedNameString];
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
    }
  }

  roomUUIDs = [modelCopy roomUUIDs];
  if (roomUUIDs)
  {
    if (![(HMDZone *)self _handleSetRoomsTransactionWithRoomUUIDStrings:roomUUIDs error:error])
    {
      v21 = 0;
      goto LABEL_9;
    }

    [transactionResult markChanged];
    [transactionResult markSaveToAssistant];
  }

  v21 = 1;
LABEL_9:

  return v21;
}

- (void)removeRoom:(id)room
{
  roomCopy = room;
  uuid = [roomCopy uuid];
  uUIDString = [uuid UUIDString];

  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_roomUUIDs removeObject:uUIDString];
  [(NSMutableDictionary *)self->_currentRooms setObject:0 forKeyedSubscript:uUIDString];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addRoomIfNotPresent:(id)present
{
  presentCopy = present;
  uuid = [presentCopy uuid];
  uUIDString = [uuid UUIDString];

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_currentRooms objectForKeyedSubscript:uUIDString];

  if (!v6)
  {
    [(NSMutableDictionary *)self->_currentRooms setObject:presentCopy forKeyedSubscript:uUIDString];
    [(NSMutableArray *)self->_roomUUIDs addObject:uUIDString];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_handleSetRoomsTransactionWithRoomUUIDStrings:(id)strings error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  selfCopy = self;
  home = [(HMDZone *)self home];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = stringsCopy;
  v6 = [obj countByEnumeratingWithState:&v63 objects:v80 count:16];
  if (v6)
  {
    v7 = *v64;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
        v11 = [home roomWithUUID:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v63 objects:v80 count:16];
    }

    while (v6);
  }

  v12 = [obj mutableCopy];
  v50 = [MEMORY[0x277CBEB58] set];
  v49 = 8;
  os_unfair_lock_lock_with_options();
  allKeys = [(NSMutableDictionary *)selfCopy->_currentRooms allKeys];
  [v12 removeObjectsInArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)selfCopy->_currentRooms allKeys];
  v52 = [allKeys2 mutableCopy];

  [v52 removeObjectsInArray:obj];
  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    allKeys3 = [(NSMutableDictionary *)selfCopy->_currentRooms allKeys];
    name = v16->_name;
    name = [home name];
    *buf = 138544386;
    v71 = v18;
    v72 = 2112;
    v73 = allKeys3;
    v74 = 2112;
    v75 = obj;
    v76 = 2112;
    v77 = name;
    v78 = 2112;
    v79 = name;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@About to update the zone from %@ to %@ in zone with name (%@) from home %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v15);
  v22 = objc_autoreleasePoolPush();
  v23 = v16;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v25;
    v72 = 2112;
    v73 = v52;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Removing Rooms: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v26 = objc_autoreleasePoolPush();
  v51 = v23;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v28;
    v72 = 2112;
    v73 = v12;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Adding Rooms: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  [v50 addObjectsFromArray:v12];
  [v50 addObjectsFromArray:v52];
  v29 = [obj mutableCopy];
  roomUUIDs = v51->_roomUUIDs;
  v51->_roomUUIDs = v29;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v53 = v12;
  v31 = [v53 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v31)
  {
    v32 = *v60;
    v33 = 1;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(v53);
        }

        v35 = *(*(&v59 + 1) + 8 * j);
        v36 = [dictionary objectForKeyedSubscript:{v35, v49}];
        if (v36)
        {
          [(NSMutableDictionary *)selfCopy->_currentRooms setObject:v36 forKeyedSubscript:v35];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            name2 = [home name];
            *buf = 138543874;
            v71 = v39;
            v72 = 2112;
            v73 = v35;
            v74 = 2112;
            v75 = name2;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@_handleSetRoomsZoneTransaction:message: Couldn't find the room with UUID %@ in home %@.", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v37);
          if (error)
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            *error = v33 = 0;
          }

          else
          {
            v33 = 0;
          }
        }
      }

      v31 = [v53 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v31);
  }

  else
  {
    v33 = 1;
  }

  [(NSMutableDictionary *)selfCopy->_currentRooms removeObjectsForKeys:v52];
  os_unfair_lock_unlock((selfCopy + v49));
  if ((v33 & (home != 0)) != 0)
  {
    v67[0] = *MEMORY[0x277CD0640];
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    v68[0] = uUIDString;
    v67[1] = *MEMORY[0x277CD27B0];
    name3 = [(HMDZone *)v51 name];
    v68[1] = name3;
    v67[2] = *MEMORY[0x277CD27B8];
    uuid2 = [(HMDZone *)v51 uuid];
    uUIDString2 = [uuid2 UUIDString];
    v68[2] = uUIDString2;
    v67[3] = HMDZoneRoomsAffectedKey;
    v46 = objc_msgSend_copy(v50);
    v68[3] = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:4];

    logAndPostNotification(@"HMDZoneRoomsUpdatedNotification", v51, v47);
  }

  return v33 & 1;
}

- (void)_handleRename:(id)rename
{
  v28 = *MEMORY[0x277D85DE8];
  renameCopy = rename;
  v5 = [renameCopy stringForKey:*MEMORY[0x277CD27B0]];
  v6 = HMMaxLengthForNaming();
  if ([v5 length] <= v6)
  {
    home = [(HMDZone *)self home];
    name = [(HMDZone *)self name];
    v13 = [home replaceName:name withNewName:v5];

    if (v13)
    {
      [renameCopy respondWithError:v13];
    }

    else
    {
      v14 = [HMDZoneModel alloc];
      uuid = [(HMDZone *)self uuid];
      uuid2 = [home uuid];
      v17 = [(HMDBackingStoreModelObject *)v14 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

      [(HMDZoneModel *)v17 setName:v5];
      backingStore = [home backingStore];
      name2 = [renameCopy name];
      v20 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v21 = [backingStore transaction:name2 options:v20];

      [v21 add:v17];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __25__HMDZone__handleRename___block_invoke;
      v22[3] = &unk_278688D58;
      v23 = renameCopy;
      selfCopy = self;
      v25 = v5;
      [v21 run:v22];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    home = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
    [renameCopy respondWithError:home];
  }
}

void __25__HMDZone__handleRename___block_invoke(uint64_t a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v17 = *MEMORY[0x277CD0640];
    v4 = [*(a1 + 40) home];
    v5 = [v4 uuid];
    v6 = [v5 UUIDString];
    v20[0] = v6;
    v18 = *MEMORY[0x277CD27B0];
    v7 = v18;
    v8 = [*(a1 + 40) name];
    v20[1] = v8;
    v19 = *MEMORY[0x277CD27B8];
    v9 = [*(a1 + 40) uuid];
    v10 = [v9 UUIDString];
    v20[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v17 count:3];

    logAndPostNotification(@"HMDZoneNameChangedNotification", *(a1 + 40), v11);
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v15 = v7;
    v16 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v12 respondWithPayload:v14];
  }
}

- (void)_handleRemoveRoom:(id)room
{
  roomCopy = room;
  v5 = [roomCopy uuidForKey:*MEMORY[0x277CD0D40]];
  home = [(HMDZone *)self home];
  v7 = [HMDZoneModel alloc];
  uuid = [(HMDZone *)self uuid];
  uuid2 = [home uuid];
  v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  os_unfair_lock_lock_with_options();
  roomUUIDs = self->_roomUUIDs;
  uUIDString = [v5 UUIDString];
  LODWORD(roomUUIDs) = [(NSMutableArray *)roomUUIDs containsObject:uUIDString];

  if (roomUUIDs)
  {
    v13 = self->_roomUUIDs;
    uUIDString2 = [v5 UUIDString];
    [(NSMutableArray *)v13 removeObject:uUIDString2];

    v15 = objc_msgSend_copy(self->_roomUUIDs);
    [(HMDZoneModel *)v10 setRoomUUIDs:v15];

    os_unfair_lock_unlock(&self->_lock);
    backingStore = [home backingStore];
    name = [roomCopy name];
    v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = [backingStore transaction:name options:v18];

    [v19 add:v10];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__HMDZone__handleRemoveRoom___block_invoke;
    v21[3] = &unk_278688D58;
    v21[4] = self;
    v22 = v5;
    v23 = roomCopy;
    [v19 run:v21];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [roomCopy respondWithError:v20];
  }
}

void __29__HMDZone__handleRemoveRoom___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) UUIDString];
    [v4 addObject:v5];

    os_unfair_lock_unlock(v3 + 2);
    [*(a1 + 48) respondWithError:v6];
  }

  else
  {
    [*(a1 + 48) respondWithSuccess];
  }
}

- (id)_checkForAddValidity:(id)validity
{
  v36 = *MEMORY[0x277D85DE8];
  validityCopy = validity;
  os_unfair_lock_assert_owner(&self->_lock);
  home = [(HMDZone *)self home];
  v6 = [home roomWithUUID:validityCopy];
  v7 = v6;
  v8 = 2;
  if (!home || !v6)
  {
    goto LABEL_9;
  }

  roomForEntireHome = [home roomForEntireHome];
  uuid = [roomForEntireHome uuid];
  v11 = [validityCopy isEqual:uuid];

  if (v11)
  {
    v8 = 24;
LABEL_9:
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v8];
    goto LABEL_10;
  }

  home2 = [v7 home];
  uuid2 = [home2 uuid];
  uuid3 = [home uuid];
  v15 = [uuid2 isEqual:uuid3];

  if (!v15)
  {
    v8 = 11;
    goto LABEL_9;
  }

  roomUUIDs = self->_roomUUIDs;
  uuid4 = [v7 uuid];
  uUIDString = [uuid4 UUIDString];
  LOBYTE(roomUUIDs) = [(NSMutableArray *)roomUUIDs containsObject:uUIDString];

  if (roomUUIDs)
  {
    v8 = 1;
    goto LABEL_9;
  }

  v21 = [(NSMutableArray *)self->_roomUUIDs count];
  if (v21 >= maximumRoomsPerZone)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      name = [v7 name];
      name = self->_name;
      name2 = [home name];
      v28 = 138544130;
      v29 = v24;
      v30 = 2112;
      v31 = name;
      v32 = 2112;
      v33 = name;
      v34 = 2112;
      v35 = name2;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Can't add room %@ to zone %@ in home %@; already at maximum rooms for zone", &v28, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v8 = 49;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (void)_handleAddRoom:(id)room
{
  roomCopy = room;
  v5 = [roomCopy uuidForKey:*MEMORY[0x277CD0D40]];
  home = [(HMDZone *)self home];
  v7 = [HMDZoneModel alloc];
  uuid = [(HMDZone *)self uuid];
  uuid2 = [home uuid];
  v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDZone *)self _checkForAddValidity:v5];
  if (v11)
  {
    os_unfair_lock_unlock(&self->_lock);
    [roomCopy respondWithError:v11];
  }

  else
  {
    roomUUIDs = self->_roomUUIDs;
    uUIDString = [v5 UUIDString];
    [(NSMutableArray *)roomUUIDs addObject:uUIDString];

    v14 = objc_msgSend_copy(self->_roomUUIDs);
    [(HMDZoneModel *)v10 setRoomUUIDs:v14];

    os_unfair_lock_unlock(&self->_lock);
    backingStore = [home backingStore];
    name = [roomCopy name];
    v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v18 = [backingStore transaction:name options:v17];

    [v18 add:v10];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __26__HMDZone__handleAddRoom___block_invoke;
    v19[3] = &unk_278688D58;
    v19[4] = self;
    v20 = v5;
    v21 = roomCopy;
    [v18 run:v19];
  }
}

void __26__HMDZone__handleAddRoom___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) UUIDString];
    [v4 removeObject:v5];

    os_unfair_lock_unlock(v3 + 2);
    [*(a1 + 48) respondWithError:v6];
  }

  else
  {
    [*(a1 + 48) respondWithSuccess];
  }
}

- (void)_registerForMessages
{
  v28 = *MEMORY[0x277D85DE8];
  home = [(HMDZone *)self home];
  if (home)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      administratorHandler = [home administratorHandler];
      v5 = *MEMORY[0x277CCF1F8];
      v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v25[0] = v6;
      v7 = [HMDXPCMessagePolicy policyWithEntitlements:1];
      v25[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      [administratorHandler registerForMessage:v5 receiver:self policies:v8 selector:sel__handleAddRoom_];

      administratorHandler2 = [home administratorHandler];
      v10 = *MEMORY[0x277CD0CA0];
      v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v24[0] = v11;
      v12 = [HMDXPCMessagePolicy policyWithEntitlements:1];
      v24[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
      [administratorHandler2 registerForMessage:v10 receiver:self policies:v13 selector:sel__handleRemoveRoom_];

      administratorHandler3 = [home administratorHandler];
      v15 = *MEMORY[0x277CD2558];
      v16 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v17 = [HMDXPCMessagePolicy policyWithEntitlements:1, v16];
      v23[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      [administratorHandler3 registerForMessage:v15 receiver:self policies:v18 selector:sel__handleRename_];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Not going to register for messages as home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  home = [(HMDZone *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];

  name = [(HMDZone *)self name];
  [coderCopy encodeObject:name forKey:@"zoneName"];

  uuid = [(HMDZone *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"zoneUUID"];

  rooms = [(HMDZone *)self rooms];
  [coderCopy hm_encodeArrayOfConditionalObjects:rooms forKey:@"rooms"];

  roomUUIDs = [(HMDZone *)self roomUUIDs];
  [coderCopy encodeObject:roomUUIDs forKey:@"roomUUID"];

  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  v40[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v9 = [(HMDZone *)self initWithName:v5 uuid:v7 home:v8];
  if (v9)
  {
    v34 = v8;
    array = [MEMORY[0x277CBEB18] array];
    v11 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"rooms"];
    [array setArray:v11];

    v12 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"roomUUID"];

    v33 = array;
    if ([v15 count])
    {
      [(HMDZone *)v9 _handleSetRoomsTransactionWithRoomUUIDStrings:v15 error:0];
    }

    else
    {
      v29 = v15;
      v30 = v7;
      v31 = v5;
      v32 = coderCopy;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = array;
      v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v35 + 1) + 8 * i);
            currentRooms = v9->_currentRooms;
            uuid = [v21 uuid];
            uUIDString = [uuid UUIDString];
            [(NSMutableDictionary *)currentRooms setObject:v21 forKeyedSubscript:uUIDString];
          }

          v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v18);
      }

      allKeys = [(NSMutableDictionary *)v9->_currentRooms allKeys];
      v26 = [allKeys mutableCopy];
      roomUUIDs = v9->_roomUUIDs;
      v9->_roomUUIDs = v26;

      v5 = v31;
      coderCopy = v32;
      v7 = v30;
      v15 = v29;
    }

    v8 = v34;
  }

  return v9;
}

- (HMDZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDZone *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = MEMORY[0x277CCACA8];
  name = [(HMDZone *)self name];
  uuid = [(HMDZone *)self uuid];
  uUIDString = [uuid UUIDString];
  urlString = [(HMDZone *)self urlString];
  v11 = [v6 stringWithFormat:@"name: %@  uuid: %@, assistantIdentifier: %@", name, uUIDString, urlString];

  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  rooms = [(HMDZone *)self rooms];
  v13 = [rooms count];

  if (v13)
  {
    v14 = MEMORY[0x277CBEB18];
    rooms2 = [(HMDZone *)self rooms];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(rooms2, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    rooms3 = [(HMDZone *)self rooms];
    v18 = [rooms3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(rooms3);
          }

          v22 = [*(*(&v24 + 1) + 8 * i) dumpStateWithPrivacyLevel:level];
          [v16 addObject:v22];
        }

        v19 = [rooms3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }

    [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x277D0F140]];
  }

  return v5;
}

- (NSArray)rooms
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_currentRooms allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (NSArray)roomUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_roomUUIDs);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  v5 = objc_msgSend_copy(hm_truncatedNameString);
  name = self->_name;
  self->_name = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)configure:(id)configure queue:(id)queue
{
  queueCopy = queue;
  [(HMDZone *)self setMsgDispatcher:configure];
  [(HMDZone *)self setWorkQueue:queueCopy];

  [(HMDZone *)self _registerForMessages];
}

- (void)dealloc
{
  msgDispatcher = [(HMDZone *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDZone *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDZone;
  [(HMDZone *)&v6 dealloc];
}

- (HMDZone)initWithName:(id)name uuid:(id)uuid home:(id)home
{
  nameCopy = name;
  uuidCopy = uuid;
  homeCopy = home;
  v29.receiver = self;
  v29.super_class = HMDZone;
  v11 = [(HMDZone *)&v29 init];
  if (v11)
  {
    hm_truncatedNameString = [nameCopy hm_truncatedNameString];
    v13 = objc_msgSend_copy(hm_truncatedNameString);
    name = v11->_name;
    v11->_name = v13;

    if (uuidCopy)
    {
      uUID = objc_msgSend_copy(uuidCopy);
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v16 = uUID;
    v17 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:uUID];
    uuid = v11->_uuid;
    v11->_uuid = v17;

    v19 = spiClientIdentifierForUUID(v11->_uuid);
    v20 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v19];
    spiClientIdentifier = v11->_spiClientIdentifier;
    v11->_spiClientIdentifier = v20;

    objc_storeWeak(&v11->_home, homeCopy);
    msgDispatcher = [homeCopy msgDispatcher];
    msgDispatcher = v11->_msgDispatcher;
    v11->_msgDispatcher = msgDispatcher;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentRooms = v11->_currentRooms;
    v11->_currentRooms = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    roomUUIDs = v11->_roomUUIDs;
    v11->_roomUUIDs = array;
  }

  return v11;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v16[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:1, v6];
  v16[1] = v7;
  v8 = objc_opt_new();
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  name = [messageCopy name];
  LOBYTE(v7) = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v7)
  {
    goto LABEL_5;
  }

  v12 = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = HMFEqualObjects();

  if (v13)
  {
    name2 = [messageCopy name];
LABEL_5:
    v14 = HMFCreateMessageBinding();

    goto LABEL_6;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (NSDictionary)assistantObject
{
  v29 = *MEMORY[0x277D85DE8];
  home = [(HMDZone *)self home];
  name = [(HMDZone *)self name];
  v5 = name;
  if (name && home)
  {
    name2 = [home name];

    if (name2)
    {
      v20[0] = *MEMORY[0x277D48178];
      v7 = [(HMDZone *)self name:@"objectType"];
      v20[1] = v7;
      v19[2] = @"objectIdentifier";
      urlString = [(HMDZone *)self urlString];
      v20[2] = urlString;
      v19[3] = @"objectHome";
      name3 = [home name];
      v20[3] = name3;
      v19[4] = @"objectHomeIdentifier";
      urlString2 = [home urlString];
      v19[5] = @"objectReference";
      v20[4] = urlString2;
      v20[5] = self;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    name4 = [(HMDZone *)self name];
    uuid = [(HMDZone *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138544130;
    v22 = v14;
    v23 = 2112;
    v24 = name4;
    v25 = 2112;
    v26 = uUIDString;
    v27 = 2112;
    v28 = home;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because attribute(s) is nil: self %@/%@  self.home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v11 = 0;
LABEL_9:

  return v11;
}

- (NSString)urlString
{
  uuid = [(HMDZone *)self uuid];
  v3 = hm_assistantIdentifier();

  return v3;
}

@end