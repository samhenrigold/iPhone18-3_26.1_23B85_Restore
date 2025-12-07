@interface ATXHeuristicOngoingEvent
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicOngoingEvent

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXTravelTimeUpdated" type:0];
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, v4, 0}];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v75 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v3 = __atxlog_handle_context_heuristic(environmentCopy);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "+[ATXHeuristicOngoingEvent produceSuggestions]", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:7200.0];
  v6 = [ATXCalendarEventsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v8 = [(ATXCalendarEventsDataSource *)v6 initWithDevice:heuristicDevice];

  v53 = v8;
  v54 = v5;
  v55 = date;
  v9 = [(ATXCalendarEventsDataSource *)v8 eventsFromStartDate:date endDate:v5 reason:@"ongoing event heuristic"];
  v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_15];
  v52 = v9;
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v51 = v11;
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_23_0];
  v13 = objc_opt_new();
  v56 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0x278C3C000uLL;
    v18 = *v63;
    v57 = v14;
    v58 = v13;
    v60 = *v63;
    do
    {
      v19 = 0;
      v61 = v16;
      do
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v62 + 1) + 8 * v19);
        v21 = [*(v17 + 856) allowSuggestionsForEvent:v20];
        v22 = v21;
        startDate2 = __atxlog_handle_context_heuristic(v21);
        v24 = os_log_type_enabled(startDate2, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            eventIdentifier = [v20 eventIdentifier];
            title = [v20 title];
            v27 = [title hash];
            startDate = [v20 startDate];
            organizer = [v20 organizer];
            *buf = 138413058;
            v67 = eventIdentifier;
            v68 = 2048;
            v69 = v27;
            v17 = 0x278C3C000;
            v70 = 2112;
            v71 = startDate;
            v72 = 1024;
            v73 = organizer != 0;
            _os_log_impl(&dword_23E3EA000, startDate2, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has organizer:%{BOOL}i", buf, 0x26u);

            v16 = v61;
          }

          startDate2 = [v20 startDate];
          endDate = [v20 endDate];
          if ([startDate2 compare:endDate]== 1)
          {
            v31 = __atxlog_handle_context_heuristic(1);
            if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v67 = startDate2;
              v68 = 2112;
              v69 = endDate;
              _os_log_fault_impl(&dword_23E3EA000, &v31->super, OS_LOG_TYPE_FAULT, "ATXHeuristicOngoingEvent: validStartDate %@ is after validEndDate %@. Skipping event", buf, 0x16u);
            }
          }

          else
          {
            v31 = [[ATXContextEventSuggestionProducer alloc] initWithEvent:v20 validFromStartDate:startDate2 validToEndDate:endDate environment:environmentCopy];
            v32 = [(ATXContextEventSuggestionProducer *)v31 suggestionForConferenceWithScore:0x200000 predictionReasons:80.0];
            v33 = __atxlog_handle_context_heuristic(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v67 = v32;
              _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, "conferenceSuggestion: %@", buf, 0xCu);
            }

            if (v32)
            {
              [v13 addObject:v32];
            }

            v34 = [ATXHeuristicNavigationUtilities locationFromEvent:v20 schemaType:2];
            v35 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v34 maxDistance:250000];
            v36 = v35;
            v37 = __atxlog_handle_context_heuristic(v35);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v67) = v36;
              _os_log_impl(&dword_23E3EA000, v37, OS_LOG_TYPE_DEFAULT, "ATXHeuristicOngoingEvent: can we navigate to event: (%{BOOL}d)", buf, 8u);
            }

            if (v36)
            {
              heuristicDevice2 = [environmentCopy heuristicDevice];
              v39 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v20 schemaForEvent:0 transportType:@"AUTOMOBILE" predictionReasons:0x200000 heuristicDevice:heuristicDevice2 score:startDate2 validStartDate:80.0 validEndDate:endDate];

              v13 = v58;
              if (v39)
              {
                [v58 addObject:v39];
                v40 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                [v34 coordinate];
                v41 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v40 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                [v56 addObject:v41];
              }
            }

            v42 = [(ATXContextEventSuggestionProducer *)v31 suggestionForEventOrganizerWithScore:0x200000 predictionReasons:50.0];
            v43 = __atxlog_handle_context_heuristic(v42);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v67 = v42;
              _os_log_impl(&dword_23E3EA000, v43, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            if (v42)
            {
              [v13 addObject:v42];
            }

            v44 = [(ATXContextEventSuggestionProducer *)v31 suggestionForEventParticipantWithScore:0x200000 predictionReasons:50.0];
            v45 = __atxlog_handle_context_heuristic(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v67 = v44;
              _os_log_impl(&dword_23E3EA000, v45, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            if (v44)
            {
              [v13 addObject:v44];
            }

            if ([v13 count])
            {
              v46 = [(ATXContextEventSuggestionProducer *)v31 suggestionForDNDWithScore:0x200000 predictionReasons:30.0];
              v47 = __atxlog_handle_context_heuristic(v46);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v67 = v46;
                _os_log_impl(&dword_23E3EA000, v47, OS_LOG_TYPE_DEFAULT, "DND Suggestion: %@", buf, 0xCu);
              }

              v13 = v58;
              [v58 addObject:v46];
            }

            else
            {
              v46 = __atxlog_handle_context_heuristic(0);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v46, OS_LOG_TYPE_DEFAULT, "Skipping DND Suggestion: No other event suggestions", buf, 2u);
              }
            }

            v14 = v57;
            v16 = v61;
            v17 = 0x278C3C000;
          }

          v18 = v60;
        }

        else if (v24)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, startDate2, OS_LOG_TYPE_DEFAULT, "Ongoing Event: Skipping event suggestions, event is a Unsupported", buf, 2u);
        }

        ++v19;
      }

      while (v16 != v19);
      v16 = [v14 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v16);
  }

  v48 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v54];
  [v56 addObject:v48];
  v49 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v13 additionalRefreshTriggers:v56];

  return v49;
}

uint64_t __59__ATXHeuristicOngoingEvent_heuristicResultWithEnvironment___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 organizer];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 organizer];

    if (!v8)
    {
      v12 = -1;
      goto LABEL_9;
    }
  }

  v9 = [v4 organizer];
  if (v9)
  {
  }

  else
  {
    v13 = [v5 organizer];

    if (v13)
    {
      v12 = 1;
      goto LABEL_9;
    }
  }

  v10 = [v4 endDate];
  v11 = [v5 endDate];
  v12 = [v10 compare:v11];

LABEL_9:
  return v12;
}

@end