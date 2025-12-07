@interface _DASBGSystemTask
+ (BOOL)hasFastPassRun:(id)run semanticVersion:(int64_t)version;
+ (BOOL)resetFastPass:(id)pass resetAll:(BOOL)all;
+ (id)allFastPassIdentifiers;
+ (id)resourcesDescriptionFromBitmap:(int64_t)bitmap;
+ (void)garbageCollectActivityDates;
+ (void)initialize;
+ (void)markFastPassActivityDone:(id)done semanticVersion:(int64_t)version;
- (BOOL)hasInstallActivityRun;
- (BOOL)validateFastPassSubmissionForActivity:(id)activity featureCodes:(id)codes service:(id)service;
- (BOOL)validateFeatureCodes:(id)codes forToken:(unint64_t)token;
- (NSString)name;
- (_DASBGSystemTask)initWithDescriptor:(id)descriptor withToken:(unint64_t)token withUID:(unsigned int)d withService:(id)service staticSubmission:(BOOL)submission task:(id)task;
- (double)initialDelay;
- (id)aboutMe;
- (id)deadlineTime;
- (id)description;
- (id)eligibleTime;
- (id)getActivityBaseTime;
- (id)initForTestWithIdentifier:(id)identifier;
- (id)resourcesDescription;
- (id)stateString;
- (void)adjustBaseTimeByOffset:(double)offset;
- (void)advanceBaseTime;
- (void)loadBaseTime;
- (void)markInstallActivityDone;
- (void)markStopped:(id)stopped;
- (void)resetBaseTime;
- (void)saveActivityBaseTime:(id)time;
- (void)updateFeatureCodesForActivity:(id)activity;
@end

@implementation _DASBGSystemTask

- (void)loadBaseTime
{
  v8 = +[NSDate date];
  if (self->_type == 2)
  {
    getActivityBaseTime = [(_DASBGSystemTask *)self getActivityBaseTime];
    baseTime = self->_baseTime;
    p_baseTime = &self->_baseTime;
    *p_baseTime = getActivityBaseTime;

    v6 = [v8 dateByAddingTimeInterval:-*(p_baseTime - 7)];
    if ([*p_baseTime compare:v6] == -1)
    {
      objc_storeStrong(p_baseTime, v6);
    }
  }

  else
  {
    [(_DASBGSystemTask *)self initialDelay];
    v7 = [v8 dateByAddingTimeInterval:?];
    v6 = self->_baseTime;
    self->_baseTime = v7;
  }
}

- (double)initialDelay
{
  random_initial_delay = self->_random_initial_delay;
  if (random_initial_delay == 0.0)
  {
    return 0.0;
  }

  else
  {
    return arc4random_uniform(random_initial_delay);
  }
}

- (id)eligibleTime
{
  if (self->_type == 2)
  {
    tempDelay = self->_tempDelay;
    if (tempDelay == 0.0)
    {
      tempDelay = self->_minDurationBetweenInstances;
    }

    baseTime = self->_baseTime;
  }

  else
  {
    tempDelay = self->_startAfter;
    baseTime = self->_baseTime;
  }

  v4 = [(NSDate *)baseTime dateByAddingTimeInterval:tempDelay];

  return v4;
}

- (id)deadlineTime
{
  eligibleTime = [(_DASBGSystemTask *)self eligibleTime];
  v4 = 128;
  if (self->_type == 2)
  {
    v4 = 104;
  }

  v5 = [(NSDate *)self->_baseTime dateByAddingTimeInterval:*(&self->super.isa + v4)];
  if ([v5 compare:eligibleTime] == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = eligibleTime;
  }

  v7 = v6;

  return v6;
}

- (NSString)name
{
  v3 = objc_opt_class();
  identifier = self->_identifier;
  uid = self->_uid;

  return [v3 taskNameWithIdentifier:identifier UID:uid];
}

- (id)resourcesDescription
{
  v3 = objc_opt_class();
  resources = [(_DASBGSystemTask *)self resources];

  return [v3 resourcesDescriptionFromBitmap:resources];
}

- (id)description
{
  name = [(_DASBGSystemTask *)self name];
  v4 = [NSString stringWithFormat:@"%@ (%p)", name, self];

  return v4;
}

- (void)advanceBaseTime
{
  v3 = +[NSDate date];
  if (self->_type != 2)
  {
    objc_storeStrong(&self->_baseTime, v3);
    self->_tempDelay = 0.0;
    goto LABEL_19;
  }

  v4 = [(NSDate *)self->_baseTime dateByAddingTimeInterval:self->_interval];
  v5 = [(NSDate *)v3 dateByAddingTimeInterval:self->_interval * -2.0];
  v6 = [(NSDate *)v3 dateByAddingTimeInterval:self->_interval + self->_interval];
  if ([(NSDate *)v4 compare:v5]== NSOrderedAscending)
  {
    v7 = v5;

    v12 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v12;
      name = [(_DASBGSystemTask *)self name];
      *v24 = 138543362;
      *&v24[4] = name;
      v11 = "Base Time is earlier than 2 * interval ago, moving forward for %{public}@";
      goto LABEL_9;
    }
  }

  else
  {
    if ([(NSDate *)v4 compare:v6]!= 1)
    {
      v7 = v4;
      goto LABEL_11;
    }

    v7 = v6;

    v8 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      name = [(_DASBGSystemTask *)self name];
      *v24 = 138543362;
      *&v24[4] = name;
      v11 = "Base Time is later than 2 * interval from now, moving back for %{public}@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, v24, 0xCu);
    }
  }

