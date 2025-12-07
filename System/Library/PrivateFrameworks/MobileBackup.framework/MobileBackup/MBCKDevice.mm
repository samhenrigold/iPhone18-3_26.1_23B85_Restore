@interface MBCKDevice
+ (void)fetchSnapshotsWithRefs:(id)refs operationTracker:(id)tracker completion:(id)completion;
- (BOOL)addPendingSnapshot:(id)snapshot error:(id *)error;
- (BOOL)backupEnabled;
- (BOOL)backupsDisabledFromAnotherDevice;
- (BOOL)canRestoreSystemFiles;
- (BOOL)fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry error:(id *)error;
- (BOOL)pinSnapshot:(id)snapshot error:(id *)error;
- (BOOL)requiresFullBackupForAccount:(id)account;
- (BOOL)shouldDeleteDevice;
- (BOOL)shouldRepairDomain:(id)domain;
- (BOOL)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory snapshotUUID:(id)d error:(id *)error fetchedFileListBlock:(id)block;
- (BOOL)unpinSnapshot:(id)snapshot error:(id *)error;
- (BOOL)validateCache;
- (MBCKDevice)initWithCoder:(id)coder;
- (MBCKDevice)initWithUUID:(id)d cache:(id)cache backupEnabled:(BOOL)enabled;
- (NSString)deviceName;
- (id)_fileListReferencesMatching:(id)matching;
- (id)_getRecordIDString;
- (id)dateOfLastBackup;
- (id)mergeRecordsWithOperationTracker:(id)tracker serverRecord:(id)record originalRecord:(id)originalRecord;
- (id)recordRepresentation;
- (id)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory commitID:(id)d error:(id *)error fetchedFileListBlock:(id)block;
- (void)_fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion;
- (void)addRepairDomainHMAC:(id)c;
- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion;
- (void)clearPendingSnapshotFieldsAndRebuildFileChanges:(BOOL)changes;
- (void)encodeWithCoder:(id)coder;
- (void)fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion;
- (void)handleSaveComplete:(id)complete withError:(id)error completion:(id)completion;
- (void)pinLatestGMSnapshotIfNeeded;
- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion;
- (void)refreshWithRecord:(id)record;
- (void)saveToCacheWithCompletion:(id)completion;
- (void)setBackupEnabled:(BOOL)enabled;
- (void)setDeviceName:(id)name;
- (void)unpinGMSnapshotAndSaveNewSnapshotIfNeeded:(id)needed;
- (void)validateCacheWithCompletion:(id)completion;
@end

@implementation MBCKDevice

- (MBCKDevice)initWithUUID:(id)d cache:(id)cache backupEnabled:(BOOL)enabled
{
  dCopy = d;
  v36.receiver = self;
  v36.super_class = MBCKDevice;
  v10 = [(MBCKModel *)&v36 initWithRecord:0 cache:cache];
  v11 = v10;
  if (v10)
  {
    deviceName = v10->_deviceName;
    v10->_deviceName = 0;

    v11->_hasCachedDeviceName = 0;
    objc_storeStrong(&v11->_deviceUUID, d);
    v13 = MBDeviceClass();
    deviceClass = v11->_deviceClass;
    v11->_deviceClass = v13;

    v15 = MBDeviceColor();
    deviceColor = v11->_deviceColor;
    v11->_deviceColor = v15;

    v17 = MBDeviceEnclosureColor();
    deviceEnclosureColor = v11->_deviceEnclosureColor;
    v11->_deviceEnclosureColor = v17;

    v19 = MBDeviceCoverGlassColor();
    deviceCoverGlassColor = v11->_deviceCoverGlassColor;
    v11->_deviceCoverGlassColor = v19;

    v21 = MBDeviceHousingColor();
    deviceHousingColor = v11->_deviceHousingColor;
    v11->_deviceHousingColor = v21;

    v23 = MBDeviceBackingColor();
    deviceBackingColor = v11->_deviceBackingColor;
    v11->_deviceBackingColor = v23;

    v25 = MBHardwareModel();
    hardwareModel = v11->_hardwareModel;
    v11->_hardwareModel = v25;

    v27 = MBMarketingName();
    marketingName = v11->_marketingName;
    v11->_marketingName = v27;

    v29 = MBProductType();
    productType = v11->_productType;
    v11->_productType = v29;

    v31 = MBSerialNumber();
    serialNumber = v11->_serialNumber;
    v11->_serialNumber = v31;

    v11->_hasBackupEnabledState = 1;
    v11->_backupEnabled = enabled;
    v33 = [[MBCKKeyBagManager alloc] initWithDevice:v11 keybagRefs:0];
    keybagManager = v11->_keybagManager;
    v11->_keybagManager = v33;
  }

  return v11;
}

- (NSString)deviceName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceName;
  if (!v3)
  {
    if (selfCopy->_hasCachedDeviceName)
    {
      v3 = 0;
    }

    else
    {
      v4 = MBDeviceName();
      deviceName = selfCopy->_deviceName;
      selfCopy->_deviceName = v4;

      v3 = v4;
      selfCopy->_hasCachedDeviceName = 1;
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDeviceName:(id)name
{
  nameCopy = name;
  obj = self;
  objc_sync_enter(obj);
  deviceName = obj->_deviceName;
  obj->_deviceName = nameCopy;

  obj->_hasCachedDeviceName = 1;
  objc_sync_exit(obj);
}

- (BOOL)backupEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_hasBackupEnabledState && selfCopy->_backupEnabled;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBackupEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (enabledCopy)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    *buf = 136315394;
    v9 = v6;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=ck-device= Setting backupEnabled=%s into the device record %@", buf, 0x16u);
    _MBLog(@"I ", "=ck-device= Setting backupEnabled=%s into the device record %@", v6, self);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_backupEnabled = enabledCopy;
  selfCopy2->_hasBackupEnabledState = 1;
  objc_sync_exit(selfCopy2);
}

- (BOOL)validateCache
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E3654;
  v5[3] = &unk_1003BE3B0;
  v7 = &v8;
  v3 = dispatch_semaphore_create(0);
  v6 = v3;
  [(MBCKDevice *)self validateCacheWithCompletion:v5];
  MBSemaphoreWaitForever();
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)validateCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MBCKDevice *)self hasFetchedSnapshots])
  {
    snapshots = [(MBCKDevice *)self snapshots];
    v6 = [snapshots valueForKey:@"snapshotID"];
    v7 = [NSMutableSet setWithArray:v6];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    cache = [(MBCKModel *)self cache];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E3924;
    v13[3] = &unk_1003BE3D8;
    v9 = v7;
    v14 = v9;
    v15 = &v16;
    v10 = [cache enumerateSnapshotIDs:v13];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ck-device= Error enumerating snapshot IDs: %@", buf, 0xCu);
        _MBLog(@"E ", "=ck-device= Error enumerating snapshot IDs: %@", v10);
      }
    }

    else
    {
      if (![v9 count])
      {
        v12 = *(v17 + 24);
        goto LABEL_11;
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-device= Cache is out of date (snapshot list does not match)", buf, 2u);
        _MBLog(@"Df", "=ck-device= Cache is out of date (snapshot list does not match)");
      }
    }

    v12 = 0;
    *(v17 + 24) = 0;
