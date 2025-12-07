@interface SOSContactsManager
+ (BOOL)authorizedToUseContactStore;
+ (id)contactStore;
+ (void)preloadContactStoreIfNecessary;
- (BOOL)SOSContactsExist;
- (BOOL)_isEmergencyNumber:(id)number;
- (BOOL)hasValidContactsToMessage;
- (BOOL)isPhoneNumberEqual:(id)equal toNumber:(id)number;
- (NSArray)activeSafetyMonitorSessionPrimaryHandles;
- (NSArray)medicalIDEmergencyContacts;
- (SOSContactsManager)initWithHealthStore:(id)store;
- (SOSLegacyContactsManager)legacyContactsManager;
- (_opaque_pthread_mutex_t)medicalIDEmergencyContactsMutex;
- (_opaque_pthread_mutex_t)safetyMonitorSessionHandleMutex;
- (id)SOSContactDestinations;
- (id)SOSContactRecipients;
- (id)_sosRecipientContainingPhoneNumber:(id)number inRecipients:(id)recipients;
- (id)_userDefaults;
- (void)SOSContactsWithTimeout:(double)timeout andCompletion:(id)completion;
- (void)_fetchMedicalIDEmergencyContacts;
- (void)_fetchSafetyMonitorSessionHandles;
- (void)_medicalContactsDidChange;
- (void)_medicalIDEmergencyContactsWithCompletion:(id)completion;
- (void)_updateWithSafetyMonitorHandles:(id)handles;
- (void)_updateWithSafetyMonitorSessionState:(id)state error:(id)error;
- (void)_waitForMedicalIDInitialState;
- (void)_waitForSafetyMonitorInitialState;
- (void)dealloc;
- (void)refreshCurrentEmergencyContacts;
- (void)setActiveSafetyMonitorSessionPrimaryHandles:(id)handles;
- (void)setMedicalIDEmergencyContacts:(id)contacts;
- (void)setMedicalIDEmergencyContactsMutex:(_opaque_pthread_mutex_t *)mutex;
- (void)setSafetyMonitorSessionHandleMutex:(_opaque_pthread_mutex_t *)mutex;
@end

@implementation SOSContactsManager

- (SOSContactsManager)initWithHealthStore:(id)store
{
  v42 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.contacts"])
  {
    v37.receiver = self;
    v37.super_class = SOSContactsManager;
    v6 = [(SOSContactsManager *)&v37 init];
    v7 = v6;
    if (v6)
    {
      if (storeCopy)
      {
        objc_storeStrong(&v6->_healthStore, store);
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
        healthStore = v7->_healthStore;
        v7->_healthStore = v10;

        [(HKHealthStore *)v7->_healthStore setDebugIdentifier:@"com.apple.sos"];
        resume = [(HKHealthStore *)v7->_healthStore resume];
      }

      v12 = sos_default_log(resume);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v7->_healthStore;
        *buf = 138412546;
        v39 = v13;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "Initializing %@ with _healthStore: %@", buf, 0x16u);
      }

      v15 = dispatch_semaphore_create(0);
      medicalIDContactsInitialStateSemaphore = v7->_medicalIDContactsInitialStateSemaphore;
      v7->_medicalIDContactsInitialStateSemaphore = v15;

      v17 = pthread_mutex_init(&v7->_medicalIDEmergencyContactsMutex, 0);
      if (v17)
      {
        v18 = sos_default_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SOSContactsManager initWithHealthStore:];
        }
      }

      v19 = *MEMORY[0x277CCE4B8];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __42__SOSContactsManager_initWithHealthStore___block_invoke;
      handler[3] = &unk_279B53068;
      v20 = v7;
      v36 = v20;
      v21 = notify_register_dispatch(v19, &v7->_healthContactsNotificationToken, MEMORY[0x277D85CD0], handler);
      v22 = v21;
      if (v21)
      {
        v23 = sos_default_log(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v39) = v22;
          _os_log_impl(&dword_264323000, v23, OS_LOG_TYPE_DEFAULT, "Failed to register for Health contacts notification: %d", buf, 8u);
        }
      }

      [(pthread_mutex_t *)v20 _fetchMedicalIDEmergencyContacts];

      v24 = dispatch_semaphore_create(0);
      v25 = *&v20->__opaque[48];
      *&v20->__opaque[48] = v24;

      v26 = pthread_mutex_init(v20 + 2, 0);
      if (v26)
      {
        v27 = sos_default_log(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SOSContactsManager initWithHealthStore:];
        }
      }

      inited = objc_initWeak(buf, v20);
      v29 = sos_default_log(inited);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_264323000, v29, OS_LOG_TYPE_DEFAULT, "Registering SafetyMonitor startMonitoringSessionStateWithHandler", v34, 2u);
      }

      defaultManager = [getSMSafetyMonitorManagerClass() defaultManager];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __42__SOSContactsManager_initWithHealthStore___block_invoke_329;
      v32[3] = &unk_279B53090;
      objc_copyWeak(&v33, buf);
      [defaultManager startMonitoringSessionStateWithHandler:v32];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __42__SOSContactsManager_initWithHealthStore___block_invoke_329(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = sos_default_log(WeakRetained);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v10)
    {
      *v11 = 0;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SafetyMonitor startMonitoringSessionStateWithHandler invoked, updating", v11, 2u);
    }

    [WeakRetained _updateWithSafetyMonitorSessionState:v6 error:v7];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SafetyMonitor startMonitoringSessionStateWithHandler invoked, no self", buf, 2u);
    }
  }
}

