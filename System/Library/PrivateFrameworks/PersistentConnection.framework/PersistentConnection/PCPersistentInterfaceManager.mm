@interface PCPersistentInterfaceManager
+ (id)sharedInstance;
- (BOOL)_isCellularCall:(__CTCall *)call;
- (BOOL)_isCurrentDataSimContextLocked:(id)locked;
- (BOOL)_isInternetReachableLocked;
- (BOOL)_isWiFiUsable;
- (BOOL)_wantsWWANInterfaceAssertion;
- (BOOL)_wantsWakeOnWiFiEnabled;
- (BOOL)_wifiIsPoorLinkQuality;
- (BOOL)_wwanIsPoorLinkQuality;
- (BOOL)allowBindingToWWAN;
- (BOOL)areAllNetworkInterfacesDisabled;
- (BOOL)doesWWANInterfaceExist;
- (BOOL)isInCall;
- (BOOL)isInternetReachable;
- (BOOL)isInternetReachableViaWiFi;
- (BOOL)isPowerStateDetectionSupported;
- (BOOL)isWWANBetterThanWiFi;
- (BOOL)isWWANInHomeCountry;
- (BOOL)isWWANInterfaceActivationPermitted;
- (BOOL)isWWANInterfaceInProlongedHighPowerState;
- (BOOL)isWWANInterfaceSuspended;
- (BOOL)isWWANInterfaceUp;
- (BOOL)isWakeOnWiFiSupported;
- (NSString)WWANInterfaceName;
- (NSString)currentLinkQualityString;
- (PCPersistentInterfaceManager)init;
- (void)_adjustWakeOnWiFi;
- (void)_adjustWakeOnWiFiLocked;
- (void)_adjustWiFiAutoAssociation;
- (void)_adjustWiFiAutoAssociationLocked;
- (void)_clearInCallWWANOverrideTimerLocked;
- (void)_createCTConnection;
- (void)_ctConnectionAttempt;
- (void)_inCallWWANOverrideTimerFired;
- (void)_mainThreadCTConnectionAttempt;
- (void)_processCallStatusChanged:(id)changed;
- (void)_processConnectionStatusLocked:(id)locked;
- (void)_processCurrentDataSimChangedLocked:(id)locked;
- (void)_processDataStatusLocked:(id)locked;
- (void)_scheduleCalloutsForSelector:(SEL)selector;
- (void)_updateCTIsWWANInHomeCountry:(BOOL)country isWWANInterfaceDataActive:(BOOL)active;
- (void)_updateWWANInterfaceAssertions;
- (void)_updateWWANInterfaceAssertionsLocked;
- (void)_updateWWANInterfaceUpState;
- (void)_updateWWANInterfaceUpStateLocked;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)connectionActivationError:(id)error connection:(int)connection error:(int)a5;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)currentDataSimChanged:(id)changed;
- (void)cutWiFiManagerDeviceAttached:(id)attached;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)enableWakeOnWiFi:(BOOL)fi forDelegate:(id)delegate;
- (void)enableWiFiAutoAssociation:(BOOL)association forDelegate:(id)delegate;
- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality;
- (void)interfaceReachabilityChanged:(id)changed;
- (void)removeDelegate:(id)delegate;
@end

@implementation PCPersistentInterfaceManager

- (BOOL)isPowerStateDetectionSupported
{
  [(NSRecursiveLock *)self->_lock lock];
  isPowerStateDetectionSupported = self->_isPowerStateDetectionSupported;
  [(NSRecursiveLock *)self->_lock unlock];
  return isPowerStateDetectionSupported;
}

- (BOOL)isWWANInterfaceUp
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceUp = self->_isWWANInterfaceUp;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceUp;
}

- (BOOL)isInternetReachable
{
  [(NSRecursiveLock *)self->_lock lock];
  _isInternetReachableLocked = [(PCPersistentInterfaceManager *)self _isInternetReachableLocked];
  [(NSRecursiveLock *)self->_lock unlock];
  return _isInternetReachableLocked;
}

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[PCPersistentInterfaceManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (BOOL)_isInternetReachableLocked
{
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  if ([v3 isInterfaceUsable] && self->_isWWANInterfaceUp)
  {
    isInterfaceUsable = 1;
  }

  else
  {
    v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    isInterfaceUsable = [v5 isInterfaceUsable];
  }

  return isInterfaceUsable;
}

- (BOOL)isInCall
{
  [(NSRecursiveLock *)self->_lock lock];
  isInCall = self->_isInCall;
  [(NSRecursiveLock *)self->_lock unlock];
  return isInCall;
}

- (NSString)currentLinkQualityString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  linkQualityString = [v3 linkQualityString];
  v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  linkQualityString2 = [v5 linkQualityString];
  v7 = [v2 stringWithFormat:@"wwan is %@ wifi is %@", linkQualityString, linkQualityString2];;

  return v7;
}

