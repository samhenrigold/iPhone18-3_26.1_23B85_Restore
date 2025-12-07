@interface HRCArbiterAlgorithms
- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)reporter;
- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue processingQueue:(id)processingQueue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)self0;
- (HRCArbiterAlgorithmsDelegate)delegate;
- (id).cxx_construct;
- (void)_arbitrateHeartRate:(id)rate;
- (void)_cleanupStaleSources;
- (void)_disableUserFitComputation;
- (void)_enableUserFitComputation;
- (void)_handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count;
- (void)_handleHeartRateOutput:(HrArbOut *)output;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)_handleStreamingModeUpdate:(unint64_t)update;
- (void)_handleWorkoutActivityTypeUpdate:(unint64_t)update;
- (void)_updateSourceList:(const HRCSourceUpdate *)list;
- (void)arbitrateHeartRate:(id)rate;
- (void)handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count;
- (void)handleHeartRateOutput:(HrArbOut *)output;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)handleStreamingModeUpdate:(unint64_t)update;
- (void)handleWorkoutActivityTypeUpdate:(unint64_t)update;
@end

@implementation HRCArbiterAlgorithms

- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)reporter
{
  notificationCopy = notification;
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  reporterCopy = reporter;
  countCopy = count;
  durationCopy = duration;
  thresholdCopy = threshold;
  queueCopy = queue;
  delegateCopy = delegate;
  v21 = dispatch_queue_create("com.apple.heartratecoordinator.algorithms", v14);

  v22 = [(HRCArbiterAlgorithms *)self initWithDelegate:delegateCopy onQueue:queueCopy processingQueue:v21 forceFitNotification:notificationCopy fitNotificationThreshold:thresholdCopy fitNotificationMinDuration:durationCopy fitNotificationMinHrCount:countCopy analyticsReporter:reporterCopy];
  return v22;
}

- (HRCArbiterAlgorithms)initWithDelegate:(id)delegate onQueue:(id)queue processingQueue:(id)processingQueue forceFitNotification:(BOOL)notification fitNotificationThreshold:(id)threshold fitNotificationMinDuration:(id)duration fitNotificationMinHrCount:(id)count analyticsReporter:(id)self0
{
  delegateCopy = delegate;
  queueCopy = queue;
  processingQueueCopy = processingQueue;
  thresholdCopy = threshold;
  countCopy = count;
  reporterCopy = reporter;
  v36.receiver = self;
  v36.super_class = HRCArbiterAlgorithms;
  v20 = [(HRCArbiterAlgorithms *)&v36 init];
  objc_storeWeak(&v20->_delegate, delegateCopy);
  objc_storeStrong(&v20->_delegateQueue, queue);
  objc_storeStrong(&v20->_analyticsReporter, reporter);
  objc_storeStrong(&v20->_processingQueue, processingQueue);
  processingQueue = v20->_processingQueue;
  if (processingQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C8B0;
    block[3] = &unk_100040FB8;
    v23 = v20;
    v32 = v23;
    notificationCopy = notification;
    v33 = thresholdCopy;
    v34 = countCopy;
    dispatch_sync(processingQueue, block);
    v25 = sub_100024BD4(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "HRCArbiterAlgorithms init", buf, 2u);
    }

    v26 = v23;
    p_super = &v32->super;
  }

  else
  {
    p_super = sub_100024BD4(v21);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      sub_10001F830(p_super);
    }

    v26 = 0;
  }

  return v26;
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  v5 = update->var0;
  var1 = update->var1;
  v7 = update->var2;
  v8 = update->var3;
  v9 = *&update->var4;
  processingQueue = self->_processingQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_10001CA68;
  v14[3] = &unk_100040D78;
  v14[4] = self;
  v15 = v5;
  v16 = var1;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v5;
  dispatch_async(processingQueue, v14);
}

