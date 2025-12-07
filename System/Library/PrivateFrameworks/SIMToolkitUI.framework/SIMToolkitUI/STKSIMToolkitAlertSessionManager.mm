@interface STKSIMToolkitAlertSessionManager
- (BOOL)_showAfterDeviceUnlock:(unint64_t)unlock;
- (STKSIMToolkitAlertSessionManager)initWithSubscriptionMonitor:(id)monitor;
- (id)_listItemsFromCTItems:(id)items;
- (id)_newSessionBehaviorFromOptions:(id)options;
- (id)remoteAlertDescriptorForSession:(id)session;
- (void)_queue_handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info;
- (void)_queue_setCurrentSession:(id)session;
- (void)_queue_startListening;
- (void)_removeNotification;
- (void)_showNotification;
- (void)deviceLockStateChanged:(BOOL)changed;
- (void)handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info;
- (void)incomingCallUIStateDidChange:(BOOL)change;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)userEventDidOccur:(id)occur;
@end

@implementation STKSIMToolkitAlertSessionManager

- (void)_removeNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = @"SIMToolkit_Carrier";
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "Remove notifications with Identifier='%@'", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"SIMToolkit_Carrier", 0}];
  [(UNUserNotificationCenter *)self->_userNotificationCenter removePendingNotificationRequestsWithIdentifiers:v4];
  [(UNUserNotificationCenter *)self->_userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v4];
}

- (STKSIMToolkitAlertSessionManager)initWithSubscriptionMonitor:(id)monitor
{
  monitorCopy = monitor;
  v6 = objc_opt_new();
  v7 = STKSIMToolkitLog(v6);
  v35.receiver = self;
  v35.super_class = STKSIMToolkitAlertSessionManager;
  v8 = [(STKAlertSessionManager *)&v35 initWithEventQueue:v6 logger:v7];

  if (v8)
  {
    v9 = BSDispatchQueueCreateWithQualityOfService();
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_subscriptionMonitor, monitor);
    v11 = +[STKIncomingCallUIStateMonitor sharedInstance];
    incomingCallUIStateMonitor = v8->_incomingCallUIStateMonitor;
    v8->_incomingCallUIStateMonitor = v11;

    [(STKIncomingCallUIStateMonitor *)v8->_incomingCallUIStateMonitor addObserver:v8];
    v13 = *MEMORY[0x277CC3FD0];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    if ([processName isEqual:@"ctnotifytool"])
    {

      v13 = @"com.apple.ctnotifytool";
    }

    v16 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v13];
    userNotificationCenter = v8->_userNotificationCenter;
    v8->_userNotificationCenter = v16;

    v18 = +[STKDeviceLockMonitor sharedInstance];
    deviceLockMonitor = v8->_deviceLockMonitor;
    v8->_deviceLockMonitor = v18;

    [(STKDeviceLockMonitor *)v8->_deviceLockMonitor addObserver:v8];
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_lock_deviceLocked = 0;
    notificationGroup = v8->_notificationGroup;
    v8->_notificationGroup = 0;

    v21 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v8->_queue];
    telephonyClient = v8->_telephonyClient;
    v8->_telephonyClient = v21;

    v23 = v8->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke;
    block[3] = &unk_279B4C428;
    v24 = v8;
    v34 = v24;
    dispatch_sync(v23, block);
    v25 = v8->_queue;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_2;
    v31 = &unk_279B4C708;
    v26 = v24;
    v32 = v26;
    notify_register_dispatch("com.apple.springboard.homescreenunlocked", v24 + 26, v25, &v28);
    [v26 incomingCallUIStateDidChange:{-[STKIncomingCallUIStateMonitor isShowingIncomingCallUI](v8->_incomingCallUIStateMonitor, "isShowingIncomingCallUI", v28, v29, v30, v31)}];
    [v26 deviceLockStateChanged:{-[STKDeviceLockMonitor isDeviceLocked](v8->_deviceLockMonitor, "isDeviceLocked")}];
  }

  return v8;
}

uint64_t __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_startListening];
  *(*(a1 + 32) + 112) = [[STKTelephonySelectionListItemsProvider alloc] initWithTelephonyClient:*(*(a1 + 32) + 40)];

  return MEMORY[0x2821F96F8]();
}

void __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_3;
  block[3] = &unk_279B4C428;
  v4 = v1;
  dispatch_async(v2, block);
}

id __64__STKSIMToolkitAlertSessionManager_initWithSubscriptionMonitor___block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return [result sendSIMToolkitDisplayReady:0];
  }

  return result;
}

