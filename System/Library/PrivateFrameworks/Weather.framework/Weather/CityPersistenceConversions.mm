@interface CityPersistenceConversions
+ (BOOL)cityDictionaryHasValidCoordinates:(id)coordinates;
+ (BOOL)isCityValid:(id)valid;
+ (id)cityFromALCity:(id)city;
+ (id)cityFromCloudDictionary:(id)dictionary;
+ (id)cityFromDictionary:(id)dictionary;
+ (id)cloudDictionaryRepresentationOfALCity:(id)city;
+ (id)cloudDictionaryRepresentationOfCity:(id)city;
+ (id)dayForecastDictionariesFromCity:(id)city;
+ (id)dictionaryRepresentationOfCity:(id)city;
+ (id)dictionaryRepresentationOfScaleCategory:(id)category;
+ (id)dictionaryRepresentationOfTemperature:(id)temperature;
+ (id)hourlyForecastDictionariesFromCity:(id)city;
+ (id)scaleCategoryFromDictionaryRepresentation:(id)representation;
+ (id)temperatureFromDictionaryRepresentation:(id)representation;
+ (id)weatherDetailsDictionaryFromCity:(id)city;
+ (void)populateCity:(id)city withDayForecastDictionaries:(id)dictionaries;
+ (void)populateCity:(id)city withHourlyForecastDictionaries:(id)dictionaries;
@end

@implementation CityPersistenceConversions

