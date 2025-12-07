@interface ATXHeuristicFlightEventUtilities
+ (BOOL)currentLocationIsWithinAirportForEvent:(id)event;
+ (CLLocationCoordinate2D)locationAtArrivalAirport:(id)airport event:(id)event heuristicDevice:(id)device;
+ (id)_dateIntervalWithEvent:(id)event;
+ (id)fetchDestinationPlacemarkForFlightEvent:(id)event heuristicDevice:(id)device;
+ (id)flightInformationSchemaForEvent:(id)event;
+ (id)flightInformationSpotlightSuggestionForEvent:(id)event schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate;
+ (id)flightSchemaForEvent:(id)event;
+ (id)lastFlightLegEndTimeForEvent:(id)event heuristicDevice:(id)device;
+ (id)updatedFlightInformationSchemaForEvent:(id)event schemaForFlight:(id)flight heuristicDevice:(id)device;
+ (void)logSuggestion:(id)suggestion description:(id)description;
@end

@implementation ATXHeuristicFlightEventUtilities

+ (void)logSuggestion:(id)suggestion description:(id)description
{
  v19 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  descriptionCopy = description;
  atxActionCriteria = [suggestionCopy atxActionCriteria];
  v8 = __atxlog_handle_context_heuristic(atxActionCriteria);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    startDate = [atxActionCriteria startDate];
    endDate = [atxActionCriteria endDate];
    v11 = 138413058;
    v12 = descriptionCopy;
    v13 = 2112;
    v14 = startDate;
    v15 = 2112;
    v16 = endDate;
    v17 = 2112;
    v18 = suggestionCopy;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "%@: start: %@, end: %@, %@", &v11, 0x2Au);
  }
}

