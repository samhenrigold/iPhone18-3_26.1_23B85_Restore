@interface XPCSignpostReader
- (BOOL)createTagFile:(id)file withTagConfig:(id)config withFileCount:(int)count;
- (BOOL)isiPad;
- (XPCSignpostReader)init;
- (double)secondsFromMachTime:(unint64_t)time;
- (id)createSignpostFile:(id)file withStartDate:(id)date withEndDate:(id)endDate withallowlist:(id)withallowlist withTagConfig:(id)config;
- (id)getBundleIDFromEvent:(id)event;
- (id)getBundleIDFromInterval:(id)interval;
- (id)getScrollDirectionForSignpostInterval:(id)interval;
- (id)gzipDeflate:(id)deflate;
- (id)mxSignpostIntervalDataForTasking:(id)tasking;
- (id)packageMXSignpostData;
- (id)processSignpostMetricsWithStartDate:(id)date withEndDate:(id)endDate processMXSignpost:(BOOL)signpost;
- (id)signpostAnimationIntervalData:(id)data forTaskingConfig:(id)config;
- (id)signpostIntervalData:(id)data forTaskingConfig:(id)config;
- (id)signpostIntervalData:(id)data withBundleID:(id)d;
- (id)subsystemCategoryAllowlist:(id)allowlist;
- (id)workflowDataForEventTracker:(id)tracker;
- (id)workflowDataForSignpostTracker:(id)tracker;
- (id)workflowDataForWREvent:(id)event;
- (id)workflowDataForWRIncompleteInterval:(id)interval;
- (id)workflowDataForWRInterval:(id)interval;
- (int)writeSignpostFile:(id)file withOrder:(int)order withData:(id)data;
- (void)aggregateSignpostData:(id)data withReply:(id)reply;
- (void)clearSACaches;
- (void)generateMSSReport:(id)report withReply:(id)reply andOptions:(id)options;
- (void)generateMSSReportForRAPID:(id)d withReply:(id)reply;
- (void)generateMSSReportForTasking:(id)tasking withReply:(id)reply;
- (void)initializeMetrics;
- (void)logAggdTelemetry;
- (void)processSignpostAnimationInterval:(id)interval;
- (void)processSignpostEvent:(id)event;
- (void)processSignpostInterval:(id)interval;
- (void)readRawSignpostData:(id)data withReply:(id)reply;
- (void)removeFile:(id)file;
- (void)storeAnimationInterval:(id)interval forBundle:(id)bundle;
- (void)submitSignpostDataWithConfig:(id)config withReply:(id)reply;
- (void)summarizeSignpostMetrics:(id)metrics withReply:(id)reply;
- (void)updateActivationsForProcess:(id)process withInterval:(id)interval;
- (void)updateExtendedLaunchesForProcess:(id)process withInterval:(id)interval;
- (void)updateHangsData:(id)data withInterval:(id)interval;
- (void)updateHangsForProcess:(id)process withInterval:(id)interval;
- (void)updateLaunchesForProcess:(id)process withInterval:(id)interval;
- (void)updateMXSignpostEventsForProcess:(id)process withEvent:(id)event;
- (void)updateMXSignpostsForProcess:(id)process withInterval:(id)interval;
- (void)updateNormalizedGlitchScores;
- (void)updateProcessExitsForProcess:(id)process withEvent:(id)event;
- (void)updateResumesForProcess:(id)process withInterval:(id)interval;
- (void)updateScrollGlitchesForProcess:(id)process withAnimationInterval:(id)interval;
- (void)updateTimeSeriesLaunches:(id)launches withBundleID:(id)d;
@end

@implementation XPCSignpostReader

- (XPCSignpostReader)init
{
  v9.receiver = self;
  v9.super_class = XPCSignpostReader;
  v2 = [(XPCSignpostReader *)&v9 init];
  if (v2)
  {
    signal(15, 1);
    v3 = dispatch_get_global_queue(21, 0);
    [(XPCSignpostReader *)v2 setSigterm_queue:v3];

    sigterm_queue = [(XPCSignpostReader *)v2 sigterm_queue];
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, sigterm_queue);
    [(XPCSignpostReader *)v2 setSigterm_source:v5];

    sigterm_source = [(XPCSignpostReader *)v2 sigterm_source];
    dispatch_source_set_event_handler(sigterm_source, &stru_100014450);

    sigterm_source2 = [(XPCSignpostReader *)v2 sigterm_source];
    dispatch_activate(sigterm_source2);
  }

  return v2;
}

- (void)updateProcessExitsForProcess:(id)process withEvent:(id)event
{
  processCopy = process;
  eventCopy = event;
  v8 = PLLogSignpostReader(eventCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AADC();
  }

  string1Value = [eventCopy string1Value];
  number1Value = [eventCopy number1Value];
  number2Value = [eventCopy number2Value];

  if (string1Value && number1Value && number2Value)
  {
    v29 = string1Value;
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [string1Value isEqualToString:@"YES"]);
    v13 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:processCopy];

    if (!v13)
    {
      processExits = self->_processExits;
      v15 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)processExits setObject:v15 forKey:processCopy];
    }

    v16 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:processCopy];
    v17 = [v16 objectForKeyedSubscript:v12];

    if (!v17)
    {
      v18 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:processCopy];
      v19 = objc_alloc_init(NSMutableDictionary);
      [v18 setObject:v19 forKey:v12];
    }

    v30[0] = number1Value;
    v30[1] = number2Value;
    v20 = [NSArray arrayWithObjects:v30 count:2];
    v21 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:processCopy];
    v22 = [v21 objectForKeyedSubscript:v12];
    [v22 objectForKeyedSubscript:v20];
    v28 = number1Value;
    v24 = v23 = v12;
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 unsignedIntegerValue] + 1);
    v26 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:processCopy];
    v27 = [v26 objectForKeyedSubscript:v23];
    [v27 setObject:v25 forKeyedSubscript:v20];

    number1Value = v28;
    string1Value = v29;
  }
}

- (void)updateLaunchesForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v8 = PLLogSignpostReader(intervalCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AB44(intervalCopy);
  }

  number1Value = [intervalCopy number1Value];
  if (number1Value)
  {
    [intervalCopy durationSeconds];
    v11 = (v10 * 1000.0);
    v12 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];
      v15 = [v14 objectForKeyedSubscript:number1Value];

      if (v15)
      {
        v16 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];
        v17 = [v16 objectForKeyedSubscript:number1Value];
        v18 = [NSNumber numberWithUnsignedLongLong:v11];
        [v17 addObject:v18];

LABEL_11:
        goto LABEL_12;
      }
    }

    v19 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];

    if (!v19)
    {
      v20 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_launches setObject:v20 forKeyedSubscript:processCopy];
    }

    v21 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];
    v22 = [v21 objectForKeyedSubscript:number1Value];

    if (!v22)
    {
      v16 = +[NSMutableArray array];
      v23 = [NSNumber numberWithUnsignedLongLong:v11];
      [v16 addObject:v23];

      v17 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:processCopy];
      [v17 setObject:v16 forKeyedSubscript:number1Value];
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)updateExtendedLaunchesForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v8 = PLLogSignpostReader(intervalCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AC0C(intervalCopy, v8);
  }

  string2Value = [intervalCopy string2Value];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [string2Value isEqualToString:@"YES"]);
  [intervalCopy durationSeconds];
  v12 = (v11 * 1000.0);
  v13 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:processCopy];
  if (v13)
  {
    v14 = v13;
    v15 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:processCopy];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (v16)
    {
      v17 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:processCopy];
      v18 = [v17 objectForKeyedSubscript:v10];
      v19 = [NSNumber numberWithUnsignedLongLong:v12];
      [v18 addObject:v19];

LABEL_10:
      goto LABEL_11;
    }
  }

  v20 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:processCopy];

  if (!v20)
  {
    v21 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_extendedLaunches setObject:v21 forKeyedSubscript:processCopy];
  }

  v22 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:processCopy];
  v23 = [v22 objectForKeyedSubscript:v10];

  if (!v23)
  {
    v17 = +[NSMutableArray array];
    v24 = [NSNumber numberWithUnsignedLongLong:v12];
    [v17 addObject:v24];

    v18 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:processCopy];
    [v18 setObject:v17 forKeyedSubscript:v10];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateActivationsForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v8 = PLLogSignpostReader(intervalCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AD04(intervalCopy);
  }

  number1Value = [intervalCopy number1Value];
  string2Value = [intervalCopy string2Value];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [string2Value isEqualToString:@"YES"]);

  [intervalCopy durationSeconds];
  v13 = v12;
  v14 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:processCopy];

  if (!v14)
  {
    v15 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_activations setObject:v15 forKeyedSubscript:processCopy];
  }

  v16 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:processCopy];
  v17 = [v16 objectForKeyedSubscript:v11];

  if (!v17)
  {
    v18 = +[NSMutableDictionary dictionary];
    v19 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:processCopy];
    [v19 setObject:v18 forKeyedSubscript:v11];
  }

  v20 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:processCopy];
  v21 = [v20 objectForKeyedSubscript:v11];
  v22 = [v21 objectForKeyedSubscript:number1Value];

  if (!v22)
  {
    v23 = +[NSMutableArray array];
    v24 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:processCopy];
    v25 = [v24 objectForKeyedSubscript:v11];
    [v25 setObject:v23 forKeyedSubscript:number1Value];
  }

  v26 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:processCopy];
  v27 = [v26 objectForKeyedSubscript:v11];
  v28 = [v27 objectForKeyedSubscript:number1Value];
  v29 = [NSNumber numberWithUnsignedLongLong:(v13 * 1000.0)];
  [v28 addObject:v29];
}

