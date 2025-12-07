@interface PPTripAggregator
+ (id)_eventsFromCategory:(unsigned __int8)category inPool:(id)pool;
+ (id)_tripCandidatesFromCategory:(unsigned __int8)category andEvents:(id)events;
+ (id)keyForCategory:(unsigned __int8)category;
+ (id)mergeTripCandidates:(id)candidates;
+ (id)mergeTripCandidates:(id)candidates supportsGroundTransportEvents:(BOOL)events;
+ (id)tripCandidatesWithEvents:(id)events;
+ (id)tripCandidatesWithEvents:(id)events supportsGroundTransportEvents:(BOOL)transportEvents;
+ (id)tripEventsFromCandidates:(id)candidates;
+ (id)tripEventsWithEvents:(id)events from:(id)from to:(id)to;
@end

@implementation PPTripAggregator

+ (id)_tripCandidatesFromCategory:(unsigned __int8)category andEvents:(id)events
{
  categoryCopy = category;
  v22 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = [self _eventsFromCategory:categoryCopy inPool:eventsCopy];
  if ([v7 count])
  {
    if (categoryCopy - 1) < 0xA && ((0x27Fu >> (categoryCopy - 1)))
    {
      v8 = [objc_alloc(*off_278974B98[(categoryCopy - 1)]) initWithEventsPool:v7];
      tripCandidatesFromEventsPool = [v8 tripCandidatesFromEventsPool];

      v10 = pp_events_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [tripCandidatesFromEventsPool count];
        v12 = [eventsCopy count];
        v13 = [MEMORY[0x277D3A390] descriptionForSuggestedEventCategory:categoryCopy];
        v16 = 134218498;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "[TripAggregator] Found %lu trip candidates out of %lu %@ events", &v16, 0x20u);
      }
    }

    else
    {
      v10 = pp_events_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x277D3A390] descriptionForSuggestedEventCategory:categoryCopy];
        v16 = 138412290;
        v17 = v15;
        _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "[TripAggregator] Unsupported event category %@ while retrieving trip candidates", &v16, 0xCu);
      }

      tripCandidatesFromEventsPool = 0;
    }
  }

  else
  {
    tripCandidatesFromEventsPool = 0;
  }

  return tripCandidatesFromEventsPool;
}

