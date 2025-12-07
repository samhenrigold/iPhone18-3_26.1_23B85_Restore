@interface _DASContinuedProcessingTaskUIClient
+ (id)sharedClient;
+ (void)initialize;
- (APKActivityProgressUIServer)server;
- (_DASContinuedProcessingTaskUIClient)init;
- (int64_t)expirationEventForSuspendedActivity:(id)activity;
- (void)activateConnection;
- (void)activitiesBeganRunning:(id)running;
- (void)activitiesWereCompleted:(id)completed withSuccess:(BOOL)success;
- (void)activitiesWereSubmitted:(id)submitted;
- (void)activitiesWereSuspended:(id)suspended;
- (void)beginActivity:(id)activity startingProgress:(id)progress;
- (void)cancelActivities:(id)activities;
- (void)cleanupActivity:(id)activity didComplete:(BOOL)complete;
- (void)dealloc;
- (void)eventResultReceivedForActivity:(id)activity event:(id)event result:(id)result;
- (void)invalidateConnection;
- (void)postActivityEvent:(int64_t)event forIdentifier:(id)identifier;
- (void)resetConnection;
- (void)startActivityWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier imageUTI:(id)i activityName:(id)name activityDescription:(id)description progress:(id)progress;
- (void)updateMetadataForActivity:(id)activity;
- (void)updateProgress:(id)progress forIdentifier:(id)identifier;
- (void)updateProgressForActivity:(id)activity;
- (void)updateTitle:(id)title description:(id)description forIdentifier:(id)identifier playHaptics:(BOOL)haptics;
@end

@implementation _DASContinuedProcessingTaskUIClient

+ (void)initialize
{
  v2 = sub_1000B6678();
  if (v2)
  {
    [sub_1000B4A8C(v2 v3)];
    v6 = 0;
    v7 = &v6;
    v8 = 0x2050000000;
    v4 = qword_10020B730;
    v9 = qword_10020B730;
    if (!qword_10020B730)
    {
      sub_1000B6678();
      v7[3] = objc_getClass("APKActivityProgressTasksSpecifier");
      qword_10020B730 = v7[3];
      v4 = v7[3];
    }

    v5 = v4;
    _Block_object_dispose(&v6, 8);
    [v4 load];
  }
}

- (_DASContinuedProcessingTaskUIClient)init
{
  if (sub_1000B6678())
  {
    v13.receiver = self;
    v13.super_class = _DASContinuedProcessingTaskUIClient;
    v3 = [(_DASContinuedProcessingTaskUIClient *)&v13 init];
    if (v3)
    {
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.dasd.progressuiqueue", v4);
      queue = v3->_queue;
      v3->_queue = v5;

      v7 = os_log_create("com.apple.duetactivityscheduler", "ContinuedProgress");
      log = v3->_log;
      v3->_log = v7;

      v9 = +[_DASDaemon sharedInstance];
      daemon = v3->_daemon;
      v3->_daemon = v9;

      [(_DASContinuedProcessingTaskUIClient *)v3 activateConnection];
      [(_DASDaemon *)v3->_daemon registerForActivityLifecycleObservation:v3];
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)sharedClient
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4D24;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B710 != -1)
  {
    dispatch_once(&qword_10020B710, block);
  }

  v2 = qword_10020B718;

  return v2;
}

- (APKActivityProgressUIServer)server
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  server = selfCopy->_server;
  if (!server)
  {
    [(_DASContinuedProcessingTaskUIClient *)selfCopy resetConnection];
    server = selfCopy->_server;
  }

  v4 = server;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)resetConnection
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Connection was previously invalidated, re-establishing connection", v4, 2u);
  }

  [(_DASContinuedProcessingTaskUIClient *)self invalidateConnection];
  [(_DASContinuedProcessingTaskUIClient *)self activateConnection];
}