- (BOOL)_wantsWakeOnWiFiEnabled
{
  if (CFSetGetCount(self->_wakeOnWiFiDelegates) < 1)
  {
    return 0;
  }

  mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
  isWoWSupported = [mEMORY[0x277CFB998] isWoWSupported];

  return isWoWSupported;
}

- (BOOL)doesWWANInterfaceExist
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_WWANInterfaceName != 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)_adjustWiFiAutoAssociationLocked
{
  v14 = *MEMORY[0x277D85DE8];
  WiFiAutoAssociationDisableTimer = self->_WiFiAutoAssociationDisableTimer;
  if (WiFiAutoAssociationDisableTimer)
  {
    [(PCSimpleTimer *)WiFiAutoAssociationDisableTimer invalidate];
    v4 = self->_WiFiAutoAssociationDisableTimer;
    self->_WiFiAutoAssociationDisableTimer = 0;
  }

  Count = CFSetGetCount(self->_WiFiAutoAssociationDelegates);
  mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
  v7 = [mEMORY[0x277CFB998] hasWiFiAutoAssociationClientToken:@"PCAutoAssociateToken"];

  if (Count > 0 != v7)
  {
    v8 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "disabling";
      if (Count > 0)
      {
        v9 = "enabling";
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: %s WiFi association on wake", &v12, 0xCu);
    }

    mEMORY[0x277CFB998]2 = [MEMORY[0x277CFB998] sharedInstance];
    v11 = mEMORY[0x277CFB998]2;
    if (Count < 1)
    {
      [mEMORY[0x277CFB998]2 removeWiFiAutoAssociationClientToken:@"PCAutoAssociateToken"];
    }

    else
    {
      [mEMORY[0x277CFB998]2 addWiFiAutoAssociationClientToken:@"PCAutoAssociateToken"];
    }
  }
}

- (void)_adjustWakeOnWiFiLocked
{
  v14 = *MEMORY[0x277D85DE8];
  wakeOnWiFiDisableTimer = self->_wakeOnWiFiDisableTimer;
  if (wakeOnWiFiDisableTimer)
  {
    [(PCSimpleTimer *)wakeOnWiFiDisableTimer invalidate];
    v4 = self->_wakeOnWiFiDisableTimer;
    self->_wakeOnWiFiDisableTimer = 0;
  }

  _wantsWakeOnWiFiEnabled = [(PCPersistentInterfaceManager *)self _wantsWakeOnWiFiEnabled];
  mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
  v7 = [mEMORY[0x277CFB998] hasWoWClient:self];

  if (_wantsWakeOnWiFiEnabled != v7)
  {
    v8 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "disabling";
      if (_wantsWakeOnWiFiEnabled)
      {
        v9 = "enabling";
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: %s wake-on-WiFi", &v12, 0xCu);
    }

    mEMORY[0x277CFB998]2 = [MEMORY[0x277CFB998] sharedInstance];
    v11 = mEMORY[0x277CFB998]2;
    if (_wantsWakeOnWiFiEnabled)
    {
      [mEMORY[0x277CFB998]2 addWoWClient:self];
    }

    else
    {
      [mEMORY[0x277CFB998]2 removeWoWClient:self];
    }
  }
}

- (BOOL)isWWANInterfaceInProlongedHighPowerState
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceInProlongedHighPowerState = self->_isWWANInterfaceInProlongedHighPowerState;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceInProlongedHighPowerState;
}

uint64_t __46__PCPersistentInterfaceManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(PCPersistentInterfaceManager);

  return MEMORY[0x2821F96F8]();
}

