@interface HMDCameraSnapshotFileManager
+ (id)logCategory;
- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)queue imageCacheDirectory:(id)directory logIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier messageDispatcher:(id)dispatcher;
- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)queue imageCacheDirectory:(id)directory logIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier messageDispatcher:(id)dispatcher snapshotSlotManager:(id)manager notificationCenter:(id)center;
- (NSDictionary)encodedMostRecentSnapshot;
- (id)_snapshotFileWithSlotIdentifier:(id *)identifier;
- (id)createSlotForSnapshotFile:(id)file requestMessages:(id)messages shouldNotifyClients:(BOOL)clients;
- (id)encodedMostRecentSnapshotForMessage:(id)message;
- (void)_clearSlotForSnapshotFile:(void *)file;
- (void)_createSlotForSnapshotFile:(void *)file;
- (void)_notifyClientsOfUpdatedMostRecentSnapshot;
- (void)backboardServicesRelaunched:(id)relaunched;
- (void)handleFillSnapshotSlot:(id)slot;
- (void)handleProcessStateChange:(id)change;
- (void)handleReleaseSnapshot:(id)snapshot;
- (void)registerForMessages;
@end

@implementation HMDCameraSnapshotFileManager

- (void)backboardServicesRelaunched:(id)relaunched
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDCameraSnapshotFileManager_backboardServicesRelaunched___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(&self->super.super, block);
}

void __60__HMDCameraSnapshotFileManager_backboardServicesRelaunched___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Recreating slot for most recent snapshot file after backboard services relaunch", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  if (v7 && (v8 = objc_getProperty(*(a1 + 32), v6, 72, 1), [(HMDCameraSnapshotFileManager *)v7 _clearSlotForSnapshotFile:v8], (v9 = *(a1 + 32)) != 0))
  {
    Property = objc_getProperty(*(a1 + 32), v6, 72, 1);
    [(HMDCameraSnapshotFileManager *)v9 _createSlotForSnapshotFile:?];
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [(HMDCameraSnapshotFileManager *)v11 _notifyClientsOfUpdatedMostRecentSnapshot];
}

- (void)_clearSlotForSnapshotFile:(void *)file
{
  if (file)
  {
    v8 = a2;
    Property = objc_getProperty(file, v3, 32, 1);
    dispatch_assert_queue_V2(Property);
    v6 = objc_getProperty(file, v5, 64, 1);
    slotIdentifier = [v8 slotIdentifier];
    [v6 clearSlotWithIdentifier:slotIdentifier];

    [v8 setFilled:0];
  }
}

- (void)_createSlotForSnapshotFile:(void *)file
{
  if (file)
  {
    v3 = a2;
    Property = objc_getProperty(file, v4, 32, 1);
    dispatch_assert_queue_V2(Property);
    v7 = [objc_getProperty(file v6];
    [v3 setSlotIdentifier:v7];
  }
}

- (void)_notifyClientsOfUpdatedMostRecentSnapshot
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    encodedMostRecentSnapshot = [self encodedMostRecentSnapshot];
    v4 = objc_alloc(MEMORY[0x277D0F820]);
    uniqueIdentifier = [self uniqueIdentifier];
    v6 = [v4 initWithTarget:uniqueIdentifier];

    v7 = objc_alloc(MEMORY[0x277D0F848]);
    v8 = [v7 initWithName:*MEMORY[0x277CCF5C0] destination:v6 payload:encodedMostRecentSnapshot];
    v9 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:1 options:513 active:1];
    [v8 setSendPolicy:v9];

    [objc_getProperty(self v10];
  }
}

- (void)handleProcessStateChange:(id)change
{
  changeCopy = change;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = changeCopy;
  selfCopy = self;
  v7 = changeCopy;
  dispatch_async(Property, v8);
}

