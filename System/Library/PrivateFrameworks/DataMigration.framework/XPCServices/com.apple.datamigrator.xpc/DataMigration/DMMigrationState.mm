@interface DMMigrationState
+ (BOOL)_shouldSuppressMigrationFailureAlert;
+ (id)sharedInstance;
- (BOOL)_showIgnoreTapToRadarAlertOption;
- (BOOL)isMigrationNeededWithBuildVersion:(id)version lastBuildVersion:(id)buildVersion clientPID:(int)d;
- (BOOL)startMigrationAndOrBlockIfNecessaryWithClientInvocation:(id)invocation buildVersion:(id)version migrationStarterBlock:(id)block;
- (DMMigrationState)initWithMigrationSentinelManager:(id)manager;
- (NSDictionary)pluginResults;
- (NSString)migrationPhaseDescription;
- (id)_telemetryDictionaryForPluginIdentifier:(id)identifier duration:(double)duration incident:(id)incident countOfAttempts:(unint64_t)attempts previousBuildVersion:(id)version userDataDisposition:(unsigned int)disposition userCategory:(unsigned int)category;
- (id)_telemetryDictionaryMigrationDidCompleteWithDuration:(double)duration fastPluginDuration:(double)pluginDuration pluginCrashCount:(unsigned int)count pluginWatchdogCount:(unsigned int)watchdogCount pluginReturnedFalseCount:(unsigned int)falseCount previousBuildVersion:(id)version userDataDisposition:(unsigned int)disposition pluginCategories:(unsigned int)self0 userCategory:(unsigned int)self1 inAppleStore:(BOOL)self2 isFromFactory:(BOOL)self3;
- (void)_clearPluginResults;
- (void)_createRecursiveMutex;
- (void)_releaseMigrationFailureNotification;
- (void)_reportMigrationFailureIfApplicable;
- (void)_userDidRespondToMigrationFailureNotificationToFileRadar:(BOOL)radar;
- (void)blockUntilProgressHostIsReadyWithTimeoutTimeInterval:(double)interval;
- (void)dealloc;
- (void)persistIfNecessary;
- (void)pluginDidFinish:(id)finish withSuccess:(BOOL)success duration:(double)duration incident:(id)incident migrationPhaseDescription:(id)description;
- (void)pluginWillRun:(id)run migrationPhaseDescription:(id)description;
- (void)progressHostIsReady;
- (void)progressWindowHadIncident:(id)incident;
- (void)reportTelemetryForPluginIdentifier:(id)identifier duration:(double)duration incident:(id)incident countOfAttempts:(unint64_t)attempts userDataDisposition:(id)disposition userCategory:(unsigned int)category;
- (void)reportTelemetryWithMigrationDuration:(double)duration userDataDisposition:(id)disposition pluginCategories:(unsigned int)categories userCategory:(unsigned int)category inAppleStore:(BOOL)store isFromFactory:(BOOL)factory startInterval:(double)interval firstPluginStartInterval:(double)self0 endInterval:(double)self1;
- (void)sendMigrationResultsToClientInvocationsInterestedInEarlyResultsForPluginIdentifier:(id)identifier;
- (void)sendMigrationResultsToClientInvocationsWithSuccess:(BOOL)success buildVersion:(id)version;
- (void)setMigrationPhaseDescription:(id)description;
- (void)setNeedsMigrationFailureReport;
- (void)willRunPlugins:(id)plugins;
- (void)willStartMigration;
@end

@implementation DMMigrationState

+ (id)sharedInstance
{
  if (qword_100030990 != -1)
  {
    sub_100012AAC();
  }

  v3 = qword_100030988;

  return v3;
}

- (DMMigrationState)initWithMigrationSentinelManager:(id)manager
{
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = DMMigrationState;
  v6 = [(DMMigrationState *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_migrationSentinelManager, manager);
    [(DMMigrationState *)v7 _createRecursiveMutex];
    v8 = objc_alloc_init(NSMutableDictionary);
    migrationPhaseDescriptionsByConcurrentPluginIdentifiers = v7->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers;
    v7->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers = v8;

    v10 = [NSMutableArray arrayWithCapacity:1];
    waitingClientInvocations = v7->_waitingClientInvocations;
    v7->_waitingClientInvocations = v10;

    v12 = objc_alloc_init(NSMutableSet);
    completedPluginIdentifiers = v7->_completedPluginIdentifiers;
    v7->_completedPluginIdentifiers = v12;

    pluginResults = v7->_pluginResults;
    v7->_pluginResults = 0;

    v15 = objc_alloc_init(NSMutableArray);
    incidents = v7->_incidents;
    v7->_incidents = v15;

    v7->_needsMigrationFailureReport = 0;
    migrationFailureNotificationTransaction = v7->_migrationFailureNotificationTransaction;
    v7->_migrationFailureNotification = 0;
    v7->_migrationFailureNotificationTransaction = 0;

    v7->_fastPluginMigrationDuration = 0.0;
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create("com.apple.datamigrator.migration", v18);
    migrationSerialQueue = v7->_migrationSerialQueue;
    v7->_migrationSerialQueue = v19;
  }

  return v7;
}

