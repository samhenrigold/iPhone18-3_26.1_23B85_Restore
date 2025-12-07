@interface WeatherPreferences
+ (BOOL)performUpgradeOfPersistence:(id)persistence fileManager:(id)manager error:(id *)error;
+ (WeatherPreferences)preferencesWithPersistence:(id)persistence;
+ (id)readInternalDefaultValueForKey:(id)key;
+ (id)serviceDebuggingPath;
+ (id)sharedPreferences;
+ (id)userDefaultsPersistence;
- (BOOL)_defaultsAreValid;
- (BOOL)_defaultsCurrent;
- (BOOL)areCitiesDefault:(id)default;
- (BOOL)ensureValidSelectedCityID;
- (BOOL)isLocalWeatherEnabled;
- (City)localWeatherCity;
- (SynchronizedDefaultsDelegate)syncDelegate;
- (WeatherPreferences)init;
- (WeatherPreferences)initWithPersistence:(id)persistence;
- (id)UUID;
- (id)_cacheDirectoryPath;
- (id)_defaultCities;
- (id)citiesByConsolidatingDuplicates:(id)duplicates originalOrder:(id)order;
- (id)citiesByConsolidatingDuplicatesInBucket:(id)bucket;
- (id)cityFromPreferencesDictionary:(id)dictionary;
- (id)loadSavedCities;
- (id)readInternalDefaultValueForKey:(id)key;
- (int)loadActiveCity;
- (int)loadDefaultSelectedCity;
- (int)userTemperatureUnit;
- (void)_clearCachedObjects;
- (void)adjustPrefsForLocalWeatherEnabled:(BOOL)enabled;
- (void)forceSyncCloudPreferences;
- (void)resetLocale;
- (void)saveToDiskWithCities:(id)cities;
- (void)saveToDiskWithCities:(id)cities activeCity:(unint64_t)city;
- (void)saveToDiskWithCity:(id)city forActiveIndex:(unint64_t)index;
- (void)saveToDiskWithLocalWeatherCity:(id)city;
- (void)saveToUbiquitousStore;
- (void)setActiveCity:(unint64_t)city;
- (void)setCelsius:(BOOL)celsius;
- (void)setDefaultCities:(id)cities;
- (void)setDefaultSelectedCity:(unint64_t)city;
- (void)setLocalWeatherEnabled:(BOOL)enabled;
- (void)setSyncDelegate:(id)delegate;
- (void)setupUbiquitousStoreIfNeeded;
- (void)synchronizeStateToDiskDoNotify:(BOOL)notify;
- (void)temperatureUnitObserver:(id)observer didChangeTemperatureUnitTo:(int)to;
@end

@implementation WeatherPreferences

+ (id)sharedPreferences
{
  if (MKBDeviceUnlockedSinceBoot() || (v2 = MKBGetDeviceLockState(), v3 = 0, v2 == 3))
  {
    if (sharedPreferences_onceToken != -1)
    {
      +[WeatherPreferences sharedPreferences];
    }

    v3 = sharedPreferences___sharedPreferences;
  }

  return v3;
}

void __39__WeatherPreferences_sharedPreferences__block_invoke()
{
  if (!sharedPreferences___sharedPreferences)
  {
    v0 = objc_alloc_init(WeatherPreferences);
    v1 = sharedPreferences___sharedPreferences;
    sharedPreferences___sharedPreferences = v0;

    v2 = sharedPreferences___sharedPreferences;

    [v2 setupUbiquitousStoreIfNeeded];
  }
}

+ (id)userDefaultsPersistence
{
  v17 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) _initWithSuiteName:@"group.com.apple.weather" container:v3];
  v5 = WALogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    v7 = [dictionaryRepresentation valueForKey:@"Cities"];
    v8 = [v7 valueForKeyPath:@"Name"];
    v11 = 136315650;
    v12 = "+[WeatherPreferences userDefaultsPersistence]";
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_INFO, "%s tempGroupUrl? %@, Cities: %@", &v11, 0x20u);
  }

  v9 = [[WeatherUserDefaults alloc] initWithUserDefaults:v4];

  return v9;
}

+ (WeatherPreferences)preferencesWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v4 = [[WeatherPreferences alloc] initWithPersistence:persistenceCopy];

  return v4;
}

- (WeatherPreferences)init
{
  userDefaultsPersistence = [objc_opt_class() userDefaultsPersistence];
  v4 = [(WeatherPreferences *)self initWithPersistence:userDefaultsPersistence];

  return v4;
}

- (WeatherPreferences)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v14.receiver = self;
  v14.super_class = WeatherPreferences;
  v6 = [(WeatherPreferences *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistence, persistence);
    v8 = +[WeatherInternalPreferences sharedInternalPreferences];
    v9 = [v8 objectForKey:@"ServiceDebugging"];
    v7->_serviceDebugging = [v9 BOOLValue];

    v10 = +[WeatherInternalPreferences sharedInternalPreferences];
    v11 = [v10 objectForKey:@"LogLocaleAndUnits"];
    v7->_logUnitsAndLocale = [v11 BOOLValue];

    mEMORY[0x277D7B2D8] = [MEMORY[0x277D7B2D8] sharedObserver];
    [mEMORY[0x277D7B2D8] addObserver:v7];
  }

  return v7;
}

