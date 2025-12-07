@interface NLSessionActivityWeatherManager
- (NLSessionActivityWeatherManagerDelegate)delegate;
- (void)_activate;
- (void)_deactivate;
- (void)_handleLocations:(id)locations;
- (void)_logLocationTransmittedForChinaRegulatoryRequirement;
- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)status locationManager:(id)manager;
- (void)dealloc;
- (void)locationDidFailWithError:(id)error locationManager:(id)manager;
- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager;
- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager;
- (void)manager:(id)manager updatedSummary:(id)summary;
- (void)setActive:(BOOL)active;
@end

@implementation NLSessionActivityWeatherManager

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NLWeatherSummaryManager *)self->_weatherManager cancelFetch];
  v2.receiver = selfCopy;
  v2.super_class = NLSessionActivityWeatherManager;
  [(NLSessionActivityWeatherManager *)&v2 dealloc];
}

- (void)setActive:(BOOL)active
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a2;
  activeCopy = active;
  if (self->_active != active)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (activeCopy)
      {
        v3 = "active";
      }

      else
      {
        v3 = "inactive";
      }

      __os_log_helper_16_2_1_8_34(v8, v3);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] Weather Manager going %{public}s", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_active = activeCopy;
    if (activeCopy)
    {
      [(NLSessionActivityWeatherManager *)selfCopy _activate];
    }

    else
    {
      [(NLSessionActivityWeatherManager *)selfCopy _deactivate];
    }
  }
}

- (void)_activate
{
  v2 = +[WOCoreLocationManager sharedManager];
  [(WOCoreLocationManager *)v2 addObserver:self];
  MEMORY[0x277D82BD8](v2);
}

- (void)_deactivate
{
  v2 = +[WOCoreLocationManager sharedManager];
  [(WOCoreLocationManager *)v2 removeObserver:self];
  [(NLWeatherSummaryManager *)self->_weatherManager cancelFetch];
  objc_storeStrong(&self->_weatherManager, 0);
}

- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  v6 = 0;
  objc_storeStrong(&v6, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, [location[0] count]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager locationDidUpdateWithLocations %lu", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivityWeatherManager *)selfCopy _handleLocations:location[0]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)status locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  statusCopy = status;
  location = 0;
  objc_storeStrong(&location, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v9, statusCopy);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager authorization status changed to: %d", v9, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
}

- (void)locationDidFailWithError:(id)error locationManager:(id)manager
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v11 = 0;
  objc_storeStrong(&v11, manager);
  _HKInitializeLogging();
  v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v9 = 16;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    log = v10;
    type = v9;
    v6 = [location[0] description];
    v8 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_1_8_64(v13, v8);
    _os_log_error_impl(&dword_20AEA4000, log, type, "[weather] LocationManager locationDidFail error: %@", v13, 0xCu);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, stateCopy);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] LocationManager state changed to: %ld", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
}

- (void)_handleLocations:(id)locations
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  reverseObjectEnumerator = [location[0] reverseObjectEnumerator];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](reverseObjectEnumerator);
  v25 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
  if (v25)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v25;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(__b[1] + 8 * v22);
      [v40 horizontalAccuracy];
      if (v3 >= 0.0)
      {
        break;
      }

      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (!v23)
        {
          goto LABEL_9;
        }
      }
    }

    [(NLSessionActivityWeatherManager *)selfCopy setLocation:v40];
    v18 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v18;
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __52__NLSessionActivityWeatherManager__handleLocations___block_invoke;
    v37 = &unk_277D88890;
    v38 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v33);
    MEMORY[0x277D82BD8](queue);
    v32 = 2;
    objc_storeStrong(&v38, 0);
  }

  else
  {
LABEL_9:
    v32 = 0;
  }

  *&v5 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  location = [(NLSessionActivityWeatherManager *)selfCopy location];
  MEMORY[0x277D82BD8](location);
  if (location)
  {
    _HKInitializeLogging();
    v28 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v28;
      v14 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_20AEA4000, v13, v14, "[weather] Fetch current weather, log location, stop location updates", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    if (!selfCopy->_weatherManager)
    {
      v11 = [NLWeatherSummaryManager alloc];
      location2 = [(NLSessionActivityWeatherManager *)selfCopy location];
      v6 = [NLWeatherSummaryManager initWithLocation:v11 delegate:"initWithLocation:delegate:"];
      weatherManager = selfCopy->_weatherManager;
      selfCopy->_weatherManager = v6;
      MEMORY[0x277D82BD8](weatherManager);
      *&v8 = MEMORY[0x277D82BD8](location2).n128_u64[0];
      [(NLWeatherSummaryManager *)selfCopy->_weatherManager fetchSummary];
    }

    v10 = +[WOCoreLocationManager sharedManager];
    [(WOCoreLocationManager *)v10 removeObserver:selfCopy];
    *&v9 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(NLSessionActivityWeatherManager *)selfCopy _logLocationTransmittedForChinaRegulatoryRequirement];
    v32 = 0;
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v16 = type;
      __os_log_helper_16_0_0(v29);
      _os_log_impl(&dword_20AEA4000, log, v16, "[weather] location nil, waiting for another location", v29, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v32 = 1;
  }

  objc_storeStrong(&reverseObjectEnumerator, 0);
  objc_storeStrong(location, 0);
}

