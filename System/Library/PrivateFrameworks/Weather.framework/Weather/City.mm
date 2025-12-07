@interface City
+ (id)_ISO8601Calendar;
+ (id)cityContainingLocation:(id)location expectedName:(id)name fromCities:(id)cities;
- (BOOL)_dataIsValid;
- (BOOL)_isUpdating;
- (BOOL)_isValidLearnMoreURLForSevereEvent:(id)event;
- (BOOL)airQualityCanUseDefaultAttribution;
- (BOOL)airQualityForceHideRecommendation;
- (BOOL)airQualityScaleIsAscending;
- (BOOL)airQualityScaleIsNumerical;
- (BOOL)isDay;
- (BOOL)isDuplicateOfCity:(id)city;
- (BOOL)isEqual:(id)equal;
- (BOOL)populateWithDataFromCity:(id)city;
- (BOOL)timeZoneIsFresh;
- (BOOL)update;
- (CLLocationCoordinate2D)coordinate;
- (City)init;
- (City)initWithDictionaryRepresentation:(id)representation;
- (NSArray)dayForecasts;
- (NSArray)hourlyForecasts;
- (NSDictionary)urlComponents;
- (NSNumber)airQualityCategory;
- (NSNumber)airQualityIdx;
- (NSString)countryCode;
- (NSString)description;
- (NSString)identifier;
- (NSString)locationID;
- (NSString)weatherLocationCitationName;
- (WFAQIScale)airQualityScale;
- (double)distanceToLatitude:(double)latitude longitude:(double)longitude;
- (double)distanceToLocation:(id)location;
- (double)latitude;
- (double)longitude;
- (id)cityAndState;
- (id)detailedDescription;
- (id)displayName;
- (id)getName;
- (id)naturalLanguageDescriptionWithDescribedCondition:(int64_t *)condition;
- (id)windDirectionAsString:(double)string;
- (int64_t)conditionCode;
- (int64_t)locationOfTime:(int64_t)time;
- (int64_t)primaryConditionForRange:(_NSRange)range;
- (int64_t)timeDigit;
- (unint64_t)airQualitySignificance;
- (unint64_t)aqiDataAvailabilityStatus;
- (unint64_t)aqiDataAvailabilityStatusFromAppConfig;
- (unint64_t)hash;
- (unint64_t)precipitationForecast;
- (unint64_t)weatherDataAge;
- (void)_clearAutoUpdateTimer;
- (void)_generateLocalizableStrings;
- (void)_notifyDidStartWeatherUpdate;
- (void)_updateTimeZone;
- (void)addUpdateObserver:(id)observer;
- (void)cityDidFinishUpdatingWithError:(id)error;
- (void)clearForecasts;
- (void)dealloc;
- (void)discardDataIfNeeded;
- (void)localWeatherDidBeginUpdate;
- (void)removeUpdateObserver:(id)observer;
- (void)setAutoUpdate:(BOOL)update;
- (void)setConditionCode:(int64_t)code;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setDayForecasts:(id)forecasts;
- (void)setHourlyForecasts:(id)forecasts;
- (void)setIsDay:(BOOL)day;
- (void)setLatitude:(double)latitude;
- (void)setLongitude:(double)longitude;
- (void)setName:(id)name;
- (void)setTemperature:(id)temperature;
- (void)setUpdateTime:(id)time;
- (void)setWfLocation:(id)location;
- (void)update;
- (void)updateCityForModel:(id)model;
- (void)updateCityForSevereWeatherEvents:(id)events;
- (void)updateTimeZoneWithCompletionBlock:(id)block;
@end

@implementation City

+ (id)_ISO8601Calendar
{
  if (_ISO8601Calendar_onceToken != -1)
  {
    +[City _ISO8601Calendar];
  }

  v3 = _ISO8601Calendar_ISO6801Calendar;

  return v3;
}

uint64_t __24__City__ISO8601Calendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v2 = _ISO8601Calendar_ISO6801Calendar;
  _ISO8601Calendar_ISO6801Calendar = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (City)init
{
  v8.receiver = self;
  v8.super_class = City;
  v2 = [(City *)&v8 init];
  if (v2)
  {
    v3 = +[WeatherInternalPreferences sharedInternalPreferences];
    v4 = [v3 objectForKey:@"ShouldWeatherUpdateRapidly"];
    bOOLValue = [v4 BOOLValue];
    v6 = 300;
    if (bOOLValue)
    {
      v6 = 5;
    }

    v2->_updateInterval = v6;

    v2->_conditionCode = 3200;
    v2->_humidity = 1.1755e-38;
    v2->_heatIndex = 1.1755e-38;
    v2->_windChill = 1.1755e-38;
  }

  return v2;
}

- (City)initWithDictionaryRepresentation:(id)representation
{
  v4 = [CityPersistenceConversions cityFromDictionary:representation];

  return v4;
}

- (void)dealloc
{
  [(City *)self _clearAutoUpdateTimer];
  v3.receiver = self;
  v3.super_class = City;
  [(City *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  locationID = [(City *)self locationID];

  if (locationID)
  {
    locationID2 = [(City *)self locationID];
    [v6 locationID];
  }

  else
  {
    locationID2 = [(City *)self name];
    [v6 name];
  }
  v9 = ;

  v10 = [locationID2 isEqual:v9];
  return v10;
}

- (unint64_t)hash
{
  locationID = [(City *)self locationID];
  v3 = [locationID hash];

  return v3;
}

- (int64_t)conditionCode
{
  if (conditionCode_onceToken != -1)
  {
    [City conditionCode];
  }

  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  isInternalInstall = [v3 isInternalInstall];
  v5 = conditionCode_forceUnsetConditionCode;

  if (isInternalInstall && (v5 & 1) != 0)
  {
    return 3200;
  }

  else
  {
    return self->_conditionCode;
  }
}

void __21__City_conditionCode__block_invoke()
{
  v1 = +[WeatherInternalPreferences sharedInternalPreferences];
  v0 = [v1 objectForKey:@"Force3200Code"];
  conditionCode_forceUnsetConditionCode = [v0 BOOLValue];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = City;
  v4 = [(City *)&v9 description];
  name = [(City *)self name];
  locationID = [(City *)self locationID];
  v7 = [v3 stringWithFormat:@"<%@ -- Name: %@, LocationID: %@", v4, name, locationID];

  return v7;
}

- (id)detailedDescription
{
  v3 = WAUserTemperatureUnit();
  v4 = [(City *)self description];
  v5 = [v4 mutableCopy];

  v44 = +[WeatherVisibilityFormatter convenienceFormatter];
  v45 = +[WeatherWindSpeedFormatter convenienceFormatter];
  v43 = +[WeatherPressureFormatter convenienceFormatter];
  if ([(City *)self isLocalWeatherCity])
  {
    [v5 appendFormat:@"\nLocal Weather City"];
  }

  v6 = NSStringFromWeatherConditionCode([(City *)self conditionCode]);
  [v5 appendFormat:@"\nCondition Code: %@", v6];

  v7 = objc_alloc(MEMORY[0x277D7B2C0]);
  [(City *)self heatIndex];
  v42 = [v7 initWithTemperatureUnit:2 value:v8];
  v9 = MEMORY[0x277CCABB0];
  feelsLike = [(City *)self feelsLike];
  [feelsLike temperatureForUnit:v3];
  v11 = [v9 numberWithDouble:?];
  stringValue = [v11 stringValue];
  v13 = MEMORY[0x277CCABB0];
  [v42 temperatureForUnit:v3];
  v14 = [v13 numberWithDouble:?];
  stringValue2 = [v14 stringValue];
  [v5 appendFormat:@"\nFeels Like: %@, Heat Index: %@", stringValue, stringValue2];

  v16 = objc_alloc(MEMORY[0x277D7B2C0]);
  [(City *)self windChill];
  v41 = [v16 initWithTemperatureUnit:2 value:v17];
  [(City *)self windSpeed];
  v19 = v18;
  [(City *)self windDirection];
  LODWORD(v21) = v20;
  LODWORD(v22) = v19;
  v23 = [v45 formattedStringForSpeed:v22 direction:v21];
  v24 = MEMORY[0x277CCABB0];
  [v41 temperatureForUnit:v3];
  v25 = [v24 numberWithDouble:?];
  stringValue3 = [v25 stringValue];
  [v5 appendFormat:@"\nWind Chill: %@, Wind: %@", stringValue3, v23];

  v27 = objc_alloc(MEMORY[0x277D7B2C0]);
  [(City *)self dewPoint];
  v29 = [v27 initWithTemperatureUnit:2 value:v28];
  [(City *)self humidity];
  v31 = v30;
  [(City *)self visibility];
  v33 = [v44 stringFromKilometers:v32];
  [(City *)self pressure];
  v34 = [v43 stringFromMillibars:?];
  v35 = MEMORY[0x277CCABB0];
  [v29 temperatureForUnit:v3];
  v36 = [v35 numberWithDouble:?];
  stringValue4 = [v36 stringValue];
  [v5 appendFormat:@"\nHumidity %f%%, Visibility: %@, Pressure: %@, Dewpoint: %@, UV Index: %lu", *&v31, v33, v34, stringValue4, -[City uvIndex](self, "uvIndex")];

  [v5 appendFormat:@"\nObservation Time: %lu Sunrise: %lu, Sunset: %lu, Moonphase: %lu", -[City observationTime](self, "observationTime"), -[City sunriseTime](self, "sunriseTime"), -[City sunsetTime](self, "sunsetTime"), -[City moonPhase](self, "moonPhase")];
  dayForecasts = [(City *)self dayForecasts];
  [v5 appendFormat:@"\nForecasts: %@", dayForecasts];

  hourlyForecasts = [(City *)self hourlyForecasts];
  [v5 appendFormat:@"\nHourly Forecasts: %@>", hourlyForecasts];

  return v5;
}

- (void)addUpdateObserver:(id)observer
{
  observerCopy = observer;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  v5 = [cityUpdateObservers containsObject:observerCopy];

  if (v5)
  {
    NSLog(&cfstr_Cityupdateobse.isa);
  }

  cityUpdateObservers2 = [(City *)self cityUpdateObservers];

  if (!cityUpdateObservers2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(City *)self setCityUpdateObservers:weakObjectsHashTable];
  }

  cityUpdateObservers3 = [(City *)self cityUpdateObservers];
  [cityUpdateObservers3 addObject:observerCopy];
}

- (void)removeUpdateObserver:(id)observer
{
  observerCopy = observer;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  [cityUpdateObservers removeObject:observerCopy];
}

- (void)_clearAutoUpdateTimer
{
  [(NSTimer *)self->_autoUpdateTimer invalidate];
  autoUpdateTimer = self->_autoUpdateTimer;
  self->_autoUpdateTimer = 0;
}

- (void)setAutoUpdate:(BOOL)update
{
  if (self->_autoUpdate != update)
  {
    self->_autoUpdate = update;
    [(City *)self _clearAutoUpdateTimer];
    if (self->_autoUpdate && ![(City *)self isLocalWeatherCity])
    {
      [(City *)self update];
      v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_update selector:0 userInfo:1 repeats:300];
      [(City *)self setAutoUpdateTimer:v4];
    }
  }
}

