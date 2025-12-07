@interface TAReplay
- (BOOL)activityStream:(id)stream deviceUDID:(id)d deviceID:(id)iD status:(int64_t)status error:(id)error;
- (BOOL)activityStream:(id)stream results:(id)results;
- (BOOL)persistence:(id)persistence results:(id)results error:(id)error;
- (TAReplay)initWithLogArchive:(id)archive outputPath:(id)path inputPersistencePath:(id)persistencePath settings:(id)settings;
- (TAReplay)replayWithStartDate:(id)date endDate:(id)endDate;
- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate;
- (void)replaySingleEventLogString:(id)string;
- (void)streamDidStart:(id)start;
- (void)streamDidStop:(id)stop;
@end

@implementation TAReplay

- (TAReplay)initWithLogArchive:(id)archive outputPath:(id)path inputPersistencePath:(id)persistencePath settings:(id)settings
{
  v47[3] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  pathCopy = path;
  persistencePathCopy = persistencePath;
  settingsCopy = settings;
  v45.receiver = self;
  v45.super_class = TAReplay;
  v14 = [(TAReplay *)&v45 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_outputPath, path);
    objc_storeStrong(&v15->_inputPersistencePath, persistencePath);
    v16 = [[TATrackingAvoidanceService alloc] initWithSettings:settingsCopy];
    service = v15->_service;
    v15->_service = v16;

    v18 = [TAAnalyticsManager alloc];
    v19 = [[TAAnalyticsManagerSettings alloc] initWithEnableSubmissionOrDefault:&unk_287F6FEF0 andSettingsVersion:1];
    v20 = [(TAAnalyticsManager *)v18 initWithSettings:v19];
    analyticsManager = v15->_analyticsManager;
    v15->_analyticsManager = v20;

    [(TATrackingAvoidanceService *)v15->_service addObserver:v15->_analyticsManager];
    v22 = objc_alloc_init(MEMORY[0x277D24448]);
    persistence = v15->_persistence;
    v15->_persistence = v22;

    [(OSLogPersistence *)v15->_persistence setLogArchive:archiveCopy];
    [(OSLogPersistence *)v15->_persistence setOptions:3];
    [(OSLogPersistence *)v15->_persistence setDelegate:v15];
    v44 = archiveCopy;
    v42 = [MEMORY[0x277CCAC30] predicateWithFormat:@"process == 'locationd'"];
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.tracking-avoidance'"];
    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'Events'"];
    v26 = MEMORY[0x277CCA920];
    v47[0] = v42;
    v47[1] = v24;
    v47[2] = v25;
    [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    v27 = v43 = pathCopy;
    v28 = [v26 andPredicateWithSubpredicates:v27];
    [(OSLogPersistence *)v15->_persistence setPredicate:v28];

    v29 = objc_alloc_init(MEMORY[0x277D24408]);
    stream = v15->_stream;
    v15->_stream = v29;

    [(OSActivityStream *)v15->_stream setDelegate:v15];
    [(OSActivityStream *)v15->_stream setDeviceDelegate:v15];
    [(OSActivityStream *)v15->_stream setOptions:772];
    v31 = MEMORY[0x277CCAC30];
    [MEMORY[0x277CCAC38] processInfo];
    v32 = settingsCopy;
    v34 = v33 = persistencePathCopy;
    v35 = [v31 predicateWithFormat:@"processID == %d", objc_msgSend(v34, "processIdentifier")];

    v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subsystem == 'com.apple.tracking-avoidance'"];
    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"category == 'Status'"];
    v38 = MEMORY[0x277CCA920];
    v46[0] = v35;
    v46[1] = v36;
    v46[2] = v37;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v40 = [v38 andPredicateWithSubpredicates:v39];
    [(OSActivityStream *)v15->_stream setPredicate:v40];

    archiveCopy = v44;
    persistencePathCopy = v33;
    settingsCopy = v32;

    pathCopy = v43;
  }

  return v15;
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

- (TAReplay)replayWithStartDate:(id)date endDate:(id)endDate
{
  v42[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [dateCopy descriptionWithLocale:currentLocale];
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [endDateCopy descriptionWithLocale:currentLocale2];
  NSLog(&cfstr_ReplayingWithS.isa, v9, v11);

  outputPath = self->_outputPath;
  if (outputPath)
  {
    absoluteString = [(NSURL *)outputPath absoluteString];
    NSLog(&cfstr_WritingOutputT.isa, absoluteString);
  }

  v14 = dispatch_semaphore_create(0);
  streamWait = self->_streamWait;
  self->_streamWait = v14;

  [(OSActivityStream *)self->_stream start];
  v16 = self->_streamWait;
  v17 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v16, v17))
  {
    NSLog(&cfstr_StreamStartTim.isa);
  }

  else
  {
    v18 = self->_streamWait;
    self->_streamWait = 0;

    if (self->_inputPersistencePath)
    {
      v19 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
      v20 = MEMORY[0x277CBEB98];
      v42[0] = objc_opt_class();
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      v22 = [v20 setWithArray:v21];

      v41 = 0;
      v23 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v22 fromData:v19 error:&v41];
      v24 = v41;
      v25 = v24;
      if (v24)
      {
        NSLog(&cfstr_ErrorFailedToD.isa, v24);
      }

      else
      {
        NSLog(&cfstr_BootstrappingO.isa);
        service = self->_service;
        visitState = [v23 visitState];
        [(TATrackingAvoidanceService *)service bootstrapVisitState:visitState];

        v28 = self->_service;
        deviceRecord = [v23 deviceRecord];
        [(TATrackingAvoidanceService *)v28 bootstrapDeviceRecord:deviceRecord];
      }
    }

    v30 = dispatch_semaphore_create(0);
    persistenceWait = self->_persistenceWait;
    self->_persistenceWait = v30;

    [(OSLogPersistence *)self->_persistence fetchFromStartDate:dateCopy toEndDate:endDateCopy];
    v32 = self->_persistenceWait;
    v33 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v32, v33))
    {
      NSLog(&cfstr_ReplayTimeout.isa);
    }

    v34 = self->_persistenceWait;
    self->_persistenceWait = 0;

    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
    v35 = dispatch_semaphore_create(0);
    v36 = self->_streamWait;
    self->_streamWait = v35;

    [(OSActivityStream *)self->_stream stop];
    v37 = self->_streamWait;
    v38 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v37, v38))
    {
      NSLog(&cfstr_StreamStopTime.isa);
    }

    v39 = self->_streamWait;
    self->_streamWait = 0;
  }

  return result;
}

- (void)replaySingleEventLogString:(id)string
{
  v15[15] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [stringCopy stringByReplacingOccurrencesOfString:@"'" withString:&stru_287F632C0];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_287F632C0];

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
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:15];
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
    [(TATrackingAvoidanceService *)self->_service ingestTAEvent:v11];
  }
}

- (BOOL)persistence:(id)persistence results:(id)results error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  NSLog(&cfstr_GotActivityEve.isa);
  if (errorCopy)
  {
    NSLog(&cfstr_ErrorInReplayi.isa, errorCopy);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = resultsCopy;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          eventMessage = [*(*(&v16 + 1) + 8 * v13) eventMessage];
          [(TAReplay *)self replaySingleEventLogString:eventMessage];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return errorCopy == 0;
}

- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate
{
  NSLog(&cfstr_FinishedFetchi.isa, a2, date, endDate);
  persistenceWait = self->_persistenceWait;
  if (persistenceWait)
  {

    dispatch_semaphore_signal(persistenceWait);
  }
}

@end