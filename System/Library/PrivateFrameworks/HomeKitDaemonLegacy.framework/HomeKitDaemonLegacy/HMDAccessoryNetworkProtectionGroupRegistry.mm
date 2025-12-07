@interface HMDAccessoryNetworkProtectionGroupRegistry
+ (id)logCategory;
- (BOOL)_evaluateActiveStatusForGroupWithUUID:(id)d;
- (BOOL)_updateGroupWithUUID:(id)d active:(BOOL)active;
- (BOOL)addActiveSurrogateGroup:(id)group;
- (BOOL)updateTargetProtectionModeForGroupWithUUID:(id)d protectionMode:(int64_t)mode error:(id *)error requestMessage:(id)message;
- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center;
- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center persistedGroups:(id)groups;
- (HMDHome)home;
- (NSSet)activeGroups;
- (NSSet)persistedGroups;
- (NSUUID)messageTargetUUID;
- (id)accessoriesForGroupWithUUID:(id)d;
- (id)groupRecordWithUUID:(id)d;
- (id)groupWithUUID:(id)d;
- (id)logIdentifier;
- (id)markGroupWithUUID:(id)d active:(BOOL)active;
- (id)removeGroupWithUUID:(id)d;
- (int64_t)targetProtectionModeForGroupWithUUID:(id)d;
- (void)_registerForAccessoryChanges:(id)changes;
- (void)_registerForMessages;
- (void)_setupActiveGroupsForHome;
- (void)_setupProtectionGroupForAccessory:(id)accessory shouldNotifyChange:(BOOL)change;
- (void)addActiveSurrogateGroupForAccessory:(id)accessory shouldNotifyChange:(BOOL)change;
- (void)configure;
- (void)handleAddOrUpdateAccessoryNetworkProtectionGroupModel:(id)model message:(id)message;
- (void)handleAddedAccessory:(id)accessory;
- (void)handleRemoveAccessoryNetworkProtectionGroupModel:(id)model message:(id)message;
- (void)handleRemovedAccessory:(id)accessory;
- (void)handleUpdateAccessoryNetworkProtectionGroupProtectionMode:(id)mode;
- (void)handleUpdatedAccessoryConfiguredNetworkProtectionGroup:(id)group;
- (void)handleUpdatedAccessoryInitialManufacturerOrCategory:(id)category;
- (void)notifyClientsOfAddedGroup:(id)group;
- (void)notifyClientsOfRemovedGroup:(id)group;
@end

@implementation HMDAccessoryNetworkProtectionGroupRegistry

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)accessoriesForGroupWithUUID:(id)d
{
  dCopy = d;
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  accessories = [home accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMDAccessoryNetworkProtectionGroupRegistry_accessoriesForGroupWithUUID___block_invoke;
  v10[3] = &unk_279727E00;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [accessories hmf_objectsPassingTest:v10];

  return v8;
}

uint64_t __74__HMDAccessoryNetworkProtectionGroupRegistry_accessoriesForGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 networkProtectionGroupUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)updateTargetProtectionModeForGroupWithUUID:(id)d protectionMode:(int64_t)mode error:(id *)error requestMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  if (error)
  {
    *error = 0;
  }

  v12 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:dCopy];
  v13 = v12;
  if (v12)
  {
    isPersisted = [v12 isPersisted];
    group = [v13 group];
    v16 = group;
    if (isPersisted)
    {
      v17 = [group modelWithObjectChangeType:2];
      v18 = @"Update network protection group protection mode";
    }

    else
    {
      v17 = [group modelForVersion:4];
      v18 = @"Create network protection group";
    }

    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v36 = 138543874;
      v37 = v29;
      v38 = 2048;
      modeCopy = mode;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating target protection mode to: %ld, on group with UUID:%@", &v36, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    [v17 setTargetProtectionMode:v30];

    v31 = [HMDBackingStoreTransactionOptions optionsWithSource:1 destination:2 mustReplay:0 mustPush:0];
    home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    backingStore = [home backingStore];
    v34 = [backingStore transaction:v18 options:v31];

    [v34 add:v17 withMessage:messageCopy];
    [v34 run];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUIDString = [dCopy UUIDString];
      v36 = 138543618;
      v37 = v22;
      v38 = 2112;
      modeCopy = uUIDString;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot find network protection group with UUID %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v17 = v24;
    if (error)
    {
      v25 = v24;
      *error = v17;
    }

    [messageCopy respondWithError:v17];
  }

  return v13 != 0;
}

