@interface CKDAccountDataSecurityObserver
- (BOOL)accountSupportsManatee:(id)manatee;
- (BOOL)isManateeAvailableForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount allowFetch:(BOOL)fetch error:(id *)error;
- (BOOL)isWalrusEnabledForAccount:(id)account allowFetch:(BOOL)fetch;
- (BOOL)isWalrusEnabledForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount allowFetch:(BOOL)fetch error:(id *)error;
- (CKDAccountDataSecurityObserver)initWithDeviceContext:(id)context stateControllerProvider:(id)provider walrusStateControllerProvider:(id)controllerProvider;
- (CKDAccountDataSecurityObserverDelegate)delegate;
- (CKDLogicalDeviceContext)deviceContext;
- (NSError)lastCDPErrorForWalrusStatus;
- (id)stateControllerWithContext:(id)context;
- (id)validateCachedDataSecurityRequirementsAndReturnWalrusResultForAccount:(id)account isServiceManatee:(BOOL)manatee errorPtr:(id *)ptr;
- (id)walrusStatusProviderWithContext:(id)context;
- (int64_t)_fetchManateeAvailability:(id *)availability;
- (int64_t)cachedWalrusStatusForLoggedInAccount;
- (void)_fetchAndUpdateWalrusStatusForLoggedInAccountWithCompletionHandler:(id)handler;
- (void)_fetchWalrusStatusForLoggedInAccountWithCompletionHandler:(id)handler;
- (void)_lockedFetchAndUpdateManateeAvailability;
- (void)_lockedSetManateeAvailableForLoggedInAccount:(int64_t)account;
- (void)_setCachedWalrusStatusForLoggedInAccount:(int64_t)account shouldNotifyIfChanged:(BOOL)changed;
- (void)clearCachedValuesForTesting;
- (void)dealloc;
- (void)handleManateeStatusUpdateNotificationWithAvailability:(id)availability;
- (void)handleWalrusStateChanged;
- (void)manateeStatusForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount allowFetch:(BOOL)fetch completionHandler:(id)handler;
- (void)postClouddWalrusUpdateNotification;
- (void)setLastCDPErrorForWalrusStatus:(id)status;
- (void)validateDataSecurityStatusesForAccount:(id)account isServiceManatee:(BOOL)manatee clientSDKVersionLaterThanSkyStar:(BOOL)star completionHandler:(id)handler;
- (void)walrusStatusForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount checkCache:(BOOL)cache allowFetch:(BOOL)fetch completionHandler:(id)handler;
@end

@implementation CKDAccountDataSecurityObserver