- (void)dealloc
{
  defaultManager = [getSMSafetyMonitorManagerClass() defaultManager];
  [defaultManager stopMonitoringSessionStateWithHandler:&__block_literal_global];

  notify_cancel(self->_healthContactsNotificationToken);
  v4.receiver = self;
  v4.super_class = SOSContactsManager;
  [(SOSContactsManager *)&v4 dealloc];
}

void __29__SOSContactsManager_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sos_default_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __29__SOSContactsManager_dealloc__block_invoke_cold_1();
    }
  }
}

- (void)refreshCurrentEmergencyContacts
{
  [(SOSContactsManager *)self _fetchMedicalIDEmergencyContacts];

  [(SOSContactsManager *)self _fetchSafetyMonitorSessionHandles];
}

- (void)SOSContactsWithTimeout:(double)timeout andCompletion:(id)completion
{
  completionCopy = completion;
  medicalIDEmergencyContacts = [(SOSContactsManager *)self medicalIDEmergencyContacts];
  (*(completion + 2))(completionCopy, medicalIDEmergencyContacts);
}

- (id)SOSContactDestinations
{
  v9 = *MEMORY[0x277D85DE8];
  sOSContactRecipients = [(SOSContactsManager *)self SOSContactRecipients];
  v3 = [SOSRecipient handlesFromRecipients:sOSContactRecipients];

  v5 = sos_default_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "sosContactDestinations: %@", &v7, 0xCu);
  }

  return v3;
}