+ (id)flightSchemaForEvent:(id)event
{
  v3 = [event customObjectForKey:@"SGEventMetadataKey"];
  v4 = [v3 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)flightInformationSchemaForEvent:(id)event
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [event customObjectForKey:@"SGEventMetadataKey"];
  DeepCopy = CFPropertyListCreateDeepCopy(0, v3, 1uLL);
  v5 = [DeepCopy objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
  firstObject = [v5 firstObject];
  v7 = [firstObject objectForKeyedSubscript:@"reservationFor"];
  v8 = [firstObject objectForKeyedSubscript:@"reservationFor"];
  v9 = [v8 objectForKeyedSubscript:@"arrivalAirport"];

  v10 = [v9 objectForKeyedSubscript:@"address"];
  v11 = [v10 objectForKeyedSubscript:@"addressLocality"];

  v12 = [v9 objectForKeyedSubscript:@"iataCode"];
  if (v12)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v25 = DeepCopy;
    v26 = v3;
    mEMORY[0x277D024F0] = [MEMORY[0x277D024F0] sharedInstance];
    v15 = [mEMORY[0x277D024F0] cityForIataCode:v12];
    capitalizedString = [v15 capitalizedString];

    if (capitalizedString)
    {
      v17 = [v9 objectForKeyedSubscript:@"address"];
      if (v17)
      {
        v18 = [v9 objectForKeyedSubscript:@"address"];
        v19 = v18;
        v20 = @"addressLocality";
        v21 = capitalizedString;
      }

      else
      {
        v27 = @"addressLocality";
        v28[0] = capitalizedString;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        v20 = @"address";
        v18 = v9;
        v21 = v19;
      }

      [v18 setObject:v21 forKeyedSubscript:v20];
    }

    [v7 setObject:v9 forKeyedSubscript:@"arrivalAirport"];
    [firstObject setObject:v7 forKeyedSubscript:@"reservationFor"];

    DeepCopy = v25;
    v3 = v26;
  }

  if (firstObject)
  {
    v22 = firstObject;
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;

  return v23;
}

+ (id)updatedFlightInformationSchemaForEvent:(id)event schemaForFlight:(id)flight heuristicDevice:(id)device
{
  v31[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  flightCopy = flight;
  deviceCopy = device;
  v10 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v11 = v10;
  if (v10 && ([v10 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"Flight"), v12, (v13 & 1) != 0))
  {
    DeepCopy = CFPropertyListCreateDeepCopy(0, flightCopy, 1uLL);
    v15 = [ATXHeuristicFlightEventUtilities fetchDestinationPlacemarkForFlightEvent:eventCopy heuristicDevice:deviceCopy];
    v16 = v15;
    if (v15)
    {
      locality = [v15 locality];
      country = [v16 country];
      v19 = country;
      if (locality && country)
      {
        v28 = [DeepCopy objectForKeyedSubscript:@"reservationFor"];
        v20 = [DeepCopy objectForKeyedSubscript:@"reservationFor"];
        v21 = [v20 objectForKeyedSubscript:@"arrivalAirport"];

        v26 = v21;
        v22 = [v21 objectForKeyedSubscript:@"address"];
        v23 = [v22 objectForKeyedSubscript:@"addressLocality"];
        v29 = [v22 objectForKeyedSubscript:@"addressCountry"];
        v27 = v19;
        if (!v23 || !v29 || ![locality isEqualToString:v23] || (objc_msgSend(v19, "isEqualToString:", v29) & 1) == 0)
        {
          if (v22)
          {
            [v22 setObject:locality forKeyedSubscript:@"addressLocality"];
            [v22 setObject:v19 forKeyedSubscript:@"addressCountry"];
          }

          else
          {
            v30[0] = @"addressLocality";
            v30[1] = @"addressCountry";
            v31[0] = locality;
            v31[1] = v19;
            v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
            v22 = [v24 mutableCopy];
          }
        }

        [v26 setObject:v22 forKeyedSubscript:@"address"];
        [v28 setObject:v26 forKeyedSubscript:@"arrivalAirport"];
        [DeepCopy setObject:v28 forKeyedSubscript:@"reservationFor"];

        v19 = v27;
      }
    }
  }

  else
  {
    DeepCopy = flightCopy;
  }

  return DeepCopy;
}

+ (id)lastFlightLegEndTimeForEvent:(id)event heuristicDevice:(id)device
{
  deviceCopy = device;
  eventCopy = event;
  endDate = [eventCopy endDate];
  endDate2 = [eventCopy endDate];

  v10 = [endDate2 dateByAddingTimeInterval:43200.0];

  v12 = __atxlog_handle_context_heuristic(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "lastFlightLedEnd Event search", buf, 2u);
  }

  v13 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v14 = [(ATXCalendarEventsDataSource *)v13 flightEventsFromStartDate:endDate endDate:v10 reason:@"last flight leg computation"];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = MEMORY[0x277CCAC30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__ATXHeuristicFlightEventUtilities_lastFlightLegEndTimeForEvent_heuristicDevice___block_invoke;
  v27[3] = &unk_278C3CE60;
  v28 = date;
  v17 = date;
  v18 = [v16 predicateWithBlock:v27];
  v19 = [v14 filteredArrayUsingPredicate:v18];

  v20 = [(ATXCalendarEventsDataSource *)v13 sortEkEvents:v19];
  if ([v20 count])
  {
    v26 = v10;
    v21 = endDate;
    lastObject = [v20 lastObject];
    v23 = [self lastFlightLegEndTimeForEvent:lastObject heuristicDevice:deviceCopy];
    if (v23)
    {
      [self lastFlightLegEndTimeForEvent:lastObject heuristicDevice:deviceCopy];
    }

    else
    {
      [lastObject endDate];
    }
    v24 = ;

    endDate = v21;
    v10 = v26;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

BOOL __81__ATXHeuristicFlightEventUtilities_lastFlightLegEndTimeForEvent_heuristicDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 endDate];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

+ (id)fetchDestinationPlacemarkForFlightEvent:(id)event heuristicDevice:(id)device
{
  eventCopy = event;
  deviceCopy = device;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v10 = [self lastFlightLegEndTimeForEvent:eventCopy heuristicDevice:deviceCopy];
  objc_autoreleasePoolPop(v9);
  if (!v10)
  {
    endDate = [eventCopy endDate];
    v10 = [endDate dateByAddingTimeInterval:43200.0];
  }

  v12 = objc_opt_new();
  startDate = [eventCopy startDate];
  [v12 setFromDate:startDate];

  [v12 setToDate:v10];
  v14 = objc_autoreleasePoolPush();
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_2850BA4A0, 0}];
  objc_autoreleasePoolPop(v14);
  [v12 setMatchingCategories:v15];

  v16 = objc_opt_new();
  v102[0] = 0;
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke;
  v99[3] = &unk_278C3CE88;
  v100 = 0;
  v17 = v16;
  v101 = v17;
  v90 = v8;
  [v8 iterScoredEventsWithQuery:v12 error:v102 block:v99];
  v89 = v102[0];
  date = [MEMORY[0x277CBEAA8] date];
  v91 = eventCopy;
  startDate2 = [eventCopy startDate];
  v20 = [startDate2 dateByAddingTimeInterval:-3600.0];

  v22 = __atxlog_handle_context_heuristic(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "fetchDestinationPlacemark Event search", buf, 2u);
  }

  v23 = deviceCopy;
  v24 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v25 = [(ATXCalendarEventsDataSource *)v24 flightEventsFromStartDate:v20 endDate:v10 reason:@"destination placemark event search"];
  v26 = MEMORY[0x277CCAC30];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_229;
  v96[3] = &unk_278C3CE60;
  v85 = date;
  v97 = v85;
  v27 = [v26 predicateWithBlock:v96];
  v86 = v25;
  v28 = [v25 filteredArrayUsingPredicate:v27];

  v87 = v24;
  v29 = [(ATXCalendarEventsDataSource *)v24 sortEkEvents:v28];
  v94 = objc_opt_new();
  v93 = objc_opt_new();
  v30 = objc_opt_new();
  v95 = v29;
  v88 = v20;
  v92 = v30;
  if ([v29 count] < 2)
  {
    goto LABEL_22;
  }

  v78 = v28;
  v81 = v12;
  firstObject = [v29 firstObject];
  v31 = [ATXHeuristicFlightEventUtilities flightSchemaForEvent:?];
  v32 = [v31 objectForKeyedSubscript:@"reservationFor"];
  v33 = [v32 objectForKeyedSubscript:@"arrivalAirport"];
  v34 = [v33 objectForKeyedSubscript:@"iataCode"];

  v35 = [v31 objectForKeyedSubscript:@"reservationFor"];
  v36 = [v35 objectForKeyedSubscript:@"departureAirport"];
  v37 = [v36 objectForKeyedSubscript:@"iataCode"];

  if (v34)
  {
    [v94 addObject:v34];
  }

  if (v37)
  {
    [v93 addObject:v37];
  }

  v83 = v10;
  v75 = v23;
  [v30 addObject:firstObject];
  v38 = v95;
  if ([v95 count] < 2)
  {
    goto LABEL_21;
  }

  v39 = 1;
  while (1)
  {
    v40 = v37;
    v41 = v34;
    v42 = v31;
    v43 = [v38 objectAtIndexedSubscript:v39];
    v31 = [ATXHeuristicFlightEventUtilities flightSchemaForEvent:v43];

    v44 = [v31 objectForKeyedSubscript:@"reservationFor"];
    v45 = [v44 objectForKeyedSubscript:@"arrivalAirport"];
    v34 = [v45 objectForKeyedSubscript:@"iataCode"];

    v46 = [v31 objectForKeyedSubscript:@"reservationFor"];
    v47 = [v46 objectForKeyedSubscript:@"departureAirport"];
    v37 = [v47 objectForKeyedSubscript:@"iataCode"];

    if (!v34 || !v37)
    {
      goto LABEL_17;
    }

    lastObject = [v94 lastObject];
    if (![lastObject isEqualToString:v37])
    {
      break;
    }

    v49 = [v93 containsObject:v34];

    if (v49)
    {
      goto LABEL_20;
    }

    [v93 addObject:v37];
    [v94 addObject:v34];
    [v30 addObject:v43];
LABEL_17:

    ++v39;
    v38 = v95;
    if (v39 >= [v95 count])
    {
      goto LABEL_21;
    }
  }

LABEL_20:
LABEL_21:

  v23 = v75;
  v12 = v81;
  v10 = v83;
  v28 = v78;
LABEL_22:
  if ([v30 count])
  {
    lastObject2 = [v30 lastObject];
  }

  else
  {
    lastObject2 = v91;
  }

  v51 = lastObject2;
  v52 = v23;
  endLocation = [lastObject2 endLocation];
  v54 = v93;
  if (!endLocation)
  {
    goto LABEL_32;
  }

  v55 = endLocation;
  endLocation2 = [v51 endLocation];
  geoLocation = [endLocation2 geoLocation];

  if (!geoLocation)
  {
    goto LABEL_32;
  }

  v79 = v28;
  v80 = v17;
  v82 = v12;
  v84 = v10;
  v58 = [ATXHeuristicFlightEventUtilities flightInformationSchemaForEvent:v51];
  v59 = [v58 objectForKeyedSubscript:@"reservationFor"];
  v60 = [v59 objectForKeyedSubscript:@"arrivalAirport"];
  v61 = [v60 objectForKeyedSubscript:@"address"];
  v62 = [v61 objectForKeyedSubscript:@"addressLocality"];

  v63 = [v58 objectForKeyedSubscript:@"reservationFor"];
  v64 = [v63 objectForKeyedSubscript:@"arrivalAirport"];
  v65 = [v64 objectForKeyedSubscript:@"address"];
  v66 = [v65 objectForKeyedSubscript:@"addressCountry"];

  v67 = objc_alloc_init(MEMORY[0x277CBDB60]);
  v68 = v67;
  if (v62)
  {
    v76 = v52;
    [v67 setCity:v62];
    if (v66)
    {
      [v68 setCountry:v66];
    }

    v69 = MEMORY[0x277CBFC40];
    endLocation3 = [v51 endLocation];
    geoLocation2 = [endLocation3 geoLocation];
    endLocation4 = [v51 endLocation];
    title = [endLocation4 title];
    v63 = [v69 placemarkWithLocation:geoLocation2 name:title postalAddress:v68];

    v52 = v76;
  }

  v12 = v82;
  v10 = v84;
  v28 = v79;
  v17 = v80;
  v54 = v93;
  if (!v62)
  {
LABEL_32:
    v63 = 0;
  }

  return v63;
}