void __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"processInfo"];

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
    v6 = [v5 state];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 shortDescription];
      if (v6 > 4)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_27972E080[v6];
      }

      v13 = v12;
      *buf = 138543874;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received notification that process info state changed for process %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if (v6)
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        v14 = v14[3];
      }

      v15 = v14;
      v16 = [v15 objectForKey:v5];

      if (v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 40);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v34 = v20;
          v35 = 2112;
          v36 = v5;
          v37 = 2112;
          v38 = v16;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing snapshot file associated with non-foreground app %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = *(a1 + 40);
        if (v21)
        {
          v22 = *(v21 + 24);
        }

        else
        {
          v22 = 0;
        }

        [v22 removeObjectForKey:v5];
      }

      if (v6 == 4)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v26;
          v35 = 2112;
          v36 = v5;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Clearing any of the filled snapshot slots for terminated process: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v27 = *(a1 + 40);
        if (v27)
        {
          v28 = *(v27 + 16);
        }

        else
        {
          v28 = 0;
        }

        v29 = [v28 objectForKey:v5];
        v30 = *(a1 + 40);
        if (v30)
        {
          v31 = *(v30 + 16);
        }

        else
        {
          v31 = 0;
        }

        [v31 removeObjectForKey:v5];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke_20;
        v32[3] = &unk_279731240;
        v32[4] = *(a1 + 40);
        [v29 na_each:v32];
      }
    }
  }
}

void __57__HMDCameraSnapshotFileManager_handleProcessStateChange___block_invoke_20(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(HMDCameraSnapshotFileManager *)*(a1 + 32) _snapshotFileWithSlotIdentifier:v3];
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[2];
    }

    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = *(a1 + 32);
          if (v12)
          {
            v13 = *(v12 + 16);
          }

          else
          {
            v13 = 0;
          }

          v14 = [v13 objectForKey:{*(*(&v24 + 1) + 8 * v10), v24}];
          if ([v14 containsObject:v3])
          {
            v20 = objc_autoreleasePoolPush();
            v21 = *(a1 + 32);
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v29 = v23;
              v30 = 2112;
              v31 = v3;
              v32 = 2112;
              v33 = v11;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot clear snapshot slot identifier %@ because is still in use by %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v20);
            goto LABEL_22;
          }

          ++v10;
        }

        while (v8 != v10);
        v15 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
        v8 = v15;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Clearing snapshot slot for snapshot %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDCameraSnapshotFileManager *)*(a1 + 32) _clearSlotForSnapshotFile:v4];
  }

LABEL_22:
}

- (id)_snapshotFileWithSlotIdentifier:(id *)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (identifier)
  {
    Property = objc_getProperty(identifier, v3, 32, 1);
    dispatch_assert_queue_V2(Property);
    v7 = [objc_getProperty(identifier v6];
    v8 = [v7 isEqualToNumber:v4];

    if (v8)
    {
      v10 = objc_getProperty(identifier, v9, 72, 1);
      goto LABEL_15;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    objectEnumerator = [identifier[3] objectEnumerator];
    v12 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          slotIdentifier = [v16 slotIdentifier];
          v18 = [slotIdentifier isEqualToNumber:v4];

          if (v18)
          {
            v10 = v16;

            goto LABEL_15;
          }
        }

        v13 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (NSDictionary)encodedMostRecentSnapshot
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_getProperty(self, a2, 72, 1);
    if (v3)
    {
      v5 = v3;
      Property = objc_getProperty(selfCopy, v4, 72, 1);
      selfCopy = encodedSnapshotFile(Property);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)encodedMostRecentSnapshotForMessage:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
    dispatch_assert_queue_V2(Property);
    v8 = objc_getProperty(self, v7, 72, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v8 = 0;
  }

  v9 = v8;
  slotIdentifier = [v9 slotIdentifier];

  if (!slotIdentifier)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v30 = 138543874;
      v31 = v26;
      v32 = 2112;
      v33 = shortDescription;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Not encoding invalid most recent snapshot for message %@: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_14;
  }

  dateCaptured = [v9 dateCaptured];
  [dateCaptured timeIntervalSinceNow];
  v13 = fabs(v12);

  if (v13 > 2.0)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_19;
  }

  proxyConnection = [messageCopy proxyConnection];
  processInfo = [proxyConnection processInfo];

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  v19 = v18;
  if (processInfo)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = processInfo;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Associating process info %@ with most recent snapshot file: %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    if (self)
    {
      snapshotFilesByAssociatedProcessInfo = selfCopy2->_snapshotFilesByAssociatedProcessInfo;
    }

    else
    {
      snapshotFilesByAssociatedProcessInfo = 0;
    }

    [(NSMapTable *)snapshotFilesByAssociatedProcessInfo setObject:v9 forKey:processInfo];
    v22 = encodedSnapshotFile(v9);
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v28;
      v32 = 2112;
      v33 = messageCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot encode most recent snapshot for message without process info: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = 0;
  }