- (id)SOSContactRecipients
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SOSContactsManager_SOSContactRecipients__block_invoke;
  v7[3] = &unk_279B530D8;
  v7[4] = self;
  v7[5] = &v8;
  v3 = sos_default_log([(SOSContactsManager *)self SOSContactsWithTimeout:v7 andCompletion:10.0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v9[5];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "sosRecipients: %@", buf, 0xCu);
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__SOSContactsManager_SOSContactRecipients__block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v3)
  {
    v4 = *v33;
    v25 = 138412290;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = [v6 phoneNumber];
        v8 = sos_default_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v7;
          _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "sosContact: %@ phoneNumber: %@", buf, 0x16u);
        }

        if ([v7 length])
        {
          v9 = [*(a1 + 32) _isEmergencyNumber:v7];
          if (v9)
          {
            v10 = sos_default_log(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v25;
              *&buf[4] = v7;
              _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "NOT adding phoneNumber as it's an emergency #: %@", buf, 0xCu);
            }
          }

          else
          {
            v10 = objc_opt_new();
            [v10 setHandle:v7];
            [v10 setReasons:1];
            [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v3);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [*(a1 + 32) activeSafetyMonitorSessionPrimaryHandles];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v12)
  {
    v13 = *v29;
    v26 = &buf[16];
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v28 + 1) + 8 * j);
        if ([v15 length])
        {
          v36 = 0;
          v37 = &v36;
          v38 = 0x2050000000;
          v16 = getSMHandleClass_softClass;
          v39 = getSMHandleClass_softClass;
          if (!getSMHandleClass_softClass)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __getSMHandleClass_block_invoke;
            v43 = &unk_279B53140;
            v44 = &v36;
            __getSMHandleClass_block_invoke(buf);
            v16 = v37[3];
          }

          v17 = v16;
          _Block_object_dispose(&v36, 8);
          if ([v16 getSMHandleTypeWithHandle:v15] == 2)
          {
            v18 = sos_default_log(2);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v15;
              _os_log_impl(&dword_264323000, v18, OS_LOG_TYPE_DEFAULT, "Adding email safetyMonitorSessionHandle: %@", buf, 0xCu);
            }

            v19 = objc_opt_new();
            [v19 setHandle:v15];
            [v19 setReasons:2];
            [*(*(*(a1 + 40) + 8) + 40) addObject:v19];
          }

          else
          {
            v19 = v15;
            v20 = [*(a1 + 32) _isEmergencyNumber:v19];
            if (v20)
            {
              v21 = sos_default_log(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v19;
                _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "NOT adding safetyMonitorSessionPhoneNumber as it's an emergency #: %@", buf, 0xCu);
              }
            }

            else
            {
              v21 = [*(a1 + 32) _sosRecipientContainingPhoneNumber:v19 inRecipients:*(*(*(a1 + 40) + 8) + 40)];
              v22 = sos_default_log(v21);
              v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              if (v21)
              {
                if (v23)
                {
                  *buf = 138412290;
                  *&buf[4] = v19;
                  _os_log_impl(&dword_264323000, v22, OS_LOG_TYPE_DEFAULT, "NOT adding safetyMonitorSessionPhoneNumber as it's already there: %@, marking phone number as Zelkova contact", buf, 0xCu);
                }

                [v21 setReasons:[v21 reasons]| 2];
              }

              else
              {
                if (v23)
                {
                  *buf = 138412290;
                  *&buf[4] = v19;
                  _os_log_impl(&dword_264323000, v22, OS_LOG_TYPE_DEFAULT, "Adding safetyMonitorSessionPhoneNumber: %@", buf, 0xCu);
                }

                v24 = objc_opt_new();
                [v24 setHandle:v19];
                [v24 setReasons:2];
                [*(*(*(a1 + 40) + 8) + 40) addObject:v24];
              }
            }
          }
        }

        else
        {
          v19 = sos_default_log(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_264323000, v19, OS_LOG_TYPE_DEFAULT, "NOT adding safetyMonitorSessionHandle as it's empty", buf, 2u);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v12);
  }
}

- (id)_sosRecipientContainingPhoneNumber:(id)number inRecipients:(id)recipients
{
  v22 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  recipientsCopy = recipients;
  v8 = [recipientsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(recipientsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        handle = [v12 handle];
        v14 = [(SOSContactsManager *)self isPhoneNumberEqual:numberCopy toNumber:handle];

        if (v14)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v9 = [recipientsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)isPhoneNumberEqual:(id)equal toNumber:(id)number
{
  v21 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  numberCopy = number;
  active = PNCopyBestGuessCountryCodeForNumber();
  if (!active)
  {
    active = CPPhoneNumberCopyActiveCountryCode();
  }

  v8 = PNCopyBestGuessCountryCodeForNumber();
  if (!v8)
  {
    v8 = CPPhoneNumberCopyActiveCountryCode();
  }

  v9 = PNPhoneNumbersEqual();
  CFRelease(active);
  CFRelease(v8);
  v11 = sos_default_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[SOSContactsManager isPhoneNumberEqual:toNumber:]";
    v15 = 2112;
    v16 = equalCopy;
    v17 = 2112;
    v18 = numberCopy;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "%s: numberA: %@, numberB: %@, equal: %d", &v13, 0x26u);
  }

  return v9;
}

- (BOOL)SOSContactsExist
{
  sOSContactDestinations = [(SOSContactsManager *)self SOSContactDestinations];
  v3 = [sOSContactDestinations count] != 0;

  return v3;
}

- (BOOL)_isEmergencyNumber:(id)number
{
  numberCopy = number;
  CTSUServerConnectionRef(numberCopy, v4);
  IsEmergencyNumber = _CTServerConnectionIsEmergencyNumber();

  if (IsEmergencyNumber)
  {
    v7 = sos_default_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SOSContactsManager *)IsEmergencyNumber _isEmergencyNumber:v7];
    }
  }

  return 0;
}

