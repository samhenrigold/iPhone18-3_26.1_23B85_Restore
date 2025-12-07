@interface HMDWACBrowser
+ (id)logCategory;
- (HMDWACBrowser)initWithWACScanner:(id)scanner messageDispatcher:(id)dispatcher;
- (HMDWACBrowserDelegate)delegate;
- (void)clearBackoff;
- (void)requestBackoff;
- (void)scanner:(id)scanner didError:(id)error;
- (void)scanner:(id)scanner didRemoveDevice:(id)device;
- (void)scanner:(id)scanner didUpdateDevice:(id)device;
- (void)scannerDidStop:(id)stop;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startBrowsingForAccessories;
- (void)startBrowsingForAirPlayWACAccessoriesWithBrowser:(id)browser;
- (void)stopBrowsingForAccessories;
@end

@implementation HMDWACBrowser

- (HMDWACBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scannerDidStop:(id)stop
{
  v20 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@WAC Scan Stopped...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDWACBrowser *)selfCopy scanIsActive])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2048;
      v19 = 2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Scan was still flagged as active, restarting after %lu seconds...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    __removeAllAccessories(v10);
    v13 = dispatch_time(0, 2000000000);
    dispatchQueue = v10->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMDWACBrowser_scannerDidStop___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v10;
    dispatch_after(v13, dispatchQueue, block);
  }
}

- (void)scanner:(id)scanner didError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  scannerCopy = scanner;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error while scanning for WAC devices: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)scanner:(id)scanner didUpdateDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  scannerCopy = scanner;
  deviceCopy = device;
  selfCopy = self;
  v9 = deviceCopy;
  unassociatedAccessories = selfCopy->_unassociatedAccessories;
  identifier = [v9 identifier];
  v12 = [(NSMutableDictionary *)unassociatedAccessories objectForKey:identifier];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      wacDevice = [v12 wacDevice];
      *v20 = 138543874;
      *&v20[4] = v16;
      *&v20[12] = 2112;
      *&v20[14] = wacDevice;
      *&v20[22] = 2112;
      v21 = v9;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating WAC device: %@ -> %@", v20, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [v12 setWACDevice:v9];
    delegate = [(HMDWACBrowser *)v14 delegate];
    if (delegate)
    {
      delegateQueue = [(HMDWACBrowser *)v14 delegateQueue];
      *v20 = MEMORY[0x277D85DD0];
      *&v20[8] = 3221225472;
      *&v20[16] = ____updateDevice_block_invoke;
      v21 = &unk_27868A750;
      v22 = delegate;
      v23 = v12;
      dispatch_async(delegateQueue, v20);
    }
  }

  else
  {
    __addDevice(selfCopy, v9);
  }
}

- (void)scanner:(id)scanner didRemoveDevice:(id)device
{
  identifier = [device identifier];
  __removeUnassociatedAccessory(self, identifier);
}

- (void)clearBackoff
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Backoff cleared", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDWACBrowser_clearBackoff__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)requestBackoff
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Backoff requested", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDWACBrowser_requestBackoff__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)stopBrowsingForAccessories
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDWACBrowser_stopBrowsingForAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__HMDWACBrowser_stopBrowsingForAccessories__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stop];
  __removeAllAccessories(*(a1 + 32));
  v2 = *(a1 + 32);

  return [v2 setScanIsActive:0];
}

- (void)startBrowsingForAirPlayWACAccessoriesWithBrowser:(id)browser
{
  browserCopy = browser;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDWACBrowser_startBrowsingForAirPlayWACAccessoriesWithBrowser___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = browserCopy;
  v6 = browserCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)startBrowsingForAccessories
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDWACBrowser_startBrowsingForAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__44__HMDWACBrowser_startBrowsingForAccessories__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) scanIsActive];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setScanIsActive:1];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Activating WAC Scanner...", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return [*(*(a1 + 32) + 16) start];
  }

  return result;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDWACBrowser_setDelegate_queue___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HMDWACBrowser_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (HMDWACBrowser)initWithWACScanner:(id)scanner messageDispatcher:(id)dispatcher
{
  scannerCopy = scanner;
  dispatcherCopy = dispatcher;
  v18.receiver = self;
  v18.super_class = HMDWACBrowser;
  v9 = [(HMDWACBrowser *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageDispatcher, dispatcher);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    unassociatedAccessories = v10->_unassociatedAccessories;
    v10->_unassociatedAccessories = v11;

    v13 = HAPDispatchQueueName();
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    dispatchQueue = v10->_dispatchQueue;
    v10->_dispatchQueue = v15;

    objc_storeStrong(&v10->_wacScanner, scanner);
    [(HMDWACScanner *)v10->_wacScanner setDelegate:v10 queue:v10->_dispatchQueue];
    v10->_scanIsActive = 0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_168696 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_168696, &__block_literal_global_168697);
  }

  v3 = logCategory__hmf_once_v10_168698;

  return v3;
}

void __28__HMDWACBrowser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_168698;
  logCategory__hmf_once_v10_168698 = v0;
}

@end