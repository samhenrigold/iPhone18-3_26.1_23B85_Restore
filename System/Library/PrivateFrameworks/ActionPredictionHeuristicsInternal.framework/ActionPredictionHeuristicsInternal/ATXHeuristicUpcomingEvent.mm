@interface ATXHeuristicUpcomingEvent
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicUpcomingEvent

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
  v97 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v3 = __atxlog_handle_context_heuristic(environmentCopy);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "+[ATXHeuristicUpcomingEvent produceSuggestions]", buf, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v5 = [date dateByAddingTimeInterval:7200.0];
  v6 = [ATXCalendarEventsDataSource alloc];
  heuristicDevice = [environmentCopy heuristicDevice];
  v8 = [(ATXCalendarEventsDataSource *)v6 initWithDevice:heuristicDevice];

  v66 = v8;
  v9 = [(ATXCalendarEventsDataSource *)v8 eventsFromStartDate:date endDate:v5 reason:@"upcoming event heuristic"];
  v10 = MEMORY[0x277CCAC30];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __60__ATXHeuristicUpcomingEvent_heuristicResultWithEnvironment___block_invoke;
  v84[3] = &unk_278C3D340;
  v64 = date;
  v85 = v64;
  v67 = v5;
  v86 = v67;
  v11 = [v10 predicateWithBlock:v84];
  v65 = v9;
  v12 = [v9 filteredArrayUsingPredicate:v11];

  v63 = v12;
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_7];
  v14 = objc_opt_new();
  v68 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v80 objects:v96 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0x278C3C000uLL;
    v18 = *v81;
    v74 = *v81;
    do
    {
      v19 = 0;
      v69 = v16;
      do
      {
        if (*v81 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v80 + 1) + 8 * v19);
        v21 = [*(v17 + 856) allowSuggestionsForEvent:v20];
        v22 = v21;
        v23 = __atxlog_handle_context_heuristic(v21);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
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
            v89 = eventIdentifier;
            v90 = 2048;
            v91 = v27;
            v18 = v74;
            v92 = 2112;
            v93 = startDate;
            v94 = 1024;
            v95 = organizer != 0;
            _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "Event id: %@ title.hash: %lu start:%@ has organizer:%{BOOL}i", buf, 0x26u);
          }

          startDate2 = [v20 startDate];
          v23 = [startDate2 dateByAddingTimeInterval:-1800.0];

          startDate3 = [v20 startDate];
          if ([v23 compare:startDate3]== 1)
          {
            v32 = __atxlog_handle_context_heuristic(1);
            if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v89 = v23;
              v90 = 2112;
              v91 = startDate3;
              _os_log_fault_impl(&dword_23E3EA000, &v32->super, OS_LOG_TYPE_FAULT, "ATXHeuristicUpcomingEvent: validStartDate %@ is after validEndDate %@. Skipping event", buf, 0x16u);
            }
          }

          else
          {
            v32 = [[ATXContextEventSuggestionProducer alloc] initWithEvent:v20 validFromStartDate:v23 validToEndDate:startDate3 environment:environmentCopy];
            v33 = [(ATXContextEventSuggestionProducer *)v32 suggestionForConferenceWithScore:0x100000 predictionReasons:80.0];
            v34 = __atxlog_handle_context_heuristic(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v89 = v33;
              _os_log_impl(&dword_23E3EA000, v34, OS_LOG_TYPE_DEFAULT, "conferenceSuggestion: %@", buf, 0xCu);
            }

            if (v33)
            {
              [v14 addObject:v33];
            }

            v35 = [(ATXContextEventSuggestionProducer *)v32 suggestionForEventOrganizerWithScore:0x100000 predictionReasons:50.0];
            v36 = __atxlog_handle_context_heuristic(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v89 = v35;
              _os_log_impl(&dword_23E3EA000, v36, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            if (v35)
            {
              [v14 addObject:v35];
            }

            v71 = v35;
            v37 = [(ATXContextEventSuggestionProducer *)v32 suggestionForEventParticipantWithScore:0x100000 predictionReasons:50.0];
            v38 = __atxlog_handle_context_heuristic(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v89 = v37;
              _os_log_impl(&dword_23E3EA000, v38, OS_LOG_TYPE_DEFAULT, "Suggestion: %@", buf, 0xCu);
            }

            v72 = v33;

            if (v37)
            {
              [v14 addObject:v37];
            }

            v39 = v14;
            v40 = [ATXHeuristicNavigationUtilities locationFromEvent:v20 schemaType:2];
            v41 = [ATXHeuristicNavigationUtilities allowNavigationSuggestionForLocation:v40 maxDistance:250000];
            v42 = v41;
            v43 = __atxlog_handle_context_heuristic(v41);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v89) = v42;
              _os_log_impl(&dword_23E3EA000, v43, OS_LOG_TYPE_DEFAULT, "ATXHeuristicUpcomingEvent: For upcoming event, can we navigate to event: (%{BOOL}d)", buf, 8u);
            }

            if (v42)
            {
              heuristicDevice2 = [environmentCopy heuristicDevice];
              v45 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForEvent:v20 schemaForEvent:0 transportType:@"AUTOMOBILE" predictionReasons:0x100000 heuristicDevice:heuristicDevice2 score:v23 validStartDate:80.0 validEndDate:startDate3];

              if (v45)
              {
                [v39 addObject:v45];
                v46 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
                [v40 coordinate];
                v47 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v46 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
                [v68 addObject:v47];
              }
            }

            v14 = v39;
            if ([v39 count])
            {
              v48 = [(ATXContextEventSuggestionProducer *)v32 suggestionForDNDWithScore:0x100000 predictionReasons:30.0];
              v49 = __atxlog_handle_context_heuristic(v48);
              v18 = v74;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v89 = v48;
                _os_log_impl(&dword_23E3EA000, v49, OS_LOG_TYPE_DEFAULT, "DND Suggestion: %@", buf, 0xCu);
              }

              [v14 addObject:v48];
            }

            else
            {
              v48 = __atxlog_handle_context_heuristic(0);
              v18 = v74;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23E3EA000, v48, OS_LOG_TYPE_DEFAULT, "Skipping DND Suggestion: No other event suggestions", buf, 2u);
              }
            }

            v16 = v69;
          }

          v17 = 0x278C3C000;
        }

        else if (v24)
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "Upcoming Event: Skipping event suggestions, event is unsupported", buf, 2u);
        }

        ++v19;
      }

      while (v16 != v19);
      v16 = [obj countByEnumeratingWithState:&v80 objects:v96 count:16];
    }

    while (v16);
  }

  v73 = [[ATXInformationHeuristicRefreshTimeTrigger alloc] initWithFireDate:v67];
  [v68 addObject:?];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v50 = v14;
  v51 = [v50 countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v77;
    do
    {
      v54 = 0;
      do
      {
        if (*v77 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v76 + 1) + 8 * v54);
        v56 = __atxlog_handle_context_heuristic(v51);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          uiSpecification = [v55 uiSpecification];
          contextStartDate = [uiSpecification contextStartDate];
          uiSpecification2 = [v55 uiSpecification];
          contextEndDate = [uiSpecification2 contextEndDate];
          *buf = 138412546;
          v89 = contextStartDate;
          v90 = 2112;
          v91 = contextEndDate;
          _os_log_impl(&dword_23E3EA000, v56, OS_LOG_TYPE_DEFAULT, "Suggestion: context from %@ to %@", buf, 0x16u);
        }

        ++v54;
      }

      while (v52 != v54);
      v51 = [v50 countByEnumeratingWithState:&v76 objects:v87 count:16];
      v52 = v51;
    }

    while (v51);
  }

  v61 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v50 additionalRefreshTriggers:v68];

  return v61;
}

BOOL __60__ATXHeuristicUpcomingEvent_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAllDay])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 startDate];
    if ([v5 compare:v6] == -1)
    {
      v7 = [v3 startDate];
      v4 = [v7 compare:*(a1 + 40)] == -1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __60__ATXHeuristicUpcomingEvent_heuristicResultWithEnvironment___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

  v10 = [v4 startDate];
  v11 = [v5 startDate];
  v12 = [v10 compare:v11];

LABEL_9:
  return v12;
}

@end