double __52__NLSessionActivityWeatherManager__handleLocations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained locationDidUpdate:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_logLocationTransmittedForChinaRegulatoryRequirement
{
  location[3] = self;
  location[2] = a2;
  location[1] = ct_green_tea_logger_create();
  location[0] = getCTGreenTeaOsLogHandle();
  if (location[0])
  {
    oslog = MEMORY[0x277D82BE0](location[0]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v3 = type;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_20AEA4000, log, v3, "Obtained location update for local weather forecast during workout.", v4, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
  ct_green_tea_logger_destroy();
}

- (void)manager:(id)manager updatedSummary:(id)summary
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v48 = 0;
  objc_storeStrong(&v48, summary);
  if (location[0] == selfCopy->_weatherManager)
  {
    if (v48)
    {
      isDaytime = [v48 isDaytime];
      [(NLSessionActivityWeatherManager *)selfCopy setIsDaytime:isDaytime];
      temperature = [v48 temperature];
      [(NLSessionActivityWeatherManager *)selfCopy setCurrentTemperature:?];
      *&v5 = MEMORY[0x277D82BD8](temperature).n128_u64[0];
      humidity = [v48 humidity];
      [(NLSessionActivityWeatherManager *)selfCopy setCurrentHumidity:?];
      *&v6 = MEMORY[0x277D82BD8](humidity).n128_u64[0];
      airQualityIndex = [v48 airQualityIndex];
      [(NLSessionActivityWeatherManager *)selfCopy setCurrentAirQualityIndex:?];
      *&v7 = MEMORY[0x277D82BD8](airQualityIndex).n128_u64[0];
      condition = [v48 condition];
      [(NLSessionActivityWeatherManager *)selfCopy setHkPrivateWeatherCondition:condition];
      sourceName = [v48 sourceName];
      [(NLSessionActivityWeatherManager *)selfCopy setSourceName:?];
      *&v9 = MEMORY[0x277D82BD8](sourceName).n128_u64[0];
      [v48 coordinate];
      v42 = v10;
      v43 = v11;
      _HKInitializeLogging();
      v41 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v40 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v41;
        v25 = v40;
        v12 = objc_opt_class();
        v20 = MEMORY[0x277D82BE0](v12);
        v39 = v20;
        v21 = v42;
        v22 = v43;
        isDaytime2 = [(NLSessionActivityWeatherManager *)selfCopy isDaytime];
        v14 = @"YES";
        if (!isDaytime2)
        {
          v14 = @"NO";
        }

        v23 = v14;
        currentTemperature = [(NLSessionActivityWeatherManager *)selfCopy currentTemperature];
        currentHumidity = [(NLSessionActivityWeatherManager *)selfCopy currentHumidity];
        currentAirQualityIndex = [(NLSessionActivityWeatherManager *)selfCopy currentAirQualityIndex];
        __os_log_helper_16_2_7_8_66_8_0_8_0_8_66_8_66_8_66_8_66(v52, v20, v21, v22, v23, currentTemperature, currentHumidity, currentAirQualityIndex);
        _os_log_impl(&dword_20AEA4000, v24, v25, "[weather] %{public}@ received forecast data for <%f, %f>: Is Daytime? %{public}@, Temperature? %{public}@, Humidity? %{public}@, AirQualityIndex? %{public}@.", v52, 0x48u);
        MEMORY[0x277D82BD8](currentAirQualityIndex);
        MEMORY[0x277D82BD8](currentHumidity);
        MEMORY[0x277D82BD8](currentTemperature);
        objc_storeStrong(&v39, 0);
      }

      objc_storeStrong(&v41, 0);
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained weatherDidUpdate:selfCopy];
      *&v15 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
    }

    else
    {
      _HKInitializeLogging();
      v38 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v37 = 16;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v17 = v38;
        v18 = v37;
        v16 = objc_opt_class();
        v36 = MEMORY[0x277D82BE0](v16);
        __os_log_helper_16_2_1_8_66(v51, v36);
        _os_log_error_impl(&dword_20AEA4000, v17, v18, "[weather] %{public}@ did not receive forecast data.", v51, 0xCu);
        objc_storeStrong(&v36, 0);
      }

      objc_storeStrong(&v38, 0);
    }

    [(NLSessionActivityWeatherManager *)selfCopy setActive:0, v15];
    v44 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v47 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      log = v47;
      type = v46;
      __os_log_helper_16_0_0(v45);
      _os_log_impl(&dword_20AEA4000, log, type, "[weather] Received a summary but not for our manager, stale, ignoring.", v45, 2u);
    }

    objc_storeStrong(&v47, 0);
    v44 = 1;
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
}

- (NLSessionActivityWeatherManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end