- (id)displayName
{
  name = [(City *)self name];

  if (name)
  {
    [(City *)self name];
  }

  else
  {
    [(City *)self locationID];
  }
  v4 = ;

  return v4;
}

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  if (![(City *)self lockedForDemoMode])
  {
    temperature = self->_temperature;
    p_temperature = &self->_temperature;
    if (([temperatureCopy isEqual:temperature] & 1) == 0)
    {
      objc_storeStrong(p_temperature, temperature);
    }
  }
}

- (void)setDayForecasts:(id)forecasts
{
  forecastsCopy = forecasts;
  if (![(City *)self lockedForDemoMode])
  {
    v4 = [forecastsCopy copy];
    dayForecasts = self->_dayForecasts;
    self->_dayForecasts = v4;
  }
}

- (NSArray)dayForecasts
{
  if (self->_dayForecasts)
  {
    return self->_dayForecasts;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)setHourlyForecasts:(id)forecasts
{
  forecastsCopy = forecasts;
  if (![(City *)self lockedForDemoMode])
  {
    v4 = [forecastsCopy copy];
    hourlyForecasts = self->_hourlyForecasts;
    self->_hourlyForecasts = v4;
  }
}

- (NSArray)hourlyForecasts
{
  if (self->_hourlyForecasts)
  {
    return self->_hourlyForecasts;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (int64_t)timeDigit
{
  timeZone = [(City *)self timeZone];
  v3 = CityTimeDigitForTimeZone(timeZone);

  return v3;
}

- (void)setIsDay:(BOOL)day
{
  if (![(City *)self lockedForDemoMode])
  {
    self->_isDay = day;
  }
}

- (BOOL)isDay
{
  if ([(City *)self lockedForDemoMode])
  {
    return self->_isDay;
  }

  if ([(City *)self weatherDataAge]== 2 || ![(City *)self observationTime]&& ![(City *)self sunriseTime]&& ![(City *)self sunsetTime])
  {
    return 1;
  }

  timeDigit = [(City *)self timeDigit];
  if (timeDigit - [(City *)self observationTime]> 5)
  {
    [(City *)self setObservationTime:timeDigit];
  }

  sunsetTime = [(City *)self sunsetTime];
  sunriseTime = [(City *)self sunriseTime];
  observationTime = [(City *)self observationTime];
  if (sunsetTime <= sunriseTime)
  {
    if (observationTime > [(City *)self sunsetTime])
    {
      observationTime2 = [(City *)self observationTime];
      return observationTime2 >= [(City *)self sunriseTime];
    }

    return 1;
  }

  if (observationTime <= [(City *)self sunriseTime])
  {
    return 0;
  }

  else
  {
    observationTime3 = [(City *)self observationTime];
    return observationTime3 < [(City *)self sunsetTime];
  }
}

- (unint64_t)weatherDataAge
{
  updateTime = [(City *)self updateTime];

  if (!updateTime)
  {
    return 2;
  }

  updateTime2 = [(City *)self updateTime];
  [updateTime2 timeIntervalSinceNow];
  v6 = v5;

  v7 = -v6;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v8 < [(City *)self updateInterval])
  {
    return 0;
  }

  updateTime3 = [(City *)self updateTime];
  timeZone = [(City *)self timeZone];
  IsTodayInTimezone = DateIsTodayInTimezone(updateTime3, timeZone);

  if (IsTodayInTimezone)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)localWeatherDidBeginUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  allObjects = [cityUpdateObservers allObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cityDidStartWeatherUpdate:{self, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)update
{
  v3 = WALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(City *)self update];
  }

  if ([(City *)self _dataIsValid]&& ![(City *)self weatherDataAge])
  {
    v10 = WALogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(City *)self update];
    }

    [(City *)self _updateTimeZone];
    return 0;
  }

  else
  {
    if ([(City *)self isLocalWeatherCity])
    {
      +[TWCLocationUpdater sharedLocationUpdater];
    }

    else
    {
      +[TWCCityUpdater sharedCityUpdater];
    }
    v4 = ;
    v5 = [v4 isUpdatingCity:self];
    v6 = WALogForCategory(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        [(City *)self update];
      }
    }

    else
    {
      if (v7)
      {
        [(City *)self update];
      }

      [(City *)self setIsUpdating:1];
      [(City *)self _notifyDidStartWeatherUpdate];
      [v4 updateWeatherForCity:self];
    }

    [(City *)self _updateTimeZone];
    isUpdating = [(City *)self isUpdating];
  }

  return isUpdating;
}

- (void)_notifyDidStartWeatherUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] conformsToProtocol:&unk_288257D50] && objc_msgSend(*v3, "showProgressIndicator"))
  {
    v4 = +[ProgressController sharedProgressController];
    [v4 setLoadingData:1];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  v6 = [cityUpdateObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(cityUpdateObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cityDidStartWeatherUpdate:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [cityUpdateObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)timeZoneIsFresh
{
  timeZone = [(City *)self timeZone];
  if (timeZone)
  {
    timeZoneUpdateDate = [(City *)self timeZoneUpdateDate];
    [timeZoneUpdateDate timeIntervalSinceNow];
    v6 = v5 >= -86400.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateTimeZone
{
  if (![(City *)self timeZoneIsFresh])
  {

    [(City *)self updateTimeZoneWithCompletionBlock:0];
  }
}

- (void)updateTimeZoneWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(City *)self isLocalWeatherCity]|| ([(City *)self coordinate], !CLLocationCoordinate2DIsValid(v21)))
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 1, self);
    }
  }

  else
  {
    activeGeocodeRequest = [(City *)self activeGeocodeRequest];

    if (activeGeocodeRequest)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy, 2, self);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x277D7B278]);
      [(City *)self coordinate];
      v8 = v7;
      v10 = v9;
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __42__City_updateTimeZoneWithCompletionBlock___block_invoke;
      v16 = &unk_279E68258;
      objc_copyWeak(&v19, &location);
      selfCopy = self;
      v18 = blockCopy;
      v11 = [v6 initWithCoordinate:&v13 resultHandler:{v8, v10}];
      [(City *)self setActiveGeocodeRequest:v11, v13, v14, v15, v16];

      activeGeocodeRequest2 = [(City *)self activeGeocodeRequest];
      [activeGeocodeRequest2 start];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __42__City_updateTimeZoneWithCompletionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2;
  block[3] = &unk_279E68230;
  v7 = v6;
  v11 = v7;
  objc_copyWeak(&v15, a1 + 6);
  v8 = v5;
  v12 = v8;
  v9 = a1[5];
  v13 = a1[4];
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [a1[4] setActiveGeocodeRequest:0];

  objc_destroyWeak(&v15);
}

void __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = WALogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2_cold_1(v2, v3);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 1, *(a1 + 48));
    }
  }

  else
  {
    objc_copyWeak(&to, (a1 + 64));
    v5 = *(a1 + 40);
    v6 = objc_loadWeakRetained(&to);
    [v6 setWfLocation:v5];

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, *(a1 + 48));
    }

    objc_destroyWeak(&to);
  }
}

- (void)clearForecasts
{
  [(City *)self setDayForecasts:0];
  [(City *)self setHourlyForecasts:0];
  [(City *)self setAirQualityIdx:0];
  [(City *)self setAirQualityScaleCategory:0];

  [(City *)self setAirQualityCategory:0];
}

