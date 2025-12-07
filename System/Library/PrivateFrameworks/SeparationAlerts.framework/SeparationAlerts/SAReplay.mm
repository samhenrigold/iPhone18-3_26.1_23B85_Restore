@interface SAReplay
- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error;
- (BOOL)activityStream:(id)stream results:(id)results;
- (BOOL)persistence:(id)persistence results:(id)results error:(id)error;
- (SAReplay)initWithLogArchive:(id)archive outputPath:(id)path inputPersistencePath:(id)persistencePath;
- (SAReplay)replayWithStartDate:(id)date endDate:(id)endDate;
- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate;
- (void)replaySingleEventLogString:(id)string;
- (void)streamDidStart:(id)start;
- (void)streamDidStop:(id)stop;
@end

@implementation SAReplay

- (SAReplay)initWithLogArchive:(id)archive outputPath:(id)path inputPersistencePath:(id)persistencePath
{
  v46[3] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  pathCopy = path;
  persistencePathCopy = persistencePath;
  v44.receiver = self;
  v44.super_class = SAReplay;
  v11 = [(SAReplay *)&v44 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outputPath, path);
    objc_storeStrong(&v12->_inputPersistencePath, persistencePath);
    v13 = [SAAnalytics alloc];
    v14 = [[SAAnalyticsSettings alloc] initWithEnableSubmission:0];
    v15 = [(SAAnalytics *)v13 initWithSettings:v14];
    analytics = v12->_analytics;
    v12->_analytics = v15;

    v17 = [[SAService alloc] initWithAnalytics:v12->_analytics isReplay:1 audioAccessoryManager:0];
    service = v12->_service;
    v12->_service = v17;

    v19 = objc_alloc_init(MEMORY[0x277D24448]);
    persistence = v12->_persistence;
    v12->_persistence = v19;

    [(OSLogPersistence *)v12->_persistence setLogArchive:archiveCopy];
    [(OSLogPersistence *)v12->_persistence setOptions:3];
    [(OSLogPersistence *)v12->_persistence setDelegate:v12];
    v43 = pathCopy;
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"process == 'locationd'"];
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.TrackingAvoidance'"];
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'SeparationAlertsEvents'"];
    v24 = MEMORY[0x277CCA920];
    v46[0] = v21;
    v46[1] = v22;
    v46[2] = v23;
    v42 = persistencePathCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v26 = [v24 andPredicateWithSubpredicates:v25];
    [(OSLogPersistence *)v12->_persistence setPredicate:v26];

    v27 = objc_alloc_init(MEMORY[0x277D24408]);
    stream = v12->_stream;
    v12->_stream = v27;

    [(OSActivityStream *)v12->_stream setDelegate:v12];
    [(OSActivityStream *)v12->_stream setDeviceDelegate:v12];
    [(OSActivityStream *)v12->_stream setOptions:772];
    v29 = MEMORY[0x277CCAC30];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v31 = [v29 predicateWithFormat:@"processID == %d", objc_msgSend(processInfo, "processIdentifier")];

    v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.TrackingAvoidance'"];
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'SeparationAlerts'"];
    v34 = MEMORY[0x277CCA920];
    v45[0] = v31;
    v45[1] = v32;
    v45[2] = v33;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v36 = [v34 andPredicateWithSubpredicates:v35];
    [(OSActivityStream *)v12->_stream setPredicate:v36];

    pathCopy = v43;
    persistencePathCopy = v42;
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventOrder = v12->_eventOrder;
    v12->_eventOrder = v37;

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventMessages = v12->_eventMessages;
    v12->_eventMessages = v39;
  }

  return v12;
}

- (BOOL)activityStream:(id)stream results:(id)results
{
  v40 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  resultsCopy = results;
  v8 = resultsCopy;
  outputPath = self->_outputPath;
  if (outputPath)
  {
    v37 = 0;
    v10 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:outputPath error:&v37];
    v11 = v37;
    if (v11)
    {
      v12 = v11;
      NSLog(&cfstr_ErrorWritingRe.isa);

      v13 = 0;
      v10 = v12;
    }

    else
    {
      v28 = streamCopy;
      [v10 seekToEndOfFile];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            eventMessage = [*(*(&v33 + 1) + 8 * i) eventMessage];
            v25 = [eventMessage stringByAppendingString:@"\n"];
            v26 = [v25 dataUsingEncoding:4];
            [v10 writeData:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v21);
      }

      [v10 closeFile];
      v13 = 1;
      streamCopy = v28;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [resultsCopy countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v8);
          }

          eventMessage2 = [*(*(&v29 + 1) + 8 * j) eventMessage];
          NSLog(&cfstr_ReplaystatusS.isa, [eventMessage2 UTF8String]);
        }

        v15 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v15);
    }

    v13 = 1;
  }

  return v13;
}

- (void)streamDidStop:(id)stop
{
  NSLog(&cfstr_LogStreamStopp.isa, a2, stop);
  streamWait = self->_streamWait;
  if (streamWait)
  {

    dispatch_semaphore_signal(streamWait);
  }
}