- (int64_t)targetProtectionModeForGroupWithUUID:(id)d
{
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupWithUUID:d];
  v4 = v3;
  if (v3)
  {
    targetProtectionMode = [v3 targetProtectionMode];
  }

  else
  {
    targetProtectionMode = 0;
  }

  return targetProtectionMode;
}

- (void)handleRemovedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDAccessoryNetworkProtectionGroupRegistry_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMDAccessoryNetworkProtectionGroupRegistry_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v23 = 138543618;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling removed accessory: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
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

  if (v9)
  {
    if (([v9 supportsNetworkProtection] & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v16;
        v17 = "%{public}@Accessory does not support network protection";
        v18 = v15;
        v19 = OS_LOG_TYPE_DEBUG;
        v20 = 12;
        goto LABEL_14;
      }

LABEL_17:

      objc_autoreleasePoolPop(v13);
      goto LABEL_18;
    }

    v10 = [v9 networkProtectionGroupUUID];

    if (!v10)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@No network protection group UUID for removed accessory %@", &v23, 0x16u);
      }

      goto LABEL_17;
    }

    v11 = *(a1 + 32);
    v12 = [v9 networkProtectionGroupUUID];
    LODWORD(v11) = [v11 _evaluateActiveStatusForGroupWithUUID:v12];

    if (v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v9;
        v17 = "%{public}@Removed accessory %@ is not the last in the network protection group";
        v18 = v15;
        v19 = OS_LOG_TYPE_INFO;
        v20 = 22;
LABEL_14:
        _os_log_impl(&dword_2531F8000, v18, v19, v17, &v23, v20);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)handleAddedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDAccessoryNetworkProtectionGroupRegistry_handleAddedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __67__HMDAccessoryNetworkProtectionGroupRegistry_handleAddedAccessory___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling added accessory: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
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

  if (v9)
  {
    if ([v9 supportsNetworkProtection])
    {
      [*(a1 + 32) _registerForAccessoryChanges:v9];
      [*(a1 + 32) _setupProtectionGroupForAccessory:v9 shouldNotifyChange:1];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Accessory does not support network protection", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }
}

- (void)handleRemoveAccessoryNetworkProtectionGroupModel:(id)model message:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uuid = [modelCopy uuid];
    uUIDString = [uuid UUIDString];
    v25 = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = uUIDString;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remove of accessory network group model %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  uuid2 = [modelCopy uuid];
  v15 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy removeGroupWithUUID:uuid2];

  if (v15)
  {
    if ([v15 isActive])
    {
      group = [v15 group];
      [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notifyClientsOfRemovedGroup:group];
    }

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    [messageCopy respondWithPayload:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uuid3 = [modelCopy uuid];
      uUIDString2 = [uuid3 UUIDString];
      v25 = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = uUIDString2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory network protection group %@ doesn't exist to remove", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v24];
  }
}

- (void)handleAddOrUpdateAccessoryNetworkProtectionGroupModel:(id)model message:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v11;
    v43 = 2112;
    v44 = modelCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling add/update of accessory network protection group model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  groupRecords = selfCopy->_groupRecords;
  uuid = [modelCopy uuid];
  v14 = [(NSMutableDictionary *)groupRecords objectForKeyedSubscript:uuid];

  if (v14)
  {
    [v14 setPersisted:1];
    group = [v14 group];
    [group transactionObjectUpdated:0 newValues:modelCopy message:messageCopy];

    os_unfair_lock_unlock(&selfCopy->_lock);
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      uuid2 = [modelCopy uuid];
      uUIDString = [uuid2 UUIDString];
      *buf = 138543618;
      v42 = v19;
      v43 = 2112;
      v44 = uUIDString;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Marked existing record for network protection group %@ as persisted", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v22 = [[HMDAccessoryNetworkProtectionGroup alloc] initWithModel:modelCopy];
    home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    [(HMDAccessoryNetworkProtectionGroup *)v22 configureWithHome:home];

    v24 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:v22 active:0 persisted:1];
    v25 = selfCopy->_groupRecords;
    uuid3 = [modelCopy uuid];
    [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:uuid3];

    os_unfair_lock_unlock(&selfCopy->_lock);
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      uuid4 = [modelCopy uuid];
      uUIDString2 = [uuid4 UUIDString];
      *buf = 138543618;
      v42 = v30;
      v43 = 2112;
      v44 = uUIDString2;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Added new inactive accessory network protection group model %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    workQueue = [(HMDAccessoryNetworkProtectionGroupRegistry *)v28 workQueue];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __108__HMDAccessoryNetworkProtectionGroupRegistry_handleAddOrUpdateAccessoryNetworkProtectionGroupModel_message___block_invoke;
    v38 = &unk_2797359B0;
    v39 = v28;
    v40 = modelCopy;
    dispatch_async(workQueue, &v35);

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    [messageCopy respondWithPayload:0];
  }
}