- (void)setSyncDelegate:(id)delegate
{
  delegateCopy = delegate;
  cloudPreferences = [(WeatherPreferences *)self cloudPreferences];
  [cloudPreferences setSyncDelegate:delegateCopy];
}

- (void)setupUbiquitousStoreIfNeeded
{
  cloudPreferences = [(WeatherPreferences *)self cloudPreferences];

  if (!cloudPreferences)
  {
    v4 = [[WeatherCloudPreferences alloc] initWithLocalPreferences:self];
    [(WeatherPreferences *)self setCloudPreferences:v4];
  }
}

- (BOOL)ensureValidSelectedCityID
{
  loadSavedCities = [(WeatherPreferences *)self loadSavedCities];
  v4 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"DefaultSelectedCity"];
  v5 = v4;
  if (v4)
  {
    intValue = [v4 intValue];
    if ([loadSavedCities count] > intValue)
    {
      v7 = [loadSavedCities objectAtIndexedSubscript:{objc_msgSend(v5, "intValue")}];
      if ([v7 isLocalWeatherCity])
      {
        locationID = @"_localCity_";
      }

      else
      {
        locationID = [v7 locationID];
      }

      v9 = locationID;
      [(WeatherPreferences *)self setDefaultSelectedCityID:locationID];
    }

    [(WeatherPreferencesPersistence *)self->_persistence setObject:0 forKey:@"DefaultSelectedCity"];
    [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:0];
  }

  return v5 != 0;
}

- (void)adjustPrefsForLocalWeatherEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(WeatherPreferences *)self isLocalWeatherEnabled]!= enabled)
  {
    [(WeatherPreferences *)self setLocalWeatherEnabled:enabledCopy];

    [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
  }
}

- (void)setCelsius:(BOOL)celsius
{
  celsiusCopy = celsius;
  v16 = *MEMORY[0x277D85DE8];
  if (self->_logUnitsAndLocale)
  {
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [(WeatherPreferences *)self userTemperatureUnit];
      v6 = NSStringFromWFTemperatureUnit();
      v7 = v6;
      v8 = @"FAHRENHEIT";
      if (celsiusCopy)
      {
        v8 = @"CELSIUS";
      }

      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Changing temperature units from %@ to %@", &v12, 0x16u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D7B2D0]) initWithResultHandler:0];
  v10 = v9;
  if (celsiusCopy)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v9 setTemperatureUnit:v11];
  [v10 start];
}

- (int)userTemperatureUnit
{
  mEMORY[0x277D7B2D8] = [MEMORY[0x277D7B2D8] sharedObserver];
  temperatureUnit = [mEMORY[0x277D7B2D8] temperatureUnit];

  return temperatureUnit;
}

- (BOOL)_defaultsAreValid
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence stringForKey:@"PrefsVersion"];
  v3 = 0;
  do
  {
    v4 = [v2 isEqualToString:SupportedPrefsVersions[v3]];
    if (v4)
    {
      break;
    }
  }

  while (v3++ != 7);

  return v4;
}

- (BOOL)_defaultsCurrent
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence stringForKey:@"PrefsVersion"];
  v3 = v2;
  v4 = !v2 || [v2 isEqualToString:@"2.1"];

  return v4;
}

- (id)cityFromPreferencesDictionary:(id)dictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (![(WeatherPreferences *)self _defaultsCurrent])
  {
    v12[0] = 0x28822C008;
    v12[1] = 0x28822C028;
    v12[2] = 0x28822C048;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__WeatherPreferences_cityFromPreferencesDictionary___block_invoke;
    v10[3] = &unk_279E68990;
    v11 = v5;
    v6 = v5;
    v7 = [dictionaryCopy na_filter:v10];

    dictionaryCopy = v7;
  }

  v8 = [CityPersistenceConversions cityFromDictionary:dictionaryCopy];

  return v8;
}

