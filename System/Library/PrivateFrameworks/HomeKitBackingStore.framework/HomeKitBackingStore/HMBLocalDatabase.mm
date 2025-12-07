@interface HMBLocalDatabase
+ (id)logCategory;
- (BOOL)removeLocalDataForZone:(id)zone error:(id *)error;
- (BOOL)reopenZone:(id)zone error:(id *)error;
- (HMBLocalDatabase)initWithDatastorePath:(id)path configuration:(id)configuration error:(id *)error;
- (HMBLocalDatabase)initWithLocalSQLContext:(id)context configuration:(id)configuration;
- (HMBLocalDatabaseDelegate)delegate;
- (id)_openZoneWithZoneID:(id)d mirror:(id)mirror configuration:(id)configuration existingLocalZone:(id)zone error:(id *)error;
- (id)fetchZonesWithError:(id *)error;
- (id)logIdentifier;
- (id)openZoneWithMirror:(id)mirror configuration:(id)configuration error:(id *)error;
- (id)openZoneWithZoneID:(id)d configuration:(id)configuration error:(id *)error;
- (id)removeZone:(id)zone;
- (void)dealloc;
- (void)handleLocalZoneShutdown:(id)shutdown;
@end

@implementation HMBLocalDatabase

- (HMBLocalDatabaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  local = [(HMBLocalDatabase *)self local];
  logIdentifier = [local logIdentifier];

  return logIdentifier;
}

- (void)handleLocalZoneShutdown:(id)shutdown
{
  shutdownCopy = shutdown;
  os_unfair_lock_lock_with_options();
  openZonesByZoneID = [(HMBLocalDatabase *)self openZonesByZoneID];
  zoneID = [shutdownCopy zoneID];
  token = [zoneID token];
  [openZonesByZoneID removeObjectForKey:token];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)removeLocalDataForZone:(id)zone error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v10;
    v29 = 2112;
    v30 = zoneCopy;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing local data for zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  delegate = [(HMBLocalDatabase *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    zoneID = [zoneCopy zoneID];
    [delegate localDatabase:selfCopy willRemoveZoneWithID:zoneID];
  }

  os_unfair_lock_lock_with_options();
  v26 = 0;
  v13 = [zoneCopy destroyWithError:&v26];
  v14 = v26;
  openZonesByZoneID = [(HMBLocalDatabase *)selfCopy openZonesByZoneID];
  zoneID2 = [zoneCopy zoneID];
  token = [zoneID2 token];
  [openZonesByZoneID removeObjectForKey:token];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (v13)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = zoneCopy;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_INFO, "%{public}@Successfully removed local data for zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = zoneCopy;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove local data for zone %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    if (error)
    {
      v24 = v14;
      *error = v14;
    }
  }

  return v13;
}

- (id)removeZone:(id)zone
{
  v23 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = zoneCopy;
    _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing local zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  mirror = [zoneCopy mirror];
  if (mirror)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = mirror;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing local zone mirror: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    destroy = [mirror destroy];
  }

  else
  {
    v18 = 0;
    v15 = [(HMBLocalDatabase *)selfCopy removeLocalDataForZone:zoneCopy error:&v18];
    v16 = v18;
    if (v15)
    {
      [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      [MEMORY[0x277D2C900] futureWithError:v16];
    }
    destroy = ;
  }

  return destroy;
}

- (BOOL)reopenZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  if (zoneCopy)
  {
    v7 = zoneCopy;
    configuration = [zoneCopy configuration];
    v9 = [configuration mutableCopy];

    [v9 setCreateIfNeeded:1];
    zoneID = [v7 zoneID];
    mirror = [v7 mirror];
    v12 = [(HMBLocalDatabase *)self _openZoneWithZoneID:zoneID mirror:mirror configuration:v9 existingLocalZone:v7 error:error];
    v13 = v12 != 0;

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMBLocalDatabase *)v15 openZoneWithMirror:v16 configuration:v17 error:v18, v19];
  }
}

- (id)openZoneWithMirror:(id)mirror configuration:(id)configuration error:(id *)error
{
  mirrorCopy = mirror;
  configurationCopy = configuration;
  if (!mirrorCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = configurationCopy;
  if (!configurationCopy)
  {
LABEL_7:
    v14 = _HMFPreconditionFailure();
    return [(HMBLocalDatabase *)v14 openZoneWithZoneID:v15 configuration:v16 error:v17, v18];
  }

  zoneID = [mirrorCopy zoneID];
  v12 = [(HMBLocalDatabase *)self _openZoneWithZoneID:zoneID mirror:mirrorCopy configuration:v10 existingLocalZone:0 error:error];

  return v12;
}

- (id)openZoneWithZoneID:(id)d configuration:(id)configuration error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = configurationCopy;
  if (!configurationCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(HMBLocalDatabase *)v13 _openZoneWithZoneID:v14 mirror:v15 configuration:v16 existingLocalZone:v17 error:v18, v19];
  }

  v11 = [(HMBLocalDatabase *)self _openZoneWithZoneID:dCopy mirror:0 configuration:configurationCopy existingLocalZone:0 error:error];

  return v11;
}