LABEL_11:
    completionCopy[2](completionCopy, v12 & 1);

    _Block_object_dispose(&v16, 8);
    goto LABEL_12;
  }

  completionCopy[2](completionCopy, 0);
LABEL_12:
}

- (BOOL)canRestoreSystemFiles
{
  v3 = MBDeviceClass();
  deviceClass = [(MBCKDevice *)self deviceClass];
  v5 = MBCanRestoreSystemFilesBetweenProductClasses(v3, deviceClass);

  return v5;
}

- (BOOL)addPendingSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = snapshotCopy;
  pendingSnapshot = self->_pendingSnapshot;
  if (pendingSnapshot)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ck-device= Attempted to add a snapshot without committing a pending snapshot", v13, 2u);
      _MBLog(@"E ", "=ck-device= Attempted to add a snapshot without committing a pending snapshot");
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 format:@"Attempted to add a snapshot without committing a pending snapshot"];
    }
  }

  else
  {
    recordIDString = [snapshotCopy recordIDString];
    pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
    self->_pendingSnapshotRecordID = recordIDString;

    -[MBCKDevice setBackupReason:](self, "setBackupReason:", [v7 backupReason]);
    [v7 setDevice:self];
    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return pendingSnapshot == 0;
}

- (void)clearPendingSnapshotFieldsAndRebuildFileChanges:(BOOL)changes
{
  changesCopy = changes;
  if (self->_pendingSnapshotRecordID)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
      deviceUUID = self->_deviceUUID;
      *buf = 138543874;
      v17 = pendingSnapshotRecordID;
      v18 = 1024;
      v19 = changesCopy;
      v20 = 2114;
      v21 = deviceUUID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Removing the pending snapshot %{public}@ (%d) on %{public}@", buf, 0x1Cu);
      _MBLog(@"Df", "=ck-device= Removing the pending snapshot %{public}@ (%d) on %{public}@", self->_pendingSnapshotRecordID, changesCopy, self->_deviceUUID);
    }
  }

  pendingSnapshot = self->_pendingSnapshot;
  self->_pendingSnapshot = 0;

  v9 = self->_pendingSnapshotRecordID;
  self->_pendingSnapshotRecordID = 0;

  self->_pendingSnapshotQuotaReserved = 0;
  self->_pendingSnapshotType = 0;
  self->_pendingSnapshotBackupPolicy = 0;
  cache = [(MBCKModel *)self cache];
  removeAllOrphanedItems = [cache removeAllOrphanedItems];

  if (changesCopy)
  {
    cache2 = [(MBCKModel *)self cache];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E3E04;
    v15[3] = &unk_1003BC8B8;
    v15[4] = self;
    v13 = [cache2 performInTransaction:v15];

    if (v13)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ck-device= Failed to rebuild FileChanges table: %@", buf, 0xCu);
        _MBLog(@"E ", "=ck-device= Failed to rebuild FileChanges table: %@", v13);
      }
    }
  }
}

- (id)dateOfLastBackup
{
  lastObject = [(NSArray *)self->_snapshotRefs count];
  if (lastObject)
  {
    lastObject = [(NSArray *)self->_snapshotCommitDates lastObject];
  }

  return lastObject;
}

- (BOOL)backupsDisabledFromAnotherDevice
{
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  v4 = [snapshotRefs count];

  result = 0;
  if (!v4)
  {
    cache = [(MBCKModel *)self cache];
    deviceUUID = [(MBCKDevice *)self deviceUUID];
    v8 = [cache fetchMostRecentSnapshotForDevice:deviceUUID error:0];

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)shouldDeleteDevice
{
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  if ([snapshotRefs count])
  {
    hasFetchedSnapshots = [(MBCKDevice *)self hasFetchedSnapshots];

    if ((hasFetchedSnapshots & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  snapshotRefs2 = [(MBCKDevice *)self snapshotRefs];
  v6 = [snapshotRefs2 count];
  snapshotCommitDates = [(MBCKDevice *)self snapshotCommitDates];
  v8 = [snapshotCommitDates count];

  if (v6 == v8)
  {
    return 0;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-device= Mismatched valance: snapshots, snapshotCommitDates.  Forcing full backup", v11, 2u);
    _MBLog(@"E ", "=ck-device= Mismatched valance: snapshots, snapshotCommitDates.  Forcing full backup");
  }

  return 1;
}

- (BOOL)requiresFullBackupForAccount:(id)account
{
  v13 = 0;
  persona = [account persona];
  v5 = [persona getBooleanValueForKey:@"ForceFullBackup" keyExists:&v13];

  if (v13)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    self->_requiresFullBackup |= 1uLL;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ck-device= Performing full backup because of user preference override", buf, 2u);
      _MBLog(@"I ", "=ck-device= Performing full backup because of user preference override");
    }

LABEL_11:

    LOBYTE(serverRequestedFullBackup) = 1;
    return serverRequestedFullBackup;
  }

  serverRequestedFullBackup = [(MBCKDevice *)self serverRequestedFullBackup];
  if (serverRequestedFullBackup)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v8 = [NSNumber numberWithInteger:self->_requiresFullBackup];
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ck-device= Performing full backup because server requested it: %@", buf, 0xCu);

      v9 = [NSNumber numberWithInteger:self->_requiresFullBackup];
      _MBLog(@"I ", "=ck-device= Performing full backup because server requested it: %@", v9);
    }

    goto LABEL_11;
  }

  return serverRequestedFullBackup;
}