LABEL_11:
  startTime = self->_startTime;
  if (!startTime)
  {
    startTime = v3;
  }

  v14 = startTime;
  v15 = v14;
  v16 = 0.0;
  if (self->_minDurationBetweenInstances != 0.0 && [(NSDate *)v14 compare:v7]== 1)
  {
    v17 = [(NSDate *)v15 dateByAddingTimeInterval:self->_minDurationBetweenInstances];
    [v17 timeIntervalSinceDate:v7];
    v16 = v18;
    v19 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      name2 = [(_DASBGSystemTask *)self name];
      *v24 = 134218242;
      *&v24[4] = v16;
      *&v24[12] = 2114;
      *&v24[14] = name2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Using temporary delay of %lld seconds to account for late fire of %{public}@", v24, 0x16u);
    }
  }

  [(_DASBGSystemTask *)self saveActivityBaseTime:v7, *v24, *&v24[8]];
  baseTime = self->_baseTime;
  self->_baseTime = v7;
  v23 = v7;

  self->_tempDelay = v16;
LABEL_19:
}

+ (void)initialize
{
  v3 = [_DASDaemonLogger logForCategory:@"BGST"];
  v4 = qword_10020B438;
  qword_10020B438 = v3;

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.bg.system.task"];
  v6 = qword_10020B440;
  qword_10020B440 = v5;

  v7 = [qword_10020B440 dictionaryForKey:@"ActivityBaseDates"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    v10 = qword_10020B448;
    qword_10020B448 = v9;

    +[_DASBGSystemTask garbageCollectActivityDates];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = qword_10020B448;
    qword_10020B448 = v11;
  }

  v13 = +[_DASBGSystemTaskHelper sharedInstance];
  activityQueue = [v13 activityQueue];
  v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, activityQueue);
  v16 = qword_10020B450;
  qword_10020B450 = v15;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006FD40;
  handler[3] = &unk_1001B54A0;
  handler[4] = self;
  dispatch_source_set_event_handler(qword_10020B450, handler);
  v17 = qword_10020B450;
  v18 = dispatch_time(0, 86400000000000);
  dispatch_source_set_timer(v17, v18, 0x4E94914F0000uLL, 0x13A52453C000uLL);
  dispatch_activate(qword_10020B450);
}

+ (void)garbageCollectActivityDates
{
  if (objc_msgSend_count(qword_10020B448, a2))
  {
    v2 = +[NSDate date];
    v3 = [v2 dateByAddingTimeInterval:-4838400.0];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allKeys = [qword_10020B448 allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [qword_10020B448 objectForKeyedSubscript:v9];
          if ([v10 compare:v3] == -1)
          {
            [qword_10020B448 removeObjectForKey:v9];
          }

          else if ([v10 compare:v2] == 1)
          {
            [qword_10020B448 setObject:v2 forKeyedSubscript:v9];
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (_DASBGSystemTask)initWithDescriptor:(id)descriptor withToken:(unint64_t)token withUID:(unsigned int)d withService:(id)service staticSubmission:(BOOL)submission task:(id)task
{
  submissionCopy = submission;
  descriptorCopy = descriptor;
  serviceCopy = service;
  taskCopy = task;
  v149.receiver = self;
  v149.super_class = _DASBGSystemTask;
  v15 = [(_DASBGSystemTask *)&v149 init];

  if (xpc_get_type(descriptorCopy) != &_xpc_type_dictionary)
  {
    sub_100120F48();
  }

  memset(v154, 0, sizeof(v154));
  if ((xpc_get_event_name() & 1) == 0)
  {
    v21 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_100120F64(v21);
    }

    goto LABEL_9;
  }

  v16 = [NSString stringWithUTF8String:v154];
  identifier = v15->_identifier;
  v15->_identifier = v16;

  v15->_token = token;
  v15->_uid = d;
  objc_storeStrong(&v15->_serviceName, service);
  v15->_suspensionReason = -1;
  if (xpc_dictionary_get_BOOL(descriptorCopy, "PostInstall"))
  {
    if ([(_DASBGSystemTask *)v15 hasInstallActivityRun])
    {
      v18 = qword_10020B438;
      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        name = [(_DASBGSystemTask *)v15 name];
        *buf = 138543362;
        *&buf[4] = name;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: postinstall activity has already run on this build", buf, 0xCu);
      }

      goto LABEL_9;
    }

    v15->_post_install = 1;
  }

  v24 = xpc_dictionary_get_dictionary(descriptorCopy, "RepeatingTask");
  v25 = v24;
  if (!v24 || xpc_get_type(v24) != &_xpc_type_dictionary)
  {
    v15->_type = 1;
    v15->_startAfter = 0.0;
    v15->_trySchedulingBefore = 0.0;
    v26 = xpc_dictionary_get_dictionary(descriptorCopy, "NonRepeatingTask");

    if (!v26 || xpc_get_type(v26) != &_xpc_type_dictionary)
    {
      goto LABEL_46;
    }

    v140 = _CFXPCCreateCFObjectFromXPCObject();
    v27 = [v140 objectForKey:@"FastPassTask"];
    v28 = v27;
    if (!v27)
    {
LABEL_45:
      v51 = [v140 objectForKeyedSubscript:@"ScheduleAfter"];
      v15->_startAfter = [v51 intValue];

      v52 = [v140 objectForKeyedSubscript:@"TrySchedulingBefore"];
      v15->_trySchedulingBefore = [v52 intValue];

LABEL_46:
      startAfter = v15->_startAfter;
      if (v15->_trySchedulingBefore < startAfter)
      {
        v15->_trySchedulingBefore = startAfter;
      }

      v25 = v26;
      goto LABEL_49;
    }

    v29 = [v27 objectForKey:@"SemanticVersion"];
    v15->_semanticVersion = [v29 intValue];

    v30 = [v28 objectForKey:@"ReRun"];
    v15->_reRun = [v30 BOOLValue];

    if (submissionCopy)
    {
      if (v15->_reRun)
      {
        v31 = qword_10020B438;
        if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
        {
          sub_1001210E8(v31, v15);
        }

LABEL_37:

LABEL_9:
        v22 = 0;
        goto LABEL_10;
      }
    }

    else if (v15->_reRun)
    {
LABEL_39:
      v45 = qword_10020B438;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(_DASBGSystemTask *)v15 name];
        semanticVersion = [(_DASBGSystemTask *)v15 semanticVersion];
        *buf = 138543618;
        *&buf[4] = name2;
        *&buf[12] = 1024;
        *&buf[14] = semanticVersion;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ v%d: Allowing FastPass resubmission", buf, 0x12u);
      }

      v48 = objc_opt_class();
      name3 = [(_DASBGSystemTask *)v15 name];
      [v48 resetFastPass:name3 resetAll:0];

LABEL_42:
      v50 = [v28 objectForKey:@"ProcessingTaskIdentifiers"];
      if (objc_msgSend_count(v50))
      {
        objc_storeStrong(&v15->_processingTaskIdentifiers, v50);
      }

      v15->_type = 3;

      goto LABEL_45;
    }

    v39 = objc_opt_class();
    name4 = [(_DASBGSystemTask *)v15 name];
    LOBYTE(v39) = [v39 hasFastPassRun:name4 semanticVersion:{-[_DASBGSystemTask semanticVersion](v15, "semanticVersion")}];

    if (v39)
    {
      v41 = qword_10020B438;
      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
        name5 = [(_DASBGSystemTask *)v15 name];
        semanticVersion2 = [(_DASBGSystemTask *)v15 semanticVersion];
        *buf = 138543618;
        *&buf[4] = name5;
        *&buf[12] = 1024;
        *&buf[14] = semanticVersion2;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ v%d: FastPass activity has already run on this release", buf, 0x12u);
      }

      goto LABEL_37;
    }

    if (!v15->_reRun)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v15->_post_install)
  {
    v32 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_100121048(v32, v15);
    }

    goto LABEL_9;
  }

  v33 = _CFXPCCreateCFObjectFromXPCObject();
  v15->_type = 2;
  v34 = [v33 objectForKeyedSubscript:@"Interval"];
  v15->_interval = [v34 intValue];

  v35 = [v33 objectForKeyedSubscript:@"MinDurationBetweenInstances"];
  v15->_minDurationBetweenInstances = [v35 intValue];

  interval = v15->_interval;
  if (interval < 300.0)
  {
    v38 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_100120FA8(v38, v15);
    }

    goto LABEL_9;
  }

  minDurationBetweenInstances = v15->_minDurationBetweenInstances;
  if (minDurationBetweenInstances == 0.0 || minDurationBetweenInstances > interval)
  {
    v15->_minDurationBetweenInstances = interval * 0.8;
  }

