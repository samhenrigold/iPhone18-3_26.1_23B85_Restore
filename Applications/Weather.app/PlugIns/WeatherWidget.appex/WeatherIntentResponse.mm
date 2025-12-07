@interface WeatherIntentResponse
- (WeatherIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation WeatherIntentResponse

- (WeatherIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v4 = sub_1000EBDD4();
  }

  else
  {
    v4 = 0;
  }

  return WeatherIntentResponse.init(propertiesByName:)(v4, v3);
}

@end