- (void)_createRecursiveMutex
{
  v3.__sig = 0;
  *v3.__opaque = 0;
  if (pthread_mutexattr_init(&v3) || pthread_mutexattr_settype(&v3, 2) || pthread_mutex_init(&self->_recursiveMutex, &v3))
  {
    abort();
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_recursiveMutex);
  v3.receiver = self;
  v3.super_class = DMMigrationState;
  [(DMMigrationState *)&v3 dealloc];
}

- (NSString)migrationPhaseDescription
{
  pthread_mutex_lock(&self->_recursiveMutex);
  v3 = [(NSString *)self->_migrationPhaseDescription copy];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  if (![(NSMutableDictionary *)self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers count])
  {
    goto LABEL_20;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [(NSMutableDictionary *)self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers allKeys];
  v6 = [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v25;
  do
  {
    v10 = 0;
    v11 = v4;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = [(NSMutableDictionary *)self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v10)];
      v13 = [NSString stringWithFormat:@" (Concurrent: %@)", v12];
      v4 = [(__CFString *)v11 stringByAppendingString:v13];

      v10 = v10 + 1;
      v11 = v4;
    }

    while (v8 != v10);
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v8);

  if (!v4)
  {
LABEL_11:
    v14 = +[DMEnvironment sharedInstance];
    buildVersion = [v14 buildVersion];

    v16 = +[DMEnvironment sharedInstance];
    lastMigrationResultsPref = [v16 lastMigrationResultsPref];

    dmlmr_buildVersion = [lastMigrationResultsPref dmlmr_buildVersion];
    obj = buildVersion;
    if (([DMEnvironment isBuildVersion:buildVersion equalToBuildVersion:dmlmr_buildVersion]& 1) != 0)
    {
      dmlmr_success = [lastMigrationResultsPref dmlmr_success];

      if (dmlmr_success)
      {
        dmlmr_success2 = [lastMigrationResultsPref dmlmr_success];
        bOOLValue = [dmlmr_success2 BOOLValue];

        if (bOOLValue)
        {
          v4 = @"kDMMigrationPhaseDescriptionDidFinishWithSuccess";
        }

        else
        {
          v4 = @"kDMMigrationPhaseDescriptionDidFinishWithFailure";
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    v4 = 0;
LABEL_18:

LABEL_19:
  }

LABEL_20:
  pthread_mutex_unlock(&self->_recursiveMutex);

  return v4;
}

- (NSDictionary)pluginResults
{
  v3 = +[DMEnvironment sharedInstance];
  implementMigrationPluginResults = [v3 implementMigrationPluginResults];

  if (implementMigrationPluginResults)
  {
    pthread_mutex_lock(&self->_recursiveMutex);
    migrationPluginResultsPref = [(NSMutableDictionary *)self->_pluginResults copy];
    if (!migrationPluginResultsPref)
    {
      v6 = +[DMEnvironment sharedInstance];
      migrationPluginResultsPref = [v6 migrationPluginResultsPref];
    }

    pthread_mutex_unlock(&self->_recursiveMutex);
  }

  else
  {
    migrationPluginResultsPref = 0;
  }

  return migrationPluginResultsPref;
}

- (void)setMigrationPhaseDescription:(id)description
{
  descriptionCopy = description;
  pthread_mutex_lock(&self->_recursiveMutex);
  v5 = [descriptionCopy copy];

  migrationPhaseDescription = self->_migrationPhaseDescription;
  self->_migrationPhaseDescription = v5;

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (BOOL)isMigrationNeededWithBuildVersion:(id)version lastBuildVersion:(id)buildVersion clientPID:(int)d
{
  v5 = *&d;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  if (versionCopy)
  {
    if (([DMEnvironment isBuildVersion:versionCopy equalToBuildVersion:buildVersionCopy]& 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = [NSNumber numberWithInt:v5];
    _DMLogFunc();
  }

  migrationSentinelManager = [(DMMigrationState *)self migrationSentinelManager];
  isSentinelPresent = [migrationSentinelManager isSentinelPresent];

  if (!isSentinelPresent)
  {
    v13 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v12 = [NSNumber numberWithInt:v5];
  _DMLogFunc();

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)startMigrationAndOrBlockIfNecessaryWithClientInvocation:(id)invocation buildVersion:(id)version migrationStarterBlock:(id)block
{
  invocationCopy = invocation;
  versionCopy = version;
  blockCopy = block;
  [(DMMigrationState *)self _lastPointBeforeEnteringPotentialStartOfMigrationCriticalSection];
  pthread_mutex_lock(&self->_recursiveMutex);
  v11 = +[DMEnvironment sharedInstance];
  lastBuildVersionPref = [v11 lastBuildVersionPref];

  if ([invocationCopy checkNecessity] && !-[DMMigrationState isMigrationNeededWithBuildVersion:lastBuildVersion:clientPID:](self, "isMigrationNeededWithBuildVersion:lastBuildVersion:clientPID:", versionCopy, lastBuildVersionPref, objc_msgSend(invocationCopy, "pid")))
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100006980;
    v34[3] = &unk_100024858;
    v17 = &v35;
    v35 = versionCopy;
    v36 = invocationCopy;
    v18 = objc_retainBlock(v34);
  }

  else
  {
    earlyResultsPluginIdentifier = [invocationCopy earlyResultsPluginIdentifier];
    if (!earlyResultsPluginIdentifier || (v14 = earlyResultsPluginIdentifier, completedPluginIdentifiers = self->_completedPluginIdentifiers, [invocationCopy earlyResultsPluginIdentifier], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(completedPluginIdentifiers) = -[NSMutableSet containsObject:](completedPluginIdentifiers, "containsObject:", v16), v16, v14, !completedPluginIdentifiers))
    {
      v19 = blockCopy;
      v20 = [(NSMutableArray *)self->_waitingClientInvocations count];
      v21 = v20 == 0;
      [(NSMutableArray *)self->_waitingClientInvocations addObject:invocationCopy];
      v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [invocationCopy pid]);
      _DMLogFunc();

      if (v20)
      {
        blockCopy = v19;
      }

      else
      {
        migrationSerialQueue = self->_migrationSerialQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100006AEC;
        block[3] = &unk_100024880;
        blockCopy = v19;
        v31 = v19;
        v30 = lastBuildVersionPref;
        dispatch_async(migrationSerialQueue, block);
      }

      pthread_mutex_unlock(&self->_recursiveMutex);
      if ([invocationCopy isProgressHost])
      {
        v23 = dispatch_time(0, 1000000000);
        v24 = dispatch_get_global_queue(25, 0);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100006B60;
        v28[3] = &unk_100024768;
        v28[4] = self;
        dispatch_after(v23, v24, v28);
      }

      v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [invocationCopy pid]);
      _DMLogFunc();

      dispatch_sync(self->_migrationSerialQueue, &stru_1000248A0);
      v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [invocationCopy pid]);
      _DMLogFunc();
      goto LABEL_15;
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100006A2C;
    v32[3] = &unk_100024768;
    v17 = &v33;
    v33 = invocationCopy;
    v18 = objc_retainBlock(v32);
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
  if (!v18)
  {
    v21 = 0;
    goto LABEL_16;
  }

  (*(v18 + 16))(v18);
  v21 = 0;
LABEL_15:

LABEL_16:
  return v21;
}

- (void)willStartMigration
{
  pthread_mutex_lock(&self->_recursiveMutex);
  pluginResults = self->_pluginResults;
  self->_pluginResults = 0;

  [(NSMutableArray *)self->_incidents removeAllObjects];
  self->_fastPluginMigrationDuration = 0.0;
  blockWaitingUntilProgressHostIsReady = self->_blockWaitingUntilProgressHostIsReady;
  self->_blockWaitingUntilProgressHostIsReady = 0;

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)progressHostIsReady
{
  pthread_mutex_lock(&self->_recursiveMutex);
  _DMLogFunc();
  v3 = +[DMEnvironment sharedInstance];
  [v3 setProgressHostIsReady];

  blockWaitingUntilProgressHostIsReady = self->_blockWaitingUntilProgressHostIsReady;
  if (blockWaitingUntilProgressHostIsReady)
  {
    blockWaitingUntilProgressHostIsReady[2]();
    v5 = self->_blockWaitingUntilProgressHostIsReady;
    self->_blockWaitingUntilProgressHostIsReady = 0;
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)blockUntilProgressHostIsReadyWithTimeoutTimeInterval:(double)interval
{
  pthread_mutex_lock(&self->_recursiveMutex);
  v5 = +[DMEnvironment sharedInstance];
  isProgressHostReady = [v5 isProgressHostReady];

  if (isProgressHostReady)
  {
    _DMLogFunc();

    pthread_mutex_unlock(&self->_recursiveMutex);
  }

  else
  {
    _DMLogFunc();
    v7 = dispatch_block_create(0, &stru_1000248C0);
    blockWaitingUntilProgressHostIsReady = self->_blockWaitingUntilProgressHostIsReady;
    self->_blockWaitingUntilProgressHostIsReady = v7;

    block = objc_retainBlock(self->_blockWaitingUntilProgressHostIsReady);
    pthread_mutex_unlock(&self->_recursiveMutex);
    if (block)
    {
      v9 = dispatch_time(0, (interval * 1000000000.0));
      v10 = [NSNumber numberWithInt:dispatch_block_wait(block, v9) != 0];
      _DMLogFunc();
    }
  }
}

- (void)progressWindowHadIncident:(id)incident
{
  incidentCopy = incident;
  pthread_mutex_lock(&self->_recursiveMutex);
  if (incidentCopy)
  {
    [(NSMutableArray *)self->_incidents addObject:incidentCopy];
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)willRunPlugins:(id)plugins
{
  pluginsCopy = plugins;
  v5 = +[DMEnvironment sharedInstance];
  implementMigrationPluginResults = [v5 implementMigrationPluginResults];

  if (implementMigrationPluginResults)
  {
    pthread_mutex_lock(&self->_recursiveMutex);
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(pluginsCopy, "count")}];
    pluginResults = self->_pluginResults;
    self->_pluginResults = v7;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = pluginsCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ([v14 existsAndShouldRun])
          {
            v24[0] = @"kDMMigrationPluginResultsBundlePathKey";
            v15 = [v14 rep];
            path = [v15 path];
            v24[1] = @"kDMMigrationPluginResultsPhaseDescription";
            v25[0] = path;
            v25[1] = @"kDMMigrationPhaseDescriptionRunPending";
            v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

            v18 = self->_pluginResults;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)v18 setObject:v17 forKey:identifier];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);
    }

    pthread_mutex_unlock(&self->_recursiveMutex);
  }
}

- (void)sendMigrationResultsToClientInvocationsInterestedInEarlyResultsForPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pthread_mutex_lock(&self->_recursiveMutex);
  [(NSMutableSet *)self->_completedPluginIdentifiers addObject:identifierCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_waitingClientInvocations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        earlyResultsPluginIdentifier = [v10 earlyResultsPluginIdentifier];
        if ([earlyResultsPluginIdentifier isEqualToString:identifierCopy])
        {
          resultsHandler = [v10 resultsHandler];

          if (resultsHandler)
          {
            resultsHandler2 = [v10 resultsHandler];
            resultsHandler2[2](resultsHandler2, 3);

            [v10 setResultsHandler:0];
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)sendMigrationResultsToClientInvocationsWithSuccess:(BOOL)success buildVersion:(id)version
{
  successCopy = success;
  versionCopy = version;
  pthread_mutex_lock(&self->_recursiveMutex);
  [(DMMigrationState *)self _firstPointAfterEnteringEndOfMigrationCriticalSection];
  migrationSentinelManager = [(DMMigrationState *)self migrationSentinelManager];
  [migrationSentinelManager removeSentinelIfPresent];

  if (versionCopy)
  {
    v8 = +[DMEnvironment sharedInstance];
    [v8 setLastBuildVersionPref:versionCopy];

    v9 = [NSDictionary dmlmr_lastMigrationResultsWithSuccess:successCopy buildVersion:versionCopy];
    v10 = +[DMEnvironment sharedInstance];
    [v10 setLastMigrationResultsPref:v9];
  }

  v26 = versionCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_waitingClientInvocations;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        resultsHandler = [v16 resultsHandler];

        if (resultsHandler)
        {
          earlyResultsPluginIdentifier = [v16 earlyResultsPluginIdentifier];
          if (earlyResultsPluginIdentifier)
          {
            v19 = earlyResultsPluginIdentifier;
            completedPluginIdentifiers = self->_completedPluginIdentifiers;
            earlyResultsPluginIdentifier2 = [v16 earlyResultsPluginIdentifier];
            LOBYTE(completedPluginIdentifiers) = [(NSMutableSet *)completedPluginIdentifiers containsObject:earlyResultsPluginIdentifier2];

            if ((completedPluginIdentifiers & 1) == 0)
            {
              v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v16 pid]);
              [v16 earlyResultsPluginIdentifier];
              v25 = v24 = v22;
              _DMLogFunc();
            }
          }

          resultsHandler2 = [v16 resultsHandler];
          resultsHandler2[2](resultsHandler2, successCopy);
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  [(NSMutableArray *)self->_waitingClientInvocations removeAllObjects];
  [(NSMutableSet *)self->_completedPluginIdentifiers removeAllObjects];
  [(DMMigrationState *)self _reportMigrationFailureIfApplicable];
  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)pluginWillRun:(id)run migrationPhaseDescription:(id)description
{
  runCopy = run;
  descriptionCopy = description;
  pthread_mutex_lock(&self->_recursiveMutex);
  v8 = +[DMEnvironment sharedInstance];
  implementMigrationPluginResults = [v8 implementMigrationPluginResults];

  if (implementMigrationPluginResults)
  {
    v31[0] = @"kDMMigrationPluginResultsBundlePathKey";
    v10 = [runCopy rep];
    path = [v10 path];
    v32[0] = path;
    v32[1] = &off_100027958;
    v31[1] = @"kDMMigrationPluginResultsDuration";
    v31[2] = @"kDMMigrationPluginResultsPhaseDescription";
    v32[2] = @"kDMMigrationPhaseDescriptionRunning";
    v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    pluginResults = self->_pluginResults;
    identifier = [runCopy identifier];
    [(NSMutableDictionary *)pluginResults setObject:v12 forKey:identifier];

    v15 = +[NSDate date];
    v16 = dispatch_get_global_queue(21, 0);
    v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);

    v18 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v17, v18, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100007780;
    handler[3] = &unk_1000248E8;
    handler[4] = self;
    v28 = runCopy;
    v29 = v15;
    v30 = v17;
    v19 = v17;
    v20 = v15;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(v19);
  }

  isConcurrent = [runCopy isConcurrent];
  v22 = [descriptionCopy copy];
  v23 = v22;
  if (isConcurrent)
  {
    migrationPhaseDescriptionsByConcurrentPluginIdentifiers = self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers;
    identifier2 = [runCopy identifier];
    [(NSMutableDictionary *)migrationPhaseDescriptionsByConcurrentPluginIdentifiers setObject:v23 forKeyedSubscript:identifier2];
  }

  else
  {
    migrationPhaseDescription = self->_migrationPhaseDescription;
    self->_migrationPhaseDescription = v22;
    v23 = migrationPhaseDescription;
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)pluginDidFinish:(id)finish withSuccess:(BOOL)success duration:(double)duration incident:(id)incident migrationPhaseDescription:(id)description
{
  successCopy = success;
  finishCopy = finish;
  incidentCopy = incident;
  descriptionCopy = description;
  pthread_mutex_lock(&self->_recursiveMutex);
  [finishCopy timeIntervalBeforeWatchdog];
  if (v15 > 0.0)
  {
    self->_fastPluginMigrationDuration = self->_fastPluginMigrationDuration + duration;
  }

  if (incidentCopy)
  {
    [(NSMutableArray *)self->_incidents addObject:incidentCopy];
  }

  v16 = +[DMEnvironment sharedInstance];
  implementMigrationPluginResults = [v16 implementMigrationPluginResults];

  if (implementMigrationPluginResults)
  {
    v29[0] = @"kDMMigrationPluginResultsBundlePathKey";
    v18 = [finishCopy rep];
    path = [v18 path];
    v30[0] = path;
    v29[1] = @"kDMMigrationPluginResultsDuration";
    v20 = [NSNumber numberWithDouble:duration];
    v21 = v20;
    v29[2] = @"kDMMigrationPluginResultsPhaseDescription";
    v22 = @"kDMMigrationPhaseDescriptionDidFinishWithFailure";
    if (successCopy)
    {
      v22 = @"kDMMigrationPhaseDescriptionDidFinishWithSuccess";
    }

    v30[1] = v20;
    v30[2] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

    pluginResults = self->_pluginResults;
    identifier = [finishCopy identifier];
    [(NSMutableDictionary *)pluginResults setObject:v23 forKey:identifier];
  }

  if ([finishCopy isConcurrent])
  {
    migrationPhaseDescriptionsByConcurrentPluginIdentifiers = self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers;
    migrationPhaseDescription = [finishCopy identifier];
    [(NSMutableDictionary *)migrationPhaseDescriptionsByConcurrentPluginIdentifiers removeObjectForKey:migrationPhaseDescription];
  }

  else
  {
    v28 = [descriptionCopy copy];
    migrationPhaseDescription = self->_migrationPhaseDescription;
    self->_migrationPhaseDescription = v28;
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)persistIfNecessary
{
  v3 = +[DMEnvironment sharedInstance];
  implementMigrationPluginResults = [v3 implementMigrationPluginResults];

  if (implementMigrationPluginResults)
  {
    pthread_mutex_lock(&self->_recursiveMutex);
    if (self->_pluginResults)
    {
      v5 = +[DMEnvironment sharedInstance];
      [v5 setMigrationPluginResultsPref:self->_pluginResults];
    }

    pthread_mutex_unlock(&self->_recursiveMutex);
  }
}

- (void)_clearPluginResults
{
  pthread_mutex_lock(&self->_recursiveMutex);
  pluginResults = self->_pluginResults;
  self->_pluginResults = 0;

  pthread_mutex_unlock(&self->_recursiveMutex);
}

+ (BOOL)_shouldSuppressMigrationFailureAlert
{
  if (qword_1000309A0 != -1)
  {
    sub_100012AC0();
  }

  return byte_100030998;
}

- (void)setNeedsMigrationFailureReport
{
  pthread_mutex_lock(&self->_recursiveMutex);
  if (+[DMMigrationState _shouldSuppressMigrationFailureAlert])
  {
    _DMLogFunc();
  }

  else
  {
    v3 = [NSNumber numberWithBool:self->_needsMigrationFailureReport];
    _DMLogFunc();

    if (!self->_needsMigrationFailureReport)
    {
      self->_needsMigrationFailureReport = 1;
      [(DMMigrationState *)self _reportMigrationFailureIfApplicable];
    }
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)_reportMigrationFailureIfApplicable
{
  pthread_mutex_lock(&self->_recursiveMutex);
  if (self->_needsMigrationFailureReport && !self->_migrationFailureNotification && ![(NSMutableArray *)self->_waitingClientInvocations count])
  {
    _DMLogFunc();
    v11[0] = kCFUserNotificationAlertHeaderKey;
    v11[1] = kCFUserNotificationDefaultButtonTitleKey;
    v12[0] = @"Data Migration Failed";
    v12[1] = @"Tap-to-Radar";
    v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v4 = [NSMutableDictionary dictionaryWithDictionary:v3];
    if ([(DMMigrationState *)self _showIgnoreTapToRadarAlertOption])
    {
      [v4 setObject:@"Ignore" forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
    }

    v5 = [v4 copy];
    self->_migrationFailureNotification = CFUserNotificationCreate(0, 0.0, 0, 0, v5);

    if (self->_migrationFailureNotification)
    {
      v6 = os_transaction_create();
      migrationFailureNotificationTransaction = self->_migrationFailureNotificationTransaction;
      self->_migrationFailureNotificationTransaction = v6;

      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, self->_migrationFailureNotification, sub_100007FF4, 0);
      if (RunLoopSource)
      {
        v9 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v9, kCFRunLoopCommonModes);
        CFRelease(v9);
      }
    }
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)_userDidRespondToMigrationFailureNotificationToFileRadar:(BOOL)radar
{
  selfCopy = self;
  [(DMMigrationState *)self _releaseMigrationFailureNotification];
  if (radar)
  {
    pthread_mutex_lock(&selfCopy->_recursiveMutex);
    _DMLogFunc();
    v5 = +[DMEnvironment sharedInstance];
    buildVersion = [v5 buildVersion];

    v7 = [NSString stringWithFormat:@"Data Migration failed on %@", buildVersion];
    if ([(NSMutableArray *)selfCopy->_incidents count])
    {
      v38 = buildVersion;
      v36 = v7;
      if ([(NSMutableArray *)selfCopy->_incidents count]== 1)
      {
        firstObject = [(NSMutableArray *)selfCopy->_incidents firstObject];
        responsiblePluginRep = [firstObject responsiblePluginRep];
        bundleIdentifier = [responsiblePluginRep bundleIdentifier];

        if ([bundleIdentifier length])
        {
          v11 = [NSString stringWithFormat:@" (%@)", bundleIdentifier];
        }

        else
        {
          details = [firstObject details];
          v15 = [details length];

          if (v15)
          {
            details2 = [firstObject details];
            v11 = [NSString stringWithFormat:@" (%@)", details2];
          }

          else
          {
            v11 = @" (single reason)";
          }
        }

        v37 = v11;
      }

      else
      {
        v37 = @" (multiple reasons)";
      }

      v17 = objc_alloc_init(NSDateFormatter);
      [v17 setDateStyle:1];
      [v17 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      v18 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](selfCopy->_incidents, "count")}];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v39 = selfCopy;
      obj = selfCopy->_incidents;
      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v43;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v42 + 1) + 8 * i);
            details3 = [v23 details];
            date = [v23 date];
            v26 = [v17 stringFromDate:date];
            v27 = [NSString stringWithFormat:@"%@ (%@)", details3, v26];

            [v18 addObject:v27];
          }

          v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v20);
      }

      v28 = [v18 componentsJoinedByString:@"\n"];
      v7 = [NSString stringWithFormat:@"%@\nReasons:\n%@", v36, v28];

      buildVersion = v38;
      selfCopy = v39;
      v13 = v37;
    }

    else
    {
      v13 = &stru_1000259A0;
    }

    v29 = [NSString stringWithFormat:@"%@\n\nAdditional diagnostic info in stackshots with prefixes:\nstacks+com.apple.datamigrator\ncom.apple.migrationpluginwrapper (for plugin crashes, if any)", v7];

    v30 = objc_alloc_init(RadarDraft);
    v31 = [NSString stringWithFormat:@"Data Migration failed on %@%@", buildVersion, v13];
    [v30 setTitle:v31];

    [v30 setProblemDescription:v29];
    [v30 setClassification:2];
    [v30 setReproducibility:5];
    v32 = [[RadarComponent alloc] initWithName:@"Data Migrator" version:@"iOS" identifier:396123];
    [v30 setComponent:v32];

    [v30 setIsUserInitiated:1];
    v33 = +[TapToRadarService shared];
    v41 = 0;
    [v33 createDraft:v30 forProcessNamed:@"Data Migrator" withDisplayReason:0 error:&v41];
    v34 = v41;

    _DMLogFunc();
    migrationFailureNotificationTransaction = selfCopy->_migrationFailureNotificationTransaction;
    selfCopy->_migrationFailureNotificationTransaction = 0;

    pthread_mutex_unlock(&selfCopy->_recursiveMutex);
  }

  else
  {
    _DMLogFunc();
    v12 = selfCopy->_migrationFailureNotificationTransaction;
    selfCopy->_migrationFailureNotificationTransaction = 0;
  }
}