- (BOOL)hasValidContactsToMessage
{
  v3 = +[SOSUtilities isMessagesAppInstalled];
  if ((v3 & 1) == 0)
  {
    v7 = sos_default_log(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v8 = "Messages app not installed, cannot message emergency contacts";
      v9 = &v12;
LABEL_8:
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_9:

    return 0;
  }

  v4 = +[SOSUtilities isMessagesHandlingSMS];
  if ((v4 & 1) == 0)
  {
    v7 = sos_default_log(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "Messages app is not handling SMS, cannot message emergency contacts";
      v9 = &v11;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  phoneNumbersToMessage = [(SOSContactsManager *)self phoneNumbersToMessage];
  v6 = [phoneNumbersToMessage count] != 0;

  return v6;
}

- (SOSLegacyContactsManager)legacyContactsManager
{
  legacyContactsManager = self->_legacyContactsManager;
  if (!legacyContactsManager)
  {
    v4 = objc_opt_new();
    v5 = self->_legacyContactsManager;
    self->_legacyContactsManager = v4;

    legacyContactsManager = self->_legacyContactsManager;
  }

  return legacyContactsManager;
}

- (id)_userDefaults
{
  if (_userDefaults_onceToken != -1)
  {
    [SOSContactsManager _userDefaults];
  }

  v3 = _userDefaults_defaults;

  return v3;
}

uint64_t __35__SOSContactsManager__userDefaults__block_invoke()
{
  _userDefaults_defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobilephone"];

  return MEMORY[0x2821F96F8]();
}

+ (void)preloadContactStoreIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SOSContactsManager_preloadContactStoreIfNecessary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (preloadContactStoreIfNecessary_once != -1)
  {
    dispatch_once(&preloadContactStoreIfNecessary_once, block);
  }
}

void __52__SOSContactsManager_preloadContactStoreIfNecessary__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.sos.contactStoreQueue", 0);
  v3 = __contactStoreQueue;
  __contactStoreQueue = v2;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SOSContactsManager_preloadContactStoreIfNecessary__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(__contactStoreQueue, block);
}

void *__52__SOSContactsManager_preloadContactStoreIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) authorizedToUseContactStore];
  if (result)
  {
    __contactStore = [MEMORY[0x277CBDAB8] storeWithOptions:1];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (id)contactStore
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  [self preloadContactStoreIfNecessary];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SOSContactsManager_contactStore__block_invoke;
  block[3] = &unk_279B53140;
  block[4] = &v5;
  dispatch_sync(__contactStoreQueue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (BOOL)authorizedToUseContactStore
{
  if (authorizedToUseContactStore_onceToken != -1)
  {
    +[SOSContactsManager authorizedToUseContactStore];
  }

  return authorizedToUseContactStore_contactStoreAuthorized;
}

void __49__SOSContactsManager_authorizedToUseContactStore__block_invoke()
{
  v0 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  authorizedToUseContactStore_contactStoreAuthorized = v0 == 3;
  if (v0 != 3)
  {
    NSLog(&cfstr_NotAuthorizedT.isa, v0);
  }
}

- (NSArray)medicalIDEmergencyContacts
{
  v9 = *MEMORY[0x277D85DE8];
  [(SOSContactsManager *)self _waitForMedicalIDInitialState];
  pthread_mutex_lock(&self->_medicalIDEmergencyContactsMutex);
  v3 = [(NSArray *)self->_medicalIDEmergencyContacts copy];
  v4 = pthread_mutex_unlock(&self->_medicalIDEmergencyContactsMutex);
  v5 = sos_default_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Get medicalIDEmergencyContacts: %@", &v7, 0xCu);
  }

  return v3;
}

- (void)setMedicalIDEmergencyContacts:(id)contacts
{
  v11 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  pthread_mutex_lock(&self->_medicalIDEmergencyContactsMutex);
  objc_storeStrong(&self->_medicalIDEmergencyContacts, contacts);
  v6 = pthread_mutex_unlock(&self->_medicalIDEmergencyContactsMutex);
  v7 = sos_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = contactsCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Set medicalIDEmergencyContacts: %@", &v9, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SOSContactsChangedNotification" object:self];
}

