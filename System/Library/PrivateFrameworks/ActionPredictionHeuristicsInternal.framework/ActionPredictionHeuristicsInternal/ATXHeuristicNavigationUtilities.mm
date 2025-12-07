@interface ATXHeuristicNavigationUtilities
+ (BOOL)allowNavigationSuggestionForLocation:(id)location maxDistance:(unint64_t)distance;
+ (BOOL)isAtLocation:(id)location maxDistance:(unint64_t)distance;
+ (BOOL)isDestinationTooCloseToNavigate:(id)navigate;
+ (double)_travelTimeInSecondsWithEvent:(id)event destination:(id)destination transportType:(id)type heuristicDevice:(id)device;
+ (id)_dateIntervalWithEvent:(id)event;
+ (id)_titleWithTravelTimeInSeconds:(double)seconds destinationName:(id)name;
+ (id)destinationPlacemarkForEvent:(id)event name:(id)name schemaType:(unint64_t)type;
+ (id)destinationPlacemarkForLocation:(id)location withDestinationName:(id)name;
+ (id)fetchLocationForLOI:(int64_t)i;
+ (id)getCurrentLocation;
+ (id)locationFromEvent:(id)event schemaType:(unint64_t)type;
+ (id)navigationSubtitleForType:(unint64_t)type;
+ (id)navigationSuggestionActionForDestination:(id)destination event:(id)event transportType:(id)type schemaForEvent:(id)forEvent predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score shouldClearOnEngagement:(BOOL)self0 validStartDate:(id)self1 validEndDate:(id)self2;
+ (id)navigationSuggestionActionForEvent:(id)event schemaForEvent:(id)forEvent transportType:(id)type predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score validStartDate:(id)date validEndDate:(id)self0;
+ (id)navigationSuggestionActionForLOI:(int64_t)i destinationName:(id)name schemaForEvent:(id)event withScore:(double)score transportType:(id)type predictionReason:(unint64_t)reason validStartDate:(id)date validEndDate:(id)self0 heuristicDevice:(id)self1;
+ (id)placemarkForLOI:(int64_t)i name:(id)name;
+ (id)schemaTypeToString:(unint64_t)string;
+ (unint64_t)navigationTypeForString:(id)string;
@end

@implementation ATXHeuristicNavigationUtilities

+ (id)getCurrentLocation
{
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  getCurrentLocation = [mEMORY[0x277D41BF8] getCurrentLocation];

  return getCurrentLocation;
}

+ (BOOL)isDestinationTooCloseToNavigate:(id)navigate
{
  v17 = *MEMORY[0x277D85DE8];
  navigateCopy = navigate;
  v4 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v5 = v4;
  v6 = v4 != 0;
  if (v4)
  {
    v7 = [v4 distanceFromLocation:navigateCopy];
    v9 = v8;
    if (v8 > 500.0)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v10 = __atxlog_handle_context_heuristic(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v9 / 1000.0;
      v11 = "Navigation Suggestion: Close to event (distance to: %f). Skipping...";
      v12 = v10;
      v13 = 12;
LABEL_7:
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
    }
  }

  else
  {
    v10 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v11 = "Navigation Suggestion: Current location missing";
      v12 = v10;
      v13 = 2;
      goto LABEL_7;
    }
  }

LABEL_10:
  return v6;
}

+ (id)fetchLocationForLOI:(int64_t)i
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v5 = dispatch_semaphore_create(0);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke;
  v12 = &unk_278C3D5E0;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [mEMORY[0x277D41BF8] fetchLOILocationOfType:i reply:&v9];
  [MEMORY[0x277D425A0] waitForSemaphore:v6 timeoutSeconds:{2.0, v9, v10, v11, v12}];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_modes(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__ATXHeuristicNavigationUtilities_fetchLocationForLOI___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)destinationPlacemarkForLocation:(id)location withDestinationName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  locationCopy = location;
  [locationCopy coordinate];
  v8 = v7;
  [locationCopy coordinate];
  v10 = v9;

  v12 = __atxlog_handle_context_heuristic(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134283777;
    v17 = v8;
    v18 = 2049;
    v19 = v10;
    _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Geolocation from Structured location: (%{private}f), (%{private}f)", &v16, 0x16u);
  }

  v13 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:v10];
  v14 = [MEMORY[0x277CBFC40] placemarkWithLocation:v13 name:nameCopy postalAddress:0];

  return v14;
}