- (void)arbitrateHeartRate:(id)rate
{
  rateCopy = rate;
  processingQueue = self->_processingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CB40;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = rateCopy;
  v6 = rateCopy;
  dispatch_async(processingQueue, v7);
}

- (void)handleStreamingModeUpdate:(unint64_t)update
{
  processingQueue = self->_processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001CBC0;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = update;
  dispatch_async(processingQueue, v4);
}

- (void)handleWorkoutActivityTypeUpdate:(unint64_t)update
{
  processingQueue = self->_processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001CC40;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = update;
  dispatch_async(processingQueue, v4);
}

- (void)handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count
{
  processingQueue = self->_processingQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001CCC8;
  v5[3] = &unk_100040840;
  v5[4] = self;
  thresholdCopy = threshold;
  countCopy = count;
  dispatch_async(processingQueue, v5);
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v6 = sub_100024BD4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    var0 = update->var0;
    var4 = update->var4;
    var5 = update->var5;
    var3 = update->var3;
    *buf = 138413058;
    *&buf[4] = var0;
    *&buf[12] = 1024;
    *&buf[14] = var4;
    *&buf[18] = 1024;
    *&buf[20] = var5;
    *&buf[24] = 2114;
    *&buf[26] = var3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "arbiter algs received source update with timestamp : %@ , sourceType : %d , streamingMode : %d , uuid : %{public}@", buf, 0x22u);
  }

  v12 = update->var4;
  if (v12 == 3)
  {
    goto LABEL_6;
  }

  if (v12 == 2)
  {
    v19 = 0;
LABEL_15:
    memset(&buf[8], 0, 24);
    buf[25] = v19;
    [update->var0 timeIntervalSince1970];
    *buf = (v20 * 1000000.0);
    [update->var3 getUUIDBytes:&buf[8]];
    v21 = update->var5;
    if (v21 == 3)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2 * (v21 == 2);
    }

    buf[24] = v22;
    *v25 = *&buf[1];
    *&v25[15] = *&buf[16];
    algsWrapper = self->_algsWrapper;
    v24 = buf[0];
    [(HRCArbiterAlgorithmsWrapper *)algsWrapper handleSourceUpdate:&v24];
    [(HRCArbiterAlgorithms *)self _updateSourceList:update];
    return;
  }

  if (update->var4)
  {
    v19 = 1;
    goto LABEL_15;
  }

LABEL_6:
  v13 = sub_100024BD4(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67174657;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "no algs mapping for HRCSourceType : %{private}d", buf, 8u);
  }

  v15 = sub_100024BD4(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = update->var4;
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "algs does not support sourceType : %d", buf, 8u);
  }

  v18 = sub_100024BD4(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ignoring source update received in arbiter algs", buf, 2u);
  }
}

