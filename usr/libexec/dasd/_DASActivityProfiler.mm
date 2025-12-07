@interface _DASActivityProfiler
+ (id)sharedProfiler;
- (BOOL)errorCheck:(unint64_t)check withError:(int)error onActivity:(id)activity;
- (BOOL)isProfilingDelayedForActivity:(id)activity;
- (BOOL)shouldProfileActivity:(id)activity;
- (_DASActivityProfiler)init;
- (id)startRecordingNetworkTransfer:(id)transfer;
- (id)stopRecordingNetworkTransfer:(id)transfer;
- (void)endProfilingForActivity:(id)activity completed:(BOOL)completed withState:(id)state;
- (void)queue_endProfilingForActivity:(id)activity completed:(BOOL)completed withState:(id)state;
- (void)queue_startProfilingForActivity:(id)activity withState:(id)state;
- (void)startProfilingForActivity:(id)activity withState:(id)state;
- (void)startProfilingSnapshotForActivity:(id)activity withState:(id)state;
- (void)stopProfilingSnapshotForActivity:(id)activity endDate:(id)date completionStatus:(BOOL)status currentProfile:(id)profile withState:(id)state;
@end

@implementation _DASActivityProfiler

- (_DASActivityProfiler)init
{
  v25.receiver = self;
  v25.super_class = _DASActivityProfiler;
  v2 = [(_DASActivityProfiler *)&v25 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    activityToSession = v2->_activityToSession;
    v2->_activityToSession = v3;

    v5 = +[NSMutableDictionary dictionary];
    activityToSnapshot = v2->_activityToSnapshot;
    v2->_activityToSnapshot = v5;

    v7 = +[NSMutableDictionary dictionary];
    activityToProfile = v2->_activityToProfile;
    v2->_activityToProfile = v7;

    v9 = +[NSMutableDictionary dictionary];
    activityToProfilerStartDates = v2->_activityToProfilerStartDates;
    v2->_activityToProfilerStartDates = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);
    v13 = dispatch_queue_create("com.apple.duetactivityscheduler.activityProfiler", v12);
    queue = v2->_queue;
    v2->_queue = v13;

    v15 = [AnalyticsWorkspace alloc];
    v16 = [v15 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
    if (!v16)
    {
      v17 = qword_10020B5A8;
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Init: Error setting up symptom workspace", v24, 2u);
      }
    }

    v18 = [[UsageFeed alloc] initWithWorkspace:v16];
    symptomsFeed = v2->_symptomsFeed;
    v2->_symptomsFeed = v18;

    if (!v2->_symptomsFeed && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123010();
    }

    v20 = +[_DASBatteryTemperatureRecorder sharedInstance];
    batteryTemperatureRecorder = v2->_batteryTemperatureRecorder;
    v2->_batteryTemperatureRecorder = v20;

    mediaanalysisActivities = v2->_mediaanalysisActivities;
    v2->_mediaanalysisActivities = &off_1001CADC8;

    if (notify_register_check([@"com.apple.mediaanalysisd.serviceProcessID" UTF8String], &v2->_pidToken) && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123050();
    }
  }

  return v2;
}

+ (id)sharedProfiler
{
  v3 = [_DASDaemonLogger logForCategory:@"profiling"];
  v4 = qword_10020B5A8;
  qword_10020B5A8 = v3;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087D40;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B5B0 != -1)
  {
    dispatch_once(&qword_10020B5B0, block);
  }

  v5 = qword_10020B5B8;

  return v5;
}

- (BOOL)isProfilingDelayedForActivity:(id)activity
{
  mediaanalysisActivities = self->_mediaanalysisActivities;
  name = [activity name];
  LOBYTE(mediaanalysisActivities) = [(NSArray *)mediaanalysisActivities containsObject:name];

  return mediaanalysisActivities;
}

- (void)startProfilingForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087EA8;
  block[3] = &unk_1001B56B8;
  block[4] = self;
  v12 = activityCopy;
  v13 = stateCopy;
  v9 = stateCopy;
  v10 = activityCopy;
  dispatch_async(queue, block);
}

- (void)queue_startProfilingForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  if ([(_DASActivityProfiler *)self shouldProfileActivity:activityCopy])
  {
    v8 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = activityCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Starting profiling on activity %@", &v9, 0xCu);
    }

    [(_DASActivityProfiler *)self startProfilingSnapshotForActivity:activityCopy withState:stateCopy];
  }
}