- (BOOL)shouldRepairDomain:(id)domain
{
  domainCopy = domain;
  v5 = self->_domainHMACsToRepair;
  if ([(NSSet *)v5 count])
  {
    hmacKey = [(MBCKDevice *)self hmacKey];
    v7 = [MBDomainRecord domainHmacForDomainName:domainCopy hmacKey:hmacKey];

    v8 = [(NSSet *)v5 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addRepairDomainHMAC:(id)c
{
  domainHMACsToRepair = self->_domainHMACsToRepair;
  cCopy = c;
  v6 = [(NSSet *)domainHMACsToRepair mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSMutableSet set];
  }

  v9 = v8;

  [(NSSet *)v9 addObject:cCopy];
  v10 = self->_domainHMACsToRepair;
  self->_domainHMACsToRepair = v9;
}

+ (void)fetchSnapshotsWithRefs:(id)refs operationTracker:(id)tracker completion:(id)completion
{
  completionCopy = completion;
  trackerCopy = tracker;
  refsCopy = refs;
  [self fetchFromServerWithOperationTracker:trackerCopy childrenOfClass:objc_opt_class() refs:refsCopy cache:0 completion:completionCopy];
}

- (void)_fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKDevice _fetchSnapshotsWithOperationTracker:retry:completion:]", "MBCKDevice.m", 338, "tracker");
  }

  v10 = completionCopy;
  v11 = objc_opt_class();
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E4760;
  v15[3] = &unk_1003BE428;
  retryCopy = retry;
  v16 = trackerCopy;
  selfCopy = self;
  v18 = v10;
  v13 = v10;
  v14 = trackerCopy;
  [(MBCKModel *)self fetchFromServerWithOperationTracker:v14 childrenOfClass:v11 refs:snapshotRefs completion:v15];
}

- (void)fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (qword_1004216F0 != -1)
  {
    dispatch_once(&qword_1004216F0, &stru_1003BE448);
  }

  v10 = qword_1004216E8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E4D28;
  v13[3] = &unk_1003BE498;
  v14 = trackerCopy;
  v15 = completionCopy;
  v13[4] = self;
  retryCopy = retry;
  v11 = trackerCopy;
  v12 = completionCopy;
  dispatch_async(v10, v13);
}

- (BOOL)fetchSnapshotsWithOperationTracker:(id)tracker retry:(BOOL)retry error:(id *)error
{
  retryCopy = retry;
  trackerCopy = tracker;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000E5020;
  v19 = sub_1000E5030;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E5038;
  v12[3] = &unk_1003BC160;
  v14 = &v15;
  v9 = dispatch_semaphore_create(0);
  v13 = v9;
  [(MBCKDevice *)self fetchSnapshotsWithOperationTracker:trackerCopy retry:retryCopy completion:v12];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v16[5];
  }

  v10 = v16[5] == 0;

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (BOOL)pinSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = [CKReference alloc];
  recordID = [snapshotCopy recordID];

  v9 = [v7 initWithRecordID:recordID action:0];
  pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
  v11 = [pinnedSnapshotRefs containsObject:v9];

  if (v11)
  {
    if (error)
    {
      *error = [MBError errorWithCode:3 format:@"Snapshot is already pinned"];
    }
  }

  else
  {
    pinnedSnapshotRefs2 = [(MBCKDevice *)self pinnedSnapshotRefs];
    [pinnedSnapshotRefs2 addObject:v9];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  return v11 ^ 1;
}

- (BOOL)unpinSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = [CKReference alloc];
  recordID = [snapshotCopy recordID];

  v9 = [v7 initWithRecordID:recordID action:0];
  pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
  v11 = [pinnedSnapshotRefs containsObject:v9];

  if (v11)
  {
    pinnedSnapshotRefs2 = [(MBCKDevice *)self pinnedSnapshotRefs];
    [pinnedSnapshotRefs2 removeObject:v9];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }

  else if (error)
  {
    *error = [MBError errorWithCode:4 format:@"Snapshot is not pinned"];
  }

  return v11;
}

- (void)pinLatestGMSnapshotIfNeeded
{
  if (MBBuildIsSeed())
  {
    latestGMSnapshot = [(MBCKDevice *)self latestGMSnapshot];
    if (latestGMSnapshot)
    {
      pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
      [pinnedSnapshotRefs addObject:latestGMSnapshot];

      [(MBCKModel *)self setIsPersistedToServer:0];
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v7 = latestGMSnapshot;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Pinned snapshot: %@", buf, 0xCu);
        _MBLog(@"Df", "=ck-device= Pinned snapshot: %@", latestGMSnapshot);
      }
    }
  }
}

- (void)unpinGMSnapshotAndSaveNewSnapshotIfNeeded:(id)needed
{
  neededCopy = needed;
  if ((MBBuildIsSeed() & 1) == 0)
  {
    latestGMSnapshot = [(MBCKDevice *)self latestGMSnapshot];
    if (latestGMSnapshot)
    {
      pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
      [pinnedSnapshotRefs removeObject:latestGMSnapshot];

      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = latestGMSnapshot;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ck-device= Unpinned snapshot: %@", buf, 0xCu);
        _MBLog(@"Df", "=ck-device= Unpinned snapshot: %@", latestGMSnapshot);
      }
    }

    v8 = [CKReference alloc];
    recordID = [neededCopy recordID];
    v10 = [v8 initWithRecordID:recordID action:0];
    [(MBCKDevice *)self setLatestGMSnapshot:v10];

    [(MBCKModel *)self setIsPersistedToServer:0];
  }
}

- (void)prepareForSaveWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  v7 = self->_pendingSnapshot;
  v8 = v7;
  if (v7 && ![(MBCKModel *)v7 isPersistedToServer])
  {
    [(MBCKSnapshot *)v8 prepareForSaveWithOperationTracker:trackerCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)saveToCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  cache = [(MBCKModel *)self cache];
  v7 = 0;
  [cache saveDevice:self error:&v7];
  v6 = v7;

  completionCopy[2](completionCopy, v6);
}

- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKDevice addSavesWithOperationTracker:completion:]", "MBCKDevice.m", 481, "tracker");
  }

  v8 = completionCopy;
  startBatchSave = [trackerCopy startBatchSave];
  [startBatchSave setSaveIncrementally:0];
  v10 = objc_opt_new();
  v11 = self->_pendingSnapshot;
  v12 = v11;
  if (v11 && ![(MBCKModel *)v11 isPersistedToServer])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [(MBCKModel *)v12 recordID];
      *buf = 138543618;
      *&buf[4] = recordID;
      *&buf[12] = 2114;
      *&buf[14] = startBatchSave;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ck-device= Adding pending snapshot record %{public}@ to %{public}@", buf, 0x16u);

      recordID2 = [(MBCKModel *)v12 recordID];
      _MBLog(@"Df", "=ck-device= Adding pending snapshot record %{public}@ to %{public}@", recordID2, startBatchSave);
    }

    recordRepresentation = [(MBCKSnapshot *)v12 recordRepresentation];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E5A14;
    v30[3] = &unk_1003BE4C0;
    v31 = v12;
    v32 = recordRepresentation;
    v33 = v10;
    v17 = recordRepresentation;
    [startBatchSave saveRecord:v17 delegate:self completion:v30];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = sub_1000E5020;
  v36 = sub_1000E5030;
  recordRepresentation2 = [(MBCKDevice *)self recordRepresentation];
  v18 = *(*&buf[8] + 40);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000E5CB0;
  v27[3] = &unk_1003BD748;
  v29 = buf;
  v19 = v10;
  v28 = v19;
  [startBatchSave saveRecord:v18 delegate:self completion:v27];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000E5ECC;
  v22[3] = &unk_1003BE4E8;
  v20 = v19;
  v23 = v20;
  selfCopy = self;
  v26 = buf;
  v21 = v8;
  v25 = v21;
  [trackerCopy finishBatchSave:startBatchSave completion:v22];

  _Block_object_dispose(buf, 8);
}