- (void)_arbitrateHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_processingQueue);
  v6 = sub_100024BD4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    timestamp = [rateCopy timestamp];
    [rateCopy heartRate];
    v8 = v7;
    confidence = [rateCopy confidence];
    hrContext = [rateCopy hrContext];
    uuid = [rateCopy uuid];
    confidenceLevel = [rateCopy confidenceLevel];
    arbitrationStatus = [rateCopy arbitrationStatus];
    sourceType = [rateCopy sourceType];
    streamingThrottleStatus = [rateCopy streamingThrottleStatus];
    timestamp2 = [rateCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    *buf = 138545667;
    *&buf[4] = timestamp;
    *&buf[12] = 2053;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    *v44 = confidence;
    *&v44[8] = 2048;
    *&v44[10] = hrContext;
    *&v44[18] = 2113;
    *&v44[20] = uuid;
    *&v44[28] = 1024;
    *&v44[30] = confidenceLevel;
    v45 = 1024;
    v46 = arbitrationStatus;
    v47 = 1024;
    v48 = sourceType;
    v49 = 1024;
    v50 = streamingThrottleStatus;
    v51 = 2050;
    v52 = v16;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "arbiter algs received hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f ", buf, 0x56u);
  }

  sourceType2 = [rateCopy sourceType];
  if (sourceType2 <= 1)
  {
    if (sourceType2)
    {
      if (sourceType2 == 1)
      {
        algsWrapper = self->_algsWrapper;
        v19 = rateCopy;
        timestamp3 = [v19 timestamp];
        [timestamp3 timeIntervalSince1970];
        v22 = v21;

        memset(v44, 0, 24);
        *&buf[8] = 0u;
        *buf = (v22 * 1000000.0);
        deviceUuid = [v19 deviceUuid];
        [deviceUuid getUUIDBytes:&buf[8]];

        uuid2 = [v19 uuid];
        [uuid2 getUUIDBytes:v44];

        [v19 heartRate];
        v44[16] = v25;
        confidence2 = [v19 confidence];
        [confidence2 floatValue];
        v44[17] = (v27 * 255.0);

        v44[18] = [v19 sensorLocation];
        *&v44[20] = [v19 flags];

        [(HRCArbiterAlgorithmsWrapper *)algsWrapper handleAacpHr:buf];
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (sourceType2 == 2)
  {
    v31 = self->_algsWrapper;
    v32 = rateCopy;
    timestamp4 = [v32 timestamp];
    [timestamp4 timeIntervalSince1970];
    v35 = v34;

    memset(v44, 0, 32);
    *&buf[8] = 0u;
    *buf = (v35 * 1000000.0);
    deviceUuid2 = [v32 deviceUuid];
    [deviceUuid2 getUUIDBytes:&buf[8]];

    uuid3 = [v32 uuid];
    [uuid3 getUUIDBytes:v44];

    [v32 heartRate];
    *&v38 = v38;
    *&v44[16] = LODWORD(v38);
    confidence3 = [v32 confidence];
    [confidence3 floatValue];
    *&v44[20] = v40;

    v44[24] = [v32 confidenceLevel] == 2;
    v44[25] = [v32 streamingThrottleStatus] == 3;

    [(HRCArbiterAlgorithmsWrapper *)v31 handleWatchHr:buf];
    goto LABEL_13;
  }

  if (sourceType2 == 3)
  {
LABEL_9:
    v28 = sub_100024BD4(sourceType2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sourceType3 = [rateCopy sourceType];
      uuid4 = [rateCopy uuid];
      sub_10001F874(sourceType3, uuid4, buf, v28);
    }
  }

LABEL_13:
}

- (void)_cleanupStaleSources
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v3 = +[NSDate date];
  begin = self->_sourceList.__begin_;
  end = self->_sourceList.__end_;
  v14 = v3;
  v15 = &v14;
  while (1)
  {
    if (begin == end)
    {
      begin = end;
      goto LABEL_6;
    }

    if (sub_10001F2F4(&v15, begin))
    {
      break;
    }

    ++begin;
  }

  if (begin != end)
  {
    for (i = begin + 1; i != end; ++i)
    {
      if (!sub_10001F2F4(&v15, i))
      {
        var0 = i->var0;
        i->var0 = 0;
        v8 = begin->var0;
        begin->var0 = var0;

        var1 = i->var1;
        var2 = i->var2;
        i->var2 = 0;
        v11 = begin->var2;
        begin->var1 = var1;
        begin->var2 = var2;

        var3 = i->var3;
        i->var3 = 0;
        v13 = begin->var3;
        begin->var3 = var3;

        *&begin->var4 = *&i->var4;
        ++begin;
      }
    }
  }

LABEL_6:
  sub_10001F16C(&self->_sourceList, begin, self->_sourceList.__end_);
}

- (void)_handleStreamingModeUpdate:(unint64_t)update
{
  dispatch_assert_queue_V2(self->_processingQueue);
  if (self->_currentStreamingMode != update)
  {
    if (!update)
    {
      analyticsReporter = self->_analyticsReporter;
      algsWrapper = self->_algsWrapper;
      if (algsWrapper)
      {
        objc_msgSend_retrieveAnalytics(algsWrapper);
        v7 = v56;
      }

      else
      {
        v7 = 0;
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
      }

      lastComputationResult = self->_lastComputationResult;
      v62[0] = @"duration_s_watch";
      v55 = [NSNumber numberWithInt:v7];
      *&buf = v55;
      v62[1] = @"duration_s_bud";
      v53 = [NSNumber numberWithInt:DWORD1(v56)];
      *(&buf + 1) = v53;
      v62[2] = @"duration_s_dual_arbitration";
      v52 = [NSNumber numberWithInt:DWORD2(v56)];
      v64 = v52;
      v62[3] = @"packet_gap_bud_1p5s_percentage";
      v51 = [NSNumber numberWithChar:SBYTE12(v56)];
      v65 = v51;
      v62[4] = @"packet_gap_bud_5s_percentage";
      v50 = [NSNumber numberWithChar:SBYTE13(v56)];
      v66 = v50;
      v62[5] = @"packet_gap_bud_10s_percentage";
      v49 = [NSNumber numberWithChar:SBYTE14(v56)];
      v67 = v49;
      v62[6] = @"hr_10_percentile_watch";
      v48 = [NSNumber numberWithChar:SHIBYTE(v56)];
      v68 = v48;
      v62[7] = @"hr_10_percentile_bud";
      v47 = [NSNumber numberWithChar:v57];
      v69 = v47;
      v62[8] = @"hr_10_percentile_dual_arbitration";
      v46 = [NSNumber numberWithChar:SBYTE1(v57)];
      v70 = v46;
      v62[9] = @"hr_50_percentile_watch";
      v45 = [NSNumber numberWithChar:SBYTE2(v57)];
      v71 = v45;
      v62[10] = @"hr_50_percentile_bud";
      v44 = [NSNumber numberWithChar:SBYTE3(v57)];
      v72 = v44;
      v62[11] = @"hr_50_percentile_dual_arbitration";
      v43 = [NSNumber numberWithChar:SBYTE4(v57)];
      v73 = v43;
      v62[12] = @"hr_90_percentile_watch";
      v42 = [NSNumber numberWithChar:SBYTE5(v57)];
      v74 = v42;
      v62[13] = @"hr_90_percentile_bud";
      v41 = [NSNumber numberWithChar:SBYTE6(v57)];
      v75 = v41;
      v62[14] = @"hr_90_percentile_dual_arbitration";
      v40 = [NSNumber numberWithChar:SBYTE7(v57)];
      v76 = v40;
      v62[15] = @"no_report_percentage_dual_arbitration";
      v39 = [NSNumber numberWithChar:SBYTE8(v57)];
      v77 = v39;
      v62[16] = @"no_report_30s_percentage_watch";
      v38 = [NSNumber numberWithChar:SBYTE9(v57)];
      v78 = v38;
      v62[17] = @"no_report_30s_percentage_bud";
      v37 = [NSNumber numberWithChar:SBYTE10(v57)];
      v79 = v37;
      v62[18] = @"no_report_30s_percentage_dual_arbitration";
      v36 = [NSNumber numberWithChar:SBYTE11(v57)];
      v80 = v36;
      v62[19] = @"no_report_90s_percentage_watch";
      v35 = [NSNumber numberWithChar:SBYTE12(v57)];
      v81 = v35;
      v62[20] = @"no_report_90s_percentage_bud";
      v34 = [NSNumber numberWithChar:SBYTE13(v57)];
      v82 = v34;
      v62[21] = @"no_report_90s_percentage_dual_arbitration";
      v33 = [NSNumber numberWithChar:SBYTE14(v57)];
      v83 = v33;
      v62[22] = @"no_report_180s_percentage_watch";
      v32 = [NSNumber numberWithChar:SHIBYTE(v57)];
      v84 = v32;
      v62[23] = @"no_report_180s_percentage_bud";
      v31 = [NSNumber numberWithChar:v58];
      v85 = v31;
      v62[24] = @"no_report_180s_percentage_dual_arbitration";
      v30 = [NSNumber numberWithChar:SBYTE1(v58)];
      v86 = v30;
      v62[25] = @"no_report_300s_percentage_watch";
      v29 = [NSNumber numberWithChar:SBYTE2(v58)];
      v87 = v29;
      v62[26] = @"no_report_300s_percentage_bud";
      v28 = [NSNumber numberWithChar:SBYTE3(v58)];
      v88 = v28;
      v62[27] = @"no_report_300s_percentage_dual_arbitration";
      v54 = [NSNumber numberWithChar:SBYTE4(v58)];
      v89 = v54;
      v62[28] = @"dual_arbitration_bud_selection_percentage";
      v27 = [NSNumber numberWithChar:SBYTE5(v58)];
      v90 = v27;
      v62[29] = @"publishable_percentage_watch";
      v26 = [NSNumber numberWithChar:SBYTE6(v58)];
      v91 = v26;
      v62[30] = @"publishable_percentage_bud";
      v25 = [NSNumber numberWithChar:SBYTE7(v58)];
      v92 = v25;
      v62[31] = @"publishable_percentage_dual_arbitration";
      v24 = [NSNumber numberWithChar:SBYTE8(v58)];
      v93 = v24;
      v62[32] = @"from_session_start_to_first_confident_s_watch";
      v23 = [NSNumber numberWithInt:HIDWORD(v58)];
      v94 = v23;
      v62[33] = @"from_session_start_to_first_confident_s_bud";
      v22 = [NSNumber numberWithInt:v59];
      v95 = v22;
      v62[34] = @"from_session_start_to_first_confident_s_dual_arbitration";
      v21 = [NSNumber numberWithInt:DWORD1(v59)];
      v96 = v21;
      v62[35] = @"mean_time_between_timeouts_s_watch";
      v20 = [NSNumber numberWithInt:DWORD2(v59)];
      v97 = v20;
      v62[36] = @"mean_time_between_timeouts_s_bud";
      v19 = [NSNumber numberWithInt:HIDWORD(v59)];
      v98 = v19;
      v62[37] = @"mean_time_between_arbitration_single_dual_mode_changes";
      v9 = [NSNumber numberWithInt:v60];
      v99 = v9;
      v62[38] = @"mean_time_between_new_device_s_watch";
      v10 = [NSNumber numberWithInt:DWORD1(v60)];
      v100 = v10;
      v62[39] = @"mean_time_between_new_device_s_bud";
      v11 = [NSNumber numberWithInt:DWORD2(v60)];
      v101 = v11;
      v62[40] = @"mean_hr_jump_after_arbitration";
      v12 = [NSNumber numberWithShort:SWORD6(v60)];
      v102 = v12;
      v62[41] = @"max_hr_jump_after_arbitration";
      v13 = [NSNumber numberWithShort:SHIWORD(v60)];
      v103 = v13;
      v62[42] = @"mean_avg_confidence_diff_after_arbitration";
      v14 = [NSNumber numberWithChar:v61];
      v104 = v14;
      v62[43] = @"session_lead_to_notification";
      v15 = [NSNumber numberWithInt:lastComputationResult];
      v105 = v15;
      v17 = [NSDictionary dictionaryWithObjects:&buf forKeys:v62 count:44];

      [(HRCAnalyticsReporter *)analyticsReporter handleAlgsAnalytics:v17];
      finalizeComputation = [(HRCAnalyticsReporter *)self->_analyticsReporter finalizeComputation];
    }

    v16 = sub_100024BD4(finalizeComputation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = update;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "arbiter algs received streaming mode update : %lu", &buf, 0xCu);
    }

    if (update)
    {
      if (!self->_currentStreamingMode)
      {
        [(HRCArbiterAlgorithms *)self reset];
      }
    }

    self->_currentStreamingMode = update;
  }
}