LABEL_49:
  v54 = xpc_dictionary_get_array(descriptorCopy, "FeatureCodes");

  if (v54 && xpc_get_type(v54) == &_xpc_type_array)
  {
    v59 = _CFXPCCreateCFObjectFromXPCObject();
    if (objc_msgSend_count(v59))
    {
      if ([(_DASBGSystemTask *)v15 validateFeatureCodes:v59 forToken:token])
      {
        objc_storeStrong(&v15->_featureCodes, v59);

        goto LABEL_51;
      }

      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
      {
        sub_100121188();
      }
    }

    else if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_1001211F0();
    }

    goto LABEL_9;
  }

LABEL_51:
  if (v15->_type == 3)
  {
    featureCodes = v15->_featureCodes;
    if (!featureCodes)
    {
      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
      {
        sub_1001218DC();
      }

      goto LABEL_186;
    }

    if (![(_DASBGSystemTask *)v15 validateFastPassSubmissionForActivity:v15->_identifier featureCodes:featureCodes service:serviceCopy])
    {
      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
      {
        sub_100121258();
      }

      goto LABEL_186;
    }

    [(_DASBGSystemTask *)v15 updateFeatureCodesForActivity:v15->_identifier];
  }

  v15->_priority = 1;
  v15->_requiresExternalPower = 1;
  string = xpc_dictionary_get_string(descriptorCopy, "Priority");
  v57 = string;
  if (!string)
  {
    if (v15->_type != 3)
    {
      goto LABEL_80;
    }

    goto LABEL_66;
  }

  if (!strcmp(string, "Maintenance"))
  {
    goto LABEL_80;
  }

  if (!strcmp(v57, "Utility"))
  {
LABEL_66:
    v60 = 2;
LABEL_79:
    v15->_priority = v60;
    v15->_requiresExternalPower = 0;
    goto LABEL_80;
  }

  if (!strcmp(v57, "UserInitiated"))
  {
    v60 = 3;
    goto LABEL_79;
  }

  v58 = qword_10020B438;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    sub_1001212C0(v15, v57, v58);
  }

