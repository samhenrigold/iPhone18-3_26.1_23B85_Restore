@interface WAAQIAttributionStringBuilder
- (id)buildAttributionStringFromCity:(id)city;
- (id)stationStringWithTimeElapsedFromCity:(id)city;
@end

@implementation WAAQIAttributionStringBuilder

- (id)buildAttributionStringFromCity:(id)city
{
  cityCopy = city;
  airQualityAttribution = [cityCopy airQualityAttribution];
  dataOrigination = [airQualityAttribution dataOrigination];
  if (!dataOrigination || dataOrigination == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(WAAQIAttributionStringBuilder *)self stationStringWithTimeElapsedFromCity:cityCopy];
  }

  else if (dataOrigination == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"AQI_VIEW_ATTRIBUTION_MODELED_DATA" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    name = [airQualityAttribution name];
    v11 = [v7 stringWithFormat:v9, name];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)stationStringWithTimeElapsedFromCity:(id)city
{
  cityCopy = city;
  date = [MEMORY[0x277CBEAA8] date];
  airQualityAttribution = [cityCopy airQualityAttribution];
  stationLastReadDate = [airQualityAttribution stationLastReadDate];
  [date timeIntervalSinceDate:stationLastReadDate];
  v8 = v7;

  v9 = vcvtad_u64_f64(v8 / 60.0 / 60.0);
  airQualityAttribution2 = [cityCopy airQualityAttribution];
  stationLocationName = [airQualityAttribution2 stationLocationName];

  v12 = [stationLocationName length];
  if (!v12)
  {
    name = [cityCopy name];

    stationLocationName = name;
  }

  if (v9 == 1)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    v17 = @"AQI_VIEW_ATTRIBUTION_STATION_DATA_ONE_HOUR_AGO";
  }

  else
  {
    if (v9)
    {
      v20 = WANumberFormatterForDisplayingAQI(v12);
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      v16 = [v20 stringFromNumber:v21];

      v22 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v18 localizedStringForKey:@"AQI_VIEW_ATTRIBUTION_STATION_DATA_MORE_THAN_ONE_HOUR_AGO" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      v19 = [v22 stringWithFormat:v23, stationLocationName, v16];

      goto LABEL_9;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    v17 = @"AQI_VIEW_ATTRIBUTION_STATION_DATA_LESS_THAN_ONE_HOUR_AGO";
  }

  v18 = [v15 localizedStringForKey:v17 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v19 = [v14 stringWithFormat:v18, stationLocationName];
LABEL_9:

  airQualityLearnMoreURL = [cityCopy airQualityLearnMoreURL];
  if (airQualityLearnMoreURL)
  {
    v25 = airQualityLearnMoreURL;
    airQualityAttribution3 = [cityCopy airQualityAttribution];

    if (airQualityAttribution3)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"AQI_VIEW_ATTRIBUTION_STATION_DATA_LEARN_MORE_SUFFIX" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      airQualityAttribution4 = [cityCopy airQualityAttribution];
      name2 = [airQualityAttribution4 name];
      v32 = [v27 stringWithFormat:v29, name2];

      v33 = [v19 stringByAppendingString:v32];

      v19 = v33;
    }
  }

  return v19;
}

@end