LABEL_19:

  return v22;
}

- (id)createSlotForSnapshotFile:(id)file requestMessages:(id)messages shouldNotifyClients:(BOOL)clients
{
  clientsCopy = clients;
  v89 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  messagesCopy = messages;
  if (self)
  {
    Property = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  filePath = [fileCopy filePath];
  if (self)
  {
    v12 = objc_getProperty(self, v10, 32, 1);
    dispatch_assert_queue_V2(v12);
    v14 = [objc_getProperty(self v13];
    v15 = [v14 isEqualToString:filePath];

    if (v15)
    {
      v17 = objc_getProperty(self, v16, 72, 1);
      goto LABEL_17;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    objectEnumerator = [(NSMapTable *)self->_snapshotFilesByAssociatedProcessInfo objectEnumerator];
    v19 = [objectEnumerator countByEnumeratingWithState:&v78 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v79;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v79 != v21)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v23 = *(*(&v78 + 1) + 8 * i);
          filePath2 = [v23 filePath];
          v25 = [filePath2 isEqualToString:filePath];

          if (v25)
          {
            v17 = v23;

            goto LABEL_17;
          }
        }

        v20 = [objectEnumerator countByEnumeratingWithState:&v78 objects:buf count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
LABEL_17:

  v71 = v17;
  if (v17)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v29;
      v85 = 2112;
      v86 = v17;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping slot creation because snapshot file exists with same path: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [fileCopy setUnmanaged:1];
    v30 = v17;

    fileCopy = v30;
  }

  else
  {
    [(HMDCameraSnapshotFileManager *)self _createSlotForSnapshotFile:fileCopy];
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = messagesCopy;
  v31 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v75;
    do
    {
      v34 = 0;
      do
      {
        if (*v75 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v74 + 1) + 8 * v34);
        proxyConnection = [v35 proxyConnection];
        processInfo = [proxyConnection processInfo];

        v38 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v40 = HMFGetOSLogHandle();
        v41 = v40;
        if (processInfo)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            v84 = v42;
            v85 = 2112;
            v86 = processInfo;
            v87 = 2112;
            v88 = fileCopy;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Associating process info %@ with snapshot file: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
          if (self)
          {
            snapshotFilesByAssociatedProcessInfo = selfCopy2->_snapshotFilesByAssociatedProcessInfo;
          }

          else
          {
            snapshotFilesByAssociatedProcessInfo = 0;
          }

          [(NSMapTable *)snapshotFilesByAssociatedProcessInfo setObject:fileCopy forKey:processInfo];
        }

        else
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v84 = v44;
            v85 = 2112;
            v86 = v35;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot associate snapshot file for message without process info: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
        }

        ++v34;
      }

      while (v32 != v34);
      v45 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
      v32 = v45;
    }

    while (v45);
  }

  v47 = fileCopy;
  if (self)
  {
    v48 = objc_getProperty(self, v46, 32, 1);
    dispatch_assert_queue_V2(v48);
    v49 = v47;
    v51 = objc_getProperty(self, v50, 32, 1);
    dispatch_assert_queue_V2(v51);
    slotIdentifier = [v49 slotIdentifier];

    if (slotIdentifier)
    {
      if (objc_getProperty(self, v53, 72, 1))
      {
        v55 = [objc_getProperty(self v54];
        dateCaptured = [v49 dateCaptured];
        v57 = [v55 compare:dateCaptured];

        if (v57 != -1)
        {
          goto LABEL_53;
        }
      }

      else
      {
      }

      v62 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v65;
        v85 = 2112;
        v86 = v49;
        _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Updating most recent snapshot to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v62);
      objc_setProperty_atomic(selfCopy3, v66, v49, 72);
      if (clientsCopy)
      {
        [(HMDCameraSnapshotFileManager *)selfCopy3 _notifyClientsOfUpdatedMostRecentSnapshot];
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v84 = v61;
        v85 = 2112;
        v86 = v49;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Not updating most recent snapshot with invalid snaphot: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
    }
  }

LABEL_53:

  v68 = encodedSnapshotFile(v47);

  return v68;
}

- (void)handleReleaseSnapshot:(id)snapshot
{
  v51 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = [snapshotCopy numberForKey:*MEMORY[0x277CD1060]];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  v41 = v7;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v12;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot file with slot identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = &OBJC_IVAR___HMDBackingStore__dataSource;
    v39 = snapshotCopy;
    if (self)
    {
      v14 = objc_msgSend_copy(selfCopy->_snapshotFilesByAssociatedProcessInfo);
    }

    else
    {
      v14 = objc_msgSend_copy(0);
    }

    v15 = v14;
    v16 = [v14 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      obj = v15;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v42 + 1) + 8 * v19);
          v21 = v13;
          if (self)
          {
            v22 = *(&selfCopy->super.super.isa + v13[127]);
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          v24 = [v23 objectForKey:v20];

          slotIdentifier = [v24 slotIdentifier];
          v26 = [slotIdentifier isEqualToNumber:v41];

          if (v26)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = selfCopy;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v48 = v36;
              v49 = 2112;
              v50 = v24;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot file: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            snapshotCopy = v39;
            v32 = obj;
            if (self)
            {
              v37 = *(&v34->super.super.isa + v21[127]);
            }

            else
            {
              v37 = 0;
            }

            [v37 removeObjectForKey:v20];
            [v39 respondWithSuccess];

            goto LABEL_32;
          }

          ++v19;
          v13 = v21;
        }

        while (v17 != v19);
        v15 = obj;
        v27 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        v17 = v27;
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v31;
      v49 = 2112;
      v50 = v41;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find snapshot file to release with slot identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    snapshotCopy = v39;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v38;
      v49 = 2112;
      v50 = snapshotCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot find slot identifier in release snapshot message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  }

  [snapshotCopy respondWithError:v32];