- (id)recordRepresentation
{
  v77.receiver = self;
  v77.super_class = MBCKDevice;
  recordRepresentation = [(MBCKModel *)&v77 recordRepresentation];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  snapshotRefs = [(MBCKDevice *)self snapshotRefs];
  [v4 addObjectsFromArray:snapshotRefs];

  snapshotCommitDates = [(MBCKDevice *)self snapshotCommitDates];
  [v5 addObjectsFromArray:snapshotCommitDates];

  v8 = self->_pendingSnapshot;
  if (v8)
  {
    v9 = [CKReference alloc];
    recordID = [(MBCKModel *)v8 recordID];
    v11 = [v9 initWithRecordID:recordID action:0];

    if ([v4 containsObject:v11])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
        *buf = 138412290;
        *v79 = pendingSnapshotRecordID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=ck-device= Detecting duplicate snapshot: %@, marking as committed", buf, 0xCu);
        _MBLog(@"E ", "=ck-device= Detecting duplicate snapshot: %@, marking as committed", self->_pendingSnapshotRecordID);
      }

      cache = [(MBCKModel *)self cache];
      v15 = [cache addPendingSnapshot:v8];

      cache2 = [(MBCKModel *)self cache];
      v17 = [cache2 commitSnapshot:v8];
    }

    else
    {
      [v4 addObject:v11];
      v22 = +[NSDate date];
      [(MBCKSnapshot *)v8 setCreated:v22];

      cache2 = [(MBCKSnapshot *)v8 created];
      [v5 addObject:cache2];
    }

    [recordRepresentation setObject:0 forKeyedSubscript:@"domainHMACsToRepair"];
    [recordRepresentation setObject:v4 forKeyedSubscript:@"snapshots"];
    [recordRepresentation setObject:v5 forKeyedSubscript:@"snapshotCommittedDates"];
    goto LABEL_11;
  }

  [recordRepresentation setObject:v4 forKeyedSubscript:@"snapshots"];
  [recordRepresentation setObject:v5 forKeyedSubscript:@"snapshotCommittedDates"];
  v18 = self->_pendingSnapshotRecordID;
  if (!v18)
  {
LABEL_11:
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotID"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBackupType"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBuildVersion"];
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotFormat"];
    if (MBIsInternalInstall())
    {
      cache3 = [(MBCKModel *)self cache];
      v76 = 0;
      v24 = [cache3 sizeOfSnapshot:v8 error:&v76];
      allObjects = v76;

      if (!v24 && allObjects)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v79 = allObjects;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=ck-device= Failed to fetch the size of the snapshot from cache: %@", buf, 0xCu);
          _MBLog(@"E ", "=ck-device= Failed to fetch the size of the snapshot from cache: %@", allObjects);
        }
      }

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        pendingSnapshotQuotaReserved = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        *buf = 134218240;
        *v79 = v24;
        *&v79[8] = 2048;
        *&v79[10] = pendingSnapshotQuotaReserved;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=ck-device= Snapshot sealed, size:%llu, pendingSnapshotQuotaReserved:%llu", buf, 0x16u);
        _MBLog(@"Df", "=ck-device= Snapshot sealed, size:%llu, pendingSnapshotQuotaReserved:%llu", v24, [(MBCKDevice *)self pendingSnapshotQuotaReserved]);
      }
    }

    else
    {
      allObjects = MBGetDefaultLog();
      if (os_log_type_enabled(allObjects, OS_LOG_TYPE_DEFAULT))
      {
        pendingSnapshotQuotaReserved2 = [(MBCKDevice *)self pendingSnapshotQuotaReserved];
        *buf = 134217984;
        *v79 = pendingSnapshotQuotaReserved2;
        _os_log_impl(&_mh_execute_header, allObjects, OS_LOG_TYPE_DEFAULT, "=ck-device= Snapshot sealed, pendingSnapshotQuotaReserved:%llu", buf, 0xCu);
        _MBLog(@"Df", "=ck-device= Snapshot sealed, pendingSnapshotQuotaReserved:%llu", [(MBCKDevice *)self pendingSnapshotQuotaReserved]);
      }
    }

    goto LABEL_26;
  }

  [recordRepresentation setObject:v18 forKeyedSubscript:@"pendingSnapshotID"];
  v19 = [NSNumber numberWithUnsignedLongLong:[(MBCKDevice *)self pendingSnapshotQuotaReserved]];
  [recordRepresentation setObject:v19 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];

  v20 = [NSNumber numberWithInteger:[(MBCKDevice *)self pendingSnapshotType]];
  [recordRepresentation setObject:v20 forKeyedSubscript:@"pendingSnapshotBackupType"];

  if ([(MBCKDevice *)self pendingSnapshotBackupPolicy])
  {
    v21 = [NSNumber numberWithInteger:[(MBCKDevice *)self pendingSnapshotBackupPolicy]];
    [recordRepresentation setObject:v21 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  }

  else
  {
    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  }

  v30 = MBBuildVersion();
  [recordRepresentation setObject:v30 forKeyedSubscript:@"pendingSnapshotBuildVersion"];

  [(MBCKDevice *)self pendingSnapshotFormat];
  if (MBSnapshotFormatContainsFileLists())
  {
    v31 = [NSNumber numberWithLongLong:[(MBCKDevice *)self pendingSnapshotFormat]];
    [recordRepresentation setObject:v31 forKeyedSubscript:@"pendingSnapshotFormat"];

    if ([(NSSet *)self->_pendingRepairedDomainHMACs count])
    {
      allObjects = [(NSSet *)self->_pendingRepairedDomainHMACs allObjects];
      [recordRepresentation setObject:allObjects forKeyedSubscript:@"pendingRepairedDomainHMACs"];
LABEL_26:

      goto LABEL_27;
    }

    [recordRepresentation setObject:0 forKeyedSubscript:@"pendingRepairedDomainHMACs"];
  }

LABEL_27:
  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    resumingSnapshot = [(MBCKDevice *)self resumingSnapshot];
    [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotID"];
    v34 = v8;
    v35 = v4;
    v37 = v36 = v5;
    v38 = [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    *buf = 67109634;
    *v79 = resumingSnapshot;
    *&v79[4] = 2114;
    *&v79[6] = v37;
    *&v79[14] = 2114;
    *&v79[16] = v38;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=ck-device= resumingSnapshot:%d, pendingSnapshotID:%{public}@, pendingSnapshotQuotaReserved:%{public}@", buf, 0x1Cu);

    v5 = v36;
    v4 = v35;
    v8 = v34;
    resumingSnapshot2 = [(MBCKDevice *)self resumingSnapshot];
    v40 = [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotID"];
    v41 = [recordRepresentation objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
    _MBLog(@"Df", "=ck-device= resumingSnapshot:%d, pendingSnapshotID:%{public}@, pendingSnapshotQuotaReserved:%{public}@", resumingSnapshot2, v40, v41);
  }

  pinnedSnapshotRefs = [(MBCKDevice *)self pinnedSnapshotRefs];
  allObjects2 = [pinnedSnapshotRefs allObjects];
  [recordRepresentation setObject:allObjects2 forKeyedSubscript:@"pinnedSnapshots"];

  latestGMSnapshot = [(MBCKDevice *)self latestGMSnapshot];
  [recordRepresentation setObject:latestGMSnapshot forKeyedSubscript:@"lastGMSnapshot"];

  keybagManager = [(MBCKDevice *)self keybagManager];
  keybagRefs = [keybagManager keybagRefs];
  [recordRepresentation setObject:keybagRefs forKeyedSubscript:@"keybags"];

  deviceClass = [(MBCKDevice *)self deviceClass];
  [recordRepresentation setObject:deviceClass forKeyedSubscript:@"deviceClass"];

  deviceColor = [(MBCKDevice *)self deviceColor];
  [recordRepresentation setObject:deviceColor forKeyedSubscript:@"deviceColor"];

  deviceEnclosureColor = [(MBCKDevice *)self deviceEnclosureColor];
  [recordRepresentation setObject:deviceEnclosureColor forKeyedSubscript:@"deviceEnclosureColor"];

  deviceCoverGlassColor = [(MBCKDevice *)self deviceCoverGlassColor];
  [recordRepresentation setObject:deviceCoverGlassColor forKeyedSubscript:@"deviceCoverGlassColor"];

  deviceHousingColor = [(MBCKDevice *)self deviceHousingColor];
  [recordRepresentation setObject:deviceHousingColor forKeyedSubscript:@"deviceHousingColor"];

  deviceBackingColor = [(MBCKDevice *)self deviceBackingColor];
  [recordRepresentation setObject:deviceBackingColor forKeyedSubscript:@"deviceBackingColor"];

  hardwareModel = [(MBCKDevice *)self hardwareModel];
  [recordRepresentation setObject:hardwareModel forKeyedSubscript:@"hardwareModel"];

  productType = [(MBCKDevice *)self productType];
  [recordRepresentation setObject:productType forKeyedSubscript:@"productType"];

  assetIDPrefix = [(MBCKDevice *)self assetIDPrefix];
  [recordRepresentation setObject:assetIDPrefix forKeyedSubscript:@"deviceIdPrefix"];

  deviceUUID = self->_deviceUUID;
  v57 = MBDeviceUUID();
  LODWORD(deviceUUID) = [(NSString *)deviceUUID isEqualToString:v57];

  if (deviceUUID)
  {
    v58 = MBMarketingName();
    if (v58)
    {
      [recordRepresentation setObject:v58 forKeyedSubscript:@"marketingName"];
    }

    else
    {
      marketingName = [(MBCKDevice *)self marketingName];
      [recordRepresentation setObject:marketingName forKeyedSubscript:@"marketingName"];
    }

    serialNumber = MBSerialNumber();
  }

  else
  {
    marketingName2 = [(MBCKDevice *)self marketingName];
    [recordRepresentation setObject:marketingName2 forKeyedSubscript:@"marketingName"];

    serialNumber = [(MBCKDevice *)self serialNumber];
  }

  v62 = serialNumber;
  [recordRepresentation setObject:serialNumber forKeyedSubscript:@"serialNumber"];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasBackupEnabledState = selfCopy->_hasBackupEnabledState;
  backupEnabled = selfCopy->_backupEnabled;
  objc_sync_exit(selfCopy);

  if (hasBackupEnabledState)
  {
    v66 = [NSNumber numberWithBool:backupEnabled];
    [recordRepresentation setObject:v66 forKeyedSubscript:@"backupEnabled"];
  }

  deviceName = [(MBCKDevice *)selfCopy deviceName];
  [recordRepresentation setObject:deviceName forKeyedSubscript:@"deviceName"];

  v68 = objc_opt_new();
  if (![(MBCKModel *)selfCopy isPersistedToServer])
  {
    v69 = MBDeviceUDID_Legacy();
    [v68 setObject:v69 forKeyedSubscript:@"deviceUDID"];
  }

  if (selfCopy->_pendingSnapshotRecordID && ![(MBCKDevice *)selfCopy resumingSnapshot])
  {
    v70 = [NSNumber numberWithInteger:[(MBCKDevice *)selfCopy backupReason]];
    [v68 setObject:v70 forKeyedSubscript:@"backupReason"];
  }

  if ([v68 count])
  {
    [recordRepresentation setPluginFields:v68];
  }

  v71 = MBGetDefaultLog();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = objc_opt_class();
    *buf = 138543618;
    *v79 = v72;
    *&v79[8] = 2112;
    *&v79[10] = recordRepresentation;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "=ck-device= %{public}@ record representation: %@", buf, 0x16u);
    v73 = objc_opt_class();
    _MBLog(@"I ", "=ck-device= %{public}@ record representation: %@", v73, recordRepresentation);
  }

  v74 = recordRepresentation;
  return recordRepresentation;
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v5 = [recordName hasPrefix:@"D:"];

  recordID2 = [recordCopy recordID];
  recordName2 = [recordID2 recordName];
  v8 = recordName2;
  if (v5)
  {
    v9 = -[NSString substringFromIndex:](recordName2, "substringFromIndex:", [@"D:" length]);
    deviceUUID = self->_deviceUUID;
    self->_deviceUUID = v9;
  }

  else
  {
    v11 = self->_deviceUUID;
    self->_deviceUUID = recordName2;
    v8 = v11;
  }

  v12 = [recordCopy objectForKeyedSubscript:@"deviceClass"];
  deviceClass = self->_deviceClass;
  self->_deviceClass = v12;

  v14 = [recordCopy objectForKeyedSubscript:@"deviceColor"];
  deviceColor = self->_deviceColor;
  self->_deviceColor = v14;

  v16 = [recordCopy objectForKeyedSubscript:@"deviceEnclosureColor"];
  deviceEnclosureColor = self->_deviceEnclosureColor;
  self->_deviceEnclosureColor = v16;

  v18 = [recordCopy objectForKeyedSubscript:@"deviceCoverGlassColor"];
  deviceCoverGlassColor = self->_deviceCoverGlassColor;
  self->_deviceCoverGlassColor = v18;

  v20 = [recordCopy objectForKeyedSubscript:@"deviceHousingColor"];
  deviceHousingColor = self->_deviceHousingColor;
  self->_deviceHousingColor = v20;

  v22 = [recordCopy objectForKeyedSubscript:@"deviceBackingColor"];
  deviceBackingColor = self->_deviceBackingColor;
  self->_deviceBackingColor = v22;

  v24 = [recordCopy objectForKeyedSubscript:@"hardwareModel"];
  hardwareModel = self->_hardwareModel;
  self->_hardwareModel = v24;

  v26 = [recordCopy objectForKeyedSubscript:@"marketingName"];
  marketingName = self->_marketingName;
  self->_marketingName = v26;

  v28 = [recordCopy objectForKeyedSubscript:@"productType"];
  productType = self->_productType;
  self->_productType = v28;

  v30 = [recordCopy objectForKeyedSubscript:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v30;

  v32 = [recordCopy objectForKeyedSubscript:@"deviceIdPrefix"];
  assetIDPrefix = self->_assetIDPrefix;
  self->_assetIDPrefix = v32;

  v83 = [recordCopy objectForKeyedSubscript:@"domainHMACsToRepair"];
  if (v83)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = self->_deviceUUID;
        v36 = [v83 sortedArrayUsingSelector:"compare:"];
        v37 = [v36 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v93 = v35;
        v94 = 2112;
        v95 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=ck-device= =domain repair= Found domainHMACsToRepair for %@ record: %@", buf, 0x16u);

        v38 = self->_deviceUUID;
        v39 = [v83 sortedArrayUsingSelector:"compare:"];
        v40 = [v39 componentsJoinedByString:{@", "}];
        _MBLog(@"I ", "=ck-device= =domain repair= Found domainHMACsToRepair for %@ record: %@", v38, v40);
      }

      v41 = objc_opt_new();
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v42 = v83;
      v43 = [v42 countByEnumeratingWithState:&v87 objects:v91 count:16];
      if (v43)
      {
        v44 = *v88;
        do
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v88 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v46 = *(*(&v87 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(NSSet *)v41 addObject:v46];
            }

            else
            {
              v47 = MBGetDefaultLog();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v93 = v46;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=ck-device= Could not parse domain hmac to repair: %@", buf, 0xCu);
                _MBLog(@"E ", "=ck-device= Could not parse domain hmac to repair: %@", v46);
              }
            }
          }

          v43 = [v42 countByEnumeratingWithState:&v87 objects:v91 count:16];
        }

        while (v43);
      }

      domainHMACsToRepair = self->_domainHMACsToRepair;
      self->_domainHMACsToRepair = v41;
    }
  }

  v49 = MBDeviceCoverGlassColor();
  v50 = self->_deviceCoverGlassColor;
  self->_deviceCoverGlassColor = v49;

  v51 = MBDeviceHousingColor();
  v52 = self->_deviceHousingColor;
  self->_deviceHousingColor = v51;

  v53 = MBDeviceBackingColor();
  v54 = self->_deviceBackingColor;
  self->_deviceBackingColor = v53;

  v55 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotID"];
  pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
  self->_pendingSnapshotRecordID = v55;

  v57 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
  self->_pendingSnapshotQuotaReserved = [v57 longLongValue];

  v58 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotBackupType"];
  self->_pendingSnapshotType = [v58 integerValue];

  v59 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotBackupPolicy"];
  self->_pendingSnapshotBackupPolicy = [v59 integerValue];

  v60 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotFormat"];
  self->_pendingSnapshotFormat = [v60 integerValue];

  v61 = [recordCopy objectForKeyedSubscript:@"pendingSnapshotBuildVersion"];
  pendingSnapshotBuildVersion = self->_pendingSnapshotBuildVersion;
  self->_pendingSnapshotBuildVersion = v61;

  v63 = [recordCopy objectForKeyedSubscript:@"snapshots"];
  snapshotRefs = self->_snapshotRefs;
  self->_snapshotRefs = v63;

  v65 = [recordCopy objectForKeyedSubscript:@"snapshotCommittedDates"];
  snapshotCommitDates = self->_snapshotCommitDates;
  self->_snapshotCommitDates = v65;

  v67 = [recordCopy objectForKeyedSubscript:@"pinnedSnapshots"];
  v68 = v67;
  if (v67)
  {
    v69 = v67;
  }

  else
  {
    v69 = &__NSArray0__struct;
  }

  v70 = [NSMutableSet setWithArray:v69];
  pinnedSnapshotRefs = self->_pinnedSnapshotRefs;
  self->_pinnedSnapshotRefs = v70;

  v72 = [recordCopy objectForKeyedSubscript:@"lastGMSnapshot"];
  latestGMSnapshot = self->_latestGMSnapshot;
  self->_latestGMSnapshot = v72;

  v74 = [recordCopy objectForKeyedSubscript:@"requiresFullBackup"];

  if (v74)
  {
    v75 = [recordCopy objectForKeyedSubscript:@"requiresFullBackup"];
    self->_requiresFullBackup = [v75 integerValue];
  }

  v76 = [recordCopy objectForKeyedSubscript:@"backupEnabled"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v76)
  {
    selfCopy->_backupEnabled = [v76 BOOLValue];
    v78 = 1;
  }

  else
  {
    v78 = 0;
    selfCopy->_backupEnabled = 0;
  }

  selfCopy->_hasBackupEnabledState = v78;
  objc_sync_exit(selfCopy);

  selfCopy->_hasFetchedSnapshots = 0;
  v79 = [recordCopy objectForKeyedSubscript:@"keybags"];
  keybagManager = selfCopy->_keybagManager;
  if (keybagManager)
  {
    [(MBCKKeyBagManager *)keybagManager mergeKeybagRefs:v79];
  }

  else
  {
    v81 = [[MBCKKeyBagManager alloc] initWithDevice:selfCopy keybagRefs:v79];
    v82 = selfCopy->_keybagManager;
    selfCopy->_keybagManager = v81;
  }

  v86.receiver = selfCopy;
  v86.super_class = MBCKDevice;
  [(MBCKModel *)&v86 refreshWithRecord:recordCopy];
}