+ (id)keyForCategory:(unsigned __int8)category
{
  v3 = [MEMORY[0x277D3A390] descriptionForSuggestedEventCategory:category];
  letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
  invertedSet = [letterCharacterSet invertedSet];
  v6 = [v3 componentsSeparatedByCharactersInSet:invertedSet];
  v7 = [v6 _pas_componentsJoinedByString:&stru_284759D38];
  lowercaseString = [v7 lowercaseString];

  if ([lowercaseString length])
  {
    v9 = lowercaseString;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_eventsFromCategory:(unsigned __int8)category inPool:(id)pool
{
  categoryCopy = category;
  poolCopy = pool;
  v7 = [self keyForCategory:categoryCopy];
  if (v7 && ([poolCopy objectForKeyedSubscript:v7], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v10 = [poolCopy objectForKeyedSubscript:v7];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

+ (id)mergeTripCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v4 = [objc_opt_class() mergeTripCandidates:candidatesCopy supportsGroundTransportEvents:0];

  return v4;
}

+ (id)mergeTripCandidates:(id)candidates supportsGroundTransportEvents:(BOOL)events
{
  eventsCopy = events;
  selfCopy = self;
  candidatesCopy = candidates;
  if ([candidatesCopy count])
  {
    v6 = 0;
    while (1)
    {
      v23 = v6 + 1;
      if (v6 + 1 < [candidatesCopy count])
      {
        break;
      }

LABEL_8:
      ++v6;
      if (v23 >= [candidatesCopy count])
      {
        goto LABEL_9;
      }
    }

    v7 = v6 + 1;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [candidatesCopy objectAtIndexedSubscript:v6];
      v10 = [candidatesCopy objectAtIndexedSubscript:v7];
      if ([v9 canBeMergedWithTripCandidate:v10 supportsGroundTransportEvents:eventsCopy])
      {
        break;
      }

      v11 = [candidatesCopy objectAtIndexedSubscript:v7];
      v12 = [candidatesCopy objectAtIndexedSubscript:v6];
      v13 = [v11 canBeMergedWithTripCandidate:v12 supportsGroundTransportEvents:eventsCopy];

      if (v13)
      {
        goto LABEL_11;
      }

      objc_autoreleasePoolPop(v8);
      if (++v7 >= [candidatesCopy count])
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v15 = [MEMORY[0x277CBEB18] arrayWithArray:candidatesCopy];
    v16 = [MEMORY[0x277CCAB58] indexSetWithIndex:v6];
    [v16 addIndex:v7];
    [v15 removeObjectsAtIndexes:v16];
    v17 = [PPTripCandidate alloc];
    v18 = [candidatesCopy objectAtIndexedSubscript:v6];
    v19 = [candidatesCopy objectAtIndexedSubscript:v7];
    v20 = [(PPTripCandidate *)v17 initWithTripCandidateA:v18 andTripCandidateB:v19];

    [v15 insertObject:v20 atIndex:0];
    v14 = [selfCopy mergeTripCandidates:v15 supportsGroundTransportEvents:eventsCopy];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
LABEL_9:
    v14 = candidatesCopy;
  }

  return v14;
}

+ (id)tripEventsFromCandidates:(id)candidates
{
  v18 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = candidatesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 shouldPromoteToTripEvent])
        {
          tripEventFromCandidate = [v10 tripEventFromCandidate];
          [v4 addObject:tripEventFromCandidate];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)tripCandidatesWithEvents:(id)events supportsGroundTransportEvents:(BOOL)transportEvents
{
  transportEventsCopy = transportEvents;
  v22 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v7 = objc_opt_new();
  v8 = [self _tripCandidatesFromCategory:1 andEvents:eventsCopy];
  [v7 addObjectsFromArray:v8];
  v9 = [self _tripCandidatesFromCategory:10 andEvents:eventsCopy];

  [v7 addObjectsFromArray:v9];
  v10 = [self _tripCandidatesFromCategory:2 andEvents:eventsCopy];

  [v7 addObjectsFromArray:v10];
  if (transportEventsCopy)
  {
    v11 = [self _tripCandidatesFromCategory:4 andEvents:eventsCopy];

    [v7 addObjectsFromArray:v11];
    v12 = [self _tripCandidatesFromCategory:5 andEvents:eventsCopy];

    [v7 addObjectsFromArray:v12];
    v13 = [self _tripCandidatesFromCategory:3 andEvents:eventsCopy];

    [v7 addObjectsFromArray:v13];
    v14 = [self _tripCandidatesFromCategory:6 andEvents:eventsCopy];

    [v7 addObjectsFromArray:v14];
    v10 = [self _tripCandidatesFromCategory:7 andEvents:eventsCopy];

    [v7 addObjectsFromArray:v10];
  }

  v15 = pp_events_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134217984;
    v21 = [v7 count];
    _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "[TripAggregator] Attempting to merge %lu trip candidates", &v20, 0xCu);
  }

  v16 = [self mergeTripCandidates:v7 supportsGroundTransportEvents:transportEventsCopy];
  v17 = pp_events_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v7 count];
    v20 = 134217984;
    v21 = v19;
    _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "[TripAggregator] Post merge: %lu trip candidates", &v20, 0xCu);
  }

  return v16;
}

+ (id)tripCandidatesWithEvents:(id)events
{
  eventsCopy = events;
  v4 = [objc_opt_class() tripCandidatesWithEvents:eventsCopy supportsGroundTransportEvents:0];

  return v4;
}

+ (id)tripEventsWithEvents:(id)events from:(id)from to:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v24 = [self tripCandidatesWithEvents:events];
  v10 = [self tripEventsFromCandidates:?];
  v11 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        startDate = [v17 startDate];
        [startDate timeIntervalSinceDate:toCopy];
        if (v19 <= 0.0)
        {
          endDate = [v17 endDate];
          [fromCopy timeIntervalSinceDate:endDate];
          v22 = v21;

          if (v22 <= 0.0)
          {
            [v11 addObject:v17];
          }
        }

        else
        {
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  return v11;
}

@end