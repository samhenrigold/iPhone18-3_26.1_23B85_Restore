@interface PPEventMetricsLogger
+ (id)defaultLogger;
+ (unint64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate;
- (BOOL)_incrementInteractionForEventIdentifier:(id)identifier interface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (BOOL)_removeInteractionsSummaryLogsFromLogsAndResetStoreAge:(id)age;
- (BOOL)resetLogs;
- (BOOL)storeToDisk;
- (PPEventMetricsLogger)init;
- (PPEventMetricsLogger)initWithCoder:(id)coder;
- (PPEventMetricsLogger)initWithFileName:(id)name;
- (double)_storeAge;
- (id)_createRTCReporting;
- (id)_descriptionForActionType:(unsigned __int16)type;
- (id)_descriptionForInterface:(unsigned __int16)interface;
- (id)_descriptionForPPRTCCategory:(unsigned __int16)category;
- (id)_interactionAttributesForEventHighlight:(id)highlight;
- (id)_interactionKeyForInterface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (id)allowedLogFromLog:(id)log;
- (id)eventsAndExtraordinaryEventsDictFromDate:(id)date;
- (id)loggedInteractionsSummaryMetrics;
- (id)logsToSend;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)logEventInteractionForEventHighlight:(id)highlight interface:(unsigned __int16)interface actionType:(unsigned __int16)type;
- (void)logNewInteractionSummaryWithDictionary:(id)dictionary;
- (void)sendRTCLogsWithCompletion:(id)completion;
- (void)updateAndScheduleDiskWrite;
@end

@implementation PPEventMetricsLogger

- (void)dealloc
{
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger going away now", buf, 2u);
  }

  pthread_mutex_destroy(&self->_lock);
  dispatch_source_cancel(self->_persistenceTimerSource);
  v4.receiver = self;
  v4.super_class = PPEventMetricsLogger;
  [(PPEventMetricsLogger *)&v4 dealloc];
}

- (id)loggedInteractionsSummaryMetrics
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_loggedInteractionsSummary copy];
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (id)_descriptionForPPRTCCategory:(unsigned __int16)category
{
  if ((category + 1) > 0xAu)
  {
    return @"unknown";
  }

  else
  {
    return off_278972870[(category + 1)];
  }
}

- (id)_descriptionForActionType:(unsigned __int16)type
{
  if (type > 4u)
  {
    return @"unknown";
  }

  else
  {
    return off_278972848[type];
  }
}

- (id)_descriptionForInterface:(unsigned __int16)interface
{
  if (interface > 0xAu)
  {
    return @"unknown";
  }

  else
  {
    return off_2789727F0[interface];
  }
}

- (id)_interactionKeyForInterface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  typeCopy = type;
  interfaceCopy = interface;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [(PPEventMetricsLogger *)self _descriptionForInterface:interfaceCopy];
  v9 = [(PPEventMetricsLogger *)self _descriptionForActionType:typeCopy];
  v10 = [v7 initWithFormat:@"%@_%@", v8, v9];

  return v10;
}

- (id)_interactionAttributesForEventHighlight:(id)highlight
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  highlightCopy = highlight;
  v5 = [v3 alloc];
  features = [highlightCopy features];

  v7 = [features _pas_componentsJoinedByString:{@", "}];
  v8 = [v5 initWithFormat:@"[%@]", v7, @"rankingFeatures"];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v9;
}

