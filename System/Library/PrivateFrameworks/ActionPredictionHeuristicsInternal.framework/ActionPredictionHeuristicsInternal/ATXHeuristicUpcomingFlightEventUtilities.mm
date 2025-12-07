@interface ATXHeuristicUpcomingFlightEventUtilities
+ (id)flightCheckInActionSuggestionForEvent:(id)event flightSchema:(id)schema validStartDate:(id)date validEndDate:(id)endDate;
+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device;
+ (id)weatherAtTravelDestinationSpotlightEntry:(id)entry schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate heuristicDevice:(id)device;
@end

@implementation ATXHeuristicUpcomingFlightEventUtilities

+ (id)flightCheckInActionSuggestionForEvent:(id)event flightSchema:(id)schema validStartDate:(id)date validEndDate:(id)endDate
{
  v57 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  schemaCopy = schema;
  dateCopy = date;
  endDateCopy = endDate;
  v13 = endDateCopy;
  if (schemaCopy)
  {
    v14 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
    v15 = [v14 objectForKeyedSubscript:@"SGEventMetadataEventActivitiesKey"];
    firstObject = [v15 firstObject];
    v17 = firstObject;
    if (firstObject)
    {
      firstObject = [firstObject objectForKeyedSubscript:@"SGEventActivityTypeKey"];
      if (firstObject)
      {
        v18 = firstObject;
        v19 = [v17 objectForKeyedSubscript:@"SGEventActivityTypeKey"];
        v20 = [v19 isEqualToString:@"CheckIn"];

        if (v20)
        {
          firstObject = [v17 objectForKeyedSubscript:@"SGEventActivityUserActivityStringKey"];
          if (firstObject)
          {
            v21 = firstObject;
            v22 = [v17 objectForKeyedSubscript:@"SGEventActivityStartDateKey"];
            if (v22)
            {
              v23 = v22;
              v24 = [v17 objectForKeyedSubscript:@"SGEventActivityEndDateKey"];

              if (v24)
              {
                v25 = __atxlog_handle_context_heuristic(firstObject);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  title = [eventCopy title];
                  startDate = [eventCopy startDate];
                  *buf = 138412546;
                  v52 = title;
                  v53 = 2112;
                  v54 = startDate;
                  _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Event: %@ at start:%@", buf, 0x16u);
                }

                v28 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
                v29 = [v28 objectForKeyedSubscript:@"arrivalAirport"];
                v30 = [v29 objectForKeyedSubscript:@"iataCode"];

                v31 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
                v32 = [v31 objectForKeyedSubscript:@"departureAirport"];
                v49 = [v32 objectForKeyedSubscript:@"iataCode"];

                v33 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
                v34 = [v33 objectForKeyedSubscript:@"flightNumber"];

                v35 = [v30 length];
                if (v35 && (v35 = [v49 length]) != 0 && (v35 = objc_msgSend(v34, "length")) != 0)
                {
                  log = [v17 objectForKeyedSubscript:@"SGEventActivityTeamIdentifierKey"];
                  v47 = v34;
                  if ([log length])
                  {
                    v36 = [v17 objectForKeyedSubscript:@"SGEventActivityUserActivityStringKey"];
                    v44 = MEMORY[0x277CCACA8];
                    v46 = v36;
                    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v37 = [v43 localizedStringForKey:@"FLIGHT_INFO_TITLE" value:&stru_2850AD368 table:0];
                    v50 = [v44 localizedStringWithFormat:v37, v34, v49, v30];

                    v45 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:eventCopy];
                    v38 = [[ATXContextFlightEventSuggestionProducer alloc] initWithTitle:v50 flightInformationSchema:schemaCopy urlString:v46 teamIdentifier:log validFromStartDate:dateCopy validToEndDate:v13 alternateDestinationTitle:0 dateInterval:v45];
                    v39 = [(ATXContextFlightEventSuggestionProducer *)v38 suggestionForFlightCheckInWithReason:0x80000000 score:30.0];
                    [ATXHeuristicFlightEventUtilities logSuggestion:v39 description:@"ATXHeuristicUpcomingFlightEventUtilities: Flight checkin suggestion"];

                    v40 = v46;
                  }

                  else
                  {
                    v42 = __atxlog_handle_context_heuristic(0);
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_23E3EA000, v42, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Missing TeamId. Unable to create suggestion for Flight Checkin", buf, 2u);
                    }

                    v40 = v42;
                    v39 = 0;
                  }

                  v34 = v47;
                }

                else
                {
                  log = __atxlog_handle_context_heuristic(v35);
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412803;
                    v52 = v30;
                    v53 = 2112;
                    v54 = v49;
                    v55 = 2113;
                    v56 = v34;
                    _os_log_impl(&dword_23E3EA000, log, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Missing information: Arrival IATA code: %@, Departure IATA code: %@ Flight Number: %{private}@", buf, 0x20u);
                  }

                  v39 = 0;
                }

LABEL_22:
                goto LABEL_23;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    v30 = __atxlog_handle_context_heuristic(firstObject);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Check-in information is unavailable", buf, 2u);
    }

    v39 = 0;
    goto LABEL_22;
  }

  v14 = __atxlog_handle_context_heuristic(endDateCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: FlightCheckIn: Missing Schema", buf, 2u);
  }

  v39 = 0;
LABEL_23:

  return v39;
}

+ (id)weatherAtTravelDestinationSpotlightEntry:(id)entry schemaForFlight:(id)flight predictionReasons:(unint64_t)reasons score:(double)score validStartDate:(id)date validEndDate:(id)endDate heuristicDevice:(id)device
{
  v60 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  flightCopy = flight;
  dateCopy = date;
  endDateCopy = endDate;
  deviceCopy = device;
  v15 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v16 = [v15 objectForKeyedSubscript:@"arrivalAirport"];
  v17 = [v16 objectForKeyedSubscript:@"iataCode"];

  v18 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v19 = [v18 objectForKeyedSubscript:@"arrivalAirport"];
  v20 = [v19 objectForKeyedSubscript:@"address"];
  v21 = [v20 objectForKeyedSubscript:@"addressLocality"];

  v22 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v23 = [v22 objectForKeyedSubscript:@"flightNumber"];

  v24 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
  v25 = [v24 objectForKeyedSubscript:@"arrivalAirport"];
  v26 = [v25 objectForKeyedSubscript:@"address"];
  v27 = [v26 objectForKeyedSubscript:@"addressCountry"];

  v28 = [v17 length];
  if (v28 && (v28 = [v21 length]) != 0 && (v28 = objc_msgSend(v23, "length")) != 0)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"FLIGHT_TRAVEL_INFO_TITLE" value:&stru_2850AD368 table:0];
    v32 = [v29 localizedStringWithFormat:v31, v23, v21];

    v48 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:entryCopy];
    v47 = [[ATXContextFlightEventSuggestionProducer alloc] initWithTitle:v32 flightInformationSchema:flightCopy urlString:0 teamIdentifier:0 validFromStartDate:dateCopy validToEndDate:endDateCopy alternateDestinationTitle:0 dateInterval:v48];
    v33 = [flightCopy objectForKeyedSubscript:@"reservationFor"];
    v34 = [v33 objectForKeyedSubscript:@"arrivalAirport"];
    v35 = deviceCopy;
    [ATXHeuristicFlightEventUtilities locationAtArrivalAirport:v34 event:entryCopy heuristicDevice:deviceCopy];
    v37 = v36;
    v39 = v38;

    v62.latitude = v37;
    v62.longitude = v39;
    v40 = CLLocationCoordinate2DIsValid(v62);
    if (v40)
    {
      if (v27)
      {
        v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@, %@", v21, v27];
      }

      else
      {
        v41 = v21;
      }

      v45 = v41;
      v44 = v47;
      score = [(ATXContextFlightEventSuggestionProducer *)v47 suggestionForWeatherAtFlightDestinationLocation:v41 destination:reasons predictionReasons:v37 score:v39, score];
      [ATXHeuristicFlightEventUtilities logSuggestion:score description:@"ATXHeuristicUpcomingFlightEventUtilities: Weather at travel destination suggestion"];
    }

    else
    {
      v43 = __atxlog_handle_context_heuristic(v40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v32;
        _os_log_impl(&dword_23E3EA000, v43, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: no location for flight destination: %@", buf, 0xCu);
      }

      score = 0;
      v44 = v47;
    }
  }

  else
  {
    v32 = __atxlog_handle_context_heuristic(v28);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v55 = v17;
      v56 = 2112;
      v57 = v21;
      v58 = 2112;
      v59 = v23;
      _os_log_impl(&dword_23E3EA000, v32, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: Weather for flight: Missing information: Arrival IATA code: %@, arrival city: %@ flight number: %@", buf, 0x20u);
    }

    score = 0;
    v35 = deviceCopy;
  }

  return score;
}