- (void)handleSaveComplete:(id)complete withError:(id)error completion:(id)completion
{
  v5.receiver = self;
  v5.super_class = MBCKDevice;
  [(MBCKModel *)&v5 handleSaveComplete:complete withError:error completion:completion];
}

- (id)mergeRecordsWithOperationTracker:(id)tracker serverRecord:(id)record originalRecord:(id)originalRecord
{
  recordCopy = record;
  originalRecordCopy = originalRecord;
  recordType = [recordCopy recordType];
  recordType2 = [(MBCKDevice *)self recordType];
  v11 = [recordType isEqualToString:recordType2];

  if (!v11)
  {
    recordRepresentation = 0;
    goto LABEL_18;
  }

  v12 = self->_pendingSnapshot;
  v13 = v12;
  if (v12 && [(MBCKModel *)v12 isPersistedToServer])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      snapshotID = [(MBCKSnapshot *)v13 snapshotID];
      *buf = 138543362;
      v31 = snapshotID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=ck-device= Not merging with the server record since there's a pending snapshot: %{public}@", buf, 0xCu);

      snapshotID2 = [(MBCKSnapshot *)v13 snapshotID];
      _MBLog(@"Df", "=ck-device= Not merging with the server record since there's a pending snapshot: %{public}@", snapshotID2);
    }

    recordRepresentation = recordCopy;
    goto LABEL_17;
  }

  v18 = self->_domainHMACsToRepair;
  if (v18)
  {
    p_super = MBGetDefaultLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = [(NSSet *)v18 count];
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "=ck-device= Not handling merge conflict with server record because the local device record has %lu domain hmacs to repair", buf, 0xCu);
      _MBLog(@"Df", "=ck-device= Not handling merge conflict with server record because the local device record has %lu domain hmacs to repair", [(NSSet *)v18 count]);
    }
  }

  else
  {
    [(MBCKDevice *)self refreshWithRecord:recordCopy];
    v20 = self->_domainHMACsToRepair;
    if (!v20)
    {
      v23 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotID"];
      pendingSnapshotRecordID = self->_pendingSnapshotRecordID;
      self->_pendingSnapshotRecordID = v23;

      v25 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotQuotaReserved"];
      self->_pendingSnapshotQuotaReserved = [v25 longLongValue];

      v26 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotBackupType"];
      self->_pendingSnapshotType = [v26 integerValue];

      v27 = [originalRecordCopy objectForKeyedSubscript:@"pendingSnapshotBackupPolicy"];
      self->_pendingSnapshotBackupPolicy = [v27 integerValue];

      v28 = [originalRecordCopy objectForKeyedSubscript:@"deviceIdPrefix"];
      assetIDPrefix = self->_assetIDPrefix;
      self->_assetIDPrefix = v28;

      recordRepresentation = [(MBCKDevice *)self recordRepresentation];
      p_super = 0;
      goto LABEL_16;
    }

    p_super = &v20->super;
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = [p_super count];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ck-device= Not handling merge conflict with server record because the refreshed device record has %lu domain hmacs to repair", buf, 0xCu);
      _MBLog(@"Df", "=ck-device= Not handling merge conflict with server record because the refreshed device record has %lu domain hmacs to repair", [p_super count]);
    }
  }

  recordRepresentation = 0;