- (void)setUpdateTime:(id)time
{
  timeCopy = time;
  objc_storeStrong(&self->_updateTime, time);
  updateTimeString = self->_updateTimeString;
  self->_updateTimeString = 0;

  if (self->_updateTime)
  {
    if (setUpdateTime__locale)
    {
      v7 = setUpdateTime__timeDateFormatter;
      if (setUpdateTime__timeDateFormatter)
      {
LABEL_4:
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v7, self->_updateTime);
        v9 = self->_updateTimeString;
        self->_updateTimeString = &StringWithDate->isa;

        goto LABEL_9;
      }
    }

    else
    {
      setUpdateTime__locale = CFLocaleCopyCurrent();
      v7 = CFDateFormatterCreate(0, setUpdateTime__locale, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
      setUpdateTime__timeDateFormatter = v7;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v10 = WALogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [City setUpdateTime:v10];
    }
  }

LABEL_9:
}

- (void)cityDidFinishUpdatingWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [City cityDidFinishUpdatingWithError:];
  }

  if ([(City *)self isUpdating])
  {
    [(City *)self setIsUpdating:0];
    v6 = MEMORY[0x277D76620];
    if ([*MEMORY[0x277D76620] conformsToProtocol:&unk_288257D50])
    {
      if ([*v6 showProgressIndicator])
      {
        v7 = +[ProgressController sharedProgressController];
        [v7 setLoadingData:0];
      }
    }
  }

  if ([errorCopy code] == 3072)
  {
    [(City *)self setLastUpdateStatus:2];
    [(City *)self setLastUpdateError:errorCopy];
LABEL_10:
    [(City *)self discardDataIfNeeded];
    goto LABEL_11;
  }

  [(City *)self setLastUpdateStatus:errorCopy != 0];
  [(City *)self setLastUpdateError:errorCopy];
  if (errorCopy)
  {
    goto LABEL_10;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(City *)self setUpdateTime:date];

  dayForecasts = [(City *)self dayForecasts];
  v17 = [dayForecasts sortedArrayUsingSelector:sel_compareDayNumberToDayForecast_];
  [(City *)self setDayForecasts:v17];

LABEL_11:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  v9 = [cityUpdateObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(cityUpdateObservers);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 cityDidFinishWeatherUpdate:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [cityUpdateObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CityDidUpdate" object:self];
}

- (BOOL)_isUpdating
{
  v3 = +[TWCCityUpdater sharedCityUpdater];
  LOBYTE(self) = [v3 isUpdatingCity:self];

  return self;
}

- (id)cityAndState
{
  if (self->_state)
  {
    v3 = MEMORY[0x277CCACA8];
    name = [(City *)self name];
    name2 = [v3 stringWithFormat:@"%@, %@", name, self->_state];
  }

  else
  {
    name2 = [(City *)self name];
  }

  return name2;
}

- (NSString)weatherLocationCitationName
{
  if ([(City *)self isLocalWeatherCity]&& ([(City *)self weatherLocationName], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    weatherLocationName = [(City *)self weatherLocationName];
  }

  else if ([(City *)self isLocalWeatherCity]|| ([(City *)self searchTitle], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    weatherLocationName = [(City *)self name];
  }

  else
  {
    weatherLocationName = [(City *)self searchTitle];
  }

  return weatherLocationName;
}

- (void)setName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(City *)selfCopy lockedForDemoMode])
  {
    v5 = [nameCopy copy];
    name = selfCopy->_name;
    selfCopy->_name = v5;
  }

  objc_sync_exit(selfCopy);
}

- (id)getName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_name;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setConditionCode:(int64_t)code
{
  if (![(City *)self lockedForDemoMode])
  {
    self->_conditionCode = code;
  }
}