- (PCPersistentInterfaceManager)init
{
  v12.receiver = self;
  v12.super_class = PCPersistentInterfaceManager;
  v2 = [(PCPersistentInterfaceManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSRecursiveLock *)v2->_lock lock];
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegatesAndQueues = v2->_delegatesAndQueues;
    v2->_delegatesAndQueues = weakToStrongObjectsMapTable;

    v2->_WiFiAutoAssociationDelegates = CFSetCreateMutable(0, 0, 0);
    v2->_wakeOnWiFiDelegates = CFSetCreateMutable(0, 0, 0);
    v2->_ctIsWWANInHomeCountry = 1;
    v2->_isWWANInterfaceActivationPermitted = 0;
    [(PCPersistentInterfaceManager *)v2 _createCTConnection];
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    v8 = MEMORY[0x277D85CD0];
    [v7 addDelegate:v2 queue:MEMORY[0x277D85CD0]];

    v9 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    [v9 addDelegate:v2 queue:v8];

    [(PCPersistentInterfaceManager *)v2 _updateWWANInterfaceUpStateLocked];
    mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
    [mEMORY[0x277CFB998] addDelegate:v2];

    [(NSRecursiveLock *)v2->_lock unlock];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  [v3 removeDelegate:self];

  v4 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  [v4 removeDelegate:self];

  mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
  [mEMORY[0x277CFB998] removeDelegate:self];

  WiFiAutoAssociationDelegates = self->_WiFiAutoAssociationDelegates;
  if (WiFiAutoAssociationDelegates)
  {
    CFRelease(WiFiAutoAssociationDelegates);
  }

  wakeOnWiFiDelegates = self->_wakeOnWiFiDelegates;
  if (wakeOnWiFiDelegates)
  {
    CFRelease(wakeOnWiFiDelegates);
  }

  interfaceAssertion = self->_interfaceAssertion;
  if (interfaceAssertion)
  {
    CFRelease(interfaceAssertion);
  }

  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v10.receiver = self;
  v10.super_class = PCPersistentInterfaceManager;
  [(PCPersistentInterfaceManager *)&v10 dealloc];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  lock = self->_lock;
  queueCopy = queue;
  delegateCopy = delegate;
  [(NSRecursiveLock *)lock lock];
  v9 = objc_alloc_init(PCDelegateInfo);
  [(PCDelegateInfo *)v9 setQueue:queueCopy];

  [(NSMapTable *)self->_delegatesAndQueues setObject:v9 forKey:delegateCopy];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)removeDelegate:(id)delegate
{
  lock = self->_lock;
  delegateCopy = delegate;
  [(NSRecursiveLock *)lock lock];
  [(NSMapTable *)self->_delegatesAndQueues removeObjectForKey:delegateCopy];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)_createCTConnection
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PCPersistentInterfaceManager.m" lineNumber:174 description:@"CTServerConnectionRef already exists"];
}

void __51__PCPersistentInterfaceManager__createCTConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) object];
  v8 = [a2 copy];
  v9 = [a3 copy];
  if (v7)
  {
    v10 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_2;
    block[3] = &unk_279A19CF8;
    v12 = v8;
    v13 = v7;
    v14 = v9;
    dispatch_async(v10, block);
  }

  objc_autoreleasePoolPop(v6);
}

void *__51__PCPersistentInterfaceManager__createCTConnection__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*MEMORY[0x277CC37E8]];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _processCallStatusChanged:v4];
  }

  return result;
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) _processCurrentDataSimChangedLocked:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) _processConnectionStatusLocked:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_27(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) _processDataStatusLocked:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

- (void)_mainThreadCTConnectionAttempt
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [v3 initWithObjects:{*MEMORY[0x277CBE738], 0}];
  [(PCPersistentInterfaceManager *)self performSelector:sel__ctConnectionAttempt withObject:0 afterDelay:v4 inModes:10.0];
}

- (void)_ctConnectionAttempt
{
  v3 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_lock lock];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop cancelPerformSelector:sel__mainThreadCTConnectionAttempt target:self argument:0];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__ctConnectionAttempt object:0];
  mainRunLoop2 = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop2 cancelPerformSelector:sel__ctConnectionAttempt target:self argument:0];

  interfaceAssertion = self->_interfaceAssertion;
  if (interfaceAssertion)
  {
    CFRelease(interfaceAssertion);
    self->_interfaceAssertion = 0;
  }

  ctClient = self->_ctClient;
  self->_ctClient = 0;

  currentDataSimContext = self->_currentDataSimContext;
  self->_currentDataSimContext = 0;

  [(PCPersistentInterfaceManager *)self _createCTConnection];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  [(NSRecursiveLock *)self->_lock unlock];

  objc_autoreleasePoolPop(v3);
}

- (void)interfaceLinkQualityChanged:(id)changed previousLinkQuality:(int)quality
{
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpState:changed];
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInternetReachabilityChanged_];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)interfaceReachabilityChanged:(id)changed
{
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpState];
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInternetReachabilityChanged_];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)currentDataSimChanged:(id)changed
{
  lock = self->_lock;
  changedCopy = changed;
  [(NSRecursiveLock *)lock lock];
  [(PCPersistentInterfaceManager *)self _processCurrentDataSimChangedLocked:changedCopy];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  infoCopy = info;
  if (!connection)
  {
    v11 = infoCopy;
    lock = self->_lock;
    changedCopy = changed;
    [(NSRecursiveLock *)lock lock];
    LODWORD(lock) = [(PCPersistentInterfaceManager *)self _isCurrentDataSimContextLocked:changedCopy];

    if (lock)
    {
      [(PCPersistentInterfaceManager *)self _processConnectionStatusLocked:v11];
    }

    [(NSRecursiveLock *)self->_lock unlock];
    infoCopy = v11;
  }
}

