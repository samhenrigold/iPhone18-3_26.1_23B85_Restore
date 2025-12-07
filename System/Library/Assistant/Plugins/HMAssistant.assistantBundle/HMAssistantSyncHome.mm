@interface HMAssistantSyncHome
+ (id)logCategory;
- (BOOL)shouldSyncForAnchor:(id)anchor;
- (HMAssistantSyncHome)init;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info;
- (void)dealloc;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)syncDidEnd;
@end

@implementation HMAssistantSyncHome

- (void)syncDidEnd
{
  [(HMAssistantSyncHome *)self setFinalAnchor:0];
  [(HMAssistantSyncHome *)self setAnchors:0];

  [(HMAssistantSyncHome *)self setEntities:0];
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  anchorCopy = anchor;
  infoCopy = info;
  entities = [(HMAssistantSyncHome *)self entities];
  if (![entities count])
  {

    goto LABEL_7;
  }

  finalAnchor = [(HMAssistantSyncHome *)self finalAnchor];
  v9 = [finalAnchor isEqualToString:anchorCopy];

  if (v9)
  {
LABEL_7:
    [infoCopy setObject:0];
    [infoCopy setPostAnchor:anchorCopy];
    goto LABEL_8;
  }

  if (anchorCopy)
  {
    anchors = [(HMAssistantSyncHome *)self anchors];
    v11 = [anchors indexOfObject:anchorCopy];

    if (v11 < 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = v11 + 1;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_12:
  anchors2 = [(HMAssistantSyncHome *)self anchors];
  v14 = [anchors2 objectAtIndex:v12];
  [infoCopy setPostAnchor:v14];

  entities2 = [(HMAssistantSyncHome *)self entities];
  v16 = [entities2 count];

  if (v12 < v16)
  {
    entities3 = [(HMAssistantSyncHome *)self entities];
    v18 = [entities3 objectAtIndex:v12];
    [infoCopy setObject:v18];
  }

LABEL_8:
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info
{
  v73 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  keyCopy = key;
  infoCopy = info;
  if ([@"com.apple.homekit.name" isEqualToString:keyCopy])
  {
    [(HMAssistantSyncHome *)self syncDidEnd];
    v14 = dispatch_group_create();
    [(HMAssistantSyncHome *)self setWaitGroup:v14];

    defaultPrivateConfiguration = [MEMORY[0x277CD1C60] defaultPrivateConfiguration];
    [(__CFString *)defaultPrivateConfiguration setOptions:34397];
    [(__CFString *)defaultPrivateConfiguration setCachePolicy:3];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v19;
      v63 = 2112;
      v64 = defaultPrivateConfiguration;
      _os_log_impl(&dword_2334D2000, v18, OS_LOG_TYPE_INFO, "%{public}@Started initialization of home manager with configuration %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    mach_absolute_time();
    [(HMAssistantSyncHome *)selfCopy setFetchHomeConfigurationStartTime:UpTicksToMilliseconds()];
    v20 = [objc_alloc(MEMORY[0x277CD1A90]) initWithConfiguration:defaultPrivateConfiguration];
    [(HMAssistantSyncHome *)selfCopy setHomeManager:v20];

    waitGroup = [(HMAssistantSyncHome *)selfCopy waitGroup];
    dispatch_group_enter(waitGroup);

    homeManager = [(HMAssistantSyncHome *)selfCopy homeManager];
    [homeManager setDelegate:selfCopy];

    if ([MEMORY[0x277CD19B8] areAnyAccessoriesConfigured])
    {
      if ([(HMAssistantSyncHome *)selfCopy shouldSyncForAnchor:anchorCopy])
      {
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x3032000000;
        v59[3] = sub_2334D3A74;
        v59[4] = sub_2334D3A84;
        array = [MEMORY[0x277CBEB18] array];
        v57[0] = 0;
        v57[1] = v57;
        v57[2] = 0x3032000000;
        v57[3] = sub_2334D3A74;
        v57[4] = sub_2334D3A84;
        array2 = [MEMORY[0x277CBEB18] array];
        v47 = getLastSyncedAssistantConfigurationVersion();
        v23 = objc_autoreleasePoolPush();
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138544642;
          v62 = v25;
          v63 = 2112;
          v64 = v47;
          v65 = 2112;
          v66 = anchorCopy;
          v67 = 2112;
          v68 = validityCopy;
          v69 = 2112;
          v70 = keyCopy;
          v71 = 2048;
          countCopy = count;
          _os_log_impl(&dword_2334D2000, v24, OS_LOG_TYPE_INFO, "%{public}@lastSyncedVersion %@  beginAnchor is %@  validity %@  key %@  count %tu", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v23);
        [(HMAssistantSyncHome *)selfCopy setDone:0];
        objc_initWeak(&location, selfCopy);
        initWithNoValidation = [objc_alloc(MEMORY[0x277CD19B8]) initWithNoValidation];
        waitGroup2 = [(HMAssistantSyncHome *)selfCopy waitGroup];
        dispatch_group_enter(waitGroup2);

        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = sub_2334D3A8C;
        v51[3] = &unk_2789D9E38;
        objc_copyWeak(&v55, &location);
        v53 = v59;
        v54 = v57;
        v52 = infoCopy;
        [initWithNoValidation requestSiriSyncDataWithValidity:validityCopy completion:v51];
        waitGroup3 = [(HMAssistantSyncHome *)selfCopy waitGroup];
        v29 = dispatch_time(0, 42000000000);
        v30 = dispatch_group_wait(waitGroup3, v29);

        if (v30)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v33;
            _os_log_impl(&dword_2334D2000, v32, OS_LOG_TYPE_INFO, "%{public}@Timed out waiting for homed", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
        }

        queue = [(HMAssistantSyncHome *)selfCopy queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2334D3CD4;
        block[3] = &unk_2789D9E60;
        block[4] = selfCopy;
        dispatch_async(queue, block);

        objc_destroyWeak(&v55);
        objc_destroyWeak(&location);

        _Block_object_dispose(v57, 8);
        _Block_object_dispose(v59, 8);

        goto LABEL_26;
      }

      v42 = objc_autoreleasePoolPush();
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v46 = getAssistantConfigurationSnapshot();
        *buf = 138543874;
        v62 = v45;
        v63 = 2112;
        v64 = anchorCopy;
        v65 = 2112;
        v66 = v46;
        _os_log_impl(&dword_2334D2000, v43, OS_LOG_TYPE_INFO, "%{public}@lastSyncedSnapshot %@ at same as assistantConfigurationSnapshot %@ - skipping sync...", buf, 0x20u);
      }
    }

    else
    {
      if ([(HMAssistantSyncHome *)selfCopy shouldSyncForAnchor:validityCopy])
      {
        v38 = getAssistantConfigurationSnapshot();
        v39 = objc_autoreleasePoolPush();
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543874;
          v62 = v41;
          v63 = 2112;
          v64 = validityCopy;
          v65 = 2112;
          v66 = v38;
          _os_log_impl(&dword_2334D2000, v40, OS_LOG_TYPE_INFO, "%{public}@lastSyncValidity '%@' different from assistantConfigurationSnapshot %@ - reset all data so that full sync attempted next time", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
        [infoCopy resetWithValidity:v38];
      }

      v42 = objc_autoreleasePoolPush();
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v44;
        _os_log_impl(&dword_2334D2000, v43, OS_LOG_TYPE_INFO, "%{public}@No accessories configured - skipping sync request from Siri client...", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v42);
LABEL_26:

    goto LABEL_27;
  }

  v35 = objc_autoreleasePoolPush();
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543874;
    v62 = v37;
    v63 = 2112;
    v64 = keyCopy;
    v65 = 2112;
    v66 = @"com.apple.homekit.name";
    _os_log_impl(&dword_2334D2000, v36, OS_LOG_TYPE_INFO, "%{public}@Incoming key '%@' does not match plug-in key '%@'", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v35);
LABEL_27:
}

- (BOOL)shouldSyncForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = getAssistantConfigurationSnapshot();
  v5 = [anchorCopy isEqual:v4];

  return v5 ^ 1;
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
    _os_log_impl(&dword_2334D2000, v5, OS_LOG_TYPE_INFO, "%{public}@Indicating syncDidEnd from dealloc", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMAssistantSyncHome *)selfCopy syncDidEnd];
  v7.receiver = selfCopy;
  v7.super_class = HMAssistantSyncHome;
  [(HMAssistantSyncHome *)&v7 dealloc];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v15 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    mach_absolute_time();
    v9 = UpTicksToMilliseconds();
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = v9 - [(HMAssistantSyncHome *)selfCopy fetchHomeConfigurationStartTime];
    _os_log_impl(&dword_2334D2000, v7, OS_LOG_TYPE_INFO, "%{public}@Home manager did update homes in %llu milliseconds", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  waitGroup = [(HMAssistantSyncHome *)selfCopy waitGroup];
  dispatch_group_leave(waitGroup);
}

- (HMAssistantSyncHome)init
{
  v9.receiver = self;
  v9.super_class = HMAssistantSyncHome;
  v2 = [(HMAssistantSyncHome *)&v9 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    [MEMORY[0x277D0F8D0] setDefaultValue:MEMORY[0x277CBEC38] forPreferenceKey:@"dropHomeNamesFromSyncData"];
  }

  return v2;
}

+ (id)logCategory
{
  if (qword_2814EE698 != -1)
  {
    dispatch_once(&qword_2814EE698, &unk_2848D36B8);
  }

  v3 = qword_2814EE690;

  return v3;
}

@end