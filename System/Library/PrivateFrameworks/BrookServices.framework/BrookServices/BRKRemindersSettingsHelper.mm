@interface BRKRemindersSettingsHelper
- (BOOL)areRemindersAvailable;
- (BOOL)isMeCardAvailable;
- (BRKRemindersSettingsDelegate)delegate;
- (BRKRemindersSettingsHelper)initWithDelegate:(id)delegate settings:(id)settings;
- (id)_handwashingAppBundleLocationManager;
- (id)_handwashingLocationManager;
- (id)meContactWithKeysToFetch:(id)fetch;
- (id)remindersFooterTextAndLinkString;
- (void)_fetchLocationAuthorizationStatus;
- (void)_fetchLocationAvailableStatus;
- (void)_isCoreRoutineHomeAvailableWithCompletion:(id)completion;
- (void)_updateWithLocationAuthorizationStatus:(int)status manager:(id)manager;
- (void)dealloc;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)requestLocationAuthorizationIfNeeded;
- (void)setCoreRoutineAvailable:(BOOL)available;
- (void)setLocationAuthorizationValid:(BOOL)valid;
- (void)setLocationAvailable:(BOOL)available;
- (void)update;
@end

@implementation BRKRemindersSettingsHelper

- (BRKRemindersSettingsHelper)initWithDelegate:(id)delegate settings:(id)settings
{
  delegateCopy = delegate;
  settingsCopy = settings;
  v20.receiver = self;
  v20.super_class = BRKRemindersSettingsHelper;
  v8 = [(BRKRemindersSettingsHelper *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_brookSettings, settings);
    v10 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
    v9->_contactStoreAuthorizationStatus = v10;
    if (v10 == 3)
    {
      v11 = [MEMORY[0x277CBDAB8] storeWithOptions:1];
      contactStore = v9->_contactStore;
      v9->_contactStore = v11;
    }

    defaultManager = [MEMORY[0x277D01280] defaultManager];
    routineManager = v9->_routineManager;
    v9->_routineManager = defaultManager;

    objc_initWeak(&location, v9);
    brookSettings = v9->_brookSettings;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__BRKRemindersSettingsHelper_initWithDelegate_settings___block_invoke;
    v17[3] = &unk_278D28B50;
    objc_copyWeak(&v18, &location);
    [(BRKSettings *)brookSettings isLocationAuthFlowEnabledWithCompletionHandler:v17];
    v9->_locationAuthorizationValid = 1;
    *&v9->_coreRoutineAvailable = 257;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __56__BRKRemindersSettingsHelper_initWithDelegate_settings___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "Selecting handwashing location manager with auth flow enabled result: %d", v10, 8u);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (a2)
  {
    [v6 _handwashingAppBundleLocationManager];
  }

  else
  {
    [v6 _handwashingLocationManager];
  }
  v8 = ;
  v9 = WeakRetained[5];
  WeakRetained[5] = v8;
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;

  v4.receiver = self;
  v4.super_class = BRKRemindersSettingsHelper;
  [(BRKRemindersSettingsHelper *)&v4 dealloc];
}

- (BOOL)areRemindersAvailable
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(BRKRemindersSettingsHelper *)self isLocationAvailable])
  {
    isLocationAuthorizationValid = [(BRKRemindersSettingsHelper *)self isLocationAuthorizationValid];
  }

  else
  {
    isLocationAuthorizationValid = 0;
  }

  v4 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromBOOL();
    v7 = 136315394;
    v8 = "[BRKRemindersSettingsHelper areRemindersAvailable]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  return isLocationAuthorizationValid;
}

- (BOOL)isMeCardAvailable
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277CBD018];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v4 = [(BRKRemindersSettingsHelper *)self meContactWithKeysToFetch:v3];

  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v8 = 136315394;
    v9 = "[BRKRemindersSettingsHelper isMeCardAvailable]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  return v4 != 0;
}

- (void)setCoreRoutineAvailable:(BOOL)available
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_coreRoutineAvailable != available)
  {
    self->_coreRoutineAvailable = available;
    v4 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromBOOL();
      v7 = 136315394;
      v8 = "[BRKRemindersSettingsHelper setCoreRoutineAvailable:]";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s -> %@", &v7, 0x16u);
    }

    delegate = [(BRKRemindersSettingsHelper *)self delegate];
    [delegate remindersSettingsDidUpdate:self];
  }
}

- (void)setLocationAvailable:(BOOL)available
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_locationAvailable != available)
  {
    self->_locationAvailable = available;
    v4 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromBOOL();
      v7 = 136315394;
      v8 = "[BRKRemindersSettingsHelper setLocationAvailable:]";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s -> %@", &v7, 0x16u);
    }

    delegate = [(BRKRemindersSettingsHelper *)self delegate];
    [delegate remindersSettingsDidUpdate:self];
  }
}

- (void)setLocationAuthorizationValid:(BOOL)valid
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_locationAuthorizationValid != valid)
  {
    self->_locationAuthorizationValid = valid;
    v4 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromBOOL();
      v7 = 136315394;
      v8 = "[BRKRemindersSettingsHelper setLocationAuthorizationValid:]";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s -> %@", &v7, 0x16u);
    }

    delegate = [(BRKRemindersSettingsHelper *)self delegate];
    [delegate remindersSettingsDidUpdate:self];
  }
}

