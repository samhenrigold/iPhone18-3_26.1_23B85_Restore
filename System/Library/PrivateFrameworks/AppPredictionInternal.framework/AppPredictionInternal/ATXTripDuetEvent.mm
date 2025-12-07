@interface ATXTripDuetEvent
- (ATXTripDuetEvent)initWithCurrentContextStoreValues;
- (ATXTripDuetEvent)initWithCurrentContextStoreValuesWithOriginLOI:(id)i ignoreBeforeDate:(id)date;
- (ATXTripDuetEvent)initWithOrigin:(int)origin destination:(int)destination durationAtOrigin:(double)atOrigin startDate:(id)date endDate:(id)endDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXTripDuetEvent:(id)event;
- (id)convertToUpcomingCommuteEventWithWindowDuration:(double)duration;
- (id)description;
- (id)identifier;
- (int)rtLocationToBMSemanticLocation:(int64_t)location;
@end

@implementation ATXTripDuetEvent

- (ATXTripDuetEvent)initWithOrigin:(int)origin destination:(int)destination durationAtOrigin:(double)atOrigin startDate:(id)date endDate:(id)endDate
{
  v11.receiver = self;
  v11.super_class = ATXTripDuetEvent;
  result = [(ATXDuetEvent *)&v11 initWithStartDate:date endDate:endDate];
  if (result)
  {
    result->_origin = origin;
    result->_destination = destination;
    result->_durationAtOrigin = atOrigin;
  }

  return result;
}

- (ATXTripDuetEvent)initWithCurrentContextStoreValues
{
  v3 = [MEMORY[0x277CBEAA8] now];
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  locationOfInterestAtCurrentLocation = [mEMORY[0x277D41BF8] locationOfInterestAtCurrentLocation];

  v6 = [(ATXTripDuetEvent *)self initWithCurrentContextStoreValuesWithOriginLOI:locationOfInterestAtCurrentLocation ignoreBeforeDate:v3];
  return v6;
}

- (ATXTripDuetEvent)initWithCurrentContextStoreValuesWithOriginLOI:(id)i ignoreBeforeDate:(id)date
{
  v49 = *MEMORY[0x277D85DE8];
  iCopy = i;
  dateCopy = date;
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForPredictedLocationOfInterestTransitions = [MEMORY[0x277CFE338] keyPathForPredictedLocationOfInterestTransitions];
  v10 = [userContext objectForKeyedSubscript:keyPathForPredictedLocationOfInterestTransitions];

  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = v10;
      if ([v13 count])
      {
        v14 = [v13 objectAtIndexedSubscript:0];
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (v15)
        {
          v42 = v13;
          v17 = [v13 objectAtIndexedSubscript:0];
          locationOfInterestTypeKey = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
          v19 = [v17 objectForKeyedSubscript:locationOfInterestTypeKey];
          integerValue = [v19 integerValue];

          v44 = [(ATXTripDuetEvent *)self rtLocationToBMSemanticLocation:integerValue];
          transitionWithinTimeIntervalKey = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
          v43 = v17;
          v22 = [v17 objectForKeyedSubscript:transitionWithinTimeIntervalKey];
          [v22 doubleValue];
          v24 = v23;

          keyPathForPredictedLocationOfInterestTransitions2 = [MEMORY[0x277CFE338] keyPathForPredictedLocationOfInterestTransitions];
          v26 = [userContext lastModifiedDateForContextualKeyPath:keyPathForPredictedLocationOfInterestTransitions2];

          v27 = [v26 dateByAddingTimeInterval:v24];
          v28 = v27;
          if (dateCopy && ([dateCopy laterDate:v27], v29 = objc_claimAutoreleasedReturnValue(), v29, v29 == dateCopy))
          {
            v40 = __atxlog_handle_default(v27);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = v28;
              _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "Ignoring current predicted transition because expected commute date is in the past: %@", buf, 0xCu);
            }

            selfCopy = 0;
            v13 = v42;
          }

          else
          {
            if (iCopy)
            {
              v27 = -[ATXTripDuetEvent rtLocationToBMSemanticLocation:](self, "rtLocationToBMSemanticLocation:", [iCopy type]);
              v30 = v27;
            }

            else
            {
              v30 = 0;
            }

            v13 = v42;
            v39 = __atxlog_handle_default(v27);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v46 = v44;
              v47 = 2112;
              v48 = v28;
              _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "Current expected commute to %lu at %@", buf, 0x16u);
            }

            self = [(ATXTripDuetEvent *)self initWithOrigin:v30 destination:v44 durationAtOrigin:v28 startDate:v28 endDate:0.0];
            selfCopy = self;
          }

          goto LABEL_31;
        }

        v38 = __atxlog_handle_default(v16);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
        }

        v35 = MEMORY[0x277CBEAD8];
        v36 = *MEMORY[0x277CBE658];
        v37 = @"ContextStore's 'keyPathForPredictedLocationOfInterestTransitions' contained no elements.";
      }

      else
      {
        v34 = __atxlog_handle_default(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
        }

        v35 = MEMORY[0x277CBEAD8];
        v36 = *MEMORY[0x277CBE658];
        v37 = @"ContextStore's 'keyPathForPredictedLocationOfInterestTransitions' is an empty NSArray.";
      }

      [v35 raise:v36 format:v37];
      selfCopy = 0;