- (void)handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info
{
  responderCopy = responder;
  infoCopy = info;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__STKSIMToolkitAlertSessionManager_handleSIMToolkitEvent_responder_userInfo___block_invoke;
  v13[3] = &unk_279B4C4A0;
  v13[4] = self;
  v14 = responderCopy;
  v15 = infoCopy;
  eventCopy = event;
  v11 = infoCopy;
  v12 = responderCopy;
  dispatch_async(queue, v13);
}

- (void)_showNotification
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_262BB4000, a2, OS_LOG_TYPE_ERROR, "Something wrong with localization; using default language: %@", &v2, 0xCu);
}

void __53__STKSIMToolkitAlertSessionManager__showNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__STKSIMToolkitAlertSessionManager__showNotification__block_invoke_cold_1(v3, v6);
    }
  }
}

- (BOOL)_showAfterDeviceUnlock:(unint64_t)unlock
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_deviceLocked)
  {
    [(STKSIMToolkitAlertSessionManager *)self _showNotification];
    v5 = dispatch_group_create();
    notificationGroup = self->_notificationGroup;
    self->_notificationGroup = v5;

    dispatch_group_enter(self->_notificationGroup);
    os_unfair_lock_unlock(&self->_lock);
    v7 = self->_notificationGroup;
    v8 = dispatch_time(0, 1000000000 * unlock);
    v9 = dispatch_group_wait(v7, v8) == 0;
    os_unfair_lock_lock(&self->_lock);
    v10 = self->_notificationGroup;
    self->_notificationGroup = 0;

    [(STKSIMToolkitAlertSessionManager *)self _removeNotification];
  }

  else
  {
    v9 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Don't show";
    if (v9)
    {
      v12 = "Show";
    }

    v13 = "timeout waiting for device unlock";
    if (v9)
    {
      v13 = "device unlocked in-time";
    }

    v15 = 136315394;
    v16 = v12;
    v17 = 2080;
    v18 = v13;
    _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "%s STK alert; %s", &v15, 0x16u);
  }

  return v9;
}