- (CKDLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

- (int64_t)cachedWalrusStatusForLoggedInAccount
{
  os_unfair_lock_lock(&unk_280D54EB0);
  cachedWalrusStatusForLoggedInAccount = self->_cachedWalrusStatusForLoggedInAccount;
  os_unfair_lock_unlock(&unk_280D54EB0);
  return cachedWalrusStatusForLoggedInAccount;
}

- (NSError)lastCDPErrorForWalrusStatus
{
  os_unfair_lock_lock(&unk_280D54EB0);
  v3 = self->_lastCDPErrorForWalrusStatus;
  os_unfair_lock_unlock(&unk_280D54EB0);

  return v3;
}

- (CKDAccountDataSecurityObserver)initWithDeviceContext:(id)context stateControllerProvider:(id)provider walrusStateControllerProvider:(id)controllerProvider
{
  contextCopy = context;
  providerCopy = provider;
  controllerProviderCopy = controllerProvider;
  v49.receiver = self;
  v49.super_class = CKDAccountDataSecurityObserver;
  v11 = [(CKDAccountDataSecurityObserver *)&v49 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_deviceContext, contextCopy);
    v15 = objc_msgSend_copy(providerCopy, v13, v14);
    stateControllerProvider = v12->_stateControllerProvider;
    v12->_stateControllerProvider = v15;

    v19 = objc_msgSend_copy(controllerProviderCopy, v17, v18);
    walrusStateControllerProvider = v12->_walrusStateControllerProvider;
    v12->_walrusStateControllerProvider = v19;

    v23 = objc_msgSend_contextForPrimaryAccount(MEMORY[0x277CFD4A8], v21, v22);
    primaryAccountContext = v12->_primaryAccountContext;
    v12->_primaryAccountContext = v23;

    v26 = objc_msgSend_walrusStatusProviderWithContext_(v12, v25, v12->_primaryAccountContext);
    walrusStateController = v12->_walrusStateController;
    v12->_walrusStateController = v26;

    v12->_manateeAvailableForLoggedInAccount = -1;
    v12->_cachedWalrusStatusForLoggedInAccount = 0;
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.cloudkit.account.manateeStatusQueue", v28);
    statusQueue = v12->_statusQueue;
    v12->_statusQueue = v29;

    v33 = objc_msgSend_currentProcess(CKDDaemonProcess, v31, v32);
    v36 = objc_msgSend_processType(v33, v34, v35);

    if (v36 != 1)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v12, sub_22510DDCC, @"com.apple.security.octagon.trust-status-change", 0, 1025);
      objc_initWeak(&location, v12);
      v40 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v38, v39);
      v41 = *MEMORY[0x277CFD420];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_22510DE78;
      v46[3] = &unk_278545870;
      objc_copyWeak(&v47, &location);
      v43 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v40, v42, v41, 0, 0, v46);
      walrusStatusChangeObserver = v12->_walrusStatusChangeObserver;
      v12->_walrusStatusChangeObserver = v43;

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }
  }

  return v12;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.security.octagon.trust-status-change", 0);
  if (self->_walrusStatusChangeObserver)
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
    objc_msgSend_removeObserver_name_object_(v6, v7, self->_walrusStatusChangeObserver, *MEMORY[0x277CFD420], 0);

    walrusStatusChangeObserver = self->_walrusStatusChangeObserver;
    self->_walrusStatusChangeObserver = 0;
  }

  v9.receiver = self;
  v9.super_class = CKDAccountDataSecurityObserver;
  [(CKDAccountDataSecurityObserver *)&v9 dealloc];
}

- (id)stateControllerWithContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_stateControllerProvider(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_stateControllerProvider(self, v8, v9);
    v11 = (*(v10 + 16))(v10, contextCopy);

    contextCopy = v10;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CFD548]);
    v11 = objc_msgSend_initWithContext_(v12, v13, contextCopy);
  }

  return v11;
}

- (void)_lockedSetManateeAvailableForLoggedInAccount:(int64_t)account
{
  v5 = objc_msgSend_statusQueue(self, a2, account);
  dispatch_assert_queue_barrier(v5);

  manateeAvailableForLoggedInAccount = self->_manateeAvailableForLoggedInAccount;
  if (manateeAvailableForLoggedInAccount != -1 && manateeAvailableForLoggedInAccount != account)
  {
    v10 = objc_msgSend_sharedAccountStore(CKDAccountStore, v6, v7);
    v13 = objc_msgSend_primaryAccount(v10, v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    v19 = objc_msgSend_delegate(self, v17, v18);
    objc_msgSend_accountDataSecurityObserver_didUpdateManateeStatusForAccountID_(v19, v20, self, v16);
  }

  self->_manateeAvailableForLoggedInAccount = account;
}

- (int64_t)_fetchManateeAvailability:(id *)availability
{
  v5 = objc_msgSend_contextForPrimaryAccount(MEMORY[0x277CFD4A8], a2, availability);
  v7 = objc_msgSend_stateControllerWithContext_(self, v6, v5);
  v21 = 0;
  isManateeAvailable = objc_msgSend_isManateeAvailable_(v7, v8, &v21);
  v10 = v21;

  if (availability)
  {
    v13 = v10;
    *availability = v10;
  }

  if ((isManateeAvailable & 1) == 0)
  {
    v15 = objc_msgSend_domain(v10, v11, v12);
    if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277CFD418]))
    {
      v19 = objc_msgSend_code(v10, v17, v18);

      if (v19 == -5311)
      {
        v14 = -1;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_10;
  }

  v14 = 1;
LABEL_10:

  return v14;
}

- (void)handleManateeStatusUpdateNotificationWithAvailability:(id)availability
{
  availabilityCopy = availability;
  v7 = objc_msgSend_deviceContext(self, v5, v6);
  isLiveDevice = objc_msgSend_isLiveDevice(v7, v8, v9);

  if (isLiveDevice)
  {
    v13 = objc_msgSend_statusQueue(self, v11, v12);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22510E288;
    v14[3] = &unk_278545898;
    v15 = availabilityCopy;
    selfCopy = self;
    dispatch_barrier_async(v13, v14);
  }
}

