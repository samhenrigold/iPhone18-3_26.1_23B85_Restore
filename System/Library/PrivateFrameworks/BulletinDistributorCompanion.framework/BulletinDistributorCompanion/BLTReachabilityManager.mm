@interface BLTReachabilityManager
+ (id)sharedInstance;
- (BLTReachabilityManager)init;
- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality;
- (void)interfaceRadioHotnessChanged:(id)changed;
- (void)interfaceReachabilityChanged:(id)changed;
@end

@implementation BLTReachabilityManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BLTReachabilityManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

uint64_t __40__BLTReachabilityManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (BLTReachabilityManager)init
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = BLTReachabilityManager;
  v2 = [(BLTReachabilityManager *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.bulletindistributor.reachability-updates", v3);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v4;

    v6 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
    [v6 addDelegate:v2 queue:v2->_updateQueue];

    v7 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
    [v7 addDelegate:v2 queue:v2->_updateQueue];

    v8 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
    if ([v8 isInternetReachable])
    {
      v2->_internetReachable = 1;
      p_internetReachable = &v2->_internetReachable;
    }

    else
    {
      v10 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
      v2->_internetReachable = [v10 isInternetReachable];
      p_internetReachable = &v2->_internetReachable;
    }

    v12 = blt_ids_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
      v14 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:*p_internetReachable];
      *buf = 138412802;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_DEFAULT, "according to sPCInterfaceMonitorWWAN=%@ sPCInterfaceMonitorNonCellular=%@ internet reachability = %@", buf, 0x20u);
    }
  }

  return v2;
}

- (void)interfaceReachabilityChanged:(id)changed
{
  v19 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  isInternetReachable = 1;
  v6 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:1];
  if (([v6 isInternetReachable] & 1) == 0)
  {
    v7 = [MEMORY[0x277D3A170] sharedInstanceForIdentifier:0];
    isInternetReachable = [v7 isInternetReachable];
  }

  if (self->_internetReachable != isInternetReachable)
  {
    v9 = blt_ids_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_internetReachable];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:isInternetReachable];
      v13 = 138412802;
      v14 = changedCopy;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_241FB3000, v9, OS_LOG_TYPE_DEFAULT, "Internet reachability via %@ changed from %@ to %@", &v13, 0x20u);
    }

    [(BLTReachabilityManager *)self setInternetReachable:isInternetReachable];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"BLTIDSDeviceConnectionStatusChangedNotification" object:0];
  }
}

- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality
{
  v4 = *&quality;
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = blt_ids_log(changedCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(changedCopy, "linkQuality")}];
    v9 = 138412802;
    v10 = changedCopy;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_241FB3000, v6, OS_LOG_TYPE_INFO, "interfaceLinkQualityChanged %@ previousLinkQuality %@ currentLinkQuality %@", &v9, 0x20u);
  }
}

- (void)interfaceRadioHotnessChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v4 = blt_ids_log(changedCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(changedCopy, "isRadioHot")}];
    v6 = 138412546;
    v7 = changedCopy;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_241FB3000, v4, OS_LOG_TYPE_INFO, "interfaceLinkQualityChanged %@ hotness %@", &v6, 0x16u);
  }
}

@end