- (id)remoteAlertDescriptorForSession:(id)session
{
  v110 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = sessionCopy;
    options = [v5 options];
    v82 = v5;
    event = [v5 event];
    v8 = [options valueForKey:*MEMORY[0x277CC40D8]];
    intValue = [v8 intValue];

    v10 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      currentSession = self->_currentSession;
      *buf = 134218240;
      v107 = currentSession;
      v108 = 2048;
      v109 = intValue;
      _os_log_impl(&dword_262BB4000, v10, OS_LOG_TYPE_DEFAULT, "Session <%p> - SlotID %ld", buf, 0x16u);
    }

    v12 = [(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor subscriptionContextForSlot:intValue];
    if ([(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor numAvailableSubscriptions]< 2)
    {
      v81 = 0;
      v84 = 0;
    }

    else
    {
      telephonyClient = self->_telephonyClient;
      v105 = 0;
      v84 = [(CoreTelephonyClient *)telephonyClient getSimLabel:v12 error:&v105];
      v14 = v105;
      if (v14)
      {
        v15 = v14;
        v81 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(STKSIMToolkitAlertSessionManager *)intValue remoteAlertDescriptorForSession:v12, v15];
        }
      }

      else
      {
        v81 = 0;
      }
    }

    [options bs_safeStringForKey:*MEMORY[0x277CC40E0]];
    v89 = v88 = options;
    v16 = [(STKSIMToolkitAlertSessionManager *)self _newSessionBehaviorFromOptions:options];
    v19 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    v20 = self->_telephonyClient;
    v104[1] = 0;
    v85 = v19;
    v21 = [CoreTelephonyClient copyCarrierBundleValueWithDefault:v20 key:"copyCarrierBundleValueWithDefault:key:bundleType:error:" bundleType:v12 error:@"AllowSTKAlertInLockScreen"];
    v22 = 0;
    v86 = v21;
    v87 = v12;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v107 = @"AllowSTKAlertInLockScreen";
        v108 = 2112;
        v109 = v21;
        _os_log_impl(&dword_262BB4000, v23, OS_LOG_TYPE_DEFAULT, "Carrier bundle: key=%@; value=%@", buf, 0x16u);
      }

      bOOLValue = [v21 BOOLValue];
    }

    else
    {
      v25 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [STKSIMToolkitAlertSessionManager remoteAlertDescriptorForSession:];
      }

      bOOLValue = 0;
    }

    v26 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = "Don't allow";
      if (bOOLValue)
      {
        v27 = "Allow";
      }

      *buf = 136315138;
      v107 = v27;
      _os_log_impl(&dword_262BB4000, v26, OS_LOG_TYPE_DEFAULT, "%s STK alerts when device is locked", buf, 0xCu);
    }

    if (bOOLValue)
    {
      v80 = v22;
      v29 = v5;
      v28 = v84;
    }

    else
    {
      v30 = self->_telephonyClient;
      v104[0] = v22;
      v31 = [(CoreTelephonyClient *)v30 copyCarrierBundleValueWithDefault:v87 key:@"STKAlertLockScreenNotificationTimeoutSeconds" bundleType:v85 error:v104];
      v32 = v104[0];

      v80 = v32;
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v33 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v107 = @"STKAlertLockScreenNotificationTimeoutSeconds";
          v108 = 2112;
          v109 = v31;
          _os_log_impl(&dword_262BB4000, v33, OS_LOG_TYPE_DEFAULT, "Carrier bundle: key=%@; value=%@", buf, 0x16u);
        }

        unsignedIntegerValue = [v31 unsignedIntegerValue];
        if (unsignedIntegerValue)
        {
          v35 = unsignedIntegerValue;
        }

        else
        {
          v35 = 29;
        }
      }

      else
      {
        v36 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [STKSIMToolkitAlertSessionManager remoteAlertDescriptorForSession:];
        }

        v35 = 29;
      }

      v28 = v84;
      v37 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v107 = v35;
        _os_log_impl(&dword_262BB4000, v37, OS_LOG_TYPE_DEFAULT, "Show STK alerts notification with timeout = %ld secs", buf, 0xCu);
      }

      v38 = [(STKSIMToolkitAlertSessionManager *)self _showAfterDeviceUnlock:v35];
      if (!v38)
      {
        v29 = v82;
        [v82 sendResponse:2];
        v44 = 0;
        v18 = 0;
        v48 = v81;
LABEL_83:

        goto LABEL_84;
      }

      v29 = v82;
    }

    v39 = 0;
    if (event <= 5)
    {
      if ((event - 1) >= 4)
      {
        if (event == 5)
        {
          if (v89)
          {
            v40 = [STKTextSessionData alloc];
            text = [v28 text];
            v42 = [(STKTextSessionData *)v40 initWithText:v89 simLabel:text];

            v43 = [STKTextSessionAction alloc];
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke;
            v102[3] = &unk_279B4C5F8;
            v103 = v29;
            v44 = [(STKTextSessionAction *)v43 initWithBehavior:v16 inputData:v42 response:v102];
            v39 = @"STKTextAlertViewController";
            v45 = v103;
LABEL_79:
            v48 = v81;
LABEL_80:

LABEL_81:
LABEL_82:
            v21 = v86;
            v18 = [[_STKRemoteAlertDescriptor alloc] initWithAction:v44 viewControllerName:v39];
            goto LABEL_83;
          }

          v89 = 0;
          v39 = 0;
          v44 = 0;
LABEL_89:
          v48 = v81;
          goto LABEL_82;
        }

LABEL_74:
        v44 = 0;
        goto LABEL_89;
      }

LABEL_49:
      v46 = v89;
      if (!v89)
      {
        if (event == 2)
        {
          v47 = MEMORY[0x277CC40B0];
        }

        else
        {
          if (event != 3)
          {
            v46 = 0;
            goto LABEL_78;
          }

          v47 = MEMORY[0x277CC40C0];
        }

        v46 = [v88 bs_safeStringForKey:*v47];
      }

LABEL_78:
      v74 = [STKNotifySessionData alloc];
      text2 = [v28 text];
      v89 = v46;
      v42 = [(STKNotifySessionData *)v74 initWithText:v46 simLabel:text2 notifyType:event];

      v76 = [STKNotifySessionAction alloc];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_7;
      v90[3] = &unk_279B4C5F8;
      v91 = v29;
      v44 = [(STKTextSessionAction *)v76 initWithBehavior:v16 inputData:v42 response:v90];
      v39 = @"STKNotifyAlertViewController";
      v45 = v91;
      goto LABEL_79;
    }

    if (event > 7)
    {
      if (event == 8)
      {
        v70 = [(STKTelephonyListItemsProvider *)self->_listItemsProvider selectionListItemsForContext:v87 options:v88];
        v42 = [(STKSIMToolkitAlertSessionManager *)self _listItemsFromCTItems:v70];

        if ([(STKNotifySessionData *)v42 count])
        {
          v71 = [STKListItemsSessionData alloc];
          text3 = [v28 text];
          v45 = [(STKListItemsSessionData *)v71 initWithText:v89 simLabel:text3 listItems:v42];

          v73 = [STKListItemsSessionAction alloc];
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_5;
          v94[3] = &unk_279B4C780;
          v95 = v29;
          v44 = [(STKListItemsSessionAction *)v73 initWithBehavior:v16 inputData:v45 response:v94];

          v39 = @"STKListDisplayAlertViewController";
          goto LABEL_79;
        }

        v39 = 0;
        v44 = 0;
      }

      else
      {
        if (event != 9)
        {
          goto LABEL_74;
        }

        v42 = [v88 bs_safeObjectForKey:*MEMORY[0x277CC3F10] ofType:objc_opt_class()];
        if (v42)
        {
          v49 = [v88 bs_safeObjectForKey:*MEMORY[0x277CC3F18] ofType:objc_opt_class()];
          if (v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = &stru_287584798;
          }

          v51 = [STKMutableCallSetupSessionData alloc];
          v28 = v84;
          text4 = [v84 text];
          v45 = [(STKCallSetupSessionData *)v51 initWithText:v89 simLabel:text4 phoneNumber:v42];

          [(STKListItemsSessionData *)v45 setIsHighPriority:CFEqual(v50, *MEMORY[0x277CC3F20]) != 0];
          v53 = [STKCallSetupSessionAction alloc];
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_6;
          v92[3] = &unk_279B4C5F8;
          v93 = v29;
          v44 = [(STKTextSessionAction *)v53 initWithBehavior:v16 inputData:v45 response:v92];

          v39 = @"STKSetupCallAlertViewController";
          goto LABEL_79;
        }

        v39 = 0;
        v44 = 0;
        v28 = v84;
      }

      v48 = v81;
      goto LABEL_81;
    }

    if (event != 6)
    {
      event = 5;
      goto LABEL_49;
    }

    options2 = [v29 options];
    v55 = *MEMORY[0x277CC3F90];
    v56 = [options2 bs_safeStringForKey:*MEMORY[0x277CC3F90]];
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = &stru_287584798;
    }

    v58 = [v88 bs_safeStringForKey:v55];
    v59 = *MEMORY[0x277CC3FA0];
    v60 = [v58 isEqualToString:*MEMORY[0x277CC3FA0]];

    v61 = [STKMutableTextInputSessionData alloc];
    text5 = [v28 text];
    v42 = [(STKTextInputSessionData *)v61 initWithText:v89 simLabel:text5];

    -[STKNotifySessionData setIsSecure:](v42, "setIsSecure:", [v88 bs_BOOLForKey:*MEMORY[0x277CC3F70]]);
    v63 = [v88 bs_safeStringForKey:*MEMORY[0x277CC3F60]];
    [(STKNotifySessionData *)v42 setDefaultText:v63];

    [(STKNotifySessionData *)v42 setIsDigitsOnly:v60];
    v64 = [v88 bs_safeNumberForKey:*MEMORY[0x277CC3F80]];
    v45 = v64;
    if (v64)
    {
      [(STKNotifySessionData *)v42 setMinimumInputLength:[(STKListItemsSessionData *)v64 unsignedIntegerValue]];
    }

    v65 = [v88 bs_safeNumberForKey:*MEMORY[0x277CC3F78]];
    v66 = v65;
    if (v65)
    {
      -[STKNotifySessionData setMaximumInputLength:](v42, "setMaximumInputLength:", [v65 unsignedIntegerValue]);
    }

    v67 = [v88 bs_safeNumberForKey:*MEMORY[0x277CC3F68]];
    v83 = v67;
    if (v67 && ([v67 BOOLValue] & 1) == 0)
    {
      v78 = [STKTextInputSessionAction alloc];
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2;
      v100[3] = &unk_279B4C758;
      v69 = &v101;
      v101 = v29;
      v44 = [(STKTextInputSessionAction *)v78 initWithBehavior:v16 inputData:v42 response:v100];
      v39 = @"STKOneShotInputAlertViewController";
    }

    else if (CFEqual(v57, *MEMORY[0x277CC3F98]))
    {
      v68 = [STKYesNoSessionAction alloc];
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_3;
      v98[3] = &unk_279B4C780;
      v69 = &v99;
      v99 = v29;
      v44 = [(STKYesNoSessionAction *)v68 initWithBehavior:v16 inputData:v42 response:v98];
      v39 = @"STKYesNoInputAlertViewController";
    }

    else
    {
      if (!CFEqual(v57, *MEMORY[0x277CC3FA8]) && !CFEqual(v57, v59))
      {
        v39 = 0;
        v44 = 0;
        goto LABEL_97;
      }

      v79 = [STKTextInputSessionAction alloc];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_4;
      v96[3] = &unk_279B4C758;
      v69 = &v97;
      v97 = v29;
      v44 = [(STKTextInputSessionAction *)v79 initWithBehavior:v16 inputData:v42 response:v96];
      v39 = @"STKStandardInputAlertViewController";
    }

    v28 = v84;