- (void)updateResumesForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v8 = PLLogSignpostReader(intervalCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ADCC(intervalCopy);
  }

  [intervalCopy durationSeconds];
  v10 = (v9 * 1000.0);
  v11 = [(NSMutableDictionary *)self->_resumes objectForKeyedSubscript:processCopy];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_resumes objectForKeyedSubscript:processCopy];
    v13 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v13];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableArray);
    v14 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v14];

    [(NSMutableDictionary *)self->_resumes setObject:v12 forKey:processCopy];
  }
}

- (void)updateHangsForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v8 = PLLogSignpostReader(intervalCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AE70(intervalCopy);
  }

  [intervalCopy durationSeconds];
  v10 = (v9 * 1000.0);
  v11 = [(NSMutableDictionary *)self->_hangs objectForKeyedSubscript:processCopy];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_hangs objectForKeyedSubscript:processCopy];
    v13 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v13];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableArray);
    v14 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v14];

    [(NSMutableDictionary *)self->_hangs setObject:v12 forKey:processCopy];
  }
}

- (void)storeAnimationInterval:(id)interval forBundle:(id)bundle
{
  intervalCopy = interval;
  bundleCopy = bundle;
  v7 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:bundleCopy];

  if (!v7)
  {
    glitches = self->_glitches;
    v9 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)glitches setObject:v9 forKey:bundleCopy];
  }

  v10 = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess objectForKeyedSubscript:bundleCopy];

  uniqueAnimationIntervalsByProcess = self->_uniqueAnimationIntervalsByProcess;
  if (!v10)
  {
    v12 = objc_alloc_init(NSMutableArray);
    [(NSMutableDictionary *)uniqueAnimationIntervalsByProcess setObject:v12 forKey:bundleCopy];

    uniqueAnimationIntervalsByProcess = self->_uniqueAnimationIntervalsByProcess;
  }

  v13 = [(NSMutableDictionary *)uniqueAnimationIntervalsByProcess objectForKeyedSubscript:bundleCopy];
  [v13 addObject:intervalCopy];
}

- (void)updateNormalizedGlitchScores
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess allKeys];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [NSMutableArray alloc];
        v9 = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess objectForKeyedSubscript:v7];
        v10 = [SignpostAnimationInterval unionOfAnimationIntervals:v9];
        v11 = [v8 initWithArray:v10];
        [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess setObject:v11 forKeyedSubscript:v7];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess objectForKeyedSubscript:v7];
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          v16 = 0.0;
          v17 = 0.0;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              [v19 durationSeconds];
              v17 = v17 + v20;
              [v19 nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
              v22 = v21;
              [v19 durationSeconds];
              v16 = v16 + v22 * v23;
            }

            v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v14);

          if (v17 > 0.0)
          {
            v24 = (v16 / v17);
            goto LABEL_17;
          }
        }

        else
        {
        }

        v24 = 0;
LABEL_17:
        v25 = [NSNumber numberWithUnsignedLongLong:v24];
        v26 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v7];
        [v26 setObject:v25 forKeyedSubscript:@"glitchTimeRatio"];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v4);
  }
}

- (void)updateScrollGlitchesForProcess:(id)process withAnimationInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v8 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];

  if (!v8)
  {
    glitches = self->_glitches;
    v10 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)glitches setObject:v10 forKey:processCopy];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  glitches = [intervalCopy glitches];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100003370;
  v35[3] = &unk_100014498;
  v35[4] = &v36;
  [glitches enumerateObjectsUsingBlock:v35];

  [intervalCopy durationSeconds];
  v13 = v12;
  v14 = v37[3];
  v15 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
  v16 = [v15 objectForKeyedSubscript:@"glitchDuration"];
  v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v14 + [v16 unsignedIntValue]);
  v18 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
  [v18 setObject:v17 forKeyedSubscript:@"glitchDuration"];

  glitches2 = [intervalCopy glitches];
  v20 = [glitches2 count];
  v21 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
  v22 = [v21 objectForKeyedSubscript:@"glitchCount"];
  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v20[[v22 unsignedIntValue]]);
  v24 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
  [v24 setObject:v23 forKeyedSubscript:@"glitchCount"];

  v25 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
  v26 = [v25 objectForKeyedSubscript:@"scrollDuration"];
  v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", (v13 * 1000.0) + [v26 unsignedIntValue]);
  v28 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
  [v28 setObject:v27 forKeyedSubscript:@"scrollDuration"];

  beginEvent = [intervalCopy beginEvent];
  name = [beginEvent name];
  LODWORD(v27) = [name isEqualToString:@"Scroll_Dragging"];

  if (v27)
  {
    v31 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
    v32 = [v31 objectForKeyedSubscript:@"scrollCount"];
    v33 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v32 unsignedIntValue] + 1);
    v34 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:processCopy];
    [v34 setObject:v33 forKeyedSubscript:@"scrollCount"];
  }

  _Block_object_dispose(&v36, 8);
}

- (void)updateMXSignpostsForProcess:(id)process withInterval:(id)interval
{
  processCopy = process;
  intervalCopy = interval;
  v7 = qword_100019458++;
  if (v7 <= 49999)
  {
    v8 = [(NSMutableDictionary *)self->_summarizedSignpostDurations objectForKeyedSubscript:processCopy];

    if (!v8)
    {
      summarizedSignpostDurations = self->_summarizedSignpostDurations;
      v10 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)summarizedSignpostDurations setObject:v10 forKey:processCopy];

      summarizedSignpostMetrics = self->_summarizedSignpostMetrics;
      v12 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)summarizedSignpostMetrics setObject:v12 forKey:processCopy];

      numAppSignposts = self->_numAppSignposts;
      v14 = objc_alloc_init(SignpostCounter);
      [(NSMutableDictionary *)numAppSignposts setObject:v14 forKey:processCopy];
    }

    v15 = [(NSMutableDictionary *)self->_numAppSignposts objectForKeyedSubscript:processCopy];
    v16 = v15[1];
    v15[1] = v16 + 1;
    if (v16 > 999)
    {
      goto LABEL_26;
    }

    category = [intervalCopy category];
    if (category)
    {
      category2 = [intervalCopy category];
    }

    else
    {
      category2 = &stru_1000149D0;
    }

    name = [intervalCopy name];
    if (name)
    {
      name2 = [intervalCopy name];
      v21 = [NSArray arrayWithObjects:category2, name2, 0];
    }

    else
    {
      v21 = [NSArray arrayWithObjects:category2, &stru_1000149D0, 0];
    }

    if (category)
    {
    }

    v22 = [(NSMutableDictionary *)self->_summarizedSignpostDurations objectForKeyedSubscript:processCopy];
    v23 = [v22 objectForKeyedSubscript:v21];

    if (!v23)
    {
      v23 = objc_alloc_init(NSMutableArray);
      v24 = [(NSMutableDictionary *)self->_summarizedSignpostDurations objectForKeyedSubscript:processCopy];
      [v24 setObject:v23 forKey:v21];
    }

    [intervalCopy durationSeconds];
    v26 = [NSNumber numberWithUnsignedLongLong:(v25 * 1000.0)];
    [v23 addObject:v26];

    beginEvent = [intervalCopy beginEvent];
    metrics = [beginEvent metrics];
    if (metrics)
    {
      v29 = metrics;
      endEvent = [intervalCopy endEvent];
      metrics2 = [endEvent metrics];

      if (!metrics2)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v32 = [(NSMutableDictionary *)self->_summarizedSignpostMetrics objectForKeyedSubscript:processCopy];
      beginEvent = [v32 objectForKeyedSubscript:v21];

      [v15 updateMxSignpostOverlapStatistics:intervalCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = intervalCopy;
      }

      else
      {
        v33 = 0;
      }

      if (beginEvent)
      {
        endEvent3 = v33;
        beginEvent2 = [intervalCopy beginEvent];
        endEvent2 = [intervalCopy endEvent];
        [beginEvent updateSummary:beginEvent2 endSnapshot:endEvent2 animationInterval:endEvent3];
      }

      else
      {
        v37 = self->_summarizedSignpostMetrics;
        v38 = v33;
        beginEvent2 = [(NSMutableDictionary *)v37 objectForKeyedSubscript:processCopy];
        v39 = [SignpostIntervalMetrics alloc];
        endEvent2 = [intervalCopy beginEvent];
        endEvent3 = [intervalCopy endEvent];
        v40 = [(SignpostIntervalMetrics *)v39 initWithBeginSnapshot:endEvent2 endSnapshot:endEvent3 animationInterval:v38];

        [beginEvent2 setObject:v40 forKey:v21];
      }
    }

    goto LABEL_25;
  }