- (void)_lockedFetchAndUpdateManateeAvailability
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_statusQueue(self, a2, v2);
  dispatch_assert_queue_barrier(v4);

  if (objc_msgSend_manateeAvailableForLoggedInAccount(self, v5, v6) == -1)
  {
    v26 = 0;
    ManateeAvailability = objc_msgSend__fetchManateeAvailability_(self, v7, &v26);
    v9 = v26;
    objc_msgSend__lockedSetManateeAvailableForLoggedInAccount_(self, v10, ManateeAvailability);
    objc_msgSend_setLastCDPErrorForManateeStatus_(self, v11, v9);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = v12;
      if (objc_msgSend_manateeAvailableForLoggedInAccount(self, v14, v15) == 1)
      {
        v18 = &stru_28385ED00;
      }

      else
      {
        v18 = @" not";
      }

      v21 = objc_msgSend_lastCDPErrorForManateeStatus(self, v16, v17);
      if (v21)
      {
        v22 = @" Error: ";
      }

      else
      {
        v22 = &stru_28385ED00;
      }

      v23 = objc_msgSend_lastCDPErrorForManateeStatus(self, v19, v20);
      v24 = v23;
      *buf = 138543874;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = &stru_28385ED00;
      }

      v28 = v18;
      v29 = 2114;
      v30 = v22;
      v31 = 2112;
      v32 = v25;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "CoreCDP reports that manatee is%{public}@ available for the logged in account.%{public}@%@", buf, 0x20u);
    }
  }
}

- (void)manateeStatusForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount allowFetch:(BOOL)fetch completionHandler:(id)handler
{
  secondaryAccountCopy = secondaryAccount;
  v75 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  handlerCopy = handler;
  v14 = objc_msgSend_deviceContext(self, v12, v13);
  if ((objc_msgSend_isLiveDevice(v14, v15, v16) & 1) == 0)
  {
    if (handlerCopy)
    {
      v41 = objc_msgSend_testDevice(v14, v17, v18);
      if (objc_msgSend_deviceToDeviceEncryptionEnabled(v41, v42, v43) && (objc_msgSend_daemonAccount(v41, v44, v45), v46 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend_deviceToDeviceEncryptionSupportedByAccount(v46, v47, v48), v46, (v49 & 1) != 0))
      {
        v50 = 1;
      }

      else
      {
        v51 = objc_msgSend_deviceID(v41, v44, v45);
        v53 = objc_msgSend_containsString_(v51, v52, @"captainmanatee");

        if (v53)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v54 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v57 = v54;
            v60 = objc_msgSend_deviceID(v41, v58, v59);
            v63 = objc_msgSend_daemonAccount(v41, v61, v62);
            v66 = objc_msgSend_accountID(v63, v64, v65);
            *buf = 138412546;
            v72 = v60;
            v73 = 2112;
            v74 = v66;
            _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "Device should have manatee enabled but doesn't. DeviceID: %@ AccountID: %@", buf, 0x16u);
          }
        }

        v50 = 0;
      }

      handlerCopy[2](handlerCopy, v50, 0);
    }

    goto LABEL_29;
  }

  if (!accountCopy)
  {
    goto LABEL_23;
  }

  v19 = objc_msgSend_altDSID(accountCopy, v17, v18);
  if (!objc_msgSend_length(v19, v20, v21))
  {

    goto LABEL_23;
  }

  v24 = objc_msgSend_accountID(accountCopy, v22, v23);
  v27 = objc_msgSend_length(v24, v25, v26);

  if (!v27)
  {
LABEL_23:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v55 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "No account altDSID or accountID available for manatee status, returning manatee disabled", buf, 2u);
    }

LABEL_27:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }

    goto LABEL_29;
  }

  v30 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v28, v29);
  v33 = objc_msgSend_fakeManateeOverride(v30, v31, v32);

  if (!v33)
  {
    if (!secondaryAccountCopy)
    {
      v56 = objc_msgSend_statusQueue(self, v34, v35);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22510EAA0;
      block[3] = &unk_2785458C0;
      block[4] = self;
      fetchCopy = fetch;
      v69 = handlerCopy;
      dispatch_barrier_async(v56, block);

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v36 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v34, v35);
  v39 = objc_msgSend_fakeManateeEnabled(v36, v37, v38);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v67 = @"NO";
    if (v39)
    {
      v67 = @"YES";
    }

    *buf = 138412290;
    v72 = v67;
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Manatee override behavior option is set. Returning manatee enabled value from behavior option: %@", buf, 0xCu);
    if (handlerCopy)
    {
      goto LABEL_10;
    }
  }

  else if (handlerCopy)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, v39, 0);
  }

