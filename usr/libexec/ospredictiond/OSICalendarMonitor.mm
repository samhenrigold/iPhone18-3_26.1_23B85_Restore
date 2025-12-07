@interface OSICalendarMonitor
- (OSICalendarMonitor)init;
- (id)nextFlightEventWithEventIDs:(id)ds;
- (id)relevantEventDeadline;
- (id)upcomingEventIDs;
@end

@implementation OSICalendarMonitor

- (id)relevantEventDeadline
{
  upcomingEventIDs = [(OSICalendarMonitor *)self upcomingEventIDs];
  v4 = [(OSICalendarMonitor *)self nextFlightEventWithEventIDs:upcomingEventIDs];
  if (v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Upcoming or recent flight; forcing immediate charge", v9, 2u);
    }

    startDate = [v4 startDate];
  }

  else
  {
    startDate = +[NSDate distantFuture];
  }

  v7 = startDate;

  return v7;
}

- (id)upcomingEventIDs
{
  v3 = +[NSDate date];
  v4 = [v3 dateByAddingTimeInterval:-86400.0];
  v5 = [v3 dateByAddingTimeInterval:86400.0];
  v6 = [(EKEventStore *)self->_calendar predicateForEventsWithStartDate:v4 endDate:v5 calendars:0 loadDefaultProperties:1];
  calendar = [(OSICalendarMonitor *)self calendar];
  v8 = [calendar eventObjectIDsMatchingPredicate:v6];

  return v8;
}

- (OSICalendarMonitor)init
{
  v3 = [[EKEventStore alloc] initWithEKOptions:128];
  calendar = self->_calendar;
  self->_calendar = v3;

  v5 = os_log_create("com.apple.osintelligence", "calendarmonitor");
  log = self->_log;
  self->_log = v5;

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"relevantEventDeadline" name:EKEventStoreChangedNotification object:0];

  return self;
}

- (id)nextFlightEventWithEventIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSDate distantFuture];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    log = 0;
    v10 = *v32;
    *&v8 = 138412546;
    v25 = v8;
    v28 = v6;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(EKEventStore *)self->_calendar publicObjectWithObjectID:*(*(&v31 + 1) + 8 * i), v25];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if (([v13 isAllDay] & 1) == 0)
          {
            suggestionInfo = [v13 suggestionInfo];

            if (suggestionInfo)
            {
              v15 = [SGEventMetadata eventMetadataFromEKEvent:v13];
              categoryDescription = [v15 categoryDescription];
              v17 = [categoryDescription localizedCaseInsensitiveContainsString:@"flight"];

              if (v17 && ([v13 startDate], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", v5), v20 = v19, v18, v20 < 0.0))
              {
                v21 = v13;

                startDate = [v21 startDate];

                v23 = self->_log;
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  loga = v23;
                  startDate2 = [v21 startDate];
                  endDate = [v21 endDate];
                  *buf = v25;
                  v36 = startDate2;
                  v37 = 2112;
                  v38 = endDate;
                  _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "Found flight from %@-%@", buf, 0x16u);
                }
              }

              else
              {
                startDate = v5;
                v21 = log;
              }

              v5 = startDate;
              log = v21;
              v6 = v28;
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  else
  {
    log = 0;
  }

  return log;
}

@end