LABEL_27:
}

- (void)updateMXSignpostEventsForProcess:(id)process withEvent:(id)event
{
  processCopy = process;
  eventCopy = event;
  v7 = qword_100019458++;
  if (v7 <= 49999)
  {
    v8 = [(NSMutableDictionary *)self->_summarizedSignpostEvents objectForKeyedSubscript:processCopy];

    if (!v8)
    {
      summarizedSignpostEvents = self->_summarizedSignpostEvents;
      v10 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)summarizedSignpostEvents setObject:v10 forKey:processCopy];

      numAppSignposts = self->_numAppSignposts;
      v12 = objc_alloc_init(SignpostCounter);
      [(NSMutableDictionary *)numAppSignposts setObject:v12 forKey:processCopy];
    }

    v13 = [(NSMutableDictionary *)self->_numAppSignposts objectForKeyedSubscript:processCopy];
    v14 = v13[1];
    v13[1] = v14 + 1;
    if (v14 <= 999)
    {
      category = [eventCopy category];
      if (category)
      {
        category2 = [eventCopy category];
      }

      else
      {
        category2 = &stru_1000149D0;
      }

      name = [eventCopy name];
      if (name)
      {
        name2 = [eventCopy name];
        v19 = [NSArray arrayWithObjects:category2, name2, 0];
      }

      else
      {
        v19 = [NSArray arrayWithObjects:category2, &stru_1000149D0, 0];
      }

      if (category)
      {
      }

      v20 = [(NSMutableDictionary *)self->_summarizedSignpostEvents objectForKeyedSubscript:processCopy];
      v21 = [v20 objectForKeyedSubscript:v19];

      v22 = [(NSMutableDictionary *)self->_summarizedSignpostEvents objectForKeyedSubscript:processCopy];
      v23 = v22;
      if (v21)
      {
        v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue] + 1);
        [v23 setObject:v24 forKey:v19];
      }

      else
      {
        [v22 setObject:&off_100015A10 forKey:v19];
      }
    }
  }
}

- (id)signpostIntervalData:(id)data withBundleID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v7 = objc_opt_new();
  [v7 setObject:dCopy forKeyedSubscript:@"bundleID"];

  number1Value = [dataCopy number1Value];
  [v7 setObject:number1Value forKeyedSubscript:@"IsForeground"];

  beginDate = [dataCopy beginDate];
  [v7 setObject:beginDate forKeyedSubscript:@"beginDate"];

  [dataCopy durationSeconds];
  v11 = [NSNumber numberWithUnsignedLongLong:(v10 * 1000.0)];
  [v7 setObject:v11 forKeyedSubscript:@"duration"];

  v13 = PLLogSignpostReader(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AF14(dataCopy);
  }

  return v7;
}

- (void)updateTimeSeriesLaunches:(id)launches withBundleID:(id)d
{
  v5 = [(XPCSignpostReader *)self signpostIntervalData:launches withBundleID:d];
  [(NSMutableArray *)self->_launchTimeSeries addObject:v5];
}

- (void)processSignpostEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  v5 = [name isEqualToString:@"ProcessExited"];

  if (v5)
  {
    attributes = [eventCopy attributes];
    v7 = [attributes objectForKey:@"BundleIdOverride"];

    if (v7)
    {
      [(XPCSignpostReader *)self updateProcessExitsForProcess:v7 withEvent:eventCopy];
    }
  }

  else
  {
    subsystem = [eventCopy subsystem];
    v9 = [subsystem isEqualToString:@"com.apple.metrickit.log"];

    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = [(XPCSignpostReader *)self getBundleIDFromEvent:eventCopy];
    if (v7)
    {
      [(XPCSignpostReader *)self updateMXSignpostEventsForProcess:v7 withEvent:eventCopy];
    }
  }

LABEL_8:
}

- (void)processSignpostInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [(XPCSignpostReader *)self getBundleIDFromInterval:?];
  if (!v4)
  {
    goto LABEL_20;
  }

  name = [intervalCopy name];
  v6 = [name isEqualToString:@"ApplicationFirstFramePresentation"];

  if (v6)
  {
    [(XPCSignpostReader *)self updateLaunchesForProcess:v4 withInterval:intervalCopy];
  }

  name2 = [intervalCopy name];
  v8 = [name2 isEqualToString:@"ApplicationLaunchExtendedResponsive"];

  if (v8)
  {
    [(XPCSignpostReader *)self updateTimeSeriesLaunches:intervalCopy withBundleID:v4];
  }

  beginEvent = [intervalCopy beginEvent];
  string2Value = [beginEvent string2Value];
  if (string2Value)
  {
    v11 = string2Value;
    endEvent = [intervalCopy endEvent];
    number1Value = [endEvent number1Value];
    if ([number1Value intValue] == 1)
    {
      beginEvent2 = [intervalCopy beginEvent];
      name3 = [beginEvent2 name];
      v16 = [name3 isEqualToString:@"AppLaunch"];

      if (v16)
      {
        [(XPCSignpostReader *)self updateExtendedLaunchesForProcess:v4 withInterval:intervalCopy];
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  beginEvent3 = [intervalCopy beginEvent];
  name4 = [beginEvent3 name];
  v19 = [name4 isEqualToString:@"AppResume"];

  if (v19)
  {
    [(XPCSignpostReader *)self updateResumesForProcess:v4 withInterval:intervalCopy];
  }

  else
  {
    name5 = [intervalCopy name];
    v21 = [name5 isEqualToString:@"ApplicationActivationFirstFramePresentation"];

    if (v21)
    {
      [(XPCSignpostReader *)self updateActivationsForProcess:v4 withInterval:intervalCopy];
    }

    else
    {
      beginEvent4 = [intervalCopy beginEvent];
      name6 = [beginEvent4 name];
      v24 = [name6 isEqualToString:@"HangInterval"];

      if (v24)
      {
        [(XPCSignpostReader *)self updateHangsForProcess:v4 withInterval:intervalCopy];
      }

      else
      {
        subsystem = [intervalCopy subsystem];
        v26 = [subsystem isEqualToString:@"com.apple.metrickit.log"];

        if (v26)
        {
          [(XPCSignpostReader *)self updateMXSignpostsForProcess:v4 withInterval:intervalCopy];
        }
      }
    }
  }

LABEL_20:
}

- (void)processSignpostAnimationInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [(XPCSignpostReader *)self getBundleIDFromInterval:?];
  if (v4)
  {
    [(XPCSignpostReader *)self storeAnimationInterval:intervalCopy forBundle:v4];
    subsystem = [intervalCopy subsystem];
    v6 = [subsystem isEqualToString:@"com.apple.metrickit.log"];

    if (v6)
    {
      [(XPCSignpostReader *)self updateMXSignpostsForProcess:v4 withInterval:intervalCopy];
      goto LABEL_8;
    }

    beginEvent = [intervalCopy beginEvent];
    name = [beginEvent name];
    if ([name isEqualToString:@"Scroll_Dragging"])
    {
    }

    else
    {
      beginEvent2 = [intervalCopy beginEvent];
      name2 = [beginEvent2 name];
      v11 = [name2 isEqualToString:@"Scroll_Deceleration"];

      if (!v11)
      {
        goto LABEL_8;
      }
    }

    [(XPCSignpostReader *)self updateScrollGlitchesForProcess:v4 withAnimationInterval:intervalCopy];
  }

LABEL_8:
}

- (void)summarizeSignpostMetrics:(id)metrics withReply:(id)reply
{
  replyCopy = reply;
  metricsCopy = metrics;
  v8 = PLLogSignpostReader(metricsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "spun up xpc svc", v17, 2u);
  }

  v9 = [metricsCopy objectForKeyedSubscript:@"process_mxsignpost"];
  bOOLValue = [v9 BOOLValue];

  v11 = [metricsCopy objectForKey:@"end_date"];
  v12 = [metricsCopy objectForKey:@"start_date"];

  if (v11 && v12 && ([v12 timeIntervalSince1970], v14 = v13, objc_msgSend(v11, "timeIntervalSince1970"), v14 <= v15))
  {
    v16 = [(XPCSignpostReader *)self processSignpostMetricsWithStartDate:v12 withEndDate:v11 processMXSignpost:bOOLValue];
    [v16 setObject:v11 forKey:@"EndDate"];
    replyCopy[2](replyCopy, v16);
  }

  else
  {
    replyCopy[2](replyCopy, &__NSDictionary0__struct);
  }
}