- (BOOL)shouldProfileActivity:(id)activity
{
  activityCopy = activity;
  if (![activityCopy pid])
  {
    v8 = qword_10020B5A8;
    if (!os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
LABEL_8:
      v14 = 0;
      goto LABEL_23;
    }

    v9 = v8;
    [activityCopy interval];
    v32 = 138412546;
    v33 = activityCopy;
    v34 = 2048;
    v35 = v10;
    v11 = "Profiling not started for %@, interval: %f";
    v12 = v9;
    v13 = 22;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v32, v13);

    goto LABEL_8;
  }

  name = [activityCopy name];
  v6 = [name isEqualToString:@"com.apple.fileproviderd.background-download"];

  if (v6)
  {
    v7 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = activityCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Profiling enabled for fileproviderd background-download activity: %@", &v32, 0xCu);
    }

    goto LABEL_11;
  }

  if (([activityCopy isIntensive] & 1) == 0 && (objc_msgSend(activityCopy, "requiresNetwork") & 1) == 0)
  {
    v30 = qword_10020B5A8;
    if (!os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v9 = v30;
    v32 = 138412546;
    v33 = activityCopy;
    v34 = 1024;
    LODWORD(v35) = [activityCopy isIntensive];
    v11 = "Profiling not started for %@, isIntensive: %d";
    v12 = v9;
    v13 = 18;
    goto LABEL_7;
  }

LABEL_11:
  activityToProfilerStartDates = self->_activityToProfilerStartDates;
  name2 = [activityCopy name];
  v17 = [(NSMutableDictionary *)activityToProfilerStartDates objectForKeyedSubscript:name2];

  if (!v17)
  {
    v18 = [NSMutableArray arrayWithCapacity:3];
    v19 = self->_activityToProfilerStartDates;
    name3 = [activityCopy name];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:name3];
  }

  v21 = self->_activityToProfilerStartDates;
  name4 = [activityCopy name];
  v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:name4];

  if (objc_msgSend_count(v23) == 3)
  {
    lastObject = [v23 lastObject];
    v25 = +[NSDate date];
    v26 = 0;
    while (1)
    {
      [v25 timeIntervalSinceDate:lastObject];
      if (v27 <= 60.0)
      {
        break;
      }

      [v23 removeObject:lastObject];
      lastObject2 = [v23 lastObject];

      --v26;
      lastObject = lastObject2;
      if (v26 == -3)
      {
        goto LABEL_20;
      }
    }

    if (v26)
    {
      lastObject2 = lastObject;
LABEL_20:

      goto LABEL_21;
    }

    v31 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 138412290;
      v33 = activityCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Profiling not started for %@, rate limited", &v32, 0xCu);
    }

    v14 = 0;
  }

  else
  {
LABEL_21:
    lastObject = [activityCopy startDate];
    [v23 insertObject:lastObject atIndex:0];
    v14 = 1;
  }

LABEL_23:
  return v14;
}