LABEL_97:
    v48 = v81;

    goto LABEL_80;
  }

  v16 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_currentSession;
    *buf = 134217984;
    v107 = v17;
    _os_log_impl(&dword_262BB4000, v16, OS_LOG_TYPE_DEFAULT, "Session <%p> - session isKindOfClass is NULL", buf, 0xCu);
  }

  v18 = 0;
LABEL_84:

  return v18;
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 sendResponse:a2];
  }

  else
  {
    return [v3 sendResponse:0 withStringResult:a3];
  }
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = [a3 BOOLValue];

    return [v4 sendResponse:a2 withBOOLResult:v5];
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 sendResponse:a2];
  }
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 sendResponse:a2];
  }

  else
  {
    return [v3 sendResponse:0 withStringResult:a3];
  }
}

uint64_t __68__STKSIMToolkitAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = [a3 unsignedIntegerValue];

    return [v3 sendSuccessWithSelectedIndex:v4];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 sendResponse:a2];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__STKSIMToolkitAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_279B4C4C8;
  v7[4] = self;
  v8 = deactivateCopy;
  v6 = deactivateCopy;
  dispatch_async(queue, v7);
}

void __67__STKSIMToolkitAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) alertHandle];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 136);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated", &v6, 0xCu);
    }

    [*(a1 + 32) _queue_setCurrentSession:0];
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  [handleCopy removeObserver:self];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__STKSIMToolkitAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_279B4C7A8;
  block[4] = self;
  v12 = handleCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(queue, block);
}