- (void)connectionActivationError:(id)error connection:(int)connection error:(int)a5
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(NSRecursiveLock *)self->_lock lock];
  if (!connection && [(PCPersistentInterfaceManager *)self _isCurrentDataSimContextLocked:errorCopy])
  {
    v9 = [(CoreTelephonyClient *)self->_ctClient getDataStatus:errorCopy error:0];
    cellularDataPossible = [v9 cellularDataPossible];

    v11 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(selfCopy) = a5;
      _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "Interface manager: received connectionActivationError %u", &v14, 8u);
    }

    v12 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (cellularDataPossible)
      {
        v13 = @"YES";
      }

      v14 = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Interface manager: setting _isWWANInterfaceActivationPermitted to %{public}@ due to kCTRegistrationCellularDataPlanActivateFailedNotification", &v14, 0x16u);
    }

    self->_isWWANInterfaceActivationPermitted = cellularDataPossible;
    [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  infoCopy = info;
  lock = self->_lock;
  statusCopy = status;
  [(NSRecursiveLock *)lock lock];
  LODWORD(lock) = [(PCPersistentInterfaceManager *)self _isCurrentDataSimContextLocked:statusCopy];

  if (lock)
  {
    [(PCPersistentInterfaceManager *)self _processDataStatusLocked:infoCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)_isCurrentDataSimContextLocked:(id)locked
{
  lockedCopy = locked;
  v5 = lockedCopy;
  if (lockedCopy && self->_currentDataSimContext)
  {
    slotID = [lockedCopy slotID];
    v7 = slotID == [(CTXPCServiceSubscriptionContext *)self->_currentDataSimContext slotID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processCurrentDataSimChangedLocked:(id)locked
{
  v13 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  v5 = +[PCLog interfaceManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentDataSimContext = self->_currentDataSimContext;
    v9 = 138412546;
    v10 = currentDataSimContext;
    v11 = 2112;
    v12 = lockedCopy;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "Interface manager: updating currentDataSimContext. {old: %@; new: %@}", &v9, 0x16u);
  }

  v7 = [lockedCopy copy];
  v8 = self->_currentDataSimContext;
  self->_currentDataSimContext = v7;
}

- (void)_processConnectionStatusLocked:(id)locked
{
  v18 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  state = [lockedCopy state];
  suspended = [lockedCopy suspended];
  interfaceName = [lockedCopy interfaceName];

  if (![(NSString *)self->_WWANInterfaceName isEqualToString:interfaceName])
  {
    v8 = [interfaceName copy];
    WWANInterfaceName = self->_WWANInterfaceName;
    self->_WWANInterfaceName = v8;

    v10 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_WWANInterfaceName;
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "Interface manager: wwan interface name changed to %@", &v16, 0xCu);
    }
  }

  if (self->_isWWANInterfaceDataActive != (state == 2))
  {
    [(PCPersistentInterfaceManager *)self _updateCTIsWWANInHomeCountry:self->_ctIsWWANInHomeCountry isWWANInterfaceDataActive:state == 2];
    v12 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceDataActive)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      v16 = 136315138;
      v17 = v13;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _isWWANInterfaceDataActive status changed to %s", &v16, 0xCu);
    }
  }

  if (self->_isWWANInterfaceSuspended != suspended)
  {
    self->_isWWANInterfaceSuspended = suspended;
    v14 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceSuspended)
      {
        v15 = "true";
      }

      else
      {
        v15 = "false";
      }

      v16 = 136315138;
      v17 = v15;
      _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _isWWANInterfaceSuspended status changed to  %s", &v16, 0xCu);
    }
  }

  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
}