- (void)_releaseMigrationFailureNotification
{
  CFUserNotificationCancel(self->_migrationFailureNotification);
  CFRelease(self->_migrationFailureNotification);
  self->_migrationFailureNotification = 0;
  self->_needsMigrationFailureReport = 0;
}

- (BOOL)_showIgnoreTapToRadarAlertOption
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_incidents;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) kind] != 5)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)_telemetryDictionaryForPluginIdentifier:(id)identifier duration:(double)duration incident:(id)incident countOfAttempts:(unint64_t)attempts previousBuildVersion:(id)version userDataDisposition:(unsigned int)disposition userCategory:(unsigned int)category
{
  v9 = *&disposition;
  identifierCopy = identifier;
  incidentCopy = incident;
  versionCopy = version;
  v17 = @"(null)";
  if (versionCopy)
  {
    v17 = versionCopy;
  }

  v37 = v17;
  v18 = [DMUserDataDispositionManager basicDispositionFlagsFromDispositionFlags:v9];
  v19 = [DMUserDataDispositionManager backupSourceDispositionFlagsFromDispositionFlags:v9];
  v36 = identifierCopy;
  v47[0] = identifierCopy;
  v38[0] = @"pluginIdentifier";
  v38[1] = @"durationInSeconds";
  v35 = [NSNumber numberWithUnsignedInt:duration];
  v47[1] = v35;
  v38[2] = @"attempts";
  v20 = [NSNumber numberWithUnsignedInteger:attempts];
  v47[2] = v20;
  v38[3] = @"didSucceed";
  v21 = [NSNumber numberWithInt:incidentCopy == 0];
  v47[3] = v21;
  v38[4] = @"didReportFailure";
  if (incidentCopy)
  {
    v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [incidentCopy kind] == 1);
    v48 = v33;
    v39 = @"didHaveTooManyXPCFailures";
    v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [incidentCopy kind] == 2);
    v49 = v32;
    v40 = @"didExceedAllowableTime";
    v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [incidentCopy kind] == 3);
  }

  else
  {
    v22 = &__kCFBooleanFalse;
    v48 = &__kCFBooleanFalse;
    v49 = &__kCFBooleanFalse;
    v39 = @"didHaveTooManyXPCFailures";
    v40 = @"didExceedAllowableTime";
  }

  v23 = (v9 >> 7) & 1;
  v24 = (v9 >> 3) & 1;
  v50 = v22;
  v51 = v37;
  v41 = @"previousBuildVersion";
  v42 = @"userDataDispositionBasic";
  v25 = [NSNumber numberWithUnsignedInt:v18];
  v52 = v25;
  v43 = @"userDataDispositionBackupSource";
  v26 = [NSNumber numberWithUnsignedInt:v19];
  v53 = v26;
  v44 = @"userDataDispositionBackupSourceWasDifferentDevice";
  v27 = [NSNumber numberWithBool:v24];
  v54 = v27;
  v45 = @"userDataDispositionBackupSourceIsMegaBackup";
  v28 = [NSNumber numberWithBool:v23];
  v55 = v28;
  v46 = @"userCategory";
  v29 = [NSNumber numberWithUnsignedInt:category];
  v56 = v29;
  v30 = [NSDictionary dictionaryWithObjects:v47 forKeys:v38 count:13];

  if (incidentCopy)
  {
  }

  return v30;
}

