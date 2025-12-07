@interface MOEventPatternDetectorFeatureTransformerAggregateEvents
- (BOOL)configure:(id)configure;
- (MOEventPatternDetectorFeatureTransformerAggregateEvents)init;
- (id)transformFeaturesFromEvents:(id)events withFeatures:(id)features;
@end

@implementation MOEventPatternDetectorFeatureTransformerAggregateEvents

- (MOEventPatternDetectorFeatureTransformerAggregateEvents)init
{
  v8.receiver = self;
  v8.super_class = MOEventPatternDetectorFeatureTransformerAggregateEvents;
  v2 = [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_aggregationWindow = 16;
    v4 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = v4;

    v6 = v3;
  }

  return v3;
}

- (id)transformFeaturesFromEvents:(id)events withFeatures:(id)features
{
  eventsCopy = events;
  featuresCopy = features;
  v36 = objc_opt_new();
  v39 = objc_opt_new();
  v38 = objc_opt_new();
  if ([eventsCopy count])
  {
    v6 = 0;
    v37 = eventsCopy;
    do
    {
      v7 = [eventsCopy objectAtIndex:{v6, v36}];
      v8 = [featuresCopy objectAtIndex:v6];
      if ([v7 count])
      {
        v41 = v6;
        v44 = objc_opt_new();
        v43 = objc_opt_new();
        firstObject = [v7 firstObject];
        startDate = [firstObject startDate];
        v11 = [startDate dateByAddingTimeInterval:-10800.0];

        firstObject2 = [v8 firstObject];
        [firstObject2 doubleValue];
        v14 = v13;

        if ([v7 count])
        {
          v15 = 0;
          do
          {
            if ([v7 count] > v15 + 1 && (currentCalendar = self->_currentCalendar, objc_msgSend(v7, "objectAtIndex:", v15 + 1), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "endDate"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "dateByAddingTimeInterval:", -10800.0), v18 = firstObject, v19 = v8, v20 = objc_claimAutoreleasedReturnValue(), v21 = -[NSCalendar isDate:equalToDate:toUnitGranularity:](currentCalendar, "isDate:equalToDate:toUnitGranularity:", v11, v20, self->_aggregationWindow), v20, v8 = v19, firstObject = v18, v17, v16, v21))
            {
              v22 = [v8 objectAtIndex:v15 + 1];
              [v22 doubleValue];
              v24 = v23;

              aggregationType = self->_aggregationType;
              if (aggregationType == 1)
              {
                if (v24 > v14)
                {
                  v33 = [v7 objectAtIndex:v15 + 1];

                  firstObject = v33;
                  v14 = v24;
                }
              }

              else if (!aggregationType)
              {
                v14 = v14 + v24;
              }
            }

            else
            {
              v26 = [NSNumber numberWithDouble:v14];
              [v44 addObject:v26];

              [v43 addObject:firstObject];
              if ([v7 count] > v15 + 1)
              {
                v27 = [v7 objectAtIndex:v15 + 1];
                startDate2 = [v27 startDate];
                v29 = [startDate2 dateByAddingTimeInterval:-10800.0];

                v30 = [v7 objectAtIndex:v15 + 1];

                v31 = [v8 objectAtIndex:v15 + 1];
                [v31 doubleValue];
                v14 = v32;

                firstObject = v30;
                v11 = v29;
              }
            }

            ++v15;
          }

          while ([v7 count] > v15);
        }

        [v38 addObject:v44];
        [v39 addObject:v43];

        eventsCopy = v37;
        v6 = v41;
      }

      ++v6;
    }

    while ([eventsCopy count] > v6);
  }

  v34 = v36;
  [v36 addObject:{v39, v36}];
  [v34 addObject:v38];

  return v34;
}

- (BOOL)configure:(id)configure
{
  configureCopy = configure;
  v6 = [configureCopy count];
  if (v6)
  {
    v7 = [configureCopy objectForKey:@"AggregationWindow"];

    if (v7)
    {
      v8 = [configureCopy objectForKey:@"AggregationWindow"];
      self->_aggregationWindow = v8;
    }

    else
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)@"AggregationWindow" configure:v9];
      }
    }

    v10 = [configureCopy objectForKey:@"AggregationType"];

    if (!v10)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)@"AggregationType" configure:v13];
      }

      goto LABEL_14;
    }

    v11 = [configureCopy objectForKey:@"AggregationType"];
    self->_aggregationType = [v11 unsignedIntValue];

    if (self->_aggregationType >= 2)
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(MOEventPatternDetectorFeatureTransformerAggregateEvents *)&self->_aggregationType configure:v12];
      }

      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"MOEventPatternDetectorFeatureTransformerAggregateEvents.m" lineNumber:108 description:@"Unknown Aggregation Type : %lu (in %s:%d)", self->_aggregationType, "[MOEventPatternDetectorFeatureTransformerAggregateEvents configure:]", 108];
LABEL_14:
    }
  }

  return v6 != 0;
}

- (void)configure:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Configuration property not set for AggregateEvents: %@", &v2, 0xCu);
}

- (void)configure:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134218498;
  v4 = v2;
  v5 = 2080;
  v6 = "[MOEventPatternDetectorFeatureTransformerAggregateEvents configure:]";
  v7 = 1024;
  v8 = 108;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown Aggregation Type : %lu (in %s:%d)", &v3, 0x1Cu);
}

@end