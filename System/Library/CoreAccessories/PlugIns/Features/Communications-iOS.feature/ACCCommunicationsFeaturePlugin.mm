@interface ACCCommunicationsFeaturePlugin
- (BOOL)acceptCallWithAction:(int)action callUUID:(id)d;
- (BOOL)currentMuteStatus;
- (BOOL)endAllCalls;
- (BOOL)endCallWithAction:(int)action callUUID:(id)d;
- (BOOL)initiateCallToDestination:(id)destination withService:(int)service addressBookID:(id)d;
- (BOOL)initiateCallToVoicemail;
- (BOOL)initiateRedial;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isEndAndAcceptAvailable;
- (BOOL)isFaceTimeAudioEnabled;
- (BOOL)isFaceTimeVideoEnabled;
- (BOOL)isHoldAndAcceptAvailable;
- (BOOL)isHoldAvailable;
- (BOOL)isInitiateCallAllowed;
- (BOOL)isMergeAvailable;
- (BOOL)isSwapAvailable;
- (BOOL)mergeCalls;
- (BOOL)sendDTMF:(int)f forCallWithUUID:(id)d;
- (BOOL)swapCalls;
- (BOOL)updateHoldStatus:(BOOL)status forCallWithUUID:(id)d;
- (BOOL)updateMuteStatus:(BOOL)status;
- (NSString)description;
- (NSString)pluginName;
- (id)currentAudioAndVideoCalls;
- (id)currentCallStates;
- (id)currentCarrierName;
- (id)currentCommunicationsStatus;
- (id)currentFavoritesListWithLimit:(unint64_t)limit;
- (id)currentLocalizedCarrierName;
- (id)currentRecentsListWithCoalescing:(BOOL)coalescing limit:(unint64_t)limit;
- (int)currentRegistrationStatus;
- (int)currentSignalStrength;
- (unint64_t)currentCallCount;
- (void)addNotificationObservers;
- (void)airplaneModeChanged;
- (void)callStateDidChangeForCall:(id)call;
- (void)callStateDidChangeNotification:(id)notification;
- (void)commStatusDidChangeNotification:(id)notification;
- (void)currentSignalStrength;
- (void)favoritesListDidChangeNotification:(id)notification;
- (void)initPlugin;
- (void)initiateRedial;
- (void)recentsListDidChangeNotification:(id)notification;
- (void)removeNotificationObservers;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCCommunicationsFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCCommunicationsFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCCommunicationsFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  [(ACCCommunicationsFeaturePlugin *)self setIsRunning:0];
  pluginName = [(ACCCommunicationsFeaturePlugin *)self pluginName];
  v4 = dispatch_queue_create([pluginName UTF8String], 0);
  [(ACCCommunicationsFeaturePlugin *)self setQueue:v4];

  [(ACCCommunicationsFeaturePlugin *)self setCommCenter:0];
  [(ACCCommunicationsFeaturePlugin *)self setVmManager:0];
  [(ACCCommunicationsFeaturePlugin *)self setRadiosPreferences:0];

  [(ACCCommunicationsFeaturePlugin *)self setChManager:0];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Starting Communications feature plugin...", v8, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CE8108]) initWithCallStateDelegate:self andCommunicationsDelegate:self andCallControlsDelegate:self andListUpdatesDelegate:self];
  [(ACCCommunicationsFeaturePlugin *)self setCommCenter:v6];

  [(ACCCommunicationsFeaturePlugin *)self addNotificationObservers];
  v7 = objc_alloc_init(MEMORY[0x277CF7D40]);
  [(ACCCommunicationsFeaturePlugin *)self setChManager:v7];

  [(ACCCommunicationsFeaturePlugin *)self setIsRunning:1];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Communications feature plugin...", v7, 2u);
  }

  commCenter = [(ACCCommunicationsFeaturePlugin *)self commCenter];
  [commCenter setCallStateDelegate:0];

  [(ACCCommunicationsFeaturePlugin *)self setCommCenter:0];
  [(ACCCommunicationsFeaturePlugin *)self setVmManager:0];
  [(ACCCommunicationsFeaturePlugin *)self setRadiosPreferences:0];
  [(ACCCommunicationsFeaturePlugin *)self setChManager:0];
  [(ACCCommunicationsFeaturePlugin *)self setIsRunning:0];
}

- (void)addNotificationObservers
{
  queue = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACCCommunicationsFeaturePlugin_addNotificationObservers__block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __58__ACCCommunicationsFeaturePlugin_addNotificationObservers__block_invoke(uint64_t a1)
{
  executeOnMainThreadSync(&__block_literal_global_0);
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_INFO, "Adding notification observers...", v23, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6F038] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6EFD8] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6F000] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:sel_callStateDidChangeNotification_ name:*MEMORY[0x277D6F020] object:0];

  CTTelephonyCenterSetDefaultDispatchQueue();
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  v10 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  [*(a1 + 32) setRadiosPreferences:v10];

  v11 = *(a1 + 32);
  v12 = [v11 radiosPreferences];
  [v12 setDelegate:v11];

  CTTelephonyCenterAddObserver();
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D6EFC8] object:0];

  v14 = [MEMORY[0x277D07D70] sharedInstance];
  [v14 addListenerID:@"com.apple.accessories.features.Communications" forService:2];

  v15 = [MEMORY[0x277D07D70] sharedInstance];
  [v15 addListenerID:@"com.apple.accessories.features.Communications" forService:0];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D07D48] object:0];

  executeOnMainThreadSync(&__block_literal_global_47);
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D6F0A0] object:0];

  v18 = objc_alloc_init(MEMORY[0x277D79778]);
  [*(a1 + 32) setVmManager:v18];

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D79798] object:0];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 addObserver:*(a1 + 32) selector:sel_commStatusDidChangeNotification_ name:*MEMORY[0x277D6F0B0] object:0];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 addObserver:*(a1 + 32) selector:sel_recentsListDidChangeNotification_ name:*MEMORY[0x277CF7E18] object:0];

  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  [v22 addObserver:*(a1 + 32) selector:sel_favoritesListDidChangeNotification_ name:*MEMORY[0x277CBD1C8] object:0];
}

- (void)removeNotificationObservers
{
  queue = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ACCCommunicationsFeaturePlugin_removeNotificationObservers__block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __61__ACCCommunicationsFeaturePlugin_removeNotificationObservers__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_INFO, "Removing all notification observers...", v19, 2u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6EFF0] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F038] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6EFD8] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F000] object:0];

  CTTelephonyCenterSetDefaultDispatchQueue();
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  v9 = [*(a1 + 32) radiosPreferences];
  [v9 setDelegate:0];

  [*(a1 + 32) setRadiosPreferences:0];
  CTTelephonyCenterRemoveObserver();
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6EFC8] object:0];

  v11 = [MEMORY[0x277D07D70] sharedInstance];
  [v11 removeListenerID:@"com.apple.accessories.features.Communications" forService:2];

  v12 = [MEMORY[0x277D07D70] sharedInstance];
  [v12 removeListenerID:@"com.apple.accessories.features.Communications" forService:0];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 removeObserver:*(a1 + 32) name:*MEMORY[0x277D07D48] object:0];

  executeOnMainThreadSync(&__block_literal_global_56);
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F0A0] object:0];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 removeObserver:*(a1 + 32) name:*MEMORY[0x277D79798] object:0];

  [*(a1 + 32) setVmManager:0];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 removeObserver:*(a1 + 32) name:*MEMORY[0x277D6F0B0] object:0];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 removeObserver:*(a1 + 32) name:*MEMORY[0x277CF7E18] object:0];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 removeObserver:*(a1 + 32) name:*MEMORY[0x277CBD1C8] object:0];
}

- (void)callStateDidChangeForCall:(id)call
{
  v11 = *MEMORY[0x277D85DE8];
  callCopy = call;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_DEFAULT, "Sending call state update:\n%@", &v9, 0xCu);
  }

  commCenter = [(ACCCommunicationsFeaturePlugin *)self commCenter];
  [commCenter callStateDidChange:callCopy];
}