- (void)streamDidStart:(id)start
{
  NSLog(&cfstr_LogStreamStart.isa, a2, start);
  streamWait = self->_streamWait;
  if (streamWait)
  {

    dispatch_semaphore_signal(streamWait);
  }
}

- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error
{
  if (!status)
  {
    [stream setDevice:{iD, d}];
  }

  return 1;
}

- (SAReplay)replayWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [dateCopy descriptionWithLocale:currentLocale];
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [endDateCopy descriptionWithLocale:currentLocale2];
  NSLog(&cfstr_ReplayingWithS.isa, v8, v10);

  outputPath = self->_outputPath;
  if (outputPath)
  {
    absoluteString = [(NSURL *)outputPath absoluteString];
    NSLog(&cfstr_WritingOutputT.isa, absoluteString);
  }

  v13 = dispatch_semaphore_create(0);
  streamWait = self->_streamWait;
  self->_streamWait = v13;

  [(OSActivityStream *)self->_stream start];
  v15 = self->_streamWait;
  v16 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    NSLog(&cfstr_StreamStartTim.isa);
  }

  else
  {
    v17 = self->_streamWait;
    self->_streamWait = 0;

    v18 = dispatch_semaphore_create(0);
    persistenceWait = self->_persistenceWait;
    self->_persistenceWait = v18;

    [(OSLogPersistence *)self->_persistence fetchFromStartDate:dateCopy toEndDate:endDateCopy];
    v20 = self->_persistenceWait;
    v21 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v20, v21))
    {
      NSLog(&cfstr_ReplayTimeout.isa);
    }

    v22 = self->_persistenceWait;
    self->_persistenceWait = 0;

    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
    v23 = dispatch_semaphore_create(0);
    v24 = self->_streamWait;
    self->_streamWait = v23;

    [(OSActivityStream *)self->_stream stop];
    v25 = self->_streamWait;
    v26 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v25, v26))
    {
      NSLog(&cfstr_StreamStopTime.isa);
    }

    v27 = self->_streamWait;
    self->_streamWait = 0;
  }

  return result;
}

- (void)replaySingleEventLogString:(id)string
{
  v15[19] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [stringCopy stringByReplacingOccurrencesOfString:@"'" withString:&stru_287709218];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_287709218];

  v7 = [MEMORY[0x277CBEA90] dataWithHexString:v6];
  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v15[4] = objc_opt_class();
  v15[5] = objc_opt_class();
  v15[6] = objc_opt_class();
  v15[7] = objc_opt_class();
  v15[8] = objc_opt_class();
  v15[9] = objc_opt_class();
  v15[10] = objc_opt_class();
  v15[11] = objc_opt_class();
  v15[12] = objc_opt_class();
  v15[13] = objc_opt_class();
  v15[14] = objc_opt_class();
  v15[15] = objc_opt_class();
  v15[16] = objc_opt_class();
  v15[17] = objc_opt_class();
  v15[18] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:19];
  v10 = [v8 setWithArray:v9];

  v14 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v7 error:&v14];
  v12 = v14;
  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrorDeseriali.isa, v12);
  }

  else
  {
    [(SAService *)self->_service ingestTAEvent:v11];
  }
}

- (BOOL)persistence:(id)persistence results:(id)results error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  NSLog(&cfstr_GotActivityEve.isa);
  if (errorCopy)
  {
    NSLog(&cfstr_ErrorInReplayi.isa, errorCopy);
  }

  else
  {
    v22 = resultsCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = resultsCopy;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          eventMessage = [v13 eventMessage];
          v15 = [SALoggingUtilities extractUniqueIdentifierFromMessage:eventMessage];

          v16 = [(NSMutableDictionary *)self->_eventMessages objectForKey:v15];

          if (v16)
          {
            eventMessage3 = [(NSMutableDictionary *)self->_eventMessages objectForKey:v15];
            eventMessage2 = [v13 eventMessage];
            [eventMessage3 addObject:eventMessage2];
          }

          else
          {
            [(NSMutableArray *)self->_eventOrder addObject:v15];
            eventMessages = self->_eventMessages;
            v20 = objc_alloc(MEMORY[0x277CBEB18]);
            eventMessage3 = [v13 eventMessage];
            eventMessage2 = [v20 initWithObjects:{eventMessage3, 0}];
            [(NSMutableDictionary *)eventMessages setObject:eventMessage2 forKey:v15];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    errorCopy = 0;
    resultsCopy = v22;
  }

  return errorCopy == 0;
}

- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate
{
  v19 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_FinishedFetchi.isa, a2, date, endDate);
  persistenceWait = self->_persistenceWait;
  if (persistenceWait)
  {
    dispatch_semaphore_signal(persistenceWait);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_eventOrder;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        NSLog(&cfstr_Replaying.isa, v11);
        v12 = [(NSMutableDictionary *)self->_eventMessages objectForKey:v11];
        v13 = [SALoggingUtilities extractEventFromMessages:v12];

        if (v13)
        {
          [(SAService *)self->_service ingestTAEvent:v13];
        }

        else
        {
          NSLog(&cfstr_CouldNotReplay.isa, v11);
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end