- (City)localWeatherCity
{
  v3 = [(WeatherPreferencesPersistence *)self->_persistence dictionaryForKey:@"LocalWeather"];
  if (v3)
  {
    v4 = [(WeatherPreferences *)self cityFromPreferencesDictionary:v3];
    [v4 setIsLocalWeatherCity:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)saveToDiskWithLocalWeatherCity:(id)city
{
  persistence = self->_persistence;
  v5 = [(WeatherPreferences *)self preferencesDictionaryForCity:city];
  [(WeatherPreferencesPersistence *)persistence setObject:v5 forKey:@"LocalWeather"];

  [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
}

- (void)saveToDiskWithCity:(id)city forActiveIndex:(unint64_t)index
{
  persistence = self->_persistence;
  cityCopy = city;
  v8 = [(WeatherPreferencesPersistence *)persistence arrayForKey:@"Cities"];
  v12 = [v8 mutableCopy];

  v9 = [(WeatherPreferences *)self preferencesDictionaryForCity:cityCopy];

  if (v9 && [v12 count] > index)
  {
    [v12 replaceObjectAtIndex:index withObject:v9];
  }

  [(WeatherPreferencesPersistence *)self->_persistence setObject:v12 forKey:@"Cities"];
  v10 = self->_persistence;
  date = [MEMORY[0x277CBEAA8] date];
  [(WeatherPreferencesPersistence *)v10 setObject:date forKey:@"LastUpdated"];

  [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
}

- (void)saveToDiskWithCities:(id)cities
{
  v18 = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  v5 = +[WeatherInternalPreferences sharedInternalPreferences];
  v6 = [v5 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  array = WALogForCategory(5);
  v8 = os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_272ACF000, array, OS_LOG_TYPE_DEFAULT, "[WeatherPreferences] AlwaysUseLocallyAvailableSavedCities = 1, do not save new cities to disk.", &v16, 2u);
    }
  }

  else
  {
    if (v8)
    {
      v16 = 138412290;
      v17 = citiesCopy;
      _os_log_impl(&dword_272ACF000, array, OS_LOG_TYPE_DEFAULT, "Saving cities to disk: %@", &v16, 0xCu);
    }

    array = [MEMORY[0x277CBEB18] array];
    v9 = [citiesCopy count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = [citiesCopy objectAtIndex:i];
        if (([v12 isLocalWeatherCity] & 1) == 0 && (objc_msgSend(v12, "isTransient") & 1) == 0)
        {
          v13 = [(WeatherPreferences *)self preferencesDictionaryForCity:v12];
          [array na_safeAddObject:v13];
        }
      }
    }

    [(WeatherPreferencesPersistence *)self->_persistence setObject:array forKey:@"Cities"];
    persistence = self->_persistence;
    date = [MEMORY[0x277CBEAA8] date];
    [(WeatherPreferencesPersistence *)persistence setObject:date forKey:@"LastUpdated"];

    [(WeatherPreferencesPersistence *)self->_persistence setObject:@"The Weather Channel" forKey:@"ServiceProvider"];
    [(WeatherPreferencesPersistence *)self->_persistence setObject:@"2.1" forKey:@"PrefsVersion"];
    [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
  }
}

- (void)saveToDiskWithCities:(id)cities activeCity:(unint64_t)city
{
  [(WeatherPreferences *)self saveToDiskWithCities:cities];
  persistence = self->_persistence;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:city];
  [(WeatherPreferencesPersistence *)persistence setObject:v7 forKey:@"ActiveCity"];

  [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
}

- (id)_defaultCities
{
  v2 = __defaultCities;
  if (!__defaultCities)
  {
    if (_defaultCities_onceToken != -1)
    {
      [WeatherPreferences _defaultCities];
    }

    dispatch_sync(_defaultCities_ALCityManagerDispatchQueue, &__block_literal_global_109);
    v2 = __defaultCities;
  }

  return v2;
}

uint64_t __36__WeatherPreferences__defaultCities__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.weather.ALCityManagerDispatchQueue", 0);
  v1 = _defaultCities_ALCityManagerDispatchQueue;
  _defaultCities_ALCityManagerDispatchQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __36__WeatherPreferences__defaultCities__block_invoke_2()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = CFLocaleCopyCurrent();
  Value = CFLocaleGetValue(v1, *MEMORY[0x277CBEE98]);
  v3 = CFLocaleGetValue(v1, *MEMORY[0x277CBEEC8]);
  v4 = [MEMORY[0x277CEC588] sharedManager];
  v5 = [v4 defaultCitiesForLocaleCode:v3];

  if (v5 || ([MEMORY[0x277CEC588] sharedManager], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "defaultCitiesForLocaleCode:", Value), v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    if ([v5 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = [CityPersistenceConversions cityFromALCity:*(*(&v13 + 1) + 8 * v10), v13];
            [v0 na_safeAddObject:v11];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }

  CFRelease(v1);
  v12 = __defaultCities;
  __defaultCities = v0;
}

- (void)setDefaultCities:(id)cities
{
  v26 = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  v4 = WALogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [citiesCopy valueForKeyPath:@"name"];
    *buf = 136315394;
    v23 = "[WeatherPreferences setDefaultCities:]";
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_INFO, "%s cities: %@", buf, 0x16u);
  }

  if (citiesCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = citiesCopy;
    v7 = citiesCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [CityPersistenceConversions cityFromALCity:v13];
            [v6 na_safeAddObject:v14];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v6 na_safeAddObject:v12];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = __defaultCities;
    __defaultCities = v6;

    citiesCopy = v16;
  }
}