- (void)reportTelemetryForPluginIdentifier:(id)identifier duration:(double)duration incident:(id)incident countOfAttempts:(unint64_t)attempts userDataDisposition:(id)disposition userCategory:(unsigned int)category
{
  identifierCopy = identifier;
  incidentCopy = incident;
  dispositionCopy = disposition;
  v17 = [dispositionCopy objectForKeyedSubscript:@"previousBuildVersion"];
  v18 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:dispositionCopy];

  v19 = +[DMAnalytics sharedInstance];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100008BC4;
  v23[3] = &unk_100024930;
  v23[4] = self;
  v24 = identifierCopy;
  durationCopy = duration;
  attemptsCopy = attempts;
  v25 = incidentCopy;
  v26 = v17;
  v29 = v18;
  categoryCopy = category;
  v20 = v17;
  v21 = incidentCopy;
  v22 = identifierCopy;
  [v19 sendLazyEventWithName:@"com.apple.migration.pluginDidComplete" payloadBuilder:v23];
}

- (id)_telemetryDictionaryMigrationDidCompleteWithDuration:(double)duration fastPluginDuration:(double)pluginDuration pluginCrashCount:(unsigned int)count pluginWatchdogCount:(unsigned int)watchdogCount pluginReturnedFalseCount:(unsigned int)falseCount previousBuildVersion:(id)version userDataDisposition:(unsigned int)disposition pluginCategories:(unsigned int)self0 userCategory:(unsigned int)self1 inAppleStore:(BOOL)self2 isFromFactory:(BOOL)self3
{
  v13 = *&disposition;
  v14 = *&falseCount;
  v15 = *&watchdogCount;
  v16 = *&count;
  versionCopy = version;
  if (versionCopy)
  {
    v20 = versionCopy;
  }

  else
  {
    v20 = @"(null)";
  }

  v36 = v20;
  v21 = [DMUserDataDispositionManager basicDispositionFlagsFromDispositionFlags:v13];
  v22 = [DMUserDataDispositionManager backupSourceDispositionFlagsFromDispositionFlags:v13];
  v40[0] = @"durationInSeconds";
  v39 = [NSNumber numberWithUnsignedInt:duration];
  v41[0] = v39;
  v40[1] = @"fastPluginDurationInSeconds";
  v38 = [NSNumber numberWithUnsignedInt:pluginDuration];
  v41[1] = v38;
  v40[2] = @"countOfPluginsCrashing";
  v37 = [NSNumber numberWithUnsignedInt:v16];
  v41[2] = v37;
  v40[3] = @"countOfPluginsExceedingAllowableTime";
  v35 = [NSNumber numberWithUnsignedInt:v15];
  v41[3] = v35;
  v40[4] = @"countOfPluginsReportingFailure";
  v33 = [NSNumber numberWithUnsignedInt:v14];
  v41[4] = v33;
  v41[5] = v20;
  v40[5] = @"previousBuildVersion";
  v40[6] = @"userDataDispositionBasic";
  v23 = [NSNumber numberWithUnsignedInt:v21];
  v41[6] = v23;
  v40[7] = @"userDataDispositionBackupSource";
  v24 = [NSNumber numberWithUnsignedInt:v22];
  v41[7] = v24;
  v40[8] = @"userDataDispositionBackupSourceWasDifferentDevice";
  v25 = [NSNumber numberWithBool:(v13 >> 3) & 1];
  v41[8] = v25;
  v40[9] = @"userDataDispositionBackupSourceIsMegaBackup";
  v26 = [NSNumber numberWithBool:(v13 >> 7) & 1];
  v41[9] = v26;
  v40[10] = @"pluginCategories";
  v27 = [NSNumber numberWithUnsignedInt:categories];
  v41[10] = v27;
  v40[11] = @"userCategory";
  v28 = [NSNumber numberWithUnsignedInt:category];
  v41[11] = v28;
  v40[12] = @"inAppleStore";
  v29 = [NSNumber numberWithBool:store];
  v41[12] = v29;
  v40[13] = @"isFromFactory";
  v30 = [NSNumber numberWithBool:factory];
  v41[13] = v30;
  v31 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:14];

  return v31;
}