- (BOOL)_incrementInteractionForEventIdentifier:(id)identifier interface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  typeCopy = type;
  interfaceCopy = interface;
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = [(PPEventMetricsLogger *)self _interactionKeyForInterface:interfaceCopy actionType:typeCopy];
  v10 = pp_events_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412546;
    v25 = v9;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: log and increment interaction key: %@, for eventIdentifier: %@", &v24, 0x16u);
  }

  pthread_mutex_lock(&self->_lock);
  if ([(NSMutableArray *)self->_loggedInteractionsSummary count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v11];
      v13 = [v12 objectForKeyedSubscript:@"eventIdentifier"];
      v14 = [v13 isEqualToString:identifierCopy];

      loggedInteractionsSummary = self->_loggedInteractionsSummary;
      if (v14)
      {
        break;
      }

      if (++v11 >= [(NSMutableArray *)loggedInteractionsSummary count])
      {
        goto LABEL_7;
      }
    }

    v18 = MEMORY[0x277CCABB0];
    v19 = [(NSMutableArray *)loggedInteractionsSummary objectAtIndexedSubscript:v11];
    v20 = [v19 objectForKeyedSubscript:v9];
    v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue") + 1}];
    v22 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v11];
    [v22 setObject:v21 forKeyedSubscript:v9];

    pthread_mutex_unlock(&self->_lock);
    [(PPEventMetricsLogger *)self updateAndScheduleDiskWrite];
    v17 = 1;
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock(&self->_lock);
    v16 = pp_events_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: can't find eventIdentifier in loggedInteractionsSummary dictionary", &v24, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)logEventInteractionForEventHighlight:(id)highlight interface:(unsigned __int16)interface actionType:(unsigned __int16)type
{
  typeCopy = type;
  interfaceCopy = interface;
  highlightCopy = highlight;
  eventIdentifier = [highlightCopy eventIdentifier];
  if ([(PPEventMetricsLogger *)self _incrementInteractionForEventIdentifier:eventIdentifier interface:interfaceCopy actionType:typeCopy])
  {

LABEL_8:
    v26 = pp_events_log_handle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: No endDate for event", v27, 2u);
    }

    goto LABEL_11;
  }

  endDate = [highlightCopy endDate];

  if (!endDate)
  {
    goto LABEL_8;
  }

  endDate2 = [highlightCopy endDate];
  endDate3 = [highlightCopy endDate];
  if (endDate3)
  {
    v13 = endDate3;
    v14 = objc_opt_new();
    v15 = [PPEventMetricsLogger numberOfDaysBetweenDate:v14 andDate:endDate2];

    if (v15 >= 366)
    {
      v16 = objc_opt_new();
      [v16 setYear:1];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v18 = objc_opt_new();
      v19 = [currentCalendar dateByAddingComponents:v16 toDate:v18 options:0];

      endDate2 = v19;
    }
  }

  v20 = [(PPEventMetricsLogger *)self _interactionAttributesForEventHighlight:highlightCopy];
  v21 = [v20 mutableCopy];

  v22 = [(PPEventMetricsLogger *)self _descriptionForPPRTCCategory:8];
  [v21 setObject:v22 forKeyedSubscript:@"categoryLog"];

  [v21 setObject:endDate2 forKeyedSubscript:@"expirationDate"];
  v23 = objc_opt_new();
  [v21 setObject:v23 forKeyedSubscript:@"creationDate"];

  eventIdentifier2 = [highlightCopy eventIdentifier];
  [v21 setObject:eventIdentifier2 forKeyedSubscript:@"eventIdentifier"];

  v25 = [(PPEventMetricsLogger *)self _interactionKeyForInterface:interfaceCopy actionType:typeCopy];
  [v21 setObject:&unk_284783C00 forKeyedSubscript:v25];

  [(PPEventMetricsLogger *)self logNewInteractionSummaryWithDictionary:v21];
LABEL_11:
}

- (id)allowedLogFromLog:(id)log
{
  logCopy = log;
  [logCopy removeObjectForKey:@"eventIdentifier"];
  [logCopy removeObjectForKey:@"expirationDate"];

  return logCopy;
}

- (id)logsToSend
{
  pthread_mutex_lock(&self->_lock);
  v13 = objc_opt_new();
  if ([(NSMutableArray *)self->_loggedInteractionsSummary count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v3];
      v5 = [v4 objectForKeyedSubscript:@"categoryLog"];
      v6 = [(PPEventMetricsLogger *)self _descriptionForPPRTCCategory:8];
      if (([v5 isEqualToString:v6] & 1) == 0)
      {
        break;
      }

      v7 = objc_opt_new();
      v8 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v3];
      v9 = [v8 objectForKeyedSubscript:@"expirationDate"];
      v10 = [v7 compare:v9];

      if (v10 == 1)
      {
        v11 = objc_alloc(MEMORY[0x277CBEB38]);
        v4 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v3];
        v5 = [v11 initWithDictionary:v4 copyItems:1];
        [v13 addObject:v5];
LABEL_7:
      }

      if (++v3 >= [(NSMutableArray *)self->_loggedInteractionsSummary count])
      {
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  pthread_mutex_unlock(&self->_lock);

  return v13;
}