- (void)startProfilingSnapshotForActivity:(id)activity withState:(id)state
{
  activityCopy = activity;
  v61 = 0;
  stateCopy = state;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:&off_1001CA090 forKeyedSubscript:@"version"];
  name = [activityCopy name];
  [v8 setObject:name forKeyedSubscript:@"activityname"];

  v10 = [NSNumber numberWithUnsignedLongLong:sub_100009078()];
  [v8 setObject:v10 forKeyedSubscript:@"cpuAwakeTime"];

  v11 = +[NSTimeZone localTimeZone];
  secondsFromGMT = [v11 secondsFromGMT];

  startDate = [activityCopy startDate];

  if (startDate)
  {
    startDate2 = [activityCopy startDate];
    [startDate2 timeIntervalSince1970WithTimeZoneOffset:secondsFromGMT];
    v15 = [NSNumber numberWithDouble:?];
    [v8 setObject:v15 forKeyedSubscript:@"startTime"];
  }

  else
  {
    [v8 setObject:&off_1001CA0A8 forKeyedSubscript:@"startTime"];
  }

  v16 = +[_CDContextQueries keyPathForPluginStatus];
  v17 = [stateCopy objectForKeyedSubscript:v16];
  bOOLValue = [v17 BOOLValue];

  v19 = +[_CDContextQueries keyPathForInUseStatus];
  v20 = [stateCopy objectForKeyedSubscript:v19];

  unsignedLongLongValue = [v20 unsignedLongLongValue];
  v22 = unsignedLongLongValue == 0;
  currentBatteryTemperature = [(_DASBatteryTemperatureRecorder *)self->_batteryTemperatureRecorder currentBatteryTemperature];
  v24 = [NSNumber numberWithInt:bOOLValue ^ 1];
  [v8 setObject:v24 forKeyedSubscript:@"startedOnBattery"];

  v25 = [NSNumber numberWithBool:v22];
  [v8 setObject:v25 forKeyedSubscript:@"startedInIdle"];

  v26 = [NSNumber numberWithInteger:currentBatteryTemperature];
  [v8 setObject:v26 forKeyedSubscript:@"startBatteryTemperature"];

  [activityCopy setStartedOnBattery:bOOLValue ^ 1];
  [activityCopy setStartedInIdle:v22];
  activityToProfile = self->_activityToProfile;
  v28 = [activityCopy description];
  [(NSMutableDictionary *)activityToProfile setObject:v8 forKeyedSubscript:v28];

  if ([(_DASActivityProfiler *)self isProfilingDelayedForActivity:activityCopy])
  {
    v60 = 0;
    state = notify_get_state(self->_pidToken, &v60);
    v30 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v60;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PID number found for mediaanalysisd-service is (%lu)\n", buf, 0xCu);
    }

    if (state && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123110();
    }

    if (v60)
    {
      [activityCopy setPid:?];
    }
  }

  v31 = pc_session_create();
  [activityCopy pid];
  v32 = pc_session_set_procpid();
  if (v32)
  {
    v33 = v32;
    v34 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012318C(activityCopy, v34, v33);
    }

    v35 = 0;
LABEL_19:
    pc_session_destroy();
    activityToSession = self->_activityToSession;
    v40 = [activityCopy description];
    [(NSMutableDictionary *)activityToSession removeObjectForKey:v40];
    goto LABEL_20;
  }

  v35 = [NSValue valueWithPointer:v31];
  v36 = pc_session_begin();
  v37 = qword_10020B5A8;
  v38 = os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG);
  if (v36)
  {
    if (v38)
    {
      sub_100123228(activityCopy, v37, v36);
    }

    goto LABEL_19;
  }

  if (v38)
  {
    sub_1001232C4();
  }

  v59 = self->_activityToSession;
  v40 = [activityCopy description];
  [(NSMutableDictionary *)v59 setObject:v35 forKeyedSubscript:v40];
LABEL_20:

  v41 = +[NSMutableDictionary dictionary];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *buf = 0u;
  *__error() = 255;
  if (proc_pid_rusage([activityCopy pid], 6, buf) << 24)
  {
    v42 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10012332C(activityCopy, v42);
    }

    [v41 removeObjectForKey:@"rusage"];
  }

  else
  {
    v43 = +[NSMutableDictionary dictionary];
    v44 = [NSNumber numberWithDouble:v78];
    [v43 setObject:v44 forKeyedSubscript:@"cpuCycle"];

    v45 = [NSNumber numberWithDouble:v72];
    [v43 setObject:v45 forKeyedSubscript:@"qosDefault"];

    v46 = [NSNumber numberWithDouble:*(&v72 + 1)];
    [v43 setObject:v46 forKeyedSubscript:@"qosMaintenance"];

    v47 = [NSNumber numberWithDouble:v73];
    [v43 setObject:v47 forKeyedSubscript:@"qosBackground"];

    v48 = [NSNumber numberWithDouble:*(&v73 + 1)];
    [v43 setObject:v48 forKeyedSubscript:@"qosUtility"];

    v49 = [NSNumber numberWithDouble:*(&v74 + 1)];
    [v43 setObject:v49 forKeyedSubscript:@"qosUserInit"];

    v50 = [NSNumber numberWithDouble:v75];
    [v43 setObject:v50 forKeyedSubscript:@"qosUserInteractive"];

    v51 = [NSNumber numberWithDouble:v74];
    [v43 setObject:v51 forKeyedSubscript:@"qosLegacy"];

    v52 = [NSNumber numberWithDouble:v71];
    [v43 setObject:v52 forKeyedSubscript:@"ioRead"];

    v53 = [NSNumber numberWithDouble:*(&v71 + 1)];
    [v43 setObject:v53 forKeyedSubscript:@"ioWrite"];

    v54 = [NSNumber numberWithDouble:*(&v78 + 1)];
    [v43 setObject:v54 forKeyedSubscript:@"billedEnergy"];

    v55 = [NSNumber numberWithDouble:v79];
    [v43 setObject:v55 forKeyedSubscript:@"servicedEnergy"];

    [v41 setObject:v43 forKeyedSubscript:@"rusage"];
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001233E0();
    }
  }

  v56 = [(_DASActivityProfiler *)self startRecordingNetworkTransfer:activityCopy];
  if (v56)
  {
    [v41 setObject:v56 forKeyedSubscript:@"network"];
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123448();
    }
  }

  else
  {
    [v41 removeObjectForKey:@"network"];
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001234B0();
    }
  }

  activityToSnapshot = self->_activityToSnapshot;
  v58 = [activityCopy description];
  [(NSMutableDictionary *)activityToSnapshot setObject:v41 forKeyedSubscript:v58];
}