LABEL_32:
}

- (void)handleFillSnapshotSlot:(id)slot
{
  v40 = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = [slotCopy numberForKey:*MEMORY[0x277CD1060]];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v11;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Filling snapshot with slot identifier %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  proxyConnection = [slotCopy proxyConnection];
  processInfo = [proxyConnection processInfo];

  if (processInfo)
  {
    if (self)
    {
      filledSnapshotSlotIdentifiersByProcess = selfCopy->_filledSnapshotSlotIdentifiersByProcess;
    }

    else
    {
      filledSnapshotSlotIdentifiersByProcess = 0;
    }

    v15 = [(NSMapTable *)filledSnapshotSlotIdentifiersByProcess objectForKey:processInfo];
    if (!v15)
    {
      v15 = [MEMORY[0x277CBEB58] set];
      if (self)
      {
        v16 = selfCopy->_filledSnapshotSlotIdentifiersByProcess;
      }

      else
      {
        v16 = 0;
      }

      [(NSMapTable *)v16 setObject:v15 forKey:processInfo];
    }

    [v15 addObject:v7];
    v17 = [(HMDCameraSnapshotFileManager *)&selfCopy->super.super.isa _snapshotFileWithSlotIdentifier:v7];
    v18 = v17;
    if (v17)
    {
      v35 = 0;
      v20 = v17;
      if (self)
      {
        LOBYTE(self) = 1;
        v21 = objc_getProperty(selfCopy, v19, 32, 1);
        dispatch_assert_queue_V2(v21);
        if (([v20 isFilled] & 1) == 0)
        {
          v23 = objc_getProperty(selfCopy, v22, 64, 1);
          slotIdentifier = [v20 slotIdentifier];
          filePath = [v20 filePath];
          self = [v23 fillSlotWithIdentifier:slotIdentifier filePath:filePath error:&v35];

          [v20 setFilled:self];
        }
      }

      v26 = v35;
      if (self)
      {
        [slotCopy respondWithSuccess];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v34;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot fill snapshot with slot identifier %@ because it no longer exist", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    [slotCopy respondWithError:v26];
    goto LABEL_25;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v30;
    v38 = 2112;
    v39 = slotCopy;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot fill snapshot for message without process info: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
  [slotCopy respondWithError:v15];
LABEL_26:
}

- (void)registerForMessages
{
  selfCopy = self;
  v102 = *MEMORY[0x277D85DE8];
  if (self)
  {
    Property = objc_getProperty(self, a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    v5 = objc_getProperty(selfCopy, v4, 56, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v5 = 0;
  }

  [v5 addObserver:selfCopy selector:sel_handleProcessStateChange_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];
  if (selfCopy)
  {
    v7 = objc_getProperty(selfCopy, v6, 56, 1);
    v9 = objc_getProperty(selfCopy, v8, 64, 1);
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  [v7 addObserver:selfCopy selector:sel_backboardServicesRelaunched_ name:@"HMDBackboardServicesRelaunchNotification" object:v9];

  if (!selfCopy)
  {
    return;
  }

  v11 = objc_getProperty(selfCopy, v10, 32, 1);
  dispatch_assert_queue_V2(v11);
  v13 = objc_getProperty(selfCopy, v12, 32, 1);
  dispatch_assert_queue_V2(v13);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [defaultManager contentsOfDirectoryAtPath:objc_getProperty(selfCopy error:{v15, 48, 1), 0}];

  v75 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = v17;
  v19 = *v85;
  v76 = selfCopy;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v85 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v84 + 1) + 8 * i);
      v22 = [MEMORY[0x277CBEAA8] hmd_dateFromSnapshotFileName:v21];
      v23 = v22;
      if (!v22)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v95 = v28;
          v96 = 2112;
          v97 = v21;
          v29 = v27;
          v30 = "%{public}@Ignoring snapshot file with malformed date string: %@";
LABEL_17:
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);

          selfCopy = v76;
        }

LABEL_18:

        objc_autoreleasePoolPop(v25);
        goto LABEL_20;
      }

      [v22 timeIntervalSinceNow];
      if (v24 > 86400.0)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v95 = v28;
          v96 = 2112;
          v97 = v21;
          v29 = v27;
          v30 = "%{public}@Ignoring snapshot file with date in the future: %@";
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      [v75 setObject:v23 forKeyedSubscript:v21];
LABEL_20:
    }

    v18 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
  }

  while (v18);