- (void)commStatusDidChangeNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = notificationCopy;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  queue = [(ACCCommunicationsFeaturePlugin *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ACCCommunicationsFeaturePlugin_commStatusDidChangeNotification___block_invoke;
  v10[3] = &unk_2789E2048;
  v11 = notificationCopy;
  selfCopy = self;
  v9 = notificationCopy;
  dispatch_async(queue, v10);
}

void __66__ACCCommunicationsFeaturePlugin_commStatusDidChangeNotification___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) name];
  v4 = [v3 isEqualToString:*MEMORY[0x277CC3A40]];

  if (v4 && ([*(a1 + 40) isAirplaneModeEnabled] & 1) == 0)
  {
    v55 = [*(a1 + 32) userInfo];
    v56 = [v55 objectForKeyedSubscript:*MEMORY[0x277CC3A30]];
    v57 = _convertCTGradedSignalToCommSignal(v56);

    v58 = [MEMORY[0x277CCABB0] numberWithInt:v57];
    [v2 setObject:v58 forKey:*MEMORY[0x277CE81E0]];
  }

  v5 = [*(a1 + 32) name];
  v6 = [v5 isEqualToString:*MEMORY[0x277CC3E48]];

  v7 = MEMORY[0x277CE8178];
  if (v6 && ([*(a1 + 40) isAirplaneModeEnabled] & 1) == 0)
  {
    v59 = [*(a1 + 32) userInfo];
    v60 = [v59 objectForKeyedSubscript:*MEMORY[0x277CC3E40]];
    v61 = _convertCTRegStatusToCommRegStatus(v60);

    v62 = [MEMORY[0x277CCABB0] numberWithInt:v61];
    [v2 setObject:v62 forKey:*MEMORY[0x277CE81D8]];

    v63 = [*(a1 + 40) currentLocalizedCarrierName];
    [v2 setObject:v63 forKey:*v7];
  }

  v8 = [*(a1 + 32) name];
  v9 = [v8 isEqualToString:@"AirplaneModeDidChangeNotification"];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 40) radiosPreferences];
    v12 = [v10 numberWithBool:{objc_msgSend(v11, "airplaneMode")}];
    [v2 setObject:v12 forKey:*MEMORY[0x277CE8170]];

    v13 = [*(a1 + 40) currentLocalizedCarrierName];
    [v2 setObject:v13 forKey:*v7];

    if ([*(a1 + 40) isAirplaneModeEnabled])
    {
      [v2 setObject:&unk_2848E59F0 forKey:*MEMORY[0x277CE81E0]];
      [v2 setObject:&unk_2848E5A08 forKey:*MEMORY[0x277CE81D8]];
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "currentSignalStrength")}];
      [v2 setObject:v14 forKey:*MEMORY[0x277CE81E0]];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "currentRegistrationStatus")}];
      [v2 setObject:v15 forKey:*MEMORY[0x277CE81D8]];
    }
  }

  v16 = [*(a1 + 32) name];
  v17 = [v16 isEqualToString:*MEMORY[0x277CC3D58]];

  if (v17)
  {
    v18 = [*(a1 + 40) currentLocalizedCarrierName];
    [v2 setObject:v18 forKey:*v7];
  }

  v19 = [*(a1 + 32) name];
  v20 = [v19 isEqualToString:*MEMORY[0x277D6EFC8]];

  if (v20)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D6EDE8], "supportsTelephonyCalls")}];
    [v2 setObject:v21 forKey:*MEMORY[0x277CE81F0]];
  }

  v22 = [*(a1 + 32) name];
  v23 = [v22 isEqualToString:*MEMORY[0x277D07D48]];

  if (v23)
  {
    v24 = [*(a1 + 32) userInfo];
    v25 = [v24 objectForKey:*MEMORY[0x277D07D40]];
    v26 = [v25 BOOLValue];

    v27 = [*(a1 + 32) userInfo];
    v28 = [v27 objectForKey:*MEMORY[0x277D07D50]];
    v29 = [v28 integerValue];

    if (v29 == 2)
    {
      v30 = MEMORY[0x277CE8198];
    }

    else
    {
      if (v29)
      {
        goto LABEL_21;
      }

      v30 = MEMORY[0x277CE81A0];
    }

    v31 = [MEMORY[0x277CCABB0] numberWithBool:v26];
    [v2 setObject:v31 forKey:*v30];
  }

LABEL_21:
  v32 = [*(a1 + 32) name];
  v33 = [v32 isEqualToString:*MEMORY[0x277D6F0A0]];

  if (v33)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "currentMuteStatus")}];
    [v2 setObject:v34 forKey:*MEMORY[0x277CE81C8]];
  }

  v35 = [*(a1 + 32) name];
  v36 = [v35 isEqualToString:@"CallCountDidChangeNotification"];

  if (v36)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "currentCallCount")}];
    [v2 setObject:v37 forKey:*MEMORY[0x277CE8188]];
  }

  v38 = [*(a1 + 32) name];
  v39 = [v38 isEqualToString:*MEMORY[0x277D79798]];

  if (v39)
  {
    v40 = MEMORY[0x277CCABB0];
    v41 = [*(a1 + 40) vmManager];
    v42 = [v40 numberWithUnsignedChar:{objc_msgSend(v41, "unreadCount")}];
    [v2 setObject:v42 forKey:*MEMORY[0x277CE81D0]];
  }

  v43 = [*(a1 + 32) name];
  v44 = [v43 isEqualToString:*MEMORY[0x277D6F0B0]];

  if (v44)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isInitiateCallAllowed")}];
    [v2 setObject:v45 forKey:*MEMORY[0x277CE81B8]];

    v46 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isEndAndAcceptAvailable")}];
    [v2 setObject:v46 forKey:*MEMORY[0x277CE8190]];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isHoldAndAcceptAvailable")}];
    [v2 setObject:v47 forKey:*MEMORY[0x277CE81A8]];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSwapAvailable")}];
    [v2 setObject:v48 forKey:*MEMORY[0x277CE81E8]];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMergeAvailable")}];
    [v2 setObject:v49 forKey:*MEMORY[0x277CE81C0]];

    v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isHoldAvailable")}];
    [v2 setObject:v50 forKey:*MEMORY[0x277CE81B0]];
  }

  if ([v2 count])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v51 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v51 = MEMORY[0x277D86220];
      v52 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v64 = 138412290;
      v65 = v2;
      _os_log_impl(&dword_2335B8000, v51, OS_LOG_TYPE_DEFAULT, "Sending communications update:\n%@", &v64, 0xCu);
    }

    v53 = [*(a1 + 40) commCenter];
    v54 = [v2 copy];
    [v53 commStatusDidChange:v54];
  }
}

- (void)recentsListDidChangeNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = notificationCopy;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  queue = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACCCommunicationsFeaturePlugin_recentsListDidChangeNotification___block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__ACCCommunicationsFeaturePlugin_recentsListDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) commCenter];
  [v1 recentsListDidChange];
}

- (void)favoritesListDidChangeNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = notificationCopy;
    _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  queue = [(ACCCommunicationsFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ACCCommunicationsFeaturePlugin_favoritesListDidChangeNotification___block_invoke;
  block[3] = &unk_2789E2020;
  block[4] = self;
  dispatch_async(queue, block);
}

void __69__ACCCommunicationsFeaturePlugin_favoritesListDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) commCenter];
  [v1 favoritesListDidChange];
}