- (id)loadSavedCities
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = WALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v53 = "[WeatherPreferences loadSavedCities]";
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v6 = @"Cities";
  v7 = +[WeatherInternalPreferences sharedInternalPreferences];
  v8 = [v7 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  if (v8)
  {
    v9 = WALogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "[WeatherPreferences] AlwaysUseLocallyAvailableSavedCities = 1, load cities using perf cities key.", buf, 2u);
    }

    v6 = @"PerfCities";
  }

  v10 = [(WeatherPreferencesPersistence *)self->_persistence arrayForKey:v6];
  v11 = [v10 na_filter:&__block_literal_global_121];
  [array2 addObjectsFromArray:v11];

  isLocalWeatherEnabled = [(WeatherPreferences *)self isLocalWeatherEnabled];
  v13 = WALogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:isLocalWeatherEnabled];
    *buf = 138412290;
    v53 = v14;
    _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_DEFAULT, "in loadSavedCities, localWeatherEnabled=%@", buf, 0xCu);
  }

  if (isLocalWeatherEnabled)
  {
    v15 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"LocalWeather"];
    if (v15)
    {
      v16 = [(WeatherPreferences *)self cityFromPreferencesDictionary:v15];
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;
    [v16 setIsLocalWeatherCity:1];
    v18 = WALogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v17;
      _os_log_impl(&dword_272ACF000, v18, OS_LOG_TYPE_DEFAULT, "in loadSavedCities, local weather city = %@", buf, 0xCu);
    }

    [array na_safeAddObject:v17];
  }

  array3 = [MEMORY[0x277CBEB18] array];
  if (array2 && [(WeatherPreferences *)self _defaultsAreValid])
  {
    v43 = v6;
    v45 = array;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = array2;
    obj = array2;
    v21 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 20 - isLocalWeatherEnabled;
      v24 = *v48;
LABEL_20:
      v25 = 0;
      while (1)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(obj);
        }

        selfCopy = self;
        v27 = [(WeatherPreferences *)self cityFromPreferencesDictionary:*(*(&v47 + 1) + 8 * v25)];
        [array3 na_safeAddObject:v27];
        name = [v27 name];
        array4 = [dictionary objectForKey:name];

        if (!array4)
        {
          array4 = [MEMORY[0x277CBEB18] array];
        }

        [array4 addObject:v27];
        name2 = [v27 name];
        [dictionary setObject:array4 forKey:name2];

        v31 = [array3 count];
        self = selfCopy;
        if (v31 == v23)
        {
          break;
        }

        if (v22 == ++v25)
        {
          v22 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v22)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }

    v32 = WALogForCategory(5);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = obj;
      _os_log_impl(&dword_272ACF000, v32, OS_LOG_TYPE_DEFAULT, "Retrieved stored cities: %@", buf, 0xCu);
    }

    v33 = WALogForCategory(5);
    array = v45;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = array3;
      _os_log_impl(&dword_272ACF000, v33, OS_LOG_TYPE_DEFAULT, "Safely add stored cities: %@", buf, 0xCu);
    }

    v34 = [(WeatherPreferences *)self citiesByConsolidatingDuplicates:dictionary originalOrder:array3];

    [v45 addObjectsFromArray:v34];
    loadActiveCity = [(WeatherPreferences *)self loadActiveCity];
    if ([v45 count] <= loadActiveCity)
    {
      -[WeatherPreferences setActiveCity:](self, "setActiveCity:", [v45 count] - 1);
    }

    v36 = WALogForCategory(5);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v34;
      _os_log_impl(&dword_272ACF000, v36, OS_LOG_TYPE_DEFAULT, "Return loaded cities: %@", buf, 0xCu);
    }

    v37 = v45;
    array3 = v34;
    v6 = v43;
    array2 = v44;
  }

  else
  {
    _defaultCities = [(WeatherPreferences *)self _defaultCities];
    [array3 addObjectsFromArray:_defaultCities];

    if (![array count] && !objc_msgSend(array3, "count"))
    {
      v39 = objc_alloc_init(City);
      [(City *)v39 setLatitude:37.3175];
      [(City *)v39 setLongitude:-122.041944];
      [(City *)v39 setName:@"Cupertino"];
      [array addObject:v39];
    }

    [array addObjectsFromArray:array3];
    v40 = WALogForCategory(5);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = array;
      _os_log_impl(&dword_272ACF000, v40, OS_LOG_TYPE_DEFAULT, "No saved cities, and defaults are not valid. Laod new default cities: %@", buf, 0xCu);
    }

    v41 = array;
  }

  return array;
}

- (id)citiesByConsolidatingDuplicates:(id)duplicates originalOrder:(id)order
{
  v32 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  orderCopy = order;
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__WeatherPreferences_citiesByConsolidatingDuplicates_originalOrder___block_invoke;
  v23[3] = &unk_279E689B8;
  v7 = array;
  v24 = v7;
  selfCopy = self;
  v26 = &v27;
  [duplicatesCopy enumerateKeysAndObjectsUsingBlock:v23];
  if (v28[3])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = orderCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __68__WeatherPreferences_citiesByConsolidatingDuplicates_originalOrder___block_invoke_2;
          v18[3] = &unk_279E68358;
          v18[4] = v13;
          v14 = [v7 na_firstObjectPassingTest:v18];
          if (v14)
          {
            [array2 addObject:v14];
            [v7 removeObject:v14];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v10);
    }
  }

  else
  {
    array2 = [MEMORY[0x277CBEB18] arrayWithArray:orderCopy];
  }

  _Block_object_dispose(&v27, 8);

  return array2;
}