- (id)processSignpostMetricsWithStartDate:(id)date withEndDate:(id)endDate processMXSignpost:(BOOL)signpost
{
  signpostCopy = signpost;
  endDateCopy = endDate;
  dateCopy = date;
  [(XPCSignpostReader *)self initializeMetrics];
  v10 = objc_alloc_init(SignpostSupportObjectExtractor);
  [v10 setShouldComposeMetadataString:0];
  v11 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v11 addSubsystem:@"com.apple.FrontBoard" category:@"AppLaunch"];
  [v11 addSubsystem:@"com.apple.UIKit" category:@"AppLifecycle"];
  [v11 addSubsystem:@"com.apple.UIKit" category:@"ScrollView"];
  [v11 addSubsystem:@"com.apple.Foundation" category:@"NSProcessInfoInteractionTracking"];
  [v11 addSubsystem:@"com.apple.runningboard" category:@"sp_telemetry"];
  [v11 addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
  [v11 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  if (signpostCopy)
  {
    [v11 addSubsystem:@"com.apple.metrickit.log" category:0];
  }

  [v10 setSubsystemCategoryFilter:v11];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100004624;
  v22[3] = &unk_1000144C0;
  v22[4] = self;
  [v10 setEmitEventProcessingBlock:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004648;
  v21[3] = &unk_1000144E8;
  v21[4] = self;
  [v10 setIntervalCompletionProcessingBlock:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000466C;
  v20[3] = &unk_100014510;
  v20[4] = self;
  [v10 setAnimationIntervalCompletionProcessingBlock:v20];
  v19 = 0;
  v12 = [v10 processLogArchiveWithPath:0 startDate:dateCopy endDate:endDateCopy errorOut:&v19];

  v13 = v19;
  v14 = v13;
  if (v12)
  {
    [(XPCSignpostReader *)self updateNormalizedGlitchScores];
  }

  else
  {
    v15 = PLLogSignpostReader(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000AFC4(v14);
    }
  }

  v16 = +[NSMutableDictionary dictionary];
  [v16 setObject:self->_processExits forKey:@"processExits"];
  [v16 setObject:self->_launches forKey:@"launchDurations"];
  [v16 setObject:self->_extendedLaunches forKey:@"extendedLaunchDurations"];
  [v16 setObject:self->_resumes forKey:@"resumeDurations"];
  [v16 setObject:self->_glitches forKey:@"scrollGlitches"];
  [v16 setObject:self->_activations forKey:@"activationDurations"];
  [v16 setObject:self->_summarizedSignpostEvents forKey:@"signpostEvents"];
  packageMXSignpostData = [(XPCSignpostReader *)self packageMXSignpostData];
  [v16 setObject:packageMXSignpostData forKey:@"signpostIntervals"];

  [v16 setValue:self->_launchTimeSeries forKey:@"launchesTimeSeries"];
  [v16 setValue:self->_hangs forKey:@"hangDurations"];
  [v16 setValue:&off_100015A28 forKey:@"hangtracer_enabled"];
  [(XPCSignpostReader *)self logAggdTelemetry];

  return v16;
}

- (id)packageMXSignpostData
{
  v3 = +[NSMutableDictionary dictionary];
  summarizedSignpostDurations = self->_summarizedSignpostDurations;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004744;
  v9[3] = &unk_100014560;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)summarizedSignpostDurations enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)logAggdTelemetry
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_numAppSignposts;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [(NSMutableDictionary *)self->_numAppSignposts objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        if (v11[1] > 1000)
        {
          ++v8;
        }

        v7 += v11[2];
        v6 += v11[3];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  if (qword_100019458 >= 50001)
  {
    ADClientSetValueForScalarKey();
  }
}

- (void)initializeMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  launches = self->_launches;
  self->_launches = v3;

  v5 = +[NSMutableDictionary dictionary];
  extendedLaunches = self->_extendedLaunches;
  self->_extendedLaunches = v5;

  v7 = +[NSMutableDictionary dictionary];
  resumes = self->_resumes;
  self->_resumes = v7;

  v9 = +[NSMutableDictionary dictionary];
  hangs = self->_hangs;
  self->_hangs = v9;

  v11 = +[NSMutableDictionary dictionary];
  glitches = self->_glitches;
  self->_glitches = v11;

  v13 = +[NSMutableDictionary dictionary];
  processExits = self->_processExits;
  self->_processExits = v13;

  v15 = +[NSMutableDictionary dictionary];
  activations = self->_activations;
  self->_activations = v15;

  v17 = +[NSMutableDictionary dictionary];
  uniqueAnimationIntervalsByProcess = self->_uniqueAnimationIntervalsByProcess;
  self->_uniqueAnimationIntervalsByProcess = v17;

  v19 = +[NSMutableDictionary dictionary];
  summarizedSignpostDurations = self->_summarizedSignpostDurations;
  self->_summarizedSignpostDurations = v19;

  v21 = +[NSMutableDictionary dictionary];
  summarizedSignpostMetrics = self->_summarizedSignpostMetrics;
  self->_summarizedSignpostMetrics = v21;

  v23 = +[NSMutableDictionary dictionary];
  summarizedSignpostEvents = self->_summarizedSignpostEvents;
  self->_summarizedSignpostEvents = v23;

  v25 = +[NSMutableDictionary dictionary];
  numAppSignposts = self->_numAppSignposts;
  self->_numAppSignposts = v25;

  self->_launchTimeSeries = +[NSMutableArray array];

  _objc_release_x1();
}

- (id)getBundleIDFromInterval:(id)interval
{
  intervalCopy = interval;
  beginEvent = [intervalCopy beginEvent];
  name = [beginEvent name];

  if (![name isEqualToString:@"HangInterval"] || (objc_msgSend(intervalCopy, "beginEvent"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "attributes"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", @"BundleIdOverride"), bundleIdentifier = objc_claimAutoreleasedReturnValue(), v7, v6, !bundleIdentifier))
  {
    endEvent = [intervalCopy endEvent];
    processImagePath = [endEvent processImagePath];
    stringByDeletingLastPathComponent = [processImagePath stringByDeletingLastPathComponent];

    v12 = [NSBundle bundleWithPath:stringByDeletingLastPathComponent];
    bundleIdentifier = [v12 bundleIdentifier];
  }

  return bundleIdentifier;
}

- (id)getBundleIDFromEvent:(id)event
{
  processImagePath = [event processImagePath];
  stringByDeletingLastPathComponent = [processImagePath stringByDeletingLastPathComponent];

  v5 = [NSBundle bundleWithPath:stringByDeletingLastPathComponent];
  bundleIdentifier = [v5 bundleIdentifier];

  return bundleIdentifier;
}

- (id)subsystemCategoryAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004E78;
  v6[3] = &unk_100014588;
  v4 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v7 = v4;
  [allowlistCopy enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (id)getScrollDirectionForSignpostInterval:(id)interval
{
  intervalCopy = interval;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000053A4;
  v29 = sub_1000053B4;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000053A4;
  v23 = sub_1000053B4;
  v24 = 0;
  name = [intervalCopy name];
  v5 = [name isEqualToString:@"Scroll_Zooming"];

  if (v5)
  {
    endEvent = @"Diagonal";
  }

  else
  {
    endEvent = [intervalCopy endEvent];

    if (endEvent)
    {
      endEvent2 = [intervalCopy endEvent];
      metadataSegments = [endEvent2 metadataSegments];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000053BC;
      v18[3] = &unk_1000145D8;
      v18[4] = &v25;
      v18[5] = &v19;
      [metadataSegments enumerateObjectsUsingBlock:v18];

      [v26[5] doubleValue];
      if (v9 != 0.0 || (doubleValue = [v20[5] doubleValue], v11 == 0.0))
      {
        doubleValue = [v26[5] doubleValue];
        if (v12 == 0.0 || (doubleValue = [v20[5] doubleValue], v13 != 0.0))
        {
          endEvent = @"Diagonal";
        }

        else
        {
          endEvent = @"Horizontal";
        }
      }

      else
      {
        endEvent = @"Vertical";
      }

      v14 = PLLogSignpostReader(doubleValue);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = v26[5];
        v17 = v20[5];
        *buf = 138412802;
        v32 = endEvent;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Scroll direction %@ (dx=%@, dy=%@)", buf, 0x20u);
      }
    }
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return endEvent;
}

- (void)aggregateSignpostData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  dataCopy = data;
  v8 = PLLogSignpostReader(dataCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Signpost data aggregation start", buf, 2u);
  }

  v9 = [dataCopy objectForKeyedSubscript:@"taskingAllowlist"];
  v10 = [dataCopy objectForKeyedSubscript:@"taskingStartDate"];
  v11 = [dataCopy objectForKeyedSubscript:@"taskingEndDate"];

  v13 = PLLogSignpostReader(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B0DC();
  }

  v15 = PLLogSignpostReader(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B144();
  }

  v17 = PLLogSignpostReader(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B1AC();
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  if (v11 && v10 && ([v10 timeIntervalSince1970], v20 = v19, objc_msgSend(v11, "timeIntervalSince1970"), v20 <= v21))
  {
    v22 = objc_alloc_init(SignpostSupportObjectExtractor);
    [v22 setShouldComposeMetadataString:0];
    v23 = [(XPCSignpostReader *)self subsystemCategoryAllowlist:v9];
    [v22 setSubsystemCategoryFilter:v23];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000058D8;
    v31[3] = &unk_100014600;
    v24 = v18;
    v32 = v24;
    selfCopy = self;
    [v22 setIntervalCompletionProcessingBlock:v31];
    v30 = 0;
    v25 = [v22 processLogArchiveWithPath:0 startDate:v10 endDate:v11 errorOut:&v30];
    v26 = v30;
    v27 = v26;
    if ((v25 & 1) == 0)
    {
      v28 = PLLogSignpostReader(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10000B214(v27);
      }
    }

    v29 = PLLogSignpostReader(v26);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Signpost data aggregation end: reply = %@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, v24);
  }

  else
  {
    replyCopy[2](replyCopy, v18);
  }
}

- (void)submitSignpostDataWithConfig:(id)config withReply:(id)reply
{
  configCopy = config;
  replyCopy = reply;
  v7 = PLLogSignpostReader(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Signpost data submission start", buf, 2u);
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [configCopy objectForKeyedSubscript:@"taskingAllowlist"];
  v10 = [configCopy objectForKeyedSubscript:@"taskingStartDate"];
  v11 = [configCopy objectForKeyedSubscript:@"taskingEndDate"];
  isKindOfClass = [configCopy objectForKeyedSubscript:@"taskingTagConfig"];
  v13 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v14 = v13;
    isKindOfClass = [v14 objectForKeyedSubscript:@"TagUUID"];
    v15 = isKindOfClass;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = PLLogSignpostReader(isKindOfClass);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B3E4();
  }

  v18 = PLLogSignpostReader(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B0DC();
  }

  v20 = PLLogSignpostReader(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B144();
  }

  v22 = PLLogSignpostReader(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B1AC();
  }

  v24 = PLLogSignpostReader(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B44C();
  }

  v25 = [[NSUUID alloc] initWithUUIDString:v15];
  if (v25)
  {
    v45 = v14;
    v26 = 1;
    if (v10 && v11 && v9 && v15)
    {
      v43 = v11;
      v42 = [NSString stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", v15];
      v27 = [configCopy objectForKeyedSubscript:@"taskingSubmitSP"];
      bOOLValue = [v27 BOOLValue];

      if (bOOLValue)
      {
        v41 = v9;
        v29 = [v45 objectForKeyedSubscript:@"Date"];
        v39 = replyCopy;
        v40 = v8;
        if (v29)
        {
          v30 = [v45 objectForKeyedSubscript:@"Date"];
          v31 = [NSString stringWithFormat:@"Signpost_%@", v30];
        }

        else
        {
          v31 = [NSString stringWithFormat:@"Signpost_%@", v15];
        }

        v33 = v42;
        v34 = [NSString stringWithFormat:@"%@%@/", v42, v31];
        v9 = v41;
        v35 = [(XPCSignpostReader *)self createSignpostFile:v34 withStartDate:v10 withEndDate:v43 withallowlist:v41 withTagConfig:v13];
        v26 = v35 != 0;

        replyCopy = v39;
        v8 = v40;
      }

      else
      {
        v26 = 1;
        v33 = v42;
      }

      v11 = v43;
    }

    v36 = [NSNumber numberWithBool:v26];
    [v8 setObject:v36 forKey:@"success"];

    v38 = PLLogSignpostReader(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Signpost data submission end: reply = %@", buf, 0xCu);
    }

    v32 = v8;
    v14 = v45;
  }

  else
  {
    v32 = 0;
  }

  (replyCopy)[2](replyCopy, v32);
}

- (id)createSignpostFile:(id)file withStartDate:(id)date withEndDate:(id)endDate withallowlist:(id)withallowlist withTagConfig:(id)config
{
  fileCopy = file;
  dateCopy = date;
  endDateCopy = endDate;
  withallowlistCopy = withallowlist;
  configCopy = config;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v12 = +[NSFileManager defaultManager];
  LOBYTE(withallowlist) = [v12 fileExistsAtPath:fileCopy];

  if (withallowlist)
  {
    v68 = PLLogSignpostReader(v13);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_10000B648();
    }

    goto LABEL_39;
  }

  v14 = +[NSFileManager defaultManager];
  v104 = 0;
  v15 = [v14 createDirectoryAtPath:fileCopy withIntermediateDirectories:1 attributes:0 error:&v104];
  v68 = v104;

  if (v15)
  {
    v16 = objc_alloc_init(SignpostSupportObjectExtractor);
    [v16 setShouldComposeMetadataString:0];
    v67 = v16;
    v17 = [(XPCSignpostReader *)self subsystemCategoryAllowlist:withallowlistCopy];
    v18 = objc_opt_new();
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_100007124;
    v96[3] = &unk_100014628;
    v103 = 1;
    v66 = v17;
    v97 = v66;
    selfCopy = self;
    v99 = configCopy;
    v74 = v18;
    v100 = v74;
    v102 = &v105;
    v63 = fileCopy;
    v101 = v63;
    v65 = objc_retainBlock(v96);
    [v67 setIntervalCompletionProcessingBlock:v65];
    v64 = +[WRWorkflow allWorkflows];
    if ([v64 count])
    {
      v73 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
      v19 = +[NSMutableArray array];
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v20 = v64;
      v21 = [v20 countByEnumeratingWithState:&v92 objects:v115 count:16];
      v22 = v21;
      if (v21)
      {
        v23 = *v93;
        do
        {
          v24 = 0;
          do
          {
            if (*v93 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v92 + 1) + 8 * v24);
            v26 = PLLogSignpostReader(v21);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              name = [v25 name];
              sub_10000B4B4(name, v113, &v114, v26);
            }

            contextualTelemetryEnabled = [v25 contextualTelemetryEnabled];
            v29 = contextualTelemetryEnabled;
            v30 = PLLogSignpostReader(contextualTelemetryEnabled);
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
            if (v29)
            {
              if (v31)
              {
                name2 = [v25 name];
                allowListForAllSignposts = [v25 allowListForAllSignposts];
                *buf = 138412546;
                v110 = name2;
                v111 = 2112;
                v112 = allowListForAllSignposts;
                _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[WR] Appending allowlist for workflow '%@': %@", buf, 0x16u);
              }

              allowListForAllSignposts2 = [v25 allowListForAllSignposts];
              [v73 addAllowlist:allowListForAllSignposts2];

              v90[0] = _NSConcreteStackBlock;
              v90[1] = 3221225472;
              v90[2] = sub_100007310;
              v90[3] = &unk_100014650;
              v90[4] = v25;
              v90[5] = self;
              v91 = v74;
              v33 = objc_retainBlock(v90);
              v34 = [[WRWorkflowEventTracker alloc] initForReadbackWithWorkflow:v25 eventCompletionCallback:v33];
              [v19 addObject:v34];
            }

            else
            {
              if (v31)
              {
                name3 = [v25 name];
                contextualTelemetryEnabled2 = [v25 contextualTelemetryEnabled];
                *buf = 138412546;
                v110 = name3;
                v111 = 1024;
                LODWORD(v112) = contextualTelemetryEnabled2;
                _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[WR] workflow %@ does not have contextualTelemetryEnabled (=%d), skipping to next workflow", buf, 0x12u);
              }
            }

            v24 = v24 + 1;
          }

          while (v22 != v24);
          v21 = [v20 countByEnumeratingWithState:&v92 objects:v115 count:16];
          v22 = v21;
        }

        while (v21);
      }

      v40 = PLLogSignpostReader(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B510();
      }

      [v66 addAllowlist:v73];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_1000078A8;
      v84[3] = &unk_100014678;
      v41 = v19;
      v85 = v41;
      v89 = &v105;
      v86 = v74;
      selfCopy2 = self;
      v88 = v63;
      v42 = objc_retainBlock(v84);
      date = v67;
      [v67 setEmitEventProcessingBlock:v42];
      [v67 setBeginEventProcessingBlock:v42];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100007B40;
      v79[3] = &unk_1000146A0;
      v43 = v73;
      v80 = v43;
      v44 = v42;
      v82 = v44;
      v81 = v66;
      v83 = v65;
      [v67 setIntervalCompletionProcessingBlock:v79];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_100007C2C;
      v77[3] = &unk_1000146C8;
      v45 = v41;
      v78 = v45;
      [v67 setDeviceRebootProcessingBlock:v77];
    }

    v46 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
    [v46 addAllowlist:v66];
    v47 = PLLogSignpostReader([SignpostCAInstrumentationProcessor addNeededSCToAllowlist:v46]);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B578();
    }

    v49 = PLLogSignpostReader(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B5E0();
    }

    [v67 setSubsystemCategoryFilter:v46];
    v76 = 0;
    v50 = [v67 processLogArchiveWithPath:0 startDate:dateCopy endDate:endDateCopy errorOut:&v76];
    v51 = v76;
    v52 = v51;
    if ((v50 & 1) == 0)
    {
      v53 = PLLogSignpostReader(v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        if (v52)
        {
          date = [v52 localizedDescription];
          dateCopy2 = date;
          uTF8String = [date UTF8String];
        }

        else
        {
          uTF8String = "Unknown error";
        }

        *buf = 136315138;
        v110 = uTF8String;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Unable to serialize signpost: %s", buf, 0xCu);
        if (v52)
        {
        }
      }
    }

    v54 = [(XPCSignpostReader *)self writeSignpostFile:v63 withOrder:*(v106 + 6) withData:v74];
    *(v106 + 6) = v54;
  }

  if (!*(v106 + 6))
  {
    goto LABEL_39;
  }

  v55 = [NSString stringWithFormat:@"%@%@", fileCopy, @"tag.json"];
  if (![(XPCSignpostReader *)self createTagFile:v55 withTagConfig:configCopy withFileCount:*(v106 + 6)])
  {

LABEL_39:
    v57 = 0;
    goto LABEL_40;
  }

  v56 = [NSURL fileURLWithPath:fileCopy];
  v57 = [DEArchiver archiveDirectoryAt:v56 deleteOriginal:1];

  v59 = PLLogSignpostReader(v58);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v110 = v57;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Signpost tarball generated at %@", buf, 0xCu);
  }

LABEL_40:
  _Block_object_dispose(&v105, 8);

  return v57;
}