- (id)currentCallStates
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  currentAudioAndVideoCalls = [(ACCCommunicationsFeaturePlugin *)self currentAudioAndVideoCalls];
  v5 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v9 = _callStateDictionaryForCall(*(*(&v12 + 1) + 8 * i));
        [array addObject:v9];
      }

      v6 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if (array && [array count])
  {
    v10 = [array copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)currentCommunicationsStatus
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[ACCCommunicationsFeaturePlugin currentSignalStrength](self, "currentSignalStrength")}];
  [dictionary setObject:v4 forKey:*MEMORY[0x277CE81E0]];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[ACCCommunicationsFeaturePlugin currentRegistrationStatus](self, "currentRegistrationStatus")}];
  [dictionary setObject:v5 forKey:*MEMORY[0x277CE81D8]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isAirplaneModeEnabled](self, "isAirplaneModeEnabled")}];
  [dictionary setObject:v6 forKey:*MEMORY[0x277CE8170]];

  currentLocalizedCarrierName = [(ACCCommunicationsFeaturePlugin *)self currentLocalizedCarrierName];
  [dictionary setObject:currentLocalizedCarrierName forKey:*MEMORY[0x277CE8178]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isCellularSupported](self, "isCellularSupported")}];
  [dictionary setObject:v8 forKey:*MEMORY[0x277CE8180]];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isTelephonyEnabled](self, "isTelephonyEnabled")}];
  [dictionary setObject:v9 forKey:*MEMORY[0x277CE81F0]];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isFaceTimeAudioEnabled](self, "isFaceTimeAudioEnabled")}];
  [dictionary setObject:v10 forKey:*MEMORY[0x277CE8198]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isFaceTimeVideoEnabled](self, "isFaceTimeVideoEnabled")}];
  [dictionary setObject:v11 forKey:*MEMORY[0x277CE81A0]];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin currentMuteStatus](self, "currentMuteStatus")}];
  [dictionary setObject:v12 forKey:*MEMORY[0x277CE81C8]];

  v13 = [MEMORY[0x277CCABB0] numberWithChar:{-[ACCCommunicationsFeaturePlugin currentCallCount](self, "currentCallCount")}];
  [dictionary setObject:v13 forKey:*MEMORY[0x277CE8188]];

  v14 = [MEMORY[0x277CCABB0] numberWithChar:{-[ACCCommunicationsFeaturePlugin currentUnreadVoicemailCount](self, "currentUnreadVoicemailCount")}];
  [dictionary setObject:v14 forKey:*MEMORY[0x277CE81D0]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isInitiateCallAllowed](self, "isInitiateCallAllowed")}];
  [dictionary setObject:v15 forKey:*MEMORY[0x277CE81B8]];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isEndAndAcceptAvailable](self, "isEndAndAcceptAvailable")}];
  [dictionary setObject:v16 forKey:*MEMORY[0x277CE8190]];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isHoldAndAcceptAvailable](self, "isHoldAndAcceptAvailable")}];
  [dictionary setObject:v17 forKey:*MEMORY[0x277CE81A8]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isSwapAvailable](self, "isSwapAvailable")}];
  [dictionary setObject:v18 forKey:*MEMORY[0x277CE81E8]];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isMergeAvailable](self, "isMergeAvailable")}];
  [dictionary setObject:v19 forKey:*MEMORY[0x277CE81C0]];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCCommunicationsFeaturePlugin isHoldAvailable](self, "isHoldAvailable")}];
  [dictionary setObject:v20 forKey:*MEMORY[0x277CE81B0]];

  if (dictionary && [dictionary count])
  {
    v21 = [dictionary copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)airplaneModeChanged
{
  v14 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    radiosPreferences = [(ACCCommunicationsFeaturePlugin *)self radiosPreferences];
    airplaneMode = [radiosPreferences airplaneMode];
    v8 = "NO";
    if (airplaneMode)
    {
      v8 = "YES";
    }

    v12 = 136315138;
    v13 = v8;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_INFO, "airplaneModeChanged: %s", &v12, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v9 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCCommunicationsFeaturePlugin airplaneModeChanged];
  }

  v11 = [MEMORY[0x277CCAB88] notificationWithName:@"AirplaneModeDidChangeNotification" object:0];
  [(ACCCommunicationsFeaturePlugin *)self commStatusDidChangeNotification:v11];
}

- (int)currentSignalStrength
{
  if ([(ACCCommunicationsFeaturePlugin *)self isAirplaneModeEnabled])
  {
    return 0;
  }

  [(ACCCommunicationsFeaturePlugin *)&v3 currentSignalStrength];
  return v3;
}

- (int)currentRegistrationStatus
{
  if ([(ACCCommunicationsFeaturePlugin *)self isAirplaneModeEnabled])
  {
    return 1;
  }

  Status = CTRegistrationGetStatus();

  return _convertCTRegStatusToCommRegStatus(Status);
}

- (BOOL)isAirplaneModeEnabled
{
  radiosPreferences = [(ACCCommunicationsFeaturePlugin *)self radiosPreferences];
  airplaneMode = [radiosPreferences airplaneMode];

  return airplaneMode;
}

- (id)currentCarrierName
{
  v2 = CTRegistrationCopyOperatorName();

  return v2;
}

- (id)currentLocalizedCarrierName
{
  v22 = *MEMORY[0x277D85DE8];
  currentCarrierName = [(ACCCommunicationsFeaturePlugin *)self currentCarrierName];
  currentRegistrationStatus = [(ACCCommunicationsFeaturePlugin *)self currentRegistrationStatus];
  isAirplaneModeEnabled = [(ACCCommunicationsFeaturePlugin *)self isAirplaneModeEnabled];
  if (isAirplaneModeEnabled)
  {
    v6 = @"Airplane Mode";
LABEL_8:
    v8 = acc_strings_bundle();
    v9 = [v8 localizedStringForKey:v6 value:&stru_2848E51E8 table:0];

    goto LABEL_9;
  }

  SIMStatus = CTSIMSupportGetSIMStatus();
  if (CFEqual(SIMStatus, *MEMORY[0x277CC3ED8]))
  {
    v6 = @"No SIM";
    goto LABEL_8;
  }

  if (currentRegistrationStatus <= 6 && ((1 << currentRegistrationStatus) & 0x4A) != 0)
  {
    v6 = @"No Service";
    goto LABEL_8;
  }

  if ((currentRegistrationStatus & 0xFFFFFFFD) == 0 || (v9 = currentCarrierName, [currentCarrierName isEqualToString:&stru_2848E51E8]))
  {
    v6 = @"Searching...";
    goto LABEL_8;
  }

LABEL_9:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = "NO";
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    if (isAirplaneModeEnabled)
    {
      v13 = "YES";
    }

    v17 = currentCarrierName;
    v18 = 1024;
    v19 = currentRegistrationStatus;
    v20 = 2080;
    v21 = v13;
    _os_log_debug_impl(&dword_2335B8000, v10, OS_LOG_TYPE_DEBUG, "Generated localized carrier name: '%@' (origCarrierName: %@, registrationStatus: %{coreacc:ACCCommunications_CommunicationsUpdate_RegistrationStatus_t}d, airplaneMode: %s)", &v14, 0x26u);
  }

  return v9;
}

- (BOOL)isFaceTimeAudioEnabled
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  v3 = [mEMORY[0x277D07D70] availabilityForListenerID:@"com.apple.accessories.features.Communications" forService:2] == 1;

  return v3;
}

- (BOOL)isFaceTimeVideoEnabled
{
  mEMORY[0x277D07D70] = [MEMORY[0x277D07D70] sharedInstance];
  v3 = [mEMORY[0x277D07D70] availabilityForListenerID:@"com.apple.accessories.features.Communications" forService:0] == 1;

  return v3;
}

- (BOOL)currentMuteStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ACCCommunicationsFeaturePlugin_currentMuteStatus__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __51__ACCCommunicationsFeaturePlugin_currentMuteStatus__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];

  *(*(*(a1 + 32) + 8) + 24) = [v3 isUplinkMuted];
}

- (id)currentAudioAndVideoCalls
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = MEMORY[0x277CBEBF8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ACCCommunicationsFeaturePlugin_currentAudioAndVideoCalls__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __59__ACCCommunicationsFeaturePlugin_currentAudioAndVideoCalls__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  v2 = [v5 currentAudioAndVideoCalls];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)currentCallCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ACCCommunicationsFeaturePlugin_currentCallCount__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__ACCCommunicationsFeaturePlugin_currentCallCount__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v8 + 1) + 8 * v7) isScreening] & 1) == 0)
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)isInitiateCallAllowed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ACCCommunicationsFeaturePlugin_isInitiateCallAllowed__block_invoke;
  v4[3] = &unk_2789E2098;
  v4[4] = self;
  v4[5] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __55__ACCCommunicationsFeaturePlugin_isInitiateCallAllowed__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentCallCount];
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v3 currentCallGroups];
  v5 = [v4 count];

  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v7 = [v6 isAddCallAllowed];

  if (!v2 || v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v5 >= 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v9 = [v8 audioOrVideoCallWithStatus:4];
    if (v9)
    {

LABEL_10:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_11;
    }

    v10 = [MEMORY[0x277D6EDF8] sharedInstance];
    v11 = [v10 audioOrVideoCallWithStatus:3];

    if (v11)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v12 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = "NO";
    if (v7)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v14 = "YES";
    }

    v16 = 134218498;
    v17 = v2;
    v18 = 2080;
    v19 = v15;
    v20 = 2080;
    v21 = v14;
    _os_log_debug_impl(&dword_2335B8000, v12, OS_LOG_TYPE_DEBUG, "currentCallCount: %lu, addCallAllowed: %s, initiateCallAllowed: %s", &v16, 0x20u);
  }
}