- (void)reportTelemetryWithMigrationDuration:(double)duration userDataDisposition:(id)disposition pluginCategories:(unsigned int)categories userCategory:(unsigned int)category inAppleStore:(BOOL)store isFromFactory:(BOOL)factory startInterval:(double)interval firstPluginStartInterval:(double)self0 endInterval:(double)self1
{
  v33 = *&categories;
  v34 = *&category;
  dispositionCopy = disposition;
  pthread_mutex_lock(&self->_recursiveMutex);
  _DMLogFunc();
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = self->_incidents;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *v49;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v17);
        }

        kind = [*(*(&v48 + 1) + 8 * i) kind];
        switch(kind)
        {
          case 3u:
            v21 = (v21 + 1);
            break;
          case 2u:
            v22 = (v22 + 1);
            break;
          case 1u:
            v20 = (v20 + 1);
            break;
        }
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v26 = [dispositionCopy objectForKeyedSubscript:@"previousBuildVersion"];
  v27 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:dispositionCopy];
  fastPluginMigrationDuration = self->_fastPluginMigrationDuration;
  if (v26)
  {
    uTF8String = [v26 UTF8String];
  }

  else
  {
    uTF8String = "(null)";
  }

  v32 = uTF8String;
  _DMLogFunc();
  v30 = [DMAnalytics sharedInstance:duration];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000924C;
  v37[3] = &unk_100024958;
  durationCopy = duration;
  v40 = v22;
  v41 = v21;
  v37[4] = self;
  v38 = v26;
  v42 = v20;
  v43 = v27;
  v44 = v33;
  v45 = v34;
  storeCopy = store;
  factoryCopy = factory;
  v31 = v26;
  [v30 sendLazyEventWithName:@"com.apple.migration.didComplete" payloadBuilder:v37];

  _DMLogFunc();
  pthread_mutex_unlock(&self->_recursiveMutex);
}

@end