- (void)_processDataStatusLocked:(id)locked
{
  v26 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  indicator = [lockedCopy indicator];
  v6 = indicator < 6;
  v7 = [lockedCopy indicator] != 0;
  cellularDataPossible = [lockedCopy cellularDataPossible];
  inHomeCountry = [lockedCopy inHomeCountry];
  if (self->_isWWANInterfaceInProlongedHighPowerState != v6)
  {
    self->_isWWANInterfaceInProlongedHighPowerState = v6;
    if (indicator <= 5)
    {
      self->_isPowerStateDetectionSupported = 1;
    }

    v10 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceInProlongedHighPowerState)
      {
        v11 = "active";
      }

      else
      {
        v11 = "inactive";
      }

      v22 = 136315394;
      v23 = v11;
      v24 = 1024;
      indicator2 = [lockedCopy indicator];
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "Interface manager: WWAN radio power level notification; high power state changed to %s with data indicator %d", &v22, 0x12u);
    }

    [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerWWANInterfaceChangedPowerState_];
  }

  if (self->_ctIsWWANInHomeCountry != inHomeCountry)
  {
    v12 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "false";
      if (inHomeCountry)
      {
        v13 = "true";
      }

      v22 = 136315138;
      v23 = v13;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _ctIsWWANInHomeCountry status changed to %s", &v22, 0xCu);
    }

    [(PCPersistentInterfaceManager *)self _updateCTIsWWANInHomeCountry:inHomeCountry isWWANInterfaceDataActive:self->_isWWANInterfaceDataActive];
  }

  if (self->_hasWWANStatusIndicator != v7)
  {
    self->_hasWWANStatusIndicator = v7;
    v14 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      indicator3 = [lockedCopy indicator];
      v22 = 67109120;
      LODWORD(v23) = indicator3;
      _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context WWANStatusIndicator changed to %u.", &v22, 8u);
    }
  }

  if (self->_isWWANInterfaceActivationPermitted != cellularDataPossible)
  {
    self->_isWWANInterfaceActivationPermitted = cellularDataPossible;
    v16 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceActivationPermitted)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v22 = 138543362;
      v23 = v17;
      _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _isWWANInterfaceActivationPermitted to %{public}@ (isWWANInterfaceDataAttached).", &v22, 0xCu);
    }
  }

  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
  if (!self->_isWWANInterfaceDataActive)
  {
    if (cellularDataPossible)
    {
      if (self->_hasWWANStatusIndicator)
      {
        if ([(PCPersistentInterfaceManager *)self _wantsWWANInterfaceAssertion])
        {
          Current = CFAbsoluteTimeGetCurrent();
          lastActivationTime = self->_lastActivationTime;
          if (lastActivationTime > Current || lastActivationTime + 900.0 < Current)
          {
            v20 = +[PCLog interfaceManager];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v22) = 0;
              _os_log_impl(&dword_25E3EF000, v20, OS_LOG_TYPE_DEFAULT, "Interface manager: data attached but not active; activating context", &v22, 2u);
            }

            v21 = [(CoreTelephonyClient *)self->_ctClient setPacketContextActiveByServiceType:self->_currentDataSimContext connectionType:0 active:1];
            self->_lastActivationTime = Current;
          }
        }
      }
    }
  }
}

- (BOOL)_isCellularCall:(__CTCall *)call
{
  if (!call)
  {
    return 0;
  }

  v3 = CTCallGetCallSubType();
  return CFEqual(v3, *MEMORY[0x277CC37F0]) != 0;
}

- (void)_processCallStatusChanged:(id)changed
{
  v25 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = [changedCopy objectForKey:*MEMORY[0x277CC37E0]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue] - 6 < 0xFFFFFFFE;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 & -[PCPersistentInterfaceManager _isCellularCall:](self, "_isCellularCall:", [changedCopy objectForKey:*MEMORY[0x277CC37C8]]);
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_isInCall != v8)
  {
    self->_isInCall = v8;
    v9 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isInCall)
      {
        v10 = "in";
      }

      else
      {
        v10 = "not in";
      }

      v19 = 136315138;
      selfCopy = v10;
      _os_log_impl(&dword_25E3EF000, v9, OS_LOG_TYPE_DEFAULT, "Interface manager: call status is %s call", &v19, 0xCu);
    }

    inCallWWANOverrideTimer = self->_inCallWWANOverrideTimer;
    [(PCPersistentInterfaceManager *)self _clearInCallWWANOverrideTimerLocked];
    if (self->_isInCall)
    {
      v12 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__inCallWWANOverrideTimerFired selector:0 userInfo:0 repeats:15.0];
      v13 = self->_inCallWWANOverrideTimer;
      self->_inCallWWANOverrideTimer = v12;

      v14 = +[PCLog interfaceManager];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_inCallWWANOverrideTimer;
        v19 = 138543874;
        selfCopy = self;
        v21 = 2048;
        v22 = 0x402E000000000000;
        v23 = 2114;
        v24 = v15;
        _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Interface manager: overriding WWAN interface while on call for %f seconds: %{public}@", &v19, 0x20u);
      }

      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [mainRunLoop addTimer:self->_inCallWWANOverrideTimer forMode:*MEMORY[0x277CBE738]];

      Main = CFRunLoopGetMain();
      CFRunLoopWakeUp(Main);
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 != (inCallWWANOverrideTimer != 0))
    {
      [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
    }

    [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_inCallWWANOverrideTimerFired
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _clearInCallWWANOverrideTimerLocked];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_clearInCallWWANOverrideTimerLocked
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_inCallWWANOverrideTimer)
  {
    v3 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      inCallWWANOverrideTimer = self->_inCallWWANOverrideTimer;
      v6 = 138543618;
      selfCopy = self;
      v8 = 2114;
      v9 = inCallWWANOverrideTimer;
      _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Interface manager: Clearing _inCallWWANOverrideTimer: %{public}@", &v6, 0x16u);
    }

    [(NSTimer *)self->_inCallWWANOverrideTimer invalidate];
    v5 = self->_inCallWWANOverrideTimer;
    self->_inCallWWANOverrideTimer = 0;
  }
}

