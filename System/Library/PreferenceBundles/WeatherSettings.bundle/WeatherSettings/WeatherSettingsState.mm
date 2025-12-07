@interface WeatherSettingsState
+ (_TtC15WeatherSettings20WeatherSettingsState)defaultState;
- (BOOL)areSignificantLocationsFeaturesAvailableInWeather;
- (BOOL)resetIdentifier;
- (BOOL)showHomeWorkLabels;
- (BOOL)useSignificantLocations;
- (_TtC15WeatherSettings20WeatherSettingsUnits)units;
- (void)refreshPredictedLocationsAuthorization;
- (void)setResetIdentifier:(BOOL)identifier;
- (void)setShowHomeWorkLabels:(BOOL)labels;
- (void)setUseSignificantLocations:(BOOL)locations;
@end

@implementation WeatherSettingsState

+ (_TtC15WeatherSettings20WeatherSettingsState)defaultState
{
  v2 = sub_5CAC();

  return v2;
}

- (_TtC15WeatherSettings20WeatherSettingsUnits)units
{
  v2 = sub_5D64();

  return v2;
}

- (BOOL)resetIdentifier
{
  selfCopy = self;
  v3 = sub_5DA8();

  return v3 & 1;
}

- (void)setResetIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_5E54(identifierCopy);
}

- (BOOL)showHomeWorkLabels
{
  selfCopy = self;
  v3 = sub_5F14();

  return v3 & 1;
}

- (void)setShowHomeWorkLabels:(BOOL)labels
{
  labelsCopy = labels;
  selfCopy = self;
  sub_5FC0(labelsCopy);
}

- (BOOL)useSignificantLocations
{
  selfCopy = self;
  v3 = sub_6080();

  return v3 & 1;
}

- (void)setUseSignificantLocations:(BOOL)locations
{
  locationsCopy = locations;
  selfCopy = self;
  sub_612C(locationsCopy);
}

- (BOOL)areSignificantLocationsFeaturesAvailableInWeather
{
  selfCopy = self;
  v3 = sub_61EC();

  return v3;
}

- (void)refreshPredictedLocationsAuthorization
{
  selfCopy = self;
  sub_6288();
}

@end