LABEL_80:
  v61 = xpc_dictionary_get_value(descriptorCopy, "RequiresExternalPower");

  if (v61)
  {
    v15->_requiresExternalPower = xpc_BOOL_get_value(v61);
  }

  v15->_random_initial_delay = xpc_dictionary_get_int64(descriptorCopy, "RandomInitialDelay");
  v15->_expected_duration = xpc_dictionary_get_int64(descriptorCopy, "ExpectedDuration");
  v62 = xpc_dictionary_get_array(descriptorCopy, "RelatedApplications");

  if (v62 && xpc_get_type(v62) == &_xpc_type_array)
  {
    v63 = _CFXPCCreateCFObjectFromXPCObject();
    related_applications = v15->_related_applications;
    v15->_related_applications = v63;
  }

  v65 = xpc_dictionary_get_array(descriptorCopy, "InvolvedProcesses");

  if (v65 && xpc_get_type(v65) == &_xpc_type_array)
  {
    v66 = _CFXPCCreateCFObjectFromXPCObject();
    involved_processes = v15->_involved_processes;
    v15->_involved_processes = v66;
  }

  v68 = xpc_dictionary_get_value(descriptorCopy, "RequestsImmediateRuntime");

  if (v68)
  {
    v15->_requestsImmediateRuntime = xpc_BOOL_get_value(v68);
  }

  v54 = xpc_dictionary_get_value(descriptorCopy, "RunOnAppForeground");

  if (v54)
  {
    if (xpc_get_type(v54) == &_xpc_type_BOOL)
    {
      value = xpc_BOOL_get_value(v54);
      v70 = value;
      if (value)
      {
        if (!objc_msgSend_count(v15->_related_applications))
        {
          v123 = qword_10020B438;
          if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
          {
            sub_1001213B4(v123, v15);
          }

          goto LABEL_186;
        }

        v15->_runOnAppForeground = v70;
      }
    }
  }

  v71 = xpc_dictionary_get_value(descriptorCopy, "RunWhenAppLaunchUnlikely");

  if (v71)
  {
    if (xpc_get_type(v71) == &_xpc_type_BOOL)
    {
      v72 = xpc_BOOL_get_value(v71);
      v73 = v72;
      if (v72)
      {
        if (!objc_msgSend_count(v15->_related_applications))
        {
          v124 = qword_10020B438;
          if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
          {
            sub_100121454(v124, v15);
          }

          goto LABEL_183;
        }

        v15->_runWhenAppLaunchUnlikely = v73;
      }
    }
  }

  v54 = xpc_dictionary_get_value(descriptorCopy, "RequestsApplicationLaunch");

  if (v54)
  {
    if (xpc_get_type(v54) == &_xpc_type_BOOL)
    {
      v74 = xpc_BOOL_get_value(v54);
      v75 = v74;
      if (v74)
      {
        if (objc_msgSend_count(v15->_related_applications))
        {
          v15->_requestsApplicationLaunch = v75;
          goto LABEL_105;
        }

        v125 = qword_10020B438;
        if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
        {
          sub_1001214F4(v125, v15);
        }

LABEL_186:

        goto LABEL_9;
      }
    }
  }

LABEL_105:
  v71 = xpc_dictionary_get_value(descriptorCopy, "BeforeApplicationLaunch");

  if (v71)
  {
    if (xpc_get_type(v71) == &_xpc_type_BOOL)
    {
      v76 = xpc_BOOL_get_value(v71);
      v77 = v76;
      if (v76)
      {
        if (objc_msgSend_count(v15->_related_applications))
        {
          v15->_beforeApplicationLaunch = v77;
          goto LABEL_110;
        }

        v126 = qword_10020B438;
        if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
        {
          sub_100121594(v126, v15);
        }

LABEL_183:

        goto LABEL_9;
      }
    }
  }