void __68__WeatherPreferences_citiesByConsolidatingDuplicates_originalOrder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 count] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v7 firstObject];
    [v4 addObject:v5];
  }

  else
  {
    v5 = [*(a1 + 40) citiesByConsolidatingDuplicatesInBucket:v7];
    [*(a1 + 32) addObjectsFromArray:v5];
    v6 = [v5 count];
    if (v6 != [v7 count])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (id)citiesByConsolidatingDuplicatesInBucket:(id)bucket
{
  v19 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  array = [MEMORY[0x277CBEB18] array];
  firstObject = [bucketCopy firstObject];
  [array addObject:firstObject];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = bucketCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __62__WeatherPreferences_citiesByConsolidatingDuplicatesInBucket___block_invoke;
        v13[3] = &unk_279E68358;
        v13[4] = v11;
        if (([array na_all:v13] & 1) == 0)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (int)loadActiveCity
{
  if ([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG])
  {
    return 0;
  }

  v3 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"ActiveCity"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  intValue = [v3 intValue];

  return intValue;
}

- (void)setActiveCity:(unint64_t)city
{
  persistence = self->_persistence;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:city];
  [(WeatherPreferencesPersistence *)persistence setObject:v4 forKey:@"ActiveCity"];
}

- (int)loadDefaultSelectedCity
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"DefaultSelectedCity"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)setDefaultSelectedCity:(unint64_t)city
{
  persistence = self->_persistence;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:city];
  [(WeatherPreferencesPersistence *)persistence setObject:v4 forKey:@"DefaultSelectedCity"];
}

- (void)synchronizeStateToDiskDoNotify:(BOOL)notify
{
  notifyCopy = notify;
  [(WeatherPreferencesPersistence *)self->_persistence synchronize];
  [(WeatherPreferences *)self saveToUbiquitousStore];
  if (notifyCopy)
  {
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [WeatherPreferences synchronizeStateToDiskDoNotify:v5];
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [defaultCenter postNotificationName:@"WeatherGroupPrefsDidUpdateNotification" object:processName userInfo:0 deliverImmediately:1];
  }
}

- (void)forceSyncCloudPreferences
{
  cloudPreferences = [(WeatherPreferences *)self cloudPreferences];
  [cloudPreferences forceSync];
}

- (id)UUID
{
  p_UUID = &self->_UUID;
  UUID = self->_UUID;
  if (UUID)
  {
    v4 = UUID;
    goto LABEL_9;
  }

  v6 = [(WeatherPreferencesPersistence *)self->_persistence stringForKey:@"UUID"];
  if (v6)
  {
    v7 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"UUIDTimestamp"];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
      v9 = [v7 laterDate:v8];

      if (v9 == v7)
      {
        v15 = [v6 copy];
        v16 = *p_UUID;
        *p_UUID = v15;

        v4 = *p_UUID;
        goto LABEL_8;
      }
    }
  }

  v10 = CFUUIDCreate(0);
  v11 = CFUUIDCreateString(0, v10);

  CFRelease(v10);
  objc_storeStrong(p_UUID, v11);
  [(WeatherPreferencesPersistence *)self->_persistence setObject:self->_UUID forKey:@"UUID"];
  persistence = self->_persistence;
  date = [MEMORY[0x277CBEAA8] date];
  [(WeatherPreferencesPersistence *)persistence setObject:date forKey:@"UUIDTimestamp"];

  v4 = self->_UUID;
  v6 = v11;
LABEL_8:

LABEL_9:

  return v4;
}

- (id)_cacheDirectoryPath
{
  cacheDirectoryPath = self->_cacheDirectoryPath;
  if (!cacheDirectoryPath)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userLibraryDirectory = [mEMORY[0x277D75128] userLibraryDirectory];
    v6 = [userLibraryDirectory stringByAppendingPathComponent:@"Caches/Weather"];
    v7 = self->_cacheDirectoryPath;
    self->_cacheDirectoryPath = v6;

    cacheDirectoryPath = self->_cacheDirectoryPath;
  }

  return cacheDirectoryPath;
}

+ (id)readInternalDefaultValueForKey:(id)key
{
  keyCopy = key;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

- (id)readInternalDefaultValueForKey:(id)key
{
  keyCopy = key;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

- (void)setLocalWeatherEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x277D85DE8];
  v5 = WALogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "setLocalWeatherEnabled=%@", &v7, 0xCu);
  }

  [(WeatherPreferencesPersistence *)self->_persistence setBool:enabledCopy forKey:@"LocalWeatherEnabledKey"];
}

- (BOOL)isLocalWeatherEnabled
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"LocalWeatherEnabledKey"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)serviceDebuggingPath
{
  if (serviceDebuggingPath_onceToken != -1)
  {
    +[WeatherPreferences serviceDebuggingPath];
  }

  v3 = serviceDebuggingPath_debuggingPath;

  return v3;
}

void __42__WeatherPreferences_serviceDebuggingPath__block_invoke()
{
  v0 = [*MEMORY[0x277D76620] userLibraryDirectory];
  v6 = [v0 stringByAppendingPathComponent:@"Weather"];

  v1 = [MEMORY[0x277CCAA00] defaultManager];
  [v1 _web_createDirectoryAtPathWithIntermediateDirectories:v6 attributes:0];

  v2 = [v6 stringByAppendingPathComponent:@"ServiceDebugging"];
  v3 = [v2 stringByResolvingSymlinksInPath];
  v4 = [v3 copy];
  v5 = serviceDebuggingPath_debuggingPath;
  serviceDebuggingPath_debuggingPath = v4;
}