- (void)requestLocationAuthorizationIfNeeded
{
  objc_initWeak(&location, self);
  brookSettings = self->_brookSettings;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__BRKRemindersSettingsHelper_requestLocationAuthorizationIfNeeded__block_invoke;
  v4[3] = &unk_278D28B50;
  objc_copyWeak(&v5, &location);
  [(BRKSettings *)brookSettings isLocationAuthFlowEnabledWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__BRKRemindersSettingsHelper_requestLocationAuthorizationIfNeeded__block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"requestAlwaysAuthorization";
    if (a2)
    {
      v5 = @"requestWhenInUseAuthorization";
    }

    v9 = 136315394;
    v10 = "[BRKRemindersSettingsHelper requestLocationAuthorizationIfNeeded]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: requesting %@ location authorization", &v9, 0x16u);
  }

  v6 = WeakRetained[5];
  if (a2)
  {
    [v6 requestWhenInUseAuthorization];
    v7 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v8 = "[strongSelf.locationManager requestWhenInUseAuthorization]";
LABEL_10:
      _os_log_impl(&dword_241EE4000, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 2u);
    }
  }

  else
  {
    [v6 requestAlwaysAuthorization];
    v7 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v8 = "[strongSelf.locationManager requestAlwaysAuthorization]";
      goto LABEL_10;
    }
  }
}

- (void)update
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BRKRemindersSettingsHelper update]";
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(BRKRemindersSettingsHelper *)self _fetchLocationAvailableStatus];
  [(BRKRemindersSettingsHelper *)self _fetchLocationAuthorizationStatus];
}

- (id)remindersFooterTextAndLinkString
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = +[BRKSettings remindersSettingFooter];
  if ([(BRKRemindersSettingsHelper *)self contactStoreAuthorizationStatus]!= 3)
  {
    v5 = +[BRKSettings remindersFooterExplanationContactStoreNotAuthorized];
    goto LABEL_10;
  }

  if (![(BRKRemindersSettingsHelper *)self isCoreRoutineAvailable])
  {
    v5 = +[BRKSettings remindersFooterExplanationSignificantLocationsUnavailable];
LABEL_10:
    v4 = v5;
    v6 = 0;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (![(BRKRemindersSettingsHelper *)self isMeCardAvailable]&& ![(BRKRemindersSettingsHelper *)self isLocationAvailable])
  {
    v11 = +[BRKSettings remindersFooterExplanationNoLocationOrMeCard];
    goto LABEL_20;
  }

  if (![(BRKRemindersSettingsHelper *)self isLocationAvailable])
  {
    v11 = +[BRKSettings remindersFooterExplanationNoLocation];
LABEL_20:
    v4 = v11;
    v12 = +[BRKSettings remindersFooterLinkTitleContacts];
    goto LABEL_22;
  }

  if ([(BRKRemindersSettingsHelper *)self isLocationAuthorizationValid])
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = +[BRKSettings remindersFooterExplanationInavlidLocationAuth];
  v12 = +[BRKSettings remindersFooterLinkTitleLocation];
LABEL_22:
  v6 = v12;
  if (v4)
  {
LABEL_11:
    v7 = +[BRKSettings remindersFooterExplanationFormat];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v3, v4];

    v3 = v8;
  }

LABEL_12:
  if (v6)
  {
    v14[0] = v3;
    v14[1] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

    goto LABEL_15;
  }

LABEL_14:
  v13 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
LABEL_15:

  return v9;
}

- (id)meContactWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  contactStore = [(BRKRemindersSettingsHelper *)self contactStore];
  v6 = [contactStore _ios_meContactWithKeysToFetch:fetchCopy error:0];

  return v6;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v11 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(authorizationCopy, "authorizationStatus")}];
    v7 = 136315394;
    v8 = "[BRKRemindersSettingsHelper locationManagerDidChangeAuthorization:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  -[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:](self, "_updateWithLocationAuthorizationStatus:manager:", [authorizationCopy authorizationStatus], authorizationCopy);
}

- (id)_handwashingLocationManager
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/HandwashingLocation.bundle"];
  v4 = objc_alloc(MEMORY[0x277CBFC10]);
  v5 = [v4 initWithEffectiveBundle:v3 delegate:self onQueue:MEMORY[0x277D85CD0]];
  v6 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BRKRemindersSettingsHelper _handwashingLocationManager]";
    _os_log_impl(&dword_241EE4000, v6, OS_LOG_TYPE_DEFAULT, "%s [[CLLocationManager alloc] initWithEffectiveBundle:bundle delegate:self onQueue:dispatch_get_main_queue()]", &v11, 0xCu);
  }

  if (v5)
  {
    v7 = [MEMORY[0x277CBFBF8] newAssertionForBundle:v3 withReason:@"Accepting Handwashing terms"];
    [(BRKRemindersSettingsHelper *)self setInUseAssertion:v7];

    v8 = v5;
  }

  else
  {
    v9 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BRKRemindersSettingsHelper _handwashingLocationManager];
    }

    [(BRKRemindersSettingsHelper *)self setLocationAvailable:0];
    [(BRKRemindersSettingsHelper *)self setLocationAuthorizationValid:0];
  }

  return v5;
}