- (BOOL)isEndAndAcceptAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if ([(ACCCommunicationsFeaturePlugin *)self currentCallCount]>= 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__ACCCommunicationsFeaturePlugin_isEndAndAcceptAvailable__block_invoke;
    v4[3] = &unk_2789E2070;
    v4[4] = &v5;
    executeOnMainThreadSync(v4);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __57__ACCCommunicationsFeaturePlugin_isEndAndAcceptAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 audioOrVideoCallWithStatus:4];

  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)isHoldAndAcceptAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isEndAndAcceptAvailable = [(ACCCommunicationsFeaturePlugin *)self isEndAndAcceptAvailable];
  *(v7 + 24) = isEndAndAcceptAvailable;
  if (isEndAndAcceptAvailable)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__ACCCommunicationsFeaturePlugin_isHoldAndAcceptAvailable__block_invoke;
    v5[3] = &unk_2789E2070;
    v5[4] = &v6;
    executeOnMainThreadSync(v5);
    v3 = *(v7 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void __58__ACCCommunicationsFeaturePlugin_isHoldAndAcceptAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 isHoldAndAnswerAllowed];
}

- (BOOL)isSwapAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ACCCommunicationsFeaturePlugin_isSwapAvailable__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__ACCCommunicationsFeaturePlugin_isSwapAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v11 = [v2 frontmostAudioOrVideoCall];

  v3 = v11;
  if (v11)
  {
    v4 = [v11 model];
    *(*(*(a1 + 32) + 8) + 24) = [v4 supportsHolding];

    v3 = v11;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = [MEMORY[0x277D6EDF8] sharedInstance];
    v6 = [v5 currentCallGroups];
    *(*(*(a1 + 32) + 8) + 24) = [v6 count] > 1;

    v3 = v11;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = [MEMORY[0x277D6EDF8] sharedInstance];
      v8 = [v7 audioOrVideoCallWithStatus:4];
      if (v8)
      {

        v3 = v11;
      }

      else
      {
        v9 = [MEMORY[0x277D6EDF8] sharedInstance];
        v10 = [v9 audioOrVideoCallWithStatus:3];

        v3 = v11;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

LABEL_9:
}

- (BOOL)isMergeAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ACCCommunicationsFeaturePlugin_isMergeAvailable__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__ACCCommunicationsFeaturePlugin_isMergeAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v11 = [v2 frontmostAudioOrVideoCall];

  v3 = v11;
  if (v11)
  {
    v4 = [v11 model];
    *(*(*(a1 + 32) + 8) + 24) = [v4 supportsGrouping];

    v3 = v11;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = [MEMORY[0x277D6EDF8] sharedInstance];
    v6 = [v5 currentCallGroups];
    *(*(*(a1 + 32) + 8) + 24) = [v6 count] > 1;

    v3 = v11;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = [MEMORY[0x277D6EDF8] sharedInstance];
      v8 = [v7 audioOrVideoCallWithStatus:4];
      if (v8)
      {

        v3 = v11;
      }

      else
      {
        v9 = [MEMORY[0x277D6EDF8] sharedInstance];
        v10 = [v9 audioOrVideoCallWithStatus:3];

        v3 = v11;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

LABEL_9:
}

- (BOOL)isHoldAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ACCCommunicationsFeaturePlugin_isHoldAvailable__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__ACCCommunicationsFeaturePlugin_isHoldAvailable__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v12 = [v2 frontmostAudioOrVideoCall];

  v3 = v12;
  if (v12)
  {
    v4 = [v12 model];
    *(*(*(a1 + 32) + 8) + 24) = [v4 supportsHolding];

    v3 = v12;
  }

  v5 = *(a1 + 32);
  if (*(*(v5 + 8) + 24) == 1)
  {
    v6 = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [v6 audioOrVideoCallWithStatus:2];

    v5 = *(a1 + 32);
    if (v7)
    {
      *(*(v5 + 8) + 24) = 0;
      v5 = *(a1 + 32);
    }

    v3 = v12;
  }

  if (*(*(v5 + 8) + 24) == 1)
  {
    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v9 = [v8 audioOrVideoCallWithStatus:4];
    if (v9)
    {

      v3 = v12;
    }

    else
    {
      v10 = [MEMORY[0x277D6EDF8] sharedInstance];
      v11 = [v10 audioOrVideoCallWithStatus:3];

      v3 = v12;
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

LABEL_12:
}

- (BOOL)initiateCallToDestination:(id)destination withService:(int)service addressBookID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dCopy = d;
  currentCallCount = [(ACCCommunicationsFeaturePlugin *)self currentCallCount];
  if ([(ACCCommunicationsFeaturePlugin *)self isInitiateCallAllowed])
  {
    v11 = objc_alloc_init(MEMORY[0x277D6EE28]);
    switch(service)
    {
      case 3:
        if (!currentCallCount)
        {
          v19 = objc_alloc(MEMORY[0x277D6EED0]);
          faceTimeProvider = [v11 faceTimeProvider];
          v14 = [v19 initWithProvider:faceTimeProvider];

          [v14 setVideo:1];
          if (dCopy && [dCopy length])
          {
            [v14 setContactIdentifier:dCopy];
          }

          if (gLogObjects && gNumLogObjects >= 1)
          {
            v16 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v16 = MEMORY[0x277D86220];
            v26 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          v31 = 138477827;
          v32 = destinationCopy;
          v22 = "Initiating FaceTime Video call to: %{private}@...";
          goto LABEL_49;
        }

        v14 = logObjectForModule();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_38:
          v24 = 0;
LABEL_51:

          goto LABEL_52;
        }

        LOWORD(v31) = 0;
        v30 = "Cannot add FaceTime Video call if there is already an active call - ignoring request";
        break;
      case 2:
        if (!currentCallCount)
        {
          v17 = objc_alloc(MEMORY[0x277D6EED0]);
          faceTimeProvider2 = [v11 faceTimeProvider];
          v14 = [v17 initWithProvider:faceTimeProvider2];

          [v14 setVideo:0];
          if (dCopy && [dCopy length])
          {
            [v14 setContactIdentifier:dCopy];
          }

          if (gLogObjects && gNumLogObjects >= 1)
          {
            v16 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v16 = MEMORY[0x277D86220];
            v25 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          v31 = 138477827;
          v32 = destinationCopy;
          v22 = "Initiating FaceTime Audio call to: %{private}@...";
          goto LABEL_49;
        }

        v14 = logObjectForModule();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        LOWORD(v31) = 0;
        v30 = "Cannot add FaceTime Audio call if there is already an active call - ignoring request";
        break;
      case 1:
        v12 = objc_alloc(MEMORY[0x277D6EED0]);
        telephonyProvider = [v11 telephonyProvider];
        v14 = [v12 initWithProvider:telephonyProvider];

        if (dCopy && [dCopy length])
        {
          [v14 setContactIdentifier:dCopy];
        }

        v15 = [MEMORY[0x277D6EEE8] handleWithDestinationID:destinationCopy];
        [v14 setHandle:v15];

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v16 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v16 = MEMORY[0x277D86220];
          v21 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v31 = 138477827;
        v32 = destinationCopy;
        v22 = "Initiating telephony call to: %{private}@...";
LABEL_49:
        _os_log_impl(&dword_2335B8000, v16, OS_LOG_TYPE_DEFAULT, v22, &v31, 0xCu);
LABEL_50:

        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v28 = [v14 URL];
        v24 = [defaultWorkspace openURL:v28 withOptions:0];

        goto LABEL_51;
      default:
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v14 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v14 = MEMORY[0x277D86220];
          v23 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin initiateCallToDestination:withService:addressBookID:];
        }

        goto LABEL_38;
    }

    _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_DEFAULT, v30, &v31, 2u);
    goto LABEL_38;
  }

  v11 = logObjectForModule();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_2335B8000, v11, OS_LOG_TYPE_DEFAULT, "Cannot add call - ignoring request", &v31, 2u);
  }

  v24 = 0;
LABEL_52:

  return v24;
}

- (BOOL)initiateCallToVoicemail
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Initiating call to voicemail...", v14, 2u);
  }

  if (![(ACCCommunicationsFeaturePlugin *)self isInitiateCallAllowed])
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v7 = objc_alloc(MEMORY[0x277D6EED0]);
  voicemailProvider = [v6 voicemailProvider];
  v9 = [v7 initWithProvider:voicemailProvider];

  [v9 setDialType:2];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11 = [v9 URL];
  v12 = [defaultWorkspace openURL:v11 withOptions:0];

  return v12;
}