LABEL_16:

LABEL_17:
LABEL_18:

  return recordRepresentation;
}

- (id)_getRecordIDString
{
  deviceUUID = [(MBCKDevice *)self deviceUUID];

  if (!deviceUUID)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MBCKDevice.m" lineNumber:757 description:@"Device is missing UUID"];
  }

  v5 = [NSString alloc];
  deviceUUID2 = [(MBCKDevice *)self deviceUUID];
  v7 = [v5 initWithFormat:@"D:%@", deviceUUID2];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = MBCKDevice;
  [(MBCKModel *)&v12 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_deviceUUID forKey:@"DeviceUUID"];
  [coderCopy encodeObject:self->_deviceClass forKey:@"DeviceClass"];
  [coderCopy encodeObject:self->_deviceColor forKey:@"DeviceColor"];
  [coderCopy encodeObject:self->_deviceEnclosureColor forKey:@"DeviceEnclosureColor"];
  [coderCopy encodeObject:self->_deviceCoverGlassColor forKey:@"DeviceCoverGlassColor"];
  [coderCopy encodeObject:self->_deviceHousingColor forKey:@"DeviceHousingColor"];
  [coderCopy encodeObject:self->_deviceBackingColor forKey:@"DeviceBackingColor"];
  [coderCopy encodeObject:self->_hardwareModel forKey:@"HardwareModel"];
  [coderCopy encodeObject:self->_marketingName forKey:@"MarketingName"];
  [coderCopy encodeObject:self->_productType forKey:@"ProductType"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"SerialNumber"];
  [coderCopy encodeObject:self->_pendingSnapshotRecordID forKey:@"PendingSnapshotID"];
  [coderCopy encodeInt64:self->_pendingSnapshotQuotaReserved forKey:@"PendingSnapshotQuotaReserved"];
  [coderCopy encodeInteger:self->_pendingSnapshotType forKey:@"PendingSnapshotBackupType"];
  [coderCopy encodeInteger:self->_pendingSnapshotBackupPolicy forKey:@"PendingSnapshotBackupPolicy"];
  [coderCopy encodeObject:self->_hmacKey forKey:@"HMACKey"];
  [coderCopy encodeObject:self->_assetIDPrefix forKey:@"AssetIDPrefix"];
  keybagRefs = [(MBCKKeyBagManager *)self->_keybagManager keybagRefs];
  v7 = [NSKeyedArchiver archivedDataWithRootObject:keybagRefs requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v7 forKey:@"KeybagRefs"];

  v8 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotRefs requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v8 forKey:@"SnapshotRefs"];

  v9 = [NSKeyedArchiver archivedDataWithRootObject:self->_snapshotCommitDates requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v9 forKey:@"SnapshotCommitDates"];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  backupEnabled = selfCopy->_backupEnabled;
  LODWORD(keybagRefs) = selfCopy->_hasBackupEnabledState;
  objc_sync_exit(selfCopy);

  if (keybagRefs == 1)
  {
    [coderCopy encodeBool:backupEnabled forKey:@"BackupEnabled"];
  }

  objc_autoreleasePoolPop(v5);
}