- (id)_handwashingAppBundleLocationManager
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBFC10]);
  v4 = [v3 initWithEffectiveBundleIdentifier:@"com.apple.brook.BrookUI" delegate:self onQueue:MEMORY[0x277D85CD0]];
  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[BRKRemindersSettingsHelper _handwashingAppBundleLocationManager]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s [[CLLocationManager alloc] initWithEffectiveBundleIdentifier:BROOK_UI_APP_BUNDLE_IDENTIFIER delegate:self onQueue:dispatch_get_main_queue()]", &v10, 0xCu);
  }

  if (v4)
  {
    v6 = [MEMORY[0x277CBFBF8] newAssertionForBundleIdentifier:@"com.apple.brook.BrookUI" withReason:@"Accepting Handwashing terms"];
    [(BRKRemindersSettingsHelper *)self setInUseAssertion:v6];

    v7 = v4;
  }

  else
  {
    v8 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BRKRemindersSettingsHelper _handwashingAppBundleLocationManager];
    }

    [(BRKRemindersSettingsHelper *)self setLocationAvailable:0];
    [(BRKRemindersSettingsHelper *)self setLocationAuthorizationValid:0];
  }

  return v4;
}

- (void)_fetchLocationAuthorizationStatus
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[BRKRemindersSettingsHelper _fetchLocationAuthorizationStatus]";
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  locationManager = [(BRKRemindersSettingsHelper *)self locationManager];
  authorizationStatus = [locationManager authorizationStatus];
  locationManager2 = [(BRKRemindersSettingsHelper *)self locationManager];
  [(BRKRemindersSettingsHelper *)self _updateWithLocationAuthorizationStatus:authorizationStatus manager:locationManager2];
}

- (void)_fetchLocationAvailableStatus
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke;
  v3[3] = &unk_278D28BA0;
  objc_copyWeak(&v4, &location);
  [(BRKRemindersSettingsHelper *)self _isCoreRoutineHomeAvailableWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke_2;
  v5[3] = &unk_278D28B78;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
}

void __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLocationAvailable:*(a1 + 40)];
  [WeakRetained setCoreRoutineAvailable:*(a1 + 41)];
}

- (void)_isCoreRoutineHomeAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  routineManager = [(BRKRemindersSettingsHelper *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke;
  v7[3] = &unk_278D28BC8;
  v8 = completionCopy;
  v6 = completionCopy;
  [BRKRoutineManager fetchLocationsOfInterestWithSingleRetryOfType:0 routineManager:routineManager withHandler:v7];
}

void __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 code];
    v9 = BRKLoggingObjectForDomain(13);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8 == 2)
    {
      if (v10)
      {
        __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_2();
      }
    }

    else if (v10)
    {
      __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_1();
    }
  }

  else
  {
    v11 = [v5 count];
    v9 = BRKLoggingObjectForDomain(13);
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        v13 = 136315138;
        v14 = "[BRKRemindersSettingsHelper _isCoreRoutineHomeAvailableWithCompletion:]_block_invoke";
        _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s: found at least one location of interest for RTLocationOfInterestTypeHome", &v13, 0xCu);
      }
    }

    else if (v12)
    {
      v13 = 136315138;
      v14 = "[BRKRemindersSettingsHelper _isCoreRoutineHomeAvailableWithCompletion:]_block_invoke";
      _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s: no locations of interest for RTLocationOfInterestTypeHome", &v13, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_updateWithLocationAuthorizationStatus:(int)status manager:(id)manager
{
  managerCopy = manager;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__BRKRemindersSettingsHelper__updateWithLocationAuthorizationStatus_manager___block_invoke;
  v8[3] = &unk_278D28BF0;
  objc_copyWeak(&v10, &location);
  statusCopy = status;
  v9 = managerCopy;
  v7 = managerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __77__BRKRemindersSettingsHelper__updateWithLocationAuthorizationStatus_manager___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 48);
  v4 = BRKLoggingObjectForDomain(13);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 3)
  {
    if (v5)
    {
      [*(a1 + 32) _limitsPrecision];
      v6 = NSStringFromBOOL();
      v10 = 136315394;
      v11 = "[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: location auth is always, _limitsPrecision: %@", &v10, 0x16u);
    }

    v7 = [*(a1 + 32) _limitsPrecision] ^ 1;
    v8 = WeakRetained;
    goto LABEL_13;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
      v10 = 136315394;
      v11 = "[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: location auth is NOT always (%@)", &v10, 0x16u);
    }

    v8 = WeakRetained;
    v7 = 0;
LABEL_13:
    [v8 setLocationAuthorizationValid:v7];
    goto LABEL_14;
  }

  if (v5)
  {
    v10 = 136315138;
    v11 = "[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:]_block_invoke";
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: location auth is undetermined", &v10, 0xCu);
  }

LABEL_14:
}

- (BRKRemindersSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end