- (void)activateConnection
{
  v3 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.activityprogress.activityprogressui.session-service"];
  v4 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIServer];
  [v3 setServer:v4];

  v5 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIClient];
  [v3 setClient:v5];

  v6 = [BSServiceConnectionEndpoint endpointForMachName:@"com.apple.activityprogress.activityprogressui.services" service:@"com.apple.activityprogress.activityprogressui.session-service" instance:0];
  v7 = [BSServiceConnection connectionWithEndpoint:v6];
  connection = self->_connection;
  self->_connection = v7;

  v9 = self->_connection;
  if (v9)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000B50B8;
    v18 = &unk_1001B7E58;
    v19 = v3;
    selfCopy = self;
    [(BSServiceConnectionClient *)v9 configureConnection:&v15];
    [(BSServiceConnectionClient *)self->_connection activate:v15];
    v10 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v11 = self->_connection;
    v21 = v10;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v13 = [(BSServiceConnectionClient *)v11 remoteTargetWithLaunchingAssertionAttributes:v12];
    server = self->_server;
    self->_server = v13;

    if (!self->_server)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100128A94();
      }

      [(_DASContinuedProcessingTaskUIClient *)self invalidateConnection];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100128B0C();
    }

    [(_DASContinuedProcessingTaskUIClient *)self invalidateConnection];
  }
}

- (void)invalidateConnection
{
  [(BSServiceConnectionClient *)self->_connection invalidate];
  server = self->_server;
  self->_server = 0;

  connection = self->_connection;
  self->_connection = 0;
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _DASContinuedProcessingTaskUIClient;
  [(_DASContinuedProcessingTaskUIClient *)&v3 dealloc];
}

- (void)updateProgressForActivity:(id)activity
{
  activityCopy = activity;
  progress = [activityCopy progress];
  uuid = [activityCopy uuid];

  [(_DASContinuedProcessingTaskUIClient *)self updateProgress:progress forIdentifier:uuid];
}

- (void)updateMetadataForActivity:(id)activity
{
  activityCopy = activity;
  continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
  title = [continuedProcessingWrapper title];
  continuedProcessingWrapper2 = [activityCopy continuedProcessingWrapper];
  subtitle = [continuedProcessingWrapper2 subtitle];
  uuid = [activityCopy uuid];

  [(_DASContinuedProcessingTaskUIClient *)self updateTitle:title description:subtitle forIdentifier:uuid playHaptics:0];
}

- (void)startActivityWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier imageUTI:(id)i activityName:(id)name activityDescription:(id)description progress:(id)progress
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  descriptionCopy = description;
  progressCopy = progress;
  iCopy = i;
  v21 = objc_alloc(sub_1000B4A8C(iCopy, v20));
  v22 = v21;
  if (progressCopy)
  {
    v23 = [v21 initWithProgress:progressCopy];
  }

  else
  {
    v24 = objc_alloc_init(NSProgress);
    v23 = [v22 initWithProgress:v24];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138413058;
    v28 = identifierCopy;
    v29 = 2112;
    v30 = nameCopy;
    v31 = 2112;
    v32 = descriptionCopy;
    v33 = 2112;
    v34 = bundleIdentifierCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] Starting activity %@ %@, bundleIdentifier: %@", &v27, 0x2Au);
  }

  server = [(_DASContinuedProcessingTaskUIClient *)self server];
  [server startActivityForIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy imageUTI:iCopy activityName:nameCopy activityDescription:descriptionCopy progress:v23];
}

- (void)updateTitle:(id)title description:(id)description forIdentifier:(id)identifier playHaptics:(BOOL)haptics
{
  hapticsCopy = haptics;
  titleCopy = title;
  descriptionCopy = description;
  identifierCopy = identifier;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"Disabled";
    *v17 = 138413058;
    *&v17[4] = identifierCopy;
    if (hapticsCopy)
    {
      v16 = @"Enabled";
    }

    *&v17[12] = 2112;
    *&v17[14] = titleCopy;
    v18 = 2112;
    v19 = descriptionCopy;
    v20 = 2112;
    v21 = v16;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%@] Updating title to %@ and description to %@ (haptics %@)", v17, 0x2Au);
  }

  v14 = [(_DASContinuedProcessingTaskUIClient *)self server:*v17];
  v15 = [NSNumber numberWithBool:hapticsCopy];
  [v14 updateActivityName:titleCopy activityDescription:descriptionCopy withHaptic:v15 forIdentifier:identifierCopy];
}