LABEL_110:
  v78 = xpc_dictionary_get_value(descriptorCopy, "UserRequestedBackupTask");

  if (v78)
  {
    v15->_user_requested_backup_task = xpc_BOOL_get_value(v78);
  }

  v79 = xpc_dictionary_get_dictionary(descriptorCopy, "NetworkEndpoint");

  if (v79 && xpc_get_type(v79) == &_xpc_type_dictionary)
  {
    v80 = nw_endpoint_create_from_dictionary();
    network_endpoint = v15->_network_endpoint;
    v15->_network_endpoint = v80;
  }

  v82 = xpc_dictionary_get_dictionary(descriptorCopy, "NetworkParameters");

  if (v82 && xpc_get_type(v82) == &_xpc_type_dictionary)
  {
    v83 = nw_parameters_create_from_dictionary();
    network_parameters = v15->_network_parameters;
    v15->_network_parameters = v83;
  }

  v15->_requires_buddy_complete = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresBuddyComplete");
  v85 = xpc_dictionary_get_string(descriptorCopy, "GroupName");
  if (v85)
  {
    v86 = [NSString stringWithUTF8String:v85];
    group_name = v15->_group_name;
    v15->_group_name = v86;
  }

  if (v15->_group_name)
  {
    v88 = xpc_dictionary_get_value(descriptorCopy, "GroupConcurrencyLimit");

    if (v88)
    {
      int64 = xpc_dictionary_get_int64(descriptorCopy, "GroupConcurrencyLimit");
    }

    else
    {
      int64 = 1;
    }

    v15->_group_concurrency_limit = int64;
    v82 = v88;
  }

  v90 = xpc_dictionary_get_string(descriptorCopy, "RateLimitConfigurationName");
  if (v90)
  {
    v91 = [NSString stringWithUTF8String:v90];
    rateLimitConfigurationName = v15->_rateLimitConfigurationName;
    v15->_rateLimitConfigurationName = v91;
  }

  v15->_requires_significant_user_inactivity = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresSignificantUserInactivity");
  v15->_requiresUserInactivity = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresUserInactivity");
  v15->_power_nap = xpc_dictionary_get_BOOL(descriptorCopy, "PowerNap");
  v15->_app_refresh = xpc_dictionary_get_BOOL(descriptorCopy, "AppRefresh");
  v15->_prevents_device_sleep = xpc_dictionary_get_BOOL(descriptorCopy, "PreventsDeviceSleep");
  v15->_resource_intensive = xpc_dictionary_get_BOOL(descriptorCopy, "ResourceIntensive");
  v93 = xpc_dictionary_get_int64(descriptorCopy, "Resources");
  if (v93 <= 1)
  {
    v94 = 1;
  }

  else
  {
    v94 = v93;
  }

  v15->_resources = v94;
  v15->_requires_inexpensive_network = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresInexpensiveNetworkConnectivity");
  v15->_requires_unconstrained_network = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresUnconstrainedNetworkConnectivity");
  v95 = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresNetworkConnectivity") || v15->_requires_inexpensive_network || v15->_requires_unconstrained_network;
  v15->_requires_network_connectivity = v95 & 1;
  v15->_expected_network_download_size_bytes = xpc_dictionary_get_int64(descriptorCopy, "NetworkDownloadSize");
  v15->_expected_network_upload_size_bytes = xpc_dictionary_get_int64(descriptorCopy, "NetworkUploadSize");
  v15->_may_reboot_device = xpc_dictionary_get_BOOL(descriptorCopy, "MayRebootDevice");
  v96 = xpc_dictionary_get_array(descriptorCopy, "ProducedResultIdentifiers");

  if (v96 && xpc_get_type(v96) == &_xpc_type_array)
  {
    v97 = _CFXPCCreateCFObjectFromXPCObject();
    if (v97)
    {
      v98 = [NSSet setWithArray:v97];
      produced_result_identifiers = v15->_produced_result_identifiers;
      v15->_produced_result_identifiers = v98;
    }
  }

  v100 = xpc_dictionary_get_array(descriptorCopy, "Dependencies");

  if (v100 && xpc_get_type(v100) == &_xpc_type_array)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v151 = sub_100071544;
    v152 = sub_100071554;
    v153 = +[NSMutableSet set];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10007155C;
    applier[3] = &unk_1001B6DA8;
    v101 = v15;
    dCopy = d;
    v146 = v101;
    v147 = buf;
    if (!xpc_array_apply(v100, applier))
    {

      _Block_object_dispose(buf, 8);
      goto LABEL_9;
    }

    objc_storeStrong(v101 + 42, *(*&buf[8] + 40));

    _Block_object_dispose(buf, 8);
  }

  v102 = xpc_dictionary_get_array(descriptorCopy, "Context");

  if (v102 && xpc_get_type(v102) == &_xpc_type_dictionary)
  {
    v109 = _CFXPCCreateCFObjectFromXPCObject();
    v110 = v109;
    if (!v109 || (v111 = CFGetTypeID(v109), v111 == CFDictionaryGetTypeID()))
    {
      v112 = qword_10020B438;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        sub_1001217AC(v15);
      }

      goto LABEL_9;
    }

    v144 = 0;
    v120 = [NSPropertyListSerialization dataWithPropertyList:v110 format:200 options:0 error:&v144];
    v121 = v144;
    if (v120)
    {
      if ([v120 length] <= 0x10000)
      {
        objc_storeStrong(&v15->_context, v110);

        goto LABEL_145;
      }

      v122 = qword_10020B438;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        sub_100121634(v15, v120);
      }
    }

    else
    {
      v122 = qword_10020B438;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        sub_1001216FC(v15);
      }
    }

    goto LABEL_9;
  }

LABEL_145:
  v103 = xpc_dictionary_get_string(descriptorCopy, "DiskVolume");
  if (v103)
  {
    if (!v15->_expected_network_download_size_bytes)
    {
      v113 = qword_10020B438;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        sub_100121844(v15);
      }

      goto LABEL_9;
    }

    v104 = [NSString stringWithUTF8String:v103];
    diskVolume = v15->_diskVolume;
    v15->_diskVolume = v104;
  }

  v15->_communicates_with_paired_device = xpc_dictionary_get_BOOL(descriptorCopy, "CommunicatesWithPairedDevice");
  v15->_targetDevice = 0;
  v106 = xpc_dictionary_get_string(descriptorCopy, "TargetDevice");
  v107 = v106;
  if (v106)
  {
    if (!strncmp(v106, "TargetDeviceDefaultPaired", 0x19uLL))
    {
      v108 = 1;
    }

    else if (!strncmp(v107, "TargetDeviceAllPaired", 0x15uLL))
    {
      v108 = 2;
    }

    else
    {
      if (strncmp(v107, "TargetDeviceRemote", 0x12uLL))
      {
        goto LABEL_165;
      }

      v108 = 3;
    }

    v15->_targetDevice = v108;
  }

LABEL_165:
  v114 = xpc_dictionary_get_string(descriptorCopy, "RemoteDeviceIdentifier");
  if (v114)
  {
    v115 = [NSString stringWithUTF8String:v114];
    remoteDevice = v15->_remoteDevice;
    v15->_remoteDevice = v115;
  }

  v15->_requiresRemoteDeviceWake = xpc_dictionary_get_BOOL(descriptorCopy, "RequiresRemoteDeviceWake");
  v117 = xpc_dictionary_get_string(descriptorCopy, "RunOnMotionState");
  if (v117)
  {
    v118 = [NSString stringWithUTF8String:v117];
    if ([v118 isEqualToString:@"Stationary"])
    {
      v119 = 1;
    }

    else if ([v118 isEqualToString:@"Walking"])
    {
      v119 = 2;
    }

    else if ([v118 isEqualToString:@"Running"])
    {
      v119 = 3;
    }

    else if ([v118 isEqualToString:@"Cycling"])
    {
      v119 = 4;
    }

    else if ([v118 isEqualToString:@"Automotive"])
    {
      v119 = 5;
    }

    else if ([v118 isEqualToString:@"AutomotiveMoving"])
    {
      v119 = 6;
    }

    else
    {
      if (![v118 isEqualToString:@"AutomotiveStationary"])
      {
LABEL_203:

        goto LABEL_204;
      }

      v119 = 7;
    }

    v15->_run_on_motion_state = v119;
    goto LABEL_203;
  }

