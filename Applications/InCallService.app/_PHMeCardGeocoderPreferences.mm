@interface _PHMeCardGeocoderPreferences
+ (id)sharedPreferences;
- (BOOL)isActivelyUsing;
- (_PHMeCardGeocoderPreferences)init;
- (double)_bestTimeIntervalForKey:(id)key;
- (id)_constructCurrentValues;
- (void)dealloc;
- (void)setActivelyUsing:(BOOL)using;
@end

@implementation _PHMeCardGeocoderPreferences

+ (id)sharedPreferences
{
  if (qword_1003B0E68 != -1)
  {
    sub_100256198();
  }

  v3 = qword_1003B0E70;

  return v3;
}

- (_PHMeCardGeocoderPreferences)init
{
  v15.receiver = self;
  v15.super_class = _PHMeCardGeocoderPreferences;
  v2 = [(_PHMeCardGeocoderPreferences *)&v15 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"PHMeCardGeocoderPreferenceDefaults" ofType:@"plist"];

    if (v4)
    {
      v6 = sub_100004F84(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loading default PHMeCardGeocoder preferences from file: %@", buf, 0xCu);
      }

      v7 = [[NSDictionary alloc] initWithContentsOfFile:v4];
      defaultValues = v2->_defaultValues;
      v2->_defaultValues = v7;

      v10 = sub_100004F84(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v2->_defaultValues;
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Default values = %@", buf, 0xCu);
      }
    }

    _constructCurrentValues = [(_PHMeCardGeocoderPreferences *)v2 _constructCurrentValues];
    currentValues = v2->_currentValues;
    v2->_currentValues = _constructCurrentValues;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _PHMeCardGeocoderPreferences;
  [(_PHMeCardGeocoderPreferences *)&v4 dealloc];
}

- (id)_constructCurrentValues
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = PHPreferencesGetValueInDomain();
  if (v3)
  {
    [v2 setValue:v3 forKey:@"PeriodLength"];
  }

  v4 = PHPreferencesGetValueInDomain();
  if (v4)
  {
    [v2 setValue:v4 forKey:@"ActiveUsagePeriodLength"];
  }

  v5 = [NSDictionary dictionaryWithDictionary:v2];

  return v5;
}

- (double)_bestTimeIntervalForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_currentValues valueForKey:keyCopy];
  if (v5 || ([(NSDictionary *)self->_defaultValues valueForKey:keyCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 0.0;
  }

  return intValue;
}

- (BOOL)isActivelyUsing
{
  v2 = PHPreferencesGetValueInDomain();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setActivelyUsing:(BOOL)using
{
  usingCopy = using;
  isActivelyUsing = [(_PHMeCardGeocoderPreferences *)self isActivelyUsing];
  if (isActivelyUsing != usingCopy)
  {
    v5 = sub_100004F84(isActivelyUsing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (usingCopy)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting geocoder actively used value to %@", &v8, 0xCu);
    }

    v7 = [NSNumber numberWithBool:usingCopy];
    PHPreferencesSetValueInDomain();
  }
}

@end