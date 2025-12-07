@interface WeatherLocationResolutionResult
+ (id)confirmationRequiredWithWeatherLocationToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithWeatherLocationsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedWeatherLocation:(id)location;
- (WeatherLocationResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation WeatherLocationResolutionResult

+ (id)successWithResolvedWeatherLocation:(id)location
{
  swift_getObjCClassMetadata();
  locationCopy = location;
  v5 = static WeatherLocationResolutionResult.success(with:)(locationCopy);

  return v5;
}

+ (id)disambiguationWithWeatherLocationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for WeatherLocation();
  v3 = sub_1000EBFF4();
  swift_getObjCClassMetadata();
  v4 = static WeatherLocationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithWeatherLocationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static WeatherLocationResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_1000E78E0();
  v3 = sub_1000EBFF4();
  static WeatherLocationResolutionResult.disambiguation(with:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

- (WeatherLocationResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  v5 = sub_1000EBDD4();
  intentCopy = intent;
  return WeatherLocationResolutionResult.init(JSONDictionary:intent:)(v5, intentCopy, v7);
}

@end