- (void)endProfilingForActivity:(id)activity completed:(BOOL)completed withState:(id)state
{
  activityCopy = activity;
  stateCopy = state;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088D00;
  v13[3] = &unk_1001B7200;
  v13[4] = self;
  v14 = activityCopy;
  completedCopy = completed;
  v15 = stateCopy;
  v11 = stateCopy;
  v12 = activityCopy;
  dispatch_async(queue, v13);
}

- (void)queue_endProfilingForActivity:(id)activity completed:(BOOL)completed withState:(id)state
{
  completedCopy = completed;
  activityCopy = activity;
  stateCopy = state;
  activityToProfile = self->_activityToProfile;
  v11 = [activityCopy description];
  v12 = [(NSMutableDictionary *)activityToProfile objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = sub_100009078();
    v14 = [v12 objectForKeyedSubscript:@"cpuAwakeTime"];
    v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v13 - [v14 unsignedIntegerValue]);
    [v12 setObject:v15 forKeyedSubscript:@"cpuAwakeTime"];

    v16 = +[NSDate date];
    [(_DASActivityProfiler *)self stopProfilingSnapshotForActivity:activityCopy endDate:v16 completionStatus:completedCopy currentProfile:v12 withState:stateCopy];

    v17 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "endProfiling: %@", buf, 0xCu);
    }

    v18 = self->_activityToProfile;
    v19 = [activityCopy description];
    [(NSMutableDictionary *)v18 removeObjectForKey:v19];

    if (objc_msgSend_count(self->_activityToProfilerStartDates) >= 0xB)
    {
      allKeys = [(NSMutableDictionary *)self->_activityToProfilerStartDates allKeys];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = [allKeys countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v32 = stateCopy;
        v33 = activityCopy;
        v23 = 0;
        v24 = *v35;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(allKeys);
            }

            v26 = *(*(&v34 + 1) + 8 * i);
            v27 = [(NSMutableDictionary *)self->_activityToProfilerStartDates objectForKeyedSubscript:v26, v32, v33];
            firstObject = [v27 firstObject];

            [firstObject timeIntervalSinceNow];
            if (v29 < -60.0)
            {
              [(NSMutableDictionary *)self->_activityToProfilerStartDates removeObjectForKey:v26];
              ++v23;
            }
          }

          v22 = [allKeys countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v22);
        stateCopy = v32;
        activityCopy = v33;
        if (v23)
        {
          v30 = qword_10020B5A8;
          if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Cleaned up %llu stale rate-limiting records", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v31 = qword_10020B5A8;
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = activityCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "endProfiling: %@ Didn't start profiling", buf, 0xCu);
    }
  }
}

