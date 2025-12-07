@interface HMDAppleAccessoryPairingController
+ (id)logCategory;
- (BOOL)handleMessage:(id)message from:(id)from;
- (BOOL)pairAccessory:(id)accessory;
- (HMDAppleAccessoryPairingController)initWithHomeManager:(id)manager dataSource:(id)source;
- (HMDHomeManager)homeManager;
- (id)cleanUpBadHomeManagerRecordsForHomeManager:(id)manager;
- (void)generateModelChangesForHomeManager:(id)manager homeName:(id)name pairingHomeUUID:(id)d defaultRoomUUID:(id)iD homeZoneUUID:(id)uID accessory:(id)accessory outBlobChanges:(id *)changes outLegacyChanges:(id *)self0 outHomeManagerChanges:(id *)self1;
- (void)removeControllerForZone:(id)zone;
- (void)start;
@end

@implementation HMDAppleAccessoryPairingController

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)removeControllerForZone:(id)zone
{
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  pairingHomes = [(HMDAppleAccessoryPairingController *)self pairingHomes];
  v5 = [pairingHomes objectForKey:zoneCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    dataSource = [(HMDAppleAccessoryPairingController *)self dataSource];
    state = [v5 state];
    accessory = [state accessory];
    uuid = [accessory uuid];
    [dataSource deletePairingAccessoryState:uuid];

    os_unfair_lock_lock_with_options();
    pairingHomes2 = [(HMDAppleAccessoryPairingController *)self pairingHomes];
    [pairingHomes2 removeObjectForKey:zoneCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)generateModelChangesForHomeManager:(id)manager homeName:(id)name pairingHomeUUID:(id)d defaultRoomUUID:(id)iD homeZoneUUID:(id)uID accessory:(id)accessory outBlobChanges:(id *)changes outLegacyChanges:(id *)self0 outHomeManagerChanges:(id *)self1
{
  v100 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  accessoryCopy = accessory;
  homeManagerZone = [(HMDAppleAccessoryPairingController *)self homeManagerZone];
  uuid = [managerCopy uuid];
  v93 = 0;
  v21 = [homeManagerZone fetchModelWithModelID:uuid ofType:+[HMDLegacyV4Model hmbModelClassForHMDModelClass:](HMDLegacyV4Model error:{"hmbModelClassForHMDModelClass:", objc_opt_class()), &v93}];
  v88 = v93;

  if (!v21)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v97 = v25;
      v98 = 2112;
      v99 = v88;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Error fetching home manager model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v85 = v21;
  convertToHMDModelObject = [v21 convertToHMDModelObject];
  if (!convertToHMDModelObject)
  {
    v27 = [HMDHomeManagerModel alloc];
    uuid2 = [managerCopy uuid];
    hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
    convertToHMDModelObject = [(HMDBackingStoreModelObject *)v27 initWithUUID:uuid2 parentUUID:hmf_zeroUUID];

    dataSource = [(HMDAppleAccessoryPairingController *)self dataSource];
    hh1ControllerIdentity = [dataSource hh1ControllerIdentity];
    identifier = [hh1ControllerIdentity identifier];
    [(HMDHomeManagerModel *)convertToHMDModelObject setControllerKeyIdentifier:identifier];

    uUIDString = [dCopy UUIDString];
    [(HMDHomeManagerModel *)convertToHMDModelObject setPrimaryHomeUUID:uUIDString];
  }

  v34 = [HMDUser alloc];
  v35 = +[HMDAppleAccountManager sharedManager];
  account = [v35 account];
  primaryHandle = [account primaryHandle];
  dataSource2 = [(HMDAppleAccessoryPairingController *)self dataSource];
  hh1ControllerIdentity2 = [dataSource2 hh1ControllerIdentity];
  selfCopy2 = self;
  v40 = [(HMDUser *)v34 initWithAccountHandle:primaryHandle homeUUID:dCopy pairingIdentity:hh1ControllerIdentity2 privilege:3];

  v41 = [HMDHome alloc];
  v42 = objc_alloc_init(HMDHomeDefaultDataSource);
  v86 = dCopy;
  v87 = managerCopy;
  v43 = [(HMDHome *)v41 initWithName:nameCopy uuid:dCopy defaultRoomUUID:iDCopy owner:v40 homeManager:managerCopy presenceAuth:0 dataSource:v42];

  v44 = [HMDCloudZoneInformation alloc];
  pairingUsername = [(HMDUser *)v40 pairingUsername];
  v46 = [(HMDCloudZoneInformation *)v44 initWithOwnerName:pairingUsername uuid:uIDCopy];

  [(HMDCloudZoneInformation *)v46 setFetchFailed:0];
  [(HMDCloudZoneInformation *)v46 setFirstFetch:0];
  [(HMDCloudZoneInformation *)v46 setZoneCreated:1];
  cloudZoneInformation = [(HMDHomeManagerModel *)convertToHMDModelObject cloudZoneInformation];
  v48 = [HMDCloudZoneInformation cloudZonesWithDictionary:cloudZoneInformation];

  v81 = v46;
  [v48 addObject:v46];
  v49 = v48;
  v50 = [HMDCloudZoneInformation cloudZoneInformationWithCloudZones:v48];
  [(HMDHomeManagerModel *)convertToHMDModelObject setCloudZoneInformation:v50];

  v51 = [HMDCloudZoneInformationModel alloc];
  v84 = convertToHMDModelObject;
  uuid3 = [(HMDBackingStoreModelObject *)convertToHMDModelObject uuid];
  v53 = [(HMDBackingStoreModelObject *)v51 initWithUUID:uIDCopy parentUUID:uuid3];

  v83 = v40;
  pairingUsername2 = [(HMDUser *)v40 pairingUsername];
  v82 = v53;
  [(HMDCloudZoneInformationModel *)v53 setOwnerName:pairingUsername2];

  homeData = [(HMDAppleAccessoryPairingController *)selfCopy2 homeData];
  homes = [homeData homes];
  v57 = [homes mutableCopy];
  v58 = v57;
  if (v57)
  {
    array = v57;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v60 = array;

  [v60 addObject:v43];
  homeData2 = [(HMDAppleAccessoryPairingController *)selfCopy2 homeData];
  [homeData2 setHomes:v60];

  homeData3 = [(HMDAppleAccessoryPairingController *)selfCopy2 homeData];
  v80 = v49;
  [homeData3 setCloudZones:v49];

  v63 = [(HMDHome *)v43 backingStoreObjects:4];
  v64 = [v63 mutableCopy];

  v65 = [accessoryCopy addTransactionForHome:v43];
  [v64 addObject:v65];

  homeData4 = [(HMDAppleAccessoryPairingController *)selfCopy2 homeData];
  v67 = [HMDPersistentStore serializeHomeData:homeData4 localStorage:0 remoteDeviceOnSameAccount:1];

  v68 = objc_alloc_init(HMDLegacyV3Model);
  [(HMDLegacyV3Model *)v68 setCloudBlob:v67];
  v69 = objc_alloc_init(HMDLegacyV0Model);
  [(HMDLegacyV0Model *)v69 setCloudBlob:v67];
  [(HMDLegacyV0Model *)v69 setCloudBlobV2:v67];
  [(HMDLegacyV0Model *)v69 setCloudBlobsReadOnly:MEMORY[0x277CBEC38]];
  v79 = v43;
  v70 = MEMORY[0x277CBEB98];
  v95[0] = v69;
  v95[1] = v68;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
  *changes = [v70 setWithArray:v71];

  v72 = MEMORY[0x277CBEB98];
  v73 = [v64 na_map:&__block_literal_global_48];
  *legacyChanges = [v72 setWithArray:v73];

  v74 = MEMORY[0x277CBEB98];
  convertToLegacyV4 = [(HMDBackingStoreModelObject *)v84 convertToLegacyV4];
  v94[0] = convertToLegacyV4;
  convertToLegacyV42 = [(HMDBackingStoreModelObject *)v82 convertToLegacyV4];
  v94[1] = convertToLegacyV42;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
  *managerChanges = [v74 setWithArray:v77];
}

- (id)cleanUpBadHomeManagerRecordsForHomeManager:(id)manager
{
  v27 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  homeManagerZone = [(HMDAppleAccessoryPairingController *)self homeManagerZone];
  uuid = [managerCopy uuid];
  v22 = 0;
  v7 = [homeManagerZone fetchModelWithModelID:uuid ofType:+[HMDLegacyV4Model hmbModelClassForHMDModelClass:](HMDLegacyV4Model error:{"hmbModelClassForHMDModelClass:", objc_opt_class()), &v22}];
  v8 = v22;

  if (v7)
  {
    hmbParentModelID = [v7 hmbParentModelID];
    hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
    v11 = [hmbParentModelID hmf_isEqualToUUID:hmf_zeroUUID];

    if (!v11)
    {
      homeManagerZone2 = [(HMDAppleAccessoryPairingController *)self homeManagerZone];
      hmbParentModelID2 = [v7 hmbParentModelID];
      v14 = [MEMORY[0x277D17108] optionsWithLabel:@"Legacy Pairing Home Manager Record Cleanup"];
      v15 = [homeManagerZone2 removeModelsWithParentModelID:hmbParentModelID2 options:v14];

      futureWithNoResult = [v15 flatMap:&__block_literal_global_47987];

      goto LABEL_8;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error fetching existing home manager model for cleanup: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:

  return futureWithNoResult;
}

id __81__HMDAppleAccessoryPairingController_cleanUpBadHomeManagerRecordsForHomeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mirrorOutputResult];

  if (v3)
  {
    v4 = [v2 mirrorOutputResult];
    v5 = [v4 flatMap:&__block_literal_global_35];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v5;
}

- (BOOL)pairAccessory:(id)accessory
{
  v114 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = accessoryCopy;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting legacy pairing for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  legacyCloudDatabase = [(HMDAppleAccessoryPairingController *)selfCopy legacyCloudDatabase];
  if (legacyCloudDatabase)
  {
    homeManagerZone = [(HMDAppleAccessoryPairingController *)selfCopy homeManagerZone];
    v9 = homeManagerZone == 0;

    if (v9)
    {
      dataSource = [(HMDAppleAccessoryPairingController *)selfCopy dataSource];
      hh1ControllerIdentity = [dataSource hh1ControllerIdentity];
      v103 = 0;
      v18 = [legacyCloudDatabase createLegacyZone:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5" controllerIdentity:hh1ControllerIdentity delegate:0 error:&v103];
      v10 = v103;
      [(HMDAppleAccessoryPairingController *)selfCopy setHomeManagerZone:v18];

      homeManagerZone2 = [(HMDAppleAccessoryPairingController *)selfCopy homeManagerZone];
      LODWORD(v18) = homeManagerZone2 == 0;

      if (v18)
      {
        v71 = objc_autoreleasePoolPush();
        v72 = selfCopy;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v74;
          *&buf[12] = 2112;
          *&buf[14] = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
          *&buf[22] = 2112;
          v111 = v10;
          _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unable to create legacy zone %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v71);
        v15 = 0;
        goto LABEL_45;
      }

      homeManagerZone3 = [(HMDAppleAccessoryPairingController *)selfCopy homeManagerZone];
      [homeManagerZone3 startUp];
    }

    else
    {
      v10 = 0;
    }

    blobZone = [(HMDAppleAccessoryPairingController *)selfCopy blobZone];
    v22 = blobZone == 0;

    if (v22)
    {
      dataSource2 = [(HMDAppleAccessoryPairingController *)selfCopy dataSource];
      hh1ControllerIdentity2 = [dataSource2 hh1ControllerIdentity];
      v102 = v10;
      v26 = [legacyCloudDatabase createLegacyZone:@"HomeDataBlobZone" controllerIdentity:hh1ControllerIdentity2 delegate:0 error:&v102];
      v23 = v102;

      [(HMDAppleAccessoryPairingController *)selfCopy setBlobZone:v26];
      blobZone2 = [(HMDAppleAccessoryPairingController *)selfCopy blobZone];
      LODWORD(v26) = blobZone2 == 0;

      if (v26)
      {
        v75 = objc_autoreleasePoolPush();
        v76 = selfCopy;
        v77 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v78;
          *&buf[12] = 2112;
          *&buf[14] = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
          *&buf[22] = 2112;
          v111 = v23;
          _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Unable to create legacy zone %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v75);
        v15 = 0;
        goto LABEL_44;
      }

      blobZone3 = [(HMDAppleAccessoryPairingController *)selfCopy blobZone];
      [blobZone3 startUp];
    }

    else
    {
      v23 = v10;
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v82 = [HMDHome zoneIDFromHomeUUID:uUID];
    uUIDString = [v82 UUIDString];
    v81 = [HMDLegacyCloudDatabase recordZoneIDForLegacyName:uUIDString];
    v29 = objc_alloc(MEMORY[0x277D17070]);
    containerID = [legacyCloudDatabase containerID];
    v84 = [v29 initWithContainerID:containerID scope:2 zoneID:v81];

    v87 = [[HMDAppleAccessoryPairingHomeState alloc] initWithCloudZoneID:v84 accessory:accessoryCopy];
    homeManager = [(HMDAppleAccessoryPairingController *)selfCopy homeManager];
    dataSource3 = [(HMDAppleAccessoryPairingController *)selfCopy dataSource];
    [dataSource3 updatePairingAccessoryState:v87];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v111 = __Block_byref_object_copy__48000;
    v112 = __Block_byref_object_dispose__48001;
    v32 = [HMDAppleAccessoryPairingHomeController alloc];
    dataSource4 = [(HMDAppleAccessoryPairingController *)selfCopy dataSource];
    v113 = [(HMDAppleAccessoryPairingHomeController *)v32 initWithState:v87 homeManager:homeManager dataSource:dataSource4];

    os_unfair_lock_lock_with_options();
    pairingHomes = [(HMDAppleAccessoryPairingController *)selfCopy pairingHomes];
    allValues = [pairingHomes allValues];
    v36 = objc_msgSend_copy(allValues);

    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke;
    v99[3] = &unk_2786734B8;
    v79 = accessoryCopy;
    v100 = v79;
    v101 = buf;
    [v36 hmf_enumerateWithAutoreleasePoolUsingBlock:v99];
    v37 = *(*&buf[8] + 40);
    if (v37)
    {
      pairingHomes2 = [(HMDAppleAccessoryPairingController *)selfCopy pairingHomes];
      [pairingHomes2 setObject:*(*&buf[8] + 40) forKey:v84];
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        uuid = [v79 uuid];
        *v104 = 138543618;
        v105 = v42;
        v106 = 2112;
        v107 = uuid;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@A pairing controller for accessory %@ already exists.", v104, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    if (v37)
    {
      dataSource5 = [(HMDAppleAccessoryPairingController *)selfCopy dataSource];
      hh1ControllerIdentity3 = [dataSource5 hh1ControllerIdentity];
      v98 = v23;
      v46 = [legacyCloudDatabase createLegacyZone:uUIDString controllerIdentity:hh1ControllerIdentity3 delegate:0 error:&v98];
      v47 = v98;

      v15 = v46 != 0;
      if (v46)
      {
        [*(*&buf[8] + 40) startWithLocalZone:v46];
        array = [MEMORY[0x277CBEB18] array];
        blobZone4 = [(HMDAppleAccessoryPairingController *)selfCopy blobZone];
        mirror = [blobZone4 mirror];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = mirror;
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        startUp = [v52 startUp];

        if (startUp)
        {
          [array addObject:startUp];
        }

        homeManagerZone4 = [(HMDAppleAccessoryPairingController *)selfCopy homeManagerZone];
        mirror2 = [homeManagerZone4 mirror];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = mirror2;
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;

        startUp2 = [v57 startUp];

        if (startUp2)
        {
          [array addObject:startUp2];
        }

        mirror3 = [v46 mirror];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = mirror3;
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;

        startUp3 = [v61 startUp];

        if (startUp3)
        {
          [array addObject:startUp3];
        }

        v63 = [(HMDAppleAccessoryPairingController *)selfCopy cleanUpBadHomeManagerRecordsForHomeManager:homeManager];
        [array addObject:v63];

        v64 = [MEMORY[0x277D2C900] chainFutures:array];
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_17;
        v90[3] = &unk_2786734E0;
        v91 = v79;
        v92 = selfCopy;
        v93 = homeManager;
        v94 = uUID;
        v95 = uUID2;
        v96 = v82;
        v97 = v46;
        v65 = [v64 addSuccessBlock:v90];
      }

      else
      {
        v66 = objc_autoreleasePoolPush();
        v67 = selfCopy;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = HMFGetLogIdentifier();
          *v104 = 138543874;
          v105 = v69;
          v106 = 2112;
          v107 = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
          v108 = 2112;
          v109 = v47;
          _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Unable to create legacy zone %@: %@", v104, 0x20u);
        }

        objc_autoreleasePoolPop(v66);
      }

      v23 = v47;
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(buf, 8);

LABEL_44:
    v10 = v23;
LABEL_45:

    goto LABEL_46;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@HMDAppleAccessoryPairingController has not been started.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = 0;
LABEL_46:

  return v15;
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 state];
  v7 = [v6 accessory];
  v8 = [v7 uuid];
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    *a4 = 1;
  }
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_17(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) uuid];
  v4 = [v2 stringWithFormat:@"PairingHomeFor-%@", v3];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  [v9 generateModelChangesForHomeManager:v5 homeName:v4 pairingHomeUUID:v6 defaultRoomUUID:v7 homeZoneUUID:v8 accessory:v10 outBlobChanges:&v28 outLegacyChanges:&v27 outHomeManagerChanges:&v26];
  v11 = v28;
  v12 = v27;
  v13 = v26;
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277D17108] optionsWithLabel:v4];
  v16 = [*(a1 + 40) blobZone];
  v17 = [v16 addModels:v11 options:v15];
  [v14 addObject:v17];

  v18 = [*(a1 + 80) addModels:v12 options:v15];
  [v14 addObject:v18];

  v19 = [*(a1 + 40) homeManagerZone];
  v20 = [v19 addModels:v13 options:v15];
  [v14 addObject:v20];

  v21 = MEMORY[0x277D2C900];
  v22 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v23 = [v21 combineAllFutures:v14 ignoringErrors:0 scheduler:v22];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_2;
  v25[3] = &unk_278682F48;
  v25[4] = *(a1 + 40);
  v24 = [v23 addSuccessBlock:v25];
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v5 = [v3 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_3;
  v12[3] = &unk_2786855C8;
  v12[4] = *(a1 + 32);
  v13 = v5;
  v6 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  v7 = MEMORY[0x277D2C900];
  v8 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v9 = [v7 combineAllFutures:v6 ignoringErrors:0 scheduler:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_25;
  v11[3] = &unk_278682F48;
  v11[4] = *(a1 + 32);
  v10 = [v9 addSuccessBlock:v11];
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v9;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to process models: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = v3;
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

    v13 = [v12 mirrorOutputResult];

    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = [v12 mirrorOutputResult];
      [v14 addObject:v15];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v19;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Model update did not create mirror output result: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_25(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to push models: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (BOOL)handleMessage:(id)message from:(id)from
{
  messageCopy = message;
  fromCopy = from;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  os_unfair_lock_lock_with_options();
  pairingHomes = [(HMDAppleAccessoryPairingController *)self pairingHomes];
  allValues = [pairingHomes allValues];
  v10 = objc_msgSend_copy(allValues);

  os_unfair_lock_unlock(&self->_lock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HMDAppleAccessoryPairingController_handleMessage_from___block_invoke;
  v14[3] = &unk_278673490;
  v11 = messageCopy;
  v15 = v11;
  v12 = fromCopy;
  v16 = v12;
  v17 = &v18;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

void *__57__HMDAppleAccessoryPairingController_handleMessage_from___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 handleMessage:a1[4] from:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)start
{
  v29 = *MEMORY[0x277D85DE8];
  legacyCloudDatabase = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];

  if (legacyCloudDatabase)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Legacy Pairing Controller has already started up.", buf, 0xCu);
    }
  }

  else
  {
    v8 = +[HMDDeviceCapabilities deviceCapabilities];
    supportsKeychainSync = [v8 supportsKeychainSync];

    if (supportsKeychainSync)
    {
      v10 = objc_alloc(MEMORY[0x277CBC220]);
      v11 = [v10 initWithContainerIdentifier:@"com.apple.willow.config" environment:cloudKitContainerEnvironment];
      v12 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v11];
      [v12 setSubscriptionPushRegistrationAction:1];
      v13 = [HMDLegacyCloudDatabase alloc];
      v14 = +[HMDDatabase defaultDatabase];
      localDatabase = [v14 localDatabase];
      v16 = [(HMDLegacyCloudDatabase *)v13 initWithLocalDatabase:localDatabase configuration:v12 error:0];
      [(HMDAppleAccessoryPairingController *)self setLegacyCloudDatabase:v16];

      legacyCloudDatabase2 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];
      v18 = [legacyCloudDatabase2 registerPrivateSubscriptionForExternalRecordType:0];

      legacyCloudDatabase3 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];
      v20 = [legacyCloudDatabase3 registerSharedSubscriptionForExternalRecordType:0];

      objc_initWeak(buf, self);
      legacyCloudDatabase4 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];
      performInitialCloudSync = [legacyCloudDatabase4 performInitialCloudSync];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __43__HMDAppleAccessoryPairingController_start__block_invoke;
      v25[3] = &unk_278684500;
      objc_copyWeak(&v26, buf);
      v23 = [performInitialCloudSync addSuccessBlock:v25];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);

      return;
    }

    v4 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Device cannot support keychain sync, no way we could pair an Apple accessory.", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __43__HMDAppleAccessoryPairingController_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained dataSource];
  v6 = [v5 inProgressPairingAccessories];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDAppleAccessoryPairingController_start__block_invoke_2;
  v7[3] = &unk_278673468;
  objc_copyWeak(&v8, (a1 + 32));
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  objc_destroyWeak(&v8);
}