- (void)resetLocale
{
  v2 = __defaultCities;
  __defaultCities = 0;
}

- (void)_clearCachedObjects
{
  cacheDirectoryPath = self->_cacheDirectoryPath;
  self->_cacheDirectoryPath = 0;

  [(WeatherPreferences *)self resetLocale];
}

- (void)saveToUbiquitousStore
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  if (v4)
  {
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherPreferences] AlwaysUseLocallyAvailableSavedCities = 1, do not save new cities to ubiquitous store.", buf, 2u);
    }
  }

  else
  {
    cloudPreferences = [(WeatherPreferences *)self cloudPreferences];
    loadSavedCities = [(WeatherPreferences *)self loadSavedCities];
    [cloudPreferences saveCitiesToCloud:loadSavedCities];
  }
}

- (BOOL)areCitiesDefault:(id)default
{
  v32 = *MEMORY[0x277D85DE8];
  defaultCopy = default;
  _defaultCities = [(WeatherPreferences *)self _defaultCities];
  v6 = [defaultCopy count];
  v26 = _defaultCities;
  if (v6 == [_defaultCities count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = defaultCopy;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = defaultCopy;
      LODWORD(v9) = 0;
      v10 = *v28;
      v11 = *MEMORY[0x277D7B1F0];
      v12 = *MEMORY[0x277D7B1F8];
      while (2)
      {
        v13 = 0;
        v9 = v9;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          v15 = [v26 objectAtIndex:v9];
          v16 = [v14 objectForKeyedSubscript:v11];
          [v16 floatValue];
          v18 = v17;
          v19 = [v14 objectForKeyedSubscript:v12];
          [v19 floatValue];
          v21 = [v15 containsLatitude:v18 longitude:v20];

          if (!v21)
          {
            v22 = 0;
            goto LABEL_13;
          }

          ++v9;
          ++v13;
        }

        while (v8 != v13);
        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v22 = 1;
LABEL_13:
      defaultCopy = v24;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)temperatureUnitObserver:(id)observer didChangeTemperatureUnitTo:(int)to
{
  v9[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"kWeatherPrefsUpdateNotificationKey";
  v6 = NSStringFromWFTemperatureUnit();
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"kWeatherPrefsDidUpdateUserTemperatureUnit" object:self userInfo:v7];
}

+ (BOOL)performUpgradeOfPersistence:(id)persistence fileManager:(id)manager error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  persistenceCopy = persistence;
  managerCopy = manager;
  v9 = managerCopy;
  if (persistenceCopy)
  {
    if (!managerCopy)
    {
      v9 = objc_opt_new();
    }

    if (performUpgradeOfPersistence_fileManager_error__onceToken != -1)
    {
      +[WeatherPreferences performUpgradeOfPersistence:fileManager:error:];
    }

    *v26 = 0;
    v27 = v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__3;
    v30 = __Block_byref_object_dispose__3;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v10 = WALogForCategory(14);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Performing Weather migration from the WeatherPreferences...if needed", buf, 2u);
    }

    v11 = performUpgradeOfPersistence_fileManager_error__migrationQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150;
    v16[3] = &unk_279E68A50;
    v9 = v9;
    v17 = v9;
    v19 = v26;
    v20 = &v22;
    v18 = persistenceCopy;
    dispatch_sync(v11, v16);
    if (error)
    {
      v12 = *(v27 + 5);
      if (v12)
      {
        *error = v12;
      }
    }

    LOBYTE(error) = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v26, 8);
  }

  else
  {
    v13 = WALogForCategory(14);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - failed to update persistence.", v26, 2u);
    }

    if (error)
    {
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"persistence was nil; can't upgrade it";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:3 userInfo:v14];

      LOBYTE(error) = 0;
    }
  }

  return error & 1;
}