- (void)stopProfilingSnapshotForActivity:(id)activity endDate:(id)date completionStatus:(BOOL)status currentProfile:(id)profile withState:(id)state
{
  statusCopy = status;
  activityCopy = activity;
  dateCopy = date;
  profileCopy = profile;
  stateCopy = state;
  v16 = [profileCopy objectForKeyedSubscript:@"startTime"];

  if (v16)
  {
    startDate = [activityCopy startDate];
    [dateCopy timeIntervalSinceDate:startDate];
    v19 = v18;

    v20 = [NSNumber numberWithDouble:v19];
    [profileCopy setObject:v20 forKeyedSubscript:@"runTime"];
  }

  else
  {
    [profileCopy setObject:&off_1001CA0A8 forKeyedSubscript:@"runTime"];
  }

  v21 = +[NSTimeZone localTimeZone];
  secondsFromGMT = [v21 secondsFromGMT];

  [dateCopy timeIntervalSince1970WithTimeZoneOffset:secondsFromGMT];
  v23 = [NSNumber numberWithDouble:?];
  [profileCopy setObject:v23 forKeyedSubscript:@"endTime"];

  v24 = [NSNumber numberWithBool:statusCopy];
  [profileCopy setObject:v24 forKeyedSubscript:@"completed"];

  v25 = +[_CDContextQueries keyPathForPluginStatus];
  v26 = [stateCopy objectForKeyedSubscript:v25];
  bOOLValue = [v26 BOOLValue];

  v28 = +[_CDContextQueries keyPathForInUseStatus];
  v29 = [stateCopy objectForKeyedSubscript:v28];

  unsignedLongLongValue = [v29 unsignedLongLongValue];
  currentBatteryTemperature = [(_DASBatteryTemperatureRecorder *)self->_batteryTemperatureRecorder currentBatteryTemperature];
  v32 = [NSNumber numberWithInt:bOOLValue ^ 1];
  [profileCopy setObject:v32 forKeyedSubscript:@"endedOnBattery"];

  v33 = [NSNumber numberWithBool:unsignedLongLongValue == 0];
  [profileCopy setObject:v33 forKeyedSubscript:@"endedInIdle"];

  v34 = [NSNumber numberWithInteger:currentBatteryTemperature];
  [profileCopy setObject:v34 forKeyedSubscript:@"endBatteryTemperature"];

  activityToSession = self->_activityToSession;
  v36 = [activityCopy description];
  v37 = [(NSMutableDictionary *)activityToSession objectForKeyedSubscript:v36];
  pointerValue = [v37 pointerValue];

  if (pointerValue)
  {
    v39 = pc_session_end();
    v40 = pc_session_process();
    if (v39 | v40)
    {
      v41 = v40;
      v42 = qword_10020B5A8;
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buffer[0]) = 138412802;
        *(buffer + 4) = activityCopy;
        WORD2(buffer[1]) = 1024;
        *(&buffer[1] + 6) = v39;
        WORD1(buffer[2]) = 1024;
        HIDWORD(buffer[2]) = v41;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "endProfiling: %@ : Failed to end/process session with end_ret: %d procsess_ret: %d", buffer, 0x18u);
      }

      v43 = &__kCFBooleanFalse;
    }

    else
    {
      info = 0;
      buffer[0] = 0;
      value = pc_session_get_value();
      v45 = [activityCopy description];
      v46 = [(_DASActivityProfiler *)self errorCheck:0x63707574696D6500 withError:value onActivity:v45];

      if ((v46 & 1) == 0)
      {
        *buffer = *buffer / 1000000.0;
        if (*buffer != 0.0)
        {
          v47 = [NSNumber numberWithDouble:?];
          [profileCopy setObject:v47 forKeyedSubscript:@"cpuTime"];
        }
      }

      v48 = pc_session_get_value();
      v49 = [activityCopy description];
      [(_DASActivityProfiler *)self errorCheck:0x6D656D64656C7461 withError:v48 onActivity:v49];

      v50 = pc_session_get_value();
      v51 = [activityCopy description];
      [(_DASActivityProfiler *)self errorCheck:0x73746F7264697274 withError:v50 onActivity:v51];

      v43 = &__kCFBooleanTrue;
    }

    [profileCopy setObject:v43 forKeyedSubscript:@"sessionProfSuccess"];
    pc_session_destroy();
  }

  else
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123518();
    }

    [profileCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"sessionProfSuccess"];
  }

  activityToSnapshot = self->_activityToSnapshot;
  v53 = [activityCopy description];
  v54 = [(NSMutableDictionary *)activityToSnapshot objectForKeyedSubscript:v53];

  v55 = [v54 objectForKeyedSubscript:@"rusage"];
  if (!v55)
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001235E8();
    }

    goto LABEL_23;
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v158 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pid_rusage([activityCopy pid], 6, buffer))
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123580();
    }