- (void)_handleWorkoutActivityTypeUpdate:(unint64_t)update
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v6 = sub_100024BD4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    updateCopy = update;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HRCArbiterAlgorithms received workout activity update : %{public}lu", &v8, 0xCu);
  }

  workoutActivityType = self->_workoutActivityType;
  if (workoutActivityType != update)
  {
    self->_workoutActivityType = update;
    if (!update || !workoutActivityType)
    {
      if (update)
      {
        [(HRCArbiterAlgorithms *)self _enableUserFitComputation];
      }

      else
      {
        [(HRCArbiterAlgorithms *)self _disableUserFitComputation];
      }
    }
  }
}

- (void)_enableUserFitComputation
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v4 = sub_100024BD4(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    notificationThreshold = self->_userFitParameters.notificationThreshold;
    minimumPacketCounts = self->_userFitParameters.minimumPacketCounts;
    forceFitNotification = self->_forceFitNotification;
    *buf = 134349568;
    v23 = notificationThreshold;
    v24 = 1026;
    v25 = minimumPacketCounts;
    v26 = 1026;
    v27 = forceFitNotification;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "enabling user fit computation with threshold : %{public}f , minHrCount : %{public}d forceNotification : %{BOOL, public}d", buf, 0x18u);
  }

  p_activeAacpSource = &self->_activeAacpSource;
  if (self->_activeAacpSource)
  {
    v10 = sub_100024BD4(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      bluetoothIdentifier = [(HRCDevice *)*p_activeAacpSource bluetoothIdentifier];
      sub_10001F8E0(bluetoothIdentifier, buf, v10);
    }

    v12 = *p_activeAacpSource;
    *p_activeAacpSource = 0;
  }

  algsWrapper = [(HRCArbiterAlgorithms *)self algsWrapper];
  [algsWrapper enableUserFitComputation:&self->_userFitParameters];

  begin = self->_sourceList.__begin_;
  for (i = self->_sourceList.__end_; begin != i; ++begin)
  {
    if (begin->var4 == 1 && begin->var5 == 3)
    {
      objc_storeStrong(p_activeAacpSource, begin->var2);
      v18 = sub_100024BD4(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        model = [(HRCDevice *)*p_activeAacpSource model];
        *v20 = 138543362;
        v21 = model;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "new active aacp source uuid : %{public}@", v20, 0xCu);
      }
    }
  }
}