- (BOOL)initiateRedial
{
  v39 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335B8000, v5, OS_LOG_TYPE_DEFAULT, "Initiating redial...", buf, 2u);
  }

  chManager = [(ACCCommunicationsFeaturePlugin *)self chManager];
  v7 = [MEMORY[0x277CF7D48] predicateForCallsWithStatusOriginated:1];
  *buf = v7;
  v8 = [MEMORY[0x277CF7D48] predicateForCallsWithAnyMediaTypes:&unk_2848E5A68];
  v37 = v8;
  v9 = MEMORY[0x277CF7D48];
  v10 = *MEMORY[0x277CF7E00];
  v35[0] = *MEMORY[0x277CF7E08];
  v35[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v12 = [v9 predicateForCallsWithAnyServiceProviders:v11];
  v38 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

  v14 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];

  v15 = [chManager callsWithPredicate:v14 limit:1 offset:0 batchSize:0];

  if (![v15 count])
  {
    v17 = logObjectForModule();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = "No recent calls - ignoring request!";
LABEL_28:
      _os_log_impl(&dword_2335B8000, v17, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
    }

LABEL_30:
    v32 = 0;
    goto LABEL_23;
  }

  v16 = [v15 objectAtIndex:0];
  if (!v16)
  {
    v17 = logObjectForModule();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = "Could not find last outgoing call - ignoring request!";
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v17 = v16;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(ACCCommunicationsFeaturePlugin *)v17 initiateRedial:v18];
  }

  remoteParticipantHandles = [v17 remoteParticipantHandles];
  v27 = [remoteParticipantHandles count];

  if (v27 != 1)
  {
    [ACCCommunicationsFeaturePlugin initiateRedial];
    goto LABEL_30;
  }

  v28 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v29 = [v28 dialRequestForRecentCall:v17];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v31 = [v29 URL];
  v32 = [defaultWorkspace openURL:v31 withOptions:0];

LABEL_23:
  return v32;
}

- (BOOL)acceptCallWithAction:(int)action callUUID:(id)d
{
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  currentCallCount = [(ACCCommunicationsFeaturePlugin *)self currentCallCount];
  isEndAndAcceptAvailable = [(ACCCommunicationsFeaturePlugin *)self isEndAndAcceptAvailable];
  isHoldAndAcceptAvailable = [(ACCCommunicationsFeaturePlugin *)self isHoldAndAcceptAvailable];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke;
  v21[3] = &unk_2789E2098;
  v10 = dCopy;
  v22 = v10;
  v23 = &v24;
  executeOnMainThreadSync(v21);
  if (v25[5])
  {
    v11 = currentCallCount < 2;
    if (currentCallCount >= 2)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    if (actionCopy)
    {
      v11 = 1;
    }

    if (!v11 && !isHoldAndAcceptAvailable)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2335B8000, v13, OS_LOG_TYPE_INFO, "Cannot hold and accept - ending and accepting instead", buf, 2u);
      }

      actionCopy = 1;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90;
    v17[3] = &unk_2789E20C0;
    v18 = actionCopy;
    v17[4] = &v24;
    v17[5] = &v30;
    v17[6] = currentCallCount;
    v19 = isEndAndAcceptAvailable;
    executeOnMainThreadSync(v17);
  }

  else
  {
    [ACCCommunicationsFeaturePlugin acceptCallWithAction:callUUID:];
  }

  v15 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D6EDF8] sharedInstance];
    v3 = [v2 callWithCallUUID:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_22;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v6 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v6 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2();
    }
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_2335B8000, v6, OS_LOG_TYPE_INFO, "No call UUID specified - falling back to incoming call", v18, 2u);
    }
  }

LABEL_22:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = [MEMORY[0x277D6EDF8] sharedInstance];
    v11 = [v10 incomingCall];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v14 = [MEMORY[0x277D6EDF8] sharedInstance];
      v15 = [v14 incomingVideoCall];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != 1)
  {
    if (!v2)
    {
      v3 = *(a1 + 48);
      if (v3 == 2)
      {
        if (gLogObjects)
        {
          v4 = gNumLogObjects < 1;
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v15 = MEMORY[0x277D86220];
          v5 = MEMORY[0x277D86220];
        }

        else
        {
          v15 = *gLogObjects;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2335B8000, v15, OS_LOG_TYPE_DEFAULT, "Holding active and accepting incoming call...", buf, 2u);
        }

        v16 = [MEMORY[0x277D6EDF8] sharedInstance];
        [v16 holdActiveAndAnswerCall:*(*(*(a1 + 32) + 8) + 40)];
      }

      else if (v3 < 3)
      {
        if (v3 == 1 && ([MEMORY[0x277D6EDF8] sharedInstance], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "audioOrVideoCallWithStatus:", 2), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v19 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v19 = MEMORY[0x277D86220];
            v31 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 0;
            _os_log_impl(&dword_2335B8000, v19, OS_LOG_TYPE_DEFAULT, "Unholding call...", v38, 2u);
          }

          v16 = [MEMORY[0x277D6EDF8] sharedInstance];
          v32 = [MEMORY[0x277D6EDF8] sharedInstance];
          v33 = [v32 audioOrVideoCallWithStatus:2];
          [v16 unholdCall:v33];
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v23 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCCommunicationsFeaturePlugin startPlugin];
            }

            v23 = MEMORY[0x277D86220];
            v28 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v37 = 0;
            _os_log_impl(&dword_2335B8000, v23, OS_LOG_TYPE_DEFAULT, "Accepting incoming call...", v37, 2u);
          }

          v16 = [MEMORY[0x277D6EDF8] sharedInstance];
          [v16 answerCall:*(*(*(a1 + 32) + 8) + 40)];
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v11 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCCommunicationsFeaturePlugin startPlugin];
          }

          v11 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 0;
          _os_log_impl(&dword_2335B8000, v11, OS_LOG_TYPE_DEFAULT, "Ending held, holding active, and answering incoming call...", v39, 2u);
        }

        v16 = [MEMORY[0x277D6EDF8] sharedInstance];
        [v16 endHeldAndAnswerCall:*(*(*(a1 + 32) + 8) + 40)];
      }

      goto LABEL_91;
    }

    if (gLogObjects)
    {
      v9 = gNumLogObjects < 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *gLogObjects;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_11();
    }

LABEL_44:

    return;
  }

  if (*(a1 + 60) != 1)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v22 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v22 = *gLogObjects;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_2335B8000, v22, OS_LOG_TYPE_DEFAULT, "Ending all calls and hoping we get called back (probably CDMA)...", v34, 2u);
    }

    v16 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v16 disconnectAllCalls];
    goto LABEL_91;
  }

  v6 = *(a1 + 48);
  if (v6 == 2)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v25 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v25 = *gLogObjects;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    v36 = 0;
    v26 = "Ending active and accepting incoming call...";
    v27 = &v36;
    goto LABEL_89;
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects <= 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (v6 < 3)
  {
    if (v21)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_3();
    }

    goto LABEL_44;
  }

  if (v21)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v25 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    v26 = "Leaving held, ending active, and answering incoming call...";
    v27 = v35;
LABEL_89:
    _os_log_impl(&dword_2335B8000, v25, OS_LOG_TYPE_DEFAULT, v26, v27, 2u);
  }

LABEL_90:

  v16 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v16 endActiveAndAnswerCall:*(*(*(a1 + 32) + 8) + 40)];
LABEL_91:

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (BOOL)endCallWithAction:(int)action callUUID:(id)d
{
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke;
  v11[3] = &unk_2789E2098;
  v6 = dCopy;
  v12 = v6;
  v13 = &v14;
  executeOnMainThreadSync(v11);
  if (v15[5])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91;
    v9[3] = &unk_2789E20E8;
    actionCopy = action;
    v9[4] = &v14;
    v9[5] = &v20;
    executeOnMainThreadSync(v9);
  }

  else
  {
    [ACCCommunicationsFeaturePlugin endCallWithAction:callUUID:];
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v8)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2();
      }

      goto LABEL_34;
    }

    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = *v2;
      v22 = 138412290;
      v23 = v17;
      v13 = "Couldn't find call with specified UUID: %@ - falling back to frontmost call";
      v14 = v9;
      v15 = 12;
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v13 = "No call UUID specified - falling back to frontmost call";
      v14 = v9;
      v15 = 2;
LABEL_33:
      _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_INFO, v13, &v22, v15);
    }
  }