uint64_t __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.WeatherApp.migrationQueue", 0);
  v1 = performUpgradeOfPersistence_fileManager_error__migrationQueue;
  performUpgradeOfPersistence_fileManager_error__migrationQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150(uint64_t a1)
{
  v85[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

  v4 = WALogForCategory(14);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v77 = v3;
      _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - groupContainers: %@", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Preferences/com.apple.weather.plist"];
    v6 = [(__CFString *)v3 URLByAppendingPathComponent:@"Library/Preferences/"];
    v7 = [(__CFString *)v3 URLByAppendingPathComponent:@"Library/Preferences/group.com.apple.weather.plist"];
    v8 = WALogForCategory(14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = v4;
      _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - source: %@", buf, 0xCu);
    }

    v9 = WALogForCategory(14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = v7;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - destination: %@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [v4 path];
    LODWORD(v10) = [v10 fileExistsAtPath:v11];

    if (v10)
    {
      v12 = *(a1 + 32);
      v13 = [(__CFString *)v7 path];
      LOBYTE(v12) = [v12 fileExistsAtPath:v13];

      if (v12)
      {
        v14 = WALogForCategory(14);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v14, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - destination file is already present, don't overwrite", buf, 2u);
        }

        v15 = 0;
      }

      else
      {
        v16 = *(a1 + 32);
        v75 = 0;
        v17 = [v16 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v75];
        v18 = v75;
        v19 = WALogForCategory(14);
        v20 = v19;
        if (v17)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v77 = v6;
            _os_log_impl(&dword_272ACF000, v20, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - succeeded to create destination folder %@", buf, 0xCu);
          }

          v21 = *(a1 + 32);
          v74 = v18;
          v22 = [v21 copyItemAtURL:v4 toURL:v7 error:&v74];
          v15 = v74;

          v23 = WALogForCategory(14);
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_272ACF000, v24, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - succeeded to copyItemAtURL", buf, 2u);
            }

            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          else
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_2(v15, v24);
            }

            v84 = *MEMORY[0x277CCA450];
            v85[0] = @"failed copyItemAtURL";
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
            v15 = v15;
            v32 = v31;
            if (v15)
            {
              if (v31)
              {
                v33 = v31;
              }

              else
              {
                v33 = MEMORY[0x277CBEC10];
              }

              v32 = [v33 mutableCopy];
              [v32 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
            }

            v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:2 userInfo:v32];

            v35 = *(*(a1 + 48) + 8);
            v36 = *(v35 + 40);
            *(v35 + 40) = v34;
          }
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_1(v18, v20);
          }

          v82 = *MEMORY[0x277CCA450];
          v83 = @"failed to create destination folder";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v15 = v18;
          v26 = v25;
          if (v15)
          {
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              v27 = MEMORY[0x277CBEC10];
            }

            v26 = [v27 mutableCopy];
            [v26 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
          }

          v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:2 userInfo:v26];

          v29 = *(*(a1 + 48) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;
        }
      }

      v37 = WALogForCategory(14);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v37, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - removing source file", buf, 2u);
      }

      [*(a1 + 32) removeItemAtURL:v4 error:0];
    }

    else
    {
      v15 = WALogForCategory(14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v15, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - source file does not exist, nothing to do", buf, 2u);
      }
    }
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - no groupContainers", buf, 2u);
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v38 = WALogForCategory(14);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = @"Celsius";
      _os_log_impl(&dword_272ACF000, v38, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Moving Prefs key '%@' (representing BOOL of whether user temperature unit is celsius or fahrenheit) to new NSLocale API", buf, 0xCu);
    }

    v39 = [*(a1 + 40) objectForKey:@"Celsius"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 BOOLValue];
      v42 = MEMORY[0x277CBE708];
      if (!v41)
      {
        v42 = MEMORY[0x277CBE710];
      }

      v43 = *v42;
      [MEMORY[0x277CBEAF8] _setPreferredTemperatureUnit:v43];
      CFPreferencesAppSynchronize(*MEMORY[0x277CBF008]);
      [*(a1 + 40) removeObjectForKey:@"Celsius"];
      v44 = WALogForCategory(14);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v77 = @"Celsius";
        v78 = 2112;
        v79 = v40;
        v80 = 2112;
        v81 = v43;
        _os_log_impl(&dword_272ACF000, v44, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Migrated key '%@' (%@) NSLocale API value (%@).", buf, 0x20u);
      }
    }

    else
    {
      v43 = WALogForCategory(14);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = @"Celsius";
        _os_log_impl(&dword_272ACF000, v43, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Skipping key '%@' migration to NSLocale API -- must have already been migrated or doesn't exist.", buf, 0xCu);
      }
    }

    v45 = [*(a1 + 40) stringForKey:@"PrefsVersion"];
    v46 = v45;
    if (v45)
    {
      [v45 doubleValue];
      v48 = v47;
      [@"2.1" doubleValue];
      v50 = v49;
      v51 = WALogForCategory(14);
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
      if (v48 < v50)
      {
        if (v52)
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v51, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Updating to 2.1..", buf, 2u);
        }

        v51 = [MEMORY[0x277CBEB18] array];
        v53 = [*(a1 + 40) arrayForKey:@"Cities"];
        v54 = [v53 na_filter:&__block_literal_global_170];
        [v51 addObjectsFromArray:v54];

        v55 = [v51 mutableCopy];
        v56 = [*(a1 + 40) objectForKey:@"LocalWeather"];
        if (v56 && [CityPersistenceConversions cityDictionaryHasValidCoordinates:v56])
        {
          [v55 addObject:v56];
        }

        v57 = [v55 copy];
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3;
        v70[3] = &unk_279E68A28;
        v58 = *(a1 + 48);
        v72 = &__block_literal_global_173;
        v73 = v58;
        v59 = v55;
        v71 = v59;
        [v57 enumerateObjectsUsingBlock:v70];

        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v60 = v59;
          v61 = v60;
          if (v56 && [v60 count])
          {
            v69 = [v61 lastObject];

            v68 = [v61 subarrayWithRange:{0, objc_msgSend(v61, "count") - 1}];

            v56 = v69;
            [*(a1 + 40) setObject:v69 forKey:@"LocalWeather"];
            v61 = v68;
          }

          [*(a1 + 40) setObject:v61 forKey:@"Cities"];
          v62 = *(a1 + 40);
          v63 = [MEMORY[0x277CBEAA8] date];
          [v62 setObject:v63 forKey:@"LastUpdated"];

          [*(a1 + 40) setObject:@"2.1" forKey:@"PrefsVersion"];
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        v64 = WALogForCategory(14);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = [*(a1 + 40) stringForKey:@"PrefsVersion"];
          [v65 doubleValue];
          *buf = 134217984;
          v77 = v66;
          _os_log_impl(&dword_272ACF000, v64, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - finished persistence upgrade from version: %f", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v52)
      {
        *buf = 0;
        v67 = "WeatherPreferences _performMigration - Prefs are more up to date than this migrator knows how to handle.  Bailing.";
        goto LABEL_74;
      }
    }

    else
    {
      v51 = WALogForCategory(14);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v67 = "WeatherPreferences _performMigration - First boot scenario; bailing from migration.";
LABEL_74:
        _os_log_impl(&dword_272ACF000, v51, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
      }
    }

LABEL_75:
  }
}