- (void)_disableUserFitComputation
{
  dispatch_assert_queue_V2(self->_processingQueue);
  algsWrapper = [(HRCArbiterAlgorithms *)self algsWrapper];
  endUserFitComputation = [algsWrapper endUserFitComputation];

  self->_lastComputationResult = (self->_forceFitNotification | endUserFitComputation) & 1;
  activeAacpSource = self->_activeAacpSource;
  if (activeAacpSource)
  {
    bluetoothIdentifier = [(HRCDevice *)activeAacpSource bluetoothIdentifier];

    if (bluetoothIdentifier)
    {
      if ((self->_forceFitNotification | endUserFitComputation))
      {
        v8 = sub_100024BD4(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          bluetoothIdentifier2 = [(HRCDevice *)self->_activeAacpSource bluetoothIdentifier];
          *buf = 138543362;
          v18 = bluetoothIdentifier2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "generating user fit notification for device with bluetooth identifier : %{public}@", buf, 0xCu);
        }

        bluetoothIdentifier3 = [(HRCDevice *)self->_activeAacpSource bluetoothIdentifier];
        delegateQueue = self->_delegateQueue;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10001E698;
        v15[3] = &unk_100040BC8;
        v15[4] = self;
        v16 = bluetoothIdentifier3;
        v12 = bluetoothIdentifier3;
        dispatch_async(delegateQueue, v15);
      }
    }

    else
    {
      v14 = sub_100024BD4(v7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10001F938(v14);
      }
    }

    v13 = self->_activeAacpSource;
    self->_activeAacpSource = 0;
  }

  else
  {
    v13 = sub_100024BD4(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "no aacp streaming source was active for the duration of the workout", buf, 2u);
    }
  }
}