void __108__HMDAccessoryNetworkProtectionGroupRegistry_handleAddOrUpdateAccessoryNetworkProtectionGroupModel_message___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuid];
  [v1 _evaluateActiveStatusForGroupWithUUID:v2];
}

- (void)configure
{
  [(HMDAccessoryNetworkProtectionGroupRegistry *)self _setupActiveGroupsForHome];

  [(HMDAccessoryNetworkProtectionGroupRegistry *)self _registerForMessages];
}

- (void)addActiveSurrogateGroupForAccessory:(id)accessory shouldNotifyChange:(BOOL)change
{
  changeCopy = change;
  v59 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v8 = accessoryCopy;
  defaultNetworkProtectionGroupUUID = [v8 defaultNetworkProtectionGroupUUID];

  if (defaultNetworkProtectionGroupUUID)
  {
    v10 = [HMDAccessoryNetworkProtectionGroup alloc];
    defaultNetworkProtectionGroupUUID2 = [v8 defaultNetworkProtectionGroupUUID];
    initialManufacturer = [v8 initialManufacturer];
    initialCategoryIdentifier = [v8 initialCategoryIdentifier];
    defaultNetworkProtectionGroupUUID = [(HMDAccessoryNetworkProtectionGroup *)v10 initWithUUID:defaultNetworkProtectionGroupUUID2 manufacturer:initialManufacturer category:initialCategoryIdentifier targetProtectionMode:0];

    [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID configureWithHome:home];
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (!defaultNetworkProtectionGroupUUID)
  {
    if (v17)
    {
      v39 = HMFGetLogIdentifier();
      name = [v8 name];
      uuid = [v8 uuid];
      uUIDString = [uuid UUIDString];
      initialManufacturer2 = [v8 initialManufacturer];
      initialCategoryIdentifier2 = [v8 initialCategoryIdentifier];
      *buf = 138544386;
      v50 = v39;
      v51 = 2112;
      v52 = name;
      v53 = 2112;
      v54 = uUIDString;
      v55 = 2112;
      v56 = initialManufacturer2;
      v57 = 2112;
      v58 = initialCategoryIdentifier2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to generate surrogate group due to missing information for accessory name: %@ UUID: %@ initialManufacturer: %@ initialCategory: %@ ", buf, 0x34u);
    }

    v44 = v14;
    goto LABEL_21;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v18;
    v51 = 2112;
    v52 = defaultNetworkProtectionGroupUUID;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Attempting to add active surrogate network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    uuid2 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
    v24 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v20 groupWithUUID:uuid2];
    *buf = 138543618;
    v50 = v22;
    v51 = 2112;
    v52 = v24;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Existing network protection group with matching UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v25 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v20 addActiveSurrogateGroup:defaultNetworkProtectionGroupUUID];
  v26 = objc_autoreleasePoolPush();
  v27 = v20;
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (!v25)
  {
    if (v29)
    {
      v45 = HMFGetLogIdentifier();
      uuid3 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
      uUIDString2 = [uuid3 UUIDString];
      *buf = 138543874;
      v50 = v45;
      v51 = 2112;
      v52 = uUIDString2;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@No change to status of network protection group %@ on behalf of %@", buf, 0x20u);
    }

    v44 = v26;
LABEL_21:
    objc_autoreleasePoolPop(v44);
    goto LABEL_22;
  }

  if (v29)
  {
    v30 = HMFGetLogIdentifier();
    uuid4 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
    v32 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 groupWithUUID:uuid4];
    *buf = 138543618;
    v50 = v30;
    v51 = 2112;
    v52 = v32;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Added and marked active network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (changeCopy)
  {
    uuid5 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
    v34 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 groupWithUUID:uuid5];

    v35 = objc_autoreleasePoolPush();
    v36 = v27;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v38;
      v51 = 2112;
      v52 = v34;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Notifying for added network protection group %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMDAccessoryNetworkProtectionGroupRegistry *)v36 notifyClientsOfAddedGroup:v34];
  }