void __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = __atxlog_handle_context_heuristic(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    v4 = *(a1 + 40);

    [v4 addObject:a2];
  }
}

BOOL __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_229(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 endDate];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

+ (CLLocationCoordinate2D)locationAtArrivalAirport:(id)airport event:(id)event heuristicDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  airportCopy = airport;
  v9 = [self fetchDestinationPlacemarkForFlightEvent:event heuristicDevice:device];
  v10 = v9;
  if (v9)
  {
    location = [v9 location];
    [location coordinate];
    latitude = v12;
    longitude = v14;
  }

  else
  {
    v16 = [airportCopy objectForKeyedSubscript:@"geo"];
    location = [v16 objectForKeyedSubscript:@"latitude"];

    v17 = [airportCopy objectForKeyedSubscript:@"geo"];
    v18 = [v17 objectForKeyedSubscript:@"longitude"];

    if (location && v18)
    {
      [location doubleValue];
      v21 = v20;
      doubleValue = [v18 doubleValue];
      v24 = v23;
      v25 = __atxlog_handle_context_heuristic(doubleValue);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 134218240;
        v31 = v21;
        v32 = 2048;
        v33 = v24;
        _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Geolocation from Schema metadata: %f, %f", &v30, 0x16u);
      }

      v26 = CLLocationCoordinate2DMake(v21, v24);
      latitude = v26.latitude;
      longitude = v26.longitude;
    }

    else
    {
      v27 = __atxlog_handle_context_heuristic(v19);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412546;
        v31 = *&location;
        v32 = 2112;
        v33 = *&v18;
        _os_log_impl(&dword_23E3EA000, v27, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Missing latitude/longitude information: %@, %@", &v30, 0x16u);
      }

      latitude = *MEMORY[0x277CE4278];
      longitude = *(MEMORY[0x277CE4278] + 8);
    }
  }

  v28 = latitude;
  v29 = longitude;
  result.longitude = v29;
  result.latitude = v28;
  return result;
}