- (id)_openZoneWithZoneID:(id)d mirror:(id)mirror configuration:(id)configuration existingLocalZone:(id)zone error:(id *)error
{
  v93 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mirrorCopy = mirror;
  configurationCopy = configuration;
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  selfCopy = self;
  openZonesByZoneID = [(HMBLocalDatabase *)self openZonesByZoneID];
  token = [dCopy token];
  v13 = [openZonesByZoneID objectForKey:token];

  if (v13)
  {
    delegate = [v13 delegate];
    delegate2 = [configurationCopy delegate];
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    if (delegate && delegate2 && delegate != delegate2)
    {
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = dCopy;
        _os_log_impl(&dword_22AD27000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot set a new delegate on local zone with identifier %@ because that local zone has already been opened with a different delegate", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmfErrorWithCode:1];
        *error = v20 = 0;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_INFO, "%{public}@Returning existing HMBLocalZone instance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = v13;
    }

LABEL_41:
    goto LABEL_42;
  }

  selfCopy3 = self;
  v69 = dCopy;
  os_unfair_lock_assert_owner(&self->_lock);
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__3415;
  v87 = __Block_byref_object_dispose__3416;
  v88 = 0;
  v70 = selfCopy3;
  local = [(HMBLocalDatabase *)selfCopy3 local];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = ____fetchStoreInfo_block_invoke;
  v82[3] = &unk_2786E1A10;
  v82[4] = &v83;
  v23 = [local sqlBlockWithActivity:0 block:v82];

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    token2 = [v69 token];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v28 = v84[5];
    v24 = [v28 countByEnumeratingWithState:&v78 objects:buf count:16];
    if (v24)
    {
      v29 = *v79;
      while (2)
      {
        for (i = 0; i != v24; i = (i + 1))
        {
          if (*v79 != v29)
          {
            objc_enumerationMutation(v28);
          }

          v31 = *(*(&v78 + 1) + 8 * i);
          identifier = [v31 identifier];
          token3 = [identifier token];
          v34 = [token3 isEqual:token2];

          if (v34)
          {
            v24 = v31;
            goto LABEL_26;
          }
        }

        v24 = [v28 countByEnumeratingWithState:&v78 objects:buf count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }

  _Block_object_dispose(&v83, 8);
  if (v24)
  {
LABEL_28:
    v35 = objc_autoreleasePoolPush();
    v36 = v70;
    if (zoneCopy)
    {
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = zoneCopy;
        _os_log_impl(&dword_22AD27000, v37, OS_LOG_TYPE_INFO, "%{public}@Using re-opened HMBLocalZone instance: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = zoneCopy;
      [v39 setZoneRow:{-[HMBLocalSQLContextRowZone zoneRow](v24, "zoneRow")}];
    }

    else
    {
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        _os_log_impl(&dword_22AD27000, v50, OS_LOG_TYPE_INFO, "%{public}@Creating new HMBLocalZone instance with ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      localZoneFactory = [(HMBLocalDatabase *)v36 localZoneFactory];
      identifier2 = [(HMBLocalSQLContextRowZone *)v24 identifier];
      v39 = (localZoneFactory)[2](localZoneFactory, v36, identifier2, [(HMBLocalSQLContextRowZone *)v24 zoneRow], configurationCopy, mirrorCopy);
    }

    openZonesByZoneID2 = [(HMBLocalDatabase *)v36 openZonesByZoneID];
    zoneID = [v39 zoneID];
    token4 = [zoneID token];
    [openZonesByZoneID2 setObject:v39 forKey:token4];

    v13 = v39;
    delegate = v24;
    v20 = v13;
    goto LABEL_41;
  }

  if ([configurationCopy createIfNeeded])
  {
    v40 = objc_autoreleasePoolPush();
    v41 = v70;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v43;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      _os_log_impl(&dword_22AD27000, v42, OS_LOG_TYPE_INFO, "%{public}@Creating new state for local zone with ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v77 = 0;
    v44 = v69;
    v45 = v41;
    os_unfair_lock_assert_owner(&selfCopy->_lock);
    v46 = objc_alloc_init(HMBLocalSQLContextRowZone);
    local2 = [(HMBLocalDatabase *)v45 local];

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ____createZone_block_invoke;
    v90 = &unk_2786E1B00;
    v48 = v46;
    v91 = v48;
    v49 = v44;
    v92 = v49;
    [local2 sqlBlockWithActivity:0 error:&v77 block:buf];

    if ([(HMBLocalSQLContextRowZone *)v48 zoneRow])
    {
      [(HMBLocalSQLContextRowZone *)v48 setIdentifier:v49];
      v24 = v48;
    }

    else
    {
      v24 = 0;
    }

    v63 = v77;
    delegate = v63;
    if (!v24)
    {
      v64 = objc_autoreleasePoolPush();
      v65 = v45;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v49;
        *&buf[22] = 2112;
        v90 = delegate;
        _os_log_impl(&dword_22AD27000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new state for local zone with ID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v64);
      if (error)
      {
        v68 = delegate;
        v13 = 0;
        v20 = 0;
        *error = delegate;
      }

      else
      {
        v13 = 0;
        v20 = 0;
      }

      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  }

  v58 = objc_autoreleasePoolPush();
  v59 = v70;
  v60 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    v61 = HMFGetLogIdentifier();
    name = [v69 name];
    *buf = 138543618;
    *&buf[4] = v61;
    *&buf[12] = 2112;
    *&buf[14] = name;
    _os_log_impl(&dword_22AD27000, v60, OS_LOG_TYPE_ERROR, "%{public}@Unable to open local zone that does not already exist and can't be created: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v58);
  v13 = 0;
  v20 = 0;
LABEL_42:

  os_unfair_lock_unlock(&selfCopy->_lock);

  return v20;
}

- (id)fetchZonesWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3415;
  v30 = __Block_byref_object_dispose__3416;
  v31 = 0;
  local = [(HMBLocalDatabase *)self local];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__HMBLocalDatabase_fetchZonesWithError___block_invoke;
  v25[3] = &unk_2786E1A10;
  v25[4] = &v26;
  v19 = [local sqlBlockWithActivity:0 block:v25];

  if (v19)
  {
    if (error)
    {
      v5 = v19;
      v6 = 0;
      v7 = v19;
      *error = v19;
      goto LABEL_14;
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v27[5], "count")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v27[5];
    v8 = [obj countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [HMBLocalZoneIDRow alloc];
          identifier = [v11 identifier];
          name = [identifier name];
          identifier2 = [v11 identifier];
          token = [identifier2 token];
          v17 = [(HMBLocalZoneIDRow *)v12 initWithName:name token:token];
          [v6 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v8);
    }
  }

  v7 = v19;
LABEL_14:

  _Block_object_dispose(&v26, 8);

  return v6;
}

id __40__HMBLocalDatabase_fetchZonesWithError___block_invoke(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [a2 _fetchAllZones:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  return v4;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMBLocalDatabase", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMBLocalDatabase;
  [(HMBLocalDatabase *)&v7 dealloc];
}

- (HMBLocalDatabase)initWithLocalSQLContext:(id)context configuration:(id)configuration
{
  contextCopy = context;
  configurationCopy = configuration;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = configurationCopy;
  if (!configurationCopy)
  {
LABEL_7:
    v21 = _HMFPreconditionFailure();
    return __58__HMBLocalDatabase_initWithLocalSQLContext_configuration___block_invoke(v21, v22, v23, v24, v25, v26);
  }

  v27.receiver = self;
  v27.super_class = HMBLocalDatabase;
  v10 = [(HMBLocalDatabase *)&v27 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v10->_queue;
    v10->_queue = v11;

    [(NSOperationQueue *)v10->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_queue setQualityOfService:25];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.HomeKitBackingStore.LocalDatabase"];
    [(NSOperationQueue *)v10->_queue setName:v13];

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    openZonesByZoneID = v10->_openZonesByZoneID;
    v10->_openZonesByZoneID = strongToWeakObjectsMapTable;

    modelContainer = [v9 modelContainer];
    modelContainer = v10->_modelContainer;
    v10->_modelContainer = modelContainer;

    objc_storeStrong(&v10->_local, context);
    localZoneFactory = v10->_localZoneFactory;
    v10->_localZoneFactory = &__block_literal_global_3433;

    v19 = v10;
  }

  return v10;
}

HMBLocalZone *__58__HMBLocalDatabase_initWithLocalSQLContext_configuration___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = a2;
  v14 = [[HMBLocalZone alloc] initWithLocalDatabase:v13 zoneID:v12 zoneRow:a4 configuration:v11 mirror:v10];

  return v14;
}

- (HMBLocalDatabase)initWithDatastorePath:(id)path configuration:(id)configuration error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  configurationCopy = configuration;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v10 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_12;
  }

  v20 = 0;
  v11 = [HMBLocalSQLContext openWithURL:pathCopy error:&v20];
  v12 = v20;
  if (v11)
  {
    selfCopy = [(HMBLocalDatabase *)self initWithLocalSQLContext:v11 configuration:v10];
    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to open SQL context for HMBLocalDatabase initialization: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v18 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_3449 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_3449, &__block_literal_global_35);
  }

  v3 = logCategory__hmf_once_v21_3450;

  return v3;
}

uint64_t __31__HMBLocalDatabase_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21_3450;
  logCategory__hmf_once_v21_3450 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end