- (id)gzipDeflate:(id)deflate
{
  deflateCopy = deflate;
  if ([deflateCopy length])
  {
    memset(&v10.total_out, 0, 72);
    v10.avail_in = [deflateCopy length];
    v4 = 0;
    if (!deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v5 = [NSMutableData dataWithLength:0x4000];
      do
      {
        total_out = v10.total_out;
        if (total_out >= [v5 length])
        {
          [v5 increaseLengthBy:0x4000];
        }

        mutableBytes = [v5 mutableBytes];
        v10.next_out = &mutableBytes[v10.total_out];
        v8 = [v5 length];
        v10.avail_out = v8 - LODWORD(v10.total_out);
        deflate(&v10, 4);
      }

      while (!v10.avail_out);
      deflateEnd(&v10);
      [v5 setLength:v10.total_out];
      v4 = [NSData dataWithData:v5];
    }
  }

  else
  {
    v4 = deflateCopy;
  }

  return v4;
}

- (int)writeSignpostFile:(id)file withOrder:(int)order withData:(id)data
{
  LODWORD(v6) = order;
  fileCopy = file;
  dataCopy = data;
  v10 = PLLogSignpostReader(dataCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = [dataCopy count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "writing to signpost file for %lu records.", buf, 0xCu);
  }

  v11 = +[NSFileManager defaultManager];
  if (![v11 fileExistsAtPath:fileCopy])
  {
    goto LABEL_13;
  }

  v12 = [dataCopy count];

  if (v12)
  {
    v11 = [NSJSONSerialization dataWithJSONObject:dataCopy options:0 error:0];
    v13 = PLLogSignpostReader(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v11 length];
      *buf = 134217984;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "\t Original JSON size = %lu", buf, 0xCu);
    }

    v15 = [(XPCSignpostReader *)self gzipDeflate:v11];
    v16 = PLLogSignpostReader(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v15 length];
      *buf = 134217984;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t Compressed size = %lu", buf, 0xCu);
    }

    localizedDescription = &ADClientSetValueForScalarKey_ptr;
    v6 = (v6 + 1);
    v19 = [NSString stringWithFormat:@"%@signpost.%d.json.gz", fileCopy, v6];
    v28 = 0;
    v20 = [v15 writeToFile:v19 options:1 error:&v28];
    v21 = v28;

    if ((v20 & 1) == 0)
    {
      v23 = PLLogSignpostReader(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = [NSString stringWithFormat:@"%@%d.json.gz", fileCopy, v6];
        uTF8String = [v25 UTF8String];
        if (v21)
        {
          localizedDescription = [v21 localizedDescription];
          uTF8String2 = [localizedDescription UTF8String];
        }

        else
        {
          uTF8String2 = "Unknown error";
        }

        *buf = 136315394;
        v30 = uTF8String;
        v31 = 2080;
        v32 = uTF8String2;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to write to %s: %s", buf, 0x16u);
        if (v21)
        {
        }
      }
    }

    [dataCopy removeAllObjects];