void __43__HMDAppleAccessoryPairingController_start__block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 cloudZoneID];
  v6 = [v5 zoneID];

  v7 = [(os_unfair_lock_s *)WeakRetained legacyCloudDatabase];
  v8 = [v6 zoneName];
  v9 = [(os_unfair_lock_s *)WeakRetained dataSource];
  v10 = [v9 hh1ControllerIdentity];
  v27 = 0;
  v11 = [v7 mirrorLegacyZone:v8 controllerIdentity:v10 delegate:0 error:&v27];
  v12 = v27;

  if (v11)
  {
    v13 = [HMDAppleAccessoryPairingHomeController alloc];
    v14 = [(os_unfair_lock_s *)WeakRetained homeManager];
    v15 = [(os_unfair_lock_s *)WeakRetained dataSource];
    v16 = [(HMDAppleAccessoryPairingHomeController *)v13 initWithState:v3 homeManager:v14 dataSource:v15];

    os_unfair_lock_lock_with_options();
    v17 = [(os_unfair_lock_s *)WeakRetained pairingHomes];
    v18 = [v3 cloudZoneID];
    [v17 setObject:v16 forKey:v18];

    os_unfair_lock_unlock(WeakRetained + 2);
    [(HMDAppleAccessoryPairingHomeController *)v16 startWithLocalZone:v11];
    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@LEGACY CLOUD ZONE OPEN: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = WeakRetained;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v26;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@LEGACY CLOUD ZONE OPEN %@ FAILED: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
  }
}

- (HMDAppleAccessoryPairingController)initWithHomeManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = HMDAppleAccessoryPairingController;
  v8 = [(HMDAppleAccessoryPairingController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_homeManager, managerCopy);
    objc_storeStrong(&v9->_dataSource, source);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pairingHomes = v9->_pairingHomes;
    v9->_pairingHomes = dictionary;

    v12 = objc_alloc_init(HMDMutableHomeData);
    homeData = v9->_homeData;
    v9->_homeData = v12;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_48035 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_48035, &__block_literal_global_51_48036);
  }

  v3 = logCategory__hmf_once_v27_48037;

  return v3;
}

void __49__HMDAppleAccessoryPairingController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v27_48037;
  logCategory__hmf_once_v27_48037 = v0;
}

@end