- (BOOL)_removeInteractionsSummaryLogsFromLogsAndResetStoreAge:(id)age
{
  v18 = *MEMORY[0x277D85DE8];
  ageCopy = age;
  pthread_mutex_lock(&self->_lock);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_storeCreationDate = v5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = ageCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableArray *)self->_loggedInteractionsSummary removeObject:*(*(&v13 + 1) + 8 * v10++), v13];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  pthread_mutex_unlock(&self->_lock);
  storeToDisk = [(PPEventMetricsLogger *)self storeToDisk];

  return storeToDisk;
}

- (double)_storeAge
{
  pthread_mutex_lock(&self->_lock);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3 - self->_storeCreationDate;
  pthread_mutex_unlock(&self->_lock);
  return v4;
}

- (BOOL)resetLogs
{
  pthread_mutex_lock(&self->_lock);
  v3 = objc_opt_new();
  loggedInteractionsSummary = self->_loggedInteractionsSummary;
  self->_loggedInteractionsSummary = v3;

  pthread_mutex_unlock(&self->_lock);

  return [(PPEventMetricsLogger *)self storeToDisk];
}

- (id)eventsAndExtraordinaryEventsDictFromDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_opt_new();
    [v5 setDay:-7];
    v6 = [currentCalendar dateByAddingComponents:v5 toDate:dateCopy options:0];
    if (v6)
    {
      v7 = +[PPLocalEventStore defaultStore];
      v8 = [v7 eventHighlightsFrom:v6 to:dateCopy options:1];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        LODWORD(v12) = 0;
        v13 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 = v12 + [*(*(&v19 + 1) + 8 * i) isExtraordinary];
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v23[0] = @"eventHighlightsCount";
      v16 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v23[1] = @"ekEventsCount";
      v24[0] = v16;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v9, "count")}];
      v24[1] = v17;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }

    else
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v27 = currentCalendar;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = dateCopy;
        _os_log_fault_impl(&dword_23224A000, v9, OS_LOG_TYPE_FAULT, "eventsAndExtraordinaryEventsDictFromDate failed to get startDate from c:%@ add:%@ d:%@", buf, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)logNewInteractionSummaryWithDictionary:(id)dictionary
{
  v8 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = dictionaryCopy;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: log new interaction summary: %@", &v6, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  [(NSMutableArray *)self->_loggedInteractionsSummary addObject:dictionaryCopy];
  pthread_mutex_unlock(&self->_lock);
  [(PPEventMetricsLogger *)self updateAndScheduleDiskWrite];
}

- (void)updateAndScheduleDiskWrite
{
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: updating and scheduling disk write", buf, 2u);
  }

  v4 = pp_events_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: updating and scheduling disk write for real", v7, 2u);
  }

  persistenceTimerSource = self->_persistenceTimerSource;
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(persistenceTimerSource, v6, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pthread_mutex_lock(&self->_lock);
  [coderCopy encodeObject:self->_path forKey:@"path"];
  [coderCopy encodeObject:self->_loggedInteractionsSummary forKey:@"loggedInteractionsSummary"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_storeCreationDate];
  [coderCopy encodeObject:v5 forKey:@"storeCreationDate"];

  pthread_mutex_unlock(&self->_lock);
}

- (PPEventMetricsLogger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PPEventMetricsLogger *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v8 initWithObjects:{v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"loggedInteractionsSummary"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = objc_opt_new();
    }

    loggedInteractionsSummary = v5->_loggedInteractionsSummary;
    v5->_loggedInteractionsSummary = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeCreationDate"];
    [v21 doubleValue];
    v5->_storeCreationDate = v22;

    if (v5->_storeCreationDate == 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v5->_storeCreationDate = v23;
    }
  }

  return v5;
}