LABEL_22:

  v31 = objc_autoreleasePoolPush();
  v32 = selfCopy;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543618;
    v95 = v34;
    v96 = 2112;
    v97 = v75;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Built the snapshot file dictionary: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  allValues = [v75 allValues];
  v36 = [allValues sortedArrayUsingSelector:sel_compare_];

  lastObject = [v36 lastObject];
  hmd_snapshotFileName = [lastObject hmd_snapshotFileName];

  v77 = v32;
  if (hmd_snapshotFileName)
  {
    v74 = v36;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v39 = obj;
    v40 = [v39 countByEnumeratingWithState:&v80 objects:buf count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v81;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v81 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v80 + 1) + 8 * j);
          if (([v44 isEqualToString:hmd_snapshotFileName] & 1) == 0)
          {
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", objc_getProperty(v32, v45, 48, 1), v44];
            v47 = objc_autoreleasePoolPush();
            v48 = v32;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = HMFGetLogIdentifier();
              *v88 = 138543618;
              v89 = v50;
              v90 = 2112;
              v91 = v46;
              _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Removing obsolete snapshot at path: %@", v88, 0x16u);

              v32 = v77;
            }

            objc_autoreleasePoolPop(v47);
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 removeItemAtPath:v46 error:0];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v80 objects:buf count:16];
      }

      while (v41);
    }

    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", objc_getProperty(v32, v52, 48, 1), hmd_snapshotFileName];
    v54 = [HMDCameraSnapshotFile alloc];
    v36 = v74;
    lastObject2 = [v74 lastObject];
    v79 = 0;
    v56 = [(HMDCameraSnapshotFile *)v54 initWithFilePath:v53 dateCaptured:lastObject2 error:&v79];
    v57 = v79;

    v32 = v77;
    v58 = objc_autoreleasePoolPush();
    v59 = v77;
    v60 = HMFGetOSLogHandle();
    v61 = v60;
    if (v56)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        *v88 = 138543618;
        v89 = v62;
        v90 = 2112;
        v91 = v56;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Found and created the most recent snapshot file: %@", v88, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      v63 = v56;
    }

    else
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        *v88 = 138543874;
        v89 = v64;
        v90 = 2112;
        v91 = v53;
        v92 = 2112;
        v93 = v57;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to create most recent snapshot file with path %@: %@", v88, 0x20u);
      }

      objc_autoreleasePoolPop(v58);
    }
  }

  else
  {
    v56 = 0;
  }

  if (v56)
  {
    v65 = [(HMDCameraSnapshotFileManager *)v32 createSlotForSnapshotFile:v56 requestMessages:MEMORY[0x277CBEBF8] shouldNotifyClients:0];
    v66 = objc_autoreleasePoolPush();
    v67 = v32;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = HMFGetLogIdentifier();
      v71 = objc_getProperty(v67, v70, 72, 1);
      *v98 = 138543618;
      v99 = v69;
      v100 = 2112;
      v101 = v71;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@Created the most recent snapshot %@", v98, 0x16u);
    }
  }

  else
  {
    v66 = objc_autoreleasePoolPush();
    v72 = v32;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      *v98 = 138543362;
      v99 = v73;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@No recent snapshot found", v98, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v66);
}

- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)queue imageCacheDirectory:(id)directory logIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier messageDispatcher:(id)dispatcher snapshotSlotManager:(id)manager notificationCenter:(id)center
{
  queueCopy = queue;
  directoryCopy = directory;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  centerCopy = center;
  v36.receiver = self;
  v36.super_class = HMDCameraSnapshotFileManager;
  v21 = [(HMDCameraSnapshotFileManager *)&v36 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_workQueue, queue);
    v23 = objc_msgSend_copy(identifierCopy, dispatcherCopy, queueCopy);
    logIdentifier = v22->_logIdentifier;
    v22->_logIdentifier = v23;

    v25 = objc_msgSend_copy(directoryCopy);
    imageCacheDirectory = v22->_imageCacheDirectory;
    v22->_imageCacheDirectory = v25;

    v27 = objc_msgSend_copy(uniqueIdentifierCopy);
    uniqueIdentifier = v22->_uniqueIdentifier;
    v22->_uniqueIdentifier = v27;

    objc_storeStrong(&v22->_messageDispatcher, dispatcher);
    objc_storeStrong(&v22->_snapshotSlotManager, manager);
    objc_storeStrong(&v22->_notificationCenter, center);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    snapshotFilesByAssociatedProcessInfo = v22->_snapshotFilesByAssociatedProcessInfo;
    v22->_snapshotFilesByAssociatedProcessInfo = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    filledSnapshotSlotIdentifiersByProcess = v22->_filledSnapshotSlotIdentifiersByProcess;
    v22->_filledSnapshotSlotIdentifiersByProcess = strongToStrongObjectsMapTable2;
  }

  return v22;
}

- (HMDCameraSnapshotFileManager)initWithWorkQueue:(id)queue imageCacheDirectory:(id)directory logIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  uniqueIdentifierCopy = uniqueIdentifier;
  identifierCopy = identifier;
  directoryCopy = directory;
  queueCopy = queue;
  v17 = +[HMDCameraSnapshotSlotManager sharedManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = [(HMDCameraSnapshotFileManager *)self initWithWorkQueue:queueCopy imageCacheDirectory:directoryCopy logIdentifier:identifierCopy uniqueIdentifier:uniqueIdentifierCopy messageDispatcher:dispatcherCopy snapshotSlotManager:v17 notificationCenter:defaultCenter];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30_167485 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30_167485, &__block_literal_global_167486);
  }

  v3 = logCategory__hmf_once_v31_167487;

  return v3;
}

uint64_t __43__HMDCameraSnapshotFileManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v31_167487;
  logCategory__hmf_once_v31_167487 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end