+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device
{
  v75 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:86400.0];
  v6 = __atxlog_handle_context_heuristic(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "Upcoming flight Event search", buf, 2u);
  }

  v62 = deviceCopy;
  v7 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v8 = [(ATXCalendarEventsDataSource *)v7 flightEventsFromStartDate:date endDate:v5 reason:@"upcoming flights heuristic"];
  v9 = [(ATXCalendarEventsDataSource *)v7 sortEkEvents:v8];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([v9 count])
  {
    v50 = date;
    v51 = v11;
    v47 = v8;
    v48 = v7;
    v49 = v5;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v46 = v9;
    obj = v9;
    v61 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v61)
    {
      v12 = *v67;
      v13 = 0x278C3C000uLL;
      v55 = v10;
      v52 = *v67;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v67 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v66 + 1) + 8 * i);
          v63 = [*(v13 + 864) flightInformationSchemaForEvent:v15];
          v16 = [*(v13 + 864) updatedFlightInformationSchemaForEvent:v15 schemaForFlight:? heuristicDevice:?];
          startDate = [v15 startDate];
          v18 = [startDate dateByAddingTimeInterval:-86400.0];

          startDate2 = [v15 startDate];
          v64 = v18;
          v65 = v16;
          if ([v18 compare:startDate2]== 1)
          {
            v20 = __atxlog_handle_context_heuristic(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v71 = v64;
              v72 = 2112;
              v73 = startDate2;
              _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: flightInfoWindowStartTime %@ is after flightInfoWindowEndTime %@. Skipping event", buf, 0x16u);
            }

            v13 = 0x278C3C000;
          }

          else
          {
            v21 = v10;
            v20 = v18;
            startDate3 = [v15 startDate];
            v23 = [startDate3 dateByAddingTimeInterval:-2400.0];

            v60 = v23;
            v24 = [self flightCheckInActionSuggestionForEvent:v15 flightSchema:v16 validStartDate:v20 validEndDate:v23];
            if (v24)
            {
              [v21 addObject:v24];
            }

            v25 = [ATXHeuristicFlightEventUtilities flightInformationSpotlightSuggestionForEvent:v15 schemaForFlight:v16 predictionReasons:0x80000000 score:v20 validStartDate:startDate2 validEndDate:70.0];
            if (v25)
            {
              [v21 addObject:v25];
            }

            v58 = v25;
            v26 = [self weatherAtTravelDestinationSpotlightEntry:v15 schemaForFlight:v16 predictionReasons:0x80000000 score:v20 validStartDate:startDate2 validEndDate:v62 heuristicDevice:40.0];
            if (v26)
            {
              [v21 addObject:v26];
            }

            v57 = v26;
            v27 = [ATXHeuristicNavigationUtilities locationFromEvent:v15 schemaType:0];
            v28 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v27 maxDistance:250000];
            v59 = v24;
            v56 = v27;
            if (v28)
            {
              startDate4 = [v15 startDate];
              v30 = [startDate4 dateByAddingTimeInterval:-14400.0];

              startDate5 = [v15 startDate];
              v32 = [startDate5 dateByAddingTimeInterval:-2400.0];

              if ([v30 compare:v32]== 1)
              {
                v33 = __atxlog_handle_context_heuristic(1);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v71 = v30;
                  v72 = 2112;
                  v73 = v32;
                  _os_log_fault_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_FAULT, "ATXHeuristicUpcomingFlightEventUtilities: start %@ is after end %@", buf, 0x16u);
                }
              }

              else
              {
                v33 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v15 schemaForEvent:v65 transportType:@"AUTOMOBILE" predictionReasons:0x80000000 heuristicDevice:v62 score:v30 validStartDate:65.0 validEndDate:v32];
                if (v33)
                {
                  [v55 addObject:v33];
                  v34 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                  [v27 coordinate];
                  v35 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v34 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                  [v51 addObject:v35];
                }
              }
            }

            else
            {
              v30 = __atxlog_handle_context_heuristic(v28);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingFlightEventUtilities: Skipped Navigation suggestions", buf, 2u);
              }
            }

            startDate6 = [v15 startDate];
            v37 = [startDate6 dateByAddingTimeInterval:-1200.0];

            startDate7 = [v15 startDate];
            v39 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:v15];
            v40 = [ATXContextFlightEventSuggestionProducer alloc];
            title = [v15 title];
            v42 = [(ATXContextFlightEventSuggestionProducer *)v40 initWithTitle:title flightInformationSchema:v65 urlString:0 teamIdentifier:0 validFromStartDate:v37 validToEndDate:startDate7 alternateDestinationTitle:0 dateInterval:v39];

            v43 = [(ATXContextFlightEventSuggestionProducer *)v42 suggestionForAirplaneModeWithPredictionReasons:0x80000000 score:80.0];
            if (v43)
            {
              [ATXHeuristicFlightEventUtilities logSuggestion:v43 description:@"ATXHeuristicUpcomingFlightEventUtilities: Airplane Mode suggestion"];
              [v55 addObject:v43];
            }

            v10 = v55;
            v12 = v52;
            v13 = 0x278C3C000uLL;
          }
        }

        v61 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v61);
    }

    v11 = v51;
    v44 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v10 additionalRefreshTriggers:v51];
    v5 = v49;
    date = v50;
    v8 = v47;
    v7 = v48;
    v9 = v46;
  }

  else
  {
    v44 = objc_opt_new();
  }

  return v44;
}

@end