- (void)_updateSourceList:(const HRCSourceUpdate *)list
{
  dispatch_assert_queue_V2(self->_processingQueue);
  if (list->var4 == 1 && list->var5 == 3)
  {
    objc_storeStrong(&self->_activeAacpSource, list->var2);
  }

  begin = self->_sourceList.__begin_;
  end = self->_sourceList.__end_;
  if (begin != end)
  {
    while (1)
    {
      v5 = [begin->var3 isEqual:list->var3];
      if (v5)
      {
        break;
      }

      if (++begin == end)
      {
        begin = end;
        break;
      }
    }

    end = self->_sourceList.__end_;
  }

  if (begin == end)
  {
    if (!list->var5)
    {
      v10 = sub_100024BD4(v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        var3 = list->var3;
        var5 = list->var5;
        var4 = list->var4;
        var0 = list->var0;
        v20 = 138544130;
        v21 = var3;
        v22 = 1026;
        v23 = var5;
        v24 = 1026;
        v25 = var4;
        v26 = 2114;
        v27 = var0;
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "HRCArbiterAlgorithms unexpected source update with deviceUUID : %{public}@ , mode : %{public}d, sourceType : %{public}d , timestamp : %{public}@", &v20, 0x22u);
      }

      end = self->_sourceList.__end_;
    }

    if (end >= self->_sourceList.__cap_)
    {
      v11 = sub_10001F424(&self->_sourceList, list);
    }

    else
    {
      end->var0 = list->var0;
      end->var1 = list->var1;
      end->var2 = list->var2;
      end->var3 = list->var3;
      *&end->var4 = *&list->var4;
      v11 = end + 1;
    }

    self->_sourceList.__end_ = v11;
  }

  else
  {
    if (begin->var5 == list->var5)
    {
      v9 = sub_100024BD4(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v12 = list->var3;
        v13 = list->var5;
        v14 = list->var4;
        v15 = list->var0;
        v20 = 138544130;
        v21 = v12;
        v22 = 1026;
        v23 = v13;
        v24 = 1026;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "HRCArbiterAlgorithms received duplicate source update with deviceUUID : %{public}@ , mode : %{public}d, sourceType : %{public}d , timestamp : %{public}@", &v20, 0x22u);
      }
    }

    objc_storeStrong(&begin->var0, list->var0);
    begin->var1 = list->var1;
    objc_storeStrong(&begin->var2, list->var2);
    objc_storeStrong(&begin->var3, list->var3);
    *&begin->var4 = *&list->var4;
  }
}