- (void)updateProgress:(id)progress forIdentifier:(id)identifier
{
  progressCopy = progress;
  identifierCopy = identifier;
  v9 = [objc_alloc(sub_1000B4A8C(identifierCopy v8))];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100128B8C();
  }

  server = [(_DASContinuedProcessingTaskUIClient *)self server];
  [server updateProgress:v9 forIdentifier:identifierCopy];
}

- (void)cleanupActivity:(id)activity didComplete:(BOOL)complete
{
  completeCopy = complete;
  activityCopy = activity;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = log;
    uuid = [activityCopy uuid];
    v21 = 138412290;
    v22 = uuid;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Ending activity", &v21, 0xCu);
  }

  if ([activityCopy isContinuedProcessingTask])
  {
    progress = [activityCopy progress];
    v11 = progress;
    if (progress)
    {
      v12 = progress;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;

    v14 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
    if (completeCopy)
    {
      if (v14)
      {
        sub_100128C84();
      }

      completedUnitCount = [v13 completedUnitCount];
      if (completedUnitCount <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = completedUnitCount;
      }

      [v13 setCompletedUnitCount:v16];
      [v13 setTotalUnitCount:{objc_msgSend(v13, "completedUnitCount")}];
    }

    else
    {
      if (v14)
      {
        sub_100128C10();
      }

      [v13 cancel];
    }

    [activityCopy setProgress:v13];
    v17 = [_DASDaemonLogger logForCategory:@"ActivityProgress"];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"incomplete";
      v21 = 138412802;
      if (completeCopy)
      {
        v18 = @"completed";
      }

      v22 = v18;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = activityCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Finishing progress (%@) to %@ for %@", &v21, 0x20u);
    }

    [(_DASContinuedProcessingTaskUIClient *)self updateProgressForActivity:activityCopy];
    server = [(_DASContinuedProcessingTaskUIClient *)self server];
    uuid2 = [activityCopy uuid];
    [server endActivityForIdentifier:uuid2];
  }
}

- (void)postActivityEvent:(int64_t)event forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = log;
    v9 = [NSNumber numberWithInteger:event];
    v12 = 138412546;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Posting %@", &v12, 0x16u);
  }

  server = [(_DASContinuedProcessingTaskUIClient *)self server];
  v11 = [NSNumber numberWithInteger:event];
  [server handleActivityEvent:v11 forIdentifier:identifierCopy];
}

- (void)cancelActivities:(id)activities
{
  activitiesCopy = activities;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = activitiesCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cancelling activities: %@", &v8, 0xCu);
  }

  daemon = self->_daemon;
  taskIdentifiers = [activitiesCopy taskIdentifiers];
  [(_DASDaemon *)daemon suspendAndCancelActivitiesWithIdentifiers:taskIdentifiers denialReason:[_DASPolicyManager bitmaskForPolicy:@"UserForcedCancellation"]];
}

- (void)eventResultReceivedForActivity:(id)activity event:(id)event result:(id)result
{
  activityCopy = activity;
  resultCopy = result;
  integerValue = [event integerValue];
  integerValue2 = [resultCopy integerValue];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = log;
    v14 = [NSNumber numberWithInteger:integerValue];
    v15 = [NSNumber numberWithInteger:integerValue2];
    v18 = 138412802;
    v19 = activityCopy;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Received event result for %@: %@", &v18, 0x20u);
  }

  v16 = +[_DASProgressReportingMonitor sharedMonitor];
  v17 = [v16 trackerForUUID:activityCopy];

  if (v17)
  {
    [v17 eventResultReceivedForEvent:integerValue result:integerValue2];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100128CF8();
  }
}