LABEL_22:
}

- (void)notifyClientsOfRemovedGroup:(id)group
{
  v19[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  notificationCenter = [(HMDAccessoryNetworkProtectionGroupRegistry *)self notificationCenter];
  v18 = *MEMORY[0x277CCEBE0];
  v19[0] = groupCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [notificationCenter postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeDeactivated" object:self userInfo:v6];

  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v8 = MEMORY[0x277D0F848];
  v9 = *MEMORY[0x277CCEC00];
  messageDestination = [home messageDestination];
  v16 = *MEMORY[0x277CCEC10];
  uuid = [groupCopy uuid];
  uUIDString = [uuid UUIDString];
  v17 = uUIDString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = [v8 messageWithName:v9 destination:messageDestination payload:v13];

  [v14 setRequiresSPIEntitlement:1];
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v14 completionHandler:0];
}

- (void)notifyClientsOfAddedGroup:(id)group
{
  v19[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  notificationCenter = [(HMDAccessoryNetworkProtectionGroupRegistry *)self notificationCenter];
  v18 = *MEMORY[0x277CCEBE0];
  v6 = v18;
  v19[0] = groupCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [notificationCenter postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeActivated" object:self userInfo:v7];

  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v9 = MEMORY[0x277D0F848];
  v10 = *MEMORY[0x277CCEBC8];
  messageDestination = [home messageDestination];
  v16 = v6;
  v12 = encodeRootObjectForSPIClients(groupCopy);
  v17 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = [v9 messageWithName:v10 destination:messageDestination payload:v13];

  [v14 setRequiresSPIEntitlement:1];
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v14 completionHandler:0];
}

- (BOOL)_updateGroupWithUUID:(id)d active:(BOOL)active
{
  activeCopy = active;
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupWithUUID:dCopy];

  if (v7)
  {
    v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:dCopy];
    isActive = [v8 isActive];

    if (isActive != activeCopy)
    {
      v10 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self markGroupWithUUID:dCopy active:activeCopy];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = HMFBooleanToString();
        v16 = HMFBooleanToString();
        v31 = 138544130;
        v32 = v14;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Active status for group %@ changes from %@ to %@", &v31, 0x2Au);
      }

      objc_autoreleasePoolPop(v11);
      if (activeCopy)
      {
        [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notifyClientsOfAddedGroup:v10];
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v31 = 138543618;
          v32 = v20;
          v33 = 2112;
          v34 = v10;
          v21 = "%{public}@Activated network protection group %@";
LABEL_16:
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, v21, &v31, 0x16u);
        }
      }

      else
      {
        [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notifyClientsOfRemovedGroup:v10];
        v17 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v31 = 138543618;
          v32 = v20;
          v33 = 2112;
          v34 = v10;
          v21 = "%{public}@De-activated network protection group %@";
          goto LABEL_16;
        }
      }

      objc_autoreleasePoolPop(v17);
      goto LABEL_18;
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v28;
      v33 = 2112;
      v34 = dCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@No change in active status for group %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    activeCopy = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = dCopy;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@No change to active status of group %@ that doesn't exist", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(activeCopy);
    LOBYTE(activeCopy) = 0;
  }

LABEL_18:

  return activeCopy;
}