LABEL_204:
  v15->_duet_power_budgeted = xpc_dictionary_get_BOOL(descriptorCopy, "PowerBudgeted");
  v15->_data_budgeted = xpc_dictionary_get_BOOL(descriptorCopy, "DataBudgeted");
  v127 = xpc_dictionary_get_string(descriptorCopy, "DataBudgetName");
  if (v127 && v15->_data_budgeted)
  {
    v128 = [NSString stringWithUTF8String:v127];
    dataBudgetName = v15->_dataBudgetName;
    v15->_dataBudgetName = v128;
  }

  v15->_shouldWakeDevice = xpc_dictionary_get_BOOL(descriptorCopy, "ShouldWakeDevice");
  v15->_requires_protection_class = 4;
  v130 = xpc_dictionary_get_string(descriptorCopy, "RequiresProtectionClass");
  if (!v130)
  {
    goto LABEL_219;
  }

  v131 = *v130;
  if (v131 > 0x42)
  {
    if (v131 == 67)
    {
      v132 = 3;
      if (v130[1] != 88)
      {
        v132 = 4;
      }

      goto LABEL_218;
    }

    if (v131 == 68)
    {
      v132 = 5;
      goto LABEL_218;
    }
  }

  else
  {
    if (v131 == 65)
    {
      v132 = 1;
      goto LABEL_218;
    }

    if (v131 == 66)
    {
      v132 = 2;
LABEL_218:
      v15->_requires_protection_class = v132;
    }
  }

LABEL_219:
  v15->_overrideRateLimiting = xpc_dictionary_get_BOOL(descriptorCopy, "OverrideRateLimiting");
  v15->_magneticInterferenceSensitivity = xpc_dictionary_get_BOOL(descriptorCopy, "MagneticInterferenceSensitivity");
  v15->_mailFetch = xpc_dictionary_get_BOOL(descriptorCopy, "MailFetch");
  v15->_bypassPeakPower = xpc_dictionary_get_BOOL(descriptorCopy, "BypassPeakPower");
  v15->_bypassBatteryAging = xpc_dictionary_get_BOOL(descriptorCopy, "BypassBatteryAging");
  v15->_backlogged = xpc_dictionary_get_BOOL(descriptorCopy, "Backlogged");
  v15->_requiresMinimumBatteryLevel = xpc_dictionary_get_int64(descriptorCopy, "RequiresMinimumBatteryLevel");
  v15->_blockRebootActivitiesForSU = xpc_dictionary_get_BOOL(descriptorCopy, "BlockRebootActivitiesForSU");
  if (v15->_requiresMinimumBatteryLevel >= 0x65)
  {
    v15->_requiresMinimumBatteryLevel = 0;
  }

  v133 = xpc_dictionary_get_int64(descriptorCopy, "RequiresMinimumDataBudgetPercentage");
  if (v133 <= 0x64)
  {
    v134 = v133;
  }

  else
  {
    v134 = 0;
  }

  v15->_requiresMinimumDataBudgetPercentage = v134;
  v15->_state = 0;
  if (taskCopy)
  {
    baseTime = [taskCopy baseTime];
    baseTime = v15->_baseTime;
    v15->_baseTime = baseTime;

    [taskCopy tempDelay];
    v15->_tempDelay = v137;
    if (v15->_type == 2)
    {
      v138 = +[NSDate date];
      v139 = [v138 dateByAddingTimeInterval:-v15->_interval];
      if ([(NSDate *)v15->_baseTime compare:v139]== NSOrderedAscending)
      {
        objc_storeStrong(&v15->_baseTime, v139);
      }
    }

    v15->_state = [taskCopy state];
  }

  else
  {
    [(_DASBGSystemTask *)v15 loadBaseTime];
  }

  objc_storeStrong(&v15->_descriptor, descriptor);
  v22 = v15;

LABEL_10:
  return v22;
}