+ (id)cityFromDictionary:(id)dictionary
{
  v92[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v92[0] = @"Name";
  v92[1] = @"Lat";
  v92[2] = @"Lon";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __49__CityPersistenceConversions_cityFromDictionary___block_invoke;
  v89[3] = &unk_279E68788;
  v6 = dictionaryCopy;
  v90 = v6;
  if (![v5 na_all:v89])
  {
    v7 = 0;
    goto LABEL_28;
  }

  v84 = v5;
  v7 = objc_alloc_init(City);
  v8 = [v6 objectForKey:@"Name"];
  [(City *)v7 setName:v8];

  v9 = [v6 objectForKey:@"Lat"];
  [v9 doubleValue];
  [(City *)v7 setLatitude:?];

  v10 = [v6 objectForKey:@"Lon"];
  [v10 doubleValue];
  [(City *)v7 setLongitude:?];

  v11 = [v6 objectForKey:@"Country"];
  [(City *)v7 setISO3166CountryAbbreviation:v11];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v6 objectForKey:@"Link"];
  v14 = [v12 URLWithString:v13];
  [(City *)v7 setLink:v14];

  v15 = MEMORY[0x277CBEBC0];
  v16 = [v6 objectForKey:@"Deeplink"];
  v17 = [v15 URLWithString:v16];
  [(City *)v7 setDeeplink:v17];

  v18 = [v6 objectForKey:@"UpdateStatus"];
  -[City setLastUpdateStatus:](v7, "setLastUpdateStatus:", [v18 intValue]);

  v19 = [v6 objectForKey:@"UpateTime"];
  [(City *)v7 setUpdateTime:v19];

  v20 = [v6 objectForKey:@"WindChill"];
  [v20 floatValue];
  [(City *)v7 setWindChill:?];

  v21 = [v6 objectForKey:@"HeatIndex"];
  [v21 floatValue];
  [(City *)v7 setHeatIndex:?];

  v22 = objc_opt_class();
  v23 = [v6 objectForKey:@"FeelsLike"];
  v24 = [v22 temperatureFromDictionaryRepresentation:v23];
  [(City *)v7 setFeelsLike:v24];

  v25 = [v6 objectForKey:@"DewPoint"];
  [v25 floatValue];
  [(City *)v7 setDewPoint:?];

  v26 = [v6 objectForKey:@"WindSpeed"];
  [v26 floatValue];
  [(City *)v7 setWindSpeed:?];

  v27 = [v6 objectForKey:@"WindDirection"];
  [v27 floatValue];
  [(City *)v7 setWindDirection:?];

  v28 = [v6 objectForKey:@"Humidity"];
  [v28 floatValue];
  [(City *)v7 setHumidity:?];

  v29 = [v6 objectForKey:@"Visibility"];
  [v29 floatValue];
  [(City *)v7 setVisibility:?];

  v30 = [v6 objectForKey:@"Pressure"];
  [v30 floatValue];
  [(City *)v7 setPressure:?];

  v31 = [v6 objectForKey:@"PressureRising"];
  -[City setPressureRising:](v7, "setPressureRising:", [v31 integerValue]);

  v32 = objc_opt_class();
  v33 = [v6 objectForKey:@"Temperature"];
  v34 = [v32 temperatureFromDictionaryRepresentation:v33];
  [(City *)v7 setTemperature:v34];

  if (v6)
  {
    v35 = [v6 objectForKey:@"BigIcon"];
    -[City setConditionCode:](v7, "setConditionCode:", [v35 unsignedIntValue]);
  }

  else
  {
    [(City *)v7 setConditionCode:3200];
  }

  v36 = [v6 objectForKey:@"ObservationTime"];
  -[City setObservationTime:](v7, "setObservationTime:", [v36 unsignedIntValue]);

  v37 = [v6 objectForKey:@"SunsetTime"];
  -[City setSunsetTime:](v7, "setSunsetTime:", [v37 unsignedIntValue]);

  v38 = [v6 objectForKey:@"SunriseTime"];
  -[City setSunriseTime:](v7, "setSunriseTime:", [v38 unsignedIntValue]);

  v39 = [v6 objectForKey:@"MoonPhase"];
  -[City setMoonPhase:](v7, "setMoonPhase:", [v39 unsignedIntValue]);

  v40 = [v6 objectForKey:@"AirQualityIdxKey"];
  [(City *)v7 setAirQualityIdx:v40];

  v41 = [v6 objectForKey:@"AirQualityCategoryKey"];
  [(City *)v7 setAirQualityCategory:v41];

  v42 = [v6 objectForKey:@"AirQualitySignificance"];
  -[City setAirQualitySignificance:](v7, "setAirQualitySignificance:", [v42 unsignedIntegerValue]);

  v43 = [v6 objectForKey:@"CityWeatherDisplayName"];
  [(City *)v7 setWeatherDisplayName:v43];

  v44 = [v6 objectForKey:@"CityWeatherLocationName"];
  [(City *)v7 setWeatherLocationName:v44];

  v45 = [v6 objectForKey:@"CitySearchTitle"];
  [(City *)v7 setSearchTitle:v45];

  v46 = [v6 objectForKey:@"CitySearchSubtitle"];
  [(City *)v7 setSearchSubtitle:v46];

  v47 = [v6 objectForKey:@"TimeZone"];
  if (v47)
  {
    v48 = [MEMORY[0x277CBEBB0] timeZoneWithName:v47];
    [(City *)v7 setTimeZone:v48];
  }

  location = [(City *)v7 location];
  if (location)
  {
    v50 = location;
    name = [(City *)v7 name];
    if (!name)
    {
LABEL_14:

      goto LABEL_15;
    }

    v52 = name;
    timeZone = [(City *)v7 timeZone];

    if (timeZone)
    {
      v50 = objc_opt_new();
      name2 = [(City *)v7 name];
      [v50 setDisplayName:name2];

      location2 = [(City *)v7 location];
      [v50 setGeoLocation:location2];

      weatherDisplayName = [(City *)v7 weatherDisplayName];
      [v50 setWeatherDisplayName:weatherDisplayName];

      weatherLocationName = [(City *)v7 weatherLocationName];
      [v50 setWeatherLocationName:weatherLocationName];

      iSO3166CountryAbbreviation = [(City *)v7 ISO3166CountryAbbreviation];

      if (iSO3166CountryAbbreviation)
      {
        iSO3166CountryAbbreviation2 = [(City *)v7 ISO3166CountryAbbreviation];
        [v50 setCountryAbbreviation:iSO3166CountryAbbreviation2];
      }

      timeZone2 = [(City *)v7 timeZone];
      [v50 setTimeZone:timeZone2];

      [(City *)v7 setWfLocation:v50];
      goto LABEL_14;
    }
  }

LABEL_15:
  v61 = [v6 objectForKey:@"CityTimeZoneUpdateDateKey"];
  unsignedIntegerValue = [v61 unsignedIntegerValue];

  v83 = v47;
  if (unsignedIntegerValue)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v82 = ;
  [(City *)v7 setTimeZoneUpdateDate:v82];
  v63 = [v6 objectForKeyedSubscript:@"Past24HoursPrecipitation"];
  [v63 floatValue];
  [(City *)v7 setPrecipitationPast24Hours:v64];

  v65 = [v6 objectForKeyedSubscript:@"UVIndex"];
  -[City setUVIndex:](v7, "setUVIndex:", [v65 unsignedIntegerValue]);

  v66 = [v6 objectForKeyedSubscript:@"DayForecasts"];
  [self populateCity:v7 withDayForecastDictionaries:v66];

  v67 = [v6 objectForKeyedSubscript:@"HourlyForecasts"];
  [self populateCity:v7 withHourlyForecastDictionaries:v67];

  v68 = objc_opt_class();
  v69 = [v6 objectForKeyedSubscript:@"AQIScaleCategory"];
  v70 = [v68 scaleCategoryFromDictionaryRepresentation:v69];
  [(City *)v7 setAirQualityScaleCategory:v70];

  v71 = [v6 objectForKey:@"NextHourPrecipitation"];
  if (v71)
  {
    v72 = [objc_alloc(MEMORY[0x277D7B288]) initWithDictionary:v71];
    [(City *)v7 setNextHourPrecipitation:v72];
  }

  v73 = [v6 objectForKey:@"SevereWeatherEvents"];
  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v75 = v73;
  v76 = [v75 countByEnumeratingWithState:&v85 objects:v91 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v86;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v86 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [objc_alloc(MEMORY[0x277D7B2B8]) initWithDictionary:*(*(&v85 + 1) + 8 * i)];
        [v74 addObject:v80];
      }

      v77 = [v75 countByEnumeratingWithState:&v85 objects:v91 count:16];
    }

    while (v77);
  }

  [(City *)v7 updateCityForSevereWeatherEvents:v74];
  v5 = v84;