- (void)_handleHeartRateOutput:(HrArbOut *)output
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = [[NSUUID alloc] initWithUUIDBytes:output->var1];
  v6 = v5;
  begin = self->_sourceList.__begin_;
  end = self->_sourceList.__end_;
  if (begin != end)
  {
    while (1)
    {
      v5 = [begin->var3 isEqual:v6];
      if (v5)
      {
        break;
      }

      if (++begin == end)
      {
        begin = end;
        break;
      }
    }

    end = self->_sourceList.__end_;
  }

  if (begin == end)
  {
    v31 = sub_100024BD4(v5);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_10001F97C(v6, v31);
    }
  }

  else
  {
    var0 = output->var0.var0.var0;
    v10 = [HRCHeartRateData alloc];
    var4 = output->var4;
    *&v11 = output->var5;
    v13 = [NSNumber numberWithFloat:v11];
    if (output->var6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [NSDate dateWithTimeIntervalSince1970:var0 / 1000000.0];
    v16 = [[NSUUID alloc] initWithUUIDBytes:output->var2];
    v17 = v16;
    if (output->var8)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    HIDWORD(v33) = output->var7;
    LOBYTE(v33) = 0;
    BYTE1(v32) = v18;
    LOBYTE(v32) = begin->var4;
    v19 = [v10 initWithHeartRate:v13 confidence:v14 confidenceLevel:2 arbitrationStatus:2 context:2 hrContext:v15 timestamp:var4 sampleUuid:v16 sourceType:v32 streamingThrottleStatus:begin->var3 deviceUuid:begin->var2 device:v33 sensorLocation:? flags:?];

    v21 = sub_100024BD4(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      timestamp = [v19 timestamp];
      [v19 heartRate];
      v23 = v22;
      confidence = [v19 confidence];
      hrContext = [v19 hrContext];
      uuid = [v19 uuid];
      confidenceLevel = [v19 confidenceLevel];
      arbitrationStatus = [v19 arbitrationStatus];
      sourceType = [v19 sourceType];
      streamingThrottleStatus = [v19 streamingThrottleStatus];
      timestamp2 = [v19 timestamp];
      [timestamp2 timeIntervalSinceReferenceDate];
      *buf = 138546179;
      v41 = timestamp;
      v42 = 2053;
      v43 = v23;
      v44 = 2112;
      v45 = confidence;
      v46 = 2048;
      v47 = hrContext;
      v48 = 2113;
      v49 = uuid;
      v50 = 1024;
      v51 = confidenceLevel;
      v52 = 1024;
      v53 = arbitrationStatus;
      v54 = 1024;
      v55 = sourceType;
      v56 = 1024;
      v57 = streamingThrottleStatus;
      v58 = 2050;
      v59 = v29;
      v60 = 1024;
      sensorLocation = [v19 sensorLocation];
      v62 = 1024;
      flags = [v19 flags];
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "algs sending hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f , location : %d , flags : %d", buf, 0x62u);
    }

    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EDF4;
    block[3] = &unk_100040BC8;
    block[4] = self;
    v39 = v19;
    v31 = v19;
    dispatch_async(delegateQueue, block);
  }
}