LABEL_29:
}

- (BOOL)isManateeAvailableForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount allowFetch:(BOOL)fetch error:(id *)error
{
  fetchCopy = fetch;
  secondaryAccountCopy = secondaryAccount;
  accountCopy = account;
  v13 = objc_msgSend_statusQueue(self, v11, v12);
  dispatch_assert_queue_not_V2(v13);

  v14 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_225073E50;
  v27 = sub_2250734B4;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22510EF84;
  v19[3] = &unk_2785458E8;
  v21 = &v29;
  v22 = &v23;
  v15 = v14;
  v20 = v15;
  objc_msgSend_manateeStatusForAccount_isSecondaryAccount_allowFetch_completionHandler_(self, v16, accountCopy, secondaryAccountCopy, fetchCopy, v19);
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v24[5];
  }

  v17 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

- (BOOL)accountSupportsManatee:(id)manatee
{
  manateeCopy = manatee;
  v7 = objc_msgSend_deviceContext(self, v5, v6);
  if (objc_msgSend_isLiveDevice(v7, v8, v9))
  {
    v12 = objc_msgSend_dsid(manateeCopy, v10, v11);

    if (!v12)
    {
      v21 = 0;
      goto LABEL_6;
    }

    v13 = objc_alloc(MEMORY[0x277D42EF8]);
    v16 = objc_msgSend_dsid(manateeCopy, v14, v15);
    v18 = objc_msgSend_initWithDSID_(v13, v17, v16);

    v21 = objc_msgSend_accountStatus(v18, v19, v20) == 1;
  }

  else
  {
    v18 = objc_msgSend_testDevice(v7, v10, v11);
    v24 = objc_msgSend_daemonAccount(v18, v22, v23);
    v21 = objc_msgSend_deviceToDeviceEncryptionSupportedByAccount(v24, v25, v26);
  }

LABEL_6:
  return v21;
}

- (id)walrusStatusProviderWithContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_walrusStateControllerProvider(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_walrusStateControllerProvider(self, v8, v9);
    v11 = (*(v10 + 16))(v10, contextCopy);

    contextCopy = v10;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CFD568]);
    v11 = objc_msgSend_initWithContext_(v12, v13, contextCopy);
  }

  return v11;
}

- (void)handleWalrusStateChanged
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Walrus state may have changed. Fetching new state from CoreCDP", v5, 2u);
  }

  objc_msgSend_walrusStatusForAccount_isSecondaryAccount_checkCache_allowFetch_completionHandler_(self, v4, 0, 0, 0, 1, 0);
}

- (void)_fetchWalrusStatusForLoggedInAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Fetching walrus state from CoreCDP", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = objc_msgSend_contextForPrimaryAccount(MEMORY[0x277CFD4A8], v9, v10);
  v14 = objc_msgSend_dsid(v11, v12, v13);
  v17 = objc_msgSend_primaryAccountContext(selfCopy, v15, v16);
  v20 = objc_msgSend_dsid(v17, v18, v19);

  if (v14 != v20)
  {
    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Primary account has changed, replacing walrus status provider", buf, 2u);
    }

    objc_msgSend_setPrimaryAccountContext_(selfCopy, v24, v11);
    v26 = objc_msgSend_walrusStatusProviderWithContext_(selfCopy, v25, v11);
    walrusStateController = selfCopy->_walrusStateController;
    selfCopy->_walrusStateController = v26;
  }

  v28 = objc_msgSend_walrusStateController(selfCopy, v21, v22);

  objc_sync_exit(selfCopy);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22510F494;
  v31[3] = &unk_278545910;
  v32 = handlerCopy;
  v29 = handlerCopy;
  objc_msgSend_walrusStatusWithCompletion_(v28, v30, v31);
}

