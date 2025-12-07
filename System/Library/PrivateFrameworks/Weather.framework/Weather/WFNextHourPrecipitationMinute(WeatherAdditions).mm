@interface WFNextHourPrecipitationMinute(WeatherAdditions)
- (id)dictionaryRepresentation;
- (uint64_t)initWithDictionary:()WeatherAdditions;
@end

@implementation WFNextHourPrecipitationMinute(WeatherAdditions)

- (uint64_t)initWithDictionary:()WeatherAdditions
{
  v4 = a3;
  v5 = [v4 objectForKey:0x28822C3E8];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKey:0x28822C408];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v4 objectForKey:0x28822C428];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v4 objectForKey:0x28822C448];

  unsignedIntegerValue = [v14 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v16 = ;
  v17 = [self initWithIntensity:v16 chance:v7 perceivedIntensity:v10 date:v13];

  return v17;
}

- (id)dictionaryRepresentation
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = 0x28822C3E8;
  v2 = MEMORY[0x277CCABB0];
  [self intensity];
  v3 = [v2 numberWithDouble:?];
  v14[0] = v3;
  v13[1] = 0x28822C408;
  v4 = MEMORY[0x277CCABB0];
  [self chance];
  v5 = [v4 numberWithDouble:?];
  v14[1] = v5;
  v13[2] = 0x28822C428;
  v6 = MEMORY[0x277CCABB0];
  [self perceivedIntensity];
  v7 = [v6 numberWithDouble:?];
  v14[2] = v7;
  v13[3] = 0x28822C448;
  v8 = MEMORY[0x277CCABB0];
  date = [self date];
  [date timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

@end