- (BOOL)_evaluateActiveStatusForGroupWithUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v7;
    v33 = 2112;
    v34 = dCopy;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@evaluating active status for groupUUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
  accessories = [home accessories];

  v10 = [accessories countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(accessories);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if ([v15 supportsNetworkProtection])
        {
          networkProtectionGroupUUID = [v15 networkProtectionGroupUUID];
          v17 = [networkProtectionGroupUUID isEqual:dCopy];

          if (v17)
          {

            v10 = 1;
            goto LABEL_19;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = selfCopy;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543362;
            v32 = v22;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Accessory does not support network protection", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          selfCopy = v19;
        }
      }

      v10 = [accessories countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

LABEL_19:

  v23 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy _updateGroupWithUUID:dCopy active:v10];
  return v23;
}

- (void)_setupProtectionGroupForAccessory:(id)accessory shouldNotifyChange:(BOOL)change
{
  changeCopy = change;
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uuid = [accessoryCopy uuid];
    uUIDString = [uuid UUIDString];
    initialManufacturer = [accessoryCopy initialManufacturer];
    initialCategoryIdentifier = [accessoryCopy initialCategoryIdentifier];
    v25 = 138544130;
    v26 = v10;
    v27 = 2112;
    v28 = uUIDString;
    v29 = 2112;
    v30 = initialManufacturer;
    v31 = 2112;
    v32 = initialCategoryIdentifier;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Setting up protection group for accessory %@ with initialManufacturer: %@ initialCategoryIdentifier: %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (isAccessoryInDefaultGroup(accessoryCopy))
  {
    [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy addActiveSurrogateGroupForAccessory:accessoryCopy shouldNotifyChange:changeCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      name = [accessoryCopy name];
      uuid2 = [accessoryCopy uuid];
      uUIDString2 = [uuid2 UUIDString];
      networkProtectionGroupUUID = [accessoryCopy networkProtectionGroupUUID];
      v25 = 138544130;
      v26 = v18;
      v27 = 2112;
      v28 = name;
      v29 = 2112;
      v30 = uUIDString2;
      v31 = 2112;
      v32 = networkProtectionGroupUUID;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is assigned to non-default group %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    networkProtectionGroupUUID2 = [accessoryCopy networkProtectionGroupUUID];

    if (networkProtectionGroupUUID2)
    {
      networkProtectionGroupUUID3 = [accessoryCopy networkProtectionGroupUUID];
      [(HMDAccessoryNetworkProtectionGroupRegistry *)v16 _updateGroupWithUUID:networkProtectionGroupUUID3 active:1];
    }
  }
}

- (void)_setupActiveGroupsForHome
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = MEMORY[0x277CCABB0];
    home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    accessories = [home accessories];
    v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(accessories, "count")}];
    home2 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    name = [home2 name];
    *buf = 138543874;
    v28 = v6;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = name;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Evaluating active network protection groups based on %@ existing accessories for home %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  home3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
  accessories2 = [home3 accessories];

  v15 = [accessories2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(accessories2);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if ([v21 supportsNetworkProtection])
        {
          [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy _registerForAccessoryChanges:v21];
          [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy _setupProtectionGroupForAccessory:v21 shouldNotifyChange:0];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [accessories2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)_registerForAccessoryChanges:(id)changes
{
  v18 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    uuid = [changesCopy uuid];

    if (uuid)
    {
      uuid2 = [changesCopy uuid];
      [uuid2 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v14 = *buf;
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 1040;
    *&buf[14] = 16;
    v16 = 2096;
    v17 = &v14;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for manufacturer, category and configured group update for accessory: %{uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
  notificationCenter = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleUpdatedAccessoryInitialManufacturerOrCategory_ name:@"HMDAccessoryManufacturerUpdatedNotification" object:changesCopy];

  notificationCenter2 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleUpdatedAccessoryInitialManufacturerOrCategory_ name:@"HMDAccessoryCategoryUpdatedNotification" object:changesCopy];

  notificationCenter3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleUpdatedAccessoryConfiguredNetworkProtectionGroup_ name:@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification" object:changesCopy];
}

- (void)handleUpdatedAccessoryConfiguredNetworkProtectionGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdatedAccessoryConfiguredNetworkProtectionGroup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __101__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryConfiguredNetworkProtectionGroup___block_invoke;
  v11[3] = &unk_2797359B0;
  v12 = groupCopy;
  v13 = selfCopy;
  v10 = groupCopy;
  dispatch_async(workQueue, v11);
}

void __101__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryConfiguredNetworkProtectionGroup___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [*(a1 + 32) userInfo];
    v6 = [v5 objectForKeyedSubscript:@"HMDAccessoryPreviousConfiguredNetworkProtectionGroupUUIDKey"];

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

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v16 = [v4 name];
      v18 = [v4 uuid];
      v12 = [v18 UUIDString];
      [v8 UUIDString];
      v13 = v19 = v9;
      v14 = [v4 networkProtectionGroupUUID];
      v15 = [v14 UUIDString];
      *buf = 138544386;
      v21 = v17;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is leaving group %@ and joining group %@", buf, 0x34u);

      v9 = v19;
    }

    objc_autoreleasePoolPop(v9);
    if (v8)
    {
      [*(a1 + 40) _evaluateActiveStatusForGroupWithUUID:v8];
    }

    [*(a1 + 40) _setupProtectionGroupForAccessory:v4 shouldNotifyChange:1];
  }
}