- (void)_updateWWANInterfaceUpStateLocked
{
  v21 = *MEMORY[0x277D85DE8];
  isWWANInterfaceUp = self->_isWWANInterfaceUp;
  if (self->_inCallWWANOverrideTimer && self->_isInCall)
  {
    _nonCellularMonitor = [(PCPersistentInterfaceManager *)self _nonCellularMonitor];
    isInterfaceUsable = [_nonCellularMonitor isInterfaceUsable];
  }

  else
  {
    isInterfaceUsable = 0;
  }

  if (self->_isWWANInterfaceDataActive)
  {
    v6 = self->_hasWWANStatusIndicator & (isInterfaceUsable ^ 1);
  }

  else
  {
    v6 = 0;
  }

  self->_isWWANInterfaceUp = v6 & 1;
  v7 = +[PCLog interfaceManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (isWWANInterfaceUp)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (self->_isWWANInterfaceUp)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *v14 = 138544386;
    if ([(PCPersistentInterfaceManager *)self _wantsWWANInterfaceAssertion])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *&v14[4] = self;
    if (isInterfaceUsable)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *&v14[12] = 2114;
    *&v14[14] = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ _updateWWANInterfaceUpState wasUp %{public}@ isUp %{public}@ wantsInterfaceAssertion %{public}@ avoidWWANOnCall %{public}@", v14, 0x34u);
  }

  if (isWWANInterfaceUp != self->_isWWANInterfaceUp)
  {
    if (-[PCPersistentInterfaceManager _wantsWWANInterfaceAssertion](self, "_wantsWWANInterfaceAssertion") || !self->_hasWWANStatusIndicator && isWWANInterfaceUp && (+[PCInterfaceMonitor sharedInstanceForIdentifier:](PCInterfaceMonitor, "sharedInstanceForIdentifier:", 0), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isInternetReachable], v12, v13))
    {
      [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerWWANInterfaceStatusChanged_, *v14, *&v14[8]];
    }

    [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInternetReachabilityChanged_, *v14];
  }

  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
}

- (void)_updateWWANInterfaceUpState
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_updateCTIsWWANInHomeCountry:(BOOL)country isWWANInterfaceDataActive:(BOOL)active
{
  v14 = *MEMORY[0x277D85DE8];
  _isWWANInHomeCountryLocked = [(PCPersistentInterfaceManager *)self _isWWANInHomeCountryLocked];
  self->_ctIsWWANInHomeCountry = country;
  self->_isWWANInterfaceDataActive = active;
  _isWWANInHomeCountryLocked2 = [(PCPersistentInterfaceManager *)self _isWWANInHomeCountryLocked];
  if (_isWWANInHomeCountryLocked != _isWWANInHomeCountryLocked2)
  {
    v9 = _isWWANInHomeCountryLocked2;
    v10 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "false";
      if (v9)
      {
        v11 = "true";
      }

      v12 = 136315138;
      v13 = v11;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "Interface manager: isWWANInHomeCountry status changed to %s", &v12, 0xCu);
    }

    [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInHomeCountryStatusChanged_];
  }
}

- (BOOL)_wwanIsPoorLinkQuality
{
  v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  isPoorLinkQuality = [v2 isPoorLinkQuality];

  return isPoorLinkQuality;
}

- (BOOL)_wifiIsPoorLinkQuality
{
  v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  isPoorLinkQuality = [v2 isPoorLinkQuality];

  return isPoorLinkQuality;
}

- (void)_scheduleCalloutsForSelector:(SEL)selector
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_delegatesAndQueues;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_delegatesAndQueues objectForKey:v10];
        queue = [v11 queue];

        if (queue)
        {
          queue2 = [v11 queue];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __61__PCPersistentInterfaceManager__scheduleCalloutsForSelector___block_invoke;
          v14[3] = &unk_279A19D70;
          v14[4] = self;
          v14[5] = v10;
          v15 = v11;
          selectorCopy = selector;
          dispatch_async(queue2, v14);
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

void __61__PCPersistentInterfaceManager__scheduleCalloutsForSelector___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v4 = [v2 queue];

  v3 = [*(a1 + 48) queue];

  [*(*(a1 + 32) + 8) unlock];
  if (v3 == v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 40) performSelector:*(a1 + 56) withObject:*(a1 + 32)];
  }
}

