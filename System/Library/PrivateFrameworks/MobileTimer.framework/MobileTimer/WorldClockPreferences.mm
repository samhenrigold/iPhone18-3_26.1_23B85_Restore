@interface WorldClockPreferences
- (BOOL)cityDataNeedsUpdate;
- (BOOL)defaultCitiesAdded;
- (id)cities;
- (id)defaultsKeys;
- (id)lastModified;
- (void)cityDataUpdated;
@end

@implementation WorldClockPreferences

- (id)lastModified
{
  v2 = CFPreferencesCopyAppValue(CitiesLastModifiedKey, @"com.apple.mobiletimer");

  return v2;
}

- (id)cities
{
  v2 = CFPreferencesCopyAppValue(CitiesKey, @"com.apple.mobiletimer");

  return v2;
}

- (BOOL)defaultCitiesAdded
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(DefaultCityAddedKey, @"com.apple.mobiletimer", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)defaultsKeys
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = CitiesKey;
  v4[1] = CitiesLastModifiedKey;
  v4[2] = DefaultCityAddedKey;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (BOOL)cityDataNeedsUpdate
{
  v2 = CFPreferencesCopyAppValue(LatestUpdateVersion, @"com.apple.mobiletimer");
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  v5 = [v2 isEqualToString:operatingSystemVersionString];

  return v5 ^ 1;
}

- (void)cityDataUpdated
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  value = [processInfo operatingSystemVersionString];

  CFPreferencesSetAppValue(LatestUpdateVersion, value, @"com.apple.mobiletimer");
}

@end