- (void)handleUpdatedAccessoryInitialManufacturerOrCategory:(id)category
{
  v16 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdatedAccessoryInitialManufacturerOrCategory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryInitialManufacturerOrCategory___block_invoke;
  v11[3] = &unk_2797359B0;
  v12 = categoryCopy;
  v13 = selfCopy;
  v10 = categoryCopy;
  dispatch_async(workQueue, v11);
}

void __98__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryInitialManufacturerOrCategory___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 name];
      v10 = [v4 uuid];
      v11 = [v10 UUIDString];
      v12 = [v4 initialManufacturer];
      [v4 initialCategoryIdentifier];
      v13 = v22 = v5;
      *buf = 138544386;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ has updated initialManufacturer: %@, initialCategory: %@", buf, 0x34u);

      v5 = v22;
    }

    objc_autoreleasePoolPop(v5);
    if (isAccessoryInDefaultGroup(v4))
    {
      [*(a1 + 40) addActiveSurrogateGroupForAccessory:v4 shouldNotifyChange:1];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v4 name];
        v19 = [v4 uuid];
        v20 = [v19 UUIDString];
        v21 = [v4 networkProtectionGroupUUID];
        *buf = 138544130;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is assigned to non-default group %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

- (void)handleUpdateAccessoryNetworkProtectionGroupProtectionMode:(id)mode
{
  v33 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdateAccessoryNetworkProtectionGroupProtectionMode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
  networkRouterSupport = [home networkRouterSupport];

  if ((networkRouterSupport & 2) != 0)
  {
    v16 = [modeCopy uuidForKey:*MEMORY[0x277CCEC10]];
    if (v16)
    {
      v17 = [modeCopy numberForKey:*MEMORY[0x277CCEBF0]];
      if (v17)
      {
        v18 = v17;
        v28 = 0;
        -[HMDAccessoryNetworkProtectionGroupRegistry updateTargetProtectionModeForGroupWithUUID:protectionMode:error:requestMessage:](selfCopy, "updateTargetProtectionModeForGroupWithUUID:protectionMode:error:requestMessage:", v16, [v17 integerValue], &v28, modeCopy);
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received update group network protection mode with nil for protection mode", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [modeCopy respondWithError:v27];

        v18 = 0;
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Received update group network protection mode with nil for group UUID", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [modeCopy respondWithError:v18];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = +[HMDHomeKitVersion currentVersion];
      *buf = 138543618;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@HomeKit version %@ does not meet the minimum version required to support network protection group update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [modeCopy respondWithError:v16];
  }
}

- (void)_registerForMessages
{
  v9[2] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  administratorHandler = [home administratorHandler];
  v5 = *MEMORY[0x277CCEBF8];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v9[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v9[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [administratorHandler registerForMessage:v5 receiver:self policies:v8 selector:sel_handleUpdateAccessoryNetworkProtectionGroupProtectionMode_];
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  messageTargetUUID = [home messageTargetUUID];

  return messageTargetUUID;
}

- (id)logIdentifier
{
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)markGroupWithUUID:(id)d active:(BOOL)active
{
  activeCopy = active;
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v16 = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Marking group as active: %@, group: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(NSMutableDictionary *)selfCopy->_groupRecords objectForKeyedSubscript:dCopy];
  group = [v12 group];

  v14 = [(NSMutableDictionary *)selfCopy->_groupRecords objectForKeyedSubscript:dCopy];
  [v14 setActive:activeCopy];

  os_unfair_lock_unlock(&self->_lock);

  return group;
}

- (id)removeGroupWithUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing group with UUID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(NSMutableDictionary *)selfCopy->_groupRecords objectForKeyedSubscript:dCopy];
  if (v9)
  {
    [(NSMutableDictionary *)selfCopy->_groupRecords removeObjectForKey:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (BOOL)addActiveSurrogateGroup:(id)group
{
  v24 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = groupCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding active surrogate group: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  groupRecords = selfCopy->_groupRecords;
  uuid = [groupCopy uuid];
  v11 = [(NSMutableDictionary *)groupRecords objectForKeyedSubscript:uuid];

  if (v11)
  {
    v12 = selfCopy->_groupRecords;
    uuid2 = [groupCopy uuid];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:uuid2];

    isActive = [v14 isActive];
    if ((isActive & 1) == 0)
    {
      [v14 setActive:1];
    }

    v16 = isActive ^ 1;
  }

  else
  {
    v14 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:groupCopy active:1 persisted:0];
    v17 = selfCopy->_groupRecords;
    uuid3 = [groupCopy uuid];
    [(NSMutableDictionary *)v17 setObject:v14 forKeyedSubscript:uuid3];

    v16 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v16;
}

- (id)groupWithUUID:(id)d
{
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:d];
  group = [v3 group];

  return group;
}

- (id)groupRecordWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_groupRecords objectForKeyedSubscript:dCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSSet)activeGroups
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_groupRecords allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isActive])
        {
          group = [v8 group];
          [v3 addObject:group];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = objc_msgSend_copy(v3);
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (NSSet)persistedGroups
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_groupRecords allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isPersisted])
        {
          group = [v8 group];
          [v3 addObject:group];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = objc_msgSend_copy(v3);
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center persistedGroups:(id)groups
{
  v56 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  centerCopy = center;
  groupsCopy = groups;
  v11 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self initWithHome:homeCopy notificationCenter:centerCopy];
  v12 = v11;
  if (groupsCopy && v11)
  {
    v36 = groupsCopy;
    v37 = centerCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = groupsCopy;
    v13 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    v38 = v12;
    v39 = homeCopy;
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = v12;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = HMFGetLogIdentifier();
            uuid = [homeCopy uuid];
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v51 = v21;
            v52 = 2112;
            v53 = uUIDString;
            v54 = 2112;
            v55 = v17;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Loading persisted group: %@", buf, 0x20u);

            homeCopy = v39;
            v12 = v38;
          }

          objc_autoreleasePoolPop(v18);
          [v17 configureWithHome:homeCopy];
        }

        v14 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v14);
    }

    v24 = obj;
    v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v24, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v45 objects:buf count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v45 + 1) + 8 * j);
          v32 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:v31 active:0 persisted:1, v36, v37];
          uuid2 = [v31 uuid];
          [(NSMutableDictionary *)v25 setObject:v32 forKeyedSubscript:uuid2];
        }

        v28 = [v26 countByEnumeratingWithState:&v45 objects:buf count:16];
      }

      while (v28);
    }

    v12 = v38;
    groupRecords = v38->_groupRecords;
    v38->_groupRecords = v25;

    homeCopy = v39;
    groupsCopy = v36;
    centerCopy = v37;
  }

  return v12;
}

- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center
{
  homeCopy = home;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = HMDAccessoryNetworkProtectionGroupRegistry;
  v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)&v14 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    groupRecords = v8->_groupRecords;
    v8->_groupRecords = dictionary;

    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v8->_notificationCenter, center);
    workQueue = [homeCopy workQueue];
    workQueue = v8->_workQueue;
    v8->_workQueue = workQueue;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_58684 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_58684, &__block_literal_global_58685);
  }

  v3 = logCategory__hmf_once_v11_58686;

  return v3;
}

uint64_t __57__HMDAccessoryNetworkProtectionGroupRegistry_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_58686;
  logCategory__hmf_once_v11_58686 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end