LABEL_13:
  }

  return v6;
}

- (id)workflowDataForEventTracker:(id)tracker
{
  trackerCopy = tracker;
  v4 = objc_opt_new();
  [v4 setObject:@"WorkflowResponsiveness" forKeyedSubscript:@"CollectionType"];
  workflow = [trackerCopy workflow];
  name = [workflow name];
  [v4 setObject:name forKeyedSubscript:@"WorkflowName"];

  eventStart = [trackerCopy eventStart];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [eventStart machContTimeNs]);
  [v4 setObject:v8 forKeyedSubscript:@"OverallStartTime"];

  eventEnd = [trackerCopy eventEnd];
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [eventEnd machContTimeNs]);
  [v4 setObject:v10 forKeyedSubscript:@"OverallEndTime"];

  error = [trackerCopy error];

  if (error)
  {
    error2 = [trackerCopy error];
    if (error2)
    {
      error3 = [trackerCopy error];
      domain = [error3 domain];
      if ([domain isEqualToString:WRErrorDomain])
      {
        error4 = [trackerCopy error];
        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error4 code]);
        [v4 setObject:v16 forKeyedSubscript:@"ErrorCode"];
      }

      else
      {
        [v4 setObject:&off_100015A40 forKeyedSubscript:@"ErrorCode"];
      }
    }

    else
    {
      [v4 setObject:&off_100015A40 forKeyedSubscript:@"ErrorCode"];
    }
  }

  return v4;
}

- (id)workflowDataForSignpostTracker:(id)tracker
{
  trackerCopy = tracker;
  v4 = objc_opt_new();
  signpost = [trackerCopy signpost];
  name = [signpost name];
  [v4 setObject:name forKeyedSubscript:@"Name"];

  signpost2 = [trackerCopy signpost];
  subsystem = [signpost2 subsystem];
  [v4 setObject:subsystem forKeyedSubscript:@"Subsystem"];

  signpost3 = [trackerCopy signpost];
  category = [signpost3 category];
  [v4 setObject:category forKeyedSubscript:@"Category"];

  individuationIdentifier = [trackerCopy individuationIdentifier];
  v12 = [individuationIdentifier length];

  if (v12)
  {
    individuationIdentifier2 = [trackerCopy individuationIdentifier];
    [v4 setObject:individuationIdentifier2 forKeyedSubscript:@"IndividuationIdentifier"];
  }

  v24 = trackerCopy;
  environment = [trackerCopy environment];
  v15 = environment;
  if (environment)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [environment countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = [NSString stringWithFormat:@"@env_%@", v20];
          v22 = [v15 objectForKey:v20];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v4 setObject:v22 forKeyedSubscript:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  return v4;
}

- (id)workflowDataForWREvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  machContTimeNs = [eventCopy machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:machContTimeNs];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  return v4;
}