LABEL_34:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = [MEMORY[0x277D6EDF8] sharedInstance];
    v19 = [v18 frontmostAudioOrVideoCall];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (gLogObjects)
    {
      v1 = gNumLogObjects < 1;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v8 = MEMORY[0x277D86220];
      v2 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91_cold_2();
    }
  }

  else
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) status];
    if (gLogObjects)
    {
      v5 = gNumLogObjects <= 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    if (v4 == 4)
    {
      if (v6)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2335B8000, v7, OS_LOG_TYPE_DEFAULT, "Declining incoming call...", buf, 2u);
      }

      v11 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v11 disconnectCall:*(*(*(a1 + 32) + 8) + 40) withReason:2];
    }

    else
    {
      if (v6)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_2335B8000, v9, OS_LOG_TYPE_DEFAULT, "Ending call and activating held (if any)...", v16, 2u);
      }

      v13 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v13 disconnectCall:*(*(*(a1 + 32) + 8) + 40)];

      v11 = [MEMORY[0x277D6EDF8] sharedInstance];
      v14 = [MEMORY[0x277D6EDF8] sharedInstance];
      v15 = [v14 audioOrVideoCallWithStatus:2];
      [v11 unholdCall:v15];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)endAllCalls
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ACCCommunicationsFeaturePlugin_endAllCalls__block_invoke;
  v4[3] = &unk_2789E2070;
  v4[4] = &v5;
  executeOnMainThreadSync(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__ACCCommunicationsFeaturePlugin_endAllCalls__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v2 disconnectAllCalls];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (BOOL)swapCalls
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(ACCCommunicationsFeaturePlugin *)self isSwapAvailable])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__ACCCommunicationsFeaturePlugin_swapCalls__block_invoke;
    v8[3] = &unk_2789E2070;
    v8[4] = &v9;
    executeOnMainThreadSync(v8);
  }

  else
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *gLogObjects;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Swap calls isn't available - ignoring request", v7, 2u);
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __43__ACCCommunicationsFeaturePlugin_swapCalls__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Swapping calls...", v6, 2u);
  }

  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v5 swapCalls];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (BOOL)mergeCalls
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(ACCCommunicationsFeaturePlugin *)self isMergeAvailable])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__ACCCommunicationsFeaturePlugin_mergeCalls__block_invoke;
    v8[3] = &unk_2789E2070;
    v8[4] = &v9;
    executeOnMainThreadSync(v8);
  }

  else
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *gLogObjects;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Merge calls isn't available - ignoring request", v7, 2u);
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __44__ACCCommunicationsFeaturePlugin_mergeCalls__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2335B8000, v4, OS_LOG_TYPE_DEFAULT, "Merging calls...", v10, 2u);
  }

  v5 = [MEMORY[0x277D6EDF8] sharedInstance];
  v6 = [v5 callWithStatus:2];

  v7 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8 = [v7 callWithStatus:1];

  v9 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v9 groupCall:v6 withOtherCall:v8];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (BOOL)updateHoldStatus:(BOOL)status forCallWithUUID:(id)d
{
  statusCopy = status;
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "NO";
    if (statusCopy)
    {
      v10 = "YES";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2335B8000, v9, OS_LOG_TYPE_INFO, "Setting hold status to %s...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke;
  v17[3] = &unk_2789E2098;
  v11 = dCopy;
  v18 = v11;
  p_buf = &buf;
  executeOnMainThreadSync(v17);
  if (*(*(&buf + 1) + 40))
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    isHoldAvailable = [(ACCCommunicationsFeaturePlugin *)self isHoldAvailable];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke_92;
    v13[3] = &unk_2789E2110;
    v13[5] = &buf;
    v13[6] = v15;
    v13[4] = self;
    v14 = statusCopy;
    executeOnMainThreadSync(v13);
    _Block_object_dispose(v15, 8);
  }

  else
  {
    [ACCCommunicationsFeaturePlugin updateHoldStatus:forCallWithUUID:];
  }

  _Block_object_dispose(&buf, 8);
  return 0;
}

void __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v8)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2();
      }

      goto LABEL_34;
    }

    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = *v2;
      v22 = 138412290;
      v23 = v17;
      v13 = "Could not find call with specified UUID: %@ - falling back to frontmost call";
      v14 = v9;
      v15 = 12;
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v13 = "No call UUID specified - falling back to frontmost call";
      v14 = v9;
      v15 = 2;
LABEL_33:
      _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_INFO, v13, &v22, v15);
    }
  }

LABEL_34:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = [MEMORY[0x277D6EDF8] sharedInstance];
    v19 = [v18 frontmostAudioOrVideoCall];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void __67__ACCCommunicationsFeaturePlugin_updateHoldStatus_forCallWithUUID___block_invoke_92(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) status] != 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if ([*(a1 + 32) isHoldAvailable])
  {
    if (*(a1 + 56))
    {
      v4 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v4 holdCall:*(*(*(a1 + 40) + 8) + 40)];
LABEL_11:

      return;
    }

LABEL_10:
    v4 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v4 unholdCall:*(*(*(a1 + 40) + 8) + 40)];
    goto LABEL_11;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_10;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v2 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335B8000, v2, OS_LOG_TYPE_DEFAULT, "Hold isn't available - ignoring message", buf, 2u);
  }
}

- (BOOL)updateMuteStatus:(BOOL)status
{
  statusCopy = status;
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (statusCopy)
    {
      v7 = "YES";
    }

    *buf = 136315138;
    v17 = v7;
    _os_log_impl(&dword_2335B8000, v6, OS_LOG_TYPE_DEFAULT, "Setting mute status to %s...", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ACCCommunicationsFeaturePlugin_updateMuteStatus___block_invoke;
  v10[3] = &unk_2789E2138;
  v11 = statusCopy;
  v10[4] = &v12;
  executeOnMainThreadSync(v10);
  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __51__ACCCommunicationsFeaturePlugin_updateMuteStatus___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v2 frontmostAudioOrVideoCall];

  v3 = v4;
  if (v4)
  {
    [v4 setUplinkMuted:*(a1 + 40)];
    v3 = v4;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)sendDTMF:(int)f forCallWithUUID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (f >= 0xC)
  {
    [ACCCommunicationsFeaturePlugin sendDTMF:f forCallWithUUID:?];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke;
    v10[3] = &unk_2789E2098;
    v11 = dCopy;
    v12 = &v13;
    executeOnMainThreadSync(v10);
    if (v14[5])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke_93;
      v8[3] = &unk_2789E2160;
      v8[4] = &v13;
      fCopy = f;
      executeOnMainThreadSync(v8);
    }

    else
    {
      [ACCCommunicationsFeaturePlugin updateHoldStatus:forCallWithUUID:];
    }

    _Block_object_dispose(&v13, 8);
  }

  return 0;
}

void __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    v4 = [v3 callWithCallUUID:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      if (v8)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCCommunicationsFeaturePlugin startPlugin];
        }

        v9 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2();
      }

      goto LABEL_34;
    }

    if (v8)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = *v2;
      v22 = 138412290;
      v23 = v17;
      v13 = "Could not find call with specified UUID: %@ - falling back to frontmost call";
      v14 = v9;
      v15 = 12;
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v13 = "No call UUID specified - falling back to frontmost call";
      v14 = v9;
      v15 = 2;
LABEL_33:
      _os_log_impl(&dword_2335B8000, v14, OS_LOG_TYPE_INFO, v13, &v22, v15);
    }
  }

LABEL_34:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = [MEMORY[0x277D6EDF8] sharedInstance];
    v19 = [v18 frontmostCall];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void __59__ACCCommunicationsFeaturePlugin_sendDTMF_forCallWithUUID___block_invoke_93(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(*(*(a1 + 32) + 8) + 40) shouldPlayDTMFTone])
  {
    v2 = *(a1 + 40);
    if (v2 > 0xB)
    {
      v3 = 0;
    }

    else
    {
      v3 = byte_2335C6798[v2];
    }

    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(*(*(a1 + 32) + 8) + 40) callUUID];
      v11[0] = 67109378;
      v11[1] = v3;
      v12 = 2112;
      v13 = v10;
      _os_log_impl(&dword_2335B8000, v9, OS_LOG_TYPE_DEFAULT, "Playing DTMF Tone: 0x%02X, callUUID: %@", v11, 0x12u);
    }

    [*(*(*(a1 + 32) + 8) + 40) playDTMFToneForKey:v3];
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCCommunicationsFeaturePlugin startPlugin];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_2335B8000, v8, OS_LOG_TYPE_DEFAULT, "Playing DTMF tone isn't available - ignoring message", v11, 2u);
    }
  }
}