- (void)setWfLocation:(id)location
{
  locationCopy = location;
  lockedForDemoMode = [(City *)self lockedForDemoMode];
  v6 = locationCopy;
  if ((lockedForDemoMode & 1) == 0)
  {
    if (!locationCopy || ([locationCopy geoLocation], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      wfLocation = self->_wfLocation;
      self->_wfLocation = 0;

      [(City *)self setTimeZone:0];
      [(City *)self setTimeZoneUpdateDate:0];
      lockedForDemoMode = [(City *)self setISO3166CountryAbbreviation:0];
LABEL_16:
      v6 = locationCopy;
      goto LABEL_17;
    }

    v8 = [locationCopy isEqual:self->_wfLocation];
    v6 = locationCopy;
    if (!v8)
    {
      goto LABEL_14;
    }

    geoLocation = [locationCopy geoLocation];
    geoLocation2 = [(WFLocation *)self->_wfLocation geoLocation];
    [geoLocation distanceFromLocation:geoLocation2];
    v12 = v11;
    v13 = *&CityMinimumContainmentDistance;

    v6 = locationCopy;
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    countryAbbreviation = [locationCopy countryAbbreviation];
    iSO3166CountryAbbreviation = [(City *)self ISO3166CountryAbbreviation];
    if ([countryAbbreviation isEqualToString:iSO3166CountryAbbreviation])
    {
      timeZone = [locationCopy timeZone];
      timeZone2 = [(City *)self timeZone];
      if ([timeZone isEqualToTimeZone:timeZone2])
      {
        weatherLocationName = [locationCopy weatherLocationName];
        if (!weatherLocationName)
        {

          goto LABEL_15;
        }

        v19 = weatherLocationName;
        weatherLocationName2 = [locationCopy weatherLocationName];
        weatherLocationName3 = [(WFLocation *)self->_wfLocation weatherLocationName];
        v22 = [weatherLocationName2 isEqualToString:weatherLocationName3];

        v6 = locationCopy;
        if (v22)
        {
          goto LABEL_17;
        }

LABEL_14:
        countryAbbreviation = [v6 timeZone];
        objc_storeStrong(&self->_wfLocation, location);
        geoLocation3 = [locationCopy geoLocation];
        [(City *)self setLocation:geoLocation3];

        [(City *)self setTimeZone:countryAbbreviation];
        date = [MEMORY[0x277CBEAA8] date];
        [(City *)self setTimeZoneUpdateDate:date];

        countryAbbreviation2 = [locationCopy countryAbbreviation];
        [(City *)self setISO3166CountryAbbreviation:countryAbbreviation2];

        weatherDisplayName = [locationCopy weatherDisplayName];
        [(City *)self setWeatherDisplayName:weatherDisplayName];

        weatherLocationName4 = [locationCopy weatherLocationName];
        [(City *)self setWeatherLocationName:weatherLocationName4];

LABEL_15:
        goto LABEL_16;
      }
    }

    v6 = locationCopy;
    goto LABEL_14;
  }

LABEL_17:

  MEMORY[0x2821F96F8](lockedForDemoMode, v6);
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (![(City *)self lockedForDemoMode])
  {
    v6 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [(City *)self setLocation:v6];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  location = [(City *)self location];

  if (location)
  {
    location2 = [(City *)self location];
    [location2 coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CE4278];
    v8 = *(MEMORY[0x277CE4278] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (double)latitude
{
  location = [(City *)self location];

  if (!location)
  {
    return *MEMORY[0x277CE4278];
  }

  location2 = [(City *)self location];
  [location2 coordinate];
  v6 = v5;

  return v6;
}

- (void)setLatitude:(double)latitude
{
  [(City *)self longitude];
  v6 = CLLocationCoordinate2DMake(latitude, v5);

  [(City *)self setCoordinate:v6.latitude, v6.longitude];
}

- (double)longitude
{
  location = [(City *)self location];

  if (!location)
  {
    return *(MEMORY[0x277CE4278] + 8);
  }

  location2 = [(City *)self location];
  [location2 coordinate];
  v6 = v5;

  return v6;
}

- (void)setLongitude:(double)longitude
{
  [(City *)self latitude];
  v6 = CLLocationCoordinate2DMake(v5, longitude);

  [(City *)self setCoordinate:v6.latitude, v6.longitude];
}

- (NSString)locationID
{
  location = [(City *)self location];

  if (location)
  {
    v4 = MEMORY[0x277CCACA8];
    location2 = [(City *)self location];
    [location2 coordinate];
    v7 = v6;
    location3 = [(City *)self location];
    [location3 coordinate];
    v10 = [v4 stringWithFormat:@"%f, %f", v7, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)populateWithDataFromCity:(id)city
{
  cityCopy = city;
  if ([(City *)self lockedForDemoMode])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    name = [cityCopy name];
    [(City *)self setName:name];

    state = [cityCopy state];
    [(City *)self setState:state];

    deeplink = [cityCopy deeplink];
    [(City *)self setDeeplink:deeplink];

    timeZone = [cityCopy timeZone];
    [(City *)self setTimeZone:timeZone];

    temperature = [cityCopy temperature];
    [(City *)self setTemperature:temperature];

    [cityCopy heatIndex];
    [(City *)self setHeatIndex:?];
    [cityCopy visibility];
    [(City *)self setVisibility:?];
    [cityCopy windChill];
    [(City *)self setWindChill:?];
    [cityCopy windDirection];
    [(City *)self setWindDirection:?];
    [cityCopy windSpeed];
    [(City *)self setWindSpeed:?];
    [cityCopy heatIndex];
    [(City *)self setHeatIndex:?];
    -[City setConditionCode:](self, "setConditionCode:", [cityCopy conditionCode]);
    dayForecasts = [cityCopy dayForecasts];
    [(City *)self setDayForecasts:dayForecasts];

    hourlyForecasts = [cityCopy hourlyForecasts];
    [(City *)self setHourlyForecasts:hourlyForecasts];

    -[City setObservationTime:](self, "setObservationTime:", [cityCopy observationTime]);
    -[City setSunsetTime:](self, "setSunsetTime:", [cityCopy sunsetTime]);
    -[City setSunriseTime:](self, "setSunriseTime:", [cityCopy sunriseTime]);
    -[City setMoonPhase:](self, "setMoonPhase:", [cityCopy moonPhase]);
    updateTime = [(City *)self updateTime];
    updateTime2 = [cityCopy updateTime];
    v15 = [updateTime isEqualToDate:updateTime2];

    updateTime3 = [cityCopy updateTime];
    [(City *)self setUpdateTime:updateTime3];

    -[City setLastUpdateStatus:](self, "setLastUpdateStatus:", [cityCopy lastUpdateStatus]);
    locationID = [(City *)self locationID];
    locationID2 = [cityCopy locationID];
    v5 = v15 & [locationID isEqualToString:locationID2] ^ 1;

    location = [cityCopy location];
    [(City *)self setLocation:location];
  }

  return v5;
}

- (void)discardDataIfNeeded
{
  displayName = [self displayName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272ACF000, v2, v3, "Weather data is outdated for %@; dumping data...", v4, v5, v6, v7);
}

- (id)windDirectionAsString:(double)string
{
  v3 = string + 22.5;
  v4 = vcvtms_s32_f32(v3 / 45.0);
  if (v4 > 8)
  {
    return &stru_2882270E8;
  }

  else
  {
    return off_279E68278[v4];
  }
}

- (double)distanceToLocation:(id)location
{
  locationCopy = location;
  location = [(City *)self location];

  if (location)
  {
    location2 = [(City *)self location];
    [location2 distanceFromLocation:locationCopy];
    v8 = v7;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

- (double)distanceToLatitude:(double)latitude longitude:(double)longitude
{
  v5 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
  [(City *)self distanceToLocation:v5];
  v7 = v6;

  return v7;
}

+ (id)cityContainingLocation:(id)location expectedName:(id)name fromCities:(id)cities
{
  v29 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  nameCopy = name;
  citiesCopy = cities;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [citiesCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(citiesCopy);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        [v16 distanceToLocation:locationCopy];
        v18 = v17;
        name = [v16 name];
        v20 = [name isEqualToString:nameCopy];

        if (v18 <= v14)
        {
          v21 = &CityMinimumContainmentDistanceMatchingNames;
          if (!v20)
          {
            v21 = &CityMinimumContainmentDistance;
          }

          if (v18 <= *v21)
          {
            v22 = v16;

            v12 = v22;
            v14 = v18;
          }
        }
      }

      v11 = [citiesCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isDuplicateOfCity:(id)city
{
  v15[1] = *MEMORY[0x277D85DE8];
  cityCopy = city;
  if (-[City isLocalWeatherCity](self, "isLocalWeatherCity") || ([cityCopy isLocalWeatherCity] & 1) != 0 || (-[City name](self, "name"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(cityCopy, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, !v7))
  {
    v13 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    location = [(City *)self location];
    name = [(City *)self name];
    v15[0] = cityCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v8 cityContainingLocation:location expectedName:name fromCities:v11];
    v13 = v12 != 0;
  }

  return v13;
}

- (int64_t)primaryConditionForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x277D85DE8];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  p_hourlyForecasts = &self->_hourlyForecasts;
  if (range.location < [(NSArray *)self->_hourlyForecasts count]&& location + length <= [(NSArray *)*p_hourlyForecasts count])
  {
    v7 = [(NSArray *)*p_hourlyForecasts subarrayWithRange:location, length];
  }

  else
  {
    v6 = WALogForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v27.location = location;
      v27.length = length;
      [(City *)v27 primaryConditionForRange:?];
    }

    v7 = *p_hourlyForecasts;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 conditionCode] <= 47)
        {
          conditionCode = [v13 conditionCode];
          ++*(v24 + conditionCode);
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = 0;
  v16 = 0;
  v17 = 3200;
  do
  {
    if (*(v24 + v15) > v16)
    {
      v17 = v15;
      v16 = *(v24 + v15);
    }

    ++v15;
  }

  while (v15 != 48);

  return v17;
}

- (int64_t)locationOfTime:(int64_t)time
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_hourlyForecasts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      time = [*(*(&v14 + 1) + 8 * v9) time];
      v12 = [WAHourlyForecast TimeValueFromString:time];

      if (v12 == time)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)naturalLanguageDescriptionWithDescribedCondition:(int64_t *)condition
{
  v117[2] = *MEMORY[0x277D85DE8];
  isDay = [(City *)self isDay];
  v6 = WAUserTemperatureUnit();
  conditionCode = self->_conditionCode;
  if (conditionCode == 3200 || (v8 = v6, -[City locationID](self, "locationID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, !v10))
  {
    v104 = &stru_2882270E8;
    if (!condition)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v104 = LocalizedWeatherDescription(self->_conditionCode, isDay, 1);
  v11 = [(NSArray *)self->_dayForecasts count];
  v12 = [(NSArray *)self->_hourlyForecasts count];
  if (v11)
  {
    firstObject = [(NSArray *)self->_dayForecasts firstObject];
  }

  else
  {
    firstObject = 0;
  }

  if (self->_conditionCode <= 2)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"MAJOR_EVENT_FORMAT" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v104 = [v16 stringWithFormat:v18, v104];

    goto LABEL_95;
  }

  string = [MEMORY[0x277CCAB68] string];
  array = [MEMORY[0x277CBEB18] array];
  string2 = [MEMORY[0x277CCAB68] string];
  [(WFTemperature *)self->_feelsLike temperatureForUnit:2];
  v21 = v20;
  [(WFTemperature *)self->_temperature temperatureForUnit:2];
  v96 = v12;
  if (self->_feelsLike)
  {
    v23 = v21 - v22;
    v24 = v23 > 10.0 || v21 <= *&CityMaxWindChillTemperature;
    v25 = v23 > 10.0 || v21 >= *&CityMinHeatIndexTemperature;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  windSpeed = self->_windSpeed;
  visibility = self->_visibility;
  v29 = visibility <= 1.6 && visibility != 1.1755e-38;
  v30 = @"FAHRENHEIT";
  if (v8 == 2)
  {
    v30 = @"CELSIUS";
  }

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"TEMP_UNIT_%@", v30];
  v103 = string;
  v98 = v31;
  if (WAIsChinaSKUAndSimplifiedChinese())
  {
    v32 = &stru_2882270E8;
  }

  else
  {
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v33 localizedStringForKey:v31 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

    string = v103;
  }

  v99 = v32;
  v100 = firstObject;
  if (v24 || v25 || windSpeed >= 25.0 || v29)
  {
    [string appendString:@"CONDITION_NOW_"];
    [array addObject:v104];
    if (v24)
    {
      [string appendString:@"WINDCHILL_"];
      v34 = WATemperatureStringForOutputUnit(self->_feelsLike, v8);
      v117[0] = v34;
      v35 = v117;
    }

    else
    {
      if (!v25)
      {
LABEL_38:
        if (windSpeed >= 25.0)
        {
          [string appendString:@"WIND_"];
          v37 = +[WeatherWindSpeedFormatter convenienceFormatter];
          *&v38 = self->_windSpeed;
          v95 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
          v94 = [v37 stringForObjectValue:v95];
          v115[0] = v94;
          v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v40 = [(City *)self windDirectionAsString:self->_windDirection];
          v41 = [v39 localizedStringForKey:v40 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
          v115[1] = v41;
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
          [array addObjectsFromArray:v42];

          string = v103;
          v32 = v99;

          firstObject = v100;
        }

        if (v29)
        {
          [string appendString:@"VISIBILITY_"];
        }

        goto LABEL_42;
      }

      [string appendString:@"HEAT_INDEX_"];
      v34 = WATemperatureStringForOutputUnit(self->_feelsLike, v8);
      v116 = v34;
      v35 = &v116;
    }

    v35[1] = v32;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [array addObjectsFromArray:v36];

    string = v103;
    goto LABEL_38;
  }

LABEL_42:
  observationTime = self->_observationTime;
  if (observationTime - 400 <= 0x258)
  {
    v44 = WALogForCategory(0);
    v45 = string2;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [City naturalLanguageDescriptionWithDescribedCondition:];
    }

    [string2 appendFormat:@"Forecast Type %d to %d", 400, 1000];
    v46 = [(City *)self primaryConditionForRange:0, v96];
    if (![v103 length] && v46 != 3200)
    {
      [v103 appendString:@"TODAY_CONDITION_"];
      v47 = LocalizedWeatherDescription(v46, 1, 1);
      [array addObject:v47];

      [v103 appendString:@"IT_IS_CURRENTLY_HIGH_WILL_BE"];
      v48 = WATemperatureStringForOutputUnit(self->_temperature, v8);
      v114[0] = v48;
      v114[1] = v32;
      high = [v100 high];
      v50 = v8;
      v51 = array;
      v52 = WATemperatureStringForOutputUnit(high, v50);
      v114[2] = v52;
      v114[3] = v32;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:4];
      [array addObjectsFromArray:v53];

      conditionCode = v46;
LABEL_91:

      firstObject = v100;
      v45 = string2;
      goto LABEL_92;
    }

    if ([v103 length])
    {
      goto LABEL_60;
    }

    [v103 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WILL_BE"];
    v113[0] = v104;
    v48 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v113[1] = v48;
    v113[2] = v32;
    high = [v100 high];
    v52 = WATemperatureStringForOutputUnit(high, v8);
    v113[3] = v52;
    v113[4] = v32;
    v73 = MEMORY[0x277CBEA60];
    v74 = v113;
    goto LABEL_82;
  }

  v45 = string2;
  if (observationTime - 1001 <= 0x31F)
  {
    v54 = WALogForCategory(0);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [City naturalLanguageDescriptionWithDescribedCondition:];
    }

    [string2 appendFormat:@"Forecast Type %d to %d", 1000, 1800];
    v55 = [(City *)self locationOfTime:1800];
    v56 = [(City *)self locationOfTime:0];
    v57 = [v103 length];
    if (v55 != 0x7FFFFFFFFFFFFFFFLL && v56 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v57)
      {
        [v103 appendString:@"CURRENTLY_NOW_"];
        [array addObject:v104];
      }

      v58 = v96;
      if (v55 < v56)
      {
        v58 = v56;
      }

      v59 = [(City *)self primaryConditionForRange:v55, v58 - v55];
      if (self->_conditionCode == v59)
      {
        [v103 appendString:@"MIDDAY_SAME"];
        [firstObject high];
        v48 = v60 = firstObject;
        high = WATemperatureStringForOutputUnit(v48, v8);
        v112[0] = high;
        v112[1] = v32;
        v52 = [v60 low];
        v61 = WATemperatureStringForOutputUnit(v52, v8);
        v112[2] = v61;
        v112[3] = v32;
        v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:4];
        v51 = array;
        [array addObjectsFromArray:v62];
      }

      else
      {
        v82 = v59;
        [v103 appendString:@"MIDDAY_DIFFERENT"];
        [firstObject high];
        v48 = v83 = firstObject;
        high = WATemperatureStringForOutputUnit(v48, v8);
        v111[0] = high;
        v111[1] = v32;
        v52 = LocalizedWeatherDescription(v82, 0, 1);
        v111[2] = v52;
        v61 = [v83 low];
        v62 = WATemperatureStringForOutputUnit(v61, v8);
        v111[3] = v62;
        v111[4] = v32;
        v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:5];
        v51 = array;
        [array addObjectsFromArray:v84];
      }

      goto LABEL_90;
    }

    if (v57)
    {
      goto LABEL_85;
    }

    [v103 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WILL_BE"];
    v110[0] = v104;
    v71 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v72 = firstObject;
    v48 = v71;
    v110[1] = v71;
    v110[2] = v32;
    high = [v72 high];
    v52 = WATemperatureStringForOutputUnit(high, v8);
    v110[3] = v52;
    v110[4] = v32;
    v73 = MEMORY[0x277CBEA60];
    v74 = v110;
    goto LABEL_82;
  }

  v63 = observationTime - 1801;
  v64 = WALogForCategory(0);
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
  if (v63 <= 0x22E)
  {
    if (v65)
    {
      [City naturalLanguageDescriptionWithDescribedCondition:];
    }

    [string2 appendFormat:@"Forecast Type %d to %d", 1800, 2359];
    v66 = [(City *)self locationOfTime:2359];
    v67 = [(City *)self locationOfTime:0];
    v68 = [v103 length];
    if (v66 != 0x7FFFFFFFFFFFFFFFLL && v67 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v68)
      {
        [v103 appendFormat:@"CURRENTLY_COMMA_"];
        [array addObject:v104];
      }

      v69 = v96;
      if (v66 < v67)
      {
        v69 = v67;
      }

      v70 = [(City *)self primaryConditionForRange:v66, v69 - v66];
      if (self->_conditionCode == v70)
      {
        [v103 appendFormat:@"AFTERNOON_SAME"];
        v48 = [firstObject low];
        high = WATemperatureStringForOutputUnit(v48, v8);
        v109[0] = high;
        v109[1] = v32;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
        v51 = array;
        [array addObjectsFromArray:v52];
        goto LABEL_91;
      }

      v89 = v70;
      [v103 appendFormat:@"AFTERNOON_DIFFERENT"];
      v90 = LocalizedWeatherDescription(v89, 0, 0);
      v91 = firstObject;
      v48 = v90;
      v108[0] = v90;
      high = [v91 low];
      v52 = WATemperatureStringForOutputUnit(high, v8);
      v108[1] = v52;
      v108[2] = v32;
      v73 = MEMORY[0x277CBEA60];
      v74 = v108;
      v81 = 3;
      goto LABEL_83;
    }

    if (v68)
    {
      goto LABEL_85;
    }

    [v103 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WAS"];
    v107[0] = v104;
    v92 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v93 = firstObject;
    v48 = v92;
    v107[1] = v92;
    v107[2] = v32;
    high = [v93 high];
    v52 = WATemperatureStringForOutputUnit(high, v8);
    v107[3] = v52;
    v107[4] = v32;
    v73 = MEMORY[0x277CBEA60];
    v74 = v107;
LABEL_82:
    v81 = 5;
LABEL_83:
    v61 = [v73 arrayWithObjects:v74 count:v81];
    v51 = array;
    [array addObjectsFromArray:v61];
LABEL_90:

    goto LABEL_91;
  }

  if (v65)
  {
    [City naturalLanguageDescriptionWithDescribedCondition:];
  }

  [string2 appendFormat:@"Forecast Type %d to %d", 2359, 400];
  v75 = [(City *)self locationOfTime:400];
  v76 = [(City *)self locationOfTime:2400];
  if (v75 != 0x7FFFFFFFFFFFFFFFLL && v76 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v77 = v96;
    if (v75 < v76)
    {
      v77 = v76;
    }

    conditionCode = [(City *)self primaryConditionForRange:v75, v77 - v75];
    v97 = [MEMORY[0x277CCAB68] stringWithString:@"CONDITION_LIKELY_TOMORROW_WITH_HIGH_AND_LOW"];

    v48 = LocalizedWeatherDescription(conditionCode, 1, 1);
    v106[0] = v48;
    high = [v100 high];
    v52 = WATemperatureStringForOutputUnit(high, v8);
    v106[1] = v52;
    v106[2] = v32;
    v78 = [v100 low];
    v79 = WATemperatureStringForOutputUnit(v78, v8 == 2);
    v106[3] = v79;
    v106[4] = v99;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:5];
    v51 = array;
    [array addObjectsFromArray:v80];

    v103 = v97;
    goto LABEL_91;
  }

  if (![v103 length])
  {
    [v103 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WILL_BE"];
    v105[0] = v104;
    v48 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v105[1] = v48;
    v105[2] = v32;
    high = [v100 high];
    v52 = WATemperatureStringForOutputUnit(high, v8);
    v105[3] = v52;
    v105[4] = v32;
    v73 = MEMORY[0x277CBEA60];
    v74 = v105;
    goto LABEL_82;
  }

LABEL_60:
  firstObject = v100;
LABEL_85:
  v51 = array;
LABEL_92:
  [v45 appendFormat:@" - wc %f hi %f w %f v %f / hours %d / ", self->_windChill, self->_heatIndex, self->_windSpeed, self->_visibility, -[NSArray count](self->_hourlyForecasts, "count")];
  v85 = MEMORY[0x277CCACA8];
  v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v87 = [v86 localizedStringForKey:v103 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v104 = [v85 stringWithFormat:v87 andArguments:v51];

  [v45 appendString:v104];
  v88 = WALogForCategory(1);
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
  {
    [City naturalLanguageDescriptionWithDescribedCondition:];
  }

LABEL_95:
  if (condition)
  {
LABEL_6:
    *condition = conditionCode;
  }

LABEL_7:

  return v104;
}

- (unint64_t)precipitationForecast
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = self->_hourlyForecasts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v3)
  {

    return 2;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v22;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v2);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      conditionCode = [v12 conditionCode];
      if (((0x1017FFF80001uLL >> conditionCode) & 1) == 0)
      {
        v14 = PrecipitationTypeMap_0[conditionCode];
        if (!v7)
        {
          v7 = PrecipitationTypeMap_0[conditionCode];
        }

        if (v14 == 4)
        {
          v15 = v9 + 1;
        }

        else
        {
          v15 = v9;
        }

        if (v14 == 3)
        {
          v16 = v5 + 1;
        }

        else
        {
          v16 = v5;
        }

        if (v14 == 3)
        {
          v15 = v9;
        }

        if (v14 == 2)
        {
          ++v8;
        }

        else
        {
          v5 = v16;
        }

        if (v14 != 2)
        {
          v9 = v15;
        }
      }

      temperature = [v12 temperature];
      [temperature temperatureForUnit:2];
      v19 = v18;

      if (v19 < 0.0)
      {
        ++v6;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v4);

  if (v8 >= 1 && v8 > v5)
  {
    return 2;
  }

  if (v5 < 1 || v5 <= v8)
  {
    if (v9 >= 1 && v9 > v8 && v9 > v5)
    {
      return 4;
    }

    if (v7)
    {
      return v7;
    }

    if (!v6)
    {
      return 2;
    }
  }

  return 3;
}

- (void)_generateLocalizableStrings
{
  v129[4] = *MEMORY[0x277D85DE8];
  v126 = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v127 = @"It's currently %8$@%9$@; the high will be %10$@%11$@. ";
  v128[0] = @"TODAY_CONDITION";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
  v129[0] = v2;
  v128[1] = @"CURRENTLY_NOW";
  v124[0] = @"MIDDAY_SAME";
  v124[1] = @"MIDDAY_DIFFERENT";
  v125[0] = @"The high will be %2$@%3$@. The low tonight will be %4$@%5$@. ";
  v125[1] = @"The high will be %2$@%3$@. %4$@ tonight with a low of %5$@%6$@. ";
  v124[2] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v124[3] = @"IT_IS_CURRENTLY_HIGH_WAS";
  v125[2] = @"It's %8$@%9$@; the high will be %10$@%11$@. ";
  v125[3] = @"It's %8$@%9$@; the high today was forecast as %10$@%11$@. ";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:4];
  v129[1] = v3;
  v128[2] = @"CURRENTLY_COMMA";
  v122[0] = @"AFTERNOON_SAME";
  lowercaseString = [@"The low tonight will be %8$@%9$@. " lowercaseString];
  v123[0] = lowercaseString;
  v122[1] = @"AFTERNOON_DIFFERENT";
  lowercaseString2 = [@"%8$@ tonight with a low of %9$@%10$@. " lowercaseString];
  v123[1] = lowercaseString2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v128[3] = @"CONDITION_LIKELY_TOMORROW";
  v129[2] = v6;
  v129[3] = &unk_2882357D8;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:4];

  v120[0] = @"TODAY_CONDITION";
  v118 = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v119 = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v121[0] = v7;
  v120[1] = @"CURRENTLY_NOW";
  v116[0] = @"MIDDAY_SAME";
  v116[1] = @"MIDDAY_DIFFERENT";
  v117[0] = @"2 = High Temperature for day, 3 = Temperature Unit , 4 = Low Temperature for day, 5 = Temperature Unit ";
  v117[1] = @"2 = High Temperature for day, 3 = Temperature Unit, 4 = Condition (Cloudy, Rainy, etc.), 5 = Low Temperature for day, 6 = Temperature Unit ";
  v116[2] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v116[3] = @"IT_IS_CURRENTLY_HIGH_WAS";
  v117[2] = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v117[3] = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:4];
  v121[1] = v8;
  v120[2] = @"CURRENTLY_COMMA";
  v114[0] = @"AFTERNOON_SAME";
  v114[1] = @"AFTERNOON_DIFFERENT";
  v115[0] = @"8 = Low Temperature for tonight, 9 = Temperature Unit";
  v115[1] = @"8 = Condition for tonight, 9 = Low Temperature for tonight, 10 = Temperature Unit ";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v120[3] = @"CONDITION_LIKELY_TOMORROW";
  v121[2] = v9;
  v121[3] = &unk_288235800;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:4];

  v112[0] = &stru_2882270E8;
  v112[1] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v113[0] = &stru_2882270E8;
  v113[1] = @"It's currently %8$@%9$@; the high will be %10$@%11$@. ";
  v112[2] = @"MIDDAY_SAME";
  v112[3] = @"MIDDAY_DIFFERENT";
  v113[2] = @"The high will be %8$@%9$@. The low tonight will be %10$@%11$@. ";
  v113[3] = @"The high will be %8$@%9$@. %10$@ tonight with a low of %11$@%12$@. ";
  v112[4] = @"AFTERNOON_SAME";
  v112[5] = @"AFTERNOON_DIFFERENT";
  v113[4] = @"The low tonight will be %8$@%9$@. ";
  v113[5] = @"%8$@ tonight with a low of %9$@%10$@. ";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:6];
  v110[0] = @"_";
  v110[1] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v111[0] = &stru_2882270E8;
  v111[1] = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v110[2] = @"MIDDAY_SAME";
  v110[3] = @"MIDDAY_DIFFERENT";
  v111[2] = @"8 = High Temperature for day, 9 = Temperature Unit, 10 = Low Temperature for day, 11 = Temperature Unit";
  v111[3] = @"8 = High Temperature for day, 9 = Temperature Unit, 10 = Condition (Cloudy, Rainy, etc.), 11 = Low Temperature for day, 12 = Temperature Unit,";
  v110[4] = @"AFTERNOON_SAME";
  v110[5] = @"AFTERNOON_DIFFERENT";
  v111[4] = @"8 = Low Temperature for tonight, 9 = Temperature Unit";
  v111[5] = @"8 = Condition for tonight, 9 = Low Temperature for tonight, 10 = Temperature Unit ";
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:6];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v55 = [&unk_288235788 countByEnumeratingWithState:&v83 objects:v109 count:16];
  if (v55)
  {
    v54 = *v84;
    do
    {
      v10 = 0;
      do
      {
        if (*v84 != v54)
        {
          objc_enumerationMutation(&unk_288235788);
        }

        v57 = v10;
        v11 = *(*(&v83 + 1) + 8 * v10);
        v12 = [v47 objectForKey:v11];
        v60 = v11;
        v62 = [v46 objectForKey:v11];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v79 objects:v108 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v80;
          do
          {
            v17 = 0;
            v64 = v15;
            do
            {
              if (*v80 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v79 + 1) + 8 * v17);
              v19 = WALogForCategory(0);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                [&unk_288235788 objectForKey:v60];
                v21 = v20 = v16;
                v22 = [v13 objectForKey:v18];
                v23 = [&unk_2882357B0 objectForKey:v60];
                v24 = [v62 objectForKey:v18];
                *buf = 138413570;
                v88 = v60;
                v89 = 2112;
                v90 = v18;
                v91 = 2112;
                v92 = v21;
                v93 = 2112;
                v94 = v22;
                v95 = 2112;
                v96 = v23;
                v97 = 2112;
                v98 = v24;
                _os_log_impl(&dword_272ACF000, v19, OS_LOG_TYPE_DEFAULT, "########### %@_%@ = %@%@; /* %@%@ */", buf, 0x3Eu);

                v16 = v20;
                v15 = v64;
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v79 objects:v108 count:16];
          }

          while (v15);
        }

        v25 = WALogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "###########", buf, 2u);
        }

        v10 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v55 = [&unk_288235788 countByEnumeratingWithState:&v83 objects:v109 count:16];
    }

    while (v55);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v48 = [&unk_288235828 countByEnumeratingWithState:&v75 objects:v107 count:16];
  if (v48)
  {
    v45 = *v76;
    do
    {
      v26 = 0;
      do
      {
        if (*v76 != v45)
        {
          objc_enumerationMutation(&unk_288235828);
        }

        v49 = v26;
        v56 = *(*(&v75 + 1) + 8 * v26);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v52 = [&unk_288235878 countByEnumeratingWithState:&v71 objects:v106 count:16];
        if (v52)
        {
          v51 = *v72;
          do
          {
            v27 = 0;
            do
            {
              if (*v72 != v51)
              {
                objc_enumerationMutation(&unk_288235878);
              }

              v53 = v27;
              v61 = *(*(&v71 + 1) + 8 * v27);
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v28 = v50;
              v29 = [v28 countByEnumeratingWithState:&v67 objects:v105 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v68;
                v58 = *v68;
                v59 = v28;
                do
                {
                  v32 = 0;
                  v63 = v30;
                  do
                  {
                    if (*v68 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v67 + 1) + 8 * v32);
                    v34 = [v66 objectForKey:v33];
                    v35 = v34;
                    v36 = &stru_2882270E8;
                    if (v34)
                    {
                      v36 = v34;
                    }

                    v37 = v36;

                    v38 = WALogForCategory(0);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = [&unk_288235828 objectForKey:v56];
                      v39 = [&unk_288235878 objectForKey:v61];
                      v40 = [v28 objectForKey:v33];
                      v41 = [&unk_288235850 objectForKey:v56];
                      v42 = [&unk_2882358A0 objectForKey:v61];
                      *buf = 138414338;
                      v88 = v56;
                      v31 = v58;
                      v89 = 2112;
                      v90 = v61;
                      v91 = 2112;
                      v92 = v33;
                      v93 = 2112;
                      v94 = v65;
                      v95 = 2112;
                      v96 = v39;
                      v97 = 2112;
                      v98 = v40;
                      v99 = 2112;
                      v100 = v41;
                      v101 = 2112;
                      v102 = v42;
                      v103 = 2112;
                      v104 = v37;
                      _os_log_impl(&dword_272ACF000, v38, OS_LOG_TYPE_DEFAULT, "########### %@_%@_%@ = %@%@%@; /* %@%@%@ */", buf, 0x5Cu);

                      v30 = v63;
                      v28 = v59;
                    }

                    ++v32;
                  }

                  while (v30 != v32);
                  v30 = [v28 countByEnumeratingWithState:&v67 objects:v105 count:16];
                }

                while (v30);
              }

              v43 = WALogForCategory(0);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_272ACF000, v43, OS_LOG_TYPE_DEFAULT, "###########", buf, 2u);
              }

              v27 = v53 + 1;
            }

            while (v53 + 1 != v52);
            v52 = [&unk_288235878 countByEnumeratingWithState:&v71 objects:v106 count:16];
          }

          while (v52);
        }

        v44 = WALogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v44, OS_LOG_TYPE_DEFAULT, "###########", buf, 2u);
        }

        v26 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [&unk_288235828 countByEnumeratingWithState:&v75 objects:v107 count:16];
    }

    while (v48);
  }
}