- (MBCKDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v53.receiver = self;
  v53.super_class = MBCKDevice;
  v6 = [(MBCKModel *)&v53 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUID"];
    deviceUUID = v6->_deviceUUID;
    v6->_deviceUUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    deviceClass = v6->_deviceClass;
    v6->_deviceClass = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceColor"];
    deviceColor = v6->_deviceColor;
    v6->_deviceColor = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceEnclosureColor"];
    deviceEnclosureColor = v6->_deviceEnclosureColor;
    v6->_deviceEnclosureColor = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCoverGlassColor"];
    deviceCoverGlassColor = v6->_deviceCoverGlassColor;
    v6->_deviceCoverGlassColor = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceHousingColor"];
    deviceHousingColor = v6->_deviceHousingColor;
    v6->_deviceHousingColor = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceBackingColor"];
    deviceBackingColor = v6->_deviceBackingColor;
    v6->_deviceBackingColor = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HardwareModel"];
    hardwareModel = v6->_hardwareModel;
    v6->_hardwareModel = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MarketingName"];
    marketingName = v6->_marketingName;
    v6->_marketingName = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v6->_productType;
    v6->_productType = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SerialNumber"];
    serialNumber = v6->_serialNumber;
    v6->_serialNumber = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PendingSnapshotID"];
    pendingSnapshotRecordID = v6->_pendingSnapshotRecordID;
    v6->_pendingSnapshotRecordID = v29;

    v6->_pendingSnapshotQuotaReserved = [coderCopy decodeInt64ForKey:@"PendingSnapshotQuotaReserved"];
    v6->_pendingSnapshotType = [coderCopy decodeIntegerForKey:@"PendingSnapshotBackupType"];
    v6->_pendingSnapshotBackupPolicy = [coderCopy decodeIntegerForKey:@"PendingSnapshotBackupPolicy"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMACKey"];
    hmacKey = v6->_hmacKey;
    v6->_hmacKey = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetIDPrefix"];
    assetIDPrefix = v6->_assetIDPrefix;
    v6->_assetIDPrefix = v33;

    v56[0] = objc_opt_class();
    v56[1] = objc_opt_class();
    v35 = [NSArray arrayWithObjects:v56 count:2];
    v36 = [NSSet setWithArray:v35];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeybagRefs"];
    v38 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v36 fromData:v37 error:0];

    v39 = [[MBCKKeyBagManager alloc] initWithDevice:v6 keybagRefs:v38];
    keybagManager = v6->_keybagManager;
    v6->_keybagManager = v39;

    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v41 = [NSArray arrayWithObjects:v55 count:2];
    v42 = [NSSet setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotRefs"];
    v44 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v42 fromData:v43 error:0];
    snapshotRefs = v6->_snapshotRefs;
    v6->_snapshotRefs = v44;

    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v46 = [NSArray arrayWithObjects:v54 count:2];
    v47 = [NSSet setWithArray:v46];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotCommitDates"];
    v49 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v47 fromData:v48 error:0];
    snapshotCommitDates = v6->_snapshotCommitDates;
    v6->_snapshotCommitDates = v49;

    if ([coderCopy containsValueForKey:@"BackupEnabled"])
    {
      v6->_backupEnabled = [coderCopy decodeBoolForKey:@"BackupEnabled"];
      v6->_hasBackupEnabledState = 1;
    }
  }

  v51 = v6;
  objc_autoreleasePoolPop(v5);

  return v51;
}