- (void)_handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v8 = sub_100024BD4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    notificationThreshold = self->_userFitParameters.notificationThreshold;
    minimumPacketCounts = self->_userFitParameters.minimumPacketCounts;
    v15 = 134218752;
    thresholdCopy2 = threshold;
    v17 = 1024;
    countCopy2 = count;
    v19 = 2048;
    v20 = notificationThreshold;
    v21 = 1024;
    v22 = minimumPacketCounts;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Got fit notification parameter update: %f %d (was %f %d)", &v15, 0x22u);
  }

  p_userFitParameters = &self->_userFitParameters;
  if (self->_userFitParameters.notificationThreshold != threshold || self->_userFitParameters.minimumPacketCounts != count)
  {
    v11 = sub_100024BD4(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134349312;
      thresholdCopy2 = threshold;
      v17 = 1026;
      countCopy2 = count;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating fit notification parameters to %{public}f %{public}u", &v15, 0x12u);
    }

    self->_userFitParameters.notificationThreshold = threshold;
    self->_userFitParameters.minimumPacketCounts = count;
    algsWrapper = [(HRCArbiterAlgorithms *)self algsWrapper];
    [algsWrapper enableUserFitComputation:p_userFitParameters];
  }
}

- (void)handleHeartRateOutput:(HrArbOut *)output
{
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = *&output->var1[8];
  v7[0] = *&output->var0.var0.var0;
  v7[1] = v5;
  v6 = *&output->var5;
  v7[2] = *&output->var2[8];
  v7[3] = v6;
  [(HRCArbiterAlgorithms *)self _handleHeartRateOutput:v7];
}

- (HRCArbiterAlgorithmsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 84) = 0x12C3E99999ALL;
  return self;
}

@end