- (BOOL)validateFeatureCodes:(id)codes forToken:(unint64_t)token
{
  codesCopy = codes;
  v5 = +[_DASPlistParser sharedInstance];
  v6 = [v5 dictionaryForPlist:2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = codesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        stringValue = [*(*(&v16 + 1) + 8 * i) stringValue];
        v13 = [v6 objectForKey:stringValue];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (void)updateFeatureCodesForActivity:(id)activity
{
  activityCopy = activity;
  if (self->_featureCodes)
  {
    v5 = +[_DASPlistParser sharedInstance];
    v6 = [v5 dictionaryForPlist:0];

    v7 = [v6 objectForKeyedSubscript:activityCopy];
    v8 = v7;
    if (!v7)
    {
      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
      {
        sub_100121AA4();
      }

      goto LABEL_20;
    }

    v9 = [v7 objectForKeyedSubscript:@"FeatureCodes"];
    v10 = [(NSArray *)self->_featureCodes mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v13 = v11;
    if (v12)
    {
      v14 = v12;
      v22 = v6;
      v15 = 0;
      v16 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if (([v10 containsObject:v18] & 1) == 0)
          {
            [v10 addObject:v18];
            v15 = 1;
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);

      v6 = v22;
      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

      v19 = self->_featureCodes;
      v13 = [NSMutableSet setWithArray:v19];
      [v13 addObjectsFromArray:v10];
      allObjects = [v13 allObjects];
      featureCodes = self->_featureCodes;
      self->_featureCodes = allObjects;
    }

LABEL_15:
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
  {
    sub_100121B0C();
  }

LABEL_21:
}

- (BOOL)validateFastPassSubmissionForActivity:(id)activity featureCodes:(id)codes service:(id)service
{
  activityCopy = activity;
  codesCopy = codes;
  serviceCopy = service;
  v10 = +[_DASPlistParser sharedInstance];
  v11 = [v10 dictionaryForPlist:0];

  v12 = [v11 objectForKeyedSubscript:activityCopy];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_100121AA4();
    }

    goto LABEL_16;
  }

  v14 = [v12 objectForKeyedSubscript:@"Service"];
  v15 = [serviceCopy isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_100121B74();
    }

LABEL_16:
    v23 = 0;
    goto LABEL_23;
  }

  v16 = [v13 objectForKeyedSubscript:@"FeatureCodes"];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = codesCopy;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v26 = codesCopy;
    v20 = *v28;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        if (([v16 containsObject:v22] & 1) == 0)
        {
          v24 = qword_10020B438;
          if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
          {
            sub_100121BF8(v24, v22, activityCopy);
          }

          v23 = 0;
          goto LABEL_20;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v23 = 1;
LABEL_20:
    codesCopy = v26;
  }

  else
  {
    v23 = 1;
  }

LABEL_23:
  return v23;
}

+ (BOOL)hasFastPassRun:(id)run semanticVersion:(int64_t)version
{
  runCopy = run;
  if (qword_10020B458)
  {
    goto LABEL_10;
  }

  v6 = +[NSProcessInfo processInfo];
  v7 = v6;
  if (v6)
  {
    objc_msgSend_operatingSystemVersion(v6);
  }

  qword_10020B458 = 0;
  v8 = [qword_10020B440 integerForKey:@"OSVersion"];
  v9 = qword_10020B438;
  if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = qword_10020B458;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "OS Version: Current %ld, Previous %ld", buf, 0x16u);
  }

  v10 = [qword_10020B440 integerForKey:@"DASFastPassSemanticVersion"];
  v11 = qword_10020B438;
  if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = 1;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DAS FastPass Semantic Version: Current %ld, Previous %ld", buf, 0x16u);
  }

  if (v8 == qword_10020B458 && v10 == 1)
  {
LABEL_10:
    v12 = [qword_10020B440 dictionaryForKey:@"FastPassActivitiesRun"];
    v13 = [v12 objectForKey:runCopy];

    if (v13)
    {
      v14 = [v12 objectForKey:runCopy];
      v15 = [v14 intValue] == version;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    [qword_10020B440 removeObjectForKey:@"FastPassActivitiesRun"];
    [qword_10020B440 setInteger:qword_10020B458 forKey:@"OSVersion"];
    [qword_10020B440 setInteger:1 forKey:@"DASFastPassSemanticVersion"];
    [qword_10020B440 synchronize];
    v15 = 0;
  }

  return v15;
}

+ (void)markFastPassActivityDone:(id)done semanticVersion:(int64_t)version
{
  v5 = qword_10020B440;
  doneCopy = done;
  v7 = [v5 dictionaryForKey:@"FastPassActivitiesRun"];
  v11 = v7;
  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = v8;
  v10 = [NSNumber numberWithInteger:version];
  [v9 setValue:v10 forKey:doneCopy];

  [qword_10020B440 setObject:v9 forKey:@"FastPassActivitiesRun"];
  [qword_10020B440 synchronize];
}

+ (BOOL)resetFastPass:(id)pass resetAll:(BOOL)all
{
  allCopy = all;
  passCopy = pass;
  v6 = [qword_10020B440 dictionaryForKey:@"FastPassActivitiesRun"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = v8;
  if (allCopy)
  {
    [v8 removeAllObjects];
    v11 = +[_DASFeatureDurationTracker sharedInstance];
    [v11 resetFeatureDurations];

    v10 = +[_DASActivityDependencyManager sharedInstance];
    [v10 resetFastPassDependencies];
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = [v8 objectForKey:passCopy];
    LODWORD(v11) = v12 != 0;

    if (v12)
    {
      [v9 removeObjectForKey:passCopy];
    }

    [v9 removeObjectForKey:passCopy];
    v10 = +[_DASActivityDependencyManager sharedInstance];
    [v10 resetFastPassDependenciesForActivity:passCopy];
  }

  [qword_10020B440 setObject:v9 forKey:@"FastPassActivitiesRun"];
  [qword_10020B440 synchronize];

  return v11;
}

+ (id)allFastPassIdentifiers
{
  v2 = +[_DASPlistParser sharedInstance];
  v3 = [v2 dictionaryForPlist:0];

  allKeys = [v3 allKeys];
  v5 = [NSSet setWithArray:allKeys];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSSet set];
  }

  v8 = v7;

  return v8;
}

- (id)stateString
{
  state = self->_state;
  if (state > 8)
  {
    return &stru_1001BA3C0;
  }

  else
  {
    return *(&off_1001B6DC8 + state);
  }
}