LABEL_23:
    v56 = &__kCFBooleanFalse;
    goto LABEL_62;
  }

  v57 = v172;
  v145 = *(&v168 + 1);
  v146 = v169;
  v58 = v172;
  v59 = v166;
  v60 = v166;
  v61 = v167;
  v151 = *(&v172 + 1);
  v152 = v173;
  v148 = v168;
  v149 = v165;
  info = 0;
  mach_timebase_info(&info);
  if (v57)
  {
    v62 = [v55 objectForKeyedSubscript:@"cpuCycle"];
    [v62 doubleValue];
    v58 = v58 - v63;

    if (v59)
    {
      v64 = [NSNumber numberWithDouble:v58];
      [profileCopy setObject:v64 forKeyedSubscript:@"cpuCycle"];

      goto LABEL_28;
    }
  }

  else if (v59)
  {
LABEL_28:
    v65 = [v55 objectForKeyedSubscript:{@"qosDefault", v145}];
    [v65 doubleValue];
    v60 = (v60 - v66) * (info.numer / info.denom) / 1000000.0;

    if (v60 != 0.0)
    {
      v67 = [NSNumber numberWithDouble:v60];
      [profileCopy setObject:v67 forKeyedSubscript:@"qosDefault"];
    }
  }

  v68 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    v69 = [v55 objectForKeyedSubscript:@"qosMaintenance"];
    [v69 doubleValue];
    v68 = (v68 - v70) * (info.numer / info.denom) / 1000000.0;

    if (v68 != 0.0)
    {
      v71 = [NSNumber numberWithDouble:v68];
      [profileCopy setObject:v71 forKeyedSubscript:@"qosMaintenance"];
    }
  }

  v72 = v61;
  if (v61)
  {
    v73 = [v55 objectForKeyedSubscript:@"qosBackground"];
    [v73 doubleValue];
    v72 = (v72 - v74) * (info.numer / info.denom) / 1000000.0;

    if (v72 != 0.0)
    {
      v75 = [NSNumber numberWithDouble:v72];
      [profileCopy setObject:v75 forKeyedSubscript:@"qosBackground"];
    }
  }

  v76 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v77 = [v55 objectForKeyedSubscript:@"qosUtility"];
    [v77 doubleValue];
    v76 = (v76 - v78) * (info.numer / info.denom) / 1000000.0;

    if (v76 != 0.0)
    {
      v79 = [NSNumber numberWithDouble:v76];
      [profileCopy setObject:v79 forKeyedSubscript:@"qosUtility"];
    }
  }

  v80 = v145;
  if (v145)
  {
    v81 = [v55 objectForKeyedSubscript:@"qosUserInit"];
    [v81 doubleValue];
    v80 = (v80 - v82) * (info.numer / info.denom) / 1000000.0;

    if (v80 != 0.0)
    {
      v83 = [NSNumber numberWithDouble:v80];
      [profileCopy setObject:v83 forKeyedSubscript:@"qosUserInit"];
    }
  }

  v84 = v146;
  if (v146)
  {
    v85 = [v55 objectForKeyedSubscript:@"qosUserInteractive"];
    [v85 doubleValue];
    v84 = (v84 - v86) * (info.numer / info.denom) / 1000000.0;

    if (v84 != 0.0)
    {
      v87 = [NSNumber numberWithDouble:v84];
      [profileCopy setObject:v87 forKeyedSubscript:@"qosUserInteractive"];
    }
  }

  v88 = v148;
  v153 = v58;
  if (v148)
  {
    v89 = [v55 objectForKeyedSubscript:@"qosLegacy"];
    [v89 doubleValue];
    v88 = (v88 - v90) * (info.numer / info.denom) / 1000000.0;

    if (v88 != 0.0)
    {
      v91 = [NSNumber numberWithDouble:v88];
      [profileCopy setObject:v91 forKeyedSubscript:@"qosLegacy"];
    }
  }

  v92 = v149;
  v150 = v60;
  if (v149)
  {
    v93 = [v55 objectForKeyedSubscript:@"ioRead"];
    [v93 doubleValue];
    v92 = v92 - v94;

    if (v92 != 0.0)
    {
      v95 = [NSNumber numberWithDouble:v92];
      [profileCopy setObject:v95 forKeyedSubscript:@"ioRead"];
    }
  }

  v96 = *(&v149 + 1);
  v154 = v76;
  v147 = v84;
  if (!*(&v149 + 1) || ([v55 objectForKeyedSubscript:@"ioWrite"], v97 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v97, "doubleValue"), v96 = v96 - v98, v97, v96 == 0.0))
  {
    v99 = v68;
  }

  else
  {
    v99 = v68;
    v100 = [NSNumber numberWithDouble:v96];
    [profileCopy setObject:v100 forKeyedSubscript:@"ioWrite"];
  }

  v101 = v80;
  v102 = v151;
  v103 = v72;
  if (v151)
  {
    v104 = [v55 objectForKeyedSubscript:@"billedEnergy"];
    [v104 doubleValue];
    v102 = v102 - v105;

    if (v102 != 0.0)
    {
      v106 = [NSNumber numberWithDouble:v102];
      [profileCopy setObject:v106 forKeyedSubscript:@"billedEnergy"];
    }
  }

  if (v152)
  {
    v107 = [v55 objectForKeyedSubscript:@"servicedEnergy"];
    [v107 doubleValue];
    v109 = v152 - v108;

    if (v109 != 0.0)
    {
      v110 = [NSNumber numberWithDouble:v109];
      [profileCopy setObject:v110 forKeyedSubscript:@"servicedEnergy"];
    }
  }

  [activityCopy setCpuTimeConsumed:{v150 + v99 + v103 + v154 + v101 + v147 + v88, v145}];
  [activityCopy setCpuCycleConsumed:v153];
  [activityCopy setDiskIOConsumed:v92 + v96];
  [activityCopy setDiskIOWrites:v96];
  [activityCopy setBilledEnergy:v102];
  v56 = &__kCFBooleanTrue;