+ (id)schemaTypeToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278C3D600[string];
  }
}

+ (id)destinationPlacemarkForEvent:(id)event name:(id)name schemaType:(unint64_t)type
{
  v56 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nameCopy = name;
  v8 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v9 = [v8 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  firstObject = [v9 firstObject];
  preferredLocationWithoutPrediction = [eventCopy preferredLocationWithoutPrediction];
  v11 = preferredLocationWithoutPrediction;
  if (!preferredLocationWithoutPrediction || ([preferredLocationWithoutPrediction geoLocation], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || (objc_msgSend(v11, "geoLocation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "destinationPlacemarkForLocation:withDestinationName:", v13, nameCopy), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    if (type == 1)
    {
      v28 = [firstObject objectForKeyedSubscript:@"reservationFor"];
      v29 = [v28 objectForKeyedSubscript:@"address"];
      objc_opt_class();
      objc_opt_isKindOfClass();

      v30 = objc_opt_new();
      if (v30)
      {
        v31 = dispatch_semaphore_create(0);
        v32 = objc_opt_new();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v54 = __Block_byref_object_copy__17;
        *&v55 = __Block_byref_object_dispose__17;
        *(&v55 + 1) = 0;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke;
        v50[3] = &unk_278C3D180;
        v52 = buf;
        v33 = v31;
        v51 = v33;
        [v32 geocodeAddressString:v30 completionHandler:v50];
        [MEMORY[0x277D425A0] waitForSemaphore:v33 timeoutSeconds:1.0];
        v34 = *(*&buf[8] + 40);
        if (v34)
        {
          location = [v34 location];
          v14 = [self destinationPlacemarkForLocation:location withDestinationName:nameCopy];
        }

        else
        {
          v14 = 0;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      if (type)
      {
LABEL_22:
        v18 = __atxlog_handle_context_heuristic(preferredLocationWithoutPrediction);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [self schemaTypeToString:type];
          *buf = 138412290;
          *&buf[4] = v45;
          _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Destination placemark for %@ is empty. Cannot create suggestion", buf, 0xCu);
        }

LABEL_24:
        v14 = 0;
        goto LABEL_25;
      }

      v15 = [firstObject objectForKeyedSubscript:@"reservationFor"];
      v16 = [v15 objectForKeyedSubscript:@"departureAirport"];
      v17 = [v16 objectForKeyedSubscript:@"geo"];
      v18 = [v17 objectForKeyedSubscript:@"latitude"];

      v19 = [firstObject objectForKeyedSubscript:@"reservationFor"];
      v20 = [v19 objectForKeyedSubscript:@"departureAirport"];
      v21 = [v20 objectForKeyedSubscript:@"geo"];
      v22 = [v21 objectForKeyedSubscript:@"longitude"];

      if (!v18 || !v22)
      {
        v36 = __atxlog_handle_context_heuristic(v23);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          *&buf[4] = v18;
          *&buf[12] = 2113;
          *&buf[14] = v22;
          _os_log_impl(&dword_23E3EA000, v36, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Missing latitude/longitude/destination information: %{private}@, %{private}@", buf, 0x16u);
        }

        goto LABEL_24;
      }

      [v18 doubleValue];
      v25 = v24;
      [v22 doubleValue];
      v27 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v25 longitude:v26];
      v14 = [self destinationPlacemarkForLocation:v27 withDestinationName:nameCopy];
    }

    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_20:
  v18 = __atxlog_handle_context_heuristic(preferredLocationWithoutPrediction);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [self schemaTypeToString:type];
    location2 = [v14 location];
    [location2 coordinate];
    v40 = v39;
    location3 = [v14 location];
    [location3 coordinate];
    v43 = v42;
    name = [v14 name];
    *buf = 138413059;
    *&buf[4] = v37;
    *&buf[12] = 2049;
    *&buf[14] = v40;
    *&buf[22] = 2049;
    v54 = v43;
    LOWORD(v55) = 2113;
    *(&v55 + 2) = name;
    _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: For %@, geolocation information: (%{private}f), (%{private}f), (%{private}@)", buf, 0x2Au);
  }

LABEL_25:

  return v14;
}

void __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_context_heuristic(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __80__ATXHeuristicNavigationUtilities_destinationPlacemarkForEvent_name_schemaType___block_invoke_cold_1();
    }
  }

  v9 = [v5 firstObject];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (unint64_t)navigationTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"WALKING"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"TRANSIT"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"CYCLING"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)navigationSubtitleForType:(unint64_t)type
{
  if (type > 3)
  {
    v5 = @"Unknown";
  }

  else
  {
    v3 = off_278C3D618[type];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_2850AD368 table:0];
  }

  return v5;
}

+ (id)locationFromEvent:(id)event schemaType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = [self destinationPlacemarkForEvent:eventCopy name:@"destination" schemaType:type];
  v8 = v7;
  if (v7)
  {
    location = [v7 location];
  }

  else
  {
    v10 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      eventIdentifier = [eventCopy eventIdentifier];
      v13 = 138477827;
      v14 = eventIdentifier;
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_INFO, "Empty placemark for event %{private}@", &v13, 0xCu);
    }

    location = 0;
  }

  return location;
}