- (void)_fetchMedicalIDEmergencyContacts
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SOSContactsManager__fetchMedicalIDEmergencyContacts__block_invoke;
  v3[3] = &unk_279B53168;
  objc_copyWeak(&v4, &location);
  [(SOSContactsManager *)self _medicalIDEmergencyContactsWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__SOSContactsManager__fetchMedicalIDEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMedicalIDEmergencyContacts:v3];

  v6 = sos_default_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Received initial medical ID emergency contacts", v8, 2u);
  }

  v7 = [WeakRetained medicalIDContactsInitialStateSemaphore];
  dispatch_semaphore_signal(v7);
}

- (void)_medicalIDEmergencyContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  healthStore = self->_healthStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SOSContactsManager__medicalIDEmergencyContactsWithCompletion___block_invoke;
  v7[3] = &unk_279B53190;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKHealthStore *)healthStore fetchMedicalIDEmergencyContactsWithCompletion:v7];
}

void __64__SOSContactsManager__medicalIDEmergencyContactsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = sos_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "emergencyContacts: %@ error: %@", buf, 0x16u);
  }

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_opt_new();
          v16 = [v14 name];
          [v15 setName:v16];

          v17 = [v14 phoneNumber];
          [v15 setPhoneNumber:v17];

          v18 = [v14 nameContactIdentifier];
          [v15 setNameContactIdentifier:v18];

          v19 = [v14 phoneNumberContactIdentifier];
          [v15 setPhoneNumberContactIdentifier:v19];

          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    (*(*(a1 + 32) + 16))();
    v5 = v20;
  }
}

- (void)_waitForMedicalIDInitialState
{
  medicalIDContactsInitialStateSemaphore = self->_medicalIDContactsInitialStateSemaphore;
  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_semaphore_wait(medicalIDContactsInitialStateSemaphore, v4);
  if (v5)
  {
    v6 = sos_default_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SOSContactsManager _waitForMedicalIDInitialState];
    }
  }

  else
  {
    v7 = self->_medicalIDContactsInitialStateSemaphore;

    dispatch_semaphore_signal(v7);
  }
}

- (void)_medicalContactsDidChange
{
  v3 = sos_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "_medicalContactsDidChange", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SOSContactsManager__medicalContactsDidChange__block_invoke;
  v4[3] = &unk_279B53168;
  objc_copyWeak(&v5, buf);
  [(SOSContactsManager *)self _medicalIDEmergencyContactsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __47__SOSContactsManager__medicalContactsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMedicalIDEmergencyContacts:v3];
}

- (NSArray)activeSafetyMonitorSessionPrimaryHandles
{
  v9 = *MEMORY[0x277D85DE8];
  [(SOSContactsManager *)self _waitForSafetyMonitorInitialState];
  pthread_mutex_lock(&self->_safetyMonitorSessionHandleMutex);
  v3 = [(NSArray *)self->_activeSafetyMonitorSessionPrimaryHandles copy];
  v4 = pthread_mutex_unlock(&self->_safetyMonitorSessionHandleMutex);
  v5 = sos_default_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Get activeSafetyMonitorSessionPrimaryHandles: %@", &v7, 0xCu);
  }

  return v3;
}