uint64_t __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [v6 objectForKey:v7];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          [v8 doubleValue];
          v10 = [objc_alloc(MEMORY[0x277D7B2C0]) initWithTemperatureUnit:2 value:v9];
          v11 = [CityPersistenceConversions dictionaryRepresentationOfTemperature:v10];
          [v6 setObject:v11 forKeyedSubscript:v7];

          v12 = 1;
LABEL_12:

          goto LABEL_13;
        }

        if (a4)
        {
          v16[0] = @"key";
          v16[1] = @"value";
          v17[0] = v7;
          v17[1] = v8;
          v16[2] = @"container";
          v13 = [v6 copy];
          v17[2] = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:v14];
        }
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:0];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v38 = a2;
  v5 = [v38 mutableCopy];
  v6 = MEMORY[0x277CBEB98];
  v67[0] = 0x28822C648;
  v67[1] = 0x28822C1C8;
  v67[2] = 0x28822C7A8;
  v67[3] = 0x28822C7C8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
  v8 = [v6 setWithArray:v7];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v9 = v8;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v11)
  {
    v12 = *v58;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v58 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a1 + 40);
        v15 = *(*(a1 + 48) + 8);
        obj = *(v15 + 40);
        v16 = (*(v14 + 16))();
        objc_storeStrong((v15 + 40), obj);
        if (v16)
        {
          v10 = 1;
        }

        else if (*(*(*(a1 + 48) + 8) + 40))
        {
          *a4 = 1;

          goto LABEL_32;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v17 = MEMORY[0x277CBEB98];
  v65[0] = 0x28822C848;
  v65[1] = 0x28822C788;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  v19 = [v17 setWithArray:v18];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v19;
  v20 = [v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v20)
  {
    v21 = *v49;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v39);
        }

        v23 = *(*(&v48 + 1) + 8 * j);
        v24 = [v5 objectForKeyedSubscript:v23];
        v25 = [v24 mutableCopy];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = WALogForCategory(14);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3_cold_1(v32, buf, v30);
          }

          v61 = *MEMORY[0x277CCA470];
          v62 = @"Container class was of incorrect class type";
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:3 userInfo:v33];

          v35 = *(*(a1 + 48) + 8);
          v36 = *(v35 + 40);
          *(v35 + 40) = v34;

          *a4 = 1;
          goto LABEL_31;
        }

        v26 = [v25 copy];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_190;
        v41[3] = &unk_279E68A00;
        v42 = v9;
        v27 = *(a1 + 40);
        v28 = *(a1 + 48);
        v44 = v27;
        v45 = v28;
        v29 = v25;
        v43 = v29;
        v46 = &v52;
        v47 = a4;
        [v26 enumerateObjectsUsingBlock:v41];

        if (*(*(*(a1 + 48) + 8) + 40))
        {

          goto LABEL_28;
        }

        if (*(v53 + 24) == 1)
        {
          [v5 setObject:v29 forKeyedSubscript:v23];
        }
      }

      v20 = [v39 countByEnumeratingWithState:&v48 objects:v64 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if ((v10 & 1) != 0 || *(v53 + 24) == 1)
  {
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
  }

LABEL_31:

  _Block_object_dispose(&v52, 8);
LABEL_32:
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_190(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a2 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(a1 + 56) + 8);
        obj = *(v12 + 40);
        v13 = (*(*(a1 + 48) + 16))();
        objc_storeStrong((v12 + 40), obj);
        if (v13)
        {
          [*(a1 + 40) setObject:v6 atIndexedSubscript:a3];
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }

        if (*(*(*(a1 + 56) + 8) + 40))
        {
          **(a1 + 72) = 1;
          *a4 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (SynchronizedDefaultsDelegate)syncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_syncDelegate);

  return WeakRetained;
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "WeatherPreferences _performMigration - failed to create destination folder %@", &v2, 0xCu);
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "WeatherPreferences _performMigration - failed copyItemAtURL %@", &v2, 0xCu);
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272ACF000, log, OS_LOG_TYPE_ERROR, "WeatherPreferences migration observed an unexpected class while upgrading temperature; should've received an NSArray, instead encountered a %@", buf, 0xCu);
}

@end