+ (BOOL)currentLocationIsWithinAirportForEvent:(id)event
{
  v41 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  endLocation = [eventCopy endLocation];
  if (!endLocation)
  {
    goto LABEL_20;
  }

  v5 = endLocation;
  endLocation2 = [eventCopy endLocation];
  geoLocation = [endLocation2 geoLocation];

  if (!geoLocation)
  {
    goto LABEL_20;
  }

  v8 = 0x278C3C000uLL;
  endLocation3 = [eventCopy endLocation];
  geoLocation2 = [endLocation3 geoLocation];
  v11 = [ATXHeuristicNavigationUtilities destinationPlacemarkForLocation:geoLocation2 withDestinationName:0];

  if (!v11)
  {
    v36 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
    v17 = [v36 objectForKeyedSubscript:@"SGEventMetadataSchemaOrgKey"];
    firstObject = [v17 firstObject];
    v19 = [firstObject objectForKeyedSubscript:@"reservationFor"];
    v20 = [v19 objectForKeyedSubscript:@"arrivalAirport"];
    v21 = [v20 objectForKeyedSubscript:@"geo"];
    v22 = [v21 objectForKeyedSubscript:@"latitude"];

    v23 = [firstObject objectForKeyedSubscript:@"reservationFor"];
    v24 = [v23 objectForKeyedSubscript:@"arrivalAirport"];
    v25 = [v24 objectForKeyedSubscript:@"geo"];
    v26 = [v25 objectForKeyedSubscript:@"longitude"];

    if (v22)
    {
      v28 = v26 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    if (v28)
    {
      v34 = __atxlog_handle_context_heuristic(v27);
      v8 = 0x278C3C000;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        v38 = v22;
        v39 = 2113;
        v40 = v26;
        _os_log_impl(&dword_23E3EA000, v34, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Missing latitude/longitude/destination information: %{private}@, %{private}@", buf, 0x16u);
      }

      v11 = 0;
    }

    else
    {
      [v22 doubleValue];
      v31 = v30;
      [v26 doubleValue];
      v33 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v31 longitude:v32];
      v8 = 0x278C3C000uLL;
      v11 = [ATXHeuristicNavigationUtilities destinationPlacemarkForLocation:v33 withDestinationName:0];
    }

    if (!v29)
    {
      goto LABEL_22;
    }

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:
    v11 = __atxlog_handle_context_heuristic(endLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Unable to determine if we are at airport. Missing location", buf, 2u);
    }

LABEL_22:
    LOBYTE(v14) = 0;
    goto LABEL_23;
  }

LABEL_4:
  v12 = *(v8 + 880);
  location = [v11 location];
  v14 = [v12 isAtLocation:location maxDistance:5000];

  v16 = __atxlog_handle_context_heuristic(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v38) = v14;
    _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "ATXHeursiticFlightEventUtilities: Are we at the airport: (%{BOOL}d)", buf, 8u);
  }