LABEL_31:

      goto LABEL_32;
    }

    v32 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"ContextStore's 'keyPathForPredictedLocationOfInterestTransitions' is not an NSArray."];
  }

  else
  {
    v31 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ATXTripDuetEvent initWithCurrentContextStoreValuesWithOriginLOI:ignoreBeforeDate:];
    }
  }

  selfCopy = 0;
LABEL_32:

  return selfCopy;
}

- (int)rtLocationToBMSemanticLocation:(int64_t)location
{
  if (location < 4)
  {
    return location + 1;
  }

  else
  {
    return 0;
  }
}

- (id)convertToUpcomingCommuteEventWithWindowDuration:(double)duration
{
  durationAtOrigin = self->_durationAtOrigin;
  if (durationAtOrigin <= duration)
  {
    durationCopy = self->_durationAtOrigin;
  }

  else
  {
    durationCopy = duration;
  }

  if (durationAtOrigin <= 0.0)
  {
    durationCopy2 = duration;
  }

  else
  {
    durationCopy2 = durationCopy;
  }

  startDate = [(ATXDuetEvent *)self startDate];
  v8 = [startDate dateByAddingTimeInterval:-durationCopy2];

  v9 = [ATXTripDuetEvent alloc];
  origin = [(ATXTripDuetEvent *)self origin];
  destination = [(ATXTripDuetEvent *)self destination];
  [(ATXTripDuetEvent *)self durationAtOrigin];
  v13 = v12;
  startDate2 = [(ATXDuetEvent *)self startDate];
  v15 = [(ATXTripDuetEvent *)v9 initWithOrigin:origin destination:destination durationAtOrigin:v8 startDate:startDate2 endDate:v13];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTripDuetEvent *)self isEqualToATXTripDuetEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTripDuetEvent:(id)event
{
  eventCopy = event;
  origin = [(ATXTripDuetEvent *)self origin];
  if (origin == [eventCopy origin] && (v6 = -[ATXTripDuetEvent destination](self, "destination"), v6 == objc_msgSend(eventCopy, "destination")))
  {
    startDate = [(ATXDuetEvent *)self startDate];
    startDate2 = [eventCopy startDate];
    if ([startDate isEqualToDate:startDate2])
    {
      endDate = [(ATXDuetEvent *)self endDate];
      endDate2 = [eventCopy endDate];
      if ([endDate isEqualToDate:endDate2])
      {
        [(ATXTripDuetEvent *)self durationAtOrigin];
        v12 = v11;
        [eventCopy durationAtOrigin];
        v14 = v12 == v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  origin = [(ATXTripDuetEvent *)self origin];
  destination = [(ATXTripDuetEvent *)self destination];
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  [(ATXTripDuetEvent *)self durationAtOrigin];
  v9 = [v3 initWithFormat:@"ATXTripDuetEvent origin: %lu, dest: %lu, startDate: %@, endDate: %@, durationAtOrigin: %f", origin, destination, startDate, endDate, v8];

  return v9;
}

- (id)identifier
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu to %lu", -[ATXTripDuetEvent origin](self, "origin"), -[ATXTripDuetEvent destination](self, "destination")];

  return v2;
}

@end