@interface NavdRouteHypothesisUserPreferencesProvider
- (id)currentTransitOptions;
- (id)currentUserPreferences;
@end

@implementation NavdRouteHypothesisUserPreferencesProvider

- (id)currentUserPreferences
{
  v2 = objc_alloc_init(GEOUserPreferences);
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  path = [v4 path];

  [v2 setAvoidTolls:_CFPreferencesGetAppBooleanValueWithContainer() != 0];
  [v2 setAvoidHighways:_CFPreferencesGetAppBooleanValueWithContainer() != 0];

  return v2;
}

- (id)currentTransitOptions
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  path = [v3 path];
  v5 = _CFPreferencesCopyAppValueWithContainer();

  v6 = [v5 integerValue] & 0xF;
  if (v6)
  {
    v7 = objc_alloc_init(GEOTransitOptions);
    if (GEOConfigGetBOOL())
    {
      [v7 setRoutingBehavior:1];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = sub_10000DAEC(v6);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addAvoidedMode:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue", v14)}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end