- (void)sendRTCLogsWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPEventMetricsLogger: Sending privacy-aware suggestions log over the network", buf, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  logsToSend = [(PPEventMetricsLogger *)self logsToSend];
  pthread_mutex_unlock(&self->_lock);
  v7 = [logsToSend count] == 0;
  v8 = pp_events_log_handle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPEventMetricsLogger: No RTC logs to send this time. Skipping.", buf, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = [logsToSend count];
      *buf = 134218242;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = logsToSend;
      _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: Selected logs (%lu): %@", buf, 0x16u);
    }

    _createRTCReporting = [(PPEventMetricsLogger *)self _createRTCReporting];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = 0;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PPEventMetricsLogger_sendRTCLogsWithCompletion___block_invoke;
    v13[3] = &unk_2789727D0;
    v17 = completionCopy;
    v14 = logsToSend;
    selfCopy = self;
    v11 = _createRTCReporting;
    v16 = v11;
    v18 = buf;
    v19 = v20;
    [v11 startConfigurationWithCompletionHandler:v13];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(buf, 8);
  }
}

uint64_t __50__PPEventMetricsLogger_sendRTCLogsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v3 = *(a1 + 32);
    v29 = [v3 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (!v29)
    {
      goto LABEL_22;
    }

    v30 = 0;
    v5 = *v34;
    *&v4 = 138412290;
    v26 = v4;
    v27 = *v34;
    v28 = v3;
    while (1)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = [v7 mutableCopy];
        v9 = *(a1 + 40);
        v10 = [v7 objectForKeyedSubscript:@"expirationDate"];
        v11 = [v9 eventsAndExtraordinaryEventsDictFromDate:v10];

        if (v11)
        {
          [v8 addEntriesFromDictionary:v11];
        }

        v12 = [*(a1 + 40) allowedLogFromLog:v8];
        v13 = *(a1 + 48);
        v32 = 0;
        v14 = [v13 sendMessageWithCategory:8 type:0 payload:v12 error:&v32];
        v15 = v32;
        if (v14)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          if (v30)
          {
            v30 = 1;
            goto LABEL_20;
          }

          v37 = @"storeAge";
          v17 = MEMORY[0x277CCABB0];
          v18 = *(a1 + 48);
          [*(a1 + 40) _storeAge];
          v19 = [v17 numberWithDouble:?];
          v38 = v19;
          v30 = 1;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v31 = v15;
          LOBYTE(v18) = [v18 sendMessageWithCategory:2 type:0 payload:v20 error:&v31];
          v21 = v31;

          if (v18)
          {
            v15 = v21;
            v5 = v27;
            v3 = v28;
            goto LABEL_20;
          }

          v16 = pp_default_log_handle();
          v5 = v27;
          v3 = v28;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v40 = v21;
            _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: Unable to send logs for storeAge: %@", buf, 0xCu);
          }

          v30 = 1;
          v15 = v21;
        }

        else
        {
          v16 = pp_default_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v40 = v15;
            _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: Unable to send logs: %@", buf, 0xCu);
          }
        }

LABEL_20:
      }

      v29 = [v3 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v29)
      {
LABEL_22:

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) flushMessages];
          if (*(*(*(a1 + 72) + 8) + 24) == 1)
          {
            [*(a1 + 40) _removeInteractionsSummaryLogsFromLogsAndResetStoreAge:*(a1 + 32)];
          }

          else
          {
            v24 = pp_default_log_handle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: Unable to flush logs", buf, 2u);
            }
          }
        }

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          v25 = *(*(*(a1 + 72) + 8) + 24);
        }

        else
        {
          v25 = 0;
        }

        return (*(*(a1 + 56) + 16))(*(a1 + 56), v25 & 1, 0);
      }
    }
  }

  v22 = pp_events_log_handle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPEventMetricsLogger: No RTC backends found, no logs will be sent at this time.", buf, 2u);
  }

  return (*(*(a1 + 56) + 16))();
}