+ (BOOL)isAtLocation:(id)location maxDistance:(unint64_t)distance
{
  v16 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v7 = v6;
  v8 = 0;
  if (locationCopy && v6)
  {
    v9 = [v6 distanceFromLocation:locationCopy];
    v11 = v10;
    if (v10 <= distance)
    {
      v12 = __atxlog_handle_context_heuristic(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v11 / 1000.0;
        _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: At location. Distance is %.2fkm", &v14, 0xCu);
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)allowNavigationSuggestionForLocation:(id)location maxDistance:(unint64_t)distance
{
  v20 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = +[ATXHeuristicNavigationUtilities getCurrentLocation];
  v7 = v6;
  v8 = 0;
  if (locationCopy && v6)
  {
    v9 = [v6 distanceFromLocation:locationCopy];
    v11 = v10;
    if (v10 <= 500.0)
    {
      v12 = __atxlog_handle_context_heuristic(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = v11;
        v18 = 2048;
        *&v19 = 500;
        v14 = "ATXHeuristicNavigationUtilities: Too close to the event (%.2fkm < %.2lukm)";
        goto LABEL_9;
      }
    }

    else
    {
      v12 = __atxlog_handle_context_heuristic(v9);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 <= distance)
      {
        if (v13)
        {
          v16 = 134217984;
          v17 = v11 / 1000.0;
          _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Distance to destination is %.2fkm", &v16, 0xCu);
        }

        v8 = 1;
        goto LABEL_14;
      }

      if (v13)
      {
        v16 = 134218240;
        v17 = v11 / 1000.0;
        v18 = 2048;
        v19 = (distance / 0x3E8);
        v14 = "ATXHeuristicNavigationUtilities: Will not create navigation to destination since distance %fKM is beyond %fKM";
LABEL_9:
        _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x16u);
      }
    }

    v8 = 0;
LABEL_14:
  }

  return v8;
}

+ (id)placemarkForLOI:(int64_t)i name:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [self fetchLocationForLOI:i];
  v8 = __atxlog_handle_context_heuristic(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v17 = 138477827;
      v18 = nameCopy;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Resolved (%{private}@) to destination", &v17, 0xCu);
    }

    [v7 coordinate];
    v11 = v10;
    [v7 coordinate];
    v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:v12];
    v13 = [MEMORY[0x277CBFC40] placemarkWithLocation:v8 name:nameCopy postalAddress:0];
    v14 = __atxlog_handle_context_heuristic(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [v13 name];
      v17 = 138477827;
      v18 = name;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Location Resolved for (%{private}@)", &v17, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v17 = 138412290;
      v18 = nameCopy;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Unable to resolve %@ to destination", &v17, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)navigationSuggestionActionForLOI:(int64_t)i destinationName:(id)name schemaForEvent:(id)event withScore:(double)score transportType:(id)type predictionReason:(unint64_t)reason validStartDate:(id)date validEndDate:(id)self0 heuristicDevice:(id)self1
{
  eventCopy = event;
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  deviceCopy = device;
  v23 = [self placemarkForLOI:i name:name];
  if (v23)
  {
    LOBYTE(v26) = 0;
    v24 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForDestination:v23 event:0 transportType:typeCopy schemaForEvent:eventCopy predictionReasons:reason heuristicDevice:deviceCopy score:score shouldClearOnEngagement:v26 validStartDate:dateCopy validEndDate:endDateCopy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (double)_travelTimeInSecondsWithEvent:(id)event destination:(id)destination transportType:(id)type heuristicDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  destinationCopy = destination;
  deviceCopy = device;
  typeCopy = type;
  v13 = __atxlog_handle_context_heuristic(typeCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    eventIdentifier = [eventCopy eventIdentifier];
    name = [destinationCopy name];
    v29 = 138412546;
    v30 = eventIdentifier;
    v31 = 2112;
    v32 = name;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Compute travel time for event Id %@ (or destination %@)", &v29, 0x16u);
  }

  v16 = objc_opt_new();
  v17 = [v16 travelTimeToEvent:eventCopy destination:destinationCopy transportType:typeCopy heuristicDevice:deviceCopy];

  if (v17)
  {
    resolvedTimeInformation = [v16 resolvedTimeInformation];
    v19 = [resolvedTimeInformation objectForKeyedSubscript:@"estimatedTravelTime"];

    v21 = __atxlog_handle_context_heuristic(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [v19 doubleValue];
      v29 = 134217984;
      v30 = v22;
      _os_log_impl(&dword_23E3EA000, v21, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination time: %fs", &v29, 0xCu);
    }

    [v19 doubleValue];
    if (v23 == 0.0)
    {
      v24 = [v17 objectForKeyedSubscript:@"estimatedTravelTime"];

      [v24 doubleValue];
      if (v26 == 0.0)
      {
        v25 = -1.0;
        goto LABEL_12;
      }

      v19 = v24;
    }

    else
    {
      v24 = v19;
    }

    [v19 doubleValue];
    v25 = v27;
LABEL_12:

    goto LABEL_13;
  }

  v25 = -1.0;
LABEL_13:

  return v25;
}

+ (id)_titleWithTravelTimeInSeconds:(double)seconds destinationName:(id)name
{
  nameCopy = name;
  v6 = objc_opt_new();
  [v6 setUnitsStyle:2];
  [v6 setAllowedUnits:96];
  v7 = [v6 stringFromTimeInterval:seconds];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"NAVIGATION_DESTINATION_TITLE" value:&stru_2850AD368 table:0];
  nameCopy = [v8 localizedStringWithFormat:v10, v7, nameCopy];

  return nameCopy;
}

+ (id)navigationSuggestionActionForDestination:(id)destination event:(id)event transportType:(id)type schemaForEvent:(id)forEvent predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score shouldClearOnEngagement:(BOOL)self0 validStartDate:(id)self1 validEndDate:(id)self2
{
  v59 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  eventCopy = event;
  typeCopy = type;
  forEventCopy = forEvent;
  deviceCopy = device;
  dateCopy = date;
  endDateCopy = endDate;
  v54 = typeCopy;
  v24 = [ATXHeuristicNavigationUtilities navigationTypeForString:typeCopy];
  name = [destinationCopy name];
  v26 = [ATXHeuristicNavigationUtilities navigationSubtitleForType:v24];
  v55 = endDateCopy;
  if ([name length])
  {
    v52 = eventCopy;
    v53 = deviceCopy;
    v27 = objc_alloc(MEMORY[0x277CCA970]);
    distantPast = dateCopy;
    if (!dateCopy)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v51 = v26;
    reasonsCopy = reasons;
    if (endDateCopy)
    {
      v30 = [v27 initWithStartDate:distantPast endDate:endDateCopy];
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v30 = [v27 initWithStartDate:distantPast endDate:distantFuture];
    }

    if (!dateCopy)
    {
    }

    v33 = [v53 now];
    v34 = [v30 containsDate:v33];

    v35 = 0.0;
    if (v34)
    {
      eventCopy = v52;
      v36 = [self _travelTimeInSecondsWithEvent:v52 destination:destinationCopy transportType:v54 heuristicDevice:v53];
      v35 = v37;
      if (v37 >= 180.0)
      {
        v40 = [self _titleWithTravelTimeInSeconds:name destinationName:v37];

        name = v40;
      }

      else
      {
        deviceCopy = v53;
        v38 = __atxlog_handle_context_heuristic(v36);
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        if (v35 != -1.0)
        {
          if (v39)
          {
            *buf = 134217984;
            v58 = v35;
            _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination time is below minimum [%f]. Navigation suggestion is skipped", buf, 0xCu);
          }

          v31 = 0;
          goto LABEL_29;
        }

        if (v39)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination time returned -1. Navigation suggestion is included without ETA", buf, 2u);
        }

        v35 = -1.0;
      }
    }

    else
    {
      eventCopy = v52;
    }

    v41 = [ATXContextNavigationSuggestionProducer alloc];
    name2 = [destinationCopy name];
    v38 = [(ATXContextNavigationSuggestionProducer *)v41 initWithTitle:name event:eventCopy schemaForEvent:forEventCopy alternateDestinationTitle:name2];

    v43 = v55;
    if ((reasonsCopy & 0x3000000000) != 0 && v35 > 1800.0)
    {
      v44 = [dateCopy dateByAddingTimeInterval:v35];

      v43 = v44;
    }

    deviceCopy = v53;
    name3 = [destinationCopy name];
    v31 = [v38 suggestionForNavigationToDestination:destinationCopy transportType:v24 destinationName:name3 subtitle:v51 predictionReasons:reasonsCopy score:engagement shouldClearOnEngagement:score validStartDate:dateCopy validEndDate:v43];

    if (v31)
    {
      [ATXHeuristicFlightEventUtilities logSuggestion:v31 description:@"ATXHeuristicNavigationUtilities: Navigation to destination suggestion"];
      v47 = v31;
    }

    else
    {
      v48 = __atxlog_handle_context_heuristic(v46);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v58 = *&reasonsCopy;
        _os_log_impl(&dword_23E3EA000, v48, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Could not create navigation suggestion for prediction reason: %llu", buf, 0xCu);
      }

      deviceCopy = v53;
    }

    eventCopy = v52;
LABEL_29:

    v26 = v51;
    goto LABEL_30;
  }

  v30 = __atxlog_handle_context_heuristic(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicNavigationUtilities: Travel to destination name is nil or empty. Navigation suggestion is skipped", buf, 2u);
  }

  v31 = 0;
LABEL_30:

  return v31;
}

+ (id)navigationSuggestionActionForEvent:(id)event schemaForEvent:(id)forEvent transportType:(id)type predictionReasons:(unint64_t)reasons heuristicDevice:(id)device score:(double)score validStartDate:(id)date validEndDate:(id)self0
{
  eventCopy = event;
  forEventCopy = forEvent;
  typeCopy = type;
  deviceCopy = device;
  dateCopy = date;
  endDateCopy = endDate;
  v20 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v21 = v20;
  if (!forEventCopy)
  {
    v22 = [v20 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    forEventCopy = [v22 firstObject];
  }

  v23 = [v21 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v24 = [v23 isEqualToString:@"Lodging"];

  preferredLocationWithoutPrediction = [eventCopy preferredLocationWithoutPrediction];
  v26 = preferredLocationWithoutPrediction;
  if ((reasons & 0x80000000) != 0)
  {
    v38 = typeCopy;
    v39 = [forEventCopy objectForKeyedSubscript:@"reservationFor"];
    v40 = [v39 objectForKeyedSubscript:@"departureAirport"];
    firstObject = [v40 objectForKeyedSubscript:@"iataCode"];

    if (!firstObject && v26)
    {
      title = [v26 title];

      typeCopy = v38;
      if (!title)
      {
LABEL_23:
        v50 = __atxlog_handle_context_heuristic(v41);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        v63 = 0;
        v51 = "ATXHeuristicNavigationUtilities: For Upcoming flight, destination is empty";
        v52 = &v63;
        goto LABEL_27;
      }

      title2 = [v26 title];
      v44 = [title2 componentsSeparatedByString:@"\n"];
      firstObject = [v44 firstObject];
    }

    typeCopy = v38;
    if (firstObject)
    {
      selfCopy3 = self;
      v35 = eventCopy;
      v36 = firstObject;
      v37 = 0;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if ((((reasons & 0x200000000) != 0) & v24) != 1)
  {
    if ((reasons & 0x300000) == 0)
    {
      v50 = __atxlog_handle_context_heuristic(preferredLocationWithoutPrediction);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:reasons schemaForEvent:v50 transportType:? predictionReasons:? heuristicDevice:? score:? validStartDate:? validEndDate:?];
      }

      goto LABEL_35;
    }

    if (preferredLocationWithoutPrediction && ([preferredLocationWithoutPrediction title], v45 = objc_claimAutoreleasedReturnValue(), v45, v45))
    {
      title3 = [v26 title];
      [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", \n"}];
      v47 = v46 = typeCopy;
      v48 = [title3 componentsSeparatedByCharactersInSet:v47];
      firstObject = [v48 firstObject];

      typeCopy = v46;
      if (!firstObject)
      {
LABEL_21:
        v50 = __atxlog_handle_context_heuristic(title4);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        v61 = 0;
        v51 = "ATXHeuristicNavigationUtilities: For upcoming event, destination is empty";
        v52 = &v61;
LABEL_27:
        _os_log_impl(&dword_23E3EA000, v50, OS_LOG_TYPE_DEFAULT, v51, v52, 2u);
        goto LABEL_35;
      }
    }

    else
    {
      title4 = [eventCopy title];
      firstObject = title4;
      if (!title4)
      {
        goto LABEL_21;
      }
    }

    selfCopy3 = self;
    v35 = eventCopy;
    v36 = firstObject;
    v37 = 2;
    goto LABEL_30;
  }

  v27 = [forEventCopy objectForKeyedSubscript:@"reservationFor"];
  firstObject = [v27 objectForKeyedSubscript:@"name"];

  if (!firstObject && v26)
  {
    title5 = [v26 title];

    if (!title5)
    {
      goto LABEL_25;
    }

    title6 = [v26 title];
    [title6 componentsSeparatedByString:@"\n"];
    v33 = v32 = typeCopy;
    firstObject = [v33 firstObject];

    typeCopy = v32;
  }

  if (!firstObject)
  {
LABEL_25:
    v50 = __atxlog_handle_context_heuristic(v29);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v51 = "ATXHeuristicNavigationUtilities: For concluded flight, destination is empty";
      v52 = buf;
      goto LABEL_27;
    }

LABEL_35:
    firstObject = 0;
    v54 = 0;
    v53 = deviceCopy;
    goto LABEL_36;
  }

  selfCopy3 = self;
  v35 = eventCopy;
  v36 = firstObject;
  v37 = 1;
LABEL_30:
  v50 = [selfCopy3 destinationPlacemarkForEvent:v35 name:v36 schemaType:v37];
  if (!v50)
  {
    v54 = 0;
    v53 = deviceCopy;
    goto LABEL_37;
  }

  LOBYTE(v56) = 0;
  v53 = deviceCopy;
  v54 = [self navigationSuggestionActionForDestination:v50 event:eventCopy transportType:typeCopy schemaForEvent:forEventCopy predictionReasons:reasons heuristicDevice:deviceCopy score:score shouldClearOnEngagement:v56 validStartDate:dateCopy validEndDate:endDateCopy];
LABEL_36:

LABEL_37:

  return v54;
}

+ (id)_dateIntervalWithEvent:(id)event
{
  v3 = MEMORY[0x277CCA970];
  eventCopy = event;
  v5 = [v3 alloc];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];

  v8 = [v5 initWithStartDate:startDate endDate:endDate];

  return v8;
}

+ (void)navigationSuggestionActionForEvent:(uint64_t)a1 schemaForEvent:(NSObject *)a2 transportType:predictionReasons:heuristicDevice:score:validStartDate:validEndDate:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_FAULT, "ATXHeuristicNavigationUtilities: Navigation called for an unsupported prediction %llu reason", &v2, 0xCu);
}

@end