LABEL_62:
  [profileCopy setObject:v56 forKeyedSubscript:@"rusageProfSuccess"];
  v111 = [v54 objectForKeyedSubscript:@"network"];
  if (v111)
  {
    v112 = [(_DASActivityProfiler *)self stopRecordingNetworkTransfer:activityCopy];
    if (v112)
    {
      v155 = dateCopy;
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        sub_100123650();
      }

      v113 = [v112 objectForKeyedSubscript:@"wifiDown"];
      [v113 doubleValue];
      v115 = v114;
      v116 = [v111 objectForKeyedSubscript:@"wifiDown"];
      [v116 doubleValue];
      v118 = v115 - v117;

      if (v118 != 0.0)
      {
        v119 = [NSNumber numberWithDouble:v118];
        [profileCopy setObject:v119 forKeyedSubscript:@"wifiDown"];
      }

      v120 = [v112 objectForKeyedSubscript:@"cellDown"];
      [v120 doubleValue];
      v122 = v121;
      v123 = [v111 objectForKeyedSubscript:@"cellDown"];
      [v123 doubleValue];
      v125 = v122 - v124;

      if (v125 != 0.0)
      {
        v126 = [NSNumber numberWithDouble:v125];
        [profileCopy setObject:v126 forKeyedSubscript:@"cellDown"];
      }

      v127 = [v112 objectForKeyedSubscript:@"wifiUp"];
      [v127 doubleValue];
      v129 = v128;
      v130 = [v111 objectForKeyedSubscript:@"wifiUp"];
      [v130 doubleValue];
      v132 = v129 - v131;

      if (v132 != 0.0)
      {
        v133 = [NSNumber numberWithDouble:v132];
        [profileCopy setObject:v133 forKeyedSubscript:@"wifiUp"];
      }

      v134 = [v112 objectForKeyedSubscript:@"cellUp"];
      [v134 doubleValue];
      v136 = v135;
      v137 = [v111 objectForKeyedSubscript:@"cellUp"];
      [v137 doubleValue];
      v139 = v136 - v138;

      if (v139 != 0.0)
      {
        v140 = [NSNumber numberWithDouble:v139];
        [profileCopy setObject:v140 forKeyedSubscript:@"cellUp"];
      }

      [activityCopy setDataConsumed:v118 + v125 + v132 + v139];
      [profileCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"networkProfSuccess"];
      dateCopy = v155;
    }

    else
    {
      [profileCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"networkProfSuccess"];
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001236B8();
      }
    }
  }

  else
  {
    [profileCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"networkProfSuccess"];
  }

  v141 = self->_activityToSession;
  v142 = [activityCopy description];
  [(NSMutableDictionary *)v141 removeObjectForKey:v142];

  v143 = self->_activityToSnapshot;
  v144 = [activityCopy description];
  [(NSMutableDictionary *)v143 removeObjectForKey:v144];
}