- (id)currentRecentsListWithCoalescing:(BOOL)coalescing limit:(unint64_t)limit
{
  coalescingCopy = coalescing;
  v86 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (coalescingCopy)
  {
    v7 = *MEMORY[0x277CF7DE8];
    chManager = [(ACCCommunicationsFeaturePlugin *)self chManager];
    [chManager setCoalescingStrategy:v7];

    chManager2 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    v10 = _recentCallsPredicate();
    [chManager2 coalescedCallsWithPredicate:v10 limit:limit offset:0 batchSize:0];
  }

  else
  {
    chManager3 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    [chManager3 setCoalescingStrategy:0];

    chManager2 = [(ACCCommunicationsFeaturePlugin *)self chManager];
    v10 = _recentCallsPredicate();
    [chManager2 callsWithPredicate:v10 limit:limit offset:0 batchSize:0];
  }
  v12 = ;

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCCommunicationsFeaturePlugin startPlugin];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = [v12 count];
    v16 = "NO";
    *buf = 134218498;
    v81 = v15;
    if (coalescingCopy)
    {
      v16 = "YES";
    }

    v82 = 2080;
    v83 = v16;
    v84 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_2335B8000, v13, OS_LOG_TYPE_INFO, "recentCalls.count: %lu (coalesce: %s, limit: %lu)", buf, 0x20u);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v12;
  v68 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v68)
  {
    v66 = *v74;
    v65 = *MEMORY[0x277CE8248];
    v64 = *MEMORY[0x277CE8228];
    v63 = *MEMORY[0x277CE8238];
    v62 = *MEMORY[0x277CE8220];
    v61 = *MEMORY[0x277CE8250];
    v60 = *MEMORY[0x277CF7DC8];
    v59 = *MEMORY[0x277CF7DD8];
    v58 = *MEMORY[0x277CF7DD0];
    v51 = *MEMORY[0x277CF7DB8];
    v50 = *MEMORY[0x277CF7DC0];
    v57 = *MEMORY[0x277CE8258];
    v56 = *MEMORY[0x277CF7DA0];
    v55 = *MEMORY[0x277CE8260];
    HIDWORD(v49) = *MEMORY[0x277CF7D88] | *MEMORY[0x277CF7D78];
    LODWORD(v49) = *MEMORY[0x277CF7D90] | *MEMORY[0x277CF7D80];
    v54 = *MEMORY[0x277CE8230];
    v53 = *MEMORY[0x277CE8240];
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v74 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v73 + 1) + 8 * i);
        v77[0] = v65;
        callerId = [v18 callerId];
        v72 = callerId;
        if (callerId)
        {
          v20 = callerId;
        }

        else
        {
          v20 = &stru_2848E51E8;
        }

        v78[0] = v20;
        v77[1] = v64;
        callerNameForDisplay = [v18 callerNameForDisplay];
        v21 = removeBidirectionalUnicodeCharacters(callerNameForDisplay);
        v70 = v21;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = &stru_2848E51E8;
        }

        v78[1] = v22;
        v77[2] = v63;
        callerIdSubStringForDisplay = [v18 callerIdSubStringForDisplay];
        v69 = callerIdSubStringForDisplay;
        if (callerIdSubStringForDisplay)
        {
          v24 = callerIdSubStringForDisplay;
        }

        else
        {
          v24 = &stru_2848E51E8;
        }

        v78[2] = v24;
        v77[3] = v62;
        contactIdentifier = [v18 contactIdentifier];
        v26 = contactIdentifier;
        if (contactIdentifier)
        {
          v27 = contactIdentifier;
        }

        else
        {
          v27 = &stru_2848E51E8;
        }

        v78[3] = v27;
        v77[4] = v61;
        v28 = MEMORY[0x277CCABB0];
        callType = [v18 callType];
        if ((v60 & callType) == 0 && (v59 & callType) == 0 && (v58 & callType) == 0)
        {
          if (v50 == callType)
          {
            v33 = 3;
          }

          else
          {
            v33 = 0;
          }

          if (v51 == callType)
          {
            v32 = 2;
          }

          else
          {
            v32 = v33;
          }
        }

        else
        {
          v32 = 1;
        }

        v34 = [v28 numberWithUnsignedInt:v32];
        v78[4] = v34;
        v77[5] = v57;
        v35 = MEMORY[0x277CCABB0];
        callStatus = [v18 callStatus];
        if ((v56 & callStatus) != 0)
        {
          v37 = 3;
        }

        else if ((HIDWORD(v49) & callStatus) != 0)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2 * ((v49 & callStatus) != 0);
        }

        v38 = [v35 numberWithUnsignedInt:v37];
        v78[5] = v38;
        v77[6] = v55;
        v39 = MEMORY[0x277CCABB0];
        date = [v18 date];
        [date timeIntervalSince1970];
        v42 = [v39 numberWithLongLong:v41];
        v78[6] = v42;
        v77[7] = v54;
        v43 = MEMORY[0x277CCABB0];
        [v18 duration];
        v45 = [v43 numberWithLong:v44];
        v78[7] = v45;
        v77[8] = v53;
        v46 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v18, "numberOfOccurrences")}];
        v78[8] = v46;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:9];

        [array addObject:v47];
      }

      v68 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v68);
  }

  return array;
}

- (id)currentFavoritesListWithLimit:(unint64_t)limit
{
  v82 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  mEMORY[0x277CBDAF8] = [MEMORY[0x277CBDAF8] sharedInstance];
  entries = [mEMORY[0x277CBDAF8] entries];

  obj = entries;
  v5 = [entries countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v76;
    v8 = *MEMORY[0x277CBCF70];
    v64 = *MEMORY[0x277CBCF80];
    v62 = *MEMORY[0x277CBCF58];
    v63 = *MEMORY[0x277CBCF68];
    v60 = *MEMORY[0x277CBD098];
    v61 = *MEMORY[0x277CE8210];
    v55 = *MEMORY[0x277CBCFC0];
    v59 = *MEMORY[0x277CE8200];
    v58 = *MEMORY[0x277CE8208];
    v57 = *MEMORY[0x277CE81F8];
    v56 = *MEMORY[0x277CE8218];
    v65 = *MEMORY[0x277CBCF70];
    v66 = *v76;
    do
    {
      v9 = 0;
      v68 = v6;
      do
      {
        if (*v76 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v75 + 1) + 8 * v9);
        actionType = [v10 actionType];
        v12 = [actionType isEqual:v8];

        if (v12)
        {
          bundleIdentifier = [v10 bundleIdentifier];
          v14 = [bundleIdentifier isEqual:v63];

          if (v14)
          {
            v15 = 1;
            goto LABEL_13;
          }

          v15 = 2;
        }

        else
        {
          actionType2 = [v10 actionType];
          v17 = [actionType2 isEqual:v64];

          if (!v17)
          {
            goto LABEL_34;
          }

          v15 = 3;
        }

        bundleIdentifier2 = [v10 bundleIdentifier];
        v19 = [bundleIdentifier2 isEqual:v62];

        if (!v19)
        {
          goto LABEL_34;
        }

LABEL_13:

        v79[0] = v61;
        v20 = v10;
        contactProperty = [v20 contactProperty];
        v22 = [contactProperty key];
        v23 = [v22 isEqual:v60];

        contactProperty2 = [v20 contactProperty];
        v25 = contactProperty2;
        if (v23)
        {
          value = [contactProperty2 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_20;
          }

          contactProperty3 = [v20 contactProperty];
          value2 = [contactProperty3 value];

          stringValue = [value2 stringValue];
        }

        else
        {
          v31 = [contactProperty2 key];
          v32 = [v31 isEqual:v55];

          if (!v32 || ([v20 contactProperty], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "value"), v34 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v35 = objc_opt_isKindOfClass(), v34, v33, (v35 & 1) == 0))
          {
LABEL_20:
            v36 = 0;
            goto LABEL_21;
          }

          value2 = [v20 contactProperty];
          stringValue = [value2 value];
        }

        v36 = stringValue;

LABEL_21:
        v70 = v36;

        if (v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = &stru_2848E51E8;
        }

        v80[0] = v37;
        v79[1] = v59;
        name = [v20 name];
        v38 = removeBidirectionalUnicodeCharacters(name);
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = &stru_2848E51E8;
        }

        v80[1] = v40;
        v79[2] = v58;
        v41 = MEMORY[0x277CBDB20];
        contactProperty4 = [v20 contactProperty];
        label = [contactProperty4 label];
        contactProperty5 = [v20 contactProperty];
        v42 = [contactProperty5 key];
        v43 = [v41 localizedDisplayStringForLabel:label propertyName:v42];
        v44 = _overrideLabelForFaceTime(v43, v15);
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = &stru_2848E51E8;
        }

        v80[2] = v46;
        v79[3] = v57;
        contactProperty6 = [v20 contactProperty];
        contact = [contactProperty6 contact];
        identifier = [contact identifier];
        v50 = v15;
        v51 = identifier;
        if (identifier)
        {
          v52 = identifier;
        }

        else
        {
          v52 = &stru_2848E51E8;
        }

        v80[3] = v52;
        v79[4] = v56;
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v50];
        v80[4] = v53;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:5];

        [array addObject:v10];
        v8 = v65;
        v7 = v66;
        v6 = v68;