void __77__STKSIMToolkitAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) alertHandle];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 136);
      v6 = *(a1 + 48);
      v7 = 134218242;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated with error: %{public}@", &v7, 0x16u);
    }

    [*(a1 + 32) _queue_setCurrentSession:0];
  }
}

- (void)userEventDidOccur:(id)occur
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STKSIMToolkitAlertSessionManager_userEventDidOccur___block_invoke;
  block[3] = &unk_279B4C428;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__STKSIMToolkitAlertSessionManager_userEventDidOccur___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "UserEventDidOccur", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  if (v4)
  {
    [v4 sendResponse:7];
    v3 = *(a1 + 32);
  }

  [*(v3 + 120) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  *(v7 + 128) = 0;
}

- (void)incomingCallUIStateDidChange:(BOOL)change
{
  if (change)
  {
    if (self->_haltEventQueueProcessingAssertion)
    {
      return;
    }

    v4 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "Halting event queue processing due to incoming call ui being visible.", buf, 2u);
    }

    eventQueue = [(STKAlertSessionManager *)self eventQueue];
    v6 = [eventQueue acquireEventQueueHaltingAssertionForReason:@"incomingCallUIVisible"];
    haltEventQueueProcessingAssertion = self->_haltEventQueueProcessingAssertion;
    self->_haltEventQueueProcessingAssertion = v6;
  }

  else
  {
    v8 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_262BB4000, v8, OS_LOG_TYPE_DEFAULT, "Resulting event queue processing due to incoming call ui being removed.", v9, 2u);
    }

    [(BSInvalidatable *)self->_haltEventQueueProcessingAssertion invalidate];
    eventQueue = self->_haltEventQueueProcessingAssertion;
    self->_haltEventQueueProcessingAssertion = 0;
  }
}