- (void)updateCityForModel:(id)model
{
  v59 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (!modelCopy)
  {
    goto LABEL_34;
  }

  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 136315650;
    selfCopy7 = "[City updateCityForModel:]";
    v55 = 2112;
    selfCopy2 = modelCopy;
    v57 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "%s, forecastModel:%@, city:%@, airQualityCondition", &v53, 0x20u);
  }

  [(City *)self clearForecasts];
  location = [(City *)modelCopy location];

  if (location)
  {
    location2 = [(City *)modelCopy location];
    [(City *)self setWfLocation:location2];
  }

  link = [(City *)modelCopy link];
  [(City *)self setLink:link];

  deepLink = [(City *)modelCopy deepLink];
  [(City *)self setDeeplink:deepLink];

  currentConditions = [(City *)modelCopy currentConditions];
  v11 = currentConditions;
  if (currentConditions)
  {
    temperature = [currentConditions temperature];
    [(City *)self setTemperature:temperature];

    feelsLike = [v11 feelsLike];
    [(City *)self setFeelsLike:feelsLike];

    [v11 windDirection];
    [(City *)self setWindDirection:?];
    [v11 windSpeed];
    [(City *)self setWindSpeed:?];
    [v11 humidity];
    [(City *)self setHumidity:?];
    [v11 dewPoint];
    [(City *)self setDewPoint:?];
    [v11 visibility];
    [(City *)self setVisibility:?];
    [v11 pressure];
    [(City *)self setPressure:?];
    -[City setPressureRising:](self, "setPressureRising:", [v11 pressureRising]);
    -[City setUVIndex:](self, "setUVIndex:", [v11 UVIndex]);
    [v11 precipitationPast24Hours];
    [(City *)self setPrecipitationPast24Hours:v14];
    -[City setConditionCode:](self, "setConditionCode:", [v11 conditionCode]);
    -[City setObservationTime:](self, "setObservationTime:", [v11 observationTime]);
  }

  airQualityConditions = [(City *)modelCopy airQualityConditions];
  localizedAirQualityScaleCategory = [(City *)airQualityConditions localizedAirQualityScaleCategory];
  if (airQualityConditions)
  {
    v17 = WALogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138412546;
      selfCopy7 = airQualityConditions;
      v55 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_272ACF000, v17, OS_LOG_TYPE_DEFAULT, "airCondition=%@, city: %@", &v53, 0x16u);
    }

    scaleIdentifier = [(City *)airQualityConditions scaleIdentifier];
    if (!scaleIdentifier)
    {
      v19 = WALogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v53 = 138412290;
        selfCopy7 = self;
        _os_log_impl(&dword_272ACF000, v19, OS_LOG_TYPE_DEFAULT, "error airCondition.scaleIdentifier was NULL for city: %@, using default", &v53, 0xCu);
      }

      scaleIdentifier = @"AQI";
    }

    [(City *)self setAirQualityScaleIdentifier:scaleIdentifier];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[City airQualityIndex](airQualityConditions, "airQualityIndex")}];
    [(City *)self setAirQualityIdx:v20];

    [(City *)self setAirQualityScaleCategory:localizedAirQualityScaleCategory];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WAAirQualityCategoryFromConditions(airQualityConditions)];
    [(City *)self setAirQualityCategory:v21];

    [(City *)self setAirQualitySignificance:[(City *)airQualityConditions significance]];
    [(City *)self setAirQualityTemporarilyUnavailable:[(City *)airQualityConditions temporarilyUnavailable]];
    scale = [(City *)airQualityConditions scale];
    [(City *)self setAirQualityScale:scale];

    currentScaleCategory = [(City *)airQualityConditions currentScaleCategory];
    [(City *)self setAirQualityCurrentScaleCategory:currentScaleCategory];

    currentScaleCategory2 = [(City *)airQualityConditions currentScaleCategory];
    recommendation = [currentScaleCategory2 recommendation];
    [(City *)self setAirQualityRecommendation:recommendation];

    providerAttribution = [(City *)airQualityConditions providerAttribution];
    name = [providerAttribution name];
    v28 = [name length];

    if (v28)
    {
      v29 = [[WeatherAQIAttribution alloc] initWithFoundationAttribution:providerAttribution];
      [(City *)self setAirQualityAttribution:v29];
      learnMoreURL = [(City *)airQualityConditions learnMoreURL];
    }

    else
    {
      if (![(City *)self airQualityCanUseDefaultAttribution])
      {
LABEL_20:

        goto LABEL_21;
      }

      mEMORY[0x277D7B270] = [MEMORY[0x277D7B270] sharedManager];
      defaultProviderAttribution = [mEMORY[0x277D7B270] defaultProviderAttribution];

      v29 = [[WeatherAQIAttribution alloc] initWithFoundationAttribution:defaultProviderAttribution];
      [(City *)self setAirQualityAttribution:v29];
      learnMoreURL = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.weather.com/wx/today/"];
      providerAttribution = defaultProviderAttribution;
    }

    [(City *)self setAirQualityLearnMoreURL:learnMoreURL];

    goto LABEL_20;
  }