LABEL_34:

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)callStateDidChangeNotification:(id)notification
{
  v91 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = gLogObjects;
  v6 = gNumLogObjects;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v88 = v5;
      v89 = 1024;
      v90 = v6;
      OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v88 = notificationCopy;
    _os_log_impl(&dword_2335B8000, v10, OS_LOG_TYPE_INFO, "Notification received:\n%@", buf, 0xCu);
  }

  name = [notificationCopy name];
  v12 = *MEMORY[0x277D6EFF0];
  v13 = [name isEqualToString:*MEMORY[0x277D6EFF0]];
  v14 = MEMORY[0x277D6F038];
  v15 = MEMORY[0x277D6EFD8];
  v75 = notificationCopy;
  if (v13)
  {
    goto LABEL_16;
  }

  name2 = [notificationCopy name];
  if ([name2 isEqualToString:*v14])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v17 = v14;
  name3 = [notificationCopy name];
  if ([name3 isEqualToString:*v15])
  {

    v14 = v17;
    goto LABEL_15;
  }

  name4 = [notificationCopy name];
  v47 = [name4 isEqualToString:*MEMORY[0x277D6F020]];

  v14 = v17;
  if ((v47 & 1) == 0)
  {
    v19 = v75;
    name5 = [v75 name];
    v49 = [name5 isEqualToString:*MEMORY[0x277D6F000]];

    if (!v49)
    {
      goto LABEL_62;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    currentAudioAndVideoCalls = [(ACCCommunicationsFeaturePlugin *)self currentAudioAndVideoCalls];
    v50 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v79;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v79 != v52)
          {
            objc_enumerationMutation(currentAudioAndVideoCalls);
          }

          v54 = *(*(&v78 + 1) + 8 * i);
          if ([v54 status] == 1)
          {
            v55 = _callStateDictionaryForCall(v54);
            queue = [(ACCCommunicationsFeaturePlugin *)self queue];
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = __65__ACCCommunicationsFeaturePlugin_callStateDidChangeNotification___block_invoke_3;
            v76[3] = &unk_2789E2048;
            v76[4] = self;
            v77 = v55;
            v57 = v55;
            dispatch_async(queue, v76);
          }
        }

        v51 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v78 objects:v86 count:16];
      }

      while (v51);
      v19 = v75;
    }

    goto LABEL_61;
  }

LABEL_17:
  v19 = v75;
  object = [v75 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [v75 object];
    currentAudioAndVideoCalls = object2;
    if (!object2)
    {
      goto LABEL_61;
    }

    if ([object2 status] == 3 || objc_msgSend(currentAudioAndVideoCalls, "status") == 4 || objc_msgSend(currentAudioAndVideoCalls, "status") == 6 || objc_msgSend(currentAudioAndVideoCalls, "status") == 1 && (objc_msgSend(currentAudioAndVideoCalls, "isScreening") & 1) != 0 || objc_msgSend(currentAudioAndVideoCalls, "status") == 1 && (objc_msgSend(currentAudioAndVideoCalls, "isScreening") & 1) == 0 && objc_msgSend(currentAudioAndVideoCalls, "wasScreened"))
    {
      v24 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v25 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_3(3.8521e-34);
          *(v71 + 14) = v24;
          OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v72, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v25 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2335B8000, v25, OS_LOG_TYPE_DEBUG, "Creating CallCountDidChangeNotification NSNotification...", buf, 2u);
      }

      v27 = [MEMORY[0x277CCAB88] notificationWithName:@"CallCountDidChangeNotification" object:0];
      [(ACCCommunicationsFeaturePlugin *)self commStatusDidChangeNotification:v27];
    }

    name6 = [v75 name];
    if ([name6 isEqualToString:v12])
    {
    }

    else
    {
      name7 = [v75 name];
      v30 = [name7 isEqualToString:*v14];

      if (!v30)
      {
LABEL_43:
        name8 = [v75 name];
        if (![name8 isEqualToString:*v15] || objc_msgSend(currentAudioAndVideoCalls, "status") == 1)
        {

          goto LABEL_47;
        }

        isScreening = [currentAudioAndVideoCalls isScreening];

        if (isScreening)
        {
LABEL_47:
          v37 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v38 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_3(3.8521e-34);
              *(v69 + 14) = v37;
              OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v38 = MEMORY[0x277D86220];
            v39 = MEMORY[0x277D86220];
          }

          if (OUTLINED_FUNCTION_16())
          {
            name9 = [v75 name];
            *buf = 138412290;
            v88 = name9;
            OUTLINED_FUNCTION_11();
            _os_log_debug_impl(v59, v60, v61, v62, v63, 0xCu);
          }

          v40 = _callStateDictionaryForCall(currentAudioAndVideoCalls);
          if (acc_userDefaults_copyIntegerForKey(@"LiveVoicemailFakeRinging") && [currentAudioAndVideoCalls status] == 1 && (objc_msgSend(currentAudioAndVideoCalls, "isScreening") & 1) == 0 && objc_msgSend(currentAudioAndVideoCalls, "wasScreened"))
          {
            v41 = [v40 mutableCopy];
            [v41 setValue:&unk_2848E59D8 forKey:*MEMORY[0x277CE8168]];
            queue2 = [(ACCCommunicationsFeaturePlugin *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__ACCCommunicationsFeaturePlugin_callStateDidChangeNotification___block_invoke;
            block[3] = &unk_2789E2048;
            block[4] = self;
            v85 = v41;
            v43 = v41;
            dispatch_async(queue2, block);
          }

          queue3 = [(ACCCommunicationsFeaturePlugin *)self queue];
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __65__ACCCommunicationsFeaturePlugin_callStateDidChangeNotification___block_invoke_2;
          v82[3] = &unk_2789E2048;
          v82[4] = self;
          v83 = v40;
          v45 = v40;
          dispatch_async(queue3, v82);
        }

LABEL_61:

        goto LABEL_62;
      }
    }

    v31 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v32 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3(3.8521e-34);
        *(v73 + 14) = v31;
        OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      v32 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (OUTLINED_FUNCTION_16())
    {
      *buf = 0;
      OUTLINED_FUNCTION_11();
      _os_log_debug_impl(v64, v65, v66, v67, v68, 2u);
    }

    v34 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D6F0B0] object:0];
    [(ACCCommunicationsFeaturePlugin *)self commStatusDidChangeNotification:v34];

    goto LABEL_43;
  }

LABEL_62:
}

- (void)currentSignalStrength
{
  CTIndicatorsGetSignalStrength();
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  *self = _convertCTGradedSignalToCommSignal(v2);
}

- (void)initiateCallToDestination:withService:addressBookID:.cold.5()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initiateRedial
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Last outgoing call had more than one remote participant - ignoring request", v4, v5, v6, v7, v8);
  }
}

- (void)acceptCallWithAction:callUUID:.cold.2()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Couldn't find an incoming call - ignoring request", v4, v5, v6, v7, v8);
  }
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6(&dword_2335B8000, v0, v1, "Found call with UUID: %@", v2, v3, v4, v5);
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ACCCommunicationsFeaturePlugin_acceptCallWithAction_callUUID___block_invoke_90_cold_11()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)endCallWithAction:callUUID:.cold.1()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Couldn't find a call to end - ignoring request", v4, v5, v6, v7, v8);
  }
}

void __61__ACCCommunicationsFeaturePlugin_endCallWithAction_callUUID___block_invoke_91_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateHoldStatus:forCallWithUUID:.cold.2()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_10(v1))
  {
    v8 = 0;
    OUTLINED_FUNCTION_4(&dword_2335B8000, v2, v3, "Couldn't find an active call - ignoring request", v4, v5, v6, v7, v8);
  }
}

- (void)sendDTMF:(int)a1 forCallWithUUID:.cold.2(int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = logObjectForModule();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_error_impl(&dword_2335B8000, v2, OS_LOG_TYPE_ERROR, "Invalid tone: %d", v3, 8u);
  }
}

@end