- (void)deviceLockStateChanged:(BOOL)changed
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_deviceLocked = changed;
  if (!changed)
  {
    notificationGroup = self->_notificationGroup;
    if (notificationGroup)
    {
      dispatch_group_leave(notificationGroup);
    }

    [(STKSIMToolkitAlertSessionManager *)self _removeNotification];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_queue_setCurrentSession:(id)session
{
  sessionCopy = session;
  BSDispatchQueueAssert();
  currentSession = self->_currentSession;
  if (currentSession != sessionCopy)
  {
    alertHandle = [(STKAlertSession *)currentSession alertHandle];
    [alertHandle removeObserver:self];

    [(STKAlertSession *)self->_currentSession invalidate];
  }

  v7 = self->_currentSession;
  self->_currentSession = sessionCopy;
  v8 = sessionCopy;

  alertHandle2 = [(STKAlertSession *)self->_currentSession alertHandle];

  [alertHandle2 addObserver:self];
}

- (void)_queue_handleSIMToolkitEvent:(int64_t)event responder:(id)responder userInfo:(id)info
{
  v96 = *MEMORY[0x277D85DE8];
  responderCopy = responder;
  infoCopy = info;
  BSDispatchQueueAssert();
  v10 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSTKSIMToolkitEvent(event);
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = infoCopy;
    _os_log_impl(&dword_262BB4000, v10, OS_LOG_TYPE_DEFAULT, "Event received: %{public}@ with options: %@", buf, 0x16u);
  }

  if (event != 14)
  {
    v71 = self->_currentSession;
    behavior = [(STKSIMToolkitAlertSession *)v71 behavior];
    if ([behavior dismissesAfterUserEvent])
    {
      hasSentResponse = [(STKAlertSession *)v71 hasSentResponse];

      if (!hasSentResponse)
      {
        goto LABEL_14;
      }

      v17 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        currentSession = self->_currentSession;
        *buf = 134217984;
        *&buf[4] = currentSession;
        _os_log_impl(&dword_262BB4000, v17, OS_LOG_TYPE_DEFAULT, "Session <%p> - Dismissing because [currentAlert dismissesAfterNextEvent] && [currentAlert hasSentResponse]", buf, 0xCu);
      }

      [(STKSIMToolkitAlertSessionManager *)self _queue_setCurrentSession:0];
      behavior = v71;
      v71 = 0;
    }

LABEL_14:
    if (event == 7)
    {
      v23 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = infoCopy;
        _os_log_impl(&dword_262BB4000, v23, OS_LOG_TYPE_DEFAULT, "Session <%p> - Play Tone userInfo: %{public}@", buf, 0x16u);
      }

      v68 = [STKSoundFactory soundForOptions:infoCopy];
    }

    else
    {
      if (event == 13)
      {
        v19 = *MEMORY[0x277CC40C8];
        v68 = [infoCopy objectForKey:*MEMORY[0x277CC40C8]];
        options = [(STKAlertSession *)v71 options];
        v67 = [options objectForKey:v19];

        if (v71 && BSEqualObjects())
        {
          v21 = [(STKAlertSessionManager *)self log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = self->_currentSession;
            *buf = 134217984;
            *&buf[4] = v22;
            _os_log_impl(&dword_262BB4000, v21, OS_LOG_TYPE_DEFAULT, "Session <%p> - Dismissing because kCTSIMToolkitSessionCompleteNotification", buf, 0xCu);
          }

          [(STKSIMToolkitAlertSessionManager *)self _queue_setCurrentSession:0];
        }

        goto LABEL_104;
      }

      v68 = 0;
    }

    v67 = [(STKSIMToolkitAlertSessionManager *)self _newSessionBehaviorFromOptions:infoCopy];
    v24 = [STKSIMToolkitAlertSession alloc];
    v25 = [(STKAlertSessionManager *)self log];
    v69 = [(STKSIMToolkitAlertSession *)v24 initWithLogger:v25 responseProvider:responderCopy event:event options:infoCopy behavior:v67 sound:v68];

    if (v71 && ![(STKAlertSession *)v71 hasSentResponse])
    {
      v27 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v69;
        _os_log_impl(&dword_262BB4000, v27, OS_LOG_TYPE_DEFAULT, "Session <%p> - Returning early because an existing session already exists and needs a response", buf, 0xCu);
      }

      [(STKAlertSession *)v69 sendResponse:5];
      [(STKAlertSession *)v69 invalidate];
      goto LABEL_103;
    }

    if (event <= 9)
    {
      if (event == 5)
      {
        v39 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v69;
          _os_log_impl(&dword_262BB4000, v39, OS_LOG_TYPE_DEFAULT, "Session <%p> - Text session", buf, 0xCu);
        }

        v40 = [infoCopy bs_safeStringForKey:*MEMORY[0x277CC3F50]];
        if (v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = &stru_287584798;
        }

        if (!CFEqual(v41, *MEMORY[0x277CC3F58]))
        {
          out_token = -1;
          state64 = 0;
          notify_register_check(*MEMORY[0x277D67770], &out_token);
          if (out_token != -1)
          {
            notify_get_state(out_token, &state64);
            notify_cancel(out_token);
          }

          v64 = state64;
          v42 = dispatch_semaphore_create(0);
          configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v93 = __Block_byref_object_copy__0;
          v94 = __Block_byref_object_dispose__0;
          v95 = 0;
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke;
          v78[3] = &unk_279B4C7D0;
          v80 = buf;
          v43 = v42;
          v79 = v43;
          [configurationForDefaultMainDisplayMonitor setTransitionHandler:v78];
          v65 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
          v63 = v43;
          dispatch_semaphore_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
          v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          elements = [*(*&buf[8] + 40) elements];
          v46 = [elements countByEnumeratingWithState:&v74 objects:v91 count:16];
          if (v46)
          {
            v47 = *v75;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v75 != v47)
                {
                  objc_enumerationMutation(elements);
                }

                v49 = *(*(&v74 + 1) + 8 * i);
                if ([v49 isUIApplicationElement])
                {
                  bundleIdentifier = [v49 bundleIdentifier];
                  v51 = [bundleIdentifier length] == 0;

                  if (!v51)
                  {
                    bundleIdentifier2 = [v49 bundleIdentifier];
                    [v44 addObject:bundleIdentifier2];
                  }
                }
              }

              v46 = [elements countByEnumeratingWithState:&v74 objects:v91 count:16];
            }

            while (v46);
          }

          [v65 invalidate];
          if (v64 || [v44 count] && (objc_msgSend(v44, "isEqual:", &unk_28758C110) & 1) == 0)
          {
            v53 = [(STKAlertSessionManager *)self log];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = [v44 count];
              *v83 = 134218754;
              v84 = v69;
              v85 = 1024;
              v86 = v64 != 0;
              v87 = 1024;
              v88 = v54;
              v89 = 2112;
              v90 = v44;
              _os_log_impl(&dword_262BB4000, v53, OS_LOG_TYPE_DEFAULT, "Session <%p> - Sending busy response because locked: %d, applicationCount: %d, applications: %@", v83, 0x22u);
            }

            [(STKAlertSession *)v69 sendResponse:5];
            [(STKAlertSession *)v69 invalidate];
            v55 = 0;
          }

          else
          {
            v55 = 1;
          }

          _Block_object_dispose(buf, 8);
          if ((v55 & 1) == 0)
          {
            goto LABEL_103;
          }
        }
      }

      else if (event == 9)
      {
        v28 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v69;
          _os_log_impl(&dword_262BB4000, v28, OS_LOG_TYPE_DEFAULT, "Session <%p> - Call setup session", buf, 0xCu);
        }

        mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
        v30 = [mEMORY[0x277CF0CA8] deviceClass] == 0;

        if (!v30)
        {
          v31 = [(STKAlertSessionManager *)self log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v69;
            _os_log_impl(&dword_262BB4000, v31, OS_LOG_TYPE_DEFAULT, "Session <%p> - Call setup session not supported", buf, 0xCu);
          }

          [(STKAlertSession *)v69 sendResponse:6];
          [(STKAlertSession *)v69 invalidate];
          goto LABEL_103;
        }

        v57 = [infoCopy bs_safeStringForKey:*MEMORY[0x277CC3F18]];
        if (BSEqualStrings())
        {
          v58 = CTCopyCurrentCalls();
          if ([v58 count])
          {
            v59 = [(STKAlertSessionManager *)self log];
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v69;
              _os_log_impl(&dword_262BB4000, v59, OS_LOG_TYPE_DEFAULT, "Session <%p> - Call setup session busy (has existing phone calls)", buf, 0xCu);
            }

            [(STKAlertSession *)v69 sendResponse:5];
            [(STKAlertSession *)v69 invalidate];

            goto LABEL_103;
          }
        }
      }

      goto LABEL_96;
    }

    if (event == 10)
    {
      v32 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v69;
        _os_log_impl(&dword_262BB4000, v32, OS_LOG_TYPE_DEFAULT, "Session <%p> - Idle text session", buf, 0xCu);
      }

      v33 = [infoCopy bs_safeStringForKey:*MEMORY[0x277CC40E0]];
      SBSSetIdleText();
      [(STKAlertSession *)v69 sendResponse:0];
      [(STKAlertSession *)v69 invalidate];

      goto LABEL_103;
    }

    if (event != 11)
    {
      if (event == 12)
      {
        v26 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v69;
          _os_log_impl(&dword_262BB4000, v26, OS_LOG_TYPE_DEFAULT, "Session <%p> - Language session", buf, 0xCu);
        }

        [(STKAlertSession *)v69 sendResponse:0];
        [(STKAlertSession *)v69 invalidate];
LABEL_103:

LABEL_104:
        goto LABEL_105;
      }