- (BOOL)isWWANBetterThanWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_isWWANInterfaceUp)
  {
    LOBYTE(v3) = 1;
    v4 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    if (([v4 isInterfaceHistoricallyUsable] & 1) == 0)
    {
      v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
      v3 = [v5 isInterfaceUsable] ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (NSString)WWANInterfaceName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_WWANInterfaceName;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)isWWANInterfaceSuspended
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceSuspended = self->_isWWANInterfaceSuspended;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceSuspended;
}

- (BOOL)isWWANInterfaceActivationPermitted
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceActivationPermitted = self->_isWWANInterfaceActivationPermitted;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceActivationPermitted;
}

- (BOOL)isWWANInHomeCountry
{
  [(NSRecursiveLock *)self->_lock lock];
  _isWWANInHomeCountryLocked = [(PCPersistentInterfaceManager *)self _isWWANInHomeCountryLocked];
  [(NSRecursiveLock *)self->_lock unlock];
  return _isWWANInHomeCountryLocked;
}

- (BOOL)isInternetReachableViaWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  isInternetReachable = [v3 isInternetReachable];

  [(NSRecursiveLock *)self->_lock unlock];
  return isInternetReachable;
}

- (BOOL)_isWiFiUsable
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  isInterfaceUsable = [v3 isInterfaceUsable];

  [(NSRecursiveLock *)self->_lock unlock];
  return isInterfaceUsable;
}

- (BOOL)isWakeOnWiFiSupported
{
  mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
  isWoWSupported = [mEMORY[0x277CFB998] isWoWSupported];

  return isWoWSupported;
}

- (BOOL)areAllNetworkInterfacesDisabled
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(PCPersistentInterfaceManager *)self _isInternetReachableLocked])
  {
    goto LABEL_2;
  }

  v4 = SCPreferencesCreateWithAuthorization(0, @"com.apple.persistentconnection", @"com.apple.radios.plist", 0);
  if (v4)
  {
    v5 = v4;
    v6 = SCPreferencesGetValue(v4, @"AirplaneMode") == *MEMORY[0x277CBED28];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  mEMORY[0x277CFB998] = [MEMORY[0x277CFB998] sharedInstance];
  isWiFiEnabled = [mEMORY[0x277CFB998] isWiFiEnabled];

  if (!v6 && self->_WWANInterfaceName && self->_isWWANInterfaceActivationPermitted)
  {
LABEL_2:
    v3 = 0;
  }

  else
  {
    v3 = isWiFiEnabled ^ 1;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)cutWiFiManagerDeviceAttached:(id)attached
{
  v8 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  v5 = +[PCLog interfaceManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = attachedCopy;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "cutWiFiManagerDeviceAttached called: %{public}@", &v6, 0xCu);
  }

  [(PCPersistentInterfaceManager *)self _adjustWakeOnWiFi];
}

- (BOOL)_wantsWWANInterfaceAssertion
{
  if (self->_isWWANInterfaceActivationPermitted)
  {
    if (self->_isInCall)
    {
      v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
      v3 = [v2 isInterfaceUsable] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateWWANInterfaceAssertions
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_updateWWANInterfaceAssertionsLocked
{
  _wantsWWANInterfaceAssertion = [(PCPersistentInterfaceManager *)self _wantsWWANInterfaceAssertion];
  interfaceAssertion = self->_interfaceAssertion;
  if (_wantsWWANInterfaceAssertion)
  {
    if (!interfaceAssertion && self->_ctClient)
    {
      v5 = +[PCLog interfaceManager];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "Interface manager: asserting packet context active", buf, 2u);
      }

      v6 = [(CoreTelephonyClient *)self->_ctClient setPacketContextActiveByServiceType:self->_currentDataSimContext connectionType:0 active:1];
      objc_initWeak(buf, self);
      ctClient = self->_ctClient;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68__PCPersistentInterfaceManager__updateWWANInterfaceAssertionsLocked__block_invoke;
      v9[3] = &unk_279A19D98;
      objc_copyWeak(&v10, buf);
      self->_interfaceAssertion = [(CoreTelephonyClient *)ctClient createAssertionForConnectionType:0 allocator:0 error:0 onReAssertError:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }

  else if (interfaceAssertion)
  {
    v8 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: clearing packet context assertion", buf, 2u);
    }

    CFRelease(self->_interfaceAssertion);
    self->_interfaceAssertion = 0;
  }
}

void __68__PCPersistentInterfaceManager__updateWWANInterfaceAssertionsLocked__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[7])
  {
    v6 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "Interface manager: reAssert failed, dropping assertion {reAssertError: %@}", &v8, 0xCu);
    }

    [v5[1] lock];
    v7 = v5[7];
    if (v7)
    {
      CFRelease(v7);
      v5[7] = 0;
    }

    [v5[1] unlock];
  }
}