- (id)startRecordingNetworkTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = +[NSMutableDictionary dictionary];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v34 = 0;
  v38 = 0;
  v42 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [transferCopy pid]);
  if (!v7)
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001238C0();
    }

    goto LABEL_12;
  }

  if (![transferCopy pid] || (+[NSSet setWithObject:](NSSet, "setWithObject:", v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123858();
    }

LABEL_12:
    v13 = 0;
    goto LABEL_17;
  }

  v19 = kUsageProcessProcName;
  v43 = kSymptomAnalyticsServiceRefreshUsage;
  v44 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008A5B4;
  v20[3] = &unk_1001B7228;
  v23 = &v39;
  v24 = &v31;
  v25 = &v35;
  v26 = &v27;
  v21 = transferCopy;
  v10 = v6;
  v22 = v10;
  v11 = objc_retainBlock(v20);
  if (([(UsageFeed *)self->_symptomsFeed usageToDateWithOptionsFor:v8 nameKind:v19 options:v9 reply:v11]& 1) != 0)
  {
    v12 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(v10, v12))
    {
      v15 = [NSNumber numberWithDouble:v40[3]];
      [v5 setObject:v15 forKeyedSubscript:@"wifiDown"];

      v16 = [NSNumber numberWithDouble:v36[3]];
      [v5 setObject:v16 forKeyedSubscript:@"wifiUp"];

      v17 = [NSNumber numberWithDouble:v32[3]];
      [v5 setObject:v17 forKeyedSubscript:@"cellDown"];

      v18 = [NSNumber numberWithDouble:v28[3]];
      [v5 setObject:v18 forKeyedSubscript:@"cellUp"];

      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001237F0();
      }

      v13 = v5;
      goto LABEL_16;
    }

    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123788();
    }
  }

  else if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100123720();
  }

  v13 = 0;
LABEL_16:

LABEL_17:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v13;
}

- (id)stopRecordingNetworkTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = +[NSMutableDictionary dictionary];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v35 = 0;
  v39 = 0;
  v43 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = +[_DASUtils processNameFromPID:](_DASUtils, "processNameFromPID:", [transferCopy pid]);
  if (!v7)
  {
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123B38();
    }

    goto LABEL_15;
  }

  if ([transferCopy requestsApplicationLaunch])
  {
    relatedApplications = [transferCopy relatedApplications];
    v9 = [NSSet setWithArray:relatedApplications];

    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if (![transferCopy pid] || (+[NSSet setWithObject:](NSSet, "setWithObject:", v7), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:
    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123AD0();
    }

LABEL_15:
    v14 = 0;
    goto LABEL_20;
  }

  v20 = kUsageProcessProcName;
  v44 = kSymptomAnalyticsServiceRefreshUsage;
  v45 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008ACC0;
  v21[3] = &unk_1001B7228;
  v24 = &v40;
  v25 = &v32;
  v26 = &v36;
  v27 = &v28;
  v22 = transferCopy;
  v11 = v6;
  v23 = v11;
  v12 = objc_retainBlock(v21);
  if (([(UsageFeed *)self->_symptomsFeed usageToDateWithOptionsFor:v9 nameKind:v20 options:v10 reply:v12]& 1) != 0)
  {
    v13 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(v11, v13))
    {
      v16 = [NSNumber numberWithDouble:v41[3]];
      [v5 setObject:v16 forKeyedSubscript:@"wifiDown"];

      v17 = [NSNumber numberWithDouble:v37[3]];
      [v5 setObject:v17 forKeyedSubscript:@"wifiUp"];

      v18 = [NSNumber numberWithDouble:v33[3]];
      [v5 setObject:v18 forKeyedSubscript:@"cellDown"];

      v19 = [NSNumber numberWithDouble:v29[3]];
      [v5 setObject:v19 forKeyedSubscript:@"cellUp"];

      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
      {
        sub_100123A68();
      }

      v14 = v5;
      goto LABEL_19;
    }

    if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
    {
      sub_100123A00();
    }
  }

  else if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100123998();
  }

  v14 = 0;
LABEL_19:

LABEL_20:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v14;
}

- (BOOL)errorCheck:(unint64_t)check withError:(int)error onActivity:(id)activity
{
  activityCopy = activity;
  if (error)
  {
    if (error > 44)
    {
      if (error == 45)
      {
        if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
        {
          sub_100123CE0();
        }
      }

      else if (error == 93 && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
      {
        sub_100123C10();
      }
    }

    else if (error == 22)
    {
      if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
      {
        sub_100123D48();
      }
    }

    else if (error == 34 && os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
    {
      sub_100123C78();
    }
  }

  return error != 0;
}

@end