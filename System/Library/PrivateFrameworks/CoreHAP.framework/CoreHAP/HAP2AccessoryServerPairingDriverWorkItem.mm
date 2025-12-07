@interface HAP2AccessoryServerPairingDriverWorkItem
- (HAP2AccessoryServerPairingDriverWorkItemInfo)pairingDriver;
- (HMFActivity)pairingActivity;
- (NSString)description;
- (id)maybePairingDriver;
- (void)cancelWithError:(id)error;
- (void)finishWithError:(id)error;
- (void)runForPairingDriver:(id)driver;
- (void)startWithPairingDriver:(id)driver;
@end

@implementation HAP2AccessoryServerPairingDriverWorkItem

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)runForPairingDriver:(id)driver
{
  driverCopy = driver;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSString)description
{
  maybePairingDriver = [(HAP2AccessoryServerPairingDriverWorkItem *)self maybePairingDriver];
  accessoryServer = [maybePairingDriver accessoryServer];

  v5 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HAP2AccessoryServerPairingDriverWorkItem;
  v6 = [(HAP2LoggingObject *)&v11 description];
  name = [accessoryServer name];
  deviceID = [accessoryServer deviceID];
  v9 = [v5 stringWithFormat:@"%@ [%@/%@]", v6, name, deviceID];

  return v9;
}

- (void)finishWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (errorCopy)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      selfCopy2 = self;
      v10 = 2112;
      v11 = errorCopy;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%@ Finished with error: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%@ Finished successfully", &v8, 0xCu);
  }

  pairingDriver = [(HAP2AccessoryServerPairingDriverWorkItem *)self pairingDriver];
  objc_storeWeak(&self->_pairingDriver, 0);
  [pairingDriver workItem:self finishedWithError:errorCopy];
}

- (void)startWithPairingDriver:(id)driver
{
  v12 = *MEMORY[0x277D85DE8];
  driverCopy = driver;
  operationQueue = [(HAP2AccessoryServerPairingDriverWorkItem *)self operationQueue];
  [operationQueue assertCurrentQueue];

  objc_storeWeak(&self->_pairingDriver, driverCopy);
  operationQueue2 = [driverCopy operationQueue];
  operationQueue = self->_operationQueue;
  self->_operationQueue = operationQueue2;

  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  objc_storeWeak(&self->_pairingActivity, currentActivity);

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%@ Starting", &v10, 0xCu);
  }

  [(HAP2AccessoryServerPairingDriverWorkItem *)self runForPairingDriver:driverCopy];
}

- (HAP2AccessoryServerPairingDriverWorkItemInfo)pairingDriver
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDriver);

  return WeakRetained;
}

- (id)maybePairingDriver
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDriver);

  return WeakRetained;
}

@end