- (id)aboutMe
{
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v3 mutableCopy];

  v5 = +[NSMutableDictionary dictionary];
  if (v4)
  {
    v6 = _DASResourcesKey;
    v7 = [v4 objectForKeyedSubscript:_DASResourcesKey];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [v4 objectForKeyedSubscript:v6];
      v10 = [v8 resourcesDescriptionFromBitmap:{objc_msgSend(v9, "integerValue")}];
      [v4 setObject:v10 forKeyedSubscript:v6];
    }

    v11 = [NSMutableDictionary dictionaryWithDictionary:v4];
    [v5 setObject:v11 forKeyedSubscript:@"Criteria"];
    name = [(_DASBGSystemTask *)self name];
    [v5 setObject:name forKeyedSubscript:@"ActivityName"];

    v13 = +[NSMutableDictionary dictionary];
    v14 = objc_alloc_init(NSDateFormatter);
    [v14 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZZ"];
    v15 = +[NSLocale currentLocale];
    [v14 setLocale:v15];

    if (self->_type == 2)
    {
      v16 = [v14 stringFromDate:self->_baseTime];
      [v13 setObject:v16 forKeyedSubscript:@"BaseTime"];
    }

    scheduler_activity = [(_DASBGSystemTask *)self scheduler_activity];
    startAfter = [scheduler_activity startAfter];
    v19 = [v14 stringFromDate:startAfter];
    [v13 setObject:v19 forKeyedSubscript:@"ScheduleAfter"];

    scheduler_activity2 = [(_DASBGSystemTask *)self scheduler_activity];
    startBefore = [scheduler_activity2 startBefore];
    v22 = [v14 stringFromDate:startBefore];
    [v13 setObject:v22 forKeyedSubscript:@"ScheduleBefore"];

    [v5 setObject:v13 forKeyedSubscript:@"Timings"];
    stateString = [(_DASBGSystemTask *)self stateString];
    [v5 setObject:stateString forKeyedSubscript:@"State"];
  }

  return v5;
}

+ (id)resourcesDescriptionFromBitmap:(int64_t)bitmap
{
  bitmapCopy = bitmap;
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (bitmapCopy)
  {
    [v4 addObject:@"CPU"];
    if ((bitmapCopy & 2) == 0)
    {
LABEL_3:
      if ((bitmapCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((bitmapCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"Memory"];
  if ((bitmapCopy & 4) == 0)
  {
LABEL_4:
    if ((bitmapCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:@"Disk"];
  if ((bitmapCopy & 8) == 0)
  {
LABEL_5:
    if ((bitmapCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v5 addObject:@"ANE"];
  if ((bitmapCopy & 0x10) != 0)
  {
LABEL_6:
    [v5 addObject:@"GPU"];
  }

LABEL_7:
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (BOOL)hasInstallActivityRun
{
  name = [(_DASBGSystemTask *)self name];
  if (!qword_10020B460)
  {
    if (sysctlbyname_get_data_np())
    {
      v4 = 1;
      goto LABEL_5;
    }

    v6 = [NSString stringWithUTF8String:0];
    free(0);
    v7 = [qword_10020B440 stringForKey:@"ProductBuildVersion"];
    if (([v7 isEqualToString:v6] & 1) == 0)
    {
      [qword_10020B440 removeObjectForKey:@"VersionSpecificActivitiesRun"];
      [qword_10020B440 setObject:v6 forKey:@"ProductBuildVersion"];
    }
  }

  v3 = [qword_10020B440 arrayForKey:@"VersionSpecificActivitiesRun"];
  v4 = [v3 containsObject:name];

LABEL_5:
  return v4;
}

- (void)markInstallActivityDone
{
  v3 = [qword_10020B440 arrayForKey:@"VersionSpecificActivitiesRun"];
  v7 = v3;
  if (v3)
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:1];
  }

  v5 = v4;
  name = [(_DASBGSystemTask *)self name];
  [v5 addObject:name];

  [qword_10020B440 setObject:v5 forKey:@"VersionSpecificActivitiesRun"];
}

- (void)saveActivityBaseTime:(id)time
{
  if (time)
  {
    v4 = qword_10020B448;
    timeCopy = time;
    name = [(_DASBGSystemTask *)self name];
    [v4 setValue:timeCopy forKey:name];
  }

  v7 = qword_10020B440;
  v8 = qword_10020B448;

  [v7 setObject:v8 forKey:@"ActivityBaseDates"];
}

- (id)getActivityBaseTime
{
  v3 = qword_10020B448;
  name = [(_DASBGSystemTask *)self name];
  v5 = [v3 valueForKey:name];

  v6 = +[NSDate date];
  v7 = [v6 dateByAddingTimeInterval:-4838400.0];
  if (!v5 || [v5 compare:v7] == -1 || objc_msgSend(v5, "compare:", v6) == 1)
  {
    [(_DASBGSystemTask *)self initialDelay];
    v8 = [v6 dateByAddingTimeInterval:?];
    [(_DASBGSystemTask *)self saveActivityBaseTime:v8];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)resetBaseTime
{
  v3 = +[NSDate date];
  [(_DASBGSystemTask *)self saveActivityBaseTime:v3];
  baseTime = self->_baseTime;
  self->_baseTime = v3;
  v6 = v3;

  startTime = self->_startTime;
  self->_startTime = 0;
}

- (void)adjustBaseTimeByOffset:(double)offset
{
  v4 = [(NSDate *)self->_baseTime dateByAddingTimeInterval:offset];
  baseTime = self->_baseTime;
  self->_baseTime = v4;

  _objc_release_x1(v4, baseTime);
}

- (void)markStopped:(id)stopped
{
  startTime = self->_startTime;
  self->_startTime = 0;
  _objc_release_x1(self, startTime);
}

- (id)initForTestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = _DASBGSystemTask;
  v5 = [(_DASBGSystemTask *)&v10 init];
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;
  v7 = identifierCopy;

  v5->_token = 0;
  v5->_pid = 0;
  v5->_uid = 0;
  serviceName = v5->_serviceName;
  v5->_serviceName = @"XCTest";

  v5->_suspensionReason = -1;
  return v5;
}

@end