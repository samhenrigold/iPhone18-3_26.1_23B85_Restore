@interface GEORouteAttributes(MNExtras)
+ (id)defaultRouteAttributesForTransportType:()MNExtras;
- (id)_userPreferences;
- (id)_vehicleSpecifications;
- (id)anyDate;
- (id)arriveByDate;
- (id)departAtDate;
- (uint64_t)_automobileOptions;
- (uint64_t)supportsTurnByTurnNavigation;
- (void)supportsDirections;
@end

@implementation GEORouteAttributes(MNExtras)

- (id)_userPreferences
{
  _automobileOptions = [self _automobileOptions];
  userPreferences = [_automobileOptions userPreferences];

  if (!userPreferences)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2708]);
    [_automobileOptions setUserPreferences:v3];
  }

  userPreferences2 = [_automobileOptions userPreferences];

  return userPreferences2;
}

- (id)_vehicleSpecifications
{
  _automobileOptions = [self _automobileOptions];
  vehicleSpecifications = [_automobileOptions vehicleSpecifications];

  if (!vehicleSpecifications)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2740]);
    [_automobileOptions setVehicleSpecifications:v3];
  }

  vehicleSpecifications2 = [_automobileOptions vehicleSpecifications];

  return vehicleSpecifications2;
}

- (uint64_t)_automobileOptions
{
  automobileOptions = [self automobileOptions];

  if (!automobileOptions)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1B90]);
    [self setAutomobileOptions:v3];
  }

  return [self automobileOptions];
}

- (id)anyDate
{
  objc_msgSend_timepoint(self, a2);

  return 0;
}

- (id)arriveByDate
{
  objc_msgSend_timepoint(self, a2);
  if (v5 == 1)
  {
    anyDate = [self anyDate];
  }

  else
  {
    anyDate = 0;
  }

  return anyDate;
}

- (id)departAtDate
{
  objc_msgSend_timepoint(self, a2);
  if (v5)
  {
    anyDate = 0;
  }

  else
  {
    anyDate = [self anyDate];
  }

  return anyDate;
}

- (uint64_t)supportsTurnByTurnNavigation
{
  result = [self supportsDirections];
  if (result)
  {
    phoneticLocaleIdentifier = [self phoneticLocaleIdentifier];
    v4 = [phoneticLocaleIdentifier length];

    if (v4)
    {
      result = [self includePhonetics];
      if (result)
      {
        if ([self uiContextsCount])
        {
          v5 = 0;
          while (1)
          {
            v6 = [self uiContextAtIndex:v5];
            if ((v6 & 4) == 0)
            {
              break;
            }

            if (++v5 >= [self uiContextsCount])
            {
              return 1;
            }
          }

          return (v6 >> 2) & 1;
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)supportsDirections
{
  if ([self mainTransportType] == 4)
  {
    return 0;
  }

  if (([self includeRoutingPathLeg] & 1) != 0 || (result = objc_msgSend(self, "includeZilchPoints"), result))
  {
    result = [self includeManeuverIcons];
    if (result)
    {
      result = [self uiContextsCount];
      if (result)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          v3 |= 1 << ([self uiContextAtIndex:v4++] - 1);
        }

        while (v4 < [self uiContextsCount]);
        return ((~v3 & 3) == 0);
      }
    }
  }

  return result;
}

+ (id)defaultRouteAttributesForTransportType:()MNExtras
{
  v26 = *MEMORY[0x1E69E9840];
  defaultRouteAttributes = [MEMORY[0x1E69A2500] defaultRouteAttributes];
  [defaultRouteAttributes setMainTransportType:a3];
  if (a3 == 1)
  {
    BOOL = 0;
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  [defaultRouteAttributes setIncludeRoutingPathLeg:BOOL];
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  currentCountrySupportsNavigation = [mEMORY[0x1E69A1CD8] currentCountrySupportsNavigation];

  if (currentCountrySupportsNavigation)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    _navigation_isNavd = [processInfo _navigation_isNavd];

    if (_navigation_isNavd)
    {
      +[MNUserOptionsEngine sharedInstance];
    }

    else
    {
      +[MNNavigationService sharedService];
    }
    v10 = ;
    currentVoiceLanguage = [v10 currentVoiceLanguage];
    [defaultRouteAttributes setPhoneticLocaleIdentifier:currentVoiceLanguage];

    phoneticLocaleIdentifier = [defaultRouteAttributes phoneticLocaleIdentifier];

    if (!phoneticLocaleIdentifier)
    {
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315906;
        v19 = "+[GEORouteAttributes(MNExtras) defaultRouteAttributesForTransportType:]";
        v20 = 2080;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/GEORouteAttributes+MNExtras.m";
        v22 = 1024;
        v23 = 80;
        v24 = 2080;
        v25 = "attributes.phoneticLocaleIdentifier != nil";
        _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v18, 0x26u);
      }
    }

    [defaultRouteAttributes setIncludeContingencyRoutes:1];
    [defaultRouteAttributes setIncludePhonetics:1];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [defaultRouteAttributes setUseMetricThreshold:{objc_msgSend(currentLocale, "_navigation_distanceUsesMetricSystem")}];

    if ((a3 - 2) >= 2)
    {
      if (a3 == 1)
      {
LABEL_16:
        v14 = objc_alloc_init(MEMORY[0x1E69A2668]);
        [v14 setPrioritization:0];
        if (GEOConfigGetBOOL())
        {
          [v14 setRoutingBehavior:1];
        }

        [defaultRouteAttributes setTransitOptions:v14];
        goto LABEL_25;
      }

      if (a3)
      {
        goto LABEL_26;
      }
    }

    [defaultRouteAttributes addUiContext:4];
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69A2770]);
      [v14 setAvoidHills:0];
      [v14 setAvoidStairs:0];
      [v14 setAvoidBusyRoads:0];
      v15 = objc_alloc_init(MEMORY[0x1E69A2768]);
      [v15 setWalkingUserPreferences:v14];
      [defaultRouteAttributes setWalkingOptions:v15];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_26;
      }

      v14 = objc_alloc_init(MEMORY[0x1E69A1CE8]);
      [v14 setAvoidStairs:0];
      [v14 setAvoidHills:0];
      [v14 setAvoidBusyRoads:0];
      v15 = objc_alloc_init(MEMORY[0x1E69A1CE0]);
      [v15 setCyclingUserPreferences:v14];
      [defaultRouteAttributes setCyclingOptions:v15];
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    v14 = objc_alloc_init(MEMORY[0x1E69A1B90]);
    [v14 setIncludeHistoricTravelTime:1];
    [v14 setTrafficType:3];
    [defaultRouteAttributes setAutomobileOptions:v14];
  }

LABEL_25:

LABEL_26:
  [defaultRouteAttributes setRoutePointTypeForTransportType:a3];

  return defaultRouteAttributes;
}

@end