LABEL_96:
      v60 = [infoCopy objectForKey:*MEMORY[0x277CC3FC8]];
      v61 = v60;
      if (v60 && [v60 BOOLValue])
      {
        v62 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v69;
          _os_log_impl(&dword_262BB4000, v62, OS_LOG_TYPE_DEFAULT, "Session <%p> - Not presenting because it asked not to be presented", buf, 0xCu);
        }

        [(STKAlertSession *)v69 sendResponse:0];
        [(STKAlertSession *)v69 invalidate];
      }

      else
      {
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke_110;
        v72[3] = &unk_279B4C620;
        v72[4] = self;
        v73 = v69;
        [(STKAlertSessionManager *)self enqueuePresentationForSession:v73 completion:v72];
      }

      goto LABEL_103;
    }

    v34 = [(STKAlertSessionManager *)self log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v69;
      _os_log_impl(&dword_262BB4000, v34, OS_LOG_TYPE_DEFAULT, "Session <%p> - Local information session", buf, 0xCu);
    }

    v35 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v36 = v35;
    if (v35 && CFArrayGetCount(v35) >= 1 && (Value = CFArrayGetValueAtIndex(v36, 0)) != 0)
    {
      v38 = 0;
    }

    else
    {
      v56 = CFLocaleCopyCurrent();
      v38 = v56;
      if (!v56 || (Value = CFLocaleGetValue(v56, *MEMORY[0x277CBEED0])) == 0)
      {
        [(STKAlertSession *)v69 sendResponse:3, Value];
        goto LABEL_80;
      }
    }

    [(STKAlertSession *)v69 sendResponse:0 withStringResult:Value];