- (id)workflowDataForWRInterval:(id)interval
{
  intervalCopy = interval;
  v4 = objc_opt_new();
  start = [intervalCopy start];
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [start machContTimeNs]);
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  v7 = [intervalCopy end];

  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 machContTimeNs]);
  [v4 setObject:v8 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

- (id)workflowDataForWRIncompleteInterval:(id)interval
{
  intervalCopy = interval;
  v4 = objc_opt_new();
  machContTimeNs = [intervalCopy machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:machContTimeNs];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  [v4 setObject:&off_100015A10 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

- (id)signpostIntervalData:(id)data forTaskingConfig:(id)config
{
  dataCopy = data;
  configCopy = config;
  v8 = objc_opt_new();
  [v8 setObject:@"Powerlog" forKeyedSubscript:@"CollectionType"];
  category = [dataCopy category];
  [v8 setObject:category forKeyedSubscript:@"Category"];

  name = [dataCopy name];
  [v8 setObject:name forKeyedSubscript:@"Name"];

  subsystem = [dataCopy subsystem];
  [v8 setObject:subsystem forKeyedSubscript:@"Subsystem"];

  [dataCopy timebaseRatio];
  v12 = [NSNumber numberWithDouble:?];
  [v8 setObject:v12 forKeyedSubscript:@"TimebaseRatio"];

  string1Name = [dataCopy string1Name];
  [v8 setObject:string1Name forKeyedSubscript:@"String1Name"];

  string1Value = [dataCopy string1Value];
  [v8 setObject:string1Value forKeyedSubscript:@"String1Value"];

  string2Name = [dataCopy string2Name];
  [v8 setObject:string2Name forKeyedSubscript:@"String2Name"];

  string2Value = [dataCopy string2Value];
  [v8 setObject:string2Value forKeyedSubscript:@"String2Value"];

  v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [dataCopy startMachContinuousTime]);
  [v8 setObject:v17 forKeyedSubscript:@"startMachContinuousTime"];

  v18 = [dataCopy beginWallTimeStringWithTimeZoneName:0];
  [v8 setObject:v18 forKeyedSubscript:@"beginWallTime"];

  v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [dataCopy endMachContinuousTime]);
  [v8 setObject:v19 forKeyedSubscript:@"endMachContinuousTime"];

  v20 = [dataCopy endWallTimeStringWithTimeZoneName:0];
  [v8 setObject:v20 forKeyedSubscript:@"endWallTime"];

  beginEvent = [dataCopy beginEvent];

  if (beginEvent)
  {
    beginEvent2 = [dataCopy beginEvent];
    v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [beginEvent2 processID]);
    [v8 setObject:v23 forKeyedSubscript:@"BeginPid"];

    beginEvent3 = [dataCopy beginEvent];
    processName = [beginEvent3 processName];
    [v8 setObject:processName forKeyedSubscript:@"BeginProcessName"];
  }

  endEvent = [dataCopy endEvent];

  if (endEvent)
  {
    endEvent2 = [dataCopy endEvent];
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [endEvent2 processID]);
    [v8 setObject:v28 forKeyedSubscript:@"EndPid"];

    endEvent3 = [dataCopy endEvent];
    processName2 = [endEvent3 processName];
    [v8 setObject:processName2 forKeyedSubscript:@"EndProcessName"];
  }

  number1Name = [dataCopy number1Name];
  if (number1Name)
  {
    v32 = number1Name;
    number1Value = [dataCopy number1Value];

    if (number1Value)
    {
      number1Name2 = [dataCopy number1Name];
      [v8 setObject:number1Name2 forKeyedSubscript:@"Number1Name"];

      number1Value2 = [dataCopy number1Value];
      [v8 setObject:number1Value2 forKeyedSubscript:@"Number1Value"];
    }
  }

  number2Name = [dataCopy number2Name];
  if (number2Name)
  {
    v37 = number2Name;
    number2Value = [dataCopy number2Value];

    if (number2Value)
    {
      number2Name2 = [dataCopy number2Name];
      [v8 setObject:number2Name2 forKeyedSubscript:@"Number2Name"];

      number2Value2 = [dataCopy number2Value];
      [v8 setObject:number2Value2 forKeyedSubscript:@"Number2Value"];
    }
  }

  v41 = [configCopy objectForKeyedSubscript:@"Internal"];
  bOOLValue = [v41 BOOLValue];

  if (bOOLValue)
  {
    subsystem2 = [dataCopy subsystem];
    v45 = [subsystem2 isEqualToString:@"com.apple.metrickit.log"];

    if (v45)
    {
      v46 = [(XPCSignpostReader *)self mxSignpostIntervalDataForTasking:dataCopy];
      [v8 addEntriesFromDictionary:v46];
    }
  }

  v47 = PLLogSignpostReader(v43);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B74C(v8, v47);
  }

  return v8;
}

- (id)signpostAnimationIntervalData:(id)data forTaskingConfig:(id)config
{
  dataCopy = data;
  v7 = [(XPCSignpostReader *)self signpostIntervalData:dataCopy forTaskingConfig:config];
  v8 = [v7 mutableCopy];

  beginEvent = [dataCopy beginEvent];
  v10 = +[SignpostAnimationOverrunQuery nonFirstFrameContributedGlitches:](SignpostAnimationOverrunQuery, "nonFirstFrameContributedGlitches:", [beginEvent processID]);

  v11 = [dataCopy overrunIntervals:v10];
  v12 = [v11 count];

  v13 = [NSNumber numberWithUnsignedInteger:v12];
  [v8 setObject:v13 forKeyedSubscript:@"perceivedGlitchCount"];

  [dataCopy nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
  v15 = v14;

  v16 = [NSNumber numberWithDouble:v15];
  [v8 setObject:v16 forKeyedSubscript:@"perceivedGlitchRatio"];

  return v8;
}

- (id)mxSignpostIntervalDataForTasking:(id)tasking
{
  taskingCopy = tasking;
  v4 = objc_opt_new();
  beginEvent = [taskingCopy beginEvent];
  metrics = [beginEvent metrics];

  if (metrics)
  {
    beginEvent2 = [taskingCopy beginEvent];
    metrics2 = [beginEvent2 metrics];
    cpuTimeNsec = [metrics2 cpuTimeNsec];
    [cpuTimeNsec doubleValue];
    v11 = [NSNumber numberWithDouble:v10 / 1000000000.0];
    [v4 setObject:v11 forKeyedSubscript:@"BeginCPUTime"];

    beginEvent3 = [taskingCopy beginEvent];
    metrics3 = [beginEvent3 metrics];
    dirtyMemoryLifetimePeakKB = [metrics3 dirtyMemoryLifetimePeakKB];
    [v4 setObject:dirtyMemoryLifetimePeakKB forKeyedSubscript:@"BeginPeakMemory"];

    beginEvent4 = [taskingCopy beginEvent];
    metrics4 = [beginEvent4 metrics];
    dirtyMemoryKB = [metrics4 dirtyMemoryKB];
    [v4 setObject:dirtyMemoryKB forKeyedSubscript:@"BeginDirtyMemory"];

    beginEvent5 = [taskingCopy beginEvent];
    metrics5 = [beginEvent5 metrics];
    storageDirtiedKB = [metrics5 storageDirtiedKB];
    [v4 setObject:storageDirtiedKB forKeyedSubscript:@"BeginDiskLogicalWrites"];
  }

  endEvent = [taskingCopy endEvent];
  metrics6 = [endEvent metrics];

  if (metrics6)
  {
    endEvent2 = [taskingCopy endEvent];
    metrics7 = [endEvent2 metrics];
    cpuTimeNsec2 = [metrics7 cpuTimeNsec];
    [cpuTimeNsec2 doubleValue];
    v27 = [NSNumber numberWithDouble:v26 / 1000000000.0];
    [v4 setObject:v27 forKeyedSubscript:@"EndCPUTime"];

    endEvent3 = [taskingCopy endEvent];
    metrics8 = [endEvent3 metrics];
    dirtyMemoryLifetimePeakKB2 = [metrics8 dirtyMemoryLifetimePeakKB];
    [v4 setObject:dirtyMemoryLifetimePeakKB2 forKeyedSubscript:@"EndPeakMemory"];

    endEvent4 = [taskingCopy endEvent];
    metrics9 = [endEvent4 metrics];
    dirtyMemoryKB2 = [metrics9 dirtyMemoryKB];
    [v4 setObject:dirtyMemoryKB2 forKeyedSubscript:@"EndDirtyMemory"];

    endEvent5 = [taskingCopy endEvent];
    metrics10 = [endEvent5 metrics];
    storageDirtiedKB2 = [metrics10 storageDirtiedKB];
    [v4 setObject:storageDirtiedKB2 forKeyedSubscript:@"EndDiskLogicalWrites"];
  }

  return v4;
}

- (BOOL)createTagFile:(id)file withTagConfig:(id)config withFileCount:(int)count
{
  v5 = *&count;
  fileCopy = file;
  configCopy = config;
  v9 = [configCopy objectForKeyedSubscript:@"TagUUID"];

  if (!v5 || !v9)
  {
    v11 = PLLogSignpostReader(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B870(v11);
    }

    goto LABEL_10;
  }

  v11 = [[NSMutableDictionary alloc] initWithDictionary:configCopy];
  v12 = [NSNumber numberWithInt:v5];
  [v11 setObject:v12 forKeyedSubscript:@"FileCount"];

  if (![NSJSONSerialization isValidJSONObject:v11])
  {
    v20 = 0;
    v16 = [NSJSONSerialization dataWithJSONObject:v11 options:0 error:&v20];
    v17 = v20;
    v18 = PLLogSignpostReader(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000B8B4(v17, v16, v18);
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v13 = [NSJSONSerialization dataWithJSONObject:v11 options:0 error:0];
  v14 = [[NSString alloc] initWithData:v13 encoding:4];
  v15 = [v14 writeToFile:fileCopy atomically:0 encoding:4 error:0];

LABEL_11:
  return v15;
}

- (void)removeFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtPath:fileCopy error:&v10];
  v6 = v10;

  v8 = PLLogSignpostReader(v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000BA14();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10000B95C(fileCopy, v6, v9);
  }
}

- (BOOL)isiPad
{
  if (qword_100019468 != -1)
  {
    sub_10000BA7C();
  }

  return byte_100019460;
}

- (void)readRawSignpostData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  dataCopy = data;
  v8 = [dataCopy objectForKeyedSubscript:@"start_date"];
  v9 = [dataCopy objectForKeyedSubscript:@"end_date"];

  v11 = PLLogSignpostReader(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RAPID] readRawSignpostData: %@ %@", buf, 0x16u);
  }

  v12 = objc_alloc_init(SignpostSupportObjectExtractor);
  [v12 setShouldComposeMetadataString:0];
  v13 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v13 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  [v12 setSubsystemCategoryFilter:v13];
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  [v14 setObject:v15 forKeyedSubscript:@"hangDurations"];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000098AC;
  v21[3] = &unk_100014600;
  v21[4] = self;
  v16 = v14;
  v22 = v16;
  [v12 setIntervalCompletionProcessingBlock:v21];
  v20 = 0;
  LOBYTE(v15) = [v12 processLogArchiveWithPath:0 startDate:v8 endDate:v9 errorOut:&v20];
  v17 = v20;
  v18 = v17;
  if ((v15 & 1) == 0)
  {
    v19 = PLLogSignpostReader(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000BA90(v18);
    }
  }

  replyCopy[2](replyCopy, v16);
}