- (void)_fetchAndUpdateWalrusStatusForLoggedInAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22510F7F8;
  v7[3] = &unk_278545938;
  objc_copyWeak(&v9, &location);
  v5 = handlerCopy;
  v8 = v5;
  objc_msgSend__fetchWalrusStatusForLoggedInAccountWithCompletionHandler_(self, v6, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_setCachedWalrusStatusForLoggedInAccount:(int64_t)account shouldNotifyIfChanged:(BOOL)changed
{
  changedCopy = changed;
  os_unfair_lock_lock(&unk_280D54EB0);
  if (self->_cachedWalrusStatusForLoggedInAccount == account)
  {

    os_unfair_lock_unlock(&unk_280D54EB0);
  }

  else
  {
    self->_cachedWalrusStatusForLoggedInAccount = account;
    os_unfair_lock_unlock(&unk_280D54EB0);
    if (changedCopy)
    {
      v9 = objc_msgSend_sharedAccountStore(CKDAccountStore, v7, v8);
      v12 = objc_msgSend_primaryAccount(v9, v10, v11);
      v19 = objc_msgSend_identifier(v12, v13, v14);

      v17 = objc_msgSend_delegate(self, v15, v16);
      objc_msgSend_accountDataSecurityObserver_didUpdateWalrusStatusForAccountID_(v17, v18, self, v19);
    }
  }
}

- (void)setLastCDPErrorForWalrusStatus:(id)status
{
  statusCopy = status;
  os_unfair_lock_lock(&unk_280D54EB0);
  lastCDPErrorForWalrusStatus = self->_lastCDPErrorForWalrusStatus;
  self->_lastCDPErrorForWalrusStatus = statusCopy;

  os_unfair_lock_unlock(&unk_280D54EB0);
}

- (void)walrusStatusForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount checkCache:(BOOL)cache allowFetch:(BOOL)fetch completionHandler:(id)handler
{
  cacheCopy = cache;
  secondaryAccountCopy = secondaryAccount;
  v69 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  handlerCopy = handler;
  if (!cacheCopy && !fetch)
  {
    v59 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CKDAccountDataSecurityObserver.m", 716, @"checkCache and allowFetch cannot both be NO");
  }

  v17 = objc_msgSend_deviceContext(self, v14, v15);
  if ((objc_msgSend_isLiveDevice(v17, v18, v19) & 1) == 0)
  {
    v22 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v20, v21);
    v25 = objc_msgSend_fakeWalrusNotification(v22, v23, v24);

    if (v25)
    {
      v28 = objc_msgSend_statusQueue(self, v26, v27);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_22510FF9C;
      v61[3] = &unk_278545898;
      v61[4] = self;
      v62 = accountCopy;
      dispatch_async(v28, v61);
    }

    if (!handlerCopy)
    {
      goto LABEL_26;
    }

    v29 = objc_msgSend_testDevice(v17, v26, v27);
    v32 = objc_msgSend_daemonAccount(v29, v30, v31);
    if (objc_msgSend_walrusEnabled(v32, v33, v34))
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    handlerCopy[2](handlerCopy, v35, 0);
    goto LABEL_15;
  }

  if (secondaryAccountCopy)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }

    goto LABEL_26;
  }

  v36 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v20, v21);
  v39 = objc_msgSend_fakeWalrusOverride(v36, v37, v38);

  if (!v39)
  {
    v48 = objc_msgSend_cachedWalrusStatusForLoggedInAccount(self, v40, v41);
    v29 = objc_msgSend_lastCDPErrorForWalrusStatus(self, v49, v50);
    if (cacheCopy && v48)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v54 = @"unknown";
        if (v48 == 2)
        {
          v54 = @"not enabled";
        }

        if (v48 == 1)
        {
          v54 = @"enabled";
        }

        v55 = v54;
        v56 = @" Error: ";
        v57 = &stru_28385ED00;
        *buf = 138543874;
        v64 = v55;
        if (v29)
        {
          v57 = v29;
        }

        else
        {
          v56 = &stru_28385ED00;
        }

        v65 = 2114;
        v66 = v56;
        v67 = 2112;
        v68 = v57;
        v58 = v52;
        _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Returning cached walrus status originally retrieved from CoreCDP: walrus is %{public}@.%{public}@%@", buf, 0x20u);

        if (!handlerCopy)
        {
          goto LABEL_16;
        }

        goto LABEL_33;
      }

      if (handlerCopy)
      {
LABEL_33:
        (handlerCopy)[2](handlerCopy, v48, v29);
      }