- (id)_fileListReferencesMatching:(id)matching
{
  matchingCopy = matching;
  snapshots = [(MBCKDevice *)self snapshots];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E8550;
  v14[3] = &unk_1003BE510;
  v6 = matchingCopy;
  v15 = v6;
  v7 = [snapshots indexOfObjectPassingTest:v14];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [snapshots subarrayWithRange:{0, v7 + 1}];
    v8 = MBGetLatestDomainRecordReferencesFromSnapshots(v9);
    v10 = [v8 count];
    v11 = MBGetDefaultLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 134217984;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-device= =sync= Synchronizing file lists: %ld references", buf, 0xCu);
        _MBLog(@"Df", "=ck-device= =sync= Synchronizing file lists: %ld references");
      }
    }

    else if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ck-device= =sync= No snapshot to domain references to synchronize", buf, 2u);
      _MBLog(@"Df", "=ck-device= =sync= No snapshot to domain references to synchronize");
    }
  }

  return v8;
}

- (id)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory commitID:(id)d error:(id *)error fetchedFileListBlock:(id)block
{
  trackerCopy = tracker;
  directoryCopy = directory;
  dCopy = d;
  blockCopy = block;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000E881C;
  v26[3] = &unk_1003BCD40;
  v16 = dCopy;
  v27 = v16;
  v17 = [(MBCKDevice *)self _fileListReferencesMatching:v26];
  v18 = v17;
  if (v17)
  {
    if (![v17 count] || (-[MBCKDevice hmacKey](self, "hmacKey"), v19 = objc_claimAutoreleasedReturnValue(), v20 = MBSynchronizeFileListsWithSnapshotDirectory(directoryCopy, v16, v19, v18, trackerCopy, 0, error, blockCopy), v19, (v20 & 1) != 0))
    {
      v21 = [directoryCopy stringByAppendingPathComponent:v16];
      goto LABEL_14;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ck-device= =sync= Error synchronizing file lists for commitID: %@", buf, 0xCu);
      _MBLog(@"E ", "=ck-device= =sync= Error synchronizing file lists for commitID: %@", v16);
    }
  }

  else
  {
    deviceUUID = [(MBCKDevice *)self deviceUUID];
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v29 = deviceUUID;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ck-device= No snapshot found with deviceUUID:%@ commitID:%@", buf, 0x16u);
      _MBLog(@"E ", "=ck-device= No snapshot found with deviceUUID:%@ commitID:%@", deviceUUID, v16);
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 format:@"No snapshot found with deviceUUID:%@ commitID:%@", deviceUUID, v16];
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (BOOL)synchronizeFileListsWithOperationTracker:(id)tracker snapshotDirectory:(id)directory snapshotUUID:(id)d error:(id *)error fetchedFileListBlock:(id)block
{
  trackerCopy = tracker;
  directoryCopy = directory;
  dCopy = d;
  blockCopy = block;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000E8AF8;
  v25[3] = &unk_1003BCD40;
  v16 = dCopy;
  v26 = v16;
  v17 = [(MBCKDevice *)self _fileListReferencesMatching:v25];
  v18 = v17;
  if (!v17)
  {
    deviceUUID = [(MBCKDevice *)self deviceUUID];
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = deviceUUID;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ck-device= No snapshot found with deviceUUID:%@ snapshotUUID:%@", buf, 0x16u);
      _MBLog(@"E ", "=ck-device= No snapshot found with deviceUUID:%@ snapshotUUID:%@", deviceUUID, v16);
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 format:@"No snapshot found with deviceUUID:%@ snapshotUUID:%@", deviceUUID, v16];
    }

    goto LABEL_11;
  }

  if ([v17 count])
  {
    hmacKey = [(MBCKDevice *)self hmacKey];
    v20 = MBSynchronizeFileListsWithSnapshotDirectory(directoryCopy, v16, hmacKey, v18, trackerCopy, 0, error, blockCopy);

    if ((v20 & 1) == 0)
    {
      deviceUUID = MBGetDefaultLog();
      if (os_log_type_enabled(deviceUUID, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, deviceUUID, OS_LOG_TYPE_ERROR, "=ck-device= =sync= Error synchronizing file lists for snapshotUUID: %@", buf, 0xCu);
        _MBLog(@"E ", "=ck-device= =sync= Error synchronizing file lists for snapshotUUID: %@", v16);
      }

LABEL_11:

      v21 = 0;
      goto LABEL_12;
    }
  }

  v21 = 1;
LABEL_12:

  return v21;
}

@end