- (void)updateHangsData:(id)data withInterval:(id)interval
{
  dataCopy = data;
  intervalCopy = interval;
  v7 = [(XPCSignpostReader *)self getBundleIDFromInterval:intervalCopy];
  if (v7)
  {
    beginDate = [intervalCopy beginDate];
    if (beginDate)
    {
      v9 = beginDate;
      string2Value = [intervalCopy string2Value];

      if (string2Value)
      {
        [intervalCopy durationSeconds];
        v12 = (v11 * 1000.0);
        v13 = objc_opt_new();
        beginDate2 = [intervalCopy beginDate];
        [v13 setObject:beginDate2 forKeyedSubscript:@"startDate"];

        [v13 setObject:v7 forKeyedSubscript:@"bundleID"];
        v15 = [NSNumber numberWithUnsignedLongLong:v12];
        [v13 setObject:v15 forKeyedSubscript:@"duration"];

        string2Value2 = [intervalCopy string2Value];
        [v13 setObject:string2Value2 forKeyedSubscript:@"type"];

        [dataCopy addObject:v13];
      }
    }
  }
}

- (void)generateMSSReportForRAPID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = PLLogSignpostReader(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RAPID] generateMSSReport: %@", &v9, 0xCu);
  }

  [(XPCSignpostReader *)self generateMSSReport:dCopy withReply:replyCopy andOptions:0];
}

- (void)generateMSSReportForTasking:(id)tasking withReply:(id)reply
{
  taskingCopy = tasking;
  replyCopy = reply;
  v8 = PLLogSignpostReader(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = taskingCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Tasking] generateMSSReport: %@", &v10, 0xCu);
  }

  v9 = objc_alloc_init(SASamplePrintOptions);
  [v9 setDisplayOnBehalfOfInCallTrees:1];
  [v9 setDisplayTimestampsInCallTrees:1];
  [v9 setIncludeUserIdleAndBatteryStateInStacks:1];
  [v9 setSystemstatsFormat:1];
  [v9 setTaskAggregation:3];
  [(XPCSignpostReader *)self generateMSSReport:taskingCopy withReply:replyCopy andOptions:v9];
}

- (void)generateMSSReport:(id)report withReply:(id)reply andOptions:(id)options
{
  reportCopy = report;
  replyCopy = reply;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  +[SABinary enableImmediateCleanupOfCSSymbolOwners];
  v9 = [reportCopy objectForKeyedSubscript:@"start_date"];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v12 = [reportCopy objectForKeyedSubscript:@"end_date"];
  [v12 timeIntervalSince1970];

  v13 = [reportCopy objectForKeyedSubscript:@"mss_filepath"];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "time", v11);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  initForLiveSampling = [[SASampleStore alloc] initForLiveSampling];
  [initForLiveSampling setDataGatheringOptions:{objc_msgSend(initForLiveSampling, "dataGatheringOptions") & 0xFFFFFFFFFFFFFF8FLL}];
  [initForLiveSampling setEvent:@"powerstats"];
  v15 = mach_absolute_time();
  _os_feature_enabled_impl();
  v16 = initForLiveSampling;
  microstackshots = systemstats_get_microstackshots();
  v18 = PLLogSignpostReader(microstackshots);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v58 + 6);
    v20 = *(v54 + 6);
    numSamples = [v16 numSamples];
    *buf = 67109632;
    v64 = v19;
    v65 = 1024;
    v66 = v20;
    v67 = 2048;
    v68 = numSamples;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MSS TotalCount = %u, AddedSampleCount = %u, FinalSampleCount = %lu", buf, 0x18u);
  }

  [(XPCSignpostReader *)self secondsFromMachTime:mach_absolute_time()];
  v23 = v22;
  [(XPCSignpostReader *)self secondsFromMachTime:v15];
  v25 = v24;
  v26 = mach_absolute_time();
  [v16 postprocess];
  [(XPCSignpostReader *)self secondsFromMachTime:mach_absolute_time()];
  v28 = v27;
  [(XPCSignpostReader *)self secondsFromMachTime:v26];
  v30 = v29;
  v31 = mach_absolute_time();
  v32 = [[SASamplePrinter alloc] initWithSampleStore:v16];
  v33 = v32;
  if (optionsCopy)
  {
    [v32 setOptions:?];
  }

  else
  {
    options = [v32 options];
    [options setDisplayTimestampsInCallTrees:1];

    options2 = [v33 options];
    [options2 setSystemstatsFormat:1];

    options3 = [v33 options];
    [options3 setOmitAbsoluteWallTimes:1];
  }

  v37 = v13;
  v38 = fopen([v13 UTF8String], "w");
  if (v38)
  {
    [v33 printToStream:v38];
    fclose(v38);
    [(XPCSignpostReader *)self secondsFromMachTime:mach_absolute_time()];
    v40 = v39;
    [(XPCSignpostReader *)self secondsFromMachTime:v31];
    v42 = v41;
    v61[0] = @"sample_count";
    v43 = [NSNumber numberWithUnsignedInt:*(v54 + 6)];
    v62[0] = v43;
    v62[1] = &__kCFBooleanTrue;
    v61[1] = @"success";
    v61[2] = @"time_processing";
    v44 = [NSNumber numberWithDouble:v28 - v30];
    v62[2] = v44;
    v61[3] = @"time_printing";
    v45 = [NSNumber numberWithDouble:v40 - v42];
    v62[3] = v45;
    v61[4] = @"time_reading";
    v46 = [NSNumber numberWithDouble:v23 - v25];
    v62[4] = v46;
    v47 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:5];
    replyCopy[2](replyCopy, v47);

    [(XPCSignpostReader *)self clearSACaches];
  }

  else
  {
    v48 = PLLogSignpostReader(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB40();
    }

    replyCopy[2](replyCopy, &off_100015A88);
    fclose(0);
    [(XPCSignpostReader *)self clearSACaches];
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  objc_autoreleasePoolPop(context);
}

- (void)clearSACaches
{
  v2 = PLLogSignpostReader(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clearing SampleAnalysis caches...", buf, 2u);
  }

  +[SABinary clearCaches];
  v3 = PLLogSignpostReader(+[SASharedCache clearCaches]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cleared SampleAnalysis caches!", v4, 2u);
  }
}

- (double)secondsFromMachTime:(unint64_t)time
{
  if (qword_100019470 != -1)
  {
    sub_10000BBB4();
  }

  return *&qword_100019478 * time / 1000000000.0;
}

@end