LABEL_21:
  if ([(City *)self conditionCode]== 3200)
  {
    v33 = WALogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [City updateCityForModel:?];
    }
  }

  v34 = WALogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    hourlyForecasts = [(City *)modelCopy hourlyForecasts];
    v53 = 138543618;
    selfCopy7 = self;
    v55 = 2114;
    selfCopy2 = hourlyForecasts;
    _os_log_impl(&dword_272ACF000, v34, OS_LOG_TYPE_DEFAULT, "Updating city with hourly forecast, city: %{public}@, hourlyForecast=%{public}@", &v53, 0x16u);
  }

  hourlyForecasts2 = [(City *)modelCopy hourlyForecasts];
  [(City *)self setHourlyForecasts:hourlyForecasts2];

  v37 = WALogForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    dailyForecasts = [(City *)modelCopy dailyForecasts];
    v53 = 138543618;
    selfCopy7 = self;
    v55 = 2114;
    selfCopy2 = dailyForecasts;
    _os_log_impl(&dword_272ACF000, v37, OS_LOG_TYPE_DEFAULT, "Updating city with daily forecast, city: %{public}@, dailyForecast=%{public}@", &v53, 0x16u);
  }

  dailyForecasts2 = [(City *)modelCopy dailyForecasts];
  [(City *)self setDayForecasts:dailyForecasts2];

  _ISO8601Calendar = [objc_opt_class() _ISO8601Calendar];
  timeZone = [(City *)self timeZone];
  [_ISO8601Calendar setTimeZone:timeZone];

  sunrise = [(City *)modelCopy sunrise];
  v43 = [_ISO8601Calendar components:96 fromDate:sunrise];

  -[City setSunriseTime:](self, "setSunriseTime:", [v43 minute] + 100 * objc_msgSend(v43, "hour"));
  sunset = [(City *)modelCopy sunset];
  v45 = [_ISO8601Calendar components:96 fromDate:sunset];

  -[City setSunsetTime:](self, "setSunsetTime:", [v45 minute] + 100 * objc_msgSend(v45, "hour"));
  v46 = WALogForCategory(0);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    severeWeatherEvents = [(City *)modelCopy severeWeatherEvents];
    v53 = 138543618;
    selfCopy7 = self;
    v55 = 2114;
    selfCopy2 = severeWeatherEvents;
    _os_log_impl(&dword_272ACF000, v46, OS_LOG_TYPE_DEFAULT, "Updating city with severe weather events, city: %{public}@, severeWeatherEvents=%{public}@", &v53, 0x16u);
  }

  severeWeatherEvents2 = [(City *)modelCopy severeWeatherEvents];
  [(City *)self updateCityForSevereWeatherEvents:severeWeatherEvents2];

  v49 = WALogForCategory(0);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    nextHourPrecipitation = [(City *)modelCopy nextHourPrecipitation];
    v53 = 138543618;
    selfCopy7 = self;
    v55 = 2114;
    selfCopy2 = nextHourPrecipitation;
    _os_log_impl(&dword_272ACF000, v49, OS_LOG_TYPE_DEFAULT, "Updating city with next hour precipitation model, city: %{public}@, nextHourPrecipitation=%{public}@", &v53, 0x16u);
  }

  nextHourPrecipitation2 = [(City *)modelCopy nextHourPrecipitation];
  [(City *)self setNextHourPrecipitation:nextHourPrecipitation2];

  date = [MEMORY[0x277CBEAA8] date];
  [(City *)self setUpdateTime:date];