- (void)setActiveSafetyMonitorSessionPrimaryHandles:(id)handles
{
  v10 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  pthread_mutex_lock(&self->_safetyMonitorSessionHandleMutex);
  objc_storeStrong(&self->_activeSafetyMonitorSessionPrimaryHandles, handles);
  v6 = pthread_mutex_unlock(&self->_safetyMonitorSessionHandleMutex);
  v7 = sos_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = handlesCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Set activeSafetyMonitorSessionPrimaryHandles: %@", &v8, 0xCu);
  }
}

- (void)_fetchSafetyMonitorSessionHandles
{
  objc_initWeak(&location, self);
  defaultManager = [getSMSafetyMonitorManagerClass() defaultManager];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__SOSContactsManager__fetchSafetyMonitorSessionHandles__block_invoke;
    v6[3] = &unk_279B531B8;
    v3 = &v7;
    objc_copyWeak(&v7, &location);
    [defaultManager fetchSOSReceiversWithCompletion:v6];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__SOSContactsManager__fetchSafetyMonitorSessionHandles__block_invoke_355;
    v4[3] = &unk_279B53090;
    v3 = &v5;
    objc_copyWeak(&v5, &location);
    [defaultManager fetchCurrentSessionStateWithHandler:v4];
  }

  objc_destroyWeak(v3);

  objc_destroyWeak(&location);
}

void __55__SOSContactsManager__fetchSafetyMonitorSessionHandles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = sos_default_log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SafetyMonitor fetchSOSReceiversWithCompletion, no self", &v11, 2u);
    }

    goto LABEL_7;
  }

  v9 = sos_default_log(WeakRetained);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__SOSContactsManager__fetchSafetyMonitorSessionHandles__block_invoke_cold_1();
    }

LABEL_7:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SafetyMonitor fetchSOSReceiversWithCompletion, updating with receivers: %@", &v11, 0xCu);
  }

  [v8 _updateWithSafetyMonitorHandles:v5];
LABEL_11:
}

void __55__SOSContactsManager__fetchSafetyMonitorSessionHandles__block_invoke_355(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = sos_default_log(WeakRetained);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v10)
    {
      *v11 = 0;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SafetyMonitor fetchCurrentSessionStateWithHandler, updating", v11, 2u);
    }

    [WeakRetained _updateWithSafetyMonitorSessionState:v6 error:v7];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SafetyMonitor fetchCurrentSessionStateWithHandler, no self", buf, 2u);
    }
  }
}

- (void)_updateWithSafetyMonitorSessionState:(id)state error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  errorCopy = error;
  v8 = errorCopy;
  if (errorCopy)
  {
    handle = sos_default_log(errorCopy);
    if (os_log_type_enabled(handle, OS_LOG_TYPE_ERROR))
    {
      [SOSContactsManager _updateWithSafetyMonitorSessionState:error:];
    }

LABEL_4:
    receiverHandles = 0;
    goto LABEL_5;
  }

  isActiveState = [stateCopy isActiveState];
  if ((isActiveState & 1) == 0)
  {
    handle = sos_default_log(isActiveState);
    if (os_log_type_enabled(handle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, handle, OS_LOG_TYPE_DEFAULT, "_updateWithSafetyMonitorSessionState, Zelkova Session not in active state", buf, 2u);
    }

    goto LABEL_4;
  }

  configuration = [stateCopy configuration];
  v13 = objc_opt_respondsToSelector();

  configuration2 = [stateCopy configuration];
  v15 = configuration2;
  if (v13)
  {
    sosReceivers = [configuration2 sosReceivers];
    receiverHandles = [sosReceivers receiverHandles];

    handle = sos_default_log(v17);
    if (os_log_type_enabled(handle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = receiverHandles;
      _os_log_impl(&dword_264323000, handle, OS_LOG_TYPE_DEFAULT, "_updateWithSafetyMonitorSessionState, sosReceivers: %@", buf, 0xCu);
    }
  }

  else
  {
    handle = [configuration2 handle];

    primaryHandle = [handle primaryHandle];
    v19 = [primaryHandle length];

    if (v19)
    {
      v22 = handle;
      receiverHandles = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      v21 = sos_default_log(receiverHandles);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = handle;
        _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "_updateWithSafetyMonitorSessionState, Active state with handle: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = sos_default_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SOSContactsManager _updateWithSafetyMonitorSessionState:error:];
      }

      receiverHandles = 0;
    }
  }

