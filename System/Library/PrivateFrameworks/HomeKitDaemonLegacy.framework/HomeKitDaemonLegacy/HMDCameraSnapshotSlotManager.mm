@interface HMDCameraSnapshotSlotManager
+ (HMDCameraSnapshotSlotManager)sharedManager;
+ (id)logCategory;
- (BOOL)_fillSlotWithIdentifier:(unsigned int)identifier filePath:(id)path error:(id *)error;
- (BOOL)fillSlotWithIdentifier:(id)identifier filePath:(id)path error:(id *)error;
- (CGImage)_createSnapshotCGImageRefFromFileWithPath:(id)path error:(id *)error;
- (HMDCameraSnapshotSlotManager)init;
- (id)createSlot;
- (unsigned)_createSlot;
- (void)_backboardServicesRelaunched;
- (void)_clearSlotWithIdentifier:(unsigned int)identifier;
- (void)_createSnapshotContext;
- (void)_deleteSlotWithIdentifier:(unsigned int)identifier;
- (void)clearSlotWithIdentifier:(id)identifier;
- (void)deleteSlotWithIdentifier:(id)identifier;
@end

@implementation HMDCameraSnapshotSlotManager

- (CGImage)_createSnapshotCGImageRefFromFileWithPath:(id)path error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v8 = *MEMORY[0x277CD3610];
  v27[0] = *MEMORY[0x277CD3618];
  v27[1] = v8;
  v28[0] = MEMORY[0x277CBEC28];
  v28[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v10 = CGImageSourceCreateWithURL(v7, v9);
  if (!v10)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = pathCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CGImageRef: CGImageSourceCreateWithURL() returned NULL for path: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (error)
    {
      v17 = @"Failed to create CGImageRef: CGImageSourceCreateWithURL() returned NULL";
      goto LABEL_11;
    }

LABEL_12:
    ImageAtIndex = 0;
    goto LABEL_13;
  }

  v11 = v10;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  CFRelease(v11);
  if (!ImageAtIndex)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = pathCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CGImageRef: CGImageSourceCreateImageAtIndex() returned NULL for image source created from path: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (error)
    {
      v17 = @"Failed to create CGImageRef: CGImageSourceCreateImageAtIndex() returned NULL for image source";
LABEL_11:
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:v17 suggestion:0];
      *error = ImageAtIndex = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

  return ImageAtIndex;
}

- (void)_deleteSlotWithIdentifier:(unsigned int)identifier
{
  v3 = *&identifier;
  v15 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDCameraSnapshotSlotManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Deleting snapshot slot: %u", &v11, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  snapshotContext = [(HMDCameraSnapshotSlotManager *)selfCopy snapshotContext];
  [snapshotContext deleteSlot:v3];
}

- (void)_clearSlotWithIdentifier:(unsigned int)identifier
{
  v3 = *&identifier;
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Clearing snapshot slot: %u", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  snapshotContext = [(HMDCameraSnapshotSlotManager *)selfCopy snapshotContext];
  [snapshotContext setObject:0 forSlot:v3];
}

- (BOOL)_fillSlotWithIdentifier:(unsigned int)identifier filePath:(id)path error:(id *)error
{
  v6 = *&identifier;
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v20 = 0;
  v9 = [(HMDCameraSnapshotSlotManager *)self _createSnapshotCGImageRefFromFileWithPath:pathCopy error:&v20];
  v10 = v20;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138544130;
      v22 = v15;
      v23 = 1024;
      v24 = v6;
      v25 = 2112;
      v26 = pathCopy;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Filling snapshot slot %u for file %@ with image %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    snapshotContext = [(HMDCameraSnapshotSlotManager *)selfCopy snapshotContext];
    [snapshotContext setObject:v9 forSlot:v6];

    CFRelease(v9);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138544130;
      v22 = v17;
      v23 = 1024;
      v24 = v6;
      v25 = 2112;
      v26 = pathCopy;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fill slot %u for file %@: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    if (error)
    {
      v18 = v10;
      *error = v10;
    }
  }

  return v9 != 0;
}

- (unsigned)_createSlot
{
  v14 = *MEMORY[0x277D85DE8];
  snapshotContext = [(HMDCameraSnapshotSlotManager *)self snapshotContext];
  createSlot = [snapshotContext createSlot];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = createSlot;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Created snapshot slot: %u", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  return createSlot;
}

- (void)deleteSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-catransaction-deleteslot."];
  clientQueue = [(HMDCameraSnapshotSlotManager *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMDCameraSnapshotSlotManager_deleteSlotWithIdentifier___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(clientQueue, v8);
}

uint64_t __57__HMDCameraSnapshotSlotManager_deleteSlotWithIdentifier___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [*(a1 + 32) _deleteSlotWithIdentifier:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

- (void)clearSlotWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CD9FF0];
  identifierCopy = identifier;
  [v4 begin];
  unsignedIntegerValue = [identifierCopy unsignedIntegerValue];

  [(HMDCameraSnapshotSlotManager *)self _clearSlotWithIdentifier:unsignedIntegerValue];
  v7 = MEMORY[0x277CD9FF0];

  [v7 commit];
}

- (BOOL)fillSlotWithIdentifier:(id)identifier filePath:(id)path error:(id *)error
{
  v8 = MEMORY[0x277CD9FF0];
  pathCopy = path;
  identifierCopy = identifier;
  [v8 begin];
  unsignedIntegerValue = [identifierCopy unsignedIntegerValue];

  LOBYTE(error) = [(HMDCameraSnapshotSlotManager *)self _fillSlotWithIdentifier:unsignedIntegerValue filePath:pathCopy error:error];
  [MEMORY[0x277CD9FF0] commit];
  return error;
}

- (id)createSlot
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__43792;
  v12 = __Block_byref_object_dispose__43793;
  v13 = 0;
  v3 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-catransaction-createslot."];
  clientQueue = [(HMDCameraSnapshotSlotManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDCameraSnapshotSlotManager_createSlot__block_invoke;
  v7[3] = &unk_279734898;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(clientQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __42__HMDCameraSnapshotSlotManager_createSlot__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "_createSlot")}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = MEMORY[0x277CD9FF0];

  return [v5 commit];
}

- (void)_backboardServicesRelaunched
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Backboard services relaunched", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraSnapshotSlotManager *)selfCopy _createSnapshotContext];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMDBackboardServicesRelaunchNotification" object:selfCopy];

  __createBackboardWatcher(selfCopy);
}

- (void)_createSnapshotContext
{
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277CD9FF0] begin];
  remoteContext = [MEMORY[0x277CD9E38] remoteContext];
  [(HMDCameraSnapshotSlotManager *)self setSnapshotContext:remoteContext];

  [MEMORY[0x277CD9FF0] commit];

  objc_autoreleasePoolPop(v3);
}

- (HMDCameraSnapshotSlotManager)init
{
  v9.receiver = self;
  v9.super_class = HMDCameraSnapshotSlotManager;
  v2 = [(HMDCameraSnapshotSlotManager *)&v9 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    [(HMDCameraSnapshotSlotManager *)v2 _createSnapshotContext];
    __createBackboardWatcher(v2);
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_23_43814);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

uint64_t __43__HMDCameraSnapshotSlotManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14;
  logCategory__hmf_once_v14 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMDCameraSnapshotSlotManager)sharedManager
{
  if (sharedManager_onceToken_43819 != -1)
  {
    dispatch_once(&sharedManager_onceToken_43819, &__block_literal_global_43820);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __45__HMDCameraSnapshotSlotManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HMDCameraSnapshotSlotManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end