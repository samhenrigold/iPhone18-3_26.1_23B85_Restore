@interface ATXHeuristicConcludedFlightEventUtilities
+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device;
@end

@implementation ATXHeuristicConcludedFlightEventUtilities

+ (id)suggestionsForFlightsWithHeuristicDevice:(id)device
{
  v93 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-64800.0];
  v5 = __atxlog_handle_context_heuristic(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "Concluded flights event search", buf, 2u);
  }

  v6 = [[ATXCalendarEventsDataSource alloc] initWithDevice:deviceCopy];
  v7 = [(ATXCalendarEventsDataSource *)v6 flightEventsFromStartDate:v4 endDate:date reason:@"concluded flights heuristic"];
  v8 = [(ATXCalendarEventsDataSource *)v6 sortEkEvents:v7];
  if ([v8 count])
  {
    v65 = v7;
    v66 = v4;
    v75 = v6;
    v70 = objc_opt_new();
    v83 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v64 = v8;
    obj = v8;
    v85 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (!v85)
    {
      goto LABEL_44;
    }

    v9 = 0x278C3C000uLL;
    v84 = *v87;
    v74 = date;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v87 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v86 + 1) + 8 * v10);
        endDate = [v11 endDate];
        v13 = [endDate dateByAddingTimeInterval:14400.0];

        v14 = [*(v9 + 864) flightInformationSchemaForEvent:v11];
        endLocation = [v11 endLocation];
        geoLocation = [endLocation geoLocation];

        if (geoLocation)
        {
          v18 = [*(v9 + 864) currentLocationIsWithinAirportForEvent:v11];
          v19 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
          [geoLocation coordinate];
          if ((v18 & 1) == 0)
          {
            v53 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v19 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
            [v83 addObject:v53];
            goto LABEL_40;
          }

          v80 = [ATXInformationHeuristicRefreshLocationTrigger initWithExitingLocation:v19 radiusInMeters:"initWithExitingLocation:radiusInMeters:"];
          [v83 addObject:?];
          v20 = [v14 objectForKeyedSubscript:@"reservationFor"];
          v21 = [v20 objectForKeyedSubscript:@"arrivalAirport"];
          v22 = [v21 objectForKeyedSubscript:@"address"];
          [v22 objectForKeyedSubscript:@"addressLocality"];
          v24 = v23 = date;

          v82 = v24;
          v25 = v24;
          v26 = v23;
          if (![v25 length])
          {
            v27 = __atxlog_handle_context_heuristic(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v91 = v82;
              _os_log_impl(&dword_23E3EA000, v27, OS_LOG_TYPE_DEFAULT, "ATXHeuristicConcludedFlightEventUtilities: Airplane mode: Missing information: Arrival City %@.", buf, 0xCu);
            }
          }

          v28 = [ATXHeuristicFlightEventUtilities _dateIntervalWithEvent:v11];
          v29 = [ATXContextFlightEventSuggestionProducer alloc];
          title = [v11 title];
          v77 = v28;
          v81 = v14;
          v31 = [(ATXContextFlightEventSuggestionProducer *)v29 initWithTitle:title flightInformationSchema:v14 urlString:0 teamIdentifier:0 validFromStartDate:0 validToEndDate:v13 alternateDestinationTitle:0 dateInterval:v28];

          v32 = [(ATXContextFlightEventSuggestionProducer *)v31 suggestionForAirplaneModeWithPredictionReasons:0x200000000 score:80.0];
          if (v32)
          {
            [ATXHeuristicFlightEventUtilities logSuggestion:v32 description:@"ATXHeuristicConcludedFlightEventUtilities: Airplane Modesuggestion"];
            [v70 addObject:v32];
          }

          v79 = [v26 dateByAddingTimeInterval:-43200.0];
          v33 = [ATXCalendarEventsDataSource hotelEventsFromStartDate:v75 endDate:"hotelEventsFromStartDate:endDate:reason:" reason:?];
          if (![v33 count])
          {
            [v26 dateByAddingTimeInterval:43200.0];
            v35 = v34 = v31;
            v36 = [(ATXCalendarEventsDataSource *)v75 hotelEventsFromStartDate:v26 endDate:v35 reason:@"lodging for concluded flights"];

            v31 = v34;
            v33 = v36;
          }

          v78 = v33;
          if ([v33 count])
          {
            v37 = [(ATXCalendarEventsDataSource *)v75 sortEkEvents:v33];
            if ([v37 count])
            {
              v73 = v37;
              firstObject = [v37 firstObject];
              endDate2 = [firstObject endDate];
              v40 = [endDate2 dateByAddingTimeInterval:14400.0];

              endDate3 = [v11 endDate];
              [endDate3 timeIntervalSinceDate:v74];
              v43 = v42;

              v14 = v81;
              v9 = 0x278C3C000uLL;
              if (v43 <= 14400.0)
              {
                v44 = [ATXHeuristicFlightEventUtilities flightInformationSchemaForEvent:firstObject];
                v68 = v40;
                v69 = firstObject;
                v45 = firstObject;
                v46 = v44;
                v47 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v45 schemaForEvent:v44 transportType:@"AUTOMOBILE" predictionReasons:0x200000000 heuristicDevice:deviceCopy score:0 validStartDate:65.0 validEndDate:v40];
                if (v47)
                {
                  v71 = v31;
                  [ATXHeuristicFlightEventUtilities logSuggestion:v47 description:@"ATXHeuristicConcludedFlightEventUtilities: Navigation Suggestion"];
                  [v70 addObject:v47];
                  atxShortcutsActionExecutableObject = [v47 atxShortcutsActionExecutableObject];
                  contextualActionGetDirections = [atxShortcutsActionExecutableObject contextualActionGetDirections];
                  destination = [contextualActionGetDirections destination];

                  if (destination)
                  {
                    v51 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                    [destination coordinate];
                    v52 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v51 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                    [v83 addObject:v52];
                  }

                  v9 = 0x278C3C000;
                  v31 = v71;
                }

LABEL_35:
                v40 = v68;
                firstObject = v69;
              }

              goto LABEL_36;
            }

            v9 = 0x278C3C000;
            v14 = v81;
          }

          else
          {
            v72 = v31;
            v37 = [ATXHeuristicNavigationUtilities fetchLocationForLOI:0];
            v54 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v37 maxDistance:250000];
            v55 = v54;
            v56 = __atxlog_handle_context_heuristic(v54);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v91) = v55;
              _os_log_impl(&dword_23E3EA000, v56, OS_LOG_TYPE_DEFAULT, "ATXHeursiticFlightEventUtilities: Can we navigate to home (%{BOOL}d)", buf, 8u);
            }

            v14 = v81;
            if (v55)
            {
              v73 = v37;
              v57 = MEMORY[0x277CCACA8];
              v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v59 = [v58 localizedStringForKey:@"HOME_NAVIGATION_TITLE" value:&stru_2850AD368 table:0];
              firstObject = [v57 localizedStringWithFormat:v59];

              v40 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForLOI:0 destinationName:firstObject schemaForEvent:v81 withScore:@"AUTOMOBILE" transportType:0x200000000 predictionReason:0 validStartDate:65.0 validEndDate:v13 heuristicDevice:deviceCopy];
              if (v40)
              {
                v69 = firstObject;
                v9 = 0x278C3C000uLL;
                [ATXHeuristicFlightEventUtilities logSuggestion:v40 description:@"ATXHeuristicConcludedFlightEventUtilities: Navigation Suggestion"];
                v68 = v40;
                [v70 addObject:v40];
                v60 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                [v73 coordinate];
                v46 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v60 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                [v83 addObject:v46];
                v31 = v72;
                goto LABEL_35;
              }

              v9 = 0x278C3C000;
              v31 = v72;
LABEL_36:

              v37 = v73;
            }

            else
            {
              v9 = 0x278C3C000;
              v31 = v72;
            }
          }

          date = v74;
          v53 = v80;
          goto LABEL_40;
        }

        v53 = __atxlog_handle_context_heuristic(v17);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v53, OS_LOG_TYPE_DEFAULT, "ATXHeuristicConcludedFlightEventUtilities: No destination location, skipping Flight landed suggestions", buf, 2u);
        }

LABEL_40:

        ++v10;
      }

      while (v85 != v10);
      v61 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      v85 = v61;
      if (!v61)
      {
LABEL_44:

        v62 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v70 additionalRefreshTriggers:v83];
        v7 = v65;
        v4 = v66;
        v6 = v75;
        v8 = v64;
        goto LABEL_46;
      }
    }
  }

  v62 = objc_opt_new();
LABEL_46:

  return v62;
}

@end