LABEL_5:

  [(SOSContactsManager *)self _updateWithSafetyMonitorHandles:receiverHandles];
}

- (void)_updateWithSafetyMonitorHandles:(id)handles
{
  v25 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = handlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        primaryHandle = [*(*(&v18 + 1) + 8 * v9) primaryHandle];
        v11 = [primaryHandle length];
        v12 = sos_default_log(v11);
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = primaryHandle;
            _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "_updateWithSafetyMonitorHandles, adding handle: %@", buf, 0xCu);
          }

          [v4 addObject:primaryHandle];
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SOSContactsManager *)&v16 _updateWithSafetyMonitorHandles:v17, v13];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  [(SOSContactsManager *)self setActiveSafetyMonitorSessionPrimaryHandles:v4];
  safetyMonitorSessionInitialStateSemaphore = [(SOSContactsManager *)self safetyMonitorSessionInitialStateSemaphore];
  dispatch_semaphore_signal(safetyMonitorSessionInitialStateSemaphore);
}

- (void)_waitForSafetyMonitorInitialState
{
  safetyMonitorSessionInitialStateSemaphore = self->_safetyMonitorSessionInitialStateSemaphore;
  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_semaphore_wait(safetyMonitorSessionInitialStateSemaphore, v4);
  if (v5)
  {
    v6 = sos_default_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SOSContactsManager _waitForSafetyMonitorInitialState];
    }
  }

  else
  {
    v7 = self->_safetyMonitorSessionInitialStateSemaphore;

    dispatch_semaphore_signal(v7);
  }
}

- (_opaque_pthread_mutex_t)medicalIDEmergencyContactsMutex
{
  v3 = *&self[1].__opaque[8];
  *&retstr->__sig = *&self[1].__sig;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[40];
  *&retstr->__opaque[24] = *&self[1].__opaque[24];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setMedicalIDEmergencyContactsMutex:(_opaque_pthread_mutex_t *)mutex
{
  v3 = *&mutex->__sig;
  v4 = *&mutex->__opaque[8];
  v5 = *&mutex->__opaque[40];
  *&self->_medicalIDEmergencyContactsMutex.__opaque[24] = *&mutex->__opaque[24];
  *&self->_medicalIDEmergencyContactsMutex.__opaque[40] = v5;
  *&self->_medicalIDEmergencyContactsMutex.__sig = v3;
  *&self->_medicalIDEmergencyContactsMutex.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)safetyMonitorSessionHandleMutex
{
  v3 = *&self[2].__opaque[8];
  *&retstr->__sig = *&self[2].__sig;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[2].__opaque[40];
  *&retstr->__opaque[24] = *&self[2].__opaque[24];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setSafetyMonitorSessionHandleMutex:(_opaque_pthread_mutex_t *)mutex
{
  v3 = *&mutex->__sig;
  v4 = *&mutex->__opaque[8];
  v5 = *&mutex->__opaque[40];
  *&self->_safetyMonitorSessionHandleMutex.__opaque[24] = *&mutex->__opaque[24];
  *&self->_safetyMonitorSessionHandleMutex.__opaque[40] = v5;
  *&self->_safetyMonitorSessionHandleMutex.__sig = v3;
  *&self->_safetyMonitorSessionHandleMutex.__opaque[8] = v4;
}

- (void)_isEmergencyNumber:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_264323000, log, OS_LOG_TYPE_ERROR, "Received error from _CTServerConnectionIsEmergencyNumber(): domain: %d, error: %d", v3, 0xEu);
}

- (void)_updateWithSafetyMonitorHandles:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_264323000, log, OS_LOG_TYPE_ERROR, "_updateWithSafetyMonitorHandles, empty handle", buf, 2u);
}

@end