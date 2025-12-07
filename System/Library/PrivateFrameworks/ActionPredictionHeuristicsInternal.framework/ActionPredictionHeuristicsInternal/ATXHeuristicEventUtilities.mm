@interface ATXHeuristicEventUtilities
+ (BOOL)allowSuggestionsForEvent:(id)event;
+ (BOOL)isEventAtOneWithDate:(id)date;
+ (BOOL)isEventAtOneWithTimestamp:(id)timestamp;
@end

@implementation ATXHeuristicEventUtilities

+ (BOOL)allowSuggestionsForEvent:(id)event
{
  v29 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  title = [eventCopy title];
  v6 = [title hash];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  eventIdentifier = [eventCopy eventIdentifier];
  v10 = [v4 initWithFormat:@"title.hash: %lu, start: %@, end: %@, id: %@", v6, startDate, endDate, eventIdentifier];

  calendar = [eventCopy calendar];
  isSubscribed = [calendar isSubscribed];
  if (isSubscribed)
  {
    v13 = __atxlog_handle_context_heuristic(isSubscribed);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      v14 = "Skipping Event: from a calendar subscription [%@]";
LABEL_22:
      _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if ([eventCopy status] == 3)
  {
    v13 = __atxlog_handle_context_heuristic(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      v14 = "Skipping Event: is cancelled [%@]";
      goto LABEL_22;
    }

LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  if ([eventCopy participationStatus] != 2)
  {
    participationStatus = [eventCopy participationStatus];
    if (participationStatus != 4)
    {
      v13 = __atxlog_handle_context_heuristic(participationStatus);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        v14 = "Skipping Event: is not accepted [%@]";
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  endDate2 = [eventCopy endDate];
  startDate2 = [eventCopy startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v19 = v18;

  if (v19 > 54000.0)
  {
    v13 = __atxlog_handle_context_heuristic(v20);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      v14 = "Skipping Event: is more than 15 hour long [%@]";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v13 = [eventCopy customObjectForKey:@"SGEventMetadataKey"];
  v21 = [v13 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
  v22 = v21;
  v23 = 1;
  if (v13)
  {
    if (v21)
    {
      v24 = [v21 isEqualToString:@"Lodging"];
      if ((v24 & 1) != 0 || (v24 = [v22 isEqualToString:@"Flight"], v24))
      {
        v25 = __atxlog_handle_context_heuristic(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v10;
          _os_log_impl(&dword_23E3EA000, v25, OS_LOG_TYPE_DEFAULT, "Skipping Event: is hotel or flight [%@]", buf, 0xCu);
        }

        v23 = 0;
      }
    }
  }

LABEL_24:
  return v23;
}

+ (BOOL)isEventAtOneWithTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEAA8];
  [timestamp doubleValue];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  LOBYTE(self) = [self isEventAtOneWithDate:v5];

  return self;
}

+ (BOOL)isEventAtOneWithDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:32 fromDate:dateCopy];

  hour = [v6 hour];
  atx_usesTwelveHourClock = [MEMORY[0x277CBEAF8] atx_usesTwelveHourClock];
  v10 = hour == 13 || hour == 1;
  if (atx_usesTwelveHourClock)
  {
    v11 = v10;
  }

  else
  {
    v11 = hour == 1;
  }

  return v11;
}

@end