LABEL_16:

      goto LABEL_26;
    }

    if (fetch)
    {
      objc_msgSend__fetchAndUpdateWalrusStatusForLoggedInAccountWithCompletionHandler_(self, v51, handlerCopy);
      goto LABEL_16;
    }

    v32 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v51, *MEMORY[0x277CBC120], 1017, @"There is no walrus availability cached but we are not allowed to fetch.");
    if (handlerCopy)
    {
      (handlerCopy)[2](handlerCopy, v48, v32);
    }

LABEL_15:

    goto LABEL_16;
  }

  v42 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v40, v41);
  v45 = objc_msgSend_fakeWalrusEnabled(v42, v43, v44);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v46 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    if (!handlerCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v53 = @"NO";
  if (v45)
  {
    v53 = @"YES";
  }

  *buf = 138412290;
  v64 = v53;
  _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Returning fake walrus enabled value from behavior option: %@", buf, 0xCu);
  if (handlerCopy)
  {
LABEL_22:
    if (v45)
    {
      v47 = 1;
    }

    else
    {
      v47 = 2;
    }

    handlerCopy[2](handlerCopy, v47, 0);
  }

LABEL_26:
}

- (BOOL)isWalrusEnabledForAccount:(id)account allowFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  accountCopy = account;
  if (objc_msgSend_isPrimaryAccount(accountCopy, v7, v8))
  {
    error = objc_msgSend_isWalrusEnabledForAccount_isSecondaryAccount_allowFetch_error_(self, v9, accountCopy, 0, fetchCopy, 0);
  }

  else
  {
    v12 = objc_msgSend_deviceContext(self, v9, v10);
    v15 = objc_msgSend_testDeviceReference(v12, v13, v14);
    v16 = v15 == 0;

    error = objc_msgSend_isWalrusEnabledForAccount_isSecondaryAccount_allowFetch_error_(self, v17, accountCopy, v16, fetchCopy, 0);
  }

  v18 = error;

  return v18;
}

- (BOOL)isWalrusEnabledForAccount:(id)account isSecondaryAccount:(BOOL)secondaryAccount allowFetch:(BOOL)fetch error:(id *)error
{
  fetchCopy = fetch;
  secondaryAccountCopy = secondaryAccount;
  accountCopy = account;
  v13 = objc_msgSend_statusQueue(self, v11, v12);
  dispatch_assert_queue_not_V2(v13);

  v14 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_225073E50;
  v27 = sub_2250734B4;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22511025C;
  v19[3] = &unk_278545960;
  v21 = &v29;
  v22 = &v23;
  v15 = v14;
  v20 = v15;
  objc_msgSend_walrusStatusForAccount_isSecondaryAccount_checkCache_allowFetch_completionHandler_(self, v16, accountCopy, secondaryAccountCopy, 1, fetchCopy, v19);
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v24[5];
  }

  v17 = v30[3] == 1;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

- (void)postClouddWalrusUpdateNotification
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_postNotificationName_object_(v5, v4, @"CDPWalrusStateChangeNotification", self);
}

- (void)validateDataSecurityStatusesForAccount:(id)account isServiceManatee:(BOOL)manatee clientSDKVersionLaterThanSkyStar:(BOOL)star completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = sub_225073E50;
  v59[4] = sub_2250734B4;
  v60 = 0;
  v15 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v13, v14);
  if (objc_msgSend_fakeManateeOverride(v15, v16, v17))
  {
    v20 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v18, v19);
    v23 = objc_msgSend_fakeWalrusOverride(v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  manateeCopy = manatee;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  if (objc_msgSend_isPrimaryAccount(accountCopy, v24, v25))
  {
    v28 = 0;
  }

  else
  {
    v29 = objc_msgSend_deviceContext(selfCopy, v26, v27);
    v32 = objc_msgSend_testDeviceReference(v29, v30, v31);
    v28 = v32 == 0;
  }

  objc_initWeak(&location, selfCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225110688;
  aBlock[3] = &unk_2785459B0;
  objc_copyWeak(&v50, &location);
  v47 = v59;
  v33 = handlerCopy;
  v46 = v33;
  v48 = v57;
  v49 = v55;
  starCopy = star;
  v34 = accountCopy;
  v45 = v34;
  v52 = v23;
  v53 = v28;
  v35 = _Block_copy(aBlock);
  v36 = v35;
  if (manatee)
  {
    (*(v35 + 2))(v35);
  }

  else
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_225110A48;
    v38[3] = &unk_2785459D8;
    v41 = v55;
    v39 = v34;
    v42 = v59;
    v43 = v57;
    v40 = v36;
    objc_msgSend_walrusStatusForAccount_isSecondaryAccount_checkCache_allowFetch_completionHandler_(selfCopy, v37, v39, v28, 1, 1, v38);
  }

  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);

  objc_sync_exit(selfCopy);
}