LABEL_80:
    [(STKAlertSession *)v69 invalidate];
    if (v36)
    {
      CFRelease(v36);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    goto LABEL_103;
  }

  v12 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262BB4000, v12, OS_LOG_TYPE_DEFAULT, "Requested user attention", buf, 2u);
  }

  if (!self->_userEventMonitor)
  {
    v13 = objc_alloc_init(STKUserEventMonitor);
    userEventMonitor = self->_userEventMonitor;
    self->_userEventMonitor = v13;

    objc_storeStrong(&self->_userEventResponder, responder);
    [(STKUserEventMonitor *)self->_userEventMonitor setDelegate:self];
    [(STKUserEventMonitor *)self->_userEventMonitor setEnabled:1];
  }

LABEL_105:
}

void __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
    v5 = v6;
  }
}

void __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke_110(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __84__STKSIMToolkitAlertSessionManager__queue_handleSIMToolkitEvent_responder_userInfo___block_invoke_2;
    v5[3] = &unk_279B4C4C8;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (id)_listItemsFromCTItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = itemsCopy;
  if (itemsCopy && [itemsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          text = [v11 text];

          if (text)
          {
            v13 = [STKListItem alloc];
            text2 = [v11 text];
            v15 = -[STKListItem initWithText:selected:](v13, "initWithText:selected:", text2, [v11 selected]);
            [array addObject:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_newSessionBehaviorFromOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(STKMutableSessionBehavior);
  v5 = [optionsCopy bs_safeStringForKey:*MEMORY[0x277CC3F40]];
  if (v5)
  {
    v6 = BSEqualStrings();
  }

  else
  {
    v6 = 0;
  }

  v7 = [optionsCopy bs_safeNumberForKey:*MEMORY[0x277CC40E8]];
  [v7 doubleValue];
  [(STKMutableSessionBehavior *)v4 setTimeout:?];

  [(STKMutableSessionBehavior *)v4 setShouldSendResponseUponDisplay:v6];
  [(STKMutableSessionBehavior *)v4 setDismissesAfterUserEvent:v6];

  return v4;
}

- (void)_queue_startListening
{
  BSDispatchQueueAssert();
  if (!self->_serverConnection)
  {
    v3 = _CTServerConnectionCreate();
    self->_serverConnection = v3;
    if (v3)
    {
      _CTServerConnectionSetTargetQueue();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
    }
  }

  telephonyClient = self->_telephonyClient;
  if (telephonyClient)
  {
    [(CoreTelephonyClient *)telephonyClient setDelegate:self];
  }
}

void __53__STKSIMToolkitAlertSessionManager__showNotification__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_262BB4000, a2, OS_LOG_TYPE_ERROR, "Unable to add notification request %@", &v2, 0xCu);
}

- (void)remoteAlertDescriptorForSession:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 136315650;
  v6 = CTSubscriptionSlotAsString();
  v7 = 2048;
  v8 = a2;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_262BB4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Getting Sim label failed for %s and context(%p) with error %@", &v5, 0x20u);
}

- (void)remoteAlertDescriptorForSession:.cold.2()
{
  v2 = 138412802;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_262BB4000, v0, v1, "Carrier bundle: key=%@; value=%@; error:%@", v2);
}

- (void)remoteAlertDescriptorForSession:.cold.3()
{
  v2 = 138412802;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_262BB4000, v0, v1, "Carrier bundle: key=%@; value=%@; error:%@; ", v2);
}

@end