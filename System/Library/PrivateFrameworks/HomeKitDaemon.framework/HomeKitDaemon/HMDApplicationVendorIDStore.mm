@interface HMDApplicationVendorIDStore
+ (HMDApplicationVendorIDStore)sharedStore;
- (BOOL)_addVendorID:(id)d forApplication:(id)application companionAppBundleID:(id)iD isSPIClient:(BOOL)client;
- (HMDApplicationVendorIDStore)init;
- (HMDApplicationVendorIDStore)initWithCoder:(id)coder;
- (id)_machOUUIDsForApplicationBundleID:(id)d;
- (id)_vendorIDForApplicationBundleID:(id)d;
- (id)machOUUIDForApplicationBundleID:(id)d;
- (id)vendorIDForApplicationBundleID:(id)d;
- (void)_extractVendorIDForApplicationBundleID:(id)d;
- (void)_handleApplicationUninstalledNotification:(id)notification;
- (void)_save;
- (void)_setAndSaveVendorID:(id)d applicationBundleID:(id)iD companionAppBundleID:(id)bundleID isSPIClient:(BOOL)client;
- (void)addVendorID:(id)d applicationBundleID:(id)iD;
- (void)addVendorID:(id)d applicationBundleID:(id)iD companionAppBundleID:(id)bundleID;
- (void)addVendorID:(id)d applicationBundleID:(id)iD isSPIClient:(BOOL)client;
- (void)checkCorrectness;
- (void)encodeWithCoder:(id)coder;
- (void)removeVendorIDForApplicationBundleID:(id)d;
@end

@implementation HMDApplicationVendorIDStore

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationVendorIDMapping = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
  v5 = objc_msgSend_copy(applicationVendorIDMapping);
  [coderCopy encodeObject:v5 forKey:@"HM.vendorIDStore"];
}

- (HMDApplicationVendorIDStore)initWithCoder:(id)coder
{
  v21[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDApplicationVendorIDStore *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HM.vendorIDStore"];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved application vendor ID store: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v9 mutableCopy];
      applicationVendorIDMapping = v11->_applicationVendorIDMapping;
      v11->_applicationVendorIDMapping = v14;
    }
  }

  return v5;
}

- (void)_handleApplicationUninstalledNotification:(id)notification
{
  notificationCopy = notification;
  clientQueue = self->_clientQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDApplicationVendorIDStore__handleApplicationUninstalledNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(clientQueue, v7);
}

void __73__HMDApplicationVendorIDStore__handleApplicationUninstalledNotification___block_invoke(uint64_t a1)
{
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

  v6 = [v4 bundleIdentifier];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) removeVendorIDForApplicationBundleID:v6];
    v5 = v6;
  }
}

- (id)_machOUUIDsForApplicationBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  applicationMachUUIDMapping = [(HMDApplicationVendorIDStore *)self applicationMachUUIDMapping];
  machOUUIDs = [applicationMachUUIDMapping objectForKeyedSubscript:dCopy];

  if (!machOUUIDs)
  {
    v7 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:dCopy];
    v8 = v7;
    if (v7)
    {
      machOUUIDs = [v7 machOUUIDs];
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543874;
        v16 = v12;
        v17 = 2112;
        v18 = dCopy;
        v19 = 2112;
        v20 = machOUUIDs;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating Mach UUID mapping with application bundle ID %@ and %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      applicationMachUUIDMapping2 = [(HMDApplicationVendorIDStore *)selfCopy applicationMachUUIDMapping];
      [applicationMachUUIDMapping2 setObject:machOUUIDs forKeyedSubscript:dCopy];
    }

    else
    {
      machOUUIDs = 0;
    }
  }

  return machOUUIDs;
}

- (id)machOUUIDForApplicationBundleID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__138770;
  v16 = __Block_byref_object_dispose__138771;
  v17 = 0;
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDApplicationVendorIDStore_machOUUIDForApplicationBundleID___block_invoke;
  block[3] = &unk_27868A4D8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(clientQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__HMDApplicationVendorIDStore_machOUUIDForApplicationBundleID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _machOUUIDsForApplicationBundleID:*(a1 + 40)];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_save
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    applicationVendorIDMapping = [(HMDApplicationVendorIDStore *)selfCopy applicationVendorIDMapping];
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = applicationVendorIDMapping;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Archiving vendor id store %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [HMDPersistentStore archiveVendorStore:selfCopy];
}

- (void)removeVendorIDForApplicationBundleID:(id)d
{
  dCopy = d;
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDApplicationVendorIDStore_removeVendorIDForApplicationBundleID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(clientQueue, v7);
}

void __68__HMDApplicationVendorIDStore_removeVendorIDForApplicationBundleID___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) applicationVendorIDMapping];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v23 = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unknown application %@, cannot remove", &v23, 0x16u);
    }

    goto LABEL_7;
  }

  v4 = [v3 isSPIClient];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@This is an internal client, do not remove it.", &v23, 0xCu);
    }