LABEL_23:
  return v14;
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

+ (id)flightInformationSpotlightSuggestionForEvent:(id)event schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  flightCopy = flight;
  dateCopy = date;
  endDateCopy = endDate;
  v18 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v19 = [v18 objectForKeyedSubscript:@"flightNumber"];

  if ([v19 length])
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"FLIGHT_CATEGORY" value:&stru_2850AD368 table:0];
    v23 = [v20 localizedStringWithFormat:v22, v19];

    v24 = [ATXContextFlightEventSuggestionProducer alloc];
    v25 = [self _dateIntervalWithEvent:eventCopy];
    v26 = [(ATXContextFlightEventSuggestionProducer *)v24 initWithTitle:v23 flightInformationSchema:flightCopy urlString:0 teamIdentifier:0 validFromStartDate:dateCopy validToEndDate:endDateCopy alternateDestinationTitle:0 dateInterval:v25];

    startDate = [eventCopy startDate];
    v28 = [(ATXContextFlightEventSuggestionProducer *)v26 suggestionForFlightInformationWithReason:reasons score:startDate date:score];

    [ATXHeuristicFlightEventUtilities logSuggestion:v28 description:@"ATXHeuristicFlightEventUtilities: Flight info suggestion"];
  }

  else
  {
    v29 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "ATXHeuristicFlightEventUtilities: Flight Information: Missing information: Flight Info : %@", buf, 0xCu);
    }

    v28 = 0;
  }

  return v28;
}

void __92__ATXHeuristicFlightEventUtilities_fetchDestinationPlacemarkForFlightEvent_heuristicDevice___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXHeuristicFlightEventUtilities: Error while resolving events: %@", &v4, 0xCu);
}

@end