LABEL_34:
}

- (void)updateCityForSevereWeatherEvents:(id)events
{
  v22 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = eventsCopy;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        expirationDate = [v10 expirationDate];
        date = [MEMORY[0x277CBEAA8] date];
        v13 = [expirationDate compare:date];

        if (v13 == 1)
        {
          [array addObject:v10];
        }

        if ([(City *)self _isValidLearnMoreURLForSevereEvent:v10])
        {
          v14 = [v10 URL];

          v7 = v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(City *)self setSevereWeatherEvents:array];
  [(City *)self setSevereWeatherEventLearnMoreURL:v7];
}

- (BOOL)_isValidLearnMoreURLForSevereEvent:(id)event
{
  v3 = [event URL];
  v4 = v3;
  if (v3)
  {
    scheme = [v3 scheme];
    uppercaseString = [scheme uppercaseString];

    if ([uppercaseString isEqualToString:@"HTTPS"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"HTTP"))
    {
      v7 = 1;
    }

    else
    {
      v8 = WALogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [City _isValidLearnMoreURLForSevereEvent:v4];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_dataIsValid
{
  timeZone = [(City *)self timeZone];
  if (timeZone)
  {
    hourlyForecasts = [(City *)self hourlyForecasts];
    if ([hourlyForecasts count])
    {
      dayForecasts = [(City *)self dayForecasts];
      if ([dayForecasts count])
      {
        temperature = [(City *)self temperature];
        v7 = temperature != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  [(City *)self coordinate];
  v5 = v4;
  [(City *)self coordinate];
  return [v3 stringWithFormat:@"%f-%f", v5, v6];
}

- (NSString)countryCode
{
  wfLocation = [(City *)self wfLocation];
  countryAbbreviation = [wfLocation countryAbbreviation];

  return countryAbbreviation;
}

- (unint64_t)aqiDataAvailabilityStatus
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v3 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"])
  {
    if ([(City *)self aqiDataAvailabilityStatusOverride])
    {
      aqiDataAvailabilityStatusOverride = [(City *)self aqiDataAvailabilityStatusOverride];
LABEL_9:
      v8 = aqiDataAvailabilityStatusOverride;
      goto LABEL_12;
    }

LABEL_8:
    aqiDataAvailabilityStatusOverride = [(City *)self aqiDataAvailabilityStatusFromAppConfig];
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v3 objectForKey:@"feature.enhancedAQIView.airQualityAvailabilityForCountryOverride"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [(City *)self aqiDataAvailabilityStatusFromAppConfig];
  }

  v8 = integerValue;

LABEL_12:
  return v8;
}

- (unint64_t)aqiDataAvailabilityStatusFromAppConfig
{
  mEMORY[0x277D7B2B0] = [MEMORY[0x277D7B2B0] sharedInstance];
  settings = [mEMORY[0x277D7B2B0] settings];
  aqiEnabledCountryCodes = [settings aqiEnabledCountryCodes];

  countryCode = [(City *)self countryCode];
  LODWORD(settings) = [aqiEnabledCountryCodes containsObject:countryCode];

  if (!settings)
  {
    goto LABEL_6;
  }

  if (![(City *)self airQualityTemporarilyUnavailable])
  {
    airQualityIdx = [(City *)self airQualityIdx];
    if (airQualityIdx)
    {
      v9 = airQualityIdx;
      airQualityCategory = [(City *)self airQualityCategory];
      v11 = airQualityCategory != 0;

      v7 = 2 * v11;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (NSNumber)airQualityCategory
{
  v3 = self->_airQualityCategory;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v4 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"] && (-[City airQualityCategoryOverride](self, "airQualityCategoryOverride"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(City *)self airQualityCategoryOverride];
    v3 = v7 = v3;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v7 = [v4 objectForKey:@"feature.enhancedAQIView.airQualityCategoryOverride"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v7;

        v3 = v7;
      }
    }
  }

LABEL_9:

  return v3;
}

- (NSNumber)airQualityIdx
{
  v3 = self->_airQualityIdx;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v4 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"] && (-[City airQualityIdxOverride](self, "airQualityIdxOverride"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(City *)self airQualityIdxOverride];
    v3 = v7 = v3;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v8 = [v4 stringForKey:@"feature.enhancedAQIView.airQualityIndexOverride"];
    v7 = v8;
    if (v8)
    {
      v9 = WANumberFormatterForDisplayingAQI(v8);
      v10 = [v9 numberFromString:v7];

      v3 = v10;
    }
  }

LABEL_8:

  return v3;
}

- (unint64_t)airQualitySignificance
{
  airQualitySignificance = self->_airQualitySignificance;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v4 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"] && -[City airQualitySignificanceOverride](self, "airQualitySignificanceOverride"))
  {
    airQualitySignificance = [(City *)self airQualitySignificanceOverride];
  }

  else if (v5)
  {
    v6 = [v4 objectForKey:@"feature.enhancedAQIView.airQualitySignificanceOverride"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        airQualitySignificance = [v6 integerValue];
      }
    }
  }

  return airQualitySignificance;
}

- (BOOL)airQualityForceHideRecommendation
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  v4 = [v2 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  v5 = 0;
  if (v3 && (v4 & 1) == 0)
  {
    v6 = [v2 objectForKey:@"feature.enhancedAQIView.airQualityRecommendationEnabled"];
    v5 = v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 integerValue] == 1;
  }

  return v5;
}

- (BOOL)airQualityCanUseDefaultAttribution
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  v4 = [v2 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  v5 = 0;
  if (v3 && (v4 & 1) == 0)
  {
    v5 = [v2 BOOLForKey:@"feature.enhancedAQIView.useDefaultAttribution"];
  }

  return v5;
}

- (BOOL)airQualityScaleIsAscending
{
  airQualityScale = [(City *)self airQualityScale];

  if (airQualityScale)
  {
    airQualityScale2 = [(City *)self airQualityScale];
    isAscending = [airQualityScale2 isAscending];
  }

  else
  {
    isAscending = 1;
  }

  v6 = +[WeatherInternalPreferences sharedInternalPreferences];
  v7 = [v6 BOOLForKey:@"feature.enhancedAQIView.scaleOverridesEnabled"];
  v8 = [v6 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  if (v7 && (v8 & 1) == 0)
  {
    v9 = [v6 objectForKey:@"feature.enhancedAQIView.scale.ascendingOverride"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v9 integerValue];
        if (integerValue == 1)
        {
          isAscending = 0;
        }

        else if (!integerValue)
        {
          isAscending = 1;
        }
      }
    }
  }

  return isAscending;
}

- (BOOL)airQualityScaleIsNumerical
{
  airQualityScale = [(City *)self airQualityScale];

  if (airQualityScale)
  {
    airQualityScale2 = [(City *)self airQualityScale];
    isNumerical = [airQualityScale2 isNumerical];
  }

  else
  {
    isNumerical = 1;
  }

  v6 = +[WeatherInternalPreferences sharedInternalPreferences];
  v7 = [v6 BOOLForKey:@"feature.enhancedAQIView.scaleOverridesEnabled"];
  v8 = [v6 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  if (v7 && (v8 & 1) == 0)
  {
    v9 = [v6 objectForKey:@"feature.enhancedAQIView.scale.numericalOverride"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v9 integerValue];
        if (integerValue == 1)
        {
          isNumerical = 0;
        }

        else if (!integerValue)
        {
          isNumerical = 1;
        }
      }
    }
  }

  return isNumerical;
}

- (WFAQIScale)airQualityScale
{
  defaultScale = self->_airQualityScale;
  if (!defaultScale)
  {
    v3 = +[WeatherInternalPreferences sharedInternalPreferences];
    if ([v3 BOOLForKey:@"feature.enhancedAQIView.allowUseDefaultScaleIfCacheEmpty"])
    {
      mEMORY[0x277D7B228] = [MEMORY[0x277D7B228] sharedManager];
      defaultScale = [mEMORY[0x277D7B228] defaultScale];
    }

    else
    {
      defaultScale = 0;
    }
  }

  return defaultScale;
}

- (NSDictionary)urlComponents
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(City *)self latitude];
  v5 = [v4 numberWithDouble:?];
  [dictionary na_safeSetObject:v5 forKey:@"lat"];

  v6 = MEMORY[0x277CCABB0];
  [(City *)self longitude];
  v7 = [v6 numberWithDouble:?];
  [dictionary na_safeSetObject:v7 forKey:@"long"];

  name = [(City *)self name];
  [dictionary na_safeSetObject:name forKey:@"city"];

  if ([(City *)self isLocalWeatherCity])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isLocal"];
  }

  return dictionary;
}

- (void)update
{
  displayName = [self displayName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272ACF000, v2, v3, "update of %@ aborted; weather is up to date.", v4, v5, v6, v7);
}

void __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Geocode failure while updating wfLocation for timezone etc. Error: %@", &v3, 0xCu);
}

- (void)cityDidFinishUpdatingWithError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_272ACF000, v1, OS_LOG_TYPE_ERROR, "City: %@, updating failed with error:%@", v2, 0x16u);
}

- (void)primaryConditionForRange:(NSRange)a1 .cold.1(NSRange a1, id *a2)
{
  v8 = NSStringFromRange(a1);
  [*a2 count];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.1()
{
  v6 = 67109376;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, v6);
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.2()
{
  v6 = 67109376;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, v6);
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.3()
{
  v6 = 67109376;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, v6);
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.4()
{
  v6 = 67109376;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, v6);
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_272ACF000, v0, OS_LOG_TYPE_DEBUG, "debugString: %@", v1, 0xCu);
}

- (void)updateCityForModel:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 displayName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_isValidLearnMoreURLForSevereEvent:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end