- (id)_createRTCReporting
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:CFAbsoluteTimeGetCurrent()];
  v3 = *MEMORY[0x277D44040];
  v13[0] = *MEMORY[0x277D44030];
  v13[1] = v3;
  v14[0] = &unk_284783BD0;
  v14[1] = &unk_284783BE8;
  v4 = *MEMORY[0x277D44010];
  v13[2] = *MEMORY[0x277D44080];
  v13[3] = v4;
  v14[2] = v2;
  v14[3] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v6 = *MEMORY[0x277D44098];
  v11[0] = *MEMORY[0x277D44090];
  v11[1] = v6;
  v12[0] = @"Suggestions";
  v12[1] = @"com.apple.PersonalizationPortrait";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = objc_alloc(MEMORY[0x277D43FE0]);
  v9 = [v8 initWithSessionInfo:v5 userInfo:v7 frameworksToCheck:MEMORY[0x277CBEBF8]];

  return v9;
}

- (BOOL)storeToDisk
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    v8 = 138412290;
    v9 = path;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPEventMetricsLogger: Persisting some logs to disk! path: %@", &v8, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = [v5 writeToFile:self->_path atomically:0];
  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (PPEventMetricsLogger)initWithFileName:(id)name
{
  nameCopy = name;
  v6 = [(PPEventMetricsLogger *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, name);
  }

  return v7;
}

- (PPEventMetricsLogger)init
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = PPEventMetricsLogger;
  v2 = [(PPEventMetricsLogger *)&v19 init];
  v3 = v2;
  if (v2)
  {
    path = v2->_path;
    v2->_path = 0;

    v5 = objc_opt_new();
    loggedInteractionsSummary = v3->_loggedInteractionsSummary;
    v3->_loggedInteractionsSummary = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.suggestd.pp-interactions-write-queue", v7);
    interactionsWriteQueue = v3->_interactionsWriteQueue;
    v3->_interactionsWriteQueue = v8;

    v20.__sig = 0;
    *v20.__opaque = 0;
    pthread_mutexattr_init(&v20);
    pthread_mutexattr_settype(&v20, 2);
    pthread_mutex_init(&v3->_lock, &v20);
    pthread_mutexattr_destroy(&v20);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create("pp-rtc-persist", v11);

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);
    persistenceTimerSource = v3->_persistenceTimerSource;
    v3->_persistenceTimerSource = v13;

    objc_initWeak(&v20, v3);
    v15 = v3->_persistenceTimerSource;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __28__PPEventMetricsLogger_init__block_invoke;
    v17[3] = &unk_2789797B8;
    objc_copyWeak(&v18, &v20);
    dispatch_source_set_event_handler(v15, v17);
    dispatch_resume(v3->_persistenceTimerSource);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
  }

  return v3;
}

void __28__PPEventMetricsLogger_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained storeToDisk];
}

+ (unint64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate
{
  v5 = MEMORY[0x277CBEA80];
  andDateCopy = andDate;
  dateCopy = date;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [v9 components:16 fromDate:dateCopy toDate:andDateCopy options:0];

  v11 = [v10 day];
  return v11;
}

+ (id)defaultLogger
{
  if (defaultLogger_onceToken != -1)
  {
    dispatch_once(&defaultLogger_onceToken, &__block_literal_global_3771);
  }

  v3 = defaultLogger_sharedLogger;

  return v3;
}

void __37__PPEventMetricsLogger_defaultLogger__block_invoke()
{
  v0 = +[PPPaths topDirectory];
  v1 = [v0 stringByAppendingPathComponent:@"pp-privacyAwareLogging.ser"];

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 attributesOfItemAtPath:v1 error:0];
    v5 = [v4 fileSize];

    if (v5)
    {
      v6 = pp_events_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Attempt to read stored logs", buf, 2u);
      }

      v7 = objc_alloc(MEMORY[0x277CCAAC8]);
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1];
      v9 = [v7 initForReadingFromData:v8 error:0];

      [v9 setDecodingFailurePolicy:0];
      v10 = [v9 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308] error:0];
      v11 = defaultLogger_sharedLogger;
      defaultLogger_sharedLogger = v10;

      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = pp_events_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "New logging store", v15, 2u);
  }

  v13 = [[PPEventMetricsLogger alloc] initWithFileName:v1];
  v14 = defaultLogger_sharedLogger;
  defaultLogger_sharedLogger = v13;

LABEL_10:
}

@end