- (id)validateCachedDataSecurityRequirementsAndReturnWalrusResultForAccount:(id)account isServiceManatee:(BOOL)manatee errorPtr:(id *)ptr
{
  manateeCopy = manatee;
  v63 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v10, v11);
  if (objc_msgSend_fakeManateeOverride(v12, v13, v14))
  {
    v17 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16);
    v20 = objc_msgSend_fakeWalrusOverride(v17, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  if (objc_msgSend_isPrimaryAccount(accountCopy, v21, v22))
  {
    v25 = 0;
    if (manateeCopy)
    {
LABEL_6:
      v26 = 5006;
      goto LABEL_14;
    }
  }

  else
  {
    v27 = objc_msgSend_deviceContext(selfCopy, v23, v24);
    v30 = objc_msgSend_testDeviceReference(v27, v28, v29);
    v25 = v30 == 0;

    if (manateeCopy)
    {
      goto LABEL_6;
    }
  }

  if (!objc_msgSend_isWalrusEnabledForAccount_isSecondaryAccount_allowFetch_error_(selfCopy, v23, accountCopy, v25, 0, 0))
  {
    v35 = 0;
    v42 = 0;
    goto LABEL_32;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v31 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v57 = objc_msgSend_accountID(accountCopy, v32, v33);
    *buf = 138412290;
    v60 = v57;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "(Cached) Walrus enabled for account with ID %@", buf, 0xCu);
  }

  v26 = 5014;
LABEL_14:
  v35 = !manateeCopy;
  if (!((objc_msgSend_accountType(accountCopy, v23, v24) != 2) | v20 & 1 | *MEMORY[0x277CBC810] & 1))
  {
    v42 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], v26, @"Manatee is not available for explicit-credential accounts");
    goto LABEL_32;
  }

  v58 = 0;
  error = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(selfCopy, v34, accountCopy, v25, 0, &v58);
  v37 = v58;
  v40 = v37;
  if (v37)
  {
    v41 = 0;
  }

  else
  {
    v41 = error;
  }

  if ((v41 & 1) == 0)
  {
    v43 = objc_msgSend_domain(v37, v38, v39);
    v46 = v43;
    v47 = *MEMORY[0x277CBC120];
    if (v43 == *MEMORY[0x277CBC120])
    {
      v49 = objc_msgSend_code(v40, v44, v45) == 1017;

      if (v49)
      {
        v50 = v40;
LABEL_27:
        v42 = v50;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v60 = accountCopy;
          v61 = 2114;
          v62 = v42;
          _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Manatee not available for account %@. Error: %{public}@.", buf, 0x16u);
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    v50 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v48, v47, v26, v40, @"Manatee is not available for account %@", accountCopy);
    goto LABEL_27;
  }

  v42 = 0;
LABEL_31:

LABEL_32:
  if (ptr)
  {
    v52 = v42;
    *ptr = v42;
  }

  if (v42)
  {
    IsWalrusEnabled = 0;
  }

  else
  {
    v54 = [CKDWalrusCheckResult alloc];
    IsWalrusEnabled = objc_msgSend_initWithIsWalrusEnabled_(v54, v55, v35);
  }

  objc_sync_exit(selfCopy);

  return IsWalrusEnabled;
}

- (void)clearCachedValuesForTesting
{
  if (*MEMORY[0x277CBC810] == 1)
  {
    block[7] = v2;
    block[8] = v3;
    objc_msgSend__setCachedWalrusStatusForLoggedInAccount_shouldNotifyIfChanged_(self, a2, 0, 0);
    objc_msgSend_setLastCDPErrorForWalrusStatus_(self, v5, 0);
    v8 = objc_msgSend_statusQueue(self, v6, v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225111178;
    block[3] = &unk_278545A00;
    block[4] = self;
    dispatch_barrier_sync(v8, block);
  }
}

- (CKDAccountDataSecurityObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end