- (void)enableWiFiAutoAssociation:(BOOL)association forDelegate:(id)delegate
{
  associationCopy = association;
  lock = self->_lock;
  delegateCopy = delegate;
  [(NSRecursiveLock *)lock lock];
  WiFiAutoAssociationDelegates = self->_WiFiAutoAssociationDelegates;
  if (associationCopy)
  {
    CFSetAddValue(WiFiAutoAssociationDelegates, delegateCopy);
  }

  else
  {
    CFSetRemoveValue(WiFiAutoAssociationDelegates, delegateCopy);
  }

  if (CFSetGetCount(self->_WiFiAutoAssociationDelegates) < 1)
  {
    if (!self->_WiFiAutoAssociationDisableTimer)
    {
      v9 = [[PCSimpleTimer alloc] initWithTimeInterval:@"interfacemanager-wifiautoassoc" serviceIdentifier:self target:sel__adjustWiFiAutoAssociation selector:0 userInfo:60.0];
      WiFiAutoAssociationDisableTimer = self->_WiFiAutoAssociationDisableTimer;
      self->_WiFiAutoAssociationDisableTimer = v9;

      [(PCSimpleTimer *)self->_WiFiAutoAssociationDisableTimer setDisableSystemWaking:1];
      v11 = self->_WiFiAutoAssociationDisableTimer;
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [(PCSimpleTimer *)v11 scheduleInRunLoop:mainRunLoop];

      Main = CFRunLoopGetMain();
      CFRunLoopWakeUp(Main);
    }
  }

  else
  {
    [(PCPersistentInterfaceManager *)self _adjustWiFiAutoAssociationLocked];
  }

  v14 = self->_lock;

  [(NSRecursiveLock *)v14 unlock];
}

- (void)_adjustWiFiAutoAssociation
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _adjustWiFiAutoAssociationLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)enableWakeOnWiFi:(BOOL)fi forDelegate:(id)delegate
{
  fiCopy = fi;
  lock = self->_lock;
  delegateCopy = delegate;
  [(NSRecursiveLock *)lock lock];
  wakeOnWiFiDelegates = self->_wakeOnWiFiDelegates;
  if (fiCopy)
  {
    CFSetAddValue(wakeOnWiFiDelegates, delegateCopy);
  }

  else
  {
    CFSetRemoveValue(wakeOnWiFiDelegates, delegateCopy);
  }

  if ([(PCPersistentInterfaceManager *)self _wantsWakeOnWiFiEnabled])
  {
    [(PCPersistentInterfaceManager *)self _adjustWakeOnWiFiLocked];
  }

  else if (!self->_wakeOnWiFiDisableTimer)
  {
    v9 = [[PCSimpleTimer alloc] initWithTimeInterval:@"interfacemanager-wow" serviceIdentifier:self target:sel__adjustWakeOnWiFi selector:0 userInfo:60.0];
    wakeOnWiFiDisableTimer = self->_wakeOnWiFiDisableTimer;
    self->_wakeOnWiFiDisableTimer = v9;

    [(PCSimpleTimer *)self->_wakeOnWiFiDisableTimer setDisableSystemWaking:1];
    v11 = self->_wakeOnWiFiDisableTimer;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(PCSimpleTimer *)v11 scheduleInRunLoop:mainRunLoop];

    Main = CFRunLoopGetMain();
    CFRunLoopWakeUp(Main);
  }

  v14 = self->_lock;

  [(NSRecursiveLock *)v14 unlock];
}

- (void)_adjustWakeOnWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _adjustWakeOnWiFiLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)allowBindingToWWAN
{
  doesWWANInterfaceExist = [(PCPersistentInterfaceManager *)self doesWWANInterfaceExist];
  if (doesWWANInterfaceExist)
  {
    doesWWANInterfaceExist = [(PCPersistentInterfaceManager *)self isWWANInterfaceActivationPermitted];
    if (doesWWANInterfaceExist)
    {
      if ([(PCPersistentInterfaceManager *)self isInCall])
      {
        LOBYTE(doesWWANInterfaceExist) = ![(PCPersistentInterfaceManager *)self _isWiFiUsable];
      }

      else
      {
        LOBYTE(doesWWANInterfaceExist) = 1;
      }
    }
  }

  return doesWWANInterfaceExist;
}

@end