LABEL_28:

  return v7;
}

uint64_t __49__CityPersistenceConversions_cityFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (void)populateCity:(id)city withDayForecastDictionaries:(id)dictionaries
{
  v31 = *MEMORY[0x277D85DE8];
  cityCopy = city;
  dictionariesCopy = dictionaries;
  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = dictionariesCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    LODWORD(v9) = 0;
    v10 = *v27;
    do
    {
      v11 = 0;
      v9 = v9;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = objc_alloc_init(WADayForecast);
        v14 = [v12 objectForKey:@"ForecastDayOfWeek"];
        -[WADayForecast setDayOfWeek:](v13, "setDayOfWeek:", [v14 unsignedIntValue]);

        [(WADayForecast *)v13 setDayNumber:v9];
        v15 = objc_opt_class();
        v16 = [v12 objectForKey:@"High"];
        v17 = [v15 temperatureFromDictionaryRepresentation:v16];
        [(WADayForecast *)v13 setHigh:v17];

        v18 = objc_opt_class();
        v19 = [v12 objectForKey:@"Low"];
        v20 = [v18 temperatureFromDictionaryRepresentation:v19];
        [(WADayForecast *)v13 setLow:v20];

        v21 = [v12 objectForKey:@"Precipitation"];
        [v21 floatValue];
        [(WADayForecast *)v13 setPercentPrecipitation:v22];

        v23 = [v12 objectForKey:@"Icon"];
        -[WADayForecast setIcon:](v13, "setIcon:", [v23 unsignedIntValue]);

        [v6 na_safeAddObject:v13];
        ++v9;

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  [cityCopy setDayForecasts:v6];
}

+ (void)populateCity:(id)city withHourlyForecastDictionaries:(id)dictionaries
{
  v27 = *MEMORY[0x277D85DE8];
  cityCopy = city;
  dictionariesCopy = dictionaries;
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = dictionariesCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = objc_alloc_init(WAHourlyForecast);
        v13 = objc_opt_class();
        v14 = [v11 objectForKey:@"Temperature"];
        v15 = [v13 temperatureFromDictionaryRepresentation:v14];
        [(WAHourlyForecast *)v12 setTemperature:v15];

        v16 = [v11 objectForKey:@"Time24"];
        [(WAHourlyForecast *)v12 setTime:v16];

        v17 = [v11 objectForKey:@"Condition"];
        -[WAHourlyForecast setConditionCode:](v12, "setConditionCode:", [v17 integerValue]);

        v18 = [v11 objectForKey:@"Precipitation"];
        [v18 floatValue];
        [(WAHourlyForecast *)v12 setPercentPrecipitation:v19];

        [v6 na_safeAddObject:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  [cityCopy setHourlyForecasts:v6];
}

+ (BOOL)isCityValid:(id)valid
{
  validCopy = valid;
  v4 = validCopy;
  if (validCopy && ([validCopy coordinate], CLLocationCoordinate2DIsValid(v8)))
  {
    name = [v4 name];
    v6 = [name length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dictionaryRepresentationOfScaleCategory:(id)category
{
  v13[3] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v4 = categoryCopy;
  if (categoryCopy)
  {
    localizedCategoryDescription = [categoryCopy localizedCategoryDescription];
    if (localizedCategoryDescription && [v4 categoryIndex])
    {
      scaleClassName = [v4 scaleClassName];

      if (scaleClassName)
      {
        v12[0] = @"AQICategoryDescription";
        localizedCategoryDescription2 = [v4 localizedCategoryDescription];
        v13[0] = localizedCategoryDescription2;
        v12[1] = @"AQICategoryIndex";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "categoryIndex")}];
        v13[1] = v8;
        v12[2] = @"AQIScaleClass";
        scaleClassName2 = [v4 scaleClassName];
        v13[2] = scaleClassName2;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

+ (id)scaleCategoryFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"AQICategoryIndex"];
  integerValue = [v4 integerValue];

  v6 = [representationCopy objectForKeyedSubscript:@"AQICategoryDescription"];
  v7 = v6;
  v8 = &stru_2882270E8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [representationCopy objectForKeyedSubscript:@"AQIScaleClass"];

  v11 = NSClassFromString(v10);
  v12 = objc_alloc_init(v11);
  v13 = [v12 scaleCategoryForCategoryIndex:integerValue localizedCategoryDescription:v9];

  return v13;
}

+ (id)dictionaryRepresentationOfTemperature:(id)temperature
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (temperature)
  {
    temperatureCopy = temperature;
    v4 = NSStringFromWFTemperatureUnit();
    v17[0] = v4;
    v5 = MEMORY[0x277CCABB0];
    [temperatureCopy fahrenheit];
    v6 = [v5 numberWithDouble:?];
    v18[0] = v6;
    v7 = NSStringFromWFTemperatureUnit();
    v17[1] = v7;
    v8 = MEMORY[0x277CCABB0];
    [temperatureCopy celsius];
    v9 = [v8 numberWithDouble:?];
    v18[1] = v9;
    v10 = NSStringFromWFTemperatureUnit();
    v17[2] = v10;
    v11 = MEMORY[0x277CCABB0];
    [temperatureCopy kelvin];
    v13 = v12;

    v14 = [v11 numberWithDouble:v13];
    v18[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)temperatureFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([representationCopy count])
      {
        v4 = objc_opt_new();
        v5 = NSStringFromWFTemperatureUnit();
        v6 = [representationCopy objectForKeyedSubscript:v5];
        [v6 doubleValue];
        [v4 setCelsius:?];

        v7 = NSStringFromWFTemperatureUnit();
        v8 = [representationCopy objectForKeyedSubscript:v7];
        [v8 doubleValue];
        [v4 setKelvin:?];

        v9 = NSStringFromWFTemperatureUnit();
        v10 = [representationCopy objectForKeyedSubscript:v9];
        [v10 doubleValue];
        [v4 setFahrenheit:?];

        goto LABEL_10;
      }
    }

    else
    {
      v11 = WALogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CityPersistenceConversions temperatureFromDictionaryRepresentation:v11];
      }

      if (objc_opt_respondsToSelector())
      {
        [representationCopy doubleValue];
        v4 = [objc_alloc(MEMORY[0x277D7B2C0]) initWithTemperatureUnit:2 value:v12];
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

+ (id)dictionaryRepresentationOfCity:(id)city
{
  v24 = *MEMORY[0x277D85DE8];
  cityCopy = city;
  if ([self isCityValid:cityCopy])
  {
    v5 = [self weatherDetailsDictionaryFromCity:cityCopy];
    v6 = [self dayForecastDictionariesFromCity:cityCopy];
    [v5 na_safeSetObject:v6 forKey:@"DayForecasts"];

    v7 = [self hourlyForecastDictionariesFromCity:cityCopy];
    [v5 na_safeSetObject:v7 forKey:@"HourlyForecasts"];

    nextHourPrecipitation = [cityCopy nextHourPrecipitation];

    if (nextHourPrecipitation)
    {
      nextHourPrecipitation2 = [cityCopy nextHourPrecipitation];
      dictionaryRepresentation = [nextHourPrecipitation2 dictionaryRepresentation];
      [v5 setObject:dictionaryRepresentation forKey:@"NextHourPrecipitation"];
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    severeWeatherEvents = [cityCopy severeWeatherEvents];
    v13 = [severeWeatherEvents countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(severeWeatherEvents);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [severeWeatherEvents countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      [v5 setObject:v11 forKey:@"SevereWeatherEvents"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)cityDictionaryHasValidCoordinates:(id)coordinates
{
  v14 = *MEMORY[0x277D85DE8];
  coordinatesCopy = coordinates;
  v4 = [coordinatesCopy objectForKey:@"Lat"];
  v5 = [coordinatesCopy objectForKey:@"Lon"];
  v6 = v5;
  if (v4 && v5 && (([v4 doubleValue], v7 != 0.0) || (objc_msgSend(v6, "doubleValue"), v8 != 0.0)))
  {
    v10 = 1;
  }

  else
  {
    v9 = WALogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = coordinatesCopy;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Not loading city due to invalid coordinates: %@", &v12, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)dayForecastDictionariesFromCity:(id)city
{
  cityCopy = city;
  if ([self isCityValid:cityCopy])
  {
    dayForecasts = [cityCopy dayForecasts];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CityPersistenceConversions_dayForecastDictionariesFromCity___block_invoke;
    v8[3] = &__block_descriptor_40_e23__16__0__WADayForecast_8l;
    v8[4] = self;
    v6 = [dayForecasts na_map:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __62__CityPersistenceConversions_dayForecastDictionariesFromCity___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionary];
  v5 = objc_opt_class();
  v6 = [v3 high];
  v7 = [v5 dictionaryRepresentationOfTemperature:v6];
  [v4 na_safeSetObject:v7 forKey:@"High"];

  v8 = objc_opt_class();
  v9 = [v3 low];
  v10 = [v8 dictionaryRepresentationOfTemperature:v9];
  [v4 na_safeSetObject:v10 forKey:@"Low"];

  v11 = MEMORY[0x277CCABB0];
  [v3 percentPrecipitation];
  v12 = [v11 numberWithDouble:?];
  [v4 na_safeSetObject:v12 forKey:@"Precipitation"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "icon")}];
  [v4 na_safeSetObject:v13 forKey:@"Icon"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v3 dayOfWeek];

  v16 = [v14 numberWithUnsignedInteger:v15];
  [v4 na_safeSetObject:v16 forKey:@"ForecastDayOfWeek"];

  return v4;
}

+ (id)hourlyForecastDictionariesFromCity:(id)city
{
  cityCopy = city;
  if ([self isCityValid:cityCopy])
  {
    hourlyForecasts = [cityCopy hourlyForecasts];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__CityPersistenceConversions_hourlyForecastDictionariesFromCity___block_invoke;
    v8[3] = &__block_descriptor_40_e40___NSDictionary_16__0__WAHourlyForecast_8l;
    v8[4] = self;
    v6 = [hourlyForecasts na_map:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __65__CityPersistenceConversions_hourlyForecastDictionariesFromCity___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionary];
  v5 = objc_opt_class();
  v6 = [v3 temperature];
  v7 = [v5 dictionaryRepresentationOfTemperature:v6];
  [v4 na_safeSetObject:v7 forKey:@"Temperature"];

  v8 = [v3 time];
  [v4 na_safeSetObject:v8 forKey:@"Time24"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "conditionCode")}];
  [v4 na_safeSetObject:v9 forKey:@"Condition"];

  v10 = MEMORY[0x277CCABB0];
  [v3 percentPrecipitation];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  [v4 na_safeSetObject:v13 forKey:@"Precipitation"];

  return v4;
}

+ (id)weatherDetailsDictionaryFromCity:(id)city
{
  cityCopy = city;
  if ([self isCityValid:cityCopy])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    name = [cityCopy name];
    [dictionary na_safeSetObject:name forKey:@"Name"];

    iSO3166CountryAbbreviation = [cityCopy ISO3166CountryAbbreviation];
    [dictionary na_safeSetObject:iSO3166CountryAbbreviation forKey:@"Country"];

    link = [cityCopy link];
    absoluteString = [link absoluteString];
    [dictionary na_safeSetObject:absoluteString forKey:@"Link"];

    deeplink = [cityCopy deeplink];
    absoluteString2 = [deeplink absoluteString];
    [dictionary na_safeSetObject:absoluteString2 forKey:@"Deeplink"];

    v12 = MEMORY[0x277CCABB0];
    [cityCopy windChill];
    v13 = [v12 numberWithFloat:?];
    [dictionary na_safeSetObject:v13 forKey:@"WindChill"];

    v14 = MEMORY[0x277CCABB0];
    [cityCopy heatIndex];
    v15 = [v14 numberWithFloat:?];
    [dictionary na_safeSetObject:v15 forKey:@"HeatIndex"];

    v16 = objc_opt_class();
    feelsLike = [cityCopy feelsLike];
    v18 = [v16 dictionaryRepresentationOfTemperature:feelsLike];
    [dictionary na_safeSetObject:v18 forKey:@"FeelsLike"];

    v19 = MEMORY[0x277CCABB0];
    [cityCopy dewPoint];
    v20 = [v19 numberWithFloat:?];
    [dictionary na_safeSetObject:v20 forKey:@"DewPoint"];

    v21 = MEMORY[0x277CCABB0];
    [cityCopy windSpeed];
    v22 = [v21 numberWithFloat:?];
    [dictionary na_safeSetObject:v22 forKey:@"WindSpeed"];

    v23 = MEMORY[0x277CCABB0];
    [cityCopy windDirection];
    v24 = [v23 numberWithFloat:?];
    [dictionary na_safeSetObject:v24 forKey:@"WindDirection"];

    v25 = MEMORY[0x277CCABB0];
    [cityCopy humidity];
    v26 = [v25 numberWithFloat:?];
    [dictionary na_safeSetObject:v26 forKey:@"Humidity"];

    v27 = MEMORY[0x277CCABB0];
    [cityCopy visibility];
    v28 = [v27 numberWithFloat:?];
    [dictionary na_safeSetObject:v28 forKey:@"Visibility"];

    v29 = MEMORY[0x277CCABB0];
    [cityCopy pressure];
    v30 = [v29 numberWithFloat:?];
    [dictionary na_safeSetObject:v30 forKey:@"Pressure"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "pressureRising")}];
    [dictionary na_safeSetObject:v31 forKey:@"PressureRising"];

    v32 = MEMORY[0x277CCABB0];
    [cityCopy latitude];
    v33 = [v32 numberWithDouble:?];
    [dictionary na_safeSetObject:v33 forKey:@"Lat"];

    v34 = MEMORY[0x277CCABB0];
    [cityCopy longitude];
    v35 = [v34 numberWithDouble:?];
    [dictionary na_safeSetObject:v35 forKey:@"Lon"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "lastUpdateStatus")}];
    [dictionary na_safeSetObject:v36 forKey:@"UpdateStatus"];

    updateTime = [cityCopy updateTime];
    if (updateTime)
    {
      [dictionary na_safeSetObject:updateTime forKey:@"UpateTime"];
    }

    else
    {
      v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
      [dictionary na_safeSetObject:v38 forKey:@"UpateTime"];
    }

    v39 = objc_opt_class();
    temperature = [cityCopy temperature];
    v41 = [v39 dictionaryRepresentationOfTemperature:temperature];
    [dictionary na_safeSetObject:v41 forKey:@"Temperature"];

    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(cityCopy, "conditionCode")}];
    [dictionary na_safeSetObject:v42 forKey:@"BigIcon"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "observationTime")}];
    [dictionary na_safeSetObject:v43 forKey:@"ObservationTime"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "sunsetTime")}];
    [dictionary na_safeSetObject:v44 forKey:@"SunsetTime"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "sunriseTime")}];
    [dictionary na_safeSetObject:v45 forKey:@"SunriseTime"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "moonPhase")}];
    [dictionary na_safeSetObject:v46 forKey:@"MoonPhase"];

    airQualityIdx = [cityCopy airQualityIdx];
    [dictionary na_safeSetObject:airQualityIdx forKey:@"AirQualityIdxKey"];

    airQualityCategory = [cityCopy airQualityCategory];
    [dictionary na_safeSetObject:airQualityCategory forKey:@"AirQualityCategoryKey"];

    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "airQualitySignificance")}];
    [dictionary na_safeSetObject:v49 forKey:@"AirQualitySignificance"];

    weatherDisplayName = [cityCopy weatherDisplayName];
    [dictionary na_safeSetObject:weatherDisplayName forKey:@"CityWeatherDisplayName"];

    weatherLocationName = [cityCopy weatherLocationName];
    [dictionary na_safeSetObject:weatherLocationName forKey:@"CityWeatherLocationName"];

    searchTitle = [cityCopy searchTitle];
    [dictionary na_safeSetObject:searchTitle forKey:@"CitySearchTitle"];

    searchSubtitle = [cityCopy searchSubtitle];
    [dictionary na_safeSetObject:searchSubtitle forKey:@"CitySearchSubtitle"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(cityCopy, "uvIndex")}];
    [dictionary na_safeSetObject:v54 forKey:@"UVIndex"];

    v55 = MEMORY[0x277CCABB0];
    [cityCopy precipitationPast24Hours];
    v56 = [v55 numberWithDouble:?];
    [dictionary na_safeSetObject:v56 forKey:@"Past24HoursPrecipitation"];

    timeZone = [cityCopy timeZone];

    if (timeZone)
    {
      timeZone2 = [cityCopy timeZone];
      name2 = [timeZone2 name];
      [dictionary na_safeSetObject:name2 forKey:@"TimeZone"];
    }

    timeZoneUpdateDate = [cityCopy timeZoneUpdateDate];
    if (timeZoneUpdateDate)
    {
      timeZoneUpdateDate2 = [cityCopy timeZoneUpdateDate];
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v63 = [timeZoneUpdateDate2 isEqualToDate:distantPast];

      if (v63)
      {
        timeZoneUpdateDate = 0;
      }

      else
      {
        v64 = MEMORY[0x277CCABB0];
        timeZoneUpdateDate3 = [cityCopy timeZoneUpdateDate];
        [timeZoneUpdateDate3 timeIntervalSince1970];
        timeZoneUpdateDate = [v64 numberWithDouble:?];
      }
    }

    [dictionary na_safeSetObject:timeZoneUpdateDate forKey:@"CityTimeZoneUpdateDateKey"];
    v66 = objc_opt_class();
    airQualityScaleCategory = [cityCopy airQualityScaleCategory];
    v68 = [v66 dictionaryRepresentationOfScaleCategory:airQualityScaleCategory];
    [dictionary na_safeSetObject:v68 forKey:@"AQIScaleCategory"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)cityFromCloudDictionary:(id)dictionary
{
  v18[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = *MEMORY[0x277D7B200];
  v5 = *MEMORY[0x277D7B1F0];
  v18[0] = *MEMORY[0x277D7B200];
  v18[1] = v5;
  v6 = *MEMORY[0x277D7B1F8];
  v18[2] = *MEMORY[0x277D7B1F8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__CityPersistenceConversions_cityFromCloudDictionary___block_invoke;
  v16[3] = &unk_279E68788;
  v8 = dictionaryCopy;
  v17 = v8;
  if ([v7 na_all:v16])
  {
    v9 = objc_alloc_init(City);
    v10 = [v8 objectForKeyedSubscript:v4];
    [(City *)v9 setName:v10];

    v11 = [v8 objectForKeyedSubscript:v5];
    [v11 doubleValue];
    [(City *)v9 setLatitude:?];

    v12 = [v8 objectForKeyedSubscript:v6];
    [v12 doubleValue];
    [(City *)v9 setLongitude:?];

    v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277D7B210]];
    [(City *)v9 setSearchTitle:v13];

    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D7B208]];
    [(City *)v9 setSearchSubtitle:v14];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __54__CityPersistenceConversions_cityFromCloudDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (id)cloudDictionaryRepresentationOfCity:(id)city
{
  v21[3] = *MEMORY[0x277D85DE8];
  cityCopy = city;
  if (([cityCopy isLocalWeatherCity] & 1) != 0 || (objc_msgSend(cityCopy, "latitude"), v4 == 0.0) || (objc_msgSend(cityCopy, "longitude"), v5 == 0.0) || (objc_msgSend(cityCopy, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    v6 = 0;
  }

  else
  {
    v20[0] = *MEMORY[0x277D7B200];
    name = [cityCopy name];
    v21[0] = name;
    v20[1] = *MEMORY[0x277D7B1F0];
    v11 = MEMORY[0x277CCABB0];
    [cityCopy latitude];
    v12 = [v11 numberWithDouble:?];
    v21[1] = v12;
    v20[2] = *MEMORY[0x277D7B1F8];
    v13 = MEMORY[0x277CCABB0];
    [cityCopy longitude];
    v14 = [v13 numberWithDouble:?];
    v21[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v6 = [v15 mutableCopy];

    searchTitle = [cityCopy searchTitle];

    if (searchTitle)
    {
      searchTitle2 = [cityCopy searchTitle];
      [v6 setObject:searchTitle2 forKeyedSubscript:*MEMORY[0x277D7B210]];
    }

    searchSubtitle = [cityCopy searchSubtitle];

    if (searchSubtitle)
    {
      searchSubtitle2 = [cityCopy searchSubtitle];
      [v6 setObject:searchSubtitle2 forKeyedSubscript:*MEMORY[0x277D7B208]];
    }
  }

  return v6;
}

+ (id)cityFromALCity:(id)city
{
  cityCopy = city;
  name = [cityCopy name];
  v5 = [name length];

  if (!v5 || ([cityCopy latitude], v6 == 0.0) || (objc_msgSend(cityCopy, "longitude"), v7 == 0.0))
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_alloc_init(City);
    name2 = [cityCopy name];
    [(City *)v8 setName:name2];

    [cityCopy latitude];
    [(City *)v8 setLatitude:v11];
    [cityCopy longitude];
    [(City *)v8 setLongitude:v12];
    localeCode = [cityCopy localeCode];
    [(City *)v8 setISO3166CountryAbbreviation:localeCode];
  }

  return v8;
}

+ (id)cloudDictionaryRepresentationOfALCity:(id)city
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D7B200];
  cityCopy = city;
  name = [cityCopy name];
  v15[0] = name;
  v14[1] = *MEMORY[0x277D7B1F0];
  v5 = MEMORY[0x277CCABB0];
  [cityCopy latitude];
  v6 = [v5 numberWithFloat:?];
  v15[1] = v6;
  v14[2] = *MEMORY[0x277D7B1F8];
  v7 = MEMORY[0x277CCABB0];
  [cityCopy longitude];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end