- (void)activitiesWereSubmitted:(id)submitted
{
  submittedCopy = submitted;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [submittedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(submittedCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isContinuedProcessingTask])
        {
          v10 = +[NSProgress indeterminateProgress];
          [(_DASContinuedProcessingTaskUIClient *)self beginActivity:v9 startingProgress:v10];
        }
      }

      v6 = [submittedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)activitiesBeganRunning:(id)running
{
  runningCopy = running;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [runningCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(runningCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isContinuedProcessingTask])
        {
          [(_DASContinuedProcessingTaskUIClient *)self updateProgressForActivity:v9];
        }
      }

      v6 = [runningCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)activitiesWereSuspended:(id)suspended
{
  suspendedCopy = suspended;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [suspendedCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(suspendedCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isContinuedProcessingTask])
        {
          v10 = [(_DASContinuedProcessingTaskUIClient *)self expirationEventForSuspendedActivity:v9];
          uuid = [v9 uuid];
          [(_DASContinuedProcessingTaskUIClient *)self postActivityEvent:v10 forIdentifier:uuid];

          [(_DASContinuedProcessingTaskUIClient *)self cleanupActivity:v9 didComplete:0];
        }
      }

      v6 = [suspendedCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)activitiesWereCompleted:(id)completed withSuccess:(BOOL)success
{
  successCopy = success;
  completedCopy = completed;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [completedCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(completedCopy);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isContinuedProcessingTask])
        {
          [(_DASContinuedProcessingTaskUIClient *)self cleanupActivity:v11 didComplete:successCopy];
        }
      }

      v8 = [completedCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (int64_t)expirationEventForSuspendedActivity:(id)activity
{
  activityCopy = activity;
  objc_sync_enter(activityCopy);
  v4 = [NSDictionary alloc];
  policyResponseMetadata = [activityCopy policyResponseMetadata];
  v6 = [v4 initWithDictionary:policyResponseMetadata copyItems:1];

  objc_sync_exit(activityCopy);
  v7 = +[_DASLowPowerModePolicy policyInstance];
  policyName = [v7 policyName];
  v9 = [v6 objectForKeyedSubscript:policyName];
  reason = [v9 reason];

  if (reason)
  {
    v23 = 5;
  }

  else
  {
    v11 = +[_DASViewfinderPolicy policyInstance];
    policyName2 = [v11 policyName];
    v13 = [v6 objectForKeyedSubscript:policyName2];
    reason2 = [v13 reason];

    if (reason2)
    {
      v23 = 3;
    }

    else
    {
      v15 = +[_DASConsoleModePolicy policyInstance];
      policyName3 = [v15 policyName];
      v17 = [v6 objectForKeyedSubscript:policyName3];
      reason3 = [v17 reason];

      if (reason3)
      {
        v23 = 4;
      }

      else
      {
        v19 = +[_DASThermalPolicy policyInstance];
        policyName4 = [v19 policyName];
        v21 = [v6 objectForKeyedSubscript:policyName4];
        reason4 = [v21 reason];

        if ((reason4 & 0x18) != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = 6;
        }
      }
    }
  }

  return v23;
}

- (void)beginActivity:(id)activity startingProgress:(id)progress
{
  activityCopy = activity;
  progressCopy = progress;
  continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
  linkToBundleIdentifier = [continuedProcessingWrapper linkToBundleIdentifier];
  v9 = linkToBundleIdentifier;
  if (linkToBundleIdentifier)
  {
    firstObject = linkToBundleIdentifier;
  }

  else
  {
    relatedApplications = [activityCopy relatedApplications];
    firstObject = [relatedApplications firstObject];
  }

  uuid = [activityCopy uuid];
  continuedProcessingWrapper2 = [activityCopy continuedProcessingWrapper];
  iconBundleIdentifier = [continuedProcessingWrapper2 iconBundleIdentifier];
  continuedProcessingWrapper3 = [activityCopy continuedProcessingWrapper];
  title = [continuedProcessingWrapper3 title];
  continuedProcessingWrapper4 = [activityCopy continuedProcessingWrapper];
  subtitle = [continuedProcessingWrapper4 subtitle];
  [(_DASContinuedProcessingTaskUIClient *)self startActivityWithIdentifier:uuid bundleIdentifier:firstObject imageUTI:iconBundleIdentifier activityName:title activityDescription:subtitle progress:progressCopy];
}

@end