LABEL_7:

    objc_autoreleasePoolPop(v5);
    goto LABEL_17;
  }

  if (v8)
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v23 = 138543618;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing mapping for application bundle id %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v14 = [*(a1 + 32) applicationVendorIDMapping];
  [v14 removeObjectForKey:*(a1 + 40)];

  if (isWatch())
  {
    v15 = [v3 companionAppBundleID];

    if (v15)
    {
      v16 = [*(a1 + 32) applicationVendorIDMapping];
      v17 = [v3 companionAppBundleID];
      [v16 removeObjectForKey:v17];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@WatchOS : Companion app does not exist for %@. Hence not removing the mapping.", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  [*(a1 + 32) _save];
LABEL_17:
}

- (BOOL)_addVendorID:(id)d forApplication:(id)application companionAppBundleID:(id)iD isSPIClient:(BOOL)client
{
  clientCopy = client;
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  applicationCopy = application;
  iDCopy = iD;
  if (!applicationCopy)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v25;
      v26 = "%{public}@Received invalid application bundle identifier";
LABEL_13:
      v27 = v24;
      v28 = 12;
      goto LABEL_14;
    }

LABEL_15:

    objc_autoreleasePoolPop(v22);
    v29 = 0;
    goto LABEL_16;
  }

  if (!dCopy)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v35 = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = applicationCopy;
      v26 = "%{public}@Vendor ID provided is invalid, cannot add entry for %@";
      v27 = v24;
      v28 = 22;
LABEL_14:
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, v26, &v35, v28);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v25;
      v26 = "%{public}@Invalid data type";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v13 = dCopy;
  applicationVendorIDMapping = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
  v15 = [applicationVendorIDMapping objectForKey:applicationCopy];

  vendorIDSHA1 = [v15 vendorIDSHA1];
  v17 = [vendorIDSHA1 isEqualToData:v13];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Already exists, do not need to proceed further.", &v35, 0xCu);
    }
  }

  else
  {
    v31 = [[HMDApplicationVendorIDStoreValue alloc] initWithVendorIDSHA1:v13 applicationBundleID:applicationCopy companionAppBundleID:iDCopy isSPIClient:clientCopy];

    applicationVendorIDMapping2 = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
    [applicationVendorIDMapping2 setObject:v31 forKeyedSubscript:applicationCopy];

    v18 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = 138543874;
      v36 = v34;
      v37 = 2112;
      v38 = v31;
      v39 = 2112;
      v40 = applicationCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating new entry %@ for application bundle ID %@", &v35, 0x20u);
    }

    v15 = v31;
  }

  objc_autoreleasePoolPop(v18);
  v29 = v17 ^ 1;

LABEL_16:
  return v29;
}

- (void)_setAndSaveVendorID:(id)d applicationBundleID:(id)iD companionAppBundleID:(id)bundleID isSPIClient:(BOOL)client
{
  if ([(HMDApplicationVendorIDStore *)self _addVendorID:d forApplication:iD companionAppBundleID:bundleID isSPIClient:client])
  {

    [(HMDApplicationVendorIDStore *)self _save];
  }
}

- (void)addVendorID:(id)d applicationBundleID:(id)iD companionAppBundleID:(id)bundleID
{
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HMDApplicationVendorIDStore_addVendorID_applicationBundleID_companionAppBundleID___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = bundleIDCopy;
  v12 = bundleIDCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(clientQueue, v15);
}

- (void)addVendorID:(id)d applicationBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDApplicationVendorIDStore_addVendorID_applicationBundleID___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(clientQueue, block);
}

- (void)addVendorID:(id)d applicationBundleID:(id)iD isSPIClient:(BOOL)client
{
  dCopy = d;
  iDCopy = iD;
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HMDApplicationVendorIDStore_addVendorID_applicationBundleID_isSPIClient___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  clientCopy = client;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_async(clientQueue, v13);
}

- (void)_extractVendorIDForApplicationBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    deviceIdentifierForVendor = [v5 deviceIdentifierForVendor];
    uUIDString = [deviceIdentifierForVendor UUIDString];
    hm_generateSHA1 = [uUIDString hm_generateSHA1];

    [(HMDApplicationVendorIDStore *)self _setAndSaveVendorID:hm_generateSHA1 applicationBundleID:dCopy companionAppBundleID:0 isSPIClient:0];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = dCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Bundle ID: %@ cannot be extracted (or cannot determine): %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (id)_vendorIDForApplicationBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  applicationVendorIDMapping = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
  v6 = [applicationVendorIDMapping objectForKey:dCopy];

  if (!v6)
  {
    if (isWatch())
    {
      v6 = 0;
    }

    else
    {
      [(HMDApplicationVendorIDStore *)self _extractVendorIDForApplicationBundleID:dCopy];
      applicationVendorIDMapping2 = [(HMDApplicationVendorIDStore *)self applicationVendorIDMapping];
      v6 = [applicationVendorIDMapping2 objectForKey:dCopy];

      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        vendorIDSHA1 = [v6 vendorIDSHA1];
        v15 = 138543874;
        v16 = v11;
        v17 = 2112;
        v18 = dCopy;
        v19 = 2112;
        v20 = vendorIDSHA1;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@There is no vendor id for %@, newly extracted vendor id is %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  vendorIDSHA12 = [v6 vendorIDSHA1];

  return vendorIDSHA12;
}

- (id)vendorIDForApplicationBundleID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__138770;
  v16 = __Block_byref_object_dispose__138771;
  v17 = 0;
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDApplicationVendorIDStore_vendorIDForApplicationBundleID___block_invoke;
  block[3] = &unk_27868A4D8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(clientQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__HMDApplicationVendorIDStore_vendorIDForApplicationBundleID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _vendorIDForApplicationBundleID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)checkCorrectness
{
  clientQueue = [(HMDApplicationVendorIDStore *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDApplicationVendorIDStore_checkCorrectness__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __47__HMDApplicationVendorIDStore_checkCorrectness__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [*(a1 + 32) applicationVendorIDMapping];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  v35 = a1;
  if (v3)
  {
    v5 = v3;
    v6 = *v43;
    *&v4 = 138544130;
    v34 = v4;
    v36 = v2;
    v38 = *v43;
    do
    {
      v7 = 0;
      v39 = v5;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * v7);
        v9 = [*(a1 + 32) applicationVendorIDMapping];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (([v10 isSPIClient] & 1) == 0)
        {
          if (!isWatch() || ([v10 companionAppBundleID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
          {
            v12 = objc_alloc(MEMORY[0x277CC1E70]);
            v41 = 0;
            v13 = [v12 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v41];
            v14 = v41;
            if (v13)
            {
              v15 = [v13 deviceIdentifierForVendor];
              v16 = [v15 UUIDString];
              v17 = [v16 hm_generateSHA1];

              v18 = [v10 vendorIDSHA1];
              LOBYTE(v16) = [v17 isEqualToData:v18];

              if ((v16 & 1) == 0)
              {
                context = objc_autoreleasePoolPush();
                v19 = *(a1 + 32);
                v20 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  v21 = HMFGetLogIdentifier();
                  v22 = [v10 vendorIDSHA1];
                  *buf = v34;
                  v47 = v21;
                  v48 = 2112;
                  v49 = v22;
                  v50 = 2112;
                  v51 = v17;
                  v52 = 2112;
                  v53 = v8;
                  _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Vendor IDs are mismatching (Known: %@, Now: %@) for bundle ID: %@", buf, 0x2Au);

                  v2 = v36;
                  a1 = v35;
                }

                objc_autoreleasePoolPop(context);
                [v2 addObject:v8];
                if (isWatch())
                {
                  v23 = [v10 companionAppBundleID];
                  [v2 addObject:v23];

                  a1 = v35;
                }
              }

              v6 = v38;
LABEL_20:

              v5 = v39;
            }

            else
            {
              v24 = objc_autoreleasePoolPush();
              v25 = *(a1 + 32);
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543874;
                v47 = v27;
                v48 = 2112;
                v49 = v8;
                v50 = 2112;
                v51 = v14;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Bundle ID: %@ does not exist (or cannot determine) anymore, removing it from the store: %@", buf, 0x20u);

                v5 = v39;
              }

              objc_autoreleasePoolPop(v24);
              v2 = v36;
              [v36 addObject:v8];
              v6 = v38;
              if (isWatch())
              {
                v17 = [v10 companionAppBundleID];
                [v36 addObject:v17];
                goto LABEL_20;
              }
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = v2;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Removing the entries for bundle IDs: %@ from the store", buf, 0x16u);

      a1 = v35;
    }

    objc_autoreleasePoolPop(v28);
    [*(a1 + 32) applicationVendorIDMapping];
    v33 = v32 = a1;
    [v33 removeObjectsForKeys:v2];

    [*(v32 + 32) _save];
  }
}

- (HMDApplicationVendorIDStore)init
{
  v14.receiver = self;
  v14.super_class = HMDApplicationVendorIDStore;
  v2 = [(HMDApplicationVendorIDStore *)&v14 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    applicationVendorIDMapping = v2->_applicationVendorIDMapping;
    v2->_applicationVendorIDMapping = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    applicationMachUUIDMapping = v2->_applicationMachUUIDMapping;
    v2->_applicationMachUUIDMapping = dictionary2;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleApplicationUninstalledNotification_ name:@"HMDApplicationUninstalledNotification" object:0];
  }

  return v2;
}

+ (HMDApplicationVendorIDStore)sharedStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDApplicationVendorIDStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStore_onceToken != -1)
  {
    dispatch_once(&sharedStore_onceToken, block);
  }

  v2 = sharedStore_sharedStore;

  return v2;
}

uint64_t __42__HMDApplicationVendorIDStore_sharedStore__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[HMDPersistentStore unarchiveVendorStore];
  v3 = sharedStore_sharedStore;
  sharedStore_sharedStore = v2;

  v4 = sharedStore_sharedStore;
  if (!sharedStore_sharedStore)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No archived vendor ID store, creating a new one", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_alloc_init(HMDApplicationVendorIDStore);
    v10 = sharedStore_sharedStore;
    sharedStore_sharedStore = v9;

    v4 